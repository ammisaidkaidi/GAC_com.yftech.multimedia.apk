package android.os.strictmode;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class IntentReceiverLeakedViolation extends Violation {
    public IntentReceiverLeakedViolation(Throwable th) {
        super(null);
        setStackTrace(th.getStackTrace());
    }
}
