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
public class ColumnLayoutHelper extends AbstractFullFillLayoutHelper {
    private View[] mEqViews;
    private View[] mViews;
    private Rect mTempArea = new Rect();
    private float[] mWeights = new float[0];

    public void setWeights(float[] fArr) {
        if (fArr != null) {
            this.mWeights = Arrays.copyOf(fArr, fArr.length);
        } else {
            this.mWeights = new float[0];
        }
    }

    @Override // com.alibaba.android.vlayout.layout.AbstractFullFillLayoutHelper, com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        int childMeasureSpec;
        int i;
        int i2;
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        boolean z = true;
        boolean z2 = layoutManagerHelper.getOrientation() == 1;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        int itemCount = getItemCount();
        if (this.mViews == null || this.mViews.length != itemCount) {
            this.mViews = new View[itemCount];
        }
        if (this.mEqViews == null || this.mEqViews.length != itemCount) {
            this.mEqViews = new View[itemCount];
        } else {
            Arrays.fill(this.mEqViews, (Object) null);
        }
        int allChildren = getAllChildren(this.mViews, recycler, layoutStateWrapper, layoutChunkResult, layoutManagerHelper);
        if (z2) {
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < allChildren; i6++) {
                ViewGroup.LayoutParams layoutParams = this.mViews[i6].getLayoutParams();
                if (layoutParams instanceof RecyclerView.LayoutParams) {
                    RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) layoutParams;
                    layoutParams2.leftMargin = Math.max(i4, layoutParams2.leftMargin);
                    i3 += layoutParams2.leftMargin;
                    if (i6 != allChildren - 1) {
                        i4 = layoutParams2.rightMargin;
                        layoutParams2.rightMargin = 0;
                    } else {
                        i3 += layoutParams2.rightMargin;
                    }
                    i5 = Math.max(i5, layoutParams2.topMargin + layoutParams2.bottomMargin);
                }
            }
            int contentWidth = (((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingLeft()) - layoutManagerHelper.getPaddingRight()) - getHorizontalMargin()) - getHorizontalPadding();
            int i7 = contentWidth - i3;
            int i8 = Float.isNaN(this.mAspectRatio) ? -1 : (int) ((contentWidth / this.mAspectRatio) + 0.5f);
            int i9 = Integer.MAX_VALUE;
            int i10 = 0;
            int i11 = 0;
            int i12 = 0;
            while (i10 < allChildren) {
                View view = this.mViews[i10];
                VirtualLayoutManager.LayoutParams layoutParams3 = (VirtualLayoutManager.LayoutParams) view.getLayoutParams();
                int childMeasureSpec2 = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom(), i8 > 0 ? i8 : layoutParams3.height, z);
                if (this.mWeights != null && i10 < this.mWeights.length && !Float.isNaN(this.mWeights[i10]) && this.mWeights[i10] >= 0.0f) {
                    int i13 = (int) ((((this.mWeights[i10] * 1.0f) / 100.0f) * i7) + 0.5f);
                    if (Float.isNaN(layoutParams3.mAspectRatio)) {
                        i2 = 1073741824;
                    } else {
                        int i14 = (int) ((i13 / layoutParams3.mAspectRatio) + 0.5f);
                        i2 = 1073741824;
                        childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i14, 1073741824);
                    }
                    layoutManagerHelper.measureChildWithMargins(view, View.MeasureSpec.makeMeasureSpec(i13, i2), childMeasureSpec2);
                    i11 += i13;
                    i9 = Math.min(i9, view.getMeasuredHeight());
                } else {
                    this.mEqViews[i12] = view;
                    i12++;
                }
                i10++;
                z = true;
            }
            for (int i15 = 0; i15 < i12; i15++) {
                View view2 = this.mEqViews[i15];
                VirtualLayoutManager.LayoutParams layoutParams4 = (VirtualLayoutManager.LayoutParams) view2.getLayoutParams();
                int i16 = (int) ((((i7 - i11) * 1.0f) / i12) + 0.5f);
                if (!Float.isNaN(layoutParams4.mAspectRatio)) {
                    i = 1073741824;
                    childMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((i16 / layoutParams4.mAspectRatio) + 0.5f), 1073741824);
                } else {
                    childMeasureSpec = layoutManagerHelper.getChildMeasureSpec((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom(), i8 > 0 ? i8 : layoutParams4.height, true);
                    i = 1073741824;
                }
                layoutManagerHelper.measureChildWithMargins(view2, View.MeasureSpec.makeMeasureSpec(i16, i), childMeasureSpec);
                i9 = Math.min(i9, view2.getMeasuredHeight());
            }
            for (int i17 = 0; i17 < allChildren; i17++) {
                View view3 = this.mViews[i17];
                if (view3.getMeasuredHeight() != i9) {
                    layoutManagerHelper.measureChildWithMargins(view3, View.MeasureSpec.makeMeasureSpec(view3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i9, 1073741824));
                }
            }
            int i18 = i9 + i5;
            layoutChunkResult.mConsumed = getVerticalMargin() + i18 + getVerticalPadding();
            calculateRect(i18, this.mTempArea, layoutStateWrapper, layoutManagerHelper);
            int i19 = this.mTempArea.left;
            int i20 = 0;
            while (i20 < allChildren) {
                View view4 = this.mViews[i20];
                int i21 = this.mTempArea.top;
                int i22 = this.mTempArea.bottom;
                int decoratedMeasurementInOther = i19 + mainOrientationHelper.getDecoratedMeasurementInOther(view4);
                layoutChildWithMargin(view4, i19, i21, decoratedMeasurementInOther, i22, layoutManagerHelper);
                i20++;
                i19 = decoratedMeasurementInOther;
            }
        }
        Arrays.fill(this.mViews, (Object) null);
        Arrays.fill(this.mEqViews, (Object) null);
    }

    @Override // com.alibaba.android.vlayout.layout.AbstractFullFillLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void checkAnchorInfo(RecyclerView.State state, VirtualLayoutManager.AnchorInfoWrapper anchorInfoWrapper, LayoutManagerHelper layoutManagerHelper) {
        if (anchorInfoWrapper.layoutFromEnd) {
            anchorInfoWrapper.position = getRange().getUpper().intValue();
        } else {
            anchorInfoWrapper.position = getRange().getLower().intValue();
        }
    }
}
