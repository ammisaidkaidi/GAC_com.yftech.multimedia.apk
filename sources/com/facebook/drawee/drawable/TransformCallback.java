package com.facebook.drawee.drawable;

import android.graphics.Matrix;
import android.graphics.RectF;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface TransformCallback {
    void getRootBounds(RectF rectF);

    void getTransform(Matrix matrix);
}
