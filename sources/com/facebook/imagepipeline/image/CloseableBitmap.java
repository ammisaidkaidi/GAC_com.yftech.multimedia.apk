package com.facebook.imagepipeline.image;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class CloseableBitmap extends CloseableImage {
    public abstract Bitmap getUnderlyingBitmap();
}
