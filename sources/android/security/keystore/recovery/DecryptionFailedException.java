package android.security.keystore.recovery;

import android.annotation.SystemApi;
import java.security.GeneralSecurityException;

@SystemApi
/* loaded from: /home/user/work/dex/classes2.dex */
public class DecryptionFailedException extends GeneralSecurityException {
    public DecryptionFailedException(String str) {
        super(str);
    }
}
