package android.filterfw.core;

import android.filterfw.format.ObjectFormat;
import android.graphics.Bitmap;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;

/* loaded from: /home/user/work/dex/classes.dex */
public class SerializedFrame extends Frame {
    private static final int INITIAL_CAPACITY = 64;
    private DirectByteOutputStream mByteOutputStream;
    private ObjectOutputStream mObjectOut;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.filterfw.core.Frame
    public boolean hasNativeAllocation() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.filterfw.core.Frame
    public void releaseNativeAllocation() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class DirectByteOutputStream extends OutputStream {
        private byte[] mBuffer;
        private int mOffset = 0;
        private int mDataOffset = 0;

        public DirectByteOutputStream(int i) {
            this.mBuffer = null;
            this.mBuffer = new byte[i];
        }

        private final void ensureFit(int i) {
            if (this.mOffset + i > this.mBuffer.length) {
                byte[] bArr = this.mBuffer;
                this.mBuffer = new byte[Math.max(this.mOffset + i, this.mBuffer.length * 2)];
                System.arraycopy(bArr, 0, this.mBuffer, 0, this.mOffset);
            }
        }

        public final void markHeaderEnd() {
            this.mDataOffset = this.mOffset;
        }

        public final int getSize() {
            return this.mOffset;
        }

        public byte[] getByteArray() {
            return this.mBuffer;
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            write(bArr, 0, bArr.length);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            ensureFit(i2);
            System.arraycopy(bArr, i, this.mBuffer, this.mOffset, i2);
            this.mOffset += i2;
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            ensureFit(1);
            byte[] bArr = this.mBuffer;
            int i2 = this.mOffset;
            this.mOffset = i2 + 1;
            bArr[i2] = (byte) i;
        }

        public final void reset() {
            this.mOffset = this.mDataOffset;
        }

        public final DirectByteInputStream getInputStream() {
            return new DirectByteInputStream(this.mBuffer, this.mOffset);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class DirectByteInputStream extends InputStream {
        private byte[] mBuffer;
        private int mPos = 0;
        private int mSize;

        public DirectByteInputStream(byte[] bArr, int i) {
            this.mBuffer = bArr;
            this.mSize = i;
        }

        @Override // java.io.InputStream
        public final int available() {
            return this.mSize - this.mPos;
        }

        @Override // java.io.InputStream
        public final int read() {
            if (this.mPos >= this.mSize) {
                return -1;
            }
            byte[] bArr = this.mBuffer;
            int i = this.mPos;
            this.mPos = i + 1;
            return bArr[i] & 255;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            if (this.mPos >= this.mSize) {
                return -1;
            }
            if (this.mPos + i2 > this.mSize) {
                i2 = this.mSize - this.mPos;
            }
            System.arraycopy(this.mBuffer, this.mPos, bArr, i, i2);
            this.mPos += i2;
            return i2;
        }

        @Override // java.io.InputStream
        public final long skip(long j) {
            if (this.mPos + j > this.mSize) {
                j = this.mSize - this.mPos;
            }
            if (j < 0) {
                return 0L;
            }
            this.mPos = (int) (this.mPos + j);
            return j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SerializedFrame(FrameFormat frameFormat, FrameManager frameManager) {
        super(frameFormat, frameManager);
        setReusable(false);
        try {
            this.mByteOutputStream = new DirectByteOutputStream(64);
            this.mObjectOut = new ObjectOutputStream(this.mByteOutputStream);
            this.mByteOutputStream.markHeaderEnd();
        } catch (IOException e) {
            throw new RuntimeException("Could not create serialization streams for SerializedFrame!", e);
        }
    }

    static SerializedFrame wrapObject(Object obj, FrameManager frameManager) {
        SerializedFrame serializedFrame = new SerializedFrame(ObjectFormat.fromObject(obj, 1), frameManager);
        serializedFrame.setObjectValue(obj);
        return serializedFrame;
    }

    @Override // android.filterfw.core.Frame
    public Object getObjectValue() {
        return deserializeObjectValue();
    }

    @Override // android.filterfw.core.Frame
    public void setInts(int[] iArr) {
        assertFrameMutable();
        setGenericObjectValue(iArr);
    }

    @Override // android.filterfw.core.Frame
    public int[] getInts() {
        Object deserializeObjectValue = deserializeObjectValue();
        if (deserializeObjectValue instanceof int[]) {
            return (int[]) deserializeObjectValue;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public void setFloats(float[] fArr) {
        assertFrameMutable();
        setGenericObjectValue(fArr);
    }

    @Override // android.filterfw.core.Frame
    public float[] getFloats() {
        Object deserializeObjectValue = deserializeObjectValue();
        if (deserializeObjectValue instanceof float[]) {
            return (float[]) deserializeObjectValue;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public void setData(ByteBuffer byteBuffer, int i, int i2) {
        assertFrameMutable();
        setGenericObjectValue(ByteBuffer.wrap(byteBuffer.array(), i, i2));
    }

    @Override // android.filterfw.core.Frame
    public ByteBuffer getData() {
        Object deserializeObjectValue = deserializeObjectValue();
        if (deserializeObjectValue instanceof ByteBuffer) {
            return (ByteBuffer) deserializeObjectValue;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    public void setBitmap(Bitmap bitmap) {
        assertFrameMutable();
        setGenericObjectValue(bitmap);
    }

    @Override // android.filterfw.core.Frame
    public Bitmap getBitmap() {
        Object deserializeObjectValue = deserializeObjectValue();
        if (deserializeObjectValue instanceof Bitmap) {
            return (Bitmap) deserializeObjectValue;
        }
        return null;
    }

    @Override // android.filterfw.core.Frame
    protected void setGenericObjectValue(Object obj) {
        serializeObjectValue(obj);
    }

    private final void serializeObjectValue(Object obj) {
        try {
            this.mByteOutputStream.reset();
            this.mObjectOut.writeObject(obj);
            this.mObjectOut.flush();
            this.mObjectOut.close();
        } catch (IOException e) {
            throw new RuntimeException("Could not serialize object " + obj + " in " + this + "!", e);
        }
    }

    private final Object deserializeObjectValue() {
        try {
            return new ObjectInputStream(this.mByteOutputStream.getInputStream()).readObject();
        } catch (IOException e) {
            throw new RuntimeException("Could not deserialize object in " + this + "!", e);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Unable to deserialize object of unknown class in " + this + "!", e2);
        }
    }

    public String toString() {
        return "SerializedFrame (" + getFormat() + ")";
    }
}
