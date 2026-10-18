package android.webkit;

import android.annotation.SystemApi;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class WebResourceError {
    public abstract CharSequence getDescription();

    public abstract int getErrorCode();

    @SystemApi
    public WebResourceError() {
    }
}
