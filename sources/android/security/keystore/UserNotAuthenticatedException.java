package android.security.keystore;

import java.security.InvalidKeyException;

/* loaded from: /home/user/work/dex/classes2.dex */
public class UserNotAuthenticatedException extends InvalidKeyException {
    public UserNotAuthenticatedException() {
        super("User not authenticated");
    }

    public UserNotAuthenticatedException(String str) {
        super(str);
    }

    public UserNotAuthenticatedException(String str, Throwable th) {
        super(str, th);
    }
}
