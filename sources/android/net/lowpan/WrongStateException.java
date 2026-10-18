package android.net.lowpan;

/* loaded from: /home/user/work/dex/classes.dex */
public class WrongStateException extends LowpanException {
    public WrongStateException() {
    }

    public WrongStateException(String str) {
        super(str);
    }

    public WrongStateException(String str, Throwable th) {
        super(str, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WrongStateException(Exception exc) {
        super(exc);
    }
}
