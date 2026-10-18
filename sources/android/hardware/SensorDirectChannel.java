package android.hardware;

import android.os.MemoryFile;
import dalvik.system.CloseGuard;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.channels.Channel;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: /home/user/work/dex/classes.dex */
public final class SensorDirectChannel implements Channel {
    public static final int RATE_FAST = 2;
    public static final int RATE_NORMAL = 1;
    public static final int RATE_STOP = 0;
    public static final int RATE_VERY_FAST = 3;
    public static final int TYPE_HARDWARE_BUFFER = 2;
    public static final int TYPE_MEMORY_FILE = 1;
    private final SensorManager mManager;
    private final int mNativeHandle;
    private final long mSize;
    private final int mType;
    private final AtomicBoolean mClosed = new AtomicBoolean();
    private final CloseGuard mCloseGuard = CloseGuard.get();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface MemoryType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface RateLevel {
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.mClosed.get();
    }

    @Deprecated
    public boolean isValid() {
        return isOpen();
    }

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.mClosed.compareAndSet(false, true)) {
            this.mCloseGuard.close();
            this.mManager.destroyDirectChannel(this);
        }
    }

    public int configure(Sensor sensor, int i) {
        return this.mManager.configureDirectChannelImpl(this, sensor, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SensorDirectChannel(SensorManager sensorManager, int i, int i2, long j) {
        this.mManager = sensorManager;
        this.mNativeHandle = i;
        this.mType = i2;
        this.mSize = j;
        this.mCloseGuard.open("SensorDirectChannel");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNativeHandle() {
        return this.mNativeHandle;
    }

    static long[] encodeData(MemoryFile memoryFile) {
        int i;
        try {
            i = memoryFile.getFileDescriptor().getInt$();
        } catch (IOException unused) {
            i = -1;
        }
        return new long[]{1, 0, i};
    }

    protected void finalize() throws Throwable {
        try {
            if (this.mCloseGuard != null) {
                this.mCloseGuard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }
}
