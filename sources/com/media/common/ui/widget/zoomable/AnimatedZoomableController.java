package com.media.common.ui.widget.zoomable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.animation.DecelerateInterpolator;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.logging.FLog;
import com.facebook.infer.annotation.Nullsafe;
import com.media.common.ui.widget.zoomable.gestures.TransformGestureDetector;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: /home/user/work/dex/classes3.dex */
public class AnimatedZoomableController extends AbstractAnimatedZoomableController {
    private static final Class<?> TAG = AnimatedZoomableController.class;
    private final ValueAnimator mValueAnimator;

    public static AnimatedZoomableController newInstance() {
        return new AnimatedZoomableController(TransformGestureDetector.newInstance());
    }

    @SuppressLint({"NewApi"})
    public AnimatedZoomableController(TransformGestureDetector transformGestureDetector) {
        super(transformGestureDetector);
        this.mValueAnimator = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mValueAnimator.setInterpolator(new DecelerateInterpolator());
    }

    @Override // com.media.common.ui.widget.zoomable.AbstractAnimatedZoomableController
    @SuppressLint({"NewApi"})
    public void setTransformAnimated(Matrix matrix, long j, @Nullable final Runnable runnable) {
        FLog.v(getLogTag(), "setTransformAnimated: duration %d ms", Long.valueOf(j));
        stopAnimation();
        Preconditions.checkArgument(Boolean.valueOf(j > 0));
        Preconditions.checkState(!isAnimating());
        setAnimating(true);
        this.mValueAnimator.setDuration(j);
        getTransform().getValues(getStartValues());
        matrix.getValues(getStopValues());
        this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.media.common.ui.widget.zoomable.AnimatedZoomableController.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimatedZoomableController.this.calculateInterpolation(AnimatedZoomableController.this.getWorkingTransform(), ((Float) valueAnimator.getAnimatedValue()).floatValue());
                AnimatedZoomableController.super.setTransform(AnimatedZoomableController.this.getWorkingTransform());
            }
        });
        this.mValueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.media.common.ui.widget.zoomable.AnimatedZoomableController.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                FLog.v(AnimatedZoomableController.this.getLogTag(), "setTransformAnimated: animation cancelled");
                onAnimationStopped();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                FLog.v(AnimatedZoomableController.this.getLogTag(), "setTransformAnimated: animation finished");
                onAnimationStopped();
            }

            private void onAnimationStopped() {
                if (runnable != null) {
                    runnable.run();
                }
                AnimatedZoomableController.this.setAnimating(false);
                AnimatedZoomableController.this.getDetector().restartGesture();
            }
        });
        this.mValueAnimator.start();
    }

    @Override // com.media.common.ui.widget.zoomable.AbstractAnimatedZoomableController
    @SuppressLint({"NewApi"})
    public void stopAnimation() {
        if (isAnimating()) {
            FLog.v(getLogTag(), "stopAnimation");
            this.mValueAnimator.cancel();
            this.mValueAnimator.removeAllUpdateListeners();
            this.mValueAnimator.removeAllListeners();
        }
    }

    @Override // com.media.common.ui.widget.zoomable.AbstractAnimatedZoomableController
    protected Class<?> getLogTag() {
        return TAG;
    }
}
