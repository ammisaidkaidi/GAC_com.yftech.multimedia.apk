package android.util;

import com.android.internal.util.Preconditions;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class SizeF {
    private final float mHeight;
    private final float mWidth;

    public SizeF(float f, float f2) {
        this.mWidth = Preconditions.checkArgumentFinite(f, "width");
        this.mHeight = Preconditions.checkArgumentFinite(f2, "height");
    }

    public float getWidth() {
        return this.mWidth;
    }

    public float getHeight() {
        return this.mHeight;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SizeF)) {
            return false;
        }
        SizeF sizeF = (SizeF) obj;
        return this.mWidth == sizeF.mWidth && this.mHeight == sizeF.mHeight;
    }

    public String toString() {
        return this.mWidth + "x" + this.mHeight;
    }

    private static NumberFormatException invalidSizeF(String str) {
        throw new NumberFormatException("Invalid SizeF: \"" + str + "\"");
    }

    public static SizeF parseSizeF(String str) throws NumberFormatException {
        Preconditions.checkNotNull(str, "string must not be null");
        int indexOf = str.indexOf(42);
        if (indexOf < 0) {
            indexOf = str.indexOf(120);
        }
        if (indexOf < 0) {
            throw invalidSizeF(str);
        }
        try {
            return new SizeF(Float.parseFloat(str.substring(0, indexOf)), Float.parseFloat(str.substring(indexOf + 1)));
        } catch (NumberFormatException unused) {
            throw invalidSizeF(str);
        } catch (IllegalArgumentException unused2) {
            throw invalidSizeF(str);
        }
    }

    public int hashCode() {
        return Float.floatToIntBits(this.mHeight) ^ Float.floatToIntBits(this.mWidth);
    }
}
