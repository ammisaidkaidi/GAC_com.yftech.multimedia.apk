package com.yftech.car.widget.media.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.recyclerview.widget.GridLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.LinearLayoutManager;
import com.yftech.car.widget.media.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ScrollBarView extends View {
    private static final String TAG = "ScrollBarView";
    private int bacHeight;
    private int bacWidth;
    private int barHeight;
    private int barWidth;
    private int finishWidth;
    private boolean isDown;
    private OnScrollBarViewListener listener;
    private RecyclerView.AdapterDataObserver mAdapterDataObserver;
    private RecyclerView.ChildDrawingOrderCallback mChildDrawingOrderCallback;
    private GridLayoutManager mGridLayoutManager;
    private int mGroupHeight;
    private int mItemCountOffset;
    private int mItemHeight;
    private RecyclerView.LayoutManager mLayoutManager;
    private LinearLayoutManager mLinearLayoutManager;
    private int mMaxOffset;
    private int mMaxProgress;
    private RecyclerView.OnScrollListener mOnScrollListener;
    private int mProgress;
    private int mRecyclerId;
    private RecyclerView mRecyclerView;
    private int mScrollArea;
    private int mScrollBarHeightSize;
    private int mScrollBarHideRowSize;
    private int mShowItemCount;
    private Drawable pressedDrawable;
    private int startWidth;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnScrollBarViewListener {
        void onScroll(int i, boolean z);
    }

    public ScrollBarView(Context context) {
        super(context);
        this.mMaxProgress = 5;
        this.mShowItemCount = 5;
        this.mMaxOffset = 0;
        this.mItemCountOffset = 0;
        this.mRecyclerId = -1;
    }

    public ScrollBarView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMaxProgress = 5;
        this.mShowItemCount = 5;
        this.mMaxOffset = 0;
        this.mItemCountOffset = 0;
        this.mRecyclerId = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollBarView);
        this.pressedDrawable = obtainStyledAttributes.getDrawable(R.styleable.ScrollBarView_barColorSources);
        this.barWidth = (int) obtainStyledAttributes.getDimension(R.styleable.ScrollBarView_barWidth, 0.0f);
        this.barHeight = (int) obtainStyledAttributes.getDimension(R.styleable.ScrollBarView_barHeight, 0.0f);
        this.mMaxOffset = obtainStyledAttributes.getInt(R.styleable.ScrollBarView_maxOffset, 0);
        this.mItemCountOffset = obtainStyledAttributes.getInt(R.styleable.ScrollBarView_itemCountOffset, 0);
        this.mRecyclerId = obtainStyledAttributes.getResourceId(R.styleable.ScrollBarView_mRecyclerViewId, -1);
        this.mScrollBarHideRowSize = obtainStyledAttributes.getInt(R.styleable.ScrollBarView_scroll_bar_hide_row_size, 0);
        obtainStyledAttributes.recycle();
    }

    public void setBarDrawableSources(int i) {
        this.pressedDrawable = getContext().getDrawable(i);
    }

    public void setBarColorSources(int i) {
        this.pressedDrawable = new ColorDrawable(getContext().getColor(i));
    }

    public void setBarWidth(int i) {
        this.barWidth = i;
        setBarWidthStartFinishPosition();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.bacWidth = i;
        this.bacHeight = i2;
        setBarWidthStartFinishPosition();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        ViewParent parent = getParent();
        if (this.mRecyclerId != -1 && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            this.mRecyclerView = (RecyclerView) viewGroup.findViewById(this.mRecyclerId);
            if (this.mRecyclerView == null) {
                ViewParent parent2 = viewGroup.getParent();
                while (parent2 instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) parent2;
                    this.mRecyclerView = (RecyclerView) viewGroup2.findViewById(this.mRecyclerId);
                    if (this.mRecyclerView != null) {
                        break;
                    } else {
                        parent2 = viewGroup2.getParent();
                    }
                }
            }
        }
        if (this.mRecyclerView == null) {
            if (parent instanceof ViewGroup) {
                ViewGroup viewGroup3 = (ViewGroup) parent;
                int i3 = 0;
                while (true) {
                    if (i3 >= viewGroup3.getChildCount()) {
                        break;
                    }
                    View childAt = viewGroup3.getChildAt(i3);
                    if (childAt instanceof RecyclerView) {
                        this.mRecyclerView = (RecyclerView) childAt;
                        break;
                    }
                    i3++;
                }
            } else {
                Log.e(TAG, "onMeasure: parent is null");
            }
        }
        initRecyclerView();
    }

    private void initRecyclerView() {
        if (this.mRecyclerView != null) {
            if (this.mOnScrollListener == null) {
                this.mOnScrollListener = getOnScrollListener();
                this.mRecyclerView.addOnScrollListener(this.mOnScrollListener);
                this.mChildDrawingOrderCallback = getChildDrawingOrderCallback();
                this.mRecyclerView.setChildDrawingOrderCallback(this.mChildDrawingOrderCallback);
            }
            updatePosition();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePosition() {
        if ((this.mLinearLayoutManager == null || this.mLinearLayoutManager != this.mLayoutManager) && (this.mLayoutManager instanceof LinearLayoutManager)) {
            this.mLinearLayoutManager = (LinearLayoutManager) this.mLayoutManager;
        }
        if (this.mLinearLayoutManager != null) {
            int findFirstVisibleItemPosition = this.mLinearLayoutManager.findFirstVisibleItemPosition();
            if (findFirstVisibleItemPosition < 1) {
                findFirstVisibleItemPosition = 0;
            }
            if (this.mLinearLayoutManager instanceof GridLayoutManager) {
                this.mGridLayoutManager = (GridLayoutManager) this.mLayoutManager;
                int spanCount = findFirstVisibleItemPosition / this.mGridLayoutManager.getSpanCount();
                if (findFirstVisibleItemPosition % this.mGridLayoutManager.getSpanCount() > 0) {
                    spanCount++;
                }
                setProgress(spanCount);
                return;
            }
            setProgress(findFirstVisibleItemPosition);
            return;
        }
        Log.e(TAG, "updatePosition: linearLayoutManager is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RecyclerView.AdapterDataObserver getAdapterDataObserver() {
        return new RecyclerView.AdapterDataObserver() { // from class: com.yftech.car.widget.media.view.ScrollBarView.1
            @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                RecyclerView.Adapter adapter = ScrollBarView.this.mRecyclerView.getAdapter();
                if (adapter != null) {
                    if (adapter.getItemCount() - ScrollBarView.this.mItemCountOffset > 0) {
                        if (ScrollBarView.this.getVisibility() != 0) {
                            ScrollBarView.this.setVisibility(0);
                        }
                    } else if (4 != ScrollBarView.this.getVisibility()) {
                        ScrollBarView.this.setVisibility(4);
                    }
                }
            }
        };
    }

    private RecyclerView.OnScrollListener getOnScrollListener() {
        return new RecyclerView.OnScrollListener() { // from class: com.yftech.car.widget.media.view.ScrollBarView.2
            @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                if (ScrollBarView.this.mItemHeight > 0) {
                    ScrollBarView.this.updatePosition();
                }
            }
        };
    }

    private RecyclerView.ChildDrawingOrderCallback getChildDrawingOrderCallback() {
        return new RecyclerView.ChildDrawingOrderCallback() { // from class: com.yftech.car.widget.media.view.ScrollBarView.3
            @Override // com.yftech.car.widget.media.recyclerview.widget.RecyclerView.ChildDrawingOrderCallback
            public int onGetChildDrawingOrder(int i, int i2) {
                RecyclerView.Adapter adapter = ScrollBarView.this.mRecyclerView.getAdapter();
                if (adapter != null) {
                    int itemCount = adapter.getItemCount();
                    if (ScrollBarView.this.mItemHeight == 0 || itemCount != ScrollBarView.this.getMaxProgress()) {
                        ScrollBarView.this.mLayoutManager = ScrollBarView.this.mRecyclerView.getLayoutManager();
                        if (ScrollBarView.this.mLayoutManager instanceof GridLayoutManager) {
                            ScrollBarView.this.mGridLayoutManager = (GridLayoutManager) ScrollBarView.this.mLayoutManager;
                            itemCount = adapter.getItemCount() / ScrollBarView.this.mGridLayoutManager.getSpanCount();
                            if (adapter.getItemCount() % ScrollBarView.this.mGridLayoutManager.getSpanCount() > 0) {
                                itemCount++;
                            }
                        }
                        if (itemCount - ScrollBarView.this.mItemCountOffset > 0) {
                            if (ScrollBarView.this.getVisibility() != 0) {
                                ScrollBarView.this.setVisibility(0);
                            }
                            if (ScrollBarView.this.mAdapterDataObserver == null) {
                                ScrollBarView.this.mAdapterDataObserver = ScrollBarView.this.getAdapterDataObserver();
                                adapter.registerAdapterDataObserver(ScrollBarView.this.mAdapterDataObserver);
                            }
                            if (ScrollBarView.this.mLayoutManager != null && ScrollBarView.this.mLayoutManager.getChildCount() > 0) {
                                if (ScrollBarView.this.mLayoutManager.getChildCount() > 1) {
                                    ScrollBarView.this.setGroupHeightItemHeight(ScrollBarView.this.mRecyclerView.getHeight(), ScrollBarView.this.mLayoutManager.getChildAt(1).getHeight());
                                } else {
                                    ScrollBarView.this.setGroupHeightItemHeight(ScrollBarView.this.mRecyclerView.getHeight(), ScrollBarView.this.mLayoutManager.getChildAt(0).getHeight());
                                }
                            }
                        } else if (4 != ScrollBarView.this.getVisibility()) {
                            ScrollBarView.this.setVisibility(4);
                        }
                        ScrollBarView.this.setMaxProgress(itemCount);
                        ScrollBarView.this.updatePosition();
                    }
                } else if (4 != ScrollBarView.this.getVisibility()) {
                    ScrollBarView.this.setVisibility(4);
                }
                return i2;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMaxProgress() {
        return this.mMaxProgress + this.mShowItemCount;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.bacHeight = getHeight();
        this.bacWidth = getWidth();
        setVisibility(4);
        Log.d(TAG, "onFinishInflate: bacWidth==" + this.bacWidth + ",bacWidth==" + this.bacWidth);
        setBarWidthStartFinishPosition();
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        super.setBackground(drawable);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        releaseRecycler();
    }

    public void setRecyclerView(RecyclerView recyclerView) {
        if (this.mRecyclerView != null) {
            releaseRecycler();
        }
        this.mRecyclerView = recyclerView;
        initRecyclerView();
    }

    private void releaseRecycler() {
        if (this.mOnScrollListener != null) {
            this.mRecyclerView.removeOnScrollListener(this.mOnScrollListener);
            RecyclerView.Adapter adapter = this.mRecyclerView.getAdapter();
            if (this.mAdapterDataObserver != null && adapter != null) {
                try {
                    adapter.unregisterAdapterDataObserver(this.mAdapterDataObserver);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            this.mAdapterDataObserver = null;
            this.mOnScrollListener = null;
            this.mChildDrawingOrderCallback = null;
        }
    }

    public void setGroupHeightItemHeight(int i, int i2) {
        if (i > 0 && i2 > 0 && i > i2) {
            if (this.mGroupHeight == i && this.mItemHeight == i2) {
                return;
            }
            Log.d(TAG, "setGroupHeightItemHeight: groupHeight==" + i + ",itemHeight==" + i2);
            this.mItemHeight = i2;
            this.mGroupHeight = i;
            this.mShowItemCount = i / i2;
            this.mShowItemCount = this.mShowItemCount + this.mMaxOffset;
            update();
            return;
        }
        Log.e(TAG, "setGroupHeightItemHeight: groupHeight==" + i + ",itemHeight==" + i2);
    }

    private void setBarWidthStartFinishPosition() {
        if (this.barWidth > 0) {
            this.startWidth = (this.bacWidth - this.barWidth) / 2;
            this.finishWidth = this.startWidth + this.barWidth;
        } else {
            this.startWidth = 0;
            this.finishWidth = this.bacWidth;
        }
    }

    public void setMaxProgress(int i) {
        this.mMaxProgress = i - this.mShowItemCount;
        if (i > this.mScrollBarHideRowSize) {
            update();
            setVisibility(0);
        } else {
            setVisibility(4);
        }
    }

    public void setProgress(int i) {
        this.mProgress = i;
        update();
    }

    @Deprecated
    public void setShowItemCount(int i) {
        this.mShowItemCount = i;
        update();
    }

    private void update() {
        if (this.isDown || this.pressedDrawable == null) {
            return;
        }
        if (this.mMaxProgress < 1) {
            this.mMaxProgress = 0;
            this.pressedDrawable.setBounds(this.startWidth, 0, this.finishWidth, this.bacHeight);
        } else {
            int i = this.bacHeight / this.mShowItemCount;
            this.mScrollBarHeightSize = this.bacHeight - ((this.mMaxProgress * i) / 2);
            if (this.barHeight > 0) {
                if (this.mScrollBarHeightSize < this.barHeight) {
                    this.mScrollBarHeightSize = this.barHeight;
                }
            } else {
                int i2 = i / 2;
                if (this.mScrollBarHeightSize < i2) {
                    this.mScrollBarHeightSize = i2;
                }
            }
            this.mScrollArea = this.bacHeight - this.mScrollBarHeightSize;
            int i3 = (int) (this.mProgress * (this.mScrollArea / this.mMaxProgress));
            int i4 = this.mScrollBarHeightSize + i3;
            if (i4 > this.bacHeight) {
                i3 -= i4 - this.bacHeight;
                i4 = this.bacHeight;
            }
            this.pressedDrawable.setBounds(this.startWidth, i3, this.finishWidth, i4);
        }
        invalidate();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mMaxProgress > 0 && this.pressedDrawable != null) {
            switch (motionEvent.getAction()) {
                case 0:
                case 2:
                    this.isDown = true;
                    float y = motionEvent.getY() - (this.mScrollBarHeightSize / 2);
                    if (y < 1.0f) {
                        y = 0.0f;
                    }
                    float f = this.mScrollBarHeightSize + y;
                    if (f > this.bacHeight) {
                        y -= f - this.bacHeight;
                        f = this.bacHeight;
                    }
                    if ((this.mLinearLayoutManager == null || this.mLinearLayoutManager != this.mLayoutManager) && (this.mLayoutManager instanceof LinearLayoutManager)) {
                        this.mLinearLayoutManager = (LinearLayoutManager) this.mLayoutManager;
                    }
                    if (this.mLinearLayoutManager != null || this.listener != null) {
                        int i = (int) ((this.mMaxProgress * y) / this.mScrollArea);
                        if (this.mLayoutManager instanceof GridLayoutManager) {
                            if (this.mGridLayoutManager == null) {
                                this.mGridLayoutManager = (GridLayoutManager) this.mLayoutManager;
                            }
                            i *= this.mGridLayoutManager.getSpanCount();
                        }
                        if (i != this.mProgress) {
                            this.mProgress = i;
                            Log.d(TAG, "onTouchEvent: position==" + i);
                            if (this.mLinearLayoutManager != null) {
                                this.mLinearLayoutManager.scrollToPositionWithOffset(i, 0);
                            }
                            if (this.listener != null) {
                                this.listener.onScroll(i, i >= this.mMaxProgress);
                            }
                        }
                    }
                    this.pressedDrawable.setBounds(this.startWidth, (int) y, this.finishWidth, (int) f);
                    invalidate();
                    break;
                case 1:
                    this.isDown = false;
                    update();
                    break;
            }
        }
        return true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.pressedDrawable != null) {
            this.pressedDrawable.draw(canvas);
        }
    }

    public void setOnScrollBarViewListener(OnScrollBarViewListener onScrollBarViewListener) {
        this.listener = onScrollBarViewListener;
    }
}
