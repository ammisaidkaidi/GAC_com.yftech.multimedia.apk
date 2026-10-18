package android.hardware.biometrics;

import android.os.CancellationSignal;
import android.os.Parcelable;
import java.util.concurrent.Executor;

/* loaded from: /home/user/work/dex/classes.dex */
public interface BiometricAuthenticator {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class AuthenticationCallback {
        public void onAuthenticationAcquired(int i) {
        }

        public void onAuthenticationError(int i, CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationHelp(int i, CharSequence charSequence) {
        }

        public void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class BiometricIdentifier implements Parcelable {
    }

    void authenticate(CryptoObject cryptoObject, CancellationSignal cancellationSignal, Executor executor, AuthenticationCallback authenticationCallback);

    void authenticate(CancellationSignal cancellationSignal, Executor executor, AuthenticationCallback authenticationCallback);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class AuthenticationResult {
        private CryptoObject mCryptoObject;
        private BiometricIdentifier mIdentifier;
        private int mUserId;

        public AuthenticationResult() {
        }

        public AuthenticationResult(CryptoObject cryptoObject, BiometricIdentifier biometricIdentifier, int i) {
            this.mCryptoObject = cryptoObject;
            this.mIdentifier = biometricIdentifier;
            this.mUserId = i;
        }

        public CryptoObject getCryptoObject() {
            return this.mCryptoObject;
        }

        public BiometricIdentifier getId() {
            return this.mIdentifier;
        }

        public int getUserId() {
            return this.mUserId;
        }
    }
}
