package android.security.keystore;

import java.security.ProviderException;

/* loaded from: /home/user/work/dex/classes2.dex */
public class KeyStoreConnectException extends ProviderException {
    public KeyStoreConnectException() {
        super("Failed to communicate with keystore service");
    }
}
