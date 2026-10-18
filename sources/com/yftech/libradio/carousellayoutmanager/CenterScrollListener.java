package com.yftech.libradio.carousellayoutmanager;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CenterScrollListener extends RecyclerView.OnScrollListener {
    private boolean mAutoSet = true;

    public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
        super.onScrollStateChanged(recyclerView, i);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (!(layoutManager instanceof CarouselLayoutManager)) {
            this.mAutoSet = true;
            return;
        }
        CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) layoutManager;
        if (!this.mAutoSet && i == 0) {
            int offsetCenterView = carouselLayoutManager.getOffsetCenterView();
            if (carouselLayoutManager.getOrientation() == 0) {
                recyclerView.smoothScrollBy(offsetCenterView, 0);
            } else {
                recyclerView.smoothScrollBy(0, offsetCenterView);
            }
            this.mAutoSet = true;
        }
        if (1 == i || 2 == i) {
            this.mAutoSet = false;
        }
    }
}
