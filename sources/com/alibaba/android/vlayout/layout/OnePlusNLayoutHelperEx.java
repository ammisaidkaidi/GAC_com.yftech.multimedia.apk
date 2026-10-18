package com.alibaba.android.vlayout.layout;

import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes3.dex */
public class OnePlusNLayoutHelperEx extends AbstractFullFillLayoutHelper {
    private static final String TAG = "OnePlusNLayoutHelper";
    private Rect mAreaRect;
    private View[] mChildrenViews;
    private float[] mColWeights;
    private float mRowWeight;

    public OnePlusNLayoutHelperEx() {
        this.mAreaRect = new Rect();
        this.mColWeights = new float[0];
        this.mRowWeight = Float.NaN;
        setItemCount(0);
    }

    public OnePlusNLayoutHelperEx(int i) {
        this(i, 0, 0, 0, 0);
    }

    public OnePlusNLayoutHelperEx(int i, int i2, int i3, int i4, int i5) {
        this.mAreaRect = new Rect();
        this.mColWeights = new float[0];
        this.mRowWeight = Float.NaN;
        setItemCount(i);
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onRangeChange(int i, int i2) {
        int i3 = i2 - i;
        if (i3 < 4) {
            throw new IllegalArgumentException("pls use OnePlusNLayoutHelper instead of OnePlusNLayoutHelperEx which childcount <= 5");
        }
        if (i3 > 6) {
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
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        if (this.mChildrenViews == null || this.mChildrenViews.length != getItemCount()) {
            this.mChildrenViews = new View[getItemCount()];
        }
        int allChildren = getAllChildren(this.mChildrenViews, recycler, layoutStateWrapper, layoutChunkResult, layoutManagerHelper);
        if (allChildren != getItemCount()) {
            Log.w(TAG, "The real number of children is not match with range of LayoutHelper");
        }
        int i = 0;
        boolean z = layoutManagerHelper.getOrientation() == 1;
        int contentWidth = layoutManagerHelper.getContentWidth();
        int contentHeight = layoutManagerHelper.getContentHeight();
        int paddingLeft = layoutManagerHelper.getPaddingLeft() + layoutManagerHelper.getPaddingRight() + getHorizontalMargin() + getHorizontalPadding();
        int paddingTop = layoutManagerHelper.getPaddingTop() + layoutManagerHelper.getPaddingBottom() + getVerticalMargin() + getVerticalPadding();
        if (allChildren == 5) {
            i = handleFive(layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop);
        } else if (allChildren == 6) {
            i = handSix(layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop);
        } else if (allChildren == 7) {
            i = handSeven(layoutStateWrapper, layoutChunkResult, layoutManagerHelper, z, contentWidth, contentHeight, paddingLeft, paddingTop);
        }
        layoutChunkResult.mConsumed = i;
        Arrays.fill(this.mChildrenViews, (Object) null);
    }

    private float getViewMainWeight(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        if (this.mColWeights.length > i) {
            return this.mColWeights[i];
        }
        return Float.NaN;
    }

    @Override // com.alibaba.android.vlayout.layout.AbstractFullFillLayoutHelper, com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computeAlignOffset(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        if (getItemCount() == 3) {
            if (i == 1 && z) {
                Log.w(TAG, "Should not happen after adjust anchor");
                return 0;
            }
        } else if (getItemCount() == 4 && i == 1 && z) {
            return 0;
        }
        if (layoutManagerHelper.getOrientation() == 1) {
            if (z) {
                return this.mMarginBottom + this.mPaddingBottom;
            }
            return (-this.mMarginTop) - this.mPaddingTop;
        }
        if (z) {
            return this.mMarginRight + this.mPaddingRight;
        }
        return (-this.mMarginLeft) - this.mPaddingLeft;
    }

    private int handleFive(VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        View view;
        View view2;
        char c;
        View view3;
        int i5;
        OrientationHelperEx orientationHelperEx;
        char c2;
        float f;
        int i6;
        View view4;
        int i7;
        VirtualLayoutManager.LayoutParams layoutParams;
        int i8;
        float f2;
        float f3;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        View view5 = this.mChildrenViews[0];
        VirtualLayoutManager.LayoutParams layoutParams2 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view5.getLayoutParams());
        View view6 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[4] : this.mChildrenViews[1];
        VirtualLayoutManager.LayoutParams layoutParams3 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view6.getLayoutParams());
        View view7 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[3] : this.mChildrenViews[2];
        VirtualLayoutManager.LayoutParams layoutParams4 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view7.getLayoutParams());
        View view8 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[2] : this.mChildrenViews[3];
        VirtualLayoutManager.LayoutParams layoutParams5 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view8.getLayoutParams());
        View view9 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[1] : this.mChildrenViews[4];
        VirtualLayoutManager.LayoutParams layoutParams6 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view9.getLayoutParams());
        float viewMainWeight = getViewMainWeight(layoutParams2, 0);
        float viewMainWeight2 = getViewMainWeight(layoutParams2, 1);
        float viewMainWeight3 = getViewMainWeight(layoutParams2, 2);
        float viewMainWeight4 = getViewMainWeight(layoutParams2, 3);
        float viewMainWeight5 = getViewMainWeight(layoutParams2, 4);
        if (z) {
            layoutParams3.topMargin = layoutParams2.topMargin;
            int i9 = layoutParams2.bottomMargin;
            layoutParams5.bottomMargin = i9;
            layoutParams4.bottomMargin = i9;
            layoutParams4.leftMargin = layoutParams3.leftMargin;
            layoutParams5.rightMargin = layoutParams3.rightMargin;
            layoutParams6.rightMargin = layoutParams4.rightMargin;
            if (Float.isNaN(this.mAspectRatio)) {
                orientationHelperEx = mainOrientationHelper;
            } else {
                orientationHelperEx = mainOrientationHelper;
                layoutParams2.height = (int) ((i - i3) / this.mAspectRatio);
            }
            int i10 = ((((((i - i3) - layoutParams2.leftMargin) - layoutParams2.rightMargin) - layoutParams3.leftMargin) - layoutParams3.rightMargin) - layoutParams4.leftMargin) - layoutParams4.rightMargin;
            int i11 = (int) ((Float.isNaN(viewMainWeight) ? i10 / 3.0f : (i10 * viewMainWeight) / 100.0f) + 0.5f);
            if (Float.isNaN(viewMainWeight2)) {
                c2 = 2;
                f = 0.5f;
                i6 = (i10 - i11) / 2;
            } else {
                c2 = 2;
                f = 0.5f;
                i6 = (int) (((i10 * viewMainWeight2) / 100.0f) + 0.5f);
            }
            if (Float.isNaN(viewMainWeight3)) {
                view4 = view9;
                i7 = i6;
            } else {
                view4 = view9;
                i7 = (int) (((i10 * viewMainWeight3) / 100.0f) + f);
            }
            if (Float.isNaN(viewMainWeight4)) {
                layoutParams = layoutParams6;
                i8 = i6;
            } else {
                layoutParams = layoutParams6;
                i8 = (int) (((i10 * viewMainWeight4) / 100.0f) + f);
            }
            int i12 = Float.isNaN(viewMainWeight5) ? i6 : (int) (((i10 * viewMainWeight5) / 100.0f) + f);
            layoutManagerHelper.measureChildWithMargins(view5, View.MeasureSpec.makeMeasureSpec(i11 + layoutParams2.leftMargin + layoutParams2.rightMargin, 1073741824), layoutManagerHelper.getChildMeasureSpec(layoutManagerHelper.getContentHeight(), layoutParams2.height, true));
            int measuredHeight = view5.getMeasuredHeight();
            if (Float.isNaN(this.mRowWeight)) {
                f3 = ((measuredHeight - layoutParams3.bottomMargin) - layoutParams4.topMargin) / 2.0f;
                f2 = 0.5f;
            } else {
                f2 = 0.5f;
                f3 = (((measuredHeight - layoutParams3.bottomMargin) - layoutParams4.topMargin) * this.mRowWeight) / 100.0f;
            }
            int i13 = (int) (f3 + f2);
            int i14 = ((measuredHeight - layoutParams3.bottomMargin) - layoutParams4.topMargin) - i13;
            layoutManagerHelper.measureChildWithMargins(view6, View.MeasureSpec.makeMeasureSpec(i6 + layoutParams3.leftMargin + layoutParams3.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams3.topMargin + i13 + layoutParams3.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view7, View.MeasureSpec.makeMeasureSpec(i7 + layoutParams4.leftMargin + layoutParams4.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams4.topMargin + i14 + layoutParams4.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view8, View.MeasureSpec.makeMeasureSpec(i8 + layoutParams5.leftMargin + layoutParams5.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams5.topMargin + i14 + layoutParams5.bottomMargin, 1073741824));
            VirtualLayoutManager.LayoutParams layoutParams7 = layoutParams;
            view3 = view4;
            layoutManagerHelper.measureChildWithMargins(view3, View.MeasureSpec.makeMeasureSpec(i12 + layoutParams7.leftMargin + layoutParams7.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams7.topMargin + i14 + layoutParams7.bottomMargin, 1073741824));
            i5 = Math.max(measuredHeight + layoutParams2.topMargin + layoutParams2.bottomMargin, i13 + layoutParams3.topMargin + layoutParams3.bottomMargin + Math.max(layoutParams4.topMargin + i14 + layoutParams4.bottomMargin, i14 + layoutParams5.topMargin + layoutParams5.bottomMargin)) + getVerticalMargin() + getVerticalPadding();
            calculateRect((i5 - getVerticalMargin()) - getVerticalPadding(), this.mAreaRect, layoutStateWrapper, layoutManagerHelper);
            OrientationHelperEx orientationHelperEx2 = orientationHelperEx;
            view2 = view5;
            int decoratedMeasurementInOther = this.mAreaRect.left + orientationHelperEx2.getDecoratedMeasurementInOther(view2);
            view = view7;
            c = c2;
            layoutChildWithMargin(view2, this.mAreaRect.left, this.mAreaRect.top, decoratedMeasurementInOther, this.mAreaRect.bottom, layoutManagerHelper);
            int decoratedMeasurementInOther2 = decoratedMeasurementInOther + orientationHelperEx2.getDecoratedMeasurementInOther(view6);
            layoutChildWithMargin(view6, decoratedMeasurementInOther, this.mAreaRect.top, decoratedMeasurementInOther2, this.mAreaRect.top + orientationHelperEx2.getDecoratedMeasurement(view6), layoutManagerHelper);
            layoutChildWithMargin(view, decoratedMeasurementInOther2, this.mAreaRect.top, decoratedMeasurementInOther2 + orientationHelperEx2.getDecoratedMeasurementInOther(view), this.mAreaRect.top + orientationHelperEx2.getDecoratedMeasurement(view), layoutManagerHelper);
            int decoratedMeasurementInOther3 = decoratedMeasurementInOther + orientationHelperEx2.getDecoratedMeasurementInOther(view8);
            layoutChildWithMargin(view8, decoratedMeasurementInOther, this.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view8), decoratedMeasurementInOther3, this.mAreaRect.bottom, layoutManagerHelper);
            layoutChildWithMargin(view3, decoratedMeasurementInOther3, this.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view3), decoratedMeasurementInOther3 + orientationHelperEx2.getDecoratedMeasurementInOther(view3), this.mAreaRect.bottom, layoutManagerHelper);
        } else {
            view = view7;
            view2 = view5;
            c = 2;
            view3 = view9;
            i5 = 0;
        }
        View[] viewArr = new View[5];
        viewArr[0] = view2;
        viewArr[1] = view6;
        viewArr[c] = view;
        viewArr[3] = view8;
        viewArr[4] = view3;
        handleStateOnResult(layoutChunkResult, viewArr);
        return i5;
    }

    private int handSix(VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        OrientationHelperEx orientationHelperEx;
        View view;
        OnePlusNLayoutHelperEx onePlusNLayoutHelperEx;
        View view2;
        View view3;
        char c;
        View view4;
        View view5;
        View view6;
        int i5;
        View view7;
        View view8;
        int i6;
        View view9;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        View view10 = this.mChildrenViews[0];
        VirtualLayoutManager.LayoutParams layoutParams = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view10.getLayoutParams());
        View view11 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[5] : this.mChildrenViews[1];
        VirtualLayoutManager.LayoutParams layoutParams2 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view11.getLayoutParams());
        View view12 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[4] : this.mChildrenViews[2];
        VirtualLayoutManager.LayoutParams layoutParams3 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view12.getLayoutParams());
        View view13 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[3] : this.mChildrenViews[3];
        VirtualLayoutManager.LayoutParams layoutParams4 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view13.getLayoutParams());
        View view14 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[2] : this.mChildrenViews[4];
        VirtualLayoutManager.LayoutParams layoutParams5 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view14.getLayoutParams());
        if (layoutManagerHelper.getReverseLayout()) {
            orientationHelperEx = mainOrientationHelper;
            view = this.mChildrenViews[1];
        } else {
            orientationHelperEx = mainOrientationHelper;
            view = this.mChildrenViews[5];
        }
        View view15 = view;
        VirtualLayoutManager.LayoutParams layoutParams6 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view.getLayoutParams());
        float viewMainWeight = getViewMainWeight(layoutParams, 0);
        float viewMainWeight2 = getViewMainWeight(layoutParams, 1);
        float viewMainWeight3 = getViewMainWeight(layoutParams, 2);
        float viewMainWeight4 = getViewMainWeight(layoutParams, 3);
        float viewMainWeight5 = getViewMainWeight(layoutParams, 4);
        float viewMainWeight6 = getViewMainWeight(layoutParams, 5);
        if (z) {
            layoutParams2.topMargin = layoutParams.topMargin;
            int i7 = layoutParams.bottomMargin;
            layoutParams4.bottomMargin = i7;
            layoutParams3.bottomMargin = i7;
            layoutParams3.leftMargin = layoutParams2.leftMargin;
            layoutParams4.rightMargin = layoutParams2.rightMargin;
            layoutParams5.rightMargin = layoutParams2.rightMargin;
            if (Float.isNaN(this.mAspectRatio)) {
                view7 = view14;
            } else {
                view7 = view14;
                layoutParams.height = (int) ((i - i3) / this.mAspectRatio);
            }
            int i8 = ((((i - i3) - layoutParams.leftMargin) - layoutParams.rightMargin) - layoutParams2.leftMargin) - layoutParams2.rightMargin;
            int i9 = (int) ((Float.isNaN(viewMainWeight) ? i8 / 2.0f : (i8 * viewMainWeight) / 100.0f) + 0.5f);
            int i10 = Float.isNaN(viewMainWeight2) ? i8 - i9 : (int) (((i8 * viewMainWeight2) / 100.0f) + 0.5f);
            if (Float.isNaN(viewMainWeight3)) {
                view8 = view13;
                i6 = i10;
                view9 = view11;
            } else {
                view8 = view13;
                i6 = i10;
                view9 = view11;
                i10 = (int) (((i8 * viewMainWeight3) / 100.0f) + 0.5d);
            }
            int i11 = (int) ((Float.isNaN(viewMainWeight4) ? ((((((r0 - layoutParams4.leftMargin) - layoutParams4.rightMargin) - layoutParams5.leftMargin) - layoutParams5.rightMargin) - layoutParams6.leftMargin) - layoutParams6.rightMargin) / 3.0f : (i8 * viewMainWeight4) / 100.0f) + 0.5f);
            int i12 = Float.isNaN(viewMainWeight5) ? i11 : (int) (((i8 * viewMainWeight5) / 100.0f) + 0.5f);
            int i13 = Float.isNaN(viewMainWeight6) ? i11 : (int) (((i8 * viewMainWeight6) / 100.0f) + 0.5f);
            layoutManagerHelper.measureChildWithMargins(view10, View.MeasureSpec.makeMeasureSpec(i9 + layoutParams.leftMargin + layoutParams.rightMargin, 1073741824), layoutManagerHelper.getChildMeasureSpec(layoutManagerHelper.getContentHeight(), layoutParams.height, true));
            int measuredHeight = view10.getMeasuredHeight();
            int i14 = (int) ((Float.isNaN(this.mRowWeight) ? ((measuredHeight - layoutParams2.bottomMargin) - layoutParams3.topMargin) / 2.0f : (((measuredHeight - layoutParams2.bottomMargin) - layoutParams3.topMargin) * this.mRowWeight) / 100.0f) + 0.5f);
            int i15 = ((measuredHeight - layoutParams2.bottomMargin) - layoutParams3.topMargin) - i14;
            view2 = view9;
            layoutManagerHelper.measureChildWithMargins(view2, View.MeasureSpec.makeMeasureSpec(i6 + layoutParams2.leftMargin + layoutParams2.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams2.topMargin + i14 + layoutParams2.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view12, View.MeasureSpec.makeMeasureSpec(i10 + layoutParams3.leftMargin + layoutParams3.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams3.topMargin + i15 + layoutParams3.bottomMargin, 1073741824));
            view5 = view8;
            layoutManagerHelper.measureChildWithMargins(view5, View.MeasureSpec.makeMeasureSpec(i11 + layoutParams4.leftMargin + layoutParams4.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams4.topMargin + i15 + layoutParams4.bottomMargin, 1073741824));
            view6 = view7;
            layoutManagerHelper.measureChildWithMargins(view6, View.MeasureSpec.makeMeasureSpec(i12 + layoutParams5.leftMargin + layoutParams5.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams5.topMargin + i15 + layoutParams5.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view15, View.MeasureSpec.makeMeasureSpec(i13 + layoutParams6.leftMargin + layoutParams6.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams6.topMargin + i15 + layoutParams6.bottomMargin, 1073741824));
            i5 = Math.max(measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin, (i14 + layoutParams2.topMargin + layoutParams2.bottomMargin) * 2) + Math.max(layoutParams4.topMargin + i15 + layoutParams4.bottomMargin, Math.max(layoutParams5.topMargin + i15 + layoutParams5.bottomMargin, i15 + layoutParams6.topMargin + layoutParams6.bottomMargin)) + getVerticalMargin() + getVerticalPadding();
            onePlusNLayoutHelperEx = this;
            onePlusNLayoutHelperEx.calculateRect((i5 - getVerticalMargin()) - getVerticalPadding(), onePlusNLayoutHelperEx.mAreaRect, layoutStateWrapper, layoutManagerHelper);
            OrientationHelperEx orientationHelperEx2 = orientationHelperEx;
            int decoratedMeasurementInOther = onePlusNLayoutHelperEx.mAreaRect.left + orientationHelperEx2.getDecoratedMeasurementInOther(view10);
            view4 = view12;
            view3 = view15;
            c = 2;
            view10 = view10;
            layoutChildWithMargin(view10, onePlusNLayoutHelperEx.mAreaRect.left, onePlusNLayoutHelperEx.mAreaRect.top, decoratedMeasurementInOther, onePlusNLayoutHelperEx.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view5), layoutManagerHelper);
            layoutChildWithMargin(view2, decoratedMeasurementInOther, onePlusNLayoutHelperEx.mAreaRect.top, decoratedMeasurementInOther + orientationHelperEx2.getDecoratedMeasurementInOther(view2), onePlusNLayoutHelperEx.mAreaRect.top + orientationHelperEx2.getDecoratedMeasurement(view2), layoutManagerHelper);
            layoutChildWithMargin(view4, decoratedMeasurementInOther, onePlusNLayoutHelperEx.mAreaRect.top + orientationHelperEx2.getDecoratedMeasurement(view4), decoratedMeasurementInOther + orientationHelperEx2.getDecoratedMeasurementInOther(view4), onePlusNLayoutHelperEx.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view5), layoutManagerHelper);
            int decoratedMeasurementInOther2 = onePlusNLayoutHelperEx.mAreaRect.left + orientationHelperEx2.getDecoratedMeasurementInOther(view5);
            layoutChildWithMargin(view5, onePlusNLayoutHelperEx.mAreaRect.left, onePlusNLayoutHelperEx.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view5), decoratedMeasurementInOther2, onePlusNLayoutHelperEx.mAreaRect.bottom, layoutManagerHelper);
            int decoratedMeasurementInOther3 = decoratedMeasurementInOther2 + orientationHelperEx2.getDecoratedMeasurementInOther(view6);
            layoutChildWithMargin(view6, decoratedMeasurementInOther2, onePlusNLayoutHelperEx.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view6), decoratedMeasurementInOther3, onePlusNLayoutHelperEx.mAreaRect.bottom, layoutManagerHelper);
            layoutChildWithMargin(view3, decoratedMeasurementInOther3, onePlusNLayoutHelperEx.mAreaRect.bottom - orientationHelperEx2.getDecoratedMeasurement(view3), decoratedMeasurementInOther3 + orientationHelperEx2.getDecoratedMeasurementInOther(view3), onePlusNLayoutHelperEx.mAreaRect.bottom, layoutManagerHelper);
        } else {
            onePlusNLayoutHelperEx = this;
            view2 = view11;
            view3 = view15;
            c = 2;
            view4 = view12;
            View view16 = view14;
            view5 = view13;
            view6 = view16;
            i5 = 0;
        }
        View[] viewArr = new View[6];
        viewArr[0] = view10;
        viewArr[1] = view2;
        viewArr[c] = view4;
        viewArr[3] = view5;
        viewArr[4] = view6;
        viewArr[5] = view3;
        onePlusNLayoutHelperEx.handleStateOnResult(layoutChunkResult, viewArr);
        return i5;
    }

    private int handSeven(VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper, boolean z, int i, int i2, int i3, int i4) {
        VirtualLayoutManager.LayoutParams layoutParams;
        View view;
        View view2;
        View view3;
        View view4;
        View view5;
        char c;
        View view6;
        int i5;
        int i6;
        VirtualLayoutManager.LayoutParams layoutParams2;
        char c2;
        int i7;
        View view7;
        VirtualLayoutManager.LayoutParams layoutParams3;
        int i8;
        float f;
        int i9;
        View view8;
        int i10;
        int i11;
        int i12;
        float f2;
        float f3;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        View view9 = this.mChildrenViews[0];
        VirtualLayoutManager.LayoutParams layoutParams4 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view9.getLayoutParams());
        View view10 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[6] : this.mChildrenViews[1];
        VirtualLayoutManager.LayoutParams layoutParams5 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view10.getLayoutParams());
        View view11 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[5] : this.mChildrenViews[2];
        VirtualLayoutManager.LayoutParams layoutParams6 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view11.getLayoutParams());
        View view12 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[4] : this.mChildrenViews[3];
        VirtualLayoutManager.LayoutParams layoutParams7 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view12.getLayoutParams());
        View view13 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[3] : this.mChildrenViews[4];
        VirtualLayoutManager.LayoutParams layoutParams8 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view13.getLayoutParams());
        View view14 = layoutManagerHelper.getReverseLayout() ? this.mChildrenViews[2] : this.mChildrenViews[5];
        View view15 = view14;
        VirtualLayoutManager.LayoutParams layoutParams9 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view14.getLayoutParams());
        if (layoutManagerHelper.getReverseLayout()) {
            layoutParams = layoutParams9;
            view = this.mChildrenViews[1];
        } else {
            layoutParams = layoutParams9;
            view = this.mChildrenViews[6];
        }
        View view16 = view;
        VirtualLayoutManager.LayoutParams layoutParams10 = new VirtualLayoutManager.LayoutParams((RecyclerView.LayoutParams) view.getLayoutParams());
        float viewMainWeight = getViewMainWeight(layoutParams4, 0);
        float viewMainWeight2 = getViewMainWeight(layoutParams4, 1);
        float viewMainWeight3 = getViewMainWeight(layoutParams4, 2);
        float viewMainWeight4 = getViewMainWeight(layoutParams4, 3);
        float viewMainWeight5 = getViewMainWeight(layoutParams4, 4);
        float viewMainWeight6 = getViewMainWeight(layoutParams4, 5);
        float viewMainWeight7 = getViewMainWeight(layoutParams4, 6);
        if (z) {
            if (Float.isNaN(this.mAspectRatio)) {
                layoutParams2 = layoutParams10;
            } else {
                layoutParams2 = layoutParams10;
                layoutParams4.height = (int) ((i - i3) / this.mAspectRatio);
            }
            int i13 = ((((((i - i3) - layoutParams4.leftMargin) - layoutParams4.rightMargin) - layoutParams5.leftMargin) - layoutParams5.rightMargin) - layoutParams6.leftMargin) - layoutParams6.rightMargin;
            int i14 = (int) ((Float.isNaN(viewMainWeight) ? i13 / 3.0f : (i13 * viewMainWeight) / 100.0f) + 0.5f);
            if (Float.isNaN(viewMainWeight2)) {
                c2 = 2;
                i7 = (i13 - i14) / 2;
            } else {
                c2 = 2;
                i7 = (int) (((i13 * viewMainWeight2) / 100.0f) + 0.5f);
            }
            if (Float.isNaN(viewMainWeight3)) {
                view7 = view13;
                i8 = i7;
                layoutParams3 = layoutParams8;
            } else {
                view7 = view13;
                layoutParams3 = layoutParams8;
                i8 = (int) (((i13 * viewMainWeight3) / 100.0f) + 0.5d);
            }
            if (Float.isNaN(viewMainWeight4)) {
                i9 = i7;
                f = 100.0f;
            } else {
                f = 100.0f;
                i9 = (int) (((i13 * viewMainWeight4) / 100.0f) + 0.5f);
            }
            if (Float.isNaN(viewMainWeight5)) {
                view8 = view12;
                i10 = i7;
            } else {
                view8 = view12;
                i10 = (int) (((i13 * viewMainWeight5) / f) + 0.5f);
            }
            if (Float.isNaN(viewMainWeight6)) {
                i11 = i10;
                i12 = i7;
            } else {
                i11 = i10;
                i12 = (int) (((i13 * viewMainWeight6) / f) + 0.5f);
            }
            int i15 = Float.isNaN(viewMainWeight6) ? i7 : (int) (((i13 * viewMainWeight7) / f) + 0.5f);
            layoutManagerHelper.measureChildWithMargins(view9, View.MeasureSpec.makeMeasureSpec(i14 + layoutParams4.leftMargin + layoutParams4.rightMargin, 1073741824), layoutManagerHelper.getChildMeasureSpec(layoutManagerHelper.getContentHeight(), layoutParams4.height, true));
            int measuredHeight = view9.getMeasuredHeight();
            if (Float.isNaN(this.mRowWeight)) {
                f2 = (measuredHeight - layoutParams5.bottomMargin) - layoutParams6.topMargin;
                f3 = 3.0f;
            } else {
                f2 = ((measuredHeight - layoutParams5.bottomMargin) - layoutParams6.topMargin) * this.mRowWeight;
                f3 = 100.0f;
            }
            int i16 = (int) ((f2 / f3) + 0.5f);
            layoutManagerHelper.measureChildWithMargins(view10, View.MeasureSpec.makeMeasureSpec(i7 + layoutParams5.leftMargin + layoutParams5.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams5.topMargin + i16 + layoutParams5.bottomMargin, 1073741824));
            layoutManagerHelper.measureChildWithMargins(view11, View.MeasureSpec.makeMeasureSpec(i8 + layoutParams6.leftMargin + layoutParams6.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams6.topMargin + i16 + layoutParams6.bottomMargin, 1073741824));
            View view17 = view8;
            layoutManagerHelper.measureChildWithMargins(view17, View.MeasureSpec.makeMeasureSpec(i9 + layoutParams7.leftMargin + layoutParams7.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams7.topMargin + i16 + layoutParams7.bottomMargin, 1073741824));
            VirtualLayoutManager.LayoutParams layoutParams11 = layoutParams3;
            View view18 = view7;
            layoutManagerHelper.measureChildWithMargins(view18, View.MeasureSpec.makeMeasureSpec(i11 + layoutParams11.leftMargin + layoutParams11.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams11.topMargin + i16 + layoutParams11.bottomMargin, 1073741824));
            VirtualLayoutManager.LayoutParams layoutParams12 = layoutParams;
            layoutManagerHelper.measureChildWithMargins(view15, View.MeasureSpec.makeMeasureSpec(i12 + layoutParams12.leftMargin + layoutParams12.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams12.topMargin + i16 + layoutParams12.bottomMargin, 1073741824));
            VirtualLayoutManager.LayoutParams layoutParams13 = layoutParams2;
            layoutManagerHelper.measureChildWithMargins(view16, View.MeasureSpec.makeMeasureSpec(i15 + layoutParams13.leftMargin + layoutParams13.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams13.topMargin + i16 + layoutParams13.bottomMargin, 1073741824));
            int max = Math.max(measuredHeight + layoutParams4.topMargin + layoutParams4.bottomMargin, Math.max(layoutParams5.topMargin + i16 + layoutParams5.bottomMargin, layoutParams6.topMargin + i16 + layoutParams6.bottomMargin) + Math.max(layoutParams7.topMargin + i16 + layoutParams7.bottomMargin, layoutParams11.topMargin + i16 + layoutParams11.bottomMargin) + Math.max(layoutParams12.topMargin + i16 + layoutParams12.bottomMargin, i16 + layoutParams13.topMargin + layoutParams13.bottomMargin)) + getVerticalMargin() + getVerticalPadding();
            calculateRect((max - getVerticalMargin()) - getVerticalPadding(), this.mAreaRect, layoutStateWrapper, layoutManagerHelper);
            view4 = view9;
            int decoratedMeasurementInOther = this.mAreaRect.left + mainOrientationHelper.getDecoratedMeasurementInOther(view4);
            view2 = view11;
            i6 = max;
            c = c2;
            view6 = view18;
            layoutChildWithMargin(view4, this.mAreaRect.left, this.mAreaRect.top, decoratedMeasurementInOther, this.mAreaRect.bottom, layoutManagerHelper);
            int decoratedMeasurementInOther2 = decoratedMeasurementInOther + mainOrientationHelper.getDecoratedMeasurementInOther(view10);
            layoutChildWithMargin(view10, decoratedMeasurementInOther, this.mAreaRect.top, decoratedMeasurementInOther2, this.mAreaRect.top + mainOrientationHelper.getDecoratedMeasurement(view10), layoutManagerHelper);
            layoutChildWithMargin(view2, decoratedMeasurementInOther2, this.mAreaRect.top, decoratedMeasurementInOther2 + mainOrientationHelper.getDecoratedMeasurementInOther(view2), this.mAreaRect.top + mainOrientationHelper.getDecoratedMeasurement(view2), layoutManagerHelper);
            int decoratedMeasurementInOther3 = decoratedMeasurementInOther + mainOrientationHelper.getDecoratedMeasurementInOther(view17);
            view3 = view17;
            view5 = view15;
            layoutChildWithMargin(view17, decoratedMeasurementInOther, this.mAreaRect.top + mainOrientationHelper.getDecoratedMeasurement(view10), decoratedMeasurementInOther3, this.mAreaRect.bottom - mainOrientationHelper.getDecoratedMeasurement(view15), layoutManagerHelper);
            layoutChildWithMargin(view6, decoratedMeasurementInOther3, this.mAreaRect.top + mainOrientationHelper.getDecoratedMeasurement(view10), decoratedMeasurementInOther3 + mainOrientationHelper.getDecoratedMeasurementInOther(view6), this.mAreaRect.bottom - mainOrientationHelper.getDecoratedMeasurement(view16), layoutManagerHelper);
            int decoratedMeasurementInOther4 = decoratedMeasurementInOther + mainOrientationHelper.getDecoratedMeasurementInOther(view5);
            layoutChildWithMargin(view5, decoratedMeasurementInOther, this.mAreaRect.bottom - mainOrientationHelper.getDecoratedMeasurement(view5), decoratedMeasurementInOther4, this.mAreaRect.bottom, layoutManagerHelper);
            layoutChildWithMargin(view16, decoratedMeasurementInOther4, this.mAreaRect.bottom - mainOrientationHelper.getDecoratedMeasurement(view16), decoratedMeasurementInOther4 + mainOrientationHelper.getDecoratedMeasurementInOther(view16), this.mAreaRect.bottom, layoutManagerHelper);
            i5 = 6;
        } else {
            view2 = view11;
            view3 = view12;
            view4 = view9;
            view5 = view15;
            c = 2;
            view6 = view13;
            i5 = 6;
            i6 = 0;
        }
        View[] viewArr = new View[i5];
        viewArr[0] = view4;
        viewArr[1] = view10;
        viewArr[c] = view2;
        viewArr[3] = view3;
        viewArr[4] = view6;
        viewArr[5] = view5;
        handleStateOnResult(layoutChunkResult, viewArr);
        return i6;
    }
}
