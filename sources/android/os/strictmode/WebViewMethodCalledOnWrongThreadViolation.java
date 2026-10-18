package android.os.strictmode;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class WebViewMethodCalledOnWrongThreadViolation extends Violation {
    public WebViewMethodCalledOnWrongThreadViolation(Throwable th) {
        super(null);
        setStackTrace(th.getStackTrace());
    }
}
