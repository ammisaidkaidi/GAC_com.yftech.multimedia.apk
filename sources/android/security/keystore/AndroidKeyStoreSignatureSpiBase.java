package android.security.keystore;

import android.os.IBinder;
import android.security.KeyStore;
import android.security.KeyStoreException;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.OperationResult;
import android.security.keystore.KeyStoreCryptoOperationChunkedStreamer;
import java.nio.ByteBuffer;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.PrivateKey;
import java.security.ProviderException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import libcore.util.EmptyArray;

/* loaded from: /home/user/work/dex/classes2.dex */
abstract class AndroidKeyStoreSignatureSpiBase extends SignatureSpi implements KeyStoreCryptoOperation {
    private Exception mCachedException;
    private AndroidKeyStoreKey mKey;
    private final KeyStore mKeyStore = KeyStore.getInstance();
    private KeyStoreCryptoOperationStreamer mMessageStreamer;
    private long mOperationHandle;
    private IBinder mOperationToken;
    private boolean mSigning;

    protected abstract void addAlgorithmSpecificParametersToBegin(KeymasterArguments keymasterArguments);

    protected abstract int getAdditionalEntropyAmountForSign();

    @Override // java.security.SignatureSpi
    protected final void engineInitSign(PrivateKey privateKey) throws InvalidKeyException {
        engineInitSign(privateKey, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.security.SignatureSpi
    protected final void engineInitSign(PrivateKey privateKey, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            if (privateKey == 0) {
                throw new InvalidKeyException("Unsupported key: null");
            }
            if (!(privateKey instanceof AndroidKeyStorePrivateKey)) {
                throw new InvalidKeyException("Unsupported private key type: " + privateKey);
            }
            this.mSigning = true;
            initKey((AndroidKeyStoreKey) privateKey);
            this.appRandom = secureRandom;
            ensureKeystoreOperationInitialized();
        } finally {
            resetAll();
        }
    }

    @Override // java.security.SignatureSpi
    protected final void engineInitVerify(PublicKey publicKey) throws InvalidKeyException {
        try {
            if (publicKey == null) {
                throw new InvalidKeyException("Unsupported key: null");
            }
            if (!(publicKey instanceof AndroidKeyStorePublicKey)) {
                throw new InvalidKeyException("Unsupported public key type: " + publicKey);
            }
            this.mSigning = false;
            initKey((AndroidKeyStorePublicKey) publicKey);
            this.appRandom = null;
            ensureKeystoreOperationInitialized();
        } finally {
            resetAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initKey(AndroidKeyStoreKey androidKeyStoreKey) throws InvalidKeyException {
        this.mKey = androidKeyStoreKey;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetAll() {
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mOperationToken = null;
            this.mKeyStore.abort(iBinder);
        }
        this.mSigning = false;
        this.mKey = null;
        this.appRandom = null;
        this.mOperationToken = null;
        this.mOperationHandle = 0L;
        this.mMessageStreamer = null;
        this.mCachedException = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetWhilePreservingInitState() {
        IBinder iBinder = this.mOperationToken;
        if (iBinder != null) {
            this.mOperationToken = null;
            this.mKeyStore.abort(iBinder);
        }
        this.mOperationHandle = 0L;
        this.mMessageStreamer = null;
        this.mCachedException = null;
    }

    private void ensureKeystoreOperationInitialized() throws InvalidKeyException {
        if (this.mMessageStreamer == null && this.mCachedException == null) {
            if (this.mKey == null) {
                throw new IllegalStateException("Not initialized");
            }
            KeymasterArguments keymasterArguments = new KeymasterArguments();
            addAlgorithmSpecificParametersToBegin(keymasterArguments);
            OperationResult begin = this.mKeyStore.begin(this.mKey.getAlias(), this.mSigning ? 2 : 3, true, keymasterArguments, null, this.mKey.getUid());
            if (begin == null) {
                throw new KeyStoreConnectException();
            }
            this.mOperationToken = begin.token;
            this.mOperationHandle = begin.operationHandle;
            InvalidKeyException invalidKeyExceptionForInit = KeyStoreCryptoOperationUtils.getInvalidKeyExceptionForInit(this.mKeyStore, this.mKey, begin.resultCode);
            if (invalidKeyExceptionForInit != null) {
                throw invalidKeyExceptionForInit;
            }
            if (this.mOperationToken == null) {
                throw new ProviderException("Keystore returned null operation token");
            }
            if (this.mOperationHandle == 0) {
                throw new ProviderException("Keystore returned invalid operation handle");
            }
            this.mMessageStreamer = createMainDataStreamer(this.mKeyStore, begin.token);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public KeyStoreCryptoOperationStreamer createMainDataStreamer(KeyStore keyStore, IBinder iBinder) {
        return new KeyStoreCryptoOperationChunkedStreamer(new KeyStoreCryptoOperationChunkedStreamer.MainDataStream(keyStore, iBinder));
    }

    @Override // android.security.keystore.KeyStoreCryptoOperation
    public final long getOperationHandle() {
        return this.mOperationHandle;
    }

    @Override // java.security.SignatureSpi
    protected final void engineUpdate(byte[] bArr, int i, int i2) throws SignatureException {
        if (this.mCachedException != null) {
            throw new SignatureException(this.mCachedException);
        }
        try {
            ensureKeystoreOperationInitialized();
            if (i2 == 0) {
                return;
            }
            try {
                byte[] update = this.mMessageStreamer.update(bArr, i, i2);
                if (update.length == 0) {
                    return;
                }
                throw new ProviderException("Update operation unexpectedly produced output: " + update.length + " bytes");
            } catch (KeyStoreException e) {
                throw new SignatureException(e);
            }
        } catch (InvalidKeyException e2) {
            throw new SignatureException(e2);
        }
    }

    @Override // java.security.SignatureSpi
    protected final void engineUpdate(byte b) throws SignatureException {
        engineUpdate(new byte[]{b}, 0, 1);
    }

    @Override // java.security.SignatureSpi
    protected final void engineUpdate(ByteBuffer byteBuffer) {
        byte[] bArr;
        int i;
        int remaining = byteBuffer.remaining();
        if (byteBuffer.hasArray()) {
            bArr = byteBuffer.array();
            i = byteBuffer.arrayOffset() + byteBuffer.position();
            byteBuffer.position(byteBuffer.limit());
        } else {
            bArr = new byte[remaining];
            i = 0;
            byteBuffer.get(bArr);
        }
        try {
            engineUpdate(bArr, i, remaining);
        } catch (SignatureException e) {
            this.mCachedException = e;
        }
    }

    @Override // java.security.SignatureSpi
    protected final int engineSign(byte[] bArr, int i, int i2) throws SignatureException {
        return super.engineSign(bArr, i, i2);
    }

    @Override // java.security.SignatureSpi
    protected final byte[] engineSign() throws SignatureException {
        if (this.mCachedException != null) {
            throw new SignatureException(this.mCachedException);
        }
        try {
            ensureKeystoreOperationInitialized();
            byte[] doFinal = this.mMessageStreamer.doFinal(EmptyArray.BYTE, 0, 0, null, KeyStoreCryptoOperationUtils.getRandomBytesToMixIntoKeystoreRng(this.appRandom, getAdditionalEntropyAmountForSign()));
            resetWhilePreservingInitState();
            return doFinal;
        } catch (KeyStoreException | InvalidKeyException e) {
            throw new SignatureException(e);
        }
    }

    @Override // java.security.SignatureSpi
    protected final boolean engineVerify(byte[] bArr) throws SignatureException {
        boolean z;
        byte[] doFinal;
        if (this.mCachedException != null) {
            throw new SignatureException(this.mCachedException);
        }
        try {
            ensureKeystoreOperationInitialized();
            try {
                doFinal = this.mMessageStreamer.doFinal(EmptyArray.BYTE, 0, 0, bArr, null);
            } catch (KeyStoreException e) {
                if (e.getErrorCode() != -30) {
                    throw new SignatureException(e);
                }
                z = false;
            }
            if (doFinal.length != 0) {
                throw new ProviderException("Signature verification unexpected produced output: " + doFinal.length + " bytes");
            }
            z = true;
            resetWhilePreservingInitState();
            return z;
        } catch (InvalidKeyException e2) {
            throw new SignatureException(e2);
        }
    }

    @Override // java.security.SignatureSpi
    protected final boolean engineVerify(byte[] bArr, int i, int i2) throws SignatureException {
        return engineVerify(ArrayUtils.subarray(bArr, i, i2));
    }

    @Override // java.security.SignatureSpi
    @Deprecated
    protected final Object engineGetParameter(String str) throws InvalidParameterException {
        throw new InvalidParameterException();
    }

    @Override // java.security.SignatureSpi
    @Deprecated
    protected final void engineSetParameter(String str, Object obj) throws InvalidParameterException {
        throw new InvalidParameterException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final KeyStore getKeyStore() {
        return this.mKeyStore;
    }

    protected final boolean isSigning() {
        return this.mSigning;
    }
}
