package com.yftech.libradio.carousellayoutmanager;

import android.view.View;
import androidx.annotation.NonNull;
import com.yftech.libradio.carousellayoutmanager.CarouselLayoutManager;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarouselZoomPostLayoutListener extends CarouselLayoutManager.PostLayoutListener {
    private final float mScaleMultiplier;

    public CarouselZoomPostLayoutListener() {
        this(0.22f);
    }

    public CarouselZoomPostLayoutListener(float f) {
        this.mScaleMultiplier = f;
    }

    @Override // com.yftech.libradio.carousellayoutmanager.CarouselLayoutManager.PostLayoutListener
    public ItemTransformation transformChild(@NonNull View view, float f, int i) {
        float f2;
        float f3;
        float abs = 1.0f - (this.mScaleMultiplier * Math.abs(f));
        if (1 == i) {
            f2 = Math.signum(f) * ((view.getMeasuredHeight() * (1.0f - abs)) / 2.0f);
            f3 = 0.0f;
        } else {
            float measuredWidth = (view.getMeasuredWidth() * (1.0f - abs)) / 2.0f;
            float signum = Math.signum(f) * measuredWidth;
            f2 = (-measuredWidth) * 1.3f;
            f3 = signum;
        }
        return new ItemTransformation(abs, abs, f3, f2);
    }
}
