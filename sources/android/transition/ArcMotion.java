package android.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.util.AttributeSet;
import com.android.internal.R;

/* loaded from: /home/user/work/dex/classes2.dex */
public class ArcMotion extends PathMotion {
    private static final float DEFAULT_MAX_ANGLE_DEGREES = 70.0f;
    private static final float DEFAULT_MAX_TANGENT = (float) Math.tan(Math.toRadians(35.0d));
    private static final float DEFAULT_MIN_ANGLE_DEGREES = 0.0f;
    private float mMaximumAngle;
    private float mMaximumTangent;
    private float mMinimumHorizontalAngle;
    private float mMinimumHorizontalTangent;
    private float mMinimumVerticalAngle;
    private float mMinimumVerticalTangent;

    public ArcMotion() {
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
    }

    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ArcMotion);
        setMinimumVerticalAngle(obtainStyledAttributes.getFloat(1, 0.0f));
        setMinimumHorizontalAngle(obtainStyledAttributes.getFloat(0, 0.0f));
        setMaximumAngle(obtainStyledAttributes.getFloat(2, DEFAULT_MAX_ANGLE_DEGREES));
        obtainStyledAttributes.recycle();
    }

    public void setMinimumHorizontalAngle(float f) {
        this.mMinimumHorizontalAngle = f;
        this.mMinimumHorizontalTangent = toTangent(f);
    }

    public float getMinimumHorizontalAngle() {
        return this.mMinimumHorizontalAngle;
    }

    public void setMinimumVerticalAngle(float f) {
        this.mMinimumVerticalAngle = f;
        this.mMinimumVerticalTangent = toTangent(f);
    }

    public float getMinimumVerticalAngle() {
        return this.mMinimumVerticalAngle;
    }

    public void setMaximumAngle(float f) {
        this.mMaximumAngle = f;
        this.mMaximumTangent = toTangent(f);
    }

    public float getMaximumAngle() {
        return this.mMaximumAngle;
    }

    private static float toTangent(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0  */
    @Override // android.transition.PathMotion
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Path getPath(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        Path path = new Path();
        path.moveTo(f, f2);
        float f10 = f3 - f;
        float f11 = f4 - f2;
        float f12 = (f10 * f10) + (f11 * f11);
        float f13 = (f + f3) / 2.0f;
        float f14 = (f2 + f4) / 2.0f;
        float f15 = 0.25f * f12;
        boolean z = f2 > f4;
        if (f11 == 0.0f) {
            f6 = (Math.abs(f10) * 0.5f * this.mMinimumHorizontalTangent) + f14;
            f5 = f13;
        } else if (f10 == 0.0f) {
            f5 = (Math.abs(f11) * 0.5f * this.mMinimumVerticalTangent) + f13;
            f6 = f14;
        } else {
            if (Math.abs(f10) < Math.abs(f11)) {
                float abs = Math.abs(f12 / (f11 * 2.0f));
                if (z) {
                    f6 = f4 + abs;
                    f5 = f3;
                } else {
                    f6 = abs + f2;
                    f5 = f;
                }
                f7 = this.mMinimumVerticalTangent * f15 * this.mMinimumVerticalTangent;
            } else {
                float f16 = f12 / (f10 * 2.0f);
                if (z) {
                    f5 = f + f16;
                    f6 = f2;
                } else {
                    f5 = f3 - f16;
                    f6 = f4;
                }
                f7 = this.mMinimumHorizontalTangent * f15 * this.mMinimumHorizontalTangent;
            }
            float f17 = f13 - f5;
            float f18 = f14 - f6;
            f8 = (f17 * f17) + (f18 * f18);
            f9 = this.mMaximumTangent * f15 * this.mMaximumTangent;
            if (f8 == 0.0f && f8 < f7) {
                f9 = f7;
            } else if (f8 <= f9) {
                f9 = 0.0f;
            }
            if (f9 != 0.0f) {
                float sqrt = (float) Math.sqrt(f9 / f8);
                f5 = ((f5 - f13) * sqrt) + f13;
                f6 = f14 + (sqrt * (f6 - f14));
            }
            path.cubicTo((f + f5) / 2.0f, (f2 + f6) / 2.0f, (f5 + f3) / 2.0f, (f6 + f4) / 2.0f, f3, f4);
            return path;
        }
        f7 = 0.0f;
        float f172 = f13 - f5;
        float f182 = f14 - f6;
        f8 = (f172 * f172) + (f182 * f182);
        f9 = this.mMaximumTangent * f15 * this.mMaximumTangent;
        if (f8 == 0.0f) {
        }
        if (f8 <= f9) {
        }
        if (f9 != 0.0f) {
        }
        path.cubicTo((f + f5) / 2.0f, (f2 + f6) / 2.0f, (f5 + f3) / 2.0f, (f6 + f4) / 2.0f, f3, f4);
        return path;
    }
}
