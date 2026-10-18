package android.telephony.mbms;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

/* loaded from: /home/user/work/dex/classes2.dex */
public class MbmsDownloadSessionCallback {

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    private @interface DownloadError {
    }

    public void onError(int i, String str) {
    }

    public void onFileServicesUpdated(List<FileServiceInfo> list) {
    }

    public void onMiddlewareReady() {
    }
}
