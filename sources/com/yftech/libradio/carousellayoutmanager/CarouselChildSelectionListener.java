package com.yftech.libradio.carousellayoutmanager;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes4.dex */
public abstract class CarouselChildSelectionListener {

    @NonNull
    private final CarouselLayoutManager mCarouselLayoutManager;
    private final View.OnClickListener mOnClickListener = new View.OnClickListener() { // from class: com.yftech.libradio.carousellayoutmanager.CarouselChildSelectionListener.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CarouselChildSelectionListener.this.mRecyclerView.getChildViewHolder(view).getAdapterPosition() == CarouselChildSelectionListener.this.mCarouselLayoutManager.getCenterItemPosition()) {
                CarouselChildSelectionListener.this.onCenterItemClicked(CarouselChildSelectionListener.this.mRecyclerView, CarouselChildSelectionListener.this.mCarouselLayoutManager, view);
            } else {
                CarouselChildSelectionListener.this.onBackItemClicked(CarouselChildSelectionListener.this.mRecyclerView, CarouselChildSelectionListener.this.mCarouselLayoutManager, view);
            }
        }
    };

    @NonNull
    private final RecyclerView mRecyclerView;

    protected abstract void onBackItemClicked(@NonNull RecyclerView recyclerView, @NonNull CarouselLayoutManager carouselLayoutManager, @NonNull View view);

    protected abstract void onCenterItemClicked(@NonNull RecyclerView recyclerView, @NonNull CarouselLayoutManager carouselLayoutManager, @NonNull View view);

    /* JADX INFO: Access modifiers changed from: protected */
    public CarouselChildSelectionListener(@NonNull RecyclerView recyclerView, @NonNull CarouselLayoutManager carouselLayoutManager) {
        this.mRecyclerView = recyclerView;
        this.mCarouselLayoutManager = carouselLayoutManager;
        this.mRecyclerView.addOnChildAttachStateChangeListener(new RecyclerView.OnChildAttachStateChangeListener() { // from class: com.yftech.libradio.carousellayoutmanager.CarouselChildSelectionListener.2
            public void onChildViewAttachedToWindow(@NonNull View view) {
                view.setOnClickListener(CarouselChildSelectionListener.this.mOnClickListener);
            }

            public void onChildViewDetachedFromWindow(@NonNull View view) {
                view.setOnClickListener(null);
            }
        });
    }
}
