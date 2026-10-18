package android.security.keystore;

import android.os.IBinder;
import android.security.KeyStore;
import android.security.KeyStoreException;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.OperationResult;
import android.security.keystore.KeyStoreCryptoOperationChunkedStreamer;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.security.AlgorithmParameters;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.AEADBadTagException;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import libcore.util.EmptyArray;

/* loaded from: /home/user/work/dex/classes2.dex */
abstract class AndroidKeyStoreCipherSpiBase extends CipherSpi implements KeyStoreCryptoOperation {
    private KeyStoreCryptoOperationStreamer mAdditionalAuthenticationDataStreamer;
    private boolean mAdditionalAuthenticationDataStreamerClosed;
    private Exception mCachedException;
    private boolean mEncrypting;
    private AndroidKeyStoreKey mKey;
    private KeyStoreCryptoOperationStreamer mMainDataStreamer;
    private long mOperationHandle;
    private IBinder mOperationToken;
    private SecureRandom mRng;
    private int mKeymasterPurposeOverride = -1;
    private final KeyStore mKeyStore = KeyStore.getInstance();

    protected abstract void addAlgorithmSpecificParametersToBegin(KeymasterArguments keymasterArguments);

    protected KeyStoreCryptoOperationStreamer createAdditionalAuthenticationDataStreamer(KeyStore keyStore, IBinder iBinder) {
        return null;
    }

    @Override // javax.crypto.CipherSpi
    protected abstract AlgorithmParameters engineGetParameters();

    protected abstract int getAdditionalEntropyAmountForBegin();

    protected abstract int getAdditionalEntropyAmountForFinish();

    protected abstract void initAlgorithmSpecificParameters() throws InvalidKeyException;

    protected abstract void initAlgorithmSpecificParameters(AlgorithmParameters algorithmParameters) throws InvalidAlgorithmParameterException;

    protected abstract void initAlgorithmSpecificParameters(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException;

    protected abstract void initKey(int i, Key key) throws InvalidKeyException;

    protected abstract void loadAlgorithmSpecificParametersFromBeginResult(KeymasterArguments keymasterArguments);

    @Override // javax.crypto.CipherSpi
    protected final void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        resetAll();
        try {
            init(i, key, secureRandom);
            initAlgorithmSpecificParameters();
            try {
                ensureKeystoreOperationInitialized();
            } catch (InvalidAlgorithmParameterException e) {
                throw new InvalidKeyException(e);
            }
        } catch (Throwable th) {
            resetAll();
            throw th;
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            init(i, key, secureRandom);
            initAlgorithmSpecificParameters(algorithmParameters);
            ensureKeystoreOperationInitialized();
        } finally {
            resetAll();
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        try {
            init(i, key, secureRandom);
            initAlgorithmSpecificParameters(algorithmParameterSpec);
            ensureKeystoreOperationInitialized();
        } finally {
            resetAll();
        }
    }

    private void init(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        switch (i) {
            case 1:
            case 3:
                this.mEncrypting = true;
                break;
            case 2:
            case 4:
                this.mEncrypting = false;
                break;
            default:
                throw new InvalidParameterException("Unsupported opmode: " + i);
        }
        initKey(i, key);
        if (this.mKey == null) {
            throw new ProviderException("initKey did not initialize the key");
        }
        this.mRng = secureRandom;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetAll() {
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mKeyStore.abort(iBinder);
        }
        this.mEncrypting = false;
        this.mKeymasterPurposeOverride = -1;
        this.mKey = null;
        this.mRng = null;
        this.mOperationToken = null;
        this.mOperationHandle = 0L;
        this.mMainDataStreamer = null;
        this.mAdditionalAuthenticationDataStreamer = null;
        this.mAdditionalAuthenticationDataStreamerClosed = false;
        this.mCachedException = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetWhilePreservingInitState() {
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mKeyStore.abort(iBinder);
        }
        this.mOperationToken = null;
        this.mOperationHandle = 0L;
        this.mMainDataStreamer = null;
        this.mAdditionalAuthenticationDataStreamer = null;
        this.mAdditionalAuthenticationDataStreamerClosed = false;
        this.mCachedException = null;
    }

    private void ensureKeystoreOperationInitialized() throws InvalidKeyException, InvalidAlgorithmParameterException {
        int i;
        if (this.mMainDataStreamer == null && this.mCachedException == null) {
            if (this.mKey == null) {
                throw new IllegalStateException("Not initialized");
            }
            KeymasterArguments keymasterArguments = new KeymasterArguments();
            addAlgorithmSpecificParametersToBegin(keymasterArguments);
            byte[] randomBytesToMixIntoKeystoreRng = KeyStoreCryptoOperationUtils.getRandomBytesToMixIntoKeystoreRng(this.mRng, getAdditionalEntropyAmountForBegin());
            if (this.mKeymasterPurposeOverride != -1) {
                i = this.mKeymasterPurposeOverride;
            } else {
                i = !this.mEncrypting ? 1 : 0;
            }
            OperationResult begin = this.mKeyStore.begin(this.mKey.getAlias(), i, true, keymasterArguments, randomBytesToMixIntoKeystoreRng, this.mKey.getUid());
            if (begin == null) {
                throw new KeyStoreConnectException();
            }
            this.mOperationToken = begin.token;
            this.mOperationHandle = begin.operationHandle;
            GeneralSecurityException exceptionForCipherInit = KeyStoreCryptoOperationUtils.getExceptionForCipherInit(this.mKeyStore, this.mKey, begin.resultCode);
            if (exceptionForCipherInit != null) {
                if (exceptionForCipherInit instanceof InvalidKeyException) {
                    throw ((InvalidKeyException) exceptionForCipherInit);
                }
                if (exceptionForCipherInit instanceof InvalidAlgorithmParameterException) {
                    throw ((InvalidAlgorithmParameterException) exceptionForCipherInit);
                }
                throw new ProviderException("Unexpected exception type", exceptionForCipherInit);
            }
            if (this.mOperationToken == null) {
                throw new ProviderException("Keystore returned null operation token");
            }
            if (this.mOperationHandle == 0) {
                throw new ProviderException("Keystore returned invalid operation handle");
            }
            loadAlgorithmSpecificParametersFromBeginResult(begin.outParams);
            this.mMainDataStreamer = createMainDataStreamer(this.mKeyStore, begin.token);
            this.mAdditionalAuthenticationDataStreamer = createAdditionalAuthenticationDataStreamer(this.mKeyStore, begin.token);
            this.mAdditionalAuthenticationDataStreamerClosed = false;
        }
    }

    protected KeyStoreCryptoOperationStreamer createMainDataStreamer(KeyStore keyStore, IBinder iBinder) {
        return new KeyStoreCryptoOperationChunkedStreamer(new KeyStoreCryptoOperationChunkedStreamer.MainDataStream(keyStore, iBinder));
    }

    @Override // javax.crypto.CipherSpi
    protected final byte[] engineUpdate(byte[] bArr, int i, int i2) {
        if (this.mCachedException != null) {
            return null;
        }
        try {
            ensureKeystoreOperationInitialized();
            if (i2 == 0) {
                return null;
            }
            try {
                flushAAD();
                byte[] update = this.mMainDataStreamer.update(bArr, i, i2);
                if (update.length == 0) {
                    return null;
                }
                return update;
            } catch (KeyStoreException e) {
                this.mCachedException = e;
                return null;
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
            this.mCachedException = e2;
            return null;
        }
    }

    private void flushAAD() throws KeyStoreException {
        if (this.mAdditionalAuthenticationDataStreamer == null || this.mAdditionalAuthenticationDataStreamerClosed) {
            return;
        }
        try {
            byte[] doFinal = this.mAdditionalAuthenticationDataStreamer.doFinal(EmptyArray.BYTE, 0, 0, null, null);
            if (doFinal == null || doFinal.length <= 0) {
                return;
            }
            throw new ProviderException("AAD update unexpectedly returned data: " + doFinal.length + " bytes");
        } finally {
            this.mAdditionalAuthenticationDataStreamerClosed = true;
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        byte[] engineUpdate = engineUpdate(bArr, i, i2);
        if (engineUpdate == null) {
            return 0;
        }
        int length = bArr2.length - i3;
        if (engineUpdate.length > length) {
            throw new ShortBufferException("Output buffer too short. Produced: " + engineUpdate.length + ", available: " + length);
        }
        System.arraycopy(engineUpdate, 0, bArr2, i3, engineUpdate.length);
        return engineUpdate.length;
    }

    @Override // javax.crypto.CipherSpi
    protected final int engineUpdate(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws ShortBufferException {
        byte[] engineUpdate;
        if (byteBuffer == null) {
            throw new NullPointerException("input == null");
        }
        if (byteBuffer2 == null) {
            throw new NullPointerException("output == null");
        }
        int remaining = byteBuffer.remaining();
        if (byteBuffer.hasArray()) {
            engineUpdate = engineUpdate(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), remaining);
            byteBuffer.position(byteBuffer.position() + remaining);
        } else {
            byte[] bArr = new byte[remaining];
            byteBuffer.get(bArr);
            engineUpdate = engineUpdate(bArr, 0, remaining);
        }
        int length = engineUpdate != null ? engineUpdate.length : 0;
        if (length > 0) {
            int remaining2 = byteBuffer2.remaining();
            try {
                byteBuffer2.put(engineUpdate);
            } catch (BufferOverflowException unused) {
                throw new ShortBufferException("Output buffer too small. Produced: " + length + ", available: " + remaining2);
            }
        }
        return length;
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineUpdateAAD(byte[] bArr, int i, int i2) {
        if (this.mCachedException != null) {
            return;
        }
        try {
            ensureKeystoreOperationInitialized();
            if (this.mAdditionalAuthenticationDataStreamerClosed) {
                throw new IllegalStateException("AAD can only be provided before Cipher.update is invoked");
            }
            if (this.mAdditionalAuthenticationDataStreamer == null) {
                throw new IllegalStateException("This cipher does not support AAD");
            }
            try {
                byte[] update = this.mAdditionalAuthenticationDataStreamer.update(bArr, i, i2);
                if (update == null || update.length <= 0) {
                    return;
                }
                throw new ProviderException("AAD update unexpectedly produced output: " + update.length + " bytes");
            } catch (KeyStoreException e) {
                this.mCachedException = e;
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
            this.mCachedException = e2;
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineUpdateAAD(ByteBuffer byteBuffer) {
        byte[] bArr;
        int i;
        int length;
        if (byteBuffer == null) {
            throw new IllegalArgumentException("src == null");
        }
        if (byteBuffer.hasRemaining()) {
            if (byteBuffer.hasArray()) {
                bArr = byteBuffer.array();
                i = byteBuffer.arrayOffset() + byteBuffer.position();
                length = byteBuffer.remaining();
                byteBuffer.position(byteBuffer.limit());
            } else {
                bArr = new byte[byteBuffer.remaining()];
                i = 0;
                length = bArr.length;
                byteBuffer.get(bArr);
            }
            engineUpdateAAD(bArr, i, length);
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final byte[] engineDoFinal(byte[] bArr, int i, int i2) throws IllegalBlockSizeException, BadPaddingException {
        if (this.mCachedException != null) {
            throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(this.mCachedException));
        }
        try {
            ensureKeystoreOperationInitialized();
            try {
                flushAAD();
                byte[] doFinal = this.mMainDataStreamer.doFinal(bArr, i, i2, null, KeyStoreCryptoOperationUtils.getRandomBytesToMixIntoKeystoreRng(this.mRng, getAdditionalEntropyAmountForFinish()));
                resetWhilePreservingInitState();
                return doFinal;
            } catch (KeyStoreException e) {
                int errorCode = e.getErrorCode();
                if (errorCode == -38) {
                    throw ((BadPaddingException) new BadPaddingException().initCause(e));
                }
                if (errorCode == -30) {
                    throw ((AEADBadTagException) new AEADBadTagException().initCause(e));
                }
                if (errorCode == -21) {
                    throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(e));
                }
                throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(e));
            }
        } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
            throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(e2));
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        byte[] engineDoFinal = engineDoFinal(bArr, i, i2);
        if (engineDoFinal == null) {
            return 0;
        }
        int length = bArr2.length - i3;
        if (engineDoFinal.length > length) {
            throw new ShortBufferException("Output buffer too short. Produced: " + engineDoFinal.length + ", available: " + length);
        }
        System.arraycopy(engineDoFinal, 0, bArr2, i3, engineDoFinal.length);
        return engineDoFinal.length;
    }

    @Override // javax.crypto.CipherSpi
    protected final int engineDoFinal(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        byte[] engineDoFinal;
        if (byteBuffer == null) {
            throw new NullPointerException("input == null");
        }
        if (byteBuffer2 == null) {
            throw new NullPointerException("output == null");
        }
        int remaining = byteBuffer.remaining();
        if (byteBuffer.hasArray()) {
            engineDoFinal = engineDoFinal(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), remaining);
            byteBuffer.position(byteBuffer.position() + remaining);
        } else {
            byte[] bArr = new byte[remaining];
            byteBuffer.get(bArr);
            engineDoFinal = engineDoFinal(bArr, 0, remaining);
        }
        int length = engineDoFinal != null ? engineDoFinal.length : 0;
        if (length > 0) {
            int remaining2 = byteBuffer2.remaining();
            try {
                byteBuffer2.put(engineDoFinal);
            } catch (BufferOverflowException unused) {
                throw new ShortBufferException("Output buffer too small. Produced: " + length + ", available: " + remaining2);
            }
        }
        return length;
    }

    @Override // javax.crypto.CipherSpi
    protected final byte[] engineWrap(Key key) throws IllegalBlockSizeException, InvalidKeyException {
        byte[] encoded;
        if (this.mKey == null) {
            throw new IllegalStateException("Not initilized");
        }
        if (!isEncrypting()) {
            throw new IllegalStateException("Cipher must be initialized in Cipher.WRAP_MODE to wrap keys");
        }
        if (key == null) {
            throw new NullPointerException("key == null");
        }
        if (key instanceof SecretKey) {
            encoded = "RAW".equalsIgnoreCase(key.getFormat()) ? key.getEncoded() : null;
            if (encoded == null) {
                try {
                    encoded = ((SecretKeySpec) SecretKeyFactory.getInstance(key.getAlgorithm()).getKeySpec((SecretKey) key, SecretKeySpec.class)).getEncoded();
                } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                    throw new InvalidKeyException("Failed to wrap key because it does not export its key material", e);
                }
            }
        } else if (key instanceof PrivateKey) {
            encoded = "PKCS8".equalsIgnoreCase(key.getFormat()) ? key.getEncoded() : null;
            if (encoded == null) {
                try {
                    encoded = ((PKCS8EncodedKeySpec) KeyFactory.getInstance(key.getAlgorithm()).getKeySpec(key, PKCS8EncodedKeySpec.class)).getEncoded();
                } catch (NoSuchAlgorithmException | InvalidKeySpecException e2) {
                    throw new InvalidKeyException("Failed to wrap key because it does not export its key material", e2);
                }
            }
        } else if (key instanceof PublicKey) {
            encoded = "X.509".equalsIgnoreCase(key.getFormat()) ? key.getEncoded() : null;
            if (encoded == null) {
                try {
                    encoded = ((X509EncodedKeySpec) KeyFactory.getInstance(key.getAlgorithm()).getKeySpec(key, X509EncodedKeySpec.class)).getEncoded();
                } catch (NoSuchAlgorithmException | InvalidKeySpecException e3) {
                    throw new InvalidKeyException("Failed to wrap key because it does not export its key material", e3);
                }
            }
        } else {
            throw new InvalidKeyException("Unsupported key type: " + key.getClass().getName());
        }
        if (encoded == null) {
            throw new InvalidKeyException("Failed to wrap key because it does not export its key material");
        }
        try {
            return engineDoFinal(encoded, 0, encoded.length);
        } catch (BadPaddingException e4) {
            throw ((IllegalBlockSizeException) new IllegalBlockSizeException().initCause(e4));
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final Key engineUnwrap(byte[] bArr, String str, int i) throws InvalidKeyException, NoSuchAlgorithmException {
        if (this.mKey == null) {
            throw new IllegalStateException("Not initilized");
        }
        if (isEncrypting()) {
            throw new IllegalStateException("Cipher must be initialized in Cipher.WRAP_MODE to wrap keys");
        }
        if (bArr == null) {
            throw new NullPointerException("wrappedKey == null");
        }
        try {
            byte[] engineDoFinal = engineDoFinal(bArr, 0, bArr.length);
            switch (i) {
                case 1:
                    try {
                        return KeyFactory.getInstance(str).generatePublic(new X509EncodedKeySpec(engineDoFinal));
                    } catch (InvalidKeySpecException e) {
                        throw new InvalidKeyException("Failed to create public key from its X.509 encoded form", e);
                    }
                case 2:
                    try {
                        return KeyFactory.getInstance(str).generatePrivate(new PKCS8EncodedKeySpec(engineDoFinal));
                    } catch (InvalidKeySpecException e2) {
                        throw new InvalidKeyException("Failed to create private key from its PKCS#8 encoded form", e2);
                    }
                case 3:
                    return new SecretKeySpec(engineDoFinal, str);
                default:
                    throw new InvalidParameterException("Unsupported wrappedKeyType: " + i);
            }
        } catch (BadPaddingException | IllegalBlockSizeException e3) {
            throw new InvalidKeyException("Failed to unwrap key", e3);
        }
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineSetMode(String str) throws NoSuchAlgorithmException {
        throw new UnsupportedOperationException();
    }

    @Override // javax.crypto.CipherSpi
    protected final void engineSetPadding(String str) throws NoSuchPaddingException {
        throw new UnsupportedOperationException();
    }

    @Override // javax.crypto.CipherSpi
    protected final int engineGetKeySize(Key key) throws InvalidKeyException {
        throw new UnsupportedOperationException();
    }

    public void finalize() throws Throwable {
        try {
            IBinder iBinder = this.mOperationToken;
            if (iBinder != null) {
                this.mKeyStore.abort(iBinder);
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.security.keystore.KeyStoreCryptoOperation
    public final long getOperationHandle() {
        return this.mOperationHandle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setKey(AndroidKeyStoreKey androidKeyStoreKey) {
        this.mKey = androidKeyStoreKey;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setKeymasterPurposeOverride(int i) {
        this.mKeymasterPurposeOverride = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getKeymasterPurposeOverride() {
        return this.mKeymasterPurposeOverride;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isEncrypting() {
        return this.mEncrypting;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final KeyStore getKeyStore() {
        return this.mKeyStore;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long getConsumedInputSizeBytes() {
        if (this.mMainDataStreamer == null) {
            throw new IllegalStateException("Not initialized");
        }
        return this.mMainDataStreamer.getConsumedInputSizeBytes();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long getProducedOutputSizeBytes() {
        if (this.mMainDataStreamer == null) {
            throw new IllegalStateException("Not initialized");
        }
        return this.mMainDataStreamer.getProducedOutputSizeBytes();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String opmodeToString(int i) {
        switch (i) {
            case 1:
                return "ENCRYPT_MODE";
            case 2:
                return "DECRYPT_MODE";
            case 3:
                return "WRAP_MODE";
            case 4:
                return "UNWRAP_MODE";
            default:
                return String.valueOf(i);
        }
    }
}
