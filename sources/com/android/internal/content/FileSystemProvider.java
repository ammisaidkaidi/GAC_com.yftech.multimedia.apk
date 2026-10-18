package com.android.internal.content;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.content.res.AssetFileDescriptor;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Point;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.FileObserver;
import android.os.FileUtils;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.DocumentsProvider;
import android.provider.MediaStore;
import android.provider.MetadataReader;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.webkit.MimeTypeMap;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.widget.MessagingMessage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class FileSystemProvider extends DocumentsProvider {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean LOG_INOTIFY = false;
    private static final String MIMETYPE_JPEG = "image/jpeg";
    private static final String MIMETYPE_JPG = "image/jpg";
    private static final String MIMETYPE_OCTET_STREAM = "application/octet-stream";
    private static final String TAG = "FileSystemProvider";
    private String[] mDefaultProjection;
    private Handler mHandler;

    @GuardedBy("mObservers")
    private final ArrayMap<File, DirectoryObserver> mObservers = new ArrayMap<>();

    protected abstract Uri buildNotificationUri(String str);

    protected abstract String getDocIdForFile(File file) throws FileNotFoundException;

    protected abstract File getFileForDocId(String str, boolean z) throws FileNotFoundException;

    protected void onDocIdChanged(String str) {
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        throw new UnsupportedOperationException("Subclass should override this and call onCreate(defaultDocumentProjection)");
    }

    protected void onCreate(String[] strArr) {
        this.mHandler = new Handler();
        this.mDefaultProjection = strArr;
    }

    @Override // android.provider.DocumentsProvider
    public boolean isChildDocument(String str, String str2) {
        try {
            return FileUtils.contains(getFileForDocId(str).getCanonicalFile(), getFileForDocId(str2).getCanonicalFile());
        } catch (IOException e) {
            throw new IllegalArgumentException("Failed to determine if " + str2 + " is child of " + str + ": " + e);
        }
    }

    @Override // android.provider.DocumentsProvider
    public Bundle getDocumentMetadata(String str) throws FileNotFoundException {
        FileInputStream fileInputStream;
        File fileForDocId = getFileForDocId(str);
        if (!fileForDocId.exists()) {
            throw new FileNotFoundException("Can't find the file for documentId: " + str);
        }
        FileInputStream fileInputStream2 = null;
        if (!fileForDocId.isFile()) {
            Log.w(TAG, "Can't stream non-regular file. Returning empty metadata.");
            return null;
        }
        if (!fileForDocId.canRead()) {
            Log.w(TAG, "Can't stream non-readable file. Returning empty metadata.");
            return null;
        }
        String typeForFile = getTypeForFile(fileForDocId);
        if (!MetadataReader.isSupportedMimeType(typeForFile)) {
            return null;
        }
        try {
            Bundle bundle = new Bundle();
            fileInputStream = new FileInputStream(fileForDocId.getAbsolutePath());
            try {
                try {
                    MetadataReader.getMetadata(bundle, fileInputStream, typeForFile, (String[]) null);
                    IoUtils.closeQuietly(fileInputStream);
                    return bundle;
                } catch (IOException e) {
                    e = e;
                    Log.e(TAG, "An error occurred retrieving the metadata", e);
                    IoUtils.closeQuietly(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                IoUtils.closeQuietly(fileInputStream2);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            IoUtils.closeQuietly(fileInputStream2);
            throw th;
        }
    }

    protected final List<String> findDocumentPath(File file, File file2) throws FileNotFoundException {
        if (!file2.exists()) {
            throw new FileNotFoundException(file2 + " is not found.");
        }
        if (!FileUtils.contains(file, file2)) {
            throw new FileNotFoundException(file2 + " is not found under " + file);
        }
        LinkedList linkedList = new LinkedList();
        while (file2 != null && FileUtils.contains(file, file2)) {
            linkedList.addFirst(getDocIdForFile(file2));
            file2 = file2.getParentFile();
        }
        return linkedList;
    }

    @Override // android.provider.DocumentsProvider
    public String createDocument(String str, String str2, String str3) throws FileNotFoundException {
        String buildValidFatFilename = FileUtils.buildValidFatFilename(str3);
        File fileForDocId = getFileForDocId(str);
        if (!fileForDocId.isDirectory()) {
            throw new IllegalArgumentException("Parent document isn't a directory");
        }
        File buildUniqueFile = FileUtils.buildUniqueFile(fileForDocId, str2, buildValidFatFilename);
        if ("vnd.android.document/directory".equals(str2)) {
            if (!buildUniqueFile.mkdir()) {
                throw new IllegalStateException("Failed to mkdir " + buildUniqueFile);
            }
            String docIdForFile = getDocIdForFile(buildUniqueFile);
            onDocIdChanged(docIdForFile);
            addFolderToMediaStore(getFileForDocId(docIdForFile, true));
            return docIdForFile;
        }
        try {
            if (!buildUniqueFile.createNewFile()) {
                throw new IllegalStateException("Failed to touch " + buildUniqueFile);
            }
            String docIdForFile2 = getDocIdForFile(buildUniqueFile);
            onDocIdChanged(docIdForFile2);
            return docIdForFile2;
        } catch (IOException e) {
            throw new IllegalStateException("Failed to touch " + buildUniqueFile + ": " + e);
        }
    }

    private void addFolderToMediaStore(File file) {
        if (file != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                ContentResolver contentResolver = getContext().getContentResolver();
                Uri directoryUri = MediaStore.Files.getDirectoryUri("external");
                ContentValues contentValues = new ContentValues();
                contentValues.put("_data", file.getAbsolutePath());
                contentResolver.insert(directoryUri, contentValues);
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    @Override // android.provider.DocumentsProvider
    public String renameDocument(String str, String str2) throws FileNotFoundException {
        String buildValidFatFilename = FileUtils.buildValidFatFilename(str2);
        File fileForDocId = getFileForDocId(str);
        File buildUniqueFile = FileUtils.buildUniqueFile(fileForDocId.getParentFile(), buildValidFatFilename);
        File fileForDocId2 = getFileForDocId(str, true);
        if (!fileForDocId.renameTo(buildUniqueFile)) {
            throw new IllegalStateException("Failed to rename to " + buildUniqueFile);
        }
        String docIdForFile = getDocIdForFile(buildUniqueFile);
        onDocIdChanged(str);
        onDocIdChanged(docIdForFile);
        File fileForDocId3 = getFileForDocId(docIdForFile, true);
        moveInMediaStore(fileForDocId2, fileForDocId3);
        if (TextUtils.equals(str, docIdForFile)) {
            return null;
        }
        scanFile(fileForDocId3);
        return docIdForFile;
    }

    @Override // android.provider.DocumentsProvider
    public String moveDocument(String str, String str2, String str3) throws FileNotFoundException {
        File fileForDocId = getFileForDocId(str);
        File file = new File(getFileForDocId(str3), fileForDocId.getName());
        File fileForDocId2 = getFileForDocId(str, true);
        if (file.exists()) {
            throw new IllegalStateException("Already exists " + file);
        }
        if (!fileForDocId.renameTo(file)) {
            throw new IllegalStateException("Failed to move to " + file);
        }
        String docIdForFile = getDocIdForFile(file);
        onDocIdChanged(str);
        onDocIdChanged(docIdForFile);
        moveInMediaStore(fileForDocId2, getFileForDocId(docIdForFile, true));
        return docIdForFile;
    }

    private void moveInMediaStore(File file, File file2) {
        Uri contentUri;
        if (file == null || file2 == null) {
            return;
        }
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ContentResolver contentResolver = getContext().getContentResolver();
            if (file2.isDirectory()) {
                contentUri = MediaStore.Files.getDirectoryUri("external");
            } else {
                contentUri = MediaStore.Files.getContentUri("external");
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", file2.getAbsolutePath());
            String absolutePath = file.getAbsolutePath();
            contentResolver.update(contentUri, contentValues, "_data LIKE ? AND lower(_data)=lower(?)", new String[]{absolutePath, absolutePath});
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    @Override // android.provider.DocumentsProvider
    public void deleteDocument(String str) throws FileNotFoundException {
        File fileForDocId = getFileForDocId(str);
        File fileForDocId2 = getFileForDocId(str, true);
        boolean isDirectory = fileForDocId.isDirectory();
        if (isDirectory) {
            FileUtils.deleteContents(fileForDocId);
        }
        if (!fileForDocId.delete()) {
            throw new IllegalStateException("Failed to delete " + fileForDocId);
        }
        onDocIdChanged(str);
        removeFromMediaStore(fileForDocId2, isDirectory);
    }

    private void removeFromMediaStore(File file, boolean z) throws FileNotFoundException {
        if (file != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                ContentResolver contentResolver = getContext().getContentResolver();
                Uri contentUri = MediaStore.Files.getContentUri("external");
                if (z) {
                    String str = file.getAbsolutePath() + "/";
                    contentResolver.delete(contentUri, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)", new String[]{str + "%", Integer.toString(str.length()), str});
                }
                String absolutePath = file.getAbsolutePath();
                contentResolver.delete(contentUri, "_data LIKE ?1 AND lower(_data)=lower(?2)", new String[]{absolutePath, absolutePath});
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryDocument(String str, String[] strArr) throws FileNotFoundException {
        MatrixCursor matrixCursor = new MatrixCursor(resolveProjection(strArr));
        includeFile(matrixCursor, str, null);
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public Cursor queryChildDocuments(String str, String[] strArr, String str2) throws FileNotFoundException {
        File fileForDocId = getFileForDocId(str);
        DirectoryCursor directoryCursor = new DirectoryCursor(resolveProjection(strArr), str, fileForDocId);
        File[] listFiles = fileForDocId.listFiles();
        for (File file : listFiles) {
            includeFile(directoryCursor, null, file);
        }
        return directoryCursor;
    }

    protected final Cursor querySearchDocuments(File file, String str, String[] strArr, Set<String> set) throws FileNotFoundException {
        String lowerCase = str.toLowerCase();
        MatrixCursor matrixCursor = new MatrixCursor(resolveProjection(strArr));
        LinkedList linkedList = new LinkedList();
        linkedList.add(file);
        while (!linkedList.isEmpty() && matrixCursor.getCount() < 24) {
            File file2 = (File) linkedList.removeFirst();
            if (file2.isDirectory()) {
                for (File file3 : file2.listFiles()) {
                    linkedList.add(file3);
                }
            }
            if (file2.getName().toLowerCase().contains(lowerCase) && !set.contains(file2.getAbsolutePath())) {
                includeFile(matrixCursor, null, file2);
            }
        }
        return matrixCursor;
    }

    @Override // android.provider.DocumentsProvider
    public String getDocumentType(String str) throws FileNotFoundException {
        return getTypeForFile(getFileForDocId(str));
    }

    @Override // android.provider.DocumentsProvider
    public ParcelFileDescriptor openDocument(final String str, String str2, CancellationSignal cancellationSignal) throws FileNotFoundException {
        File fileForDocId = getFileForDocId(str);
        final File fileForDocId2 = getFileForDocId(str, true);
        int parseMode = ParcelFileDescriptor.parseMode(str2);
        if (parseMode == 268435456 || fileForDocId2 == null) {
            return ParcelFileDescriptor.open(fileForDocId, parseMode);
        }
        try {
            return ParcelFileDescriptor.open(fileForDocId, parseMode, this.mHandler, new ParcelFileDescriptor.OnCloseListener() { // from class: com.android.internal.content.-$$Lambda$FileSystemProvider$y9rjeYFpkvVjwD2Whw-ujCM-C7Y
                @Override // android.os.ParcelFileDescriptor.OnCloseListener
                public final void onClose(IOException iOException) {
                    FileSystemProvider.lambda$openDocument$0(FileSystemProvider.this, str, fileForDocId2, iOException);
                }
            });
        } catch (IOException e) {
            throw new FileNotFoundException("Failed to open for writing: " + e);
        }
    }

    public static /* synthetic */ void lambda$openDocument$0(FileSystemProvider fileSystemProvider, String str, File file, IOException iOException) {
        fileSystemProvider.onDocIdChanged(str);
        fileSystemProvider.scanFile(file);
    }

    private void scanFile(File file) {
        Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        intent.setData(Uri.fromFile(file));
        getContext().sendBroadcast(intent);
    }

    @Override // android.provider.DocumentsProvider
    public AssetFileDescriptor openDocumentThumbnail(String str, Point point, CancellationSignal cancellationSignal) throws FileNotFoundException {
        return DocumentsContract.openImageThumbnail(getFileForDocId(str));
    }

    protected MatrixCursor.RowBuilder includeFile(MatrixCursor matrixCursor, String str, File file) throws FileNotFoundException {
        if (str == null) {
            str = getDocIdForFile(file);
        } else {
            file = getFileForDocId(str);
        }
        int i = 0;
        if (file.canWrite()) {
            i = file.isDirectory() ? 332 : 326;
        }
        String typeForFile = getTypeForFile(file);
        String name = file.getName();
        if (typeForFile.startsWith(MessagingMessage.IMAGE_MIME_TYPE_PREFIX)) {
            i |= 1;
        }
        if (typeSupportsMetadata(typeForFile)) {
            i |= 131072;
        }
        MatrixCursor.RowBuilder newRow = matrixCursor.newRow();
        newRow.add("document_id", str);
        newRow.add("_display_name", name);
        newRow.add("_size", Long.valueOf(file.length()));
        newRow.add("mime_type", typeForFile);
        newRow.add("flags", Integer.valueOf(i));
        long lastModified = file.lastModified();
        if (lastModified > 31536000000L) {
            newRow.add("last_modified", Long.valueOf(lastModified));
        }
        return newRow;
    }

    private static String getTypeForFile(File file) {
        return file.isDirectory() ? "vnd.android.document/directory" : getTypeForName(file.getName());
    }

    protected boolean typeSupportsMetadata(String str) {
        return MetadataReader.isSupportedMimeType(str);
    }

    private static String getTypeForName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return MIMETYPE_OCTET_STREAM;
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(lastIndexOf + 1).toLowerCase());
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : MIMETYPE_OCTET_STREAM;
    }

    protected final File getFileForDocId(String str) throws FileNotFoundException {
        return getFileForDocId(str, false);
    }

    private String[] resolveProjection(String[] strArr) {
        return strArr == null ? this.mDefaultProjection : strArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startObserving(File file, Uri uri) {
        synchronized (this.mObservers) {
            DirectoryObserver directoryObserver = this.mObservers.get(file);
            if (directoryObserver == null) {
                directoryObserver = new DirectoryObserver(file, getContext().getContentResolver(), uri);
                directoryObserver.startWatching();
                this.mObservers.put(file, directoryObserver);
            }
            DirectoryObserver.access$008(directoryObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopObserving(File file) {
        synchronized (this.mObservers) {
            DirectoryObserver directoryObserver = this.mObservers.get(file);
            if (directoryObserver == null) {
                return;
            }
            DirectoryObserver.access$010(directoryObserver);
            if (directoryObserver.mRefCount == 0) {
                this.mObservers.remove(file);
                directoryObserver.stopWatching();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class DirectoryObserver extends FileObserver {
        private static final int NOTIFY_EVENTS = 4044;
        private final File mFile;
        private final Uri mNotifyUri;
        private int mRefCount;
        private final ContentResolver mResolver;

        static /* synthetic */ int access$008(DirectoryObserver directoryObserver) {
            int i = directoryObserver.mRefCount;
            directoryObserver.mRefCount = i + 1;
            return i;
        }

        static /* synthetic */ int access$010(DirectoryObserver directoryObserver) {
            int i = directoryObserver.mRefCount;
            directoryObserver.mRefCount = i - 1;
            return i;
        }

        public DirectoryObserver(File file, ContentResolver contentResolver, Uri uri) {
            super(file.getAbsolutePath(), NOTIFY_EVENTS);
            this.mRefCount = 0;
            this.mFile = file;
            this.mResolver = contentResolver;
            this.mNotifyUri = uri;
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, String str) {
            if ((i & NOTIFY_EVENTS) != 0) {
                this.mResolver.notifyChange(this.mNotifyUri, (ContentObserver) null, false);
            }
        }

        public String toString() {
            return "DirectoryObserver{file=" + this.mFile.getAbsolutePath() + ", ref=" + this.mRefCount + "}";
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private class DirectoryCursor extends MatrixCursor {
        private final File mFile;

        public DirectoryCursor(String[] strArr, String str, File file) {
            super(strArr);
            Uri buildNotificationUri = FileSystemProvider.this.buildNotificationUri(str);
            setNotificationUri(FileSystemProvider.this.getContext().getContentResolver(), buildNotificationUri);
            this.mFile = file;
            FileSystemProvider.this.startObserving(this.mFile, buildNotificationUri);
        }

        @Override // android.database.AbstractCursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            FileSystemProvider.this.stopObserving(this.mFile);
        }
    }
}
