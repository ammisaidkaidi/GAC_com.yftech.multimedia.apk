package android.os.strictmode;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class UntaggedSocketViolation extends Violation {
    public static final String MESSAGE = "Untagged socket detected; use TrafficStats.setThreadSocketTag() to track all network usage";

    public UntaggedSocketViolation() {
        super(MESSAGE);
    }
}
