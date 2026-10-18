package android.util;

/* loaded from: /home/user/work/dex/classes2.dex */
public class AndroidException extends Exception {
    public AndroidException() {
    }

    public AndroidException(String str) {
        super(str);
    }

    public AndroidException(String str, Throwable th) {
        super(str, th);
    }

    public AndroidException(Exception exc) {
        super(exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AndroidException(String str, Throwable th, boolean z, boolean z2) {
        super(str, th, z, z2);
    }
}
