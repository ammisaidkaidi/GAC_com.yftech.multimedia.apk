package com.yftech.car.widget.media.photo.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import androidx.viewpager.widget.ViewPager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ZoomOutPageTransformer extends Animation implements ViewPager.PageTransformer {
    private static final float MIN_ALPHA = 0.7f;
    private static final float MIN_SCALE = 0.8f;
    private Context context;

    public ZoomOutPageTransformer() {
        setDuration(500L);
    }

    @Override // androidx.viewpager.widget.ViewPager.PageTransformer
    public void transformPage(View view, float f) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (f < -1.0f) {
            view.setAlpha(0.0f);
            return;
        }
        if (f <= 1.0f) {
            float max = Math.max(MIN_SCALE, 1.0f - Math.abs(f));
            float f2 = 1.0f - max;
            float f3 = (height * f2) / 2.0f;
            float f4 = (width * f2) / 2.0f;
            if (f < 0.0f) {
                view.setTranslationX(f4 - (f3 / 2.0f));
            } else {
                view.setTranslationX((-f4) + (f3 / 2.0f));
            }
            view.setScaleX(max);
            view.setScaleY(max);
            view.setAlpha((((max - MIN_SCALE) / 0.19999999f) * 0.3f) + MIN_ALPHA);
        }
    }

    public void animator_moveX(View view, float f, float f2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "x", f, f2);
        ofFloat.setDuration(500L);
        ofFloat.start();
    }
}
