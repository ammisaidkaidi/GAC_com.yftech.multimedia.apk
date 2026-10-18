package com.yftech.car.widget.media.utils;

import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import com.yftech.car.widget.media.photo.photoview.PhotoView;

/* loaded from: /home/user/work/dex/classes3.dex */
public class AnimationUtil {
    private static int animCount;
    public static float currentRotation;

    static /* synthetic */ int access$008() {
        int i = animCount;
        animCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$010() {
        int i = animCount;
        animCount = i - 1;
        return i;
    }

    public static void showAlphaAnimation(View view, int i, boolean z) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
        alphaAnimation.setDuration(i);
        alphaAnimation.setFillAfter(true);
        view.setAnimation(alphaAnimation);
    }

    public static void showTranslateAnimation(View view, int i, float f, float f2, float f3, float f4) {
        TranslateAnimation translateAnimation = new TranslateAnimation(f, f2, f3, f4);
        translateAnimation.setDuration(i);
        translateAnimation.setFillAfter(true);
        view.startAnimation(translateAnimation);
    }

    public static void setRotationAnimation(View view, int i) {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setDuration(i);
        view.startAnimation(rotateAnimation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void imageRotateAnimation(View view, boolean z) {
        if (animCount == 0) {
            if (z) {
                if (currentRotation != 270.0f) {
                    currentRotation += 90.0f;
                } else {
                    currentRotation = 0.0f;
                }
            } else if (currentRotation == 0.0f) {
                currentRotation = 270.0f;
            } else {
                currentRotation -= 90.0f;
            }
            if (view instanceof PhotoView) {
                ((PhotoView) view).setRotationLocation(currentRotation, r0.getWidth() / 2, r0.getHeight() / 2);
            } else {
                view.setRotation(currentRotation);
            }
            RotateAnimation rotateAnimation = new RotateAnimation(z ? -90.0f : 90.0f, 0.0f, 1, 0.5f, 1, 0.5f);
            rotateAnimation.setInterpolator(new LinearInterpolator());
            rotateAnimation.setDuration(700L);
            rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.yftech.car.widget.media.utils.AnimationUtil.1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    AnimationUtil.access$008();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    AnimationUtil.access$010();
                }
            });
            view.startAnimation(rotateAnimation);
        }
    }

    public static void imageResetRotate(View view) {
        if (view != null) {
            currentRotation = 0.0f;
            view.setRotation(currentRotation);
        }
    }
}
