package android.util.apk;

import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.DirectByteBuffer;
import java.security.DigestException;

/* loaded from: /home/user/work/dex/classes2.dex */
class MemoryMappedFileDataSource implements DataSource {
    private static final long MEMORY_PAGE_SIZE_BYTES = Os.sysconf(OsConstants._SC_PAGESIZE);
    private final FileDescriptor mFd;
    private final long mFilePosition;
    private final long mSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MemoryMappedFileDataSource(FileDescriptor fileDescriptor, long j, long j2) {
        this.mFd = fileDescriptor;
        this.mFilePosition = j;
        this.mSize = j2;
    }

    @Override // android.util.apk.DataSource
    public long size() {
        return this.mSize;
    }

    @Override // android.util.apk.DataSource
    public void feedIntoDataDigester(DataDigester dataDigester, long j, int i) throws IOException, DigestException {
        long j2;
        long j3;
        long j4;
        long j5 = this.mFilePosition + j;
        long j6 = (j5 / MEMORY_PAGE_SIZE_BYTES) * MEMORY_PAGE_SIZE_BYTES;
        int i2 = (int) (j5 - j6);
        long j7 = i + i2;
        try {
            try {
                j3 = Os.mmap(0L, j7, OsConstants.PROT_READ, OsConstants.MAP_SHARED | OsConstants.MAP_POPULATE, this.mFd, j6);
            } catch (Throwable th) {
                th = th;
            }
        } catch (ErrnoException e) {
            e = e;
            j4 = j7;
        } catch (Throwable th2) {
            th = th2;
            j2 = j7;
            j3 = 0;
        }
        try {
            j4 = j7;
            try {
                dataDigester.consume(new DirectByteBuffer(i, j3 + i2, this.mFd, (Runnable) null, true));
                if (j3 != 0) {
                    try {
                        Os.munmap(j3, j4);
                    } catch (ErrnoException unused) {
                    }
                }
            } catch (ErrnoException e2) {
                e = e2;
                throw new IOException("Failed to mmap " + j4 + " bytes", e);
            }
        } catch (ErrnoException e3) {
            e = e3;
            j4 = j7;
        } catch (Throwable th3) {
            th = th3;
            j2 = j7;
            if (j3 != 0) {
                try {
                    Os.munmap(j3, j2);
                } catch (ErrnoException unused2) {
                }
            }
            throw th;
        }
    }
}
