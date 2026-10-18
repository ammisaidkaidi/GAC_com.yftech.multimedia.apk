package android.graphics;

import android.graphics.PorterDuff;

/* loaded from: /home/user/work/dex/classes.dex */
public class PorterDuffXfermode extends Xfermode {
    public PorterDuffXfermode(PorterDuff.Mode mode) {
        this.porterDuffMode = mode.nativeInt;
    }
}
