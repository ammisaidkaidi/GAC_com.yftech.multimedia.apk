package android.os;

import android.util.AndroidRuntimeException;

/* loaded from: /home/user/work/dex/classes2.dex */
public class BadParcelableException extends AndroidRuntimeException {
    public BadParcelableException(String str) {
        super(str);
    }

    public BadParcelableException(Exception exc) {
        super(exc);
    }
}
