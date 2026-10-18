package android.os.strictmode;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class LeakedClosableViolation extends Violation {
    public LeakedClosableViolation(String str, Throwable th) {
        super(str);
        initCause(th);
    }
}
