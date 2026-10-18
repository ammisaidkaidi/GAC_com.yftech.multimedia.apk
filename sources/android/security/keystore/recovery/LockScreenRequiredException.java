package android.security.keystore.recovery;

import android.annotation.SystemApi;
import java.security.GeneralSecurityException;

@SystemApi
/* loaded from: /home/user/work/dex/classes2.dex */
public class LockScreenRequiredException extends GeneralSecurityException {
    public LockScreenRequiredException(String str) {
        super(str);
    }
}
