package com.alibaba.android.vlayout.layout;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LinearLayoutHelper extends BaseLayoutHelper {
    private static final boolean DEBUG = false;
    private static final String TAG = "LinearLayoutHelper";
    private int mDividerHeight;

    public LinearLayoutHelper() {
        this(0);
    }

    public LinearLayoutHelper(int i) {
        this(i, 0);
    }

    public LinearLayoutHelper(int i, int i2) {
        this.mDividerHeight = 0;
        setItemCount(i2);
        setDividerHeight(i);
    }

    public void setDividerHeight(int i) {
        if (i < 0) {
            i = 0;
        }
        this.mDividerHeight = i;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        int i;
        int childMeasureSpec;
        int paddingTop;
        int decoratedMeasurementInOther;
        int offset;
        int decoratedMeasurement;
        int paddingLeft;
        int decoratedMeasurementInOther2;
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        int currentPosition = layoutStateWrapper.getCurrentPosition();
        View nextView = nextView(recycler, layoutStateWrapper, layoutManagerHelper, layoutChunkResult);
        if (nextView == null) {
            return;
        }
        boolean isEnableMarginOverLap = layoutManagerHelper.isEnableMarginOverLap();
        VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) nextView.getLayoutParams();
        boolean z = layoutManagerHelper.getOrientation() == 1;
        boolean z2 = layoutStateWrapper.getLayoutDirection() == 1;
        boolean z3 = !z2 ? currentPosition != getRange().getUpper().intValue() : currentPosition != getRange().getLower().intValue();
        boolean z4 = !z2 ? currentPosition != getRange().getLower().intValue() : currentPosition != getRange().getUpper().intValue();
        int computeStartSpace = z3 ? computeStartSpace(layoutManagerHelper, z, z2, isEnableMarginOverLap) : 0;
        int computeEndSpace = z4 ? computeEndSpace(layoutManagerHelper, z, z2, isEnableMarginOverLap) : 0;
        if (z3) {
            i = 0;
        } else if (!isEnableMarginOverLap) {
            i = this.mDividerHeight;
        } else if (z2) {
            int i2 = layoutParams.topMargin;
            View findViewByPosition = layoutManagerHelper.findViewByPosition(currentPosition - 1);
            int i3 = findViewByPosition != null ? ((VirtualLayoutManager.LayoutParams) findViewByPosition.getLayoutParams()).bottomMargin : 0;
            i = (i3 < 0 || i2 < 0) ? i3 + i2 : Math.max(i3, i2);
        } else {
            int i4 = layoutParams.bottomMargin;
            View findViewByPosition2 = layoutManagerHelper.findViewByPosition(currentPosition + 1);
            int i5 = findViewByPosition2 != null ? ((VirtualLayoutManager.LayoutParams) findViewByPosition2.getLayoutParams()).topMargin : 0;
            i = (i4 < 0 || i5 < 0) ? i5 + i4 : Math.max(i4, i5);
        }
        int contentWidth = (((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingLeft()) - layoutManagerHelper.getPaddingRight()) - getHorizontalMargin()) - getHorizontalPadding();
        int childMeasureSpec2 = layoutManagerHelper.getChildMeasureSpec(contentWidth, layoutParams.width, !z);
        float f = layoutParams.mAspectRatio;
        if (!Float.isNaN(f) && f > 0.0f) {
            childMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((contentWidth / f) + 0.5f), 1073741824);
        } else if (!Float.isNaN(this.mAspectRatio) && this.mAspectRatio > 0.0f) {
            childMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((contentWidth / this.mAspectRatio) + 0.5d), 1073741824);
        } else {
            childMeasureSpec = layoutManagerHelper.getChildMeasureSpec((((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom()) - getVerticalMargin()) - getVerticalPadding(), layoutParams.height, z);
        }
        if (!isEnableMarginOverLap) {
            layoutManagerHelper.measureChildWithMargins(nextView, childMeasureSpec2, childMeasureSpec);
        } else {
            layoutManagerHelper.measureChild(nextView, childMeasureSpec2, childMeasureSpec);
        }
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        layoutChunkResult.mConsumed = mainOrientationHelper.getDecoratedMeasurement(nextView) + computeStartSpace + computeEndSpace + i;
        if (layoutManagerHelper.getOrientation() == 1) {
            if (layoutManagerHelper.isDoLayoutRTL()) {
                decoratedMeasurementInOther2 = ((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - this.mMarginRight) - this.mPaddingRight;
                paddingLeft = decoratedMeasurementInOther2 - mainOrientationHelper.getDecoratedMeasurementInOther(nextView);
            } else {
                paddingLeft = this.mPaddingLeft + layoutManagerHelper.getPaddingLeft() + this.mMarginLeft;
                decoratedMeasurementInOther2 = mainOrientationHelper.getDecoratedMeasurementInOther(nextView) + paddingLeft;
            }
            if (layoutStateWrapper.getLayoutDirection() == -1) {
                int offset2 = (layoutStateWrapper.getOffset() - computeStartSpace) - (z3 ? 0 : i);
                decoratedMeasurement = decoratedMeasurementInOther2;
                paddingTop = offset2 - mainOrientationHelper.getDecoratedMeasurement(nextView);
                int i6 = paddingLeft;
                decoratedMeasurementInOther = offset2;
                offset = i6;
            } else {
                int offset3 = layoutStateWrapper.getOffset() + computeStartSpace + (z3 ? 0 : i);
                int decoratedMeasurement2 = mainOrientationHelper.getDecoratedMeasurement(nextView) + offset3;
                decoratedMeasurement = decoratedMeasurementInOther2;
                paddingTop = offset3;
                offset = paddingLeft;
                decoratedMeasurementInOther = decoratedMeasurement2;
            }
        } else {
            paddingTop = layoutManagerHelper.getPaddingTop() + this.mMarginTop + this.mPaddingTop;
            decoratedMeasurementInOther = mainOrientationHelper.getDecoratedMeasurementInOther(nextView) + paddingTop;
            if (layoutStateWrapper.getLayoutDirection() == -1) {
                int offset4 = (layoutStateWrapper.getOffset() - computeStartSpace) - (z3 ? 0 : i);
                decoratedMeasurement = offset4;
                offset = offset4 - mainOrientationHelper.getDecoratedMeasurement(nextView);
            } else {
                offset = layoutStateWrapper.getOffset() + computeStartSpace + (z3 ? 0 : i);
                decoratedMeasurement = mainOrientationHelper.getDecoratedMeasurement(nextView) + offset;
            }
        }
        layoutChildWithMargin(nextView, offset, paddingTop, decoratedMeasurement, decoratedMeasurementInOther, layoutManagerHelper);
        handleStateOnResult(layoutChunkResult, nextView);
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computeAlignOffset(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z3 = layoutManagerHelper.getOrientation() == 1;
        if (z) {
            if (i == getItemCount() - 1) {
                if (z3) {
                    i4 = this.mMarginBottom;
                    i5 = this.mPaddingBottom;
                } else {
                    i4 = this.mMarginRight;
                    i5 = this.mPaddingRight;
                }
                return i4 + i5;
            }
        } else if (i == 0) {
            if (z3) {
                i2 = -this.mMarginTop;
                i3 = this.mPaddingTop;
            } else {
                i2 = -this.mMarginLeft;
                i3 = this.mPaddingLeft;
            }
            return i2 - i3;
        }
        return super.computeAlignOffset(i, z, z2, layoutManagerHelper);
    }
}
