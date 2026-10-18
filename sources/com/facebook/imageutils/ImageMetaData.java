package com.facebook.imageutils;

import android.graphics.ColorSpace;
import android.util.Pair;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class ImageMetaData {

    @Nullable
    private final ColorSpace mColorSpace;

    @Nullable
    private final Pair<Integer, Integer> mDimensions;

    public ImageMetaData(int i, int i2, @Nullable ColorSpace colorSpace) {
        this.mDimensions = (i == -1 || i2 == -1) ? null : new Pair<>(Integer.valueOf(i), Integer.valueOf(i2));
        this.mColorSpace = colorSpace;
    }

    @Nullable
    public Pair<Integer, Integer> getDimensions() {
        return this.mDimensions;
    }

    @Nullable
    public ColorSpace getColorSpace() {
        return this.mColorSpace;
    }
}
