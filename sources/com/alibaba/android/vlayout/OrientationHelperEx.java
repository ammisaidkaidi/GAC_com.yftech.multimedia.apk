package com.alibaba.android.vlayout;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class OrientationHelperEx {
    public static final int HORIZONTAL = 0;
    private static final int INVALID_SIZE = Integer.MIN_VALUE;
    public static final int VERTICAL = 1;
    private int mLastTotalSpace;
    protected final ExposeLinearLayoutManagerEx mLayoutManager;

    public abstract int getDecoratedEnd(View view);

    public abstract int getDecoratedMeasurement(View view);

    public abstract int getDecoratedMeasurementInOther(View view);

    public abstract int getDecoratedStart(View view);

    public abstract int getEnd();

    public abstract int getEndAfterPadding();

    public abstract int getEndPadding();

    public abstract int getStartAfterPadding();

    public abstract int getTotalSpace();

    public abstract void offsetChild(View view, int i);

    public abstract void offsetChildren(int i);

    private OrientationHelperEx(ExposeLinearLayoutManagerEx exposeLinearLayoutManagerEx) {
        this.mLastTotalSpace = Integer.MIN_VALUE;
        this.mLayoutManager = exposeLinearLayoutManagerEx;
    }

    public void onLayoutComplete() {
        this.mLastTotalSpace = getTotalSpace();
    }

    public int getTotalSpaceChange() {
        if (Integer.MIN_VALUE == this.mLastTotalSpace) {
            return 0;
        }
        return getTotalSpace() - this.mLastTotalSpace;
    }

    public static OrientationHelperEx createOrientationHelper(ExposeLinearLayoutManagerEx exposeLinearLayoutManagerEx, int i) {
        switch (i) {
            case 0:
                return createHorizontalHelper(exposeLinearLayoutManagerEx);
            case 1:
                return createVerticalHelper(exposeLinearLayoutManagerEx);
            default:
                throw new IllegalArgumentException("invalid orientation");
        }
    }

    public static OrientationHelperEx createHorizontalHelper(ExposeLinearLayoutManagerEx exposeLinearLayoutManagerEx) {
        return new OrientationHelperEx(exposeLinearLayoutManagerEx) { // from class: com.alibaba.android.vlayout.OrientationHelperEx.1
            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getEndAfterPadding() {
                return this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingRight();
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getEnd() {
                return this.mLayoutManager.getWidth();
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public void offsetChildren(int i) {
                this.mLayoutManager.offsetChildrenHorizontal(i);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getStartAfterPadding() {
                return this.mLayoutManager.getPaddingLeft();
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return !this.mLayoutManager.isEnableMarginOverLap() ? this.mLayoutManager.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin + layoutParams.rightMargin : this.mLayoutManager.getDecoratedMeasuredWidth(view);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.mLayoutManager.getDecoratedMeasuredHeight(view) + layoutParams.topMargin + layoutParams.bottomMargin;
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getDecoratedEnd(View view) {
                return !this.mLayoutManager.isEnableMarginOverLap() ? this.mLayoutManager.getDecoratedRight(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin : this.mLayoutManager.getDecoratedRight(view);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getDecoratedStart(View view) {
                return !this.mLayoutManager.isEnableMarginOverLap() ? this.mLayoutManager.getDecoratedLeft(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin : this.mLayoutManager.getDecoratedLeft(view);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getTotalSpace() {
                return (this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingLeft()) - this.mLayoutManager.getPaddingRight();
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public void offsetChild(View view, int i) {
                view.offsetLeftAndRight(i);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getEndPadding() {
                return this.mLayoutManager.getPaddingRight();
            }
        };
    }

    public static OrientationHelperEx createVerticalHelper(ExposeLinearLayoutManagerEx exposeLinearLayoutManagerEx) {
        return new OrientationHelperEx(exposeLinearLayoutManagerEx) { // from class: com.alibaba.android.vlayout.OrientationHelperEx.2
            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getEndAfterPadding() {
                return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingBottom();
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getEnd() {
                return this.mLayoutManager.getHeight();
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public void offsetChildren(int i) {
                this.mLayoutManager.offsetChildrenVertical(i);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getStartAfterPadding() {
                return this.mLayoutManager.getPaddingTop();
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return !this.mLayoutManager.isEnableMarginOverLap() ? this.mLayoutManager.getDecoratedMeasuredHeight(view) + layoutParams.topMargin + layoutParams.bottomMargin : this.mLayoutManager.getDecoratedMeasuredHeight(view);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return this.mLayoutManager.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin + layoutParams.rightMargin;
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getDecoratedEnd(View view) {
                return !this.mLayoutManager.isEnableMarginOverLap() ? this.mLayoutManager.getDecoratedBottom(view) + ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin : this.mLayoutManager.getDecoratedBottom(view);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getDecoratedStart(View view) {
                return !this.mLayoutManager.isEnableMarginOverLap() ? this.mLayoutManager.getDecoratedTop(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin : this.mLayoutManager.getDecoratedTop(view);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getTotalSpace() {
                return (this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingTop()) - this.mLayoutManager.getPaddingBottom();
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public void offsetChild(View view, int i) {
                view.offsetTopAndBottom(i);
            }

            @Override // com.alibaba.android.vlayout.OrientationHelperEx
            public int getEndPadding() {
                return this.mLayoutManager.getPaddingBottom();
            }
        };
    }
}
