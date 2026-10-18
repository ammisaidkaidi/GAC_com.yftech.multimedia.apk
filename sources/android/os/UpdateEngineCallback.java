package android.os;

import android.annotation.SystemApi;

@SystemApi
/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class UpdateEngineCallback {
    @SystemApi
    public abstract void onPayloadApplicationComplete(int i);

    @SystemApi
    public abstract void onStatusUpdate(int i, float f);
}
