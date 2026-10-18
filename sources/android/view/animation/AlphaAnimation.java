package android.view.animation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.internal.R;

/* loaded from: /home/user/work/dex/classes2.dex */
public class AlphaAnimation extends Animation {
    private float mFromAlpha;
    private float mToAlpha;

    @Override // android.view.animation.Animation
    public boolean hasAlpha() {
        return true;
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return false;
    }

    @Override // android.view.animation.Animation
    public boolean willChangeTransformationMatrix() {
        return false;
    }

    public AlphaAnimation(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AlphaAnimation);
        this.mFromAlpha = obtainStyledAttributes.getFloat(0, 1.0f);
        this.mToAlpha = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
    }

    public AlphaAnimation(float f, float f2) {
        this.mFromAlpha = f;
        this.mToAlpha = f2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        float f2 = this.mFromAlpha;
        transformation.setAlpha(f2 + ((this.mToAlpha - f2) * f));
    }
}
