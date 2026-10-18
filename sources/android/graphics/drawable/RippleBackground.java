package android.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.FloatProperty;
import android.view.animation.LinearInterpolator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class RippleBackground extends RippleComponent {
    private static final TimeInterpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private static final BackgroundProperty OPACITY = new BackgroundProperty("opacity") { // from class: android.graphics.drawable.RippleBackground.1
        @Override // android.util.FloatProperty
        public void setValue(RippleBackground rippleBackground, float f) {
            rippleBackground.mOpacity = f;
            rippleBackground.invalidateSelf();
        }

        @Override // android.util.Property
        public Float get(RippleBackground rippleBackground) {
            return Float.valueOf(rippleBackground.mOpacity);
        }
    };
    private static final int OPACITY_DURATION = 80;
    private ObjectAnimator mAnimator;
    private boolean mFocused;
    private boolean mHovered;
    private boolean mIsBounded;
    private float mOpacity;

    public RippleBackground(RippleDrawable rippleDrawable, Rect rect, boolean z) {
        super(rippleDrawable, rect);
        this.mOpacity = 0.0f;
        this.mFocused = false;
        this.mHovered = false;
        this.mIsBounded = z;
    }

    public boolean isVisible() {
        return this.mOpacity > 0.0f;
    }

    public void draw(Canvas canvas, Paint paint) {
        int alpha = paint.getAlpha();
        int min = Math.min((int) ((alpha * this.mOpacity) + 0.5f), 255);
        if (min > 0) {
            paint.setAlpha(min);
            canvas.drawCircle(0.0f, 0.0f, this.mTargetRadius, paint);
            paint.setAlpha(alpha);
        }
    }

    public void setState(boolean z, boolean z2, boolean z3) {
        if (!this.mFocused) {
            z = z && !z3;
        }
        if (!this.mHovered) {
            z2 = z2 && !z3;
        }
        if (this.mHovered == z2 && this.mFocused == z) {
            return;
        }
        this.mHovered = z2;
        this.mFocused = z;
        onStateChanged();
    }

    private void onStateChanged() {
        float f = this.mFocused ? 0.6f : this.mHovered ? 0.2f : 0.0f;
        if (this.mAnimator != null) {
            this.mAnimator.cancel();
            this.mAnimator = null;
        }
        this.mAnimator = ObjectAnimator.ofFloat(this, OPACITY, f);
        this.mAnimator.setDuration(80L);
        this.mAnimator.setInterpolator(LINEAR_INTERPOLATOR);
        this.mAnimator.start();
    }

    public void jumpToFinal() {
        if (this.mAnimator != null) {
            this.mAnimator.end();
            this.mAnimator = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class BackgroundProperty extends FloatProperty<RippleBackground> {
        public BackgroundProperty(String str) {
            super(str);
        }
    }
}
