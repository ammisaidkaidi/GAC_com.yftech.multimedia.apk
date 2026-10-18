package android.net.lowpan;

/* loaded from: /home/user/work/dex/classes.dex */
public class JoinFailedException extends LowpanException {
    public JoinFailedException() {
    }

    public JoinFailedException(String str) {
        super(str);
    }

    public JoinFailedException(String str, Throwable th) {
        super(str, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JoinFailedException(Exception exc) {
        super(exc);
    }
}
