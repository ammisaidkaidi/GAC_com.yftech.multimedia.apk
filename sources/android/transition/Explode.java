package android.transition;

import android.R;
import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* loaded from: /home/user/work/dex/classes2.dex */
public class Explode extends Visibility {
    private static final String PROPNAME_SCREEN_BOUNDS = "android:explode:screenBounds";
    private static final String TAG = "Explode";
    private int[] mTempLoc;
    private static final TimeInterpolator sDecelerate = new DecelerateInterpolator();
    private static final TimeInterpolator sAccelerate = new AccelerateInterpolator();

    public Explode() {
        this.mTempLoc = new int[2];
        setPropagation(new CircularPropagation());
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLoc = new int[2];
        setPropagation(new CircularPropagation());
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        view.getLocationOnScreen(this.mTempLoc);
        int i = this.mTempLoc[0];
        int i2 = this.mTempLoc[1];
        transitionValues.values.put(PROPNAME_SCREEN_BOUNDS, new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // android.transition.Visibility, android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues2.values.get(PROPNAME_SCREEN_BOUNDS);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        calculateOut(viewGroup, rect, this.mTempLoc);
        return TranslationAnimationCreator.createAnimation(view, transitionValues2, rect.left, rect.top, translationX + this.mTempLoc[0], translationY + this.mTempLoc[1], translationX, translationY, sDecelerate, this);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f;
        float f2;
        if (transitionValues == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues.values.get(PROPNAME_SCREEN_BOUNDS);
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) transitionValues.view.getTag(R.id.single);
        if (iArr != null) {
            f = (iArr[0] - rect.left) + translationX;
            f2 = (iArr[1] - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f = translationX;
            f2 = translationY;
        }
        calculateOut(viewGroup, rect, this.mTempLoc);
        return TranslationAnimationCreator.createAnimation(view, transitionValues, i, i2, translationX, translationY, f + this.mTempLoc[0], f2 + this.mTempLoc[1], sAccelerate, this);
    }

    private void calculateOut(View view, Rect rect, int[] iArr) {
        int centerY;
        int i;
        double d;
        double d2;
        view.getLocationOnScreen(this.mTempLoc);
        int i2 = this.mTempLoc[0];
        int i3 = this.mTempLoc[1];
        Rect epicenter = getEpicenter();
        if (epicenter == null) {
            i = (view.getWidth() / 2) + i2 + Math.round(view.getTranslationX());
            centerY = (view.getHeight() / 2) + i3 + Math.round(view.getTranslationY());
        } else {
            int centerX = epicenter.centerX();
            centerY = epicenter.centerY();
            i = centerX;
        }
        double centerX2 = rect.centerX() - i;
        double centerY2 = rect.centerY() - centerY;
        if (centerX2 == 0.0d && centerY2 == 0.0d) {
            d = (Math.random() * 2.0d) - 1.0d;
            d2 = (Math.random() * 2.0d) - 1.0d;
        } else {
            d = centerX2;
            d2 = centerY2;
        }
        double hypot = Math.hypot(d, d2);
        double calculateMaxDistance = calculateMaxDistance(view, i - i2, centerY - i3);
        iArr[0] = (int) Math.round((d / hypot) * calculateMaxDistance);
        iArr[1] = (int) Math.round(calculateMaxDistance * (d2 / hypot));
    }

    private static double calculateMaxDistance(View view, int i, int i2) {
        return Math.hypot(Math.max(i, view.getWidth() - i), Math.max(i2, view.getHeight() - i2));
    }
}
