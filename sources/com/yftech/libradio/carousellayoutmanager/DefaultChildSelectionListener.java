package com.yftech.libradio.carousellayoutmanager;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes4.dex */
public class DefaultChildSelectionListener extends CarouselChildSelectionListener {

    @NonNull
    private final OnCenterItemClickListener mOnCenterItemClickListener;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnCenterItemClickListener {
        void onCenterItemClicked(@NonNull RecyclerView recyclerView, @NonNull CarouselLayoutManager carouselLayoutManager, @NonNull View view);
    }

    protected DefaultChildSelectionListener(@NonNull OnCenterItemClickListener onCenterItemClickListener, @NonNull RecyclerView recyclerView, @NonNull CarouselLayoutManager carouselLayoutManager) {
        super(recyclerView, carouselLayoutManager);
        this.mOnCenterItemClickListener = onCenterItemClickListener;
    }

    @Override // com.yftech.libradio.carousellayoutmanager.CarouselChildSelectionListener
    protected void onCenterItemClicked(@NonNull RecyclerView recyclerView, @NonNull CarouselLayoutManager carouselLayoutManager, @NonNull View view) {
        this.mOnCenterItemClickListener.onCenterItemClicked(recyclerView, carouselLayoutManager, view);
    }

    @Override // com.yftech.libradio.carousellayoutmanager.CarouselChildSelectionListener
    protected void onBackItemClicked(@NonNull RecyclerView recyclerView, @NonNull CarouselLayoutManager carouselLayoutManager, @NonNull View view) {
        recyclerView.smoothScrollToPosition(carouselLayoutManager.getPosition(view));
    }

    public static DefaultChildSelectionListener initCenterItemListener(@NonNull OnCenterItemClickListener onCenterItemClickListener, @NonNull RecyclerView recyclerView, @NonNull CarouselLayoutManager carouselLayoutManager) {
        return new DefaultChildSelectionListener(onCenterItemClickListener, recyclerView, carouselLayoutManager);
    }
}
