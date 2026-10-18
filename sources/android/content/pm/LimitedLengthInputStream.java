package android.content.pm;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public class LimitedLengthInputStream extends FilterInputStream {
    private final long mEnd;
    private long mOffset;

    public LimitedLengthInputStream(InputStream inputStream, long j, long j2) throws IOException {
        super(inputStream);
        if (inputStream == null) {
            throw new IOException("in == null");
        }
        if (j < 0) {
            throw new IOException("offset < 0");
        }
        if (j2 < 0) {
            throw new IOException("length < 0");
        }
        if (j2 > Long.MAX_VALUE - j) {
            throw new IOException("offset + length > Long.MAX_VALUE");
        }
        this.mEnd = j2 + j;
        skip(j);
        this.mOffset = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        if (this.mOffset >= this.mEnd) {
            return -1;
        }
        this.mOffset++;
        return super.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.mOffset >= this.mEnd) {
            return -1;
        }
        Arrays.checkOffsetAndCount(bArr.length, i, i2);
        long j = i2;
        if (this.mOffset > Long.MAX_VALUE - j) {
            throw new IOException("offset out of bounds: " + this.mOffset + " + " + i2);
        }
        if (this.mOffset + j > this.mEnd) {
            i2 = (int) (this.mEnd - this.mOffset);
        }
        int read = super.read(bArr, i, i2);
        this.mOffset += read;
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
