package android.os.strictmode;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class ServiceConnectionLeakedViolation extends Violation {
    public ServiceConnectionLeakedViolation(Throwable th) {
        super(null);
        setStackTrace(th.getStackTrace());
    }
}
