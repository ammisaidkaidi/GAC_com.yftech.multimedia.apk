package android.media;

import android.app.backup.FullBackup;
import android.app.job.JobInfo;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.Hashtable;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class MiniThumbFile {
    public static final int BYTES_PER_MINTHUMB = 10000;
    private static final int HEADER_SIZE = 13;
    private static final int MINI_THUMB_DATA_FILE_VERSION = 4;
    private static final String TAG = "MiniThumbFile";
    private static final Hashtable<String, MiniThumbFile> sThumbFiles = new Hashtable<>();
    private FileChannel mChannel;
    private RandomAccessFile mMiniThumbFile;
    private Uri mUri;
    private ByteBuffer mBuffer = ByteBuffer.allocateDirect(BYTES_PER_MINTHUMB);
    private ByteBuffer mEmptyBuffer = ByteBuffer.allocateDirect(BYTES_PER_MINTHUMB);

    public static synchronized void reset() {
        synchronized (MiniThumbFile.class) {
            Iterator<MiniThumbFile> it = sThumbFiles.values().iterator();
            while (it.hasNext()) {
                it.next().deactivate();
            }
            sThumbFiles.clear();
        }
    }

    public static synchronized MiniThumbFile instance(Uri uri) {
        MiniThumbFile miniThumbFile;
        synchronized (MiniThumbFile.class) {
            String str = uri.getPathSegments().get(1);
            miniThumbFile = sThumbFiles.get(str);
            if (miniThumbFile == null) {
                miniThumbFile = new MiniThumbFile(Uri.parse("content://media/external/" + str + "/media"));
                sThumbFiles.put(str, miniThumbFile);
            }
        }
        return miniThumbFile;
    }

    private String randomAccessFilePath(int i) {
        return (Environment.getExternalStorageDirectory().toString() + "/DCIM/.thumbnails") + "/.thumbdata" + i + "-" + this.mUri.hashCode();
    }

    private void removeOldFile() {
        File file = new File(randomAccessFilePath(3));
        if (file.exists()) {
            try {
                file.delete();
            } catch (SecurityException unused) {
            }
        }
    }

    private RandomAccessFile miniThumbDataFile() {
        if (this.mMiniThumbFile == null) {
            removeOldFile();
            String randomAccessFilePath = randomAccessFilePath(4);
            File parentFile = new File(randomAccessFilePath).getParentFile();
            if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
                Log.e(TAG, "Unable to create .thumbnails directory " + parentFile.toString());
            }
            File file = new File(randomAccessFilePath);
            try {
                try {
                    this.mMiniThumbFile = new RandomAccessFile(file, "rw");
                } catch (IOException unused) {
                }
            } catch (IOException unused2) {
                this.mMiniThumbFile = new RandomAccessFile(file, FullBackup.ROOT_TREE_TOKEN);
            }
            if (this.mMiniThumbFile != null) {
                this.mChannel = this.mMiniThumbFile.getChannel();
            }
        }
        return this.mMiniThumbFile;
    }

    private MiniThumbFile(Uri uri) {
        this.mUri = uri;
    }

    public synchronized void deactivate() {
        if (this.mMiniThumbFile != null) {
            try {
                this.mMiniThumbFile.close();
                this.mMiniThumbFile = null;
            } catch (IOException unused) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0089, code lost:
    
        if (r8 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007d, code lost:
    
        r8.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007b, code lost:
    
        if (r8 == null) goto L50;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized long getMagic(long j) {
        FileLock lock;
        if (miniThumbDataFile() != null) {
            long j2 = JobInfo.MIN_BACKOFF_MILLIS * j;
            FileLock fileLock = null;
            try {
                try {
                    try {
                        this.mBuffer.clear();
                        this.mBuffer.limit(9);
                        lock = this.mChannel.lock(j2, 9L, true);
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (IOException e) {
                    e = e;
                } catch (RuntimeException e2) {
                    e = e2;
                }
                try {
                    if (this.mChannel.read(this.mBuffer, j2) == 9) {
                        this.mBuffer.position(0);
                        if (this.mBuffer.get() == 1) {
                            long j3 = this.mBuffer.getLong();
                            if (lock != null) {
                                try {
                                    lock.release();
                                } catch (IOException unused) {
                                }
                            }
                            return j3;
                        }
                    }
                    if (lock != null) {
                        lock.release();
                    }
                } catch (IOException e3) {
                    e = e3;
                    fileLock = lock;
                    Log.v(TAG, "Got exception checking file magic: ", e);
                } catch (RuntimeException e4) {
                    e = e4;
                    fileLock = lock;
                    Log.e(TAG, "Got exception when reading magic, id = " + j + ", disk full or mount read-only? " + e.getClass());
                } catch (Throwable th2) {
                    th = th2;
                    fileLock = lock;
                    if (fileLock != null) {
                        try {
                            fileLock.release();
                        } catch (IOException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused3) {
            }
        }
        return 0L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ad, code lost:
    
        if (r8 == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00a1, code lost:
    
        r8.release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x009f, code lost:
    
        if (r8 == null) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void eraseMiniThumb(long j) {
        FileLock lock;
        if (miniThumbDataFile() != null) {
            long j2 = JobInfo.MIN_BACKOFF_MILLIS * j;
            FileLock fileLock = null;
            try {
                try {
                    try {
                        this.mBuffer.clear();
                        this.mBuffer.limit(9);
                        lock = this.mChannel.lock(j2, JobInfo.MIN_BACKOFF_MILLIS, false);
                    } catch (IOException unused) {
                    }
                } catch (IOException e) {
                    e = e;
                } catch (RuntimeException e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                if (this.mChannel.read(this.mBuffer, j2) == 9) {
                    this.mBuffer.position(0);
                    if (this.mBuffer.get() == 1) {
                        if (this.mBuffer.getLong() == 0) {
                            Log.i(TAG, "no thumbnail for id " + j);
                            if (lock != null) {
                                try {
                                    lock.release();
                                } catch (IOException unused2) {
                                }
                            }
                            return;
                        }
                        this.mChannel.write(this.mEmptyBuffer, j2);
                    }
                }
                if (lock != null) {
                    lock.release();
                }
            } catch (IOException e3) {
                e = e3;
                fileLock = lock;
                Log.v(TAG, "Got exception checking file magic: ", e);
            } catch (RuntimeException e4) {
                e = e4;
                fileLock = lock;
                Log.e(TAG, "Got exception when reading magic, id = " + j + ", disk full or mount read-only? " + e.getClass());
            } catch (Throwable th2) {
                th = th2;
                fileLock = lock;
                if (fileLock != null) {
                    try {
                        fileLock.release();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        }
    }

    public synchronized void saveMiniThumbToFile(byte[] bArr, long j, long j2) throws IOException {
        FileLock lock;
        if (miniThumbDataFile() == null) {
            return;
        }
        long j3 = JobInfo.MIN_BACKOFF_MILLIS * j;
        FileLock fileLock = null;
        try {
            try {
                if (bArr != null) {
                    try {
                        if (bArr.length > 9987) {
                            return;
                        }
                        this.mBuffer.clear();
                        this.mBuffer.put((byte) 1);
                        this.mBuffer.putLong(j2);
                        this.mBuffer.putInt(bArr.length);
                        this.mBuffer.put(bArr);
                        this.mBuffer.flip();
                        lock = this.mChannel.lock(j3, JobInfo.MIN_BACKOFF_MILLIS, false);
                        try {
                            this.mChannel.write(this.mBuffer, j3);
                        } catch (IOException e) {
                            e = e;
                            Log.e(TAG, "couldn't save mini thumbnail data for " + j + "; ", e);
                            throw e;
                        } catch (RuntimeException e2) {
                            e = e2;
                            fileLock = lock;
                            Log.e(TAG, "couldn't save mini thumbnail data for " + j + "; disk full or mount read-only? " + e.getClass());
                            if (fileLock != null) {
                                fileLock.release();
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileLock = lock;
                            if (fileLock != null) {
                                try {
                                    fileLock.release();
                                } catch (IOException unused) {
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e3) {
                        e = e3;
                    } catch (RuntimeException e4) {
                        e = e4;
                    }
                } else {
                    lock = null;
                }
                if (lock != null) {
                    lock.release();
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x005e, code lost:
    
        if (r0 != null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b2, code lost:
    
        if (r0 == null) goto L45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized byte[] getMiniThumbFromFile(long j, byte[] bArr) {
        FileLock fileLock;
        FileLock miniThumbDataFile = miniThumbDataFile();
        if (miniThumbDataFile == 0) {
            return null;
        }
        long j2 = JobInfo.MIN_BACKOFF_MILLIS * j;
        try {
            try {
                this.mBuffer.clear();
                fileLock = this.mChannel.lock(j2, JobInfo.MIN_BACKOFF_MILLIS, true);
                try {
                    int read = this.mChannel.read(this.mBuffer, j2);
                    if (read > 13) {
                        this.mBuffer.position(0);
                        byte b = this.mBuffer.get();
                        long j3 = this.mBuffer.getLong();
                        int i = this.mBuffer.getInt();
                        if (read >= i + 13 && i != 0 && j3 != 0 && b == 1 && bArr.length >= i) {
                            this.mBuffer.get(bArr, 0, i);
                            if (fileLock != null) {
                                try {
                                    fileLock.release();
                                } catch (IOException unused) {
                                }
                            }
                            return bArr;
                        }
                    }
                } catch (IOException e) {
                    e = e;
                    Log.w(TAG, "got exception when reading thumbnail id=" + j + ", exception: " + e);
                } catch (RuntimeException e2) {
                    e = e2;
                    Log.e(TAG, "Got exception when reading thumbnail, id = " + j + ", disk full or mount read-only? " + e.getClass());
                    if (fileLock != null) {
                        try {
                            fileLock.release();
                        } catch (IOException unused2) {
                            return null;
                        }
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (miniThumbDataFile != 0) {
                    try {
                        miniThumbDataFile.release();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            fileLock = null;
        } catch (RuntimeException e4) {
            e = e4;
            fileLock = null;
        } catch (Throwable th2) {
            th = th2;
            miniThumbDataFile = 0;
            if (miniThumbDataFile != 0) {
            }
            throw th;
        }
    }
}
