package com.alibaba.android.vlayout.layout;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes3.dex */
public class OnePlusNLayoutHelper extends AbstractFullFillLayoutHelper {
    private static final String TAG = "OnePlusNLayoutHelper";
    private Rect mAreaRect;
    private View[] mChildrenViews;
    private float[] mColWeights;
    private float mRowWeight;

    public OnePlusNLayoutHelper() {
        this.mAreaRect = new Rect();
        this.mColWeights = new float[0];
        this.mRowWeight = Float.NaN;
        setItemCount(0);
    }

    public OnePlusNLayoutHelper(int i) {
        this(i, 0, 0, 0, 0);
    }

    public OnePlusNLayoutHelper(int i, int i2, int i3, int i4, int i5) {
        this.mAreaRect = new Rect();
        this.mColWeights = new float[0];
        this.mRowWeight = Float.NaN;
        setItemCount(i);
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onRangeChange(int i, int i2) {
        if (i2 - i > 6) {
            throw new IllegalArgumentException("OnePlusNLayoutHelper only supports maximum 7 children now");
        }
    }

    public void setColWeights(float[] fArr) {
        if (fArr != null) {
            this.mColWeights = Arrays.copyOf(fArr, fArr.length);
        } else {
            this.mColWeights = new float[0];
        }
    }

    public void setRowWeight(float f) {
        this.mRowWeight = f;
    }

    @Override // com.alibaba.android.vlayout.layout.AbstractFullFillLayoutHelper, com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        int handleFive;
        int offset;
        int i;
        int i2;
        int decoratedMeasurementInOther;
        int i3;
        int i4;
        int offset2;
        int i5;
        int offset3;
        int i6;
        int i7;
        int decoratedMeasurementInOther2;
        int i8;
        int i9;
        int offset4;
        int i10;
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        boolean z = layoutManagerHelper.getOrientation() == 1;
        boolean z2 = layoutStateWrapper.getLayoutDirection() == -1;
        int contentWidth = layoutManagerHelper.getContentWidth();
        int contentHeight = layoutManagerHelper.getContentHeight();
        int paddingLeft = layoutManagerHelper.getPaddingLeft() + layoutManagerHelper.getPaddingRight() + getHorizontalMargin() + getHorizontalPadding();
        int paddingTop = layoutManagerHelper.getPaddingTop() + layoutManagerHelper.getPaddingBottom() + getVerticalMargin() + getVerticalPadding();
        int currentPosition = layoutStateWrapper.getCurrentPosition();
        if (this.hasHeader && currentPosition == getRange().getLower().intValue()) {
            View nextView = nextView(recycler, layoutStateWrapper, layoutManagerHelper, layoutChunkResult);
            int handleHeader = handleHeader(nextView, layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop);
            if (nextView != null) {
                if (z) {
                    if (z2) {
                        i10 = layoutStateWrapper.getOffset();
                        offset4 = i10 - handleHeader;
                    } else {
                        offset4 = (this.mLayoutWithAnchor ? 0 : this.mMarginTop + this.mPaddingTop) + layoutStateWrapper.getOffset();
                        i10 = offset4 + handleHeader;
                    }
                    i9 = layoutManagerHelper.getPaddingLeft() + this.mMarginLeft + this.mPaddingLeft;
                    decoratedMeasurementInOther2 = i10;
                    i7 = mainOrientationHelper.getDecoratedMeasurementInOther(nextView) + i9;
                    i8 = offset4;
                } else {
                    if (z2) {
                        i6 = layoutStateWrapper.getOffset();
                        offset3 = i6 - handleHeader;
                    } else {
                        offset3 = (this.mLayoutWithAnchor ? 0 : this.mMarginLeft + this.mPaddingLeft) + layoutStateWrapper.getOffset();
                        i6 = offset3 + handleHeader;
                    }
                    int paddingTop2 = layoutManagerHelper.getPaddingTop() + this.mMarginTop + this.mPaddingTop;
                    i7 = i6;
                    decoratedMeasurementInOther2 = mainOrientationHelper.getDecoratedMeasurementInOther(nextView) + paddingTop2;
                    i8 = paddingTop2;
                    i9 = offset3;
                }
                layoutChildWithMargin(nextView, i9, i8, i7, decoratedMeasurementInOther2, layoutManagerHelper);
            }
            layoutChunkResult.mConsumed = handleHeader;
            handleStateOnResult(layoutChunkResult, nextView);
            return;
        }
        if (this.hasFooter && currentPosition == getRange().getUpper().intValue()) {
            View nextView2 = nextView(recycler, layoutStateWrapper, layoutManagerHelper, layoutChunkResult);
            int handleFooter = handleFooter(nextView2, layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop);
            if (nextView2 != null) {
                if (z) {
                    if (z2) {
                        i5 = layoutStateWrapper.getOffset() - (this.mLayoutWithAnchor ? 0 : this.mMarginBottom + this.mPaddingBottom);
                        offset2 = i5 - handleFooter;
                    } else {
                        offset2 = layoutStateWrapper.getOffset();
                        i5 = offset2 + handleFooter;
                    }
                    i4 = layoutManagerHelper.getPaddingLeft() + this.mMarginLeft + this.mPaddingLeft;
                    decoratedMeasurementInOther = i5;
                    i2 = mainOrientationHelper.getDecoratedMeasurementInOther(nextView2) + i4;
                    i3 = offset2;
                } else {
                    if (z2) {
                        i = layoutStateWrapper.getOffset() - (this.mLayoutWithAnchor ? 0 : this.mMarginRight + this.mPaddingRight);
                        offset = i - handleFooter;
                    } else {
                        offset = layoutStateWrapper.getOffset();
                        i = offset + handleFooter;
                    }
                    int paddingTop3 = layoutManagerHelper.getPaddingTop() + this.mMarginTop + this.mPaddingTop;
                    i2 = i;
                    decoratedMeasurementInOther = mainOrientationHelper.getDecoratedMeasurementInOther(nextView2) + paddingTop3;
                    i3 = paddingTop3;
                    i4 = offset;
                }
                layoutChildWithMargin(nextView2, i4, i3, i2, decoratedMeasurementInOther, layoutManagerHelper);
            }
            layoutChunkResult.mConsumed = handleFooter;
            handleStateOnResult(layoutChunkResult, nextView2);
            return;
        }
        int itemCount = (getItemCount() - (this.hasHeader ? 1 : 0)) - (this.hasFooter ? 1 : 0);
        if (this.mChildrenViews == null || this.mChildrenViews.length != itemCount) {
            this.mChildrenViews = new View[itemCount];
        }
        int allChildren = getAllChildren(this.mChildrenViews, recycler, layoutStateWrapper, layoutChunkResult, layoutManagerHelper);
        if (allChildren == 0 || allChildren < itemCount) {
            return;
        }
        if (itemCount == 1) {
            handleFive = handleOne(layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop);
        } else if (itemCount == 2) {
            handleFive = handleTwo(layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop);
        } else if (itemCount == 3) {
            handleFive = handleThree(layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop);
        } else if (itemCount == 4) {
            handleFive = handleFour(layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop);
        } else {
            handleFive = itemCount == 5 ? handleFive(layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop) : 0;
        }
        layoutChunkResult.mConsumed = handleFive;
        Arrays.fill(this.mChildrenViews, (Object) null);
    }

    private float getViewMainWeight(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        if (this.mColWeights.length > i) {
            return this.mColWeights[i];
        }
        return Float.NaN;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void onClear(LayoutManagerHelper layoutManagerHelper) {
        super.onClear(layoutManagerHelper);
    }

    @Override // com.alibaba.android.vlayout.layout.AbstractFullFillLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void checkAnchorInfo(RecyclerView.State state, VirtualLayoutManager.AnchorInfoWrapper anchorInfoWrapper, LayoutManagerHelper layoutManagerHelper) {
        super.checkAnchorInfo(state, anchorInfoWrapper, layoutManagerHelper);
        this.mLayoutWithAnchor = true;
    }

    @Override // com.alibaba.android.vlayout.layout.AbstractFullFillLayoutHelper, com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computeAlignOffset(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z3 = layoutManagerHelper.getOrientation() == 1;
        if (z2) {
            return 0;
        }
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
        return 0;
    }

    private int handleHeader(View view, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        if (view == null) {
            return 0;
        }
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(view.getLayoutParams());
        layoutManagerHelper.measureChildWithMargins(view, layoutManagerHelper.getChildMeasureSpec(i - i3, z ? -1 : marginLayoutParams.width, !z), layoutManagerHelper.getChildMeasureSpec(i2 - i4, z ? marginLayoutParams.height : 1073741824, z));
        return mainOrientationHelper.getDecoratedMeasurement(view);
    }

    private int handleFooter(View view, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        if (view == null) {
            return 0;
        }
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(view.getLayoutParams());
        layoutManagerHelper.measureChildWithMargins(view, layoutManagerHelper.getChildMeasureSpec(i - i3, z ? -1 : marginLayoutParams.width, !z), layoutManagerHelper.getChildMeasureSpec(i2 - i4, z ? marginLayoutParams.height : 1073741824, z));
        return mainOrientationHelper.getDecoratedMeasurement(view);
    }

    private int handleOne(VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        View view = this.mChildrenViews[0];
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        if (!Float.isNaN(this.mAspectRatio)) {
            if (z) {
                marginLayoutParams.height = (int) ((i - i3) / this.mAspectRatio);
            } else {
                marginLayoutParams.width = (int) ((i2 - i4) * this.mAspectRatio);
            }
        }
        float viewMainWeight = getViewMainWeight(marginLayoutParams, 0);
        layoutManagerHelper.measureChildWithMargins(view, layoutManagerHelper.getChildMeasureSpec(Float.isNaN(viewMainWeight) ? i - i3 : (int) ((i - i3) * viewMainWeight), z ? -1 : marginLayoutParams.width, !z), layoutManagerHelper.getChildMeasureSpec(i2 - i4, z ? marginLayoutParams.height : 1073741824, z));
        calculateRect(mainOrientationHelper.getDecoratedMeasurement(view) + 0, this.mAreaRect, layoutStateWrapper, layoutManagerHelper);
        layoutChildWithMargin(view, this.mAreaRect.left, this.mAreaRect.top, this.mAreaRect.right, this.mAreaRect.bottom, layoutManagerHelper);
        handleStateOnResult(layoutChunkResult, null, view, null);
        return (this.mAreaRect.bottom - this.mAreaRect.top) + (this.hasHeader ? 0 : this.mMarginTop + this.mPaddingTop) + (this.hasFooter ? 0 : this.mMarginBottom + this.mPaddingBottom);
    }

    private int handleTwo(VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        int i5;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        View view = this.mChildrenViews[0];
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) view.getLayoutParams());
        View view2 = this.mChildrenViews[1];
        ViewGroup.MarginLayoutParams marginLayoutParams2 = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) view2.getLayoutParams());
        float viewMainWeight = getViewMainWeight(marginLayoutParams, 0);
        float viewMainWeight2 = getViewMainWeight(marginLayoutParams, 1);
        if (z) {
            if (!Float.isNaN(this.mAspectRatio)) {
                int i6 = (int) ((i - i3) / this.mAspectRatio);
                marginLayoutParams2.height = i6;
                marginLayoutParams.height = i6;
            }
            marginLayoutParams2.topMargin = marginLayoutParams.topMargin;
            marginLayoutParams2.bottomMargin = marginLayoutParams.bottomMargin;
            int i7 = ((((i - i3) - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin) - marginLayoutParams2.leftMargin) - marginLayoutParams2.rightMargin;
            int i8 = (int) ((Float.isNaN(viewMainWeight) ? i7 / 2.0f : (i7 * viewMainWeight) / 100.0f) + 0.5f);
            int i9 = Float.isNaN(viewMainWeight2) ? i7 - i8 : (int) (((i7 * viewMainWeight2) / 100.0f) + 0.5f);
            layoutManagerHelper.measureChildWithMargins(view, View.MeasureSpec.makeMeasureSpec(i8 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, 1073741824), layoutManagerHelper.getChildMeasureSpec(layoutManagerHelper.getContentHeight(), marginLayoutParams.height, true));
            layoutManagerHelper.measureChildWithMargins(view2, View.MeasureSpec.makeMeasureSpec(i9 + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin, 1073741824), layoutManagerHelper.getChildMeasureSpec(layoutManagerHelper.getContentHeight(), marginLayoutParams2.height, true));
            calculateRect(Math.max(mainOrientationHelper.getDecoratedMeasurement(view), mainOrientationHelper.getDecoratedMeasurement(view2)) + 0, this.mAreaRect, layoutStateWrapper, layoutManagerHelper);
            int decoratedMeasurementInOther = this.mAreaRect.left + mainOrientationHelper.getDecoratedMeasurementInOther(view);
            layoutChildWithMargin(view, this.mAreaRect.left, this.mAreaRect.top, decoratedMeasurementInOther, this.mAreaRect.bottom, layoutManagerHelper);
            layoutChildWithMargin(view2, decoratedMeasurementInOther, this.mAreaRect.top, decoratedMeasurementInOther + mainOrientationHelper.getDecoratedMeasurementInOther(view2), this.mAreaRect.bottom, layoutManagerHelper);
            i5 = (this.mAreaRect.bottom - this.mAreaRect.top) + (this.hasHeader ? 0 : this.mMarginTop + this.mPaddingTop) + (this.hasFooter ? 0 : this.mMarginBottom + this.mPaddingBottom);
        } else {
            if (!Float.isNaN(this.mAspectRatio)) {
                int i10 = (int) ((i2 - i4) * this.mAspectRatio);
                marginLayoutParams2.width = i10;
                marginLayoutParams.width = i10;
            }
            int i11 = ((((i2 - i4) - marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin) - marginLayoutParams2.topMargin) - marginLayoutParams2.bottomMargin;
            int i12 = (int) ((Float.isNaN(viewMainWeight) ? i11 / 2.0f : (i11 * viewMainWeight) / 100.0f) + 0.5f);
            int i13 = Float.isNaN(viewMainWeight2) ? i11 - i12 : (int) (((i11 * viewMainWeight2) / 100.0f) + 0.5f);
            layoutManagerHelper.measureChildWithMargins(view, layoutManagerHelper.getChildMeasureSpec(layoutManagerHelper.getContentWidth(), marginLayoutParams.width, true), View.MeasureSpec.makeMeasureSpec(i12 + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view2, View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i13 + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin, 1073741824));
            calculateRect(Math.max(mainOrientationHelper.getDecoratedMeasurement(view), mainOrientationHelper.getDecoratedMeasurement(view2)) + 0, this.mAreaRect, layoutStateWrapper, layoutManagerHelper);
            int decoratedMeasurementInOther2 = this.mAreaRect.top + mainOrientationHelper.getDecoratedMeasurementInOther(view);
            layoutChildWithMargin(view, this.mAreaRect.left, this.mAreaRect.top, this.mAreaRect.right, decoratedMeasurementInOther2, layoutManagerHelper);
            layoutChildWithMargin(view2, this.mAreaRect.left, decoratedMeasurementInOther2, this.mAreaRect.right, decoratedMeasurementInOther2 + mainOrientationHelper.getDecoratedMeasurementInOther(view2), layoutManagerHelper);
            i5 = (this.mAreaRect.right - this.mAreaRect.left) + (this.hasHeader ? 0 : this.mMarginLeft + this.mPaddingRight) + (this.hasFooter ? 0 : this.mMarginRight + this.mPaddingRight);
        }
        handleStateOnResult(layoutChunkResult, null, view, view2, null);
        return i5;
    }

    private int handleThree(VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        int i5;
        View view;
        int i6;
        float f;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        View view2 = this.mChildrenViews[0];
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) view2.getLayoutParams());
        View view3 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[2] : this.mChildrenViews[1];
        View view4 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[1] : this.mChildrenViews[2];
        ViewGroup.MarginLayoutParams marginLayoutParams2 = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) view3.getLayoutParams());
        ViewGroup.MarginLayoutParams marginLayoutParams3 = new ViewGroup.MarginLayoutParams((ViewGroup.MarginLayoutParams) view4.getLayoutParams());
        float viewMainWeight = getViewMainWeight(marginLayoutParams, 0);
        float viewMainWeight2 = getViewMainWeight(marginLayoutParams, 1);
        float viewMainWeight3 = getViewMainWeight(marginLayoutParams, 2);
        if (z) {
            if (!Float.isNaN(this.mAspectRatio)) {
                marginLayoutParams.height = (int) ((i - i3) / this.mAspectRatio);
            }
            marginLayoutParams2.topMargin = marginLayoutParams.topMargin;
            marginLayoutParams3.bottomMargin = marginLayoutParams.bottomMargin;
            marginLayoutParams3.leftMargin = marginLayoutParams2.leftMargin;
            marginLayoutParams3.rightMargin = marginLayoutParams2.rightMargin;
            int i7 = ((((i - i3) - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin) - marginLayoutParams2.leftMargin) - marginLayoutParams2.rightMargin;
            float f2 = 100.0f;
            int i8 = (int) ((Float.isNaN(viewMainWeight) ? i7 / 2.0f : (i7 * viewMainWeight) / 100.0f) + 0.5f);
            int i9 = Float.isNaN(viewMainWeight2) ? i7 - i8 : (int) (((i7 * viewMainWeight2) / 100.0f) + 0.5d);
            if (Float.isNaN(viewMainWeight3)) {
                i6 = i9;
                view = view2;
            } else {
                view = view2;
                i6 = (int) (((i7 * viewMainWeight3) / 100.0f) + 0.5d);
            }
            view2 = view;
            layoutManagerHelper.measureChildWithMargins(view2, View.MeasureSpec.makeMeasureSpec(i8 + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin, 1073741824), layoutManagerHelper.getChildMeasureSpec(layoutManagerHelper.getContentHeight(), marginLayoutParams.height, true));
            int measuredHeight = view2.getMeasuredHeight();
            if (Float.isNaN(this.mRowWeight)) {
                f = (measuredHeight - marginLayoutParams2.bottomMargin) - marginLayoutParams3.topMargin;
                f2 = 2.0f;
            } else {
                f = ((measuredHeight - marginLayoutParams2.bottomMargin) - marginLayoutParams3.topMargin) * this.mRowWeight;
            }
            int i10 = (int) ((f / f2) + 0.5f);
            int i11 = ((measuredHeight - marginLayoutParams2.bottomMargin) - marginLayoutParams3.topMargin) - i10;
            layoutManagerHelper.measureChildWithMargins(view3, View.MeasureSpec.makeMeasureSpec(i9 + marginLayoutParams2.leftMargin + marginLayoutParams2.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(marginLayoutParams2.topMargin + i10 + marginLayoutParams2.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view4, View.MeasureSpec.makeMeasureSpec(i6 + marginLayoutParams3.leftMargin + marginLayoutParams3.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(marginLayoutParams3.topMargin + i11 + marginLayoutParams3.bottomMargin, 1073741824));
            calculateRect(Math.max(measuredHeight + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, i10 + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin + i11 + marginLayoutParams3.topMargin + marginLayoutParams3.bottomMargin) + 0, this.mAreaRect, layoutStateWrapper, layoutManagerHelper);
            int decoratedMeasurementInOther = this.mAreaRect.left + mainOrientationHelper.getDecoratedMeasurementInOther(view2);
            layoutChildWithMargin(view2, this.mAreaRect.left, this.mAreaRect.top, decoratedMeasurementInOther, this.mAreaRect.bottom, layoutManagerHelper);
            layoutChildWithMargin(view3, decoratedMeasurementInOther, this.mAreaRect.top, decoratedMeasurementInOther + mainOrientationHelper.getDecoratedMeasurementInOther(view3), this.mAreaRect.top + view3.getMeasuredHeight() + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin, layoutManagerHelper);
            layoutChildWithMargin(view4, decoratedMeasurementInOther, this.mAreaRect.bottom - mainOrientationHelper.getDecoratedMeasurement(view4), decoratedMeasurementInOther + mainOrientationHelper.getDecoratedMeasurementInOther(view4), this.mAreaRect.bottom, layoutManagerHelper);
            i5 = (this.hasFooter ? 0 : this.mMarginBottom + this.mPaddingBottom) + (this.mAreaRect.bottom - this.mAreaRect.top) + (this.hasHeader ? 0 : this.mMarginTop + this.mPaddingTop);
        } else {
            i5 = 0;
        }
        handleStateOnResult(layoutChunkResult, null, view2, view3, view4, null);
        return i5;
    }

    private int handleFour(VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        View view;
        View view2;
        View view3;
        int i5;
        float f;
        float f2;
        float f3;
        float f4;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        View view4 = this.mChildrenViews[0];
        VirtualLayoutManager.LayoutParams layoutParams = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view4.getLayoutParams());
        View view5 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[3] : this.mChildrenViews[1];
        VirtualLayoutManager.LayoutParams layoutParams2 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view5.getLayoutParams());
        View view6 = this.mChildrenViews[2];
        VirtualLayoutManager.LayoutParams layoutParams3 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view6.getLayoutParams());
        View view7 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[1] : this.mChildrenViews[3];
        VirtualLayoutManager.LayoutParams layoutParams4 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view7.getLayoutParams());
        float viewMainWeight = getViewMainWeight(layoutParams, 0);
        float viewMainWeight2 = getViewMainWeight(layoutParams, 1);
        float viewMainWeight3 = getViewMainWeight(layoutParams, 2);
        float viewMainWeight4 = getViewMainWeight(layoutParams, 3);
        if (z) {
            layoutParams2.topMargin = layoutParams.topMargin;
            int i6 = layoutParams.bottomMargin;
            layoutParams4.bottomMargin = i6;
            layoutParams3.bottomMargin = i6;
            layoutParams3.leftMargin = layoutParams2.leftMargin;
            layoutParams4.rightMargin = layoutParams2.rightMargin;
            if (!Float.isNaN(this.mAspectRatio)) {
                layoutParams.height = (int) ((i - i3) / this.mAspectRatio);
            }
            int i7 = ((((i - i3) - layoutParams.leftMargin) - layoutParams.rightMargin) - layoutParams2.leftMargin) - layoutParams2.rightMargin;
            int i8 = (int) ((Float.isNaN(viewMainWeight) ? i7 / 2.0f : (i7 * viewMainWeight) / 100.0f) + 0.5f);
            int i9 = Float.isNaN(viewMainWeight2) ? i7 - i8 : (int) (((i7 * viewMainWeight2) / 100.0f) + 0.5f);
            if (Float.isNaN(viewMainWeight3)) {
                f = (i9 - layoutParams3.rightMargin) - layoutParams4.leftMargin;
                f2 = 2.0f;
            } else {
                f = i7 * viewMainWeight3;
                f2 = 100.0f;
            }
            int i10 = (int) ((f / f2) + 0.5f);
            int i11 = Float.isNaN(viewMainWeight4) ? ((i9 - layoutParams3.rightMargin) - layoutParams4.leftMargin) - i10 : (int) (((i7 * viewMainWeight4) / 100.0f) + 0.5f);
            layoutManagerHelper.measureChildWithMargins(view4, View.MeasureSpec.makeMeasureSpec(i8 + layoutParams.leftMargin + layoutParams.rightMargin, 1073741824), layoutManagerHelper.getChildMeasureSpec(layoutManagerHelper.getContentHeight(), layoutParams.height, true));
            int measuredHeight = view4.getMeasuredHeight();
            if (Float.isNaN(this.mRowWeight)) {
                f3 = (measuredHeight - layoutParams2.bottomMargin) - layoutParams3.topMargin;
                f4 = 2.0f;
            } else {
                f3 = ((measuredHeight - layoutParams2.bottomMargin) - layoutParams3.topMargin) * this.mRowWeight;
                f4 = 100.0f;
            }
            int i12 = (int) ((f3 / f4) + 0.5f);
            int i13 = ((measuredHeight - layoutParams2.bottomMargin) - layoutParams3.topMargin) - i12;
            layoutManagerHelper.measureChildWithMargins(view5, View.MeasureSpec.makeMeasureSpec(i9 + layoutParams2.leftMargin + layoutParams2.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams2.topMargin + i12 + layoutParams2.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view6, View.MeasureSpec.makeMeasureSpec(i10 + layoutParams3.leftMargin + layoutParams3.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams3.topMargin + i13 + layoutParams3.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view7, View.MeasureSpec.makeMeasureSpec(i11 + layoutParams4.leftMargin + layoutParams4.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams4.topMargin + i13 + layoutParams4.bottomMargin, 1073741824));
            calculateRect(Math.max(measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin, i12 + layoutParams2.topMargin + layoutParams2.bottomMargin + Math.max(layoutParams3.topMargin + i13 + layoutParams3.bottomMargin, i13 + layoutParams4.topMargin + layoutParams4.bottomMargin)) + 0, this.mAreaRect, layoutStateWrapper, layoutManagerHelper);
            view3 = view4;
            int decoratedMeasurementInOther = this.mAreaRect.left + mainOrientationHelper.getDecoratedMeasurementInOther(view3);
            view = view7;
            view2 = view6;
            layoutChildWithMargin(view3, this.mAreaRect.left, this.mAreaRect.top, decoratedMeasurementInOther, this.mAreaRect.bottom, layoutManagerHelper);
            layoutChildWithMargin(view5, decoratedMeasurementInOther, this.mAreaRect.top, decoratedMeasurementInOther + mainOrientationHelper.getDecoratedMeasurementInOther(view5), this.mAreaRect.top + mainOrientationHelper.getDecoratedMeasurement(view5), layoutManagerHelper);
            int decoratedMeasurementInOther2 = decoratedMeasurementInOther + mainOrientationHelper.getDecoratedMeasurementInOther(view2);
            layoutChildWithMargin(view2, decoratedMeasurementInOther, this.mAreaRect.bottom - mainOrientationHelper.getDecoratedMeasurement(view2), decoratedMeasurementInOther2, this.mAreaRect.bottom, layoutManagerHelper);
            layoutChildWithMargin(view, decoratedMeasurementInOther2, this.mAreaRect.bottom - mainOrientationHelper.getDecoratedMeasurement(view), decoratedMeasurementInOther2 + mainOrientationHelper.getDecoratedMeasurementInOther(view), this.mAreaRect.bottom, layoutManagerHelper);
            i5 = (this.mAreaRect.bottom - this.mAreaRect.top) + (this.hasHeader ? 0 : this.mMarginTop + this.mPaddingTop) + (this.hasFooter ? 0 : this.mMarginBottom + this.mPaddingBottom);
        } else {
            view = view7;
            view2 = view6;
            view3 = view4;
            i5 = 0;
        }
        handleStateOnResult(layoutChunkResult, null, view3, view5, view2, view, null);
        return i5;
    }

    private int handleFive(VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        View view;
        char c;
        int i5;
        OrientationHelperEx orientationHelperEx;
        View view2;
        float f;
        VirtualLayoutManager.LayoutParams layoutParams;
        float f2;
        float f3;
        float f4;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        View view3 = this.mChildrenViews[0];
        VirtualLayoutManager.LayoutParams layoutParams2 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view3.getLayoutParams());
        View view4 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[4] : this.mChildrenViews[1];
        VirtualLayoutManager.LayoutParams layoutParams3 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view4.getLayoutParams());
        View view5 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[3] : this.mChildrenViews[2];
        VirtualLayoutManager.LayoutParams layoutParams4 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view5.getLayoutParams());
        View view6 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[2] : this.mChildrenViews[3];
        VirtualLayoutManager.LayoutParams layoutParams5 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view6.getLayoutParams());
        View view7 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[1] : this.mChildrenViews[4];
        VirtualLayoutManager.LayoutParams layoutParams6 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view7.getLayoutParams());
        float viewMainWeight = getViewMainWeight(layoutParams2, 0);
        float viewMainWeight2 = getViewMainWeight(layoutParams2, 1);
        float viewMainWeight3 = getViewMainWeight(layoutParams2, 2);
        float viewMainWeight4 = getViewMainWeight(layoutParams2, 3);
        float viewMainWeight5 = getViewMainWeight(layoutParams2, 4);
        if (z) {
            layoutParams3.topMargin = layoutParams2.topMargin;
            int i6 = layoutParams2.bottomMargin;
            layoutParams5.bottomMargin = i6;
            layoutParams4.bottomMargin = i6;
            layoutParams4.leftMargin = layoutParams3.leftMargin;
            layoutParams5.rightMargin = layoutParams3.rightMargin;
            layoutParams6.rightMargin = layoutParams3.rightMargin;
            if (Float.isNaN(this.mAspectRatio)) {
                orientationHelperEx = mainOrientationHelper;
            } else {
                orientationHelperEx = mainOrientationHelper;
                layoutParams2.height = (int) ((i - i3) / this.mAspectRatio);
            }
            int i7 = ((((i - i3) - layoutParams2.leftMargin) - layoutParams2.rightMargin) - layoutParams3.leftMargin) - layoutParams3.rightMargin;
            int i8 = (int) ((Float.isNaN(viewMainWeight) ? i7 / 2.0f : (i7 * viewMainWeight) / 100.0f) + 0.5f);
            int i9 = Float.isNaN(viewMainWeight2) ? i7 - i8 : (int) (((i7 * viewMainWeight2) / 100.0f) + 0.5f);
            if (Float.isNaN(viewMainWeight3)) {
                view2 = view7;
                f = ((i9 - layoutParams4.rightMargin) - layoutParams5.leftMargin) / 3.0f;
            } else {
                view2 = view7;
                f = (i7 * viewMainWeight3) / 100.0f;
            }
            int i10 = (int) (f + 0.5f);
            if (Float.isNaN(viewMainWeight4)) {
                layoutParams = layoutParams6;
                f2 = ((i9 - layoutParams4.rightMargin) - layoutParams5.leftMargin) / 3.0f;
            } else {
                layoutParams = layoutParams6;
                f2 = (i7 * viewMainWeight4) / 100.0f;
            }
            int i11 = (int) (f2 + 0.5f);
            int i12 = Float.isNaN(viewMainWeight5) ? (((i9 - layoutParams4.rightMargin) - layoutParams5.leftMargin) - i10) - i11 : (int) (((i7 * viewMainWeight5) / 100.0f) + 0.5f);
            layoutManagerHelper.measureChildWithMargins(view3, View.MeasureSpec.makeMeasureSpec(i8 + layoutParams2.leftMargin + layoutParams2.rightMargin, 1073741824), layoutManagerHelper.getChildMeasureSpec(layoutManagerHelper.getContentHeight(), layoutParams2.height, true));
            int measuredHeight = view3.getMeasuredHeight();
            if (Float.isNaN(this.mRowWeight)) {
                f3 = (measuredHeight - layoutParams3.bottomMargin) - layoutParams4.topMargin;
                f4 = 2.0f;
            } else {
                f3 = ((measuredHeight - layoutParams3.bottomMargin) - layoutParams4.topMargin) * this.mRowWeight;
                f4 = 100.0f;
            }
            int i13 = (int) ((f3 / f4) + 0.5f);
            int i14 = ((measuredHeight - layoutParams3.bottomMargin) - layoutParams4.topMargin) - i13;
            layoutManagerHelper.measureChildWithMargins(view4, View.MeasureSpec.makeMeasureSpec(i9 + layoutParams3.leftMargin + layoutParams3.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams3.topMargin + i13 + layoutParams3.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view5, View.MeasureSpec.makeMeasureSpec(i10 + layoutParams4.leftMargin + layoutParams4.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams4.topMargin + i14 + layoutParams4.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view6, View.MeasureSpec.makeMeasureSpec(i11 + layoutParams5.leftMargin + layoutParams5.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams5.topMargin + i14 + layoutParams5.bottomMargin, 1073741824));
            VirtualLayoutManager.LayoutParams layoutParams7 = layoutParams;
            view7 = view2;
            layoutManagerHelper.measureChildWithMargins(view7, View.MeasureSpec.makeMeasureSpec(i12 + layoutParams7.leftMargin + layoutParams7.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams7.topMargin + i14 + layoutParams7.bottomMargin, 1073741824));
            calculateRect(Math.max(measuredHeight + layoutParams2.topMargin + layoutParams2.bottomMargin, i13 + layoutParams3.topMargin + layoutParams3.bottomMargin + Math.max(layoutParams4.topMargin + i14 + layoutParams4.bottomMargin, i14 + layoutParams5.topMargin + layoutParams5.bottomMargin)) + 0, this.mAreaRect, layoutStateWrapper, layoutManagerHelper);
            OrientationHelperEx orientationHelperEx2 = orientationHelperEx;
            view3 = view3;
            int decoratedMeasurementInOther = this.mAreaRect.left + orientationHelperEx2.getDecoratedMeasurementInOther(view3);
            view = view5;
            c = 3;
            layoutChildWithMargin(view3, this.mAreaRect.left, this.mAreaRect.top, decoratedMeasurementInOther, this.mAreaRect.bottom, layoutManagerHelper);
            layoutChildWithMargin(view4, decoratedMeasurementInOther, this.mAreaRect.top, decoratedMeasurementInOther + orientationHelperEx2.getDecoratedMeasurementInOther(view4), this.mAreaRect.top + orientationHelperEx2.getDecoratedMeasurement(view4), layoutManagerHelper);
            int decoratedMeasurementInOther2 = decoratedMeasurementInOther + orientationHelperEx2.getDecoratedMeasurementInOther(view);
            layoutChildWithMargin(view, decoratedMeasurementInOther, this.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view), decoratedMeasurementInOther2, this.mAreaRect.bottom, layoutManagerHelper);
            int decoratedMeasurementInOther3 = decoratedMeasurementInOther2 + orientationHelperEx2.getDecoratedMeasurementInOther(view6);
            layoutChildWithMargin(view6, decoratedMeasurementInOther2, this.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view6), decoratedMeasurementInOther2 + orientationHelperEx2.getDecoratedMeasurementInOther(view6), this.mAreaRect.bottom, layoutManagerHelper);
            layoutChildWithMargin(view7, decoratedMeasurementInOther3, this.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view7), decoratedMeasurementInOther3 + orientationHelperEx2.getDecoratedMeasurementInOther(view7), this.mAreaRect.bottom, layoutManagerHelper);
            i5 = (this.mAreaRect.bottom - this.mAreaRect.top) + (this.hasHeader ? 0 : this.mMarginTop + this.mPaddingTop) + (this.hasFooter ? 0 : this.mMarginBottom + this.mPaddingBottom);
        } else {
            view = view5;
            c = 3;
            i5 = 0;
        }
        View[] viewArr = new View[7];
        viewArr[0] = null;
        viewArr[1] = view3;
        viewArr[2] = view4;
        viewArr[c] = view;
        viewArr[4] = view6;
        viewArr[5] = view7;
        viewArr[6] = null;
        handleStateOnResult(layoutChunkResult, viewArr);
        return i5;
    }
}
