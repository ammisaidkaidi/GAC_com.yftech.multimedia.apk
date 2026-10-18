package com.facebook.imagepipeline.common;

import com.facebook.common.internal.Preconditions;
import com.facebook.common.util.HashCodeUtil;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Locale;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class ResizeOptions {
    public static final float DEFAULT_ROUNDUP_FRACTION = 0.6666667f;
    public final int height;
    public final float maxBitmapSize;
    public final float roundUpFraction;
    public final int width;

    @Nullable
    public static ResizeOptions forDimensions(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return null;
        }
        return new ResizeOptions(i, i2);
    }

    @Nullable
    public static ResizeOptions forSquareSize(int i) {
        if (i <= 0) {
            return null;
        }
        return new ResizeOptions(i, i);
    }

    public ResizeOptions(int i, int i2) {
        this(i, i2, 2048.0f);
    }

    public ResizeOptions(int i, int i2, float f) {
        this(i, i2, f, 0.6666667f);
    }

    public ResizeOptions(int i, int i2, float f, float f2) {
        Preconditions.checkArgument(Boolean.valueOf(i > 0));
        Preconditions.checkArgument(Boolean.valueOf(i2 > 0));
        this.width = i;
        this.height = i2;
        this.maxBitmapSize = f;
        this.roundUpFraction = f2;
    }

    public int hashCode() {
        return HashCodeUtil.hashCode(this.width, this.height);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ResizeOptions)) {
            return false;
        }
        ResizeOptions resizeOptions = (ResizeOptions) obj;
        return this.width == resizeOptions.width && this.height == resizeOptions.height;
    }

    public String toString() {
        return String.format((Locale) null, "%dx%d", Integer.valueOf(this.width), Integer.valueOf(this.height));
    }
}
