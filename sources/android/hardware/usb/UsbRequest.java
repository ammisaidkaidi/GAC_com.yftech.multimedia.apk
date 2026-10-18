package android.hardware.usb;

import android.util.Log;
import com.android.internal.util.Preconditions;
import dalvik.system.CloseGuard;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;

/* loaded from: /home/user/work/dex/classes.dex */
public class UsbRequest {
    static final int MAX_USBFS_BUFFER_SIZE = 16384;
    private static final String TAG = "UsbRequest";
    private ByteBuffer mBuffer;
    private Object mClientData;
    private UsbDeviceConnection mConnection;
    private UsbEndpoint mEndpoint;
    private boolean mIsUsingNewQueue;
    private int mLength;
    private long mNativeContext;
    private ByteBuffer mTempBuffer;
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private final Object mLock = new Object();

    private native boolean native_cancel();

    private native void native_close();

    private native int native_dequeue_array(byte[] bArr, int i, boolean z);

    private native int native_dequeue_direct();

    private native boolean native_init(UsbDeviceConnection usbDeviceConnection, int i, int i2, int i3, int i4);

    private native boolean native_queue(ByteBuffer byteBuffer, int i, int i2);

    private native boolean native_queue_array(byte[] bArr, int i, boolean z);

    private native boolean native_queue_direct(ByteBuffer byteBuffer, int i, boolean z);

    public boolean initialize(UsbDeviceConnection usbDeviceConnection, UsbEndpoint usbEndpoint) {
        this.mEndpoint = usbEndpoint;
        this.mConnection = (UsbDeviceConnection) Preconditions.checkNotNull(usbDeviceConnection, "connection");
        boolean native_init = native_init(usbDeviceConnection, usbEndpoint.getAddress(), usbEndpoint.getAttributes(), usbEndpoint.getMaxPacketSize(), usbEndpoint.getInterval());
        if (native_init) {
            this.mCloseGuard.open("close");
        }
        return native_init;
    }

    public void close() {
        if (this.mNativeContext != 0) {
            this.mEndpoint = null;
            this.mConnection = null;
            native_close();
            this.mCloseGuard.close();
        }
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

    public UsbEndpoint getEndpoint() {
        return this.mEndpoint;
    }

    public Object getClientData() {
        return this.mClientData;
    }

    public void setClientData(Object obj) {
        this.mClientData = obj;
    }

    @Deprecated
    public boolean queue(ByteBuffer byteBuffer, int i) {
        boolean native_queue_array;
        boolean z = this.mEndpoint.getDirection() == 0;
        if (this.mConnection.getContext().getApplicationInfo().targetSdkVersion < 28 && i > 16384) {
            i = 16384;
        }
        synchronized (this.mLock) {
            this.mBuffer = byteBuffer;
            this.mLength = i;
            if (byteBuffer.isDirect()) {
                native_queue_array = native_queue_direct(byteBuffer, i, z);
            } else if (byteBuffer.hasArray()) {
                native_queue_array = native_queue_array(byteBuffer.array(), i, z);
            } else {
                throw new IllegalArgumentException("buffer is not direct and has no array");
            }
            if (!native_queue_array) {
                this.mBuffer = null;
                this.mLength = 0;
            }
        }
        return native_queue_array;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0069 A[Catch: all -> 0x00a7, TryCatch #0 {, blocks: (B:10:0x002a, B:12:0x002f, B:13:0x009d, B:19:0x0036, B:21:0x0046, B:22:0x0052, B:27:0x005e, B:29:0x0069, B:31:0x0077, B:32:0x008d, B:33:0x008f), top: B:9:0x002a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean queue(ByteBuffer byteBuffer) {
        boolean z;
        boolean native_queue;
        Preconditions.checkState(this.mNativeContext != 0, "request is not initialized");
        Preconditions.checkState(!this.mIsUsingNewQueue, "this request is currently queued");
        boolean z2 = this.mEndpoint.getDirection() == 0;
        synchronized (this.mLock) {
            this.mBuffer = byteBuffer;
            if (byteBuffer == null) {
                this.mIsUsingNewQueue = true;
                native_queue = native_queue(null, 0, 0);
            } else {
                if (this.mConnection.getContext().getApplicationInfo().targetSdkVersion < 28) {
                    Preconditions.checkArgumentInRange(byteBuffer.remaining(), 0, 16384, "number of remaining bytes");
                }
                if (byteBuffer.isReadOnly() && !z2) {
                    z = false;
                    Preconditions.checkArgument(z, "buffer can not be read-only when receiving data");
                    if (!byteBuffer.isDirect()) {
                        this.mTempBuffer = ByteBuffer.allocateDirect(this.mBuffer.remaining());
                        if (z2) {
                            this.mBuffer.mark();
                            this.mTempBuffer.put(this.mBuffer);
                            this.mTempBuffer.flip();
                            this.mBuffer.reset();
                        }
                        byteBuffer = this.mTempBuffer;
                    }
                    this.mIsUsingNewQueue = true;
                    native_queue = native_queue(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
                }
                z = true;
                Preconditions.checkArgument(z, "buffer can not be read-only when receiving data");
                if (!byteBuffer.isDirect()) {
                }
                this.mIsUsingNewQueue = true;
                native_queue = native_queue(byteBuffer, byteBuffer.position(), byteBuffer.remaining());
            }
        }
        if (!native_queue) {
            this.mIsUsingNewQueue = false;
            this.mTempBuffer = null;
            this.mBuffer = null;
        }
        return native_queue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dequeue(boolean z) {
        int native_dequeue_array;
        boolean z2 = this.mEndpoint.getDirection() == 0;
        synchronized (this.mLock) {
            if (this.mIsUsingNewQueue) {
                int native_dequeue_direct = native_dequeue_direct();
                this.mIsUsingNewQueue = false;
                if (this.mBuffer != null) {
                    if (this.mTempBuffer == null) {
                        this.mBuffer.position(this.mBuffer.position() + native_dequeue_direct);
                    } else {
                        this.mTempBuffer.limit(native_dequeue_direct);
                        try {
                            if (z2) {
                                this.mBuffer.position(this.mBuffer.position() + native_dequeue_direct);
                            } else {
                                this.mBuffer.put(this.mTempBuffer);
                            }
                            this.mTempBuffer = null;
                        } finally {
                            this.mTempBuffer = null;
                        }
                    }
                }
                this.mBuffer = null;
                this.mLength = 0;
            } else {
                if (this.mBuffer.isDirect()) {
                    native_dequeue_array = native_dequeue_direct();
                } else {
                    native_dequeue_array = native_dequeue_array(this.mBuffer.array(), this.mLength, z2);
                }
                if (native_dequeue_array >= 0) {
                    int min = Math.min(native_dequeue_array, this.mLength);
                    try {
                        this.mBuffer.position(min);
                    } catch (IllegalArgumentException e) {
                        if (z) {
                            Log.e(TAG, "Buffer " + this.mBuffer + " does not have enough space to read " + min + " bytes", e);
                            throw new BufferOverflowException();
                        }
                        throw e;
                    }
                }
                this.mBuffer = null;
                this.mLength = 0;
            }
        }
    }

    public boolean cancel() {
        return native_cancel();
    }
}
