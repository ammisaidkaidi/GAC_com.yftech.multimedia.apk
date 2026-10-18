package com.android.internal.os;

import android.util.Slog;
import android.util.SparseArray;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.os.KernelUidCpuTimeReaderBase;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import java.util.function.Consumer;

/* loaded from: /home/user/work/dex/classes3.dex */
public class KernelUidCpuActiveTimeReader extends KernelUidCpuTimeReaderBase<Callback> {
    private static final String TAG = "KernelUidCpuActiveTimeReader";
    private int mCores;
    private SparseArray<Double> mLastUidCpuActiveTimeMs;
    private final KernelCpuProcReader mProcReader;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Callback extends KernelUidCpuTimeReaderBase.Callback {
        void onUidCpuActiveTime(int i, long j);
    }

    public KernelUidCpuActiveTimeReader() {
        this.mLastUidCpuActiveTimeMs = new SparseArray<>();
        this.mProcReader = KernelCpuProcReader.getActiveTimeReaderInstance();
    }

    @VisibleForTesting
    public KernelUidCpuActiveTimeReader(KernelCpuProcReader kernelCpuProcReader) {
        this.mLastUidCpuActiveTimeMs = new SparseArray<>();
        this.mProcReader = kernelCpuProcReader;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.internal.os.KernelUidCpuTimeReaderBase
    public void readDeltaImpl(final Callback callback) {
        readImpl(new Consumer() { // from class: com.android.internal.os.-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                KernelUidCpuActiveTimeReader.lambda$readDeltaImpl$0(KernelUidCpuActiveTimeReader.this, callback, (IntBuffer) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$readDeltaImpl$0(KernelUidCpuActiveTimeReader kernelUidCpuActiveTimeReader, Callback callback, IntBuffer intBuffer) {
        int i = intBuffer.get();
        double sumActiveTime = kernelUidCpuActiveTimeReader.sumActiveTime(intBuffer);
        if (sumActiveTime > 0.0d) {
            double doubleValue = sumActiveTime - kernelUidCpuActiveTimeReader.mLastUidCpuActiveTimeMs.get(i, Double.valueOf(0.0d)).doubleValue();
            if (doubleValue > 0.0d) {
                kernelUidCpuActiveTimeReader.mLastUidCpuActiveTimeMs.put(i, Double.valueOf(sumActiveTime));
                if (callback != null) {
                    callback.onUidCpuActiveTime(i, (long) doubleValue);
                    return;
                }
                return;
            }
            if (doubleValue < 0.0d) {
                Slog.e(TAG, "Negative delta from active time proc: " + doubleValue);
            }
        }
    }

    public void readAbsolute(final Callback callback) {
        readImpl(new Consumer() { // from class: com.android.internal.os.-$$Lambda$KernelUidCpuActiveTimeReader$uXm3GBhF7PBpo0hLrva14EQYjPA
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                KernelUidCpuActiveTimeReader.lambda$readAbsolute$1(KernelUidCpuActiveTimeReader.this, callback, (IntBuffer) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$readAbsolute$1(KernelUidCpuActiveTimeReader kernelUidCpuActiveTimeReader, Callback callback, IntBuffer intBuffer) {
        int i = intBuffer.get();
        double sumActiveTime = kernelUidCpuActiveTimeReader.sumActiveTime(intBuffer);
        if (sumActiveTime > 0.0d) {
            callback.onUidCpuActiveTime(i, (long) sumActiveTime);
        }
    }

    private double sumActiveTime(IntBuffer intBuffer) {
        boolean z = false;
        double d = 0.0d;
        for (int i = 1; i <= this.mCores; i++) {
            int i2 = intBuffer.get();
            if (i2 < 0) {
                Slog.e(TAG, "Negative time from active time proc: " + i2);
                z = true;
            } else {
                d += (i2 * 10.0d) / i;
            }
        }
        if (z) {
            return -1.0d;
        }
        return d;
    }

    private void readImpl(Consumer<IntBuffer> consumer) {
        synchronized (this.mProcReader) {
            ByteBuffer readBytes = this.mProcReader.readBytes();
            if (readBytes != null && readBytes.remaining() > 4) {
                if ((readBytes.remaining() & 3) != 0) {
                    Slog.wtf(TAG, "Cannot parse active time proc bytes to int: " + readBytes.remaining());
                    return;
                }
                IntBuffer asIntBuffer = readBytes.asIntBuffer();
                int i = asIntBuffer.get();
                if (this.mCores != 0 && i != this.mCores) {
                    Slog.wtf(TAG, "Cpu active time wrong # cores: " + i);
                    return;
                }
                this.mCores = i;
                if (i > 0) {
                    int i2 = i + 1;
                    if (asIntBuffer.remaining() % i2 == 0) {
                        int remaining = asIntBuffer.remaining() / i2;
                        for (int i3 = 0; i3 < remaining; i3++) {
                            consumer.accept(asIntBuffer);
                        }
                        return;
                    }
                }
                Slog.wtf(TAG, "Cpu active time format error: " + asIntBuffer.remaining() + " / " + (i + 1));
            }
        }
    }

    public void removeUid(int i) {
        this.mLastUidCpuActiveTimeMs.delete(i);
    }

    public void removeUidsInRange(int i, int i2) {
        this.mLastUidCpuActiveTimeMs.put(i, null);
        this.mLastUidCpuActiveTimeMs.put(i2, null);
        int indexOfKey = this.mLastUidCpuActiveTimeMs.indexOfKey(i);
        this.mLastUidCpuActiveTimeMs.removeAtRange(indexOfKey, (this.mLastUidCpuActiveTimeMs.indexOfKey(i2) - indexOfKey) + 1);
    }
}
