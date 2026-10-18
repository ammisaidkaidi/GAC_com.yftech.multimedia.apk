package android.provider;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ResolveInfo;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Point;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.ParcelableException;
import android.os.RemoteException;
import android.provider.CalendarContract;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.DataUnit;
import android.util.Log;
import android.view.KeyEvent;
import com.android.internal.util.Preconditions;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class DocumentsContract {
    public static final String ACTION_DOCUMENT_ROOT_SETTINGS = "android.provider.action.DOCUMENT_ROOT_SETTINGS";
    public static final String ACTION_DOCUMENT_SETTINGS = "android.provider.action.DOCUMENT_SETTINGS";
    public static final String ACTION_MANAGE_DOCUMENT = "android.provider.action.MANAGE_DOCUMENT";
    public static final String EXTERNAL_STORAGE_PROVIDER_AUTHORITY = "com.android.externalstorage.documents";
    public static final String EXTRA_ERROR = "error";
    public static final String EXTRA_EXCLUDE_SELF = "android.provider.extra.EXCLUDE_SELF";
    public static final String EXTRA_INFO = "info";
    public static final String EXTRA_INITIAL_URI = "android.provider.extra.INITIAL_URI";
    public static final String EXTRA_LOADING = "loading";
    public static final String EXTRA_OPTIONS = "options";
    public static final String EXTRA_ORIENTATION = "android.provider.extra.ORIENTATION";
    public static final String EXTRA_PACKAGE_NAME = "android.content.extra.PACKAGE_NAME";
    public static final String EXTRA_PARENT_URI = "parentUri";
    public static final String EXTRA_PROMPT = "android.provider.extra.PROMPT";
    public static final String EXTRA_RESULT = "result";
    public static final String EXTRA_SHOW_ADVANCED = "android.content.extra.SHOW_ADVANCED";
    public static final String EXTRA_TARGET_URI = "android.content.extra.TARGET_URI";
    public static final String EXTRA_URI = "uri";
    public static final String METADATA_EXIF = "android:documentExif";
    public static final String METADATA_TYPES = "android:documentMetadataType";
    public static final String METHOD_COPY_DOCUMENT = "android:copyDocument";
    public static final String METHOD_CREATE_DOCUMENT = "android:createDocument";
    public static final String METHOD_CREATE_WEB_LINK_INTENT = "android:createWebLinkIntent";
    public static final String METHOD_DELETE_DOCUMENT = "android:deleteDocument";
    public static final String METHOD_EJECT_ROOT = "android:ejectRoot";
    public static final String METHOD_FIND_DOCUMENT_PATH = "android:findDocumentPath";
    public static final String METHOD_GET_DOCUMENT_METADATA = "android:getDocumentMetadata";
    public static final String METHOD_IS_CHILD_DOCUMENT = "android:isChildDocument";
    public static final String METHOD_MOVE_DOCUMENT = "android:moveDocument";
    public static final String METHOD_REMOVE_DOCUMENT = "android:removeDocument";
    public static final String METHOD_RENAME_DOCUMENT = "android:renameDocument";
    public static final String PACKAGE_DOCUMENTS_UI = "com.android.documentsui";
    private static final String PARAM_MANAGE = "manage";
    private static final String PARAM_QUERY = "query";
    private static final String PATH_CHILDREN = "children";
    private static final String PATH_DOCUMENT = "document";
    private static final String PATH_RECENT = "recent";
    private static final String PATH_ROOT = "root";
    private static final String PATH_SEARCH = "search";
    public static final String PATH_TREE = "tree";
    public static final String PROVIDER_INTERFACE = "android.content.action.DOCUMENTS_PROVIDER";
    private static final String TAG = "DocumentsContract";
    private static final int THUMBNAIL_BUFFER_SIZE = (int) DataUnit.KIBIBYTES.toBytes(128);

    private DocumentsContract() {
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class Document {
        public static final String COLUMN_DISPLAY_NAME = "_display_name";
        public static final String COLUMN_DOCUMENT_ID = "document_id";
        public static final String COLUMN_FLAGS = "flags";
        public static final String COLUMN_ICON = "icon";
        public static final String COLUMN_LAST_MODIFIED = "last_modified";
        public static final String COLUMN_MIME_TYPE = "mime_type";
        public static final String COLUMN_SIZE = "_size";
        public static final String COLUMN_SUMMARY = "summary";
        public static final int FLAG_DIR_PREFERS_GRID = 16;
        public static final int FLAG_DIR_PREFERS_LAST_MODIFIED = 32;
        public static final int FLAG_DIR_SUPPORTS_CREATE = 8;
        public static final int FLAG_PARTIAL = 65536;
        public static final int FLAG_SUPPORTS_COPY = 128;
        public static final int FLAG_SUPPORTS_DELETE = 4;
        public static final int FLAG_SUPPORTS_METADATA = 131072;
        public static final int FLAG_SUPPORTS_MOVE = 256;
        public static final int FLAG_SUPPORTS_REMOVE = 1024;
        public static final int FLAG_SUPPORTS_RENAME = 64;
        public static final int FLAG_SUPPORTS_SETTINGS = 2048;
        public static final int FLAG_SUPPORTS_THUMBNAIL = 1;
        public static final int FLAG_SUPPORTS_WRITE = 2;
        public static final int FLAG_VIRTUAL_DOCUMENT = 512;
        public static final int FLAG_WEB_LINKABLE = 4096;
        public static final String MIME_TYPE_DIR = "vnd.android.document/directory";

        private Document() {
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class Root {
        public static final String COLUMN_AVAILABLE_BYTES = "available_bytes";
        public static final String COLUMN_CAPACITY_BYTES = "capacity_bytes";
        public static final String COLUMN_DOCUMENT_ID = "document_id";
        public static final String COLUMN_FLAGS = "flags";
        public static final String COLUMN_ICON = "icon";
        public static final String COLUMN_MIME_TYPES = "mime_types";
        public static final String COLUMN_ROOT_ID = "root_id";
        public static final String COLUMN_SUMMARY = "summary";
        public static final String COLUMN_TITLE = "title";
        public static final int FLAG_ADVANCED = 131072;
        public static final int FLAG_EMPTY = 65536;
        public static final int FLAG_HAS_SETTINGS = 262144;
        public static final int FLAG_LOCAL_ONLY = 2;
        public static final int FLAG_REMOVABLE_SD = 524288;
        public static final int FLAG_REMOVABLE_USB = 1048576;
        public static final int FLAG_SUPPORTS_CREATE = 1;
        public static final int FLAG_SUPPORTS_EJECT = 32;
        public static final int FLAG_SUPPORTS_IS_CHILD = 16;
        public static final int FLAG_SUPPORTS_RECENTS = 4;
        public static final int FLAG_SUPPORTS_SEARCH = 8;
        public static final String MIME_TYPE_ITEM = "vnd.android.document/root";

        private Root() {
        }
    }

    public static Uri buildRootsUri(String str) {
        return new Uri.Builder().scheme("content").authority(str).appendPath(PATH_ROOT).build();
    }

    public static Uri buildRootUri(String str, String str2) {
        return new Uri.Builder().scheme("content").authority(str).appendPath(PATH_ROOT).appendPath(str2).build();
    }

    public static Uri buildHomeUri() {
        return buildRootUri(EXTERNAL_STORAGE_PROVIDER_AUTHORITY, CalendarContract.CalendarCache.TIMEZONE_TYPE_HOME);
    }

    public static Uri buildRecentDocumentsUri(String str, String str2) {
        return new Uri.Builder().scheme("content").authority(str).appendPath(PATH_ROOT).appendPath(str2).appendPath(PATH_RECENT).build();
    }

    public static Uri buildTreeDocumentUri(String str, String str2) {
        return new Uri.Builder().scheme("content").authority(str).appendPath(PATH_TREE).appendPath(str2).build();
    }

    public static Uri buildDocumentUri(String str, String str2) {
        return new Uri.Builder().scheme("content").authority(str).appendPath(PATH_DOCUMENT).appendPath(str2).build();
    }

    public static Uri buildDocumentUriUsingTree(Uri uri, String str) {
        return new Uri.Builder().scheme("content").authority(uri.getAuthority()).appendPath(PATH_TREE).appendPath(getTreeDocumentId(uri)).appendPath(PATH_DOCUMENT).appendPath(str).build();
    }

    public static Uri buildDocumentUriMaybeUsingTree(Uri uri, String str) {
        if (isTreeUri(uri)) {
            return buildDocumentUriUsingTree(uri, str);
        }
        return buildDocumentUri(uri.getAuthority(), str);
    }

    public static Uri buildChildDocumentsUri(String str, String str2) {
        return new Uri.Builder().scheme("content").authority(str).appendPath(PATH_DOCUMENT).appendPath(str2).appendPath(PATH_CHILDREN).build();
    }

    public static Uri buildChildDocumentsUriUsingTree(Uri uri, String str) {
        return new Uri.Builder().scheme("content").authority(uri.getAuthority()).appendPath(PATH_TREE).appendPath(getTreeDocumentId(uri)).appendPath(PATH_DOCUMENT).appendPath(str).appendPath(PATH_CHILDREN).build();
    }

    public static Uri buildSearchDocumentsUri(String str, String str2, String str3) {
        return new Uri.Builder().scheme("content").authority(str).appendPath(PATH_ROOT).appendPath(str2).appendPath("search").appendQueryParameter("query", str3).build();
    }

    public static boolean isDocumentUri(Context context, Uri uri) {
        if (isContentUri(uri) && isDocumentsProvider(context, uri.getAuthority())) {
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() == 2) {
                return PATH_DOCUMENT.equals(pathSegments.get(0));
            }
            return pathSegments.size() == 4 && PATH_TREE.equals(pathSegments.get(0)) && PATH_DOCUMENT.equals(pathSegments.get(2));
        }
        return false;
    }

    public static boolean isRootUri(Context context, Uri uri) {
        if (!isContentUri(uri) || !isDocumentsProvider(context, uri.getAuthority())) {
            return false;
        }
        List<String> pathSegments = uri.getPathSegments();
        return pathSegments.size() == 2 && PATH_ROOT.equals(pathSegments.get(0));
    }

    public static boolean isContentUri(Uri uri) {
        return uri != null && "content".equals(uri.getScheme());
    }

    public static boolean isTreeUri(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        return pathSegments.size() >= 2 && PATH_TREE.equals(pathSegments.get(0));
    }

    private static boolean isDocumentsProvider(Context context, String str) {
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentContentProviders(new Intent(PROVIDER_INTERFACE), 0).iterator();
        while (it.hasNext()) {
            if (str.equals(it.next().providerInfo.authority)) {
                return true;
            }
        }
        return false;
    }

    public static String getRootId(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() >= 2 && PATH_ROOT.equals(pathSegments.get(0))) {
            return pathSegments.get(1);
        }
        throw new IllegalArgumentException("Invalid URI: " + uri);
    }

    public static String getDocumentId(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() >= 2 && PATH_DOCUMENT.equals(pathSegments.get(0))) {
            return pathSegments.get(1);
        }
        if (pathSegments.size() >= 4 && PATH_TREE.equals(pathSegments.get(0)) && PATH_DOCUMENT.equals(pathSegments.get(2))) {
            return pathSegments.get(3);
        }
        throw new IllegalArgumentException("Invalid URI: " + uri);
    }

    public static String getTreeDocumentId(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() >= 2 && PATH_TREE.equals(pathSegments.get(0))) {
            return pathSegments.get(1);
        }
        throw new IllegalArgumentException("Invalid URI: " + uri);
    }

    public static String getSearchDocumentsQuery(Uri uri) {
        return uri.getQueryParameter("query");
    }

    public static Uri setManageMode(Uri uri) {
        return uri.buildUpon().appendQueryParameter(PARAM_MANAGE, "true").build();
    }

    public static boolean isManageMode(Uri uri) {
        return uri.getBooleanQueryParameter(PARAM_MANAGE, false);
    }

    public static Bitmap getDocumentThumbnail(ContentResolver contentResolver, Uri uri, Point point, CancellationSignal cancellationSignal) throws FileNotFoundException {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            return getDocumentThumbnail(acquireUnstableContentProviderClient, uri, point, cancellationSignal);
        } catch (Exception e) {
            if (!(e instanceof OperationCanceledException)) {
                Log.w(TAG, "Failed to load thumbnail for " + uri + ": " + e);
            }
            rethrowIfNecessary(contentResolver, e);
            return null;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static Bitmap getDocumentThumbnail(ContentProviderClient contentProviderClient, Uri uri, Point point, CancellationSignal cancellationSignal) throws RemoteException, IOException {
        AssetFileDescriptor assetFileDescriptor;
        BufferedInputStream bufferedInputStream;
        Bitmap decodeFileDescriptor;
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.content.extra.SIZE", point);
        try {
            assetFileDescriptor = contentProviderClient.openTypedAssetFileDescriptor(uri, "image/*", bundle, cancellationSignal);
        } catch (Throwable th) {
            th = th;
            assetFileDescriptor = null;
        }
        try {
            FileDescriptor fileDescriptor = assetFileDescriptor.getFileDescriptor();
            long startOffset = assetFileDescriptor.getStartOffset();
            try {
                Os.lseek(fileDescriptor, startOffset, OsConstants.SEEK_SET);
                bufferedInputStream = null;
            } catch (ErrnoException unused) {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(fileDescriptor), THUMBNAIL_BUFFER_SIZE);
                bufferedInputStream.mark(THUMBNAIL_BUFFER_SIZE);
            }
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            if (bufferedInputStream != null) {
                BitmapFactory.decodeStream(bufferedInputStream, null, options);
            } else {
                BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            }
            int i = options.outWidth / point.x;
            int i2 = options.outHeight / point.y;
            options.inJustDecodeBounds = false;
            options.inSampleSize = Math.min(i, i2);
            if (bufferedInputStream != null) {
                bufferedInputStream.reset();
                decodeFileDescriptor = BitmapFactory.decodeStream(bufferedInputStream, null, options);
            } else {
                try {
                    Os.lseek(fileDescriptor, startOffset, OsConstants.SEEK_SET);
                } catch (ErrnoException e) {
                    e.rethrowAsIOException();
                }
                decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
            }
            Bitmap bitmap = decodeFileDescriptor;
            Bundle extras = assetFileDescriptor.getExtras();
            int i3 = extras != null ? extras.getInt(EXTRA_ORIENTATION, 0) : 0;
            if (i3 != 0) {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                Matrix matrix = new Matrix();
                matrix.setRotate(i3, width / 2, height / 2);
                bitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
            }
            IoUtils.closeQuietly(assetFileDescriptor);
            return bitmap;
        } catch (Throwable th2) {
            th = th2;
            IoUtils.closeQuietly(assetFileDescriptor);
            throw th;
        }
    }

    public static Uri createDocument(ContentResolver contentResolver, Uri uri, String str, String str2) throws FileNotFoundException {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            return createDocument(acquireUnstableContentProviderClient, uri, str, str2);
        } catch (Exception e) {
            Log.w(TAG, "Failed to create document", e);
            rethrowIfNecessary(contentResolver, e);
            return null;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static Uri createDocument(ContentProviderClient contentProviderClient, Uri uri, String str, String str2) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        bundle.putString("mime_type", str);
        bundle.putString("_display_name", str2);
        return (Uri) contentProviderClient.call(METHOD_CREATE_DOCUMENT, null, bundle).getParcelable("uri");
    }

    public static boolean isChildDocument(ContentProviderClient contentProviderClient, Uri uri, Uri uri2) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        bundle.putParcelable(EXTRA_TARGET_URI, uri2);
        Bundle call = contentProviderClient.call(METHOD_IS_CHILD_DOCUMENT, null, bundle);
        if (call == null) {
            throw new RemoteException("Failed to get a reponse from isChildDocument query.");
        }
        if (!call.containsKey(EXTRA_RESULT)) {
            throw new RemoteException("Response did not include result field..");
        }
        return call.getBoolean(EXTRA_RESULT);
    }

    public static Uri renameDocument(ContentResolver contentResolver, Uri uri, String str) throws FileNotFoundException {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            return renameDocument(acquireUnstableContentProviderClient, uri, str);
        } catch (Exception e) {
            Log.w(TAG, "Failed to rename document", e);
            rethrowIfNecessary(contentResolver, e);
            return null;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static Uri renameDocument(ContentProviderClient contentProviderClient, Uri uri, String str) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        bundle.putString("_display_name", str);
        Uri uri2 = (Uri) contentProviderClient.call(METHOD_RENAME_DOCUMENT, null, bundle).getParcelable("uri");
        return uri2 != null ? uri2 : uri;
    }

    public static boolean deleteDocument(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            deleteDocument(acquireUnstableContentProviderClient, uri);
            return true;
        } catch (Exception e) {
            Log.w(TAG, "Failed to delete document", e);
            rethrowIfNecessary(contentResolver, e);
            return false;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static void deleteDocument(ContentProviderClient contentProviderClient, Uri uri) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        contentProviderClient.call(METHOD_DELETE_DOCUMENT, null, bundle);
    }

    public static Uri copyDocument(ContentResolver contentResolver, Uri uri, Uri uri2) throws FileNotFoundException {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            return copyDocument(acquireUnstableContentProviderClient, uri, uri2);
        } catch (Exception e) {
            Log.w(TAG, "Failed to copy document", e);
            rethrowIfNecessary(contentResolver, e);
            return null;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static Uri copyDocument(ContentProviderClient contentProviderClient, Uri uri, Uri uri2) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        bundle.putParcelable(EXTRA_TARGET_URI, uri2);
        return (Uri) contentProviderClient.call(METHOD_COPY_DOCUMENT, null, bundle).getParcelable("uri");
    }

    public static Uri moveDocument(ContentResolver contentResolver, Uri uri, Uri uri2, Uri uri3) throws FileNotFoundException {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            return moveDocument(acquireUnstableContentProviderClient, uri, uri2, uri3);
        } catch (Exception e) {
            Log.w(TAG, "Failed to move document", e);
            rethrowIfNecessary(contentResolver, e);
            return null;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static Uri moveDocument(ContentProviderClient contentProviderClient, Uri uri, Uri uri2, Uri uri3) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        bundle.putParcelable(EXTRA_PARENT_URI, uri2);
        bundle.putParcelable(EXTRA_TARGET_URI, uri3);
        return (Uri) contentProviderClient.call(METHOD_MOVE_DOCUMENT, null, bundle).getParcelable("uri");
    }

    public static boolean removeDocument(ContentResolver contentResolver, Uri uri, Uri uri2) throws FileNotFoundException {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            removeDocument(acquireUnstableContentProviderClient, uri, uri2);
            return true;
        } catch (Exception e) {
            Log.w(TAG, "Failed to remove document", e);
            rethrowIfNecessary(contentResolver, e);
            return false;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static void removeDocument(ContentProviderClient contentProviderClient, Uri uri, Uri uri2) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        bundle.putParcelable(EXTRA_PARENT_URI, uri2);
        contentProviderClient.call(METHOD_REMOVE_DOCUMENT, null, bundle);
    }

    public static void ejectRoot(ContentResolver contentResolver, Uri uri) {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            try {
                ejectRoot(acquireUnstableContentProviderClient, uri);
            } catch (RemoteException e) {
                e.rethrowAsRuntimeException();
            }
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static void ejectRoot(ContentProviderClient contentProviderClient, Uri uri) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        contentProviderClient.call(METHOD_EJECT_ROOT, null, bundle);
    }

    public static Bundle getDocumentMetadata(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            return getDocumentMetadata(acquireUnstableContentProviderClient, uri);
        } catch (Exception e) {
            Log.w(TAG, "Failed to get document metadata");
            rethrowIfNecessary(contentResolver, e);
            return null;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static Bundle getDocumentMetadata(ContentProviderClient contentProviderClient, Uri uri) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        Bundle call = contentProviderClient.call(METHOD_GET_DOCUMENT_METADATA, null, bundle);
        if (call != null) {
            return call;
        }
        throw new RemoteException("Failed to get a response from getDocumentMetadata");
    }

    public static Path findDocumentPath(ContentResolver contentResolver, Uri uri) throws FileNotFoundException {
        Preconditions.checkArgument(isTreeUri(uri), uri + " is not a tree uri.");
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            return findDocumentPath(acquireUnstableContentProviderClient, uri);
        } catch (Exception e) {
            Log.w(TAG, "Failed to find path", e);
            rethrowIfNecessary(contentResolver, e);
            return null;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static Path findDocumentPath(ContentProviderClient contentProviderClient, Uri uri) throws RemoteException {
        Bundle bundle = new Bundle();
        bundle.putParcelable("uri", uri);
        return (Path) contentProviderClient.call(METHOD_FIND_DOCUMENT_PATH, null, bundle).getParcelable(EXTRA_RESULT);
    }

    public static IntentSender createWebLinkIntent(ContentResolver contentResolver, Uri uri, Bundle bundle) throws FileNotFoundException {
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri.getAuthority());
        try {
            return createWebLinkIntent(acquireUnstableContentProviderClient, uri, bundle);
        } catch (Exception e) {
            Log.w(TAG, "Failed to create a web link intent", e);
            rethrowIfNecessary(contentResolver, e);
            return null;
        } finally {
            ContentProviderClient.releaseQuietly(acquireUnstableContentProviderClient);
        }
    }

    public static IntentSender createWebLinkIntent(ContentProviderClient contentProviderClient, Uri uri, Bundle bundle) throws RemoteException {
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("uri", uri);
        if (bundle != null) {
            bundle2.putBundle(EXTRA_OPTIONS, bundle);
        }
        return (IntentSender) contentProviderClient.call(METHOD_CREATE_WEB_LINK_INTENT, null, bundle2).getParcelable(EXTRA_RESULT);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v6, types: [int] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v9 */
    public static AssetFileDescriptor openImageThumbnail(File file) throws FileNotFoundException {
        Bundle bundle;
        ParcelFileDescriptor open = ParcelFileDescriptor.open(file, 268435456);
        try {
            ExifInterface exifInterface = new ExifInterface(file.getAbsolutePath());
            bundle = exifInterface.getAttributeInt("Orientation", -1);
            try {
                if (bundle == 3) {
                    Bundle bundle2 = new Bundle(1);
                    bundle2.putInt(EXTRA_ORIENTATION, KeyEvent.KEYCODE_STB_INPUT);
                    bundle = bundle2;
                } else if (bundle == 6) {
                    Bundle bundle3 = new Bundle(1);
                    bundle3.putInt(EXTRA_ORIENTATION, 90);
                    bundle = bundle3;
                } else if (bundle != 8) {
                    bundle = 0;
                } else {
                    Bundle bundle4 = new Bundle(1);
                    bundle4.putInt(EXTRA_ORIENTATION, KeyEvent.KEYCODE_DPAD_UP_RIGHT);
                    bundle = bundle4;
                }
                long[] thumbnailRange = exifInterface.getThumbnailRange();
                if (thumbnailRange != null) {
                    return new AssetFileDescriptor(open, thumbnailRange[0], thumbnailRange[1], bundle);
                }
            } catch (IOException unused) {
            }
        } catch (IOException unused2) {
            bundle = 0;
        }
        return new AssetFileDescriptor(open, 0L, -1L, bundle);
    }

    private static void rethrowIfNecessary(ContentResolver contentResolver, Exception exc) throws FileNotFoundException {
        if (contentResolver.getTargetSdkVersion() >= 26) {
            if (exc instanceof ParcelableException) {
                ((ParcelableException) exc).maybeRethrow(FileNotFoundException.class);
            } else if (exc instanceof RemoteException) {
                ((RemoteException) exc).rethrowAsRuntimeException();
            } else if (exc instanceof RuntimeException) {
                throw ((RuntimeException) exc);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class Path implements Parcelable {
        public static final Parcelable.Creator<Path> CREATOR = new Parcelable.Creator<Path>() { // from class: android.provider.DocumentsContract.Path.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Path createFromParcel(Parcel parcel) {
                return new Path(parcel.readString(), parcel.createStringArrayList());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Path[] newArray(int i) {
                return new Path[i];
            }
        };
        private final List<String> mPath;
        private final String mRootId;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Path(String str, List<String> list) {
            Preconditions.checkCollectionNotEmpty(list, "path");
            Preconditions.checkCollectionElementsNotNull(list, "path");
            this.mRootId = str;
            this.mPath = list;
        }

        public String getRootId() {
            return this.mRootId;
        }

        public List<String> getPath() {
            return this.mPath;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !(obj instanceof Path)) {
                return false;
            }
            Path path = (Path) obj;
            return Objects.equals(this.mRootId, path.mRootId) && Objects.equals(this.mPath, path.mPath);
        }

        public int hashCode() {
            return Objects.hash(this.mRootId, this.mPath);
        }

        public String toString() {
            return "DocumentsContract.Path{rootId=" + this.mRootId + ", path=" + this.mPath + "}";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.mRootId);
            parcel.writeStringList(this.mPath);
        }
    }
}
