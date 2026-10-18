package com.alibaba.android.vlayout.layout;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SingleLayoutHelper extends ColumnLayoutHelper {
    private static final String TAG = "SingleLayoutHelper";
    private int mPos = -1;

    public SingleLayoutHelper() {
        setItemCount(1);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void setItemCount(int i) {
        if (i > 0) {
            super.setItemCount(1);
        } else {
            super.setItemCount(0);
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onRangeChange(int i, int i2) {
        this.mPos = i;
    }

    @Override // com.alibaba.android.vlayout.layout.ColumnLayoutHelper, com.alibaba.android.vlayout.layout.AbstractFullFillLayoutHelper, com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        int i;
        int i2;
        int i3;
        int i4;
        int offset;
        int i5;
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        View next = layoutStateWrapper.next(recycler);
        if (next == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        layoutManagerHelper.addChildView(layoutStateWrapper, next);
        VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) next.getLayoutParams();
        boolean z = layoutManagerHelper.getOrientation() == 1;
        int contentWidth = (((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingLeft()) - layoutManagerHelper.getPaddingRight()) - getHorizontalMargin()) - getHorizontalPadding();
        int contentHeight = (((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom()) - getVerticalMargin()) - getVerticalPadding();
        if (!Float.isNaN(this.mAspectRatio)) {
            if (z) {
                contentHeight = (int) ((contentWidth / this.mAspectRatio) + 0.5f);
            } else {
                contentWidth = (int) ((contentHeight * this.mAspectRatio) + 0.5f);
            }
        }
        if (z) {
            layoutManagerHelper.measureChildWithMargins(next, layoutManagerHelper.getChildMeasureSpec(contentWidth, Float.isNaN(this.mAspectRatio) ? layoutParams.width : contentWidth, !z && Float.isNaN(this.mAspectRatio)), layoutManagerHelper.getChildMeasureSpec(contentHeight, Float.isNaN(layoutParams.mAspectRatio) ? Float.isNaN(this.mAspectRatio) ? layoutParams.height : contentHeight : (int) ((contentWidth / layoutParams.mAspectRatio) + 0.5f), z && Float.isNaN(this.mAspectRatio)));
        } else {
            layoutManagerHelper.measureChildWithMargins(next, layoutManagerHelper.getChildMeasureSpec(contentWidth, Float.isNaN(layoutParams.mAspectRatio) ? Float.isNaN(this.mAspectRatio) ? layoutParams.width : contentWidth : (int) ((contentHeight * layoutParams.mAspectRatio) + 0.5f), !z && Float.isNaN(this.mAspectRatio)), layoutManagerHelper.getChildMeasureSpec(contentHeight, Float.isNaN(this.mAspectRatio) ? layoutParams.height : contentHeight, z && Float.isNaN(this.mAspectRatio)));
        }
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        layoutChunkResult.mConsumed = mainOrientationHelper.getDecoratedMeasurement(next);
        if (z) {
            int decoratedMeasurementInOther = contentWidth - mainOrientationHelper.getDecoratedMeasurementInOther(next);
            if (decoratedMeasurementInOther < 0) {
                decoratedMeasurementInOther = 0;
            }
            int i6 = decoratedMeasurementInOther / 2;
            i4 = this.mMarginLeft + this.mPaddingLeft + layoutManagerHelper.getPaddingLeft() + i6;
            int contentWidth2 = (((layoutManagerHelper.getContentWidth() - this.mMarginRight) - this.mPaddingRight) - layoutManagerHelper.getPaddingRight()) - i6;
            if (layoutStateWrapper.getLayoutDirection() == -1) {
                i5 = (layoutStateWrapper.getOffset() - this.mMarginBottom) - this.mPaddingBottom;
                offset = i5 - layoutChunkResult.mConsumed;
            } else {
                offset = this.mPaddingTop + layoutStateWrapper.getOffset() + this.mMarginTop;
                i5 = layoutChunkResult.mConsumed + offset;
            }
            i2 = i5;
            i = contentWidth2;
            i3 = offset;
        } else {
            int decoratedMeasurementInOther2 = contentHeight - mainOrientationHelper.getDecoratedMeasurementInOther(next);
            if (decoratedMeasurementInOther2 < 0) {
                decoratedMeasurementInOther2 = 0;
            }
            int i7 = decoratedMeasurementInOther2 / 2;
            int paddingTop = layoutManagerHelper.getPaddingTop() + this.mMarginTop + this.mPaddingTop + i7;
            int contentHeight2 = (((layoutManagerHelper.getContentHeight() - (-this.mMarginBottom)) - this.mPaddingBottom) - layoutManagerHelper.getPaddingBottom()) - i7;
            if (layoutStateWrapper.getLayoutDirection() == -1) {
                int offset2 = (layoutStateWrapper.getOffset() - this.mMarginRight) - this.mPaddingRight;
                i = offset2;
                i2 = contentHeight2;
                i3 = paddingTop;
                i4 = offset2 - layoutChunkResult.mConsumed;
            } else {
                int offset3 = layoutStateWrapper.getOffset() + this.mMarginLeft + this.mPaddingLeft;
                i = layoutChunkResult.mConsumed + offset3;
                i2 = contentHeight2;
                i3 = paddingTop;
                i4 = offset3;
            }
        }
        if (z) {
            layoutChunkResult.mConsumed += getVerticalMargin() + getVerticalPadding();
        } else {
            layoutChunkResult.mConsumed += getHorizontalMargin() + getHorizontalPadding();
        }
        layoutChildWithMargin(next, i4, i3, i, i2, layoutManagerHelper);
    }
}
