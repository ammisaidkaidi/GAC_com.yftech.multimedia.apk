package android.security.keystore;

import android.os.IBinder;
import android.security.KeyStore;
import android.security.KeyStoreException;
import android.security.keymaster.OperationResult;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.ProviderException;
import libcore.util.EmptyArray;

/* loaded from: /home/user/work/dex/classes2.dex */
class KeyStoreCryptoOperationChunkedStreamer implements KeyStoreCryptoOperationStreamer {
    private static final int DEFAULT_MAX_CHUNK_SIZE = 65536;
    private byte[] mBuffered;
    private int mBufferedLength;
    private int mBufferedOffset;
    private long mConsumedInputSizeBytes;
    private final Stream mKeyStoreStream;
    private final int mMaxChunkSize;
    private long mProducedOutputSizeBytes;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface Stream {
        OperationResult finish(byte[] bArr, byte[] bArr2);

        OperationResult update(byte[] bArr);
    }

    public KeyStoreCryptoOperationChunkedStreamer(Stream stream) {
        this(stream, 65536);
    }

    public KeyStoreCryptoOperationChunkedStreamer(Stream stream, int i) {
        this.mBuffered = EmptyArray.BYTE;
        this.mKeyStoreStream = stream;
        this.mMaxChunkSize = i;
    }

    @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
    public byte[] update(byte[] bArr, int i, int i2) throws KeyStoreException {
        byte[] byteArray;
        byte[] concat;
        int i3;
        byte[] byteArray2;
        if (i2 == 0) {
            return EmptyArray.BYTE;
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        while (i2 > 0) {
            if (this.mBufferedLength + i2 > this.mMaxChunkSize) {
                int i4 = this.mMaxChunkSize - this.mBufferedLength;
                concat = ArrayUtils.concat(this.mBuffered, this.mBufferedOffset, this.mBufferedLength, bArr, i, i4);
                i3 = i4;
            } else if (this.mBufferedLength == 0 && i == 0 && i2 == bArr.length) {
                i3 = bArr.length;
                concat = bArr;
            } else {
                concat = ArrayUtils.concat(this.mBuffered, this.mBufferedOffset, this.mBufferedLength, bArr, i, i2);
                i3 = i2;
            }
            i += i3;
            i2 -= i3;
            this.mConsumedInputSizeBytes += i3;
            OperationResult update = this.mKeyStoreStream.update(concat);
            if (update == null) {
                throw new KeyStoreConnectException();
            }
            if (update.resultCode != 1) {
                throw KeyStore.getKeyStoreException(update.resultCode);
            }
            if (update.inputConsumed == concat.length) {
                this.mBuffered = EmptyArray.BYTE;
                this.mBufferedOffset = 0;
                this.mBufferedLength = 0;
            } else if (update.inputConsumed <= 0) {
                if (i2 > 0) {
                    throw new KeyStoreException(-1000, "Keystore consumed nothing from max-sized chunk: " + concat.length + " bytes");
                }
                this.mBuffered = concat;
                this.mBufferedOffset = 0;
                this.mBufferedLength = concat.length;
            } else if (update.inputConsumed < concat.length) {
                this.mBuffered = concat;
                this.mBufferedOffset = update.inputConsumed;
                this.mBufferedLength = concat.length - update.inputConsumed;
            } else {
                throw new KeyStoreException(-1000, "Keystore consumed more input than provided. Provided: " + concat.length + ", consumed: " + update.inputConsumed);
            }
            if (update.output != null && update.output.length > 0) {
                if (i2 <= 0) {
                    if (byteArrayOutputStream == null) {
                        byteArray2 = update.output;
                    } else {
                        try {
                            byteArrayOutputStream.write(update.output);
                            byteArray2 = byteArrayOutputStream.toByteArray();
                        } catch (IOException e) {
                            throw new ProviderException("Failed to buffer output", e);
                        }
                    }
                    this.mProducedOutputSizeBytes += byteArray2.length;
                    return byteArray2;
                }
                if (byteArrayOutputStream == null) {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byteArrayOutputStream.write(update.output);
                    } catch (IOException e2) {
                        throw new ProviderException("Failed to buffer output", e2);
                    }
                } else {
                    continue;
                }
            }
        }
        if (byteArrayOutputStream == null) {
            byteArray = EmptyArray.BYTE;
        } else {
            byteArray = byteArrayOutputStream.toByteArray();
        }
        this.mProducedOutputSizeBytes += byteArray.length;
        return byteArray;
    }

    @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
    public byte[] doFinal(byte[] bArr, int i, int i2, byte[] bArr2, byte[] bArr3) throws KeyStoreException {
        if (i2 == 0) {
            bArr = EmptyArray.BYTE;
            i = 0;
        }
        byte[] concat = ArrayUtils.concat(update(bArr, i, i2), flush());
        OperationResult finish = this.mKeyStoreStream.finish(bArr2, bArr3);
        if (finish == null) {
            throw new KeyStoreConnectException();
        }
        if (finish.resultCode != 1) {
            throw KeyStore.getKeyStoreException(finish.resultCode);
        }
        this.mProducedOutputSizeBytes += finish.output.length;
        return ArrayUtils.concat(concat, finish.output);
    }

    public byte[] flush() throws KeyStoreException {
        String str;
        if (this.mBufferedLength <= 0) {
            return EmptyArray.BYTE;
        }
        ByteArrayOutputStream byteArrayOutputStream = null;
        while (this.mBufferedLength > 0) {
            byte[] subarray = ArrayUtils.subarray(this.mBuffered, this.mBufferedOffset, this.mBufferedLength);
            OperationResult update = this.mKeyStoreStream.update(subarray);
            if (update == null) {
                throw new KeyStoreConnectException();
            }
            if (update.resultCode != 1) {
                throw KeyStore.getKeyStoreException(update.resultCode);
            }
            if (update.inputConsumed <= 0) {
                break;
            }
            if (update.inputConsumed >= subarray.length) {
                this.mBuffered = EmptyArray.BYTE;
                this.mBufferedOffset = 0;
                this.mBufferedLength = 0;
            } else {
                this.mBuffered = subarray;
                this.mBufferedOffset = update.inputConsumed;
                this.mBufferedLength = subarray.length - update.inputConsumed;
            }
            if (update.inputConsumed > subarray.length) {
                throw new KeyStoreException(-1000, "Keystore consumed more input than provided. Provided: " + subarray.length + ", consumed: " + update.inputConsumed);
            }
            if (update.output != null && update.output.length > 0) {
                if (byteArrayOutputStream == null) {
                    if (this.mBufferedLength == 0) {
                        this.mProducedOutputSizeBytes += update.output.length;
                        return update.output;
                    }
                    byteArrayOutputStream = new ByteArrayOutputStream();
                }
                try {
                    byteArrayOutputStream.write(update.output);
                } catch (IOException e) {
                    throw new ProviderException("Failed to buffer output", e);
                }
            }
        }
        if (this.mBufferedLength > 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Keystore failed to consume last ");
            if (this.mBufferedLength != 1) {
                str = this.mBufferedLength + " bytes";
            } else {
                str = "byte";
            }
            sb.append(str);
            sb.append(" of input");
            throw new KeyStoreException(-21, sb.toString());
        }
        byte[] byteArray = byteArrayOutputStream != null ? byteArrayOutputStream.toByteArray() : EmptyArray.BYTE;
        this.mProducedOutputSizeBytes += byteArray.length;
        return byteArray;
    }

    @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
    public long getConsumedInputSizeBytes() {
        return this.mConsumedInputSizeBytes;
    }

    @Override // android.security.keystore.KeyStoreCryptoOperationStreamer
    public long getProducedOutputSizeBytes() {
        return this.mProducedOutputSizeBytes;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class MainDataStream implements Stream {
        private final KeyStore mKeyStore;
        private final IBinder mOperationToken;

        public MainDataStream(KeyStore keyStore, IBinder iBinder) {
            this.mKeyStore = keyStore;
            this.mOperationToken = iBinder;
        }

        @Override // android.security.keystore.KeyStoreCryptoOperationChunkedStreamer.Stream
        public OperationResult update(byte[] bArr) {
            return this.mKeyStore.update(this.mOperationToken, null, bArr);
        }

        @Override // android.security.keystore.KeyStoreCryptoOperationChunkedStreamer.Stream
        public OperationResult finish(byte[] bArr, byte[] bArr2) {
            return this.mKeyStore.finish(this.mOperationToken, null, bArr, bArr2);
        }
    }
}
