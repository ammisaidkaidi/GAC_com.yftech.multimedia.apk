package android.view.animation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.internal.R;
import com.android.internal.view.animation.HasNativeInterpolator;
import com.android.internal.view.animation.NativeInterpolatorFactory;
import com.android.internal.view.animation.NativeInterpolatorFactoryHelper;

@HasNativeInterpolator
/* loaded from: /home/user/work/dex/classes2.dex */
public class AnticipateOvershootInterpolator extends BaseInterpolator implements NativeInterpolatorFactory {
    private final float mTension;

    private static float a(float f, float f2) {
        return f * f * (((1.0f + f2) * f) - f2);
    }

    private static float o(float f, float f2) {
        return f * f * (((1.0f + f2) * f) + f2);
    }

    public AnticipateOvershootInterpolator() {
        this.mTension = 3.0f;
    }

    public AnticipateOvershootInterpolator(float f) {
        this.mTension = f * 1.5f;
    }

    public AnticipateOvershootInterpolator(float f, float f2) {
        this.mTension = f * f2;
    }

    public AnticipateOvershootInterpolator(Context context, AttributeSet attributeSet) {
        this(context.getResources(), context.getTheme(), attributeSet);
    }

    public AnticipateOvershootInterpolator(Resources resources, Resources.Theme theme, AttributeSet attributeSet) {
        TypedArray obtainAttributes;
        if (theme != null) {
            obtainAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.AnticipateOvershootInterpolator, 0, 0);
        } else {
            obtainAttributes = resources.obtainAttributes(attributeSet, R.styleable.AnticipateOvershootInterpolator);
        }
        this.mTension = obtainAttributes.getFloat(0, 2.0f) * obtainAttributes.getFloat(1, 1.5f);
        setChangingConfiguration(obtainAttributes.getChangingConfigurations());
        obtainAttributes.recycle();
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f < 0.5f) {
            return a(f * 2.0f, this.mTension) * 0.5f;
        }
        return (o((f * 2.0f) - 2.0f, this.mTension) + 2.0f) * 0.5f;
    }

    public long createNativeInterpolator() {
        return NativeInterpolatorFactoryHelper.createAnticipateOvershootInterpolator(this.mTension);
    }
}
