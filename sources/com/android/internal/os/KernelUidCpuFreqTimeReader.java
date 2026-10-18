package com.android.internal.os;

import android.os.StrictMode;
import android.util.IntArray;
import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.os.KernelUidCpuTimeReaderBase;
import com.android.internal.util.Preconditions;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.util.function.Consumer;

/* loaded from: /home/user/work/dex/classes3.dex */
public class KernelUidCpuFreqTimeReader extends KernelUidCpuTimeReaderBase<Callback> {
    private static final String TAG = "KernelUidCpuFreqTimeReader";
    private static final int TOTAL_READ_ERROR_COUNT = 5;
    static final String UID_TIMES_PROC_FILE = "/proc/uid_time_in_state";
    private boolean mAllUidTimesAvailable;
    private long[] mCpuFreqs;
    private int mCpuFreqsCount;
    private long[] mCurTimes;
    private long[] mDeltaTimes;
    private SparseArray<long[]> mLastUidCpuFreqTimeMs;
    private boolean mPerClusterTimesAvailable;
    private final KernelCpuProcReader mProcReader;
    private int mReadErrorCounter;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Callback extends KernelUidCpuTimeReaderBase.Callback {
        void onUidCpuFreqTime(int i, long[] jArr);
    }

    public KernelUidCpuFreqTimeReader() {
        this.mLastUidCpuFreqTimeMs = new SparseArray<>();
        this.mAllUidTimesAvailable = true;
        this.mProcReader = KernelCpuProcReader.getFreqTimeReaderInstance();
    }

    @VisibleForTesting
    public KernelUidCpuFreqTimeReader(KernelCpuProcReader kernelCpuProcReader) {
        this.mLastUidCpuFreqTimeMs = new SparseArray<>();
        this.mAllUidTimesAvailable = true;
        this.mProcReader = kernelCpuProcReader;
    }

    public boolean perClusterTimesAvailable() {
        return this.mPerClusterTimesAvailable;
    }

    public boolean allUidTimesAvailable() {
        return this.mAllUidTimesAvailable;
    }

    public SparseArray<long[]> getAllUidCpuFreqTimeMs() {
        return this.mLastUidCpuFreqTimeMs;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x003f A[Catch: all -> 0x0043, IOException -> 0x0045, Merged into TryCatch #2 {all -> 0x0043, IOException -> 0x0045, blocks: (B:11:0x0014, B:14:0x0024, B:28:0x0036, B:26:0x0042, B:25:0x003f, B:32:0x003b, B:40:0x0046, B:42:0x004f, B:43:0x0052), top: B:10:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long[] readFreqs(PowerProfile powerProfile) {
        Throwable th;
        Preconditions.checkNotNull(powerProfile);
        if (this.mCpuFreqs != null) {
            return this.mCpuFreqs;
        }
        if (!this.mAllUidTimesAvailable) {
            return null;
        }
        int allowThreadDiskReadsMask = StrictMode.allowThreadDiskReadsMask();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(UID_TIMES_PROC_FILE));
            try {
                long[] readFreqs = readFreqs(bufferedReader, powerProfile);
                bufferedReader.close();
                return readFreqs;
            } catch (Throwable th2) {
                th = th2;
                th = null;
                if (th != null) {
                }
            }
        } catch (IOException e) {
            int i = this.mReadErrorCounter + 1;
            this.mReadErrorCounter = i;
            if (i >= 5) {
                this.mAllUidTimesAvailable = false;
            }
            Slog.e(TAG, "Failed to read /proc/uid_time_in_state: " + e);
            return null;
        } finally {
            StrictMode.setThreadPolicyMask(allowThreadDiskReadsMask);
        }
    }

    @VisibleForTesting
    public long[] readFreqs(BufferedReader bufferedReader, PowerProfile powerProfile) throws IOException {
        String readLine = bufferedReader.readLine();
        if (readLine == null) {
            return null;
        }
        String[] split = readLine.split(" ");
        this.mCpuFreqsCount = split.length - 1;
        this.mCpuFreqs = new long[this.mCpuFreqsCount];
        this.mCurTimes = new long[this.mCpuFreqsCount];
        this.mDeltaTimes = new long[this.mCpuFreqsCount];
        int i = 0;
        while (i < this.mCpuFreqsCount) {
            int i2 = i + 1;
            this.mCpuFreqs[i] = Long.parseLong(split[i2], 10);
            i = i2;
        }
        IntArray extractClusterInfoFromProcFileFreqs = extractClusterInfoFromProcFileFreqs();
        int numCpuClusters = powerProfile.getNumCpuClusters();
        if (extractClusterInfoFromProcFileFreqs.size() == numCpuClusters) {
            this.mPerClusterTimesAvailable = true;
            int i3 = 0;
            while (true) {
                if (i3 >= numCpuClusters) {
                    break;
                }
                if (extractClusterInfoFromProcFileFreqs.get(i3) != powerProfile.getNumSpeedStepsInCpuCluster(i3)) {
                    this.mPerClusterTimesAvailable = false;
                    break;
                }
                i3++;
            }
        } else {
            this.mPerClusterTimesAvailable = false;
        }
        Slog.i(TAG, "mPerClusterTimesAvailable=" + this.mPerClusterTimesAvailable);
        return this.mCpuFreqs;
    }

    @Override // com.android.internal.os.KernelUidCpuTimeReaderBase
    @VisibleForTesting
    public void readDeltaImpl(final Callback callback) {
        if (this.mCpuFreqs == null) {
            return;
        }
        readImpl(new Consumer() { // from class: com.android.internal.os.-$$Lambda$KernelUidCpuFreqTimeReader$_LfRKir9FA4B4VL15YGHagRZaR8
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                KernelUidCpuFreqTimeReader.lambda$readDeltaImpl$0(KernelUidCpuFreqTimeReader.this, callback, (IntBuffer) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$readDeltaImpl$0(KernelUidCpuFreqTimeReader kernelUidCpuFreqTimeReader, Callback callback, IntBuffer intBuffer) {
        int i = intBuffer.get();
        long[] jArr = kernelUidCpuFreqTimeReader.mLastUidCpuFreqTimeMs.get(i);
        if (jArr == null) {
            jArr = new long[kernelUidCpuFreqTimeReader.mCpuFreqsCount];
            kernelUidCpuFreqTimeReader.mLastUidCpuFreqTimeMs.put(i, jArr);
        }
        if (kernelUidCpuFreqTimeReader.getFreqTimeForUid(intBuffer, kernelUidCpuFreqTimeReader.mCurTimes)) {
            boolean z = true;
            boolean z2 = false;
            for (int i2 = 0; i2 < kernelUidCpuFreqTimeReader.mCpuFreqsCount; i2++) {
                kernelUidCpuFreqTimeReader.mDeltaTimes[i2] = kernelUidCpuFreqTimeReader.mCurTimes[i2] - jArr[i2];
                if (kernelUidCpuFreqTimeReader.mDeltaTimes[i2] < 0) {
                    Slog.e(TAG, "Negative delta from freq time proc: " + kernelUidCpuFreqTimeReader.mDeltaTimes[i2]);
                    z = false;
                }
                z2 |= kernelUidCpuFreqTimeReader.mDeltaTimes[i2] > 0;
            }
            if (z2 && z) {
                System.arraycopy(kernelUidCpuFreqTimeReader.mCurTimes, 0, jArr, 0, kernelUidCpuFreqTimeReader.mCpuFreqsCount);
                if (callback != null) {
                    callback.onUidCpuFreqTime(i, kernelUidCpuFreqTimeReader.mDeltaTimes);
                }
            }
        }
    }

    public void readAbsolute(final Callback callback) {
        readImpl(new Consumer() { // from class: com.android.internal.os.-$$Lambda$KernelUidCpuFreqTimeReader$s7iJKg0yjXXtqM4hsU8GS_gavIY
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                KernelUidCpuFreqTimeReader.lambda$readAbsolute$1(KernelUidCpuFreqTimeReader.this, callback, (IntBuffer) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$readAbsolute$1(KernelUidCpuFreqTimeReader kernelUidCpuFreqTimeReader, Callback callback, IntBuffer intBuffer) {
        int i = intBuffer.get();
        if (kernelUidCpuFreqTimeReader.getFreqTimeForUid(intBuffer, kernelUidCpuFreqTimeReader.mCurTimes)) {
            callback.onUidCpuFreqTime(i, kernelUidCpuFreqTimeReader.mCurTimes);
        }
    }

    private boolean getFreqTimeForUid(IntBuffer intBuffer, long[] jArr) {
        boolean z = true;
        for (int i = 0; i < this.mCpuFreqsCount; i++) {
            jArr[i] = intBuffer.get() * 10;
            if (jArr[i] < 0) {
                Slog.e(TAG, "Negative time from freq time proc: " + jArr[i]);
                z = false;
            }
        }
        return z;
    }

    private void readImpl(Consumer<IntBuffer> consumer) {
        synchronized (this.mProcReader) {
            ByteBuffer readBytes = this.mProcReader.readBytes();
            if (readBytes != null && readBytes.remaining() > 4) {
                if ((readBytes.remaining() & 3) != 0) {
                    Slog.wtf(TAG, "Cannot parse freq time proc bytes to int: " + readBytes.remaining());
                    return;
                }
                IntBuffer asIntBuffer = readBytes.asIntBuffer();
                int i = asIntBuffer.get();
                if (i != this.mCpuFreqsCount) {
                    Slog.wtf(TAG, "Cpu freqs expect " + this.mCpuFreqsCount + " , got " + i);
                    return;
                }
                int i2 = i + 1;
                if (asIntBuffer.remaining() % i2 != 0) {
                    Slog.wtf(TAG, "Freq time format error: " + asIntBuffer.remaining() + " / " + i2);
                    return;
                }
                int remaining = asIntBuffer.remaining() / i2;
                for (int i3 = 0; i3 < remaining; i3++) {
                    consumer.accept(asIntBuffer);
                }
            }
        }
    }

    public void removeUid(int i) {
        this.mLastUidCpuFreqTimeMs.delete(i);
    }

    public void removeUidsInRange(int i, int i2) {
        this.mLastUidCpuFreqTimeMs.put(i, null);
        this.mLastUidCpuFreqTimeMs.put(i2, null);
        int indexOfKey = this.mLastUidCpuFreqTimeMs.indexOfKey(i);
        this.mLastUidCpuFreqTimeMs.removeAtRange(indexOfKey, (this.mLastUidCpuFreqTimeMs.indexOfKey(i2) - indexOfKey) + 1);
    }

    private IntArray extractClusterInfoFromProcFileFreqs() {
        IntArray intArray = new IntArray();
        int i = 0;
        int i2 = 0;
        while (i < this.mCpuFreqsCount) {
            i2++;
            int i3 = i + 1;
            if (i3 == this.mCpuFreqsCount || this.mCpuFreqs[i3] <= this.mCpuFreqs[i]) {
                intArray.add(i2);
                i2 = 0;
            }
            i = i3;
        }
        return intArray;
    }
}
