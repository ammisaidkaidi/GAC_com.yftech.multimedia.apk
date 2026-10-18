package android.os;

import android.provider.DocumentsContract;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.system.StructStat;
import android.telecom.Logging.Session;
import android.telephony.SubscriptionPlan;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.view.textclassifier.TextClassifier;
import android.webkit.MimeTypeMap;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.SizedInputStream;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import libcore.io.IoUtils;
import libcore.util.EmptyArray;

/* loaded from: /home/user/work/dex/classes2.dex */
public class FileUtils {
    private static final long COPY_CHECKPOINT_BYTES = 524288;
    private static final File[] EMPTY = new File[0];
    private static final boolean ENABLE_COPY_OPTIMIZATIONS = true;
    public static final int S_IRGRP = 32;
    public static final int S_IROTH = 4;
    public static final int S_IRUSR = 256;
    public static final int S_IRWXG = 56;
    public static final int S_IRWXO = 7;
    public static final int S_IRWXU = 448;
    public static final int S_IWGRP = 16;
    public static final int S_IWOTH = 2;
    public static final int S_IWUSR = 128;
    public static final int S_IXGRP = 8;
    public static final int S_IXOTH = 1;
    public static final int S_IXUSR = 64;
    private static final String TAG = "FileUtils";

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface ProgressListener {
        void onProgress(long j);
    }

    private static boolean isValidExtFilenameChar(char c) {
        return (c == 0 || c == '/') ? false : true;
    }

    private static boolean isValidFatFilenameChar(char c) {
        if ((c < 0 || c > 31) && c != '\"' && c != '*' && c != '/' && c != ':' && c != '<' && c != '\\' && c != '|' && c != 127) {
            switch (c) {
                case '>':
                case '?':
                    break;
                default:
                    return true;
            }
        }
        return false;
    }

    public static long roundStorageSize(long j) {
        long j2 = 1;
        long j3 = 1;
        while (true) {
            long j4 = j2 * j3;
            if (j4 >= j) {
                return j4;
            }
            j2 <<= 1;
            if (j2 > 512) {
                j3 *= 1000;
                j2 = 1;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private static class NoImagePreloadHolder {
        public static final Pattern SAFE_FILENAME_PATTERN = Pattern.compile("[\\w%+,./=_-]+");

        private NoImagePreloadHolder() {
        }
    }

    public static int setPermissions(File file, int i, int i2, int i3) {
        return setPermissions(file.getAbsolutePath(), i, i2, i3);
    }

    public static int setPermissions(String str, int i, int i2, int i3) {
        try {
            Os.chmod(str, i);
            if (i2 < 0 && i3 < 0) {
                return 0;
            }
            try {
                Os.chown(str, i2, i3);
                return 0;
            } catch (ErrnoException e) {
                Slog.w(TAG, "Failed to chown(" + str + "): " + e);
                return e.errno;
            }
        } catch (ErrnoException e2) {
            Slog.w(TAG, "Failed to chmod(" + str + "): " + e2);
            return e2.errno;
        }
    }

    public static int setPermissions(FileDescriptor fileDescriptor, int i, int i2, int i3) {
        try {
            Os.fchmod(fileDescriptor, i);
            if (i2 < 0 && i3 < 0) {
                return 0;
            }
            try {
                Os.fchown(fileDescriptor, i2, i3);
                return 0;
            } catch (ErrnoException e) {
                Slog.w(TAG, "Failed to fchown(): " + e);
                return e.errno;
            }
        } catch (ErrnoException e2) {
            Slog.w(TAG, "Failed to fchmod(): " + e2);
            return e2.errno;
        }
    }

    public static void copyPermissions(File file, File file2) throws IOException {
        try {
            StructStat stat = Os.stat(file.getAbsolutePath());
            Os.chmod(file2.getAbsolutePath(), stat.st_mode);
            Os.chown(file2.getAbsolutePath(), stat.st_uid, stat.st_gid);
        } catch (ErrnoException e) {
            throw e.rethrowAsIOException();
        }
    }

    public static int getUid(String str) {
        try {
            return Os.stat(str).st_uid;
        } catch (ErrnoException unused) {
            return -1;
        }
    }

    public static boolean sync(FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return true;
        }
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Deprecated
    public static boolean copyFile(File file, File file2) {
        try {
            copyFileOrThrow(file, file2);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Deprecated
    public static void copyFileOrThrow(File file, File file2) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        Throwable th = null;
        try {
            copyToFileOrThrow(fileInputStream, file2);
        } finally {
            $closeResource(th, fileInputStream);
        }
    }

    private static /* synthetic */ void $closeResource(Throwable th, AutoCloseable autoCloseable) {
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
    }

    @Deprecated
    public static boolean copyToFile(InputStream inputStream, File file) {
        try {
            copyToFileOrThrow(inputStream, file);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @Deprecated
    public static void copyToFileOrThrow(InputStream inputStream, File file) throws IOException {
        if (file.exists()) {
            file.delete();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            copy(inputStream, fileOutputStream);
            try {
                Os.fsync(fileOutputStream.getFD());
            } catch (ErrnoException e) {
                throw e.rethrowAsIOException();
            }
        } finally {
            $closeResource(null, fileOutputStream);
        }
    }

    public static long copy(File file, File file2) throws IOException {
        return copy(file, file2, (ProgressListener) null, (CancellationSignal) null);
    }

    public static long copy(File file, File file2, ProgressListener progressListener, CancellationSignal cancellationSignal) throws IOException {
        Throwable th;
        Throwable th2;
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            try {
                long copy = copy(fileInputStream, fileOutputStream, progressListener, cancellationSignal);
                $closeResource(null, fileOutputStream);
                return copy;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    th = th3;
                    th2 = th4;
                    $closeResource(th, fileOutputStream);
                    throw th2;
                }
            }
        } finally {
            $closeResource(null, fileInputStream);
        }
    }

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        return copy(inputStream, outputStream, (ProgressListener) null, (CancellationSignal) null);
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, ProgressListener progressListener, CancellationSignal cancellationSignal) throws IOException {
        if ((inputStream instanceof FileInputStream) && (outputStream instanceof FileOutputStream)) {
            return copy(((FileInputStream) inputStream).getFD(), ((FileOutputStream) outputStream).getFD(), progressListener, cancellationSignal);
        }
        return copyInternalUserspace(inputStream, outputStream, progressListener, cancellationSignal);
    }

    public static long copy(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2) throws IOException {
        return copy(fileDescriptor, fileDescriptor2, (ProgressListener) null, (CancellationSignal) null);
    }

    public static long copy(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, ProgressListener progressListener, CancellationSignal cancellationSignal) throws IOException {
        return copy(fileDescriptor, fileDescriptor2, progressListener, cancellationSignal, SubscriptionPlan.BYTES_UNLIMITED);
    }

    public static long copy(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, ProgressListener progressListener, CancellationSignal cancellationSignal, long j) throws IOException {
        try {
            StructStat fstat = Os.fstat(fileDescriptor);
            StructStat fstat2 = Os.fstat(fileDescriptor2);
            if (OsConstants.S_ISREG(fstat.st_mode) && OsConstants.S_ISREG(fstat2.st_mode)) {
                return copyInternalSendfile(fileDescriptor, fileDescriptor2, progressListener, cancellationSignal, j);
            }
            if (OsConstants.S_ISFIFO(fstat.st_mode) || OsConstants.S_ISFIFO(fstat2.st_mode)) {
                return copyInternalSplice(fileDescriptor, fileDescriptor2, progressListener, cancellationSignal, j);
            }
            return copyInternalUserspace(fileDescriptor, fileDescriptor2, progressListener, cancellationSignal, j);
        } catch (ErrnoException e) {
            throw e.rethrowAsIOException();
        }
    }

    @VisibleForTesting
    public static long copyInternalSplice(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, ProgressListener progressListener, CancellationSignal cancellationSignal, long j) throws ErrnoException {
        long j2 = j;
        long j3 = 0;
        long j4 = 0;
        while (true) {
            long splice = Os.splice(fileDescriptor, null, fileDescriptor2, null, Math.min(j2, 524288L), OsConstants.SPLICE_F_MOVE | OsConstants.SPLICE_F_MORE);
            if (splice == 0) {
                break;
            }
            j3 += splice;
            j4 += splice;
            j2 -= splice;
            if (j4 >= 524288) {
                if (cancellationSignal != null) {
                    cancellationSignal.throwIfCanceled();
                }
                if (progressListener != null) {
                    progressListener.onProgress(j3);
                }
                j4 = 0;
            }
        }
        if (progressListener != null) {
            progressListener.onProgress(j3);
        }
        return j3;
    }

    @VisibleForTesting
    public static long copyInternalSendfile(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, ProgressListener progressListener, CancellationSignal cancellationSignal, long j) throws ErrnoException {
        long j2 = j;
        long j3 = 0;
        long j4 = 0;
        while (true) {
            long sendfile = Os.sendfile(fileDescriptor2, fileDescriptor, null, Math.min(j2, 524288L));
            if (sendfile == 0) {
                break;
            }
            j3 += sendfile;
            j4 += sendfile;
            j2 -= sendfile;
            if (j4 >= 524288) {
                if (cancellationSignal != null) {
                    cancellationSignal.throwIfCanceled();
                }
                if (progressListener != null) {
                    progressListener.onProgress(j3);
                }
                j4 = 0;
            }
        }
        if (progressListener != null) {
            progressListener.onProgress(j3);
        }
        return j3;
    }

    @VisibleForTesting
    public static long copyInternalUserspace(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, ProgressListener progressListener, CancellationSignal cancellationSignal, long j) throws IOException {
        if (j != SubscriptionPlan.BYTES_UNLIMITED) {
            return copyInternalUserspace(new SizedInputStream(new FileInputStream(fileDescriptor), j), new FileOutputStream(fileDescriptor2), progressListener, cancellationSignal);
        }
        return copyInternalUserspace(new FileInputStream(fileDescriptor), new FileOutputStream(fileDescriptor2), progressListener, cancellationSignal);
    }

    @VisibleForTesting
    public static long copyInternalUserspace(InputStream inputStream, OutputStream outputStream, ProgressListener progressListener, CancellationSignal cancellationSignal) throws IOException {
        byte[] bArr = new byte[8192];
        long j = 0;
        long j2 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                break;
            }
            outputStream.write(bArr, 0, read);
            long j3 = read;
            j += j3;
            j2 += j3;
            if (j2 >= 524288) {
                if (cancellationSignal != null) {
                    cancellationSignal.throwIfCanceled();
                }
                if (progressListener != null) {
                    progressListener.onProgress(j);
                }
                j2 = 0;
            }
        }
        if (progressListener != null) {
            progressListener.onProgress(j);
        }
        return j;
    }

    public static boolean isFilenameSafe(File file) {
        return NoImagePreloadHolder.SAFE_FILENAME_PATTERN.matcher(file.getPath()).matches();
    }

    public static String readTextFile(File file, int i, String str) throws IOException {
        int read;
        int read2;
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        try {
            long length = file.length();
            if (i <= 0 && (length <= 0 || i != 0)) {
                if (i >= 0) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[1024];
                    do {
                        read = bufferedInputStream.read(bArr);
                        if (read > 0) {
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                    } while (read == bArr.length);
                    return byteArrayOutputStream.toString();
                }
                byte[] bArr2 = null;
                boolean z = false;
                byte[] bArr3 = null;
                while (true) {
                    if (bArr2 != null) {
                        z = true;
                    }
                    if (bArr2 == null) {
                        bArr2 = new byte[-i];
                    }
                    read2 = bufferedInputStream.read(bArr2);
                    if (read2 != bArr2.length) {
                        break;
                    }
                    byte[] bArr4 = bArr3;
                    bArr3 = bArr2;
                    bArr2 = bArr4;
                }
                if (bArr3 == null && read2 <= 0) {
                    return TextClassifier.TYPE_UNKNOWN;
                }
                if (bArr3 == null) {
                    return new String(bArr2, 0, read2);
                }
                if (read2 > 0) {
                    System.arraycopy(bArr3, read2, bArr3, 0, bArr3.length - read2);
                    System.arraycopy(bArr2, 0, bArr3, bArr3.length - read2, read2);
                    z = true;
                }
                if (str != null && z) {
                    return str + new String(bArr3);
                }
                return new String(bArr3);
            }
            if (length > 0 && (i == 0 || length < i)) {
                i = (int) length;
            }
            byte[] bArr5 = new byte[i + 1];
            int read3 = bufferedInputStream.read(bArr5);
            if (read3 <= 0) {
                return TextClassifier.TYPE_UNKNOWN;
            }
            if (read3 <= i) {
                return new String(bArr5, 0, read3);
            }
            if (str == null) {
                return new String(bArr5, 0, i);
            }
            return new String(bArr5, 0, i) + str;
        } finally {
            bufferedInputStream.close();
            fileInputStream.close();
        }
    }

    public static void stringToFile(File file, String str) throws IOException {
        stringToFile(file.getAbsolutePath(), str);
    }

    public static void bytesToFile(String str, byte[] bArr) throws IOException {
        Throwable th = null;
        if (str.startsWith("/proc/")) {
            int allowThreadDiskWritesMask = StrictMode.allowThreadDiskWritesMask();
            try {
                try {
                    new FileOutputStream(str).write(bArr);
                    return;
                } finally {
                }
            } finally {
                StrictMode.setThreadPolicyMask(allowThreadDiskWritesMask);
            }
        }
        try {
            new FileOutputStream(str).write(bArr);
        } finally {
        }
    }

    public static void stringToFile(String str, String str2) throws IOException {
        bytesToFile(str, str2.getBytes(StandardCharsets.UTF_8));
    }

    public static long checksumCrc32(File file) throws FileNotFoundException, IOException {
        CRC32 crc32 = new CRC32();
        CheckedInputStream checkedInputStream = null;
        try {
            CheckedInputStream checkedInputStream2 = new CheckedInputStream(new FileInputStream(file), crc32);
            try {
                do {
                } while (checkedInputStream2.read(new byte[128]) >= 0);
                long value = crc32.getValue();
                try {
                    checkedInputStream2.close();
                } catch (IOException unused) {
                }
                return value;
            } catch (Throwable th) {
                th = th;
                checkedInputStream = checkedInputStream2;
                if (checkedInputStream != null) {
                    try {
                        checkedInputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean deleteOlderFiles(File file, int i, long j) {
        if (i < 0 || j < 0) {
            throw new IllegalArgumentException("Constraints must be positive or 0");
        }
        File[] listFiles = file.listFiles();
        boolean z = false;
        if (listFiles == null) {
            return false;
        }
        Arrays.sort(listFiles, new Comparator<File>() { // from class: android.os.FileUtils.1
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return Long.compare(file3.lastModified(), file2.lastModified());
            }
        });
        while (i < listFiles.length) {
            File file2 = listFiles[i];
            if (System.currentTimeMillis() - file2.lastModified() > j && file2.delete()) {
                Log.d(TAG, "Deleted old file " + file2);
                z = true;
            }
            i++;
        }
        return z;
    }

    public static boolean contains(File[] fileArr, File file) {
        for (File file2 : fileArr) {
            if (contains(file2, file)) {
                return true;
            }
        }
        return false;
    }

    public static boolean contains(File file, File file2) {
        if (file == null || file2 == null) {
            return false;
        }
        return contains(file.getAbsolutePath(), file2.getAbsolutePath());
    }

    public static boolean contains(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        return str2.startsWith(str);
    }

    public static boolean deleteContentsAndDir(File file) {
        if (deleteContents(file)) {
            return file.delete();
        }
        return false;
    }

    public static boolean deleteContents(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return true;
        }
        boolean z = true;
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                z &= deleteContents(file2);
            }
            if (!file2.delete()) {
                Log.w(TAG, "Failed to delete " + file2);
                z = false;
            }
        }
        return z;
    }

    public static boolean isValidExtFilename(String str) {
        return str != null && str.equals(buildValidExtFilename(str));
    }

    public static String buildValidExtFilename(String str) {
        if (TextUtils.isEmpty(str) || ".".equals(str) || "..".equals(str)) {
            return "(invalid)";
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (isValidExtFilenameChar(charAt)) {
                sb.append(charAt);
            } else {
                sb.append('_');
            }
        }
        trimFilename(sb, 255);
        return sb.toString();
    }

    public static boolean isValidFatFilename(String str) {
        return str != null && str.equals(buildValidFatFilename(str));
    }

    public static String buildValidFatFilename(String str) {
        if (TextUtils.isEmpty(str) || ".".equals(str) || "..".equals(str)) {
            return "(invalid)";
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (isValidFatFilenameChar(charAt)) {
                sb.append(charAt);
            } else {
                sb.append('_');
            }
        }
        trimFilename(sb, 255);
        return sb.toString();
    }

    @VisibleForTesting
    public static String trimFilename(String str, int i) {
        StringBuilder sb = new StringBuilder(str);
        trimFilename(sb, i);
        return sb.toString();
    }

    private static void trimFilename(StringBuilder sb, int i) {
        byte[] bytes = sb.toString().getBytes(StandardCharsets.UTF_8);
        if (bytes.length > i) {
            int i2 = i - 3;
            while (bytes.length > i2) {
                sb.deleteCharAt(sb.length() / 2);
                bytes = sb.toString().getBytes(StandardCharsets.UTF_8);
            }
            sb.insert(sb.length() / 2, Session.TRUNCATE_STRING);
        }
    }

    public static String rewriteAfterRename(File file, File file2, String str) {
        File rewriteAfterRename;
        if (str == null || (rewriteAfterRename = rewriteAfterRename(file, file2, new File(str))) == null) {
            return null;
        }
        return rewriteAfterRename.getAbsolutePath();
    }

    public static String[] rewriteAfterRename(File file, File file2, String[] strArr) {
        if (strArr == null) {
            return null;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr2[i] = rewriteAfterRename(file, file2, strArr[i]);
        }
        return strArr2;
    }

    public static File rewriteAfterRename(File file, File file2, File file3) {
        if (file3 == null || file == null || file2 == null || !contains(file, file3)) {
            return null;
        }
        return new File(file2, file3.getAbsolutePath().substring(file.getAbsolutePath().length()));
    }

    private static File buildUniqueFileWithExtension(File file, String str, String str2) throws FileNotFoundException {
        File buildFile = buildFile(file, str, str2);
        int i = 0;
        while (buildFile.exists()) {
            int i2 = i + 1;
            if (i >= 32) {
                throw new FileNotFoundException("Failed to create unique file");
            }
            i = i2;
            buildFile = buildFile(file, str + " (" + i2 + ")", str2);
        }
        return buildFile;
    }

    public static File buildUniqueFile(File file, String str, String str2) throws FileNotFoundException {
        String[] splitFileName = splitFileName(str, str2);
        return buildUniqueFileWithExtension(file, splitFileName[0], splitFileName[1]);
    }

    public static File buildUniqueFile(File file, String str) throws FileNotFoundException {
        String str2;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            String substring = str.substring(0, lastIndexOf);
            str2 = str.substring(lastIndexOf + 1);
            str = substring;
        } else {
            str2 = null;
        }
        return buildUniqueFileWithExtension(file, str, str2);
    }

    public static String[] splitFileName(String str, String str2) {
        String str3;
        String str4;
        String str5 = null;
        if (DocumentsContract.Document.MIME_TYPE_DIR.equals(str)) {
            str4 = null;
        } else {
            int lastIndexOf = str2.lastIndexOf(46);
            if (lastIndexOf >= 0) {
                String substring = str2.substring(0, lastIndexOf);
                str4 = str2.substring(lastIndexOf + 1);
                str3 = substring;
                str5 = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str4.toLowerCase());
            } else {
                str3 = str2;
                str4 = null;
            }
            if (str5 == null) {
                str5 = "application/octet-stream";
            }
            String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
            if (Objects.equals(str, str5) || Objects.equals(str4, extensionFromMimeType)) {
                str2 = str3;
            } else {
                str4 = extensionFromMimeType;
            }
        }
        if (str4 == null) {
            str4 = TextClassifier.TYPE_UNKNOWN;
        }
        return new String[]{str2, str4};
    }

    private static File buildFile(File file, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return new File(file, str);
        }
        return new File(file, str + "." + str2);
    }

    public static String[] listOrEmpty(File file) {
        if (file == null) {
            return EmptyArray.STRING;
        }
        String[] list = file.list();
        return list != null ? list : EmptyArray.STRING;
    }

    public static File[] listFilesOrEmpty(File file) {
        if (file == null) {
            return EMPTY;
        }
        File[] listFiles = file.listFiles();
        return listFiles != null ? listFiles : EMPTY;
    }

    public static File[] listFilesOrEmpty(File file, FilenameFilter filenameFilter) {
        if (file == null) {
            return EMPTY;
        }
        File[] listFiles = file.listFiles(filenameFilter);
        return listFiles != null ? listFiles : EMPTY;
    }

    public static File newFileOrNull(String str) {
        if (str != null) {
            return new File(str);
        }
        return null;
    }

    public static File createDir(File file, String str) {
        File file2 = new File(file, str);
        if (file2.exists()) {
            if (file2.isDirectory()) {
                return file2;
            }
            return null;
        }
        if (file2.mkdir()) {
            return file2;
        }
        return null;
    }

    @VisibleForTesting
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class MemoryPipe extends Thread implements AutoCloseable {
        private final byte[] data;
        private final FileDescriptor[] pipe;
        private final boolean sink;

        private MemoryPipe(byte[] bArr, boolean z) throws IOException {
            try {
                this.pipe = Os.pipe();
                this.data = bArr;
                this.sink = z;
            } catch (ErrnoException e) {
                throw e.rethrowAsIOException();
            }
        }

        private MemoryPipe startInternal() {
            super.start();
            return this;
        }

        public static MemoryPipe createSource(byte[] bArr) throws IOException {
            return new MemoryPipe(bArr, false).startInternal();
        }

        public static MemoryPipe createSink(byte[] bArr) throws IOException {
            return new MemoryPipe(bArr, true).startInternal();
        }

        public FileDescriptor getFD() {
            return this.sink ? this.pipe[1] : this.pipe[0];
        }

        public FileDescriptor getInternalFD() {
            return this.sink ? this.pipe[0] : this.pipe[1];
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x002a, code lost:
        
            if (r6.sink != false) goto L22;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        
            libcore.io.IoUtils.closeQuietly(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0043, code lost:
        
            android.os.SystemClock.sleep(java.util.concurrent.TimeUnit.SECONDS.toMillis(1));
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0041, code lost:
        
            if (r6.sink == false) goto L23;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            FileDescriptor internalFD = getInternalFD();
            int i = 0;
            while (i < this.data.length) {
                try {
                    if (this.sink) {
                        i += Os.read(internalFD, this.data, i, this.data.length - i);
                    } else {
                        i += Os.write(internalFD, this.data, i, this.data.length - i);
                    }
                } catch (ErrnoException | IOException unused) {
                } catch (Throwable th) {
                    if (this.sink) {
                        SystemClock.sleep(TimeUnit.SECONDS.toMillis(1L));
                    }
                    IoUtils.closeQuietly(internalFD);
                    throw th;
                }
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() throws Exception {
            IoUtils.closeQuietly(getFD());
        }
    }
}
