package com.android.internal.util;

import java.io.IOException;
import java.io.InputStream;
import libcore.io.Streams;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SizedInputStream extends InputStream {
    private long mLength;
    private final InputStream mWrapped;

    public SizedInputStream(InputStream inputStream, long j) {
        this.mWrapped = inputStream;
        this.mLength = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        this.mWrapped.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return Streams.readSingleByte(this);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.mLength <= 0) {
            return -1;
        }
        if (i2 > this.mLength) {
            i2 = (int) this.mLength;
        }
        int read = this.mWrapped.read(bArr, i, i2);
        if (read != -1) {
            this.mLength -= read;
        } else if (this.mLength > 0) {
            throw new IOException("Unexpected EOF; expected " + this.mLength + " more bytes");
        }
        return read;
    }
}
