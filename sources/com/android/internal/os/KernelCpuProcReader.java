package com.android.internal.os;

import android.os.StrictMode;
import android.os.SystemClock;
import android.util.Slog;
import com.android.internal.annotations.VisibleForTesting;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

/* loaded from: /home/user/work/dex/classes3.dex */
public class KernelCpuProcReader {
    private static final long DEFAULT_THROTTLE_INTERVAL = 3000;
    private static final int ERROR_THRESHOLD = 5;
    private static final int INITIAL_BUFFER_SIZE = 8192;
    private static final int MAX_BUFFER_SIZE = 1048576;
    private static final String TAG = "KernelCpuProcReader";
    private int mErrors;
    private final Path mProc;
    private static final String PROC_UID_FREQ_TIME = "/proc/uid_cpupower/time_in_state";
    private static final KernelCpuProcReader mFreqTimeReader = new KernelCpuProcReader(PROC_UID_FREQ_TIME);
    private static final String PROC_UID_ACTIVE_TIME = "/proc/uid_cpupower/concurrent_active_time";
    private static final KernelCpuProcReader mActiveTimeReader = new KernelCpuProcReader(PROC_UID_ACTIVE_TIME);
    private static final String PROC_UID_CLUSTER_TIME = "/proc/uid_cpupower/concurrent_policy_time";
    private static final KernelCpuProcReader mClusterTimeReader = new KernelCpuProcReader(PROC_UID_CLUSTER_TIME);
    private long mThrottleInterval = DEFAULT_THROTTLE_INTERVAL;
    private long mLastReadTime = Long.MIN_VALUE;
    private ByteBuffer mBuffer = ByteBuffer.allocateDirect(8192);

    public static KernelCpuProcReader getFreqTimeReaderInstance() {
        return mFreqTimeReader;
    }

    public static KernelCpuProcReader getActiveTimeReaderInstance() {
        return mActiveTimeReader;
    }

    public static KernelCpuProcReader getClusterTimeReaderInstance() {
        return mClusterTimeReader;
    }

    @VisibleForTesting
    public KernelCpuProcReader(String str) {
        this.mProc = Paths.get(str, new String[0]);
        this.mBuffer.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[Catch: all -> 0x00cd, IOException -> 0x00cf, FileNotFoundException | NoSuchFileException -> 0x00f1, FileNotFoundException | NoSuchFileException -> 0x00f1, Merged into TryCatch #6 {all -> 0x00cd, FileNotFoundException | NoSuchFileException -> 0x00f1, IOException -> 0x00cf, blocks: (B:17:0x004a, B:28:0x008a, B:34:0x0099, B:44:0x00c0, B:41:0x00c9, B:48:0x00c5, B:42:0x00cc, B:61:0x00d0, B:57:0x00f1), top: B:15:0x004a }, SYNTHETIC, TRY_LEAVE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ByteBuffer readBytes() {
        Throwable th;
        Throwable th2;
        if (this.mErrors >= 5) {
            return null;
        }
        if (SystemClock.elapsedRealtime() < this.mLastReadTime + this.mThrottleInterval) {
            if (this.mBuffer.limit() <= 0 || this.mBuffer.limit() >= this.mBuffer.capacity()) {
                return null;
            }
            return this.mBuffer.asReadOnlyBuffer().order(ByteOrder.nativeOrder());
        }
        this.mLastReadTime = SystemClock.elapsedRealtime();
        this.mBuffer.clear();
        int allowThreadDiskReadsMask = StrictMode.allowThreadDiskReadsMask();
        try {
            FileChannel open = FileChannel.open(this.mProc, StandardOpenOption.READ);
            while (open.read(this.mBuffer) == this.mBuffer.capacity()) {
                try {
                    if (!resize()) {
                        this.mErrors++;
                        Slog.e(TAG, "Proc file is too large: " + this.mProc);
                        if (open != null) {
                            open.close();
                        }
                        return null;
                    }
                    open.position(0L);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        th = th3;
                        th2 = th4;
                        if (open != null) {
                            throw th2;
                        }
                        if (th == null) {
                            open.close();
                            throw th2;
                        }
                        try {
                            open.close();
                            throw th2;
                        } catch (Throwable th5) {
                            th.addSuppressed(th5);
                            throw th2;
                        }
                    }
                }
            }
            if (open != null) {
                open.close();
            }
            StrictMode.setThreadPolicyMask(allowThreadDiskReadsMask);
            this.mBuffer.flip();
            return this.mBuffer.asReadOnlyBuffer().order(ByteOrder.nativeOrder());
        } catch (FileNotFoundException | NoSuchFileException unused) {
            this.mErrors++;
            Slog.w(TAG, "File not exist: " + this.mProc);
            return null;
        } catch (IOException e) {
            this.mErrors++;
            Slog.e(TAG, "Error reading: " + this.mProc, e);
            return null;
        } finally {
            StrictMode.setThreadPolicyMask(allowThreadDiskReadsMask);
        }
    }

    public void setThrottleInterval(long j) {
        if (j >= 0) {
            this.mThrottleInterval = j;
        }
    }

    private boolean resize() {
        if (this.mBuffer.capacity() >= 1048576) {
            return false;
        }
        this.mBuffer = ByteBuffer.allocateDirect(Math.min(this.mBuffer.capacity() << 1, 1048576));
        return true;
    }
}
