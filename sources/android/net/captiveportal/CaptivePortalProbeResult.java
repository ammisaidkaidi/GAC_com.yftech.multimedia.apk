package android.net.captiveportal;

/* loaded from: /home/user/work/dex/classes.dex */
public final class CaptivePortalProbeResult {
    public static final int PORTAL_CODE = 302;
    public static final int SUCCESS_CODE = 204;
    public final String detectUrl;
    private final int mHttpResponseCode;
    public final CaptivePortalProbeSpec probeSpec;
    public final String redirectUrl;
    public static final int FAILED_CODE = 599;
    public static final CaptivePortalProbeResult FAILED = new CaptivePortalProbeResult(FAILED_CODE);
    public static final CaptivePortalProbeResult SUCCESS = new CaptivePortalProbeResult(204);

    public CaptivePortalProbeResult(int i) {
        this(i, null, null);
    }

    public CaptivePortalProbeResult(int i, String str, String str2) {
        this(i, str, str2, null);
    }

    public CaptivePortalProbeResult(int i, String str, String str2, CaptivePortalProbeSpec captivePortalProbeSpec) {
        this.mHttpResponseCode = i;
        this.redirectUrl = str;
        this.detectUrl = str2;
        this.probeSpec = captivePortalProbeSpec;
    }

    public boolean isSuccessful() {
        return this.mHttpResponseCode == 204;
    }

    public boolean isPortal() {
        return !isSuccessful() && this.mHttpResponseCode >= 200 && this.mHttpResponseCode <= 399;
    }

    public boolean isFailed() {
        return (isSuccessful() || isPortal()) ? false : true;
    }
}
