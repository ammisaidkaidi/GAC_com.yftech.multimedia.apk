package com.facebook.imagepipeline.transformation;

import android.graphics.Bitmap;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface BitmapTransformation {
    boolean modifiesTransparency();

    void transform(Bitmap bitmap);
}
