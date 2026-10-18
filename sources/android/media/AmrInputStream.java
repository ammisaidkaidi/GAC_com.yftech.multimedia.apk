package android.media;

import android.media.MediaCodec;
import android.util.Log;
import android.view.Surface;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: /home/user/work/dex/classes.dex */
public final class AmrInputStream extends InputStream {
    private static final int SAMPLES_PER_FRAME = 160;
    private static final String TAG = "AmrInputStream";
    MediaCodec mCodec;
    MediaCodec.BufferInfo mInfo;
    private InputStream mInputStream;
    boolean mSawInputEOS;
    boolean mSawOutputEOS;
    private final byte[] mBuf = new byte[320];
    private int mBufIn = 0;
    private int mBufOut = 0;
    private byte[] mOneByte = new byte[1];

    public AmrInputStream(InputStream inputStream) {
        Log.w(TAG, "@@@@ AmrInputStream is not a public API @@@@");
        this.mInputStream = inputStream;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(MediaFormat.KEY_MIME, MediaFormat.MIMETYPE_AUDIO_AMR_NB);
        mediaFormat.setInteger(MediaFormat.KEY_SAMPLE_RATE, 8000);
        mediaFormat.setInteger(MediaFormat.KEY_CHANNEL_COUNT, 1);
        mediaFormat.setInteger(MediaFormat.KEY_BIT_RATE, 12200);
        String findEncoderForFormat = new MediaCodecList(0).findEncoderForFormat(mediaFormat);
        if (findEncoderForFormat != null) {
            try {
                this.mCodec = MediaCodec.createByCodecName(findEncoderForFormat);
                this.mCodec.configure(mediaFormat, (Surface) null, (MediaCrypto) null, 1);
                this.mCodec.start();
            } catch (IOException unused) {
                if (this.mCodec != null) {
                    this.mCodec.release();
                }
                this.mCodec = null;
            }
        }
        this.mInfo = new MediaCodec.BufferInfo();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.mOneByte, 0, 1) == 1) {
            return this.mOneByte[0] & 255;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int dequeueInputBuffer;
        if (this.mCodec == null) {
            throw new IllegalStateException("not open");
        }
        if (this.mBufOut >= this.mBufIn && !this.mSawOutputEOS) {
            this.mBufOut = 0;
            this.mBufIn = 0;
            while (!this.mSawInputEOS && (dequeueInputBuffer = this.mCodec.dequeueInputBuffer(0L)) >= 0) {
                int i3 = 0;
                while (true) {
                    if (i3 >= 320) {
                        break;
                    }
                    int read = this.mInputStream.read(this.mBuf, i3, 320 - i3);
                    if (read == -1) {
                        this.mSawInputEOS = true;
                        break;
                    }
                    i3 += read;
                }
                this.mCodec.getInputBuffer(dequeueInputBuffer).put(this.mBuf, 0, i3);
                this.mCodec.queueInputBuffer(dequeueInputBuffer, 0, i3, 0L, this.mSawInputEOS ? 4 : 0);
            }
            int dequeueOutputBuffer = this.mCodec.dequeueOutputBuffer(this.mInfo, 0L);
            if (dequeueOutputBuffer >= 0) {
                this.mBufIn = this.mInfo.size;
                this.mCodec.getOutputBuffer(dequeueOutputBuffer).get(this.mBuf, 0, this.mBufIn);
                this.mCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                if ((this.mInfo.flags & 4) != 0) {
                    this.mSawOutputEOS = true;
                }
            }
        }
        if (this.mBufOut >= this.mBufIn) {
            return (this.mSawInputEOS && this.mSawOutputEOS) ? -1 : 0;
        }
        int i4 = i2 > this.mBufIn - this.mBufOut ? this.mBufIn - this.mBufOut : i2;
        System.arraycopy(this.mBuf, this.mBufOut, bArr, i, i4);
        this.mBufOut += i4;
        return i4;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            if (this.mInputStream != null) {
                this.mInputStream.close();
            }
            this.mInputStream = null;
            try {
                if (this.mCodec != null) {
                    this.mCodec.release();
                }
            } finally {
            }
        } catch (Throwable th) {
            this.mInputStream = null;
            try {
                if (this.mCodec != null) {
                    this.mCodec.release();
                }
                throw th;
            } finally {
            }
        }
    }

    protected void finalize() throws Throwable {
        if (this.mCodec != null) {
            Log.w(TAG, "AmrInputStream wasn't closed");
            this.mCodec.release();
        }
    }
}
