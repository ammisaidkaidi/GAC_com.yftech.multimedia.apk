package android.net.lowpan;

/* loaded from: /home/user/work/dex/classes.dex */
public class OperationCanceledException extends LowpanException {
    public OperationCanceledException() {
    }

    public OperationCanceledException(String str) {
        super(str);
    }

    public OperationCanceledException(String str, Throwable th) {
        super(str, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OperationCanceledException(Exception exc) {
        super(exc);
    }
}
