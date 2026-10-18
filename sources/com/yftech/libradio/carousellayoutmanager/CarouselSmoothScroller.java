package com.yftech.libradio.carousellayoutmanager;

import android.graphics.PointF;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarouselSmoothScroller {
    public CarouselSmoothScroller(@NonNull RecyclerView.State state, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("position can't be less then 0. position is : " + i);
        }
        if (i < state.getItemCount()) {
            return;
        }
        throw new IllegalArgumentException("position can't be great then adapter items count. position is : " + i);
    }

    public PointF computeScrollVectorForPosition(int i, @NonNull CarouselLayoutManager carouselLayoutManager) {
        return carouselLayoutManager.computeScrollVectorForPosition(i);
    }

    public int calculateDyToMakeVisible(View view, @NonNull CarouselLayoutManager carouselLayoutManager) {
        if (carouselLayoutManager.canScrollVertically()) {
            return carouselLayoutManager.getOffsetForCurrentView(view);
        }
        return 0;
    }

    public int calculateDxToMakeVisible(View view, @NonNull CarouselLayoutManager carouselLayoutManager) {
        if (carouselLayoutManager.canScrollHorizontally()) {
            return carouselLayoutManager.getOffsetForCurrentView(view);
        }
        return 0;
    }
}
