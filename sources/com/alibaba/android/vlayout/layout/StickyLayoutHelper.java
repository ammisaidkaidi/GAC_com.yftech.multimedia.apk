package com.alibaba.android.vlayout.layout;

import android.util.Log;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutHelper;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.VirtualLayoutManager;

/* loaded from: /home/user/work/dex/classes3.dex */
public class StickyLayoutHelper extends FixAreaLayoutHelper {
    private static final String TAG = "StickyStartLayoutHelper";
    private boolean mDoNormalHandle;
    private View mFixView;
    private int mOffset;
    private int mPos;
    private boolean mStickyStart;

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public boolean requireLayoutView() {
        return false;
    }

    public StickyLayoutHelper() {
        this(true);
    }

    public StickyLayoutHelper(boolean z) {
        this.mPos = -1;
        this.mStickyStart = true;
        this.mOffset = 0;
        this.mFixView = null;
        this.mDoNormalHandle = false;
        this.mStickyStart = z;
        setItemCount(1);
    }

    public void setStickyStart(boolean z) {
        this.mStickyStart = z;
    }

    public void setOffset(int i) {
        this.mOffset = i;
    }

    public boolean isStickyNow() {
        return !this.mDoNormalHandle;
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

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        int paddingTop;
        int decoratedMeasurementInOther;
        int offset;
        int offset2;
        int i;
        int paddingLeft;
        int decoratedMeasurementInOther2;
        int endAfterPadding;
        int i2;
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        View view = this.mFixView;
        if (view == null) {
            view = layoutStateWrapper.next(recycler);
        } else {
            layoutStateWrapper.skipCurrentPosition();
        }
        View view2 = view;
        if (view2 == null) {
            layoutChunkResult.mFinished = true;
            return;
        }
        doMeasure(view2, layoutManagerHelper);
        boolean z = layoutManagerHelper.getOrientation() == 1;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        layoutChunkResult.mConsumed = mainOrientationHelper.getDecoratedMeasurement(view2);
        this.mDoNormalHandle = true;
        int available = (layoutStateWrapper.getAvailable() - layoutChunkResult.mConsumed) + layoutStateWrapper.getExtra();
        if (layoutManagerHelper.getOrientation() == 1) {
            if (layoutManagerHelper.isDoLayoutRTL()) {
                decoratedMeasurementInOther2 = (layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - this.mMarginRight;
                paddingLeft = decoratedMeasurementInOther2 - mainOrientationHelper.getDecoratedMeasurementInOther(view2);
            } else {
                paddingLeft = this.mMarginLeft + layoutManagerHelper.getPaddingLeft();
                decoratedMeasurementInOther2 = mainOrientationHelper.getDecoratedMeasurementInOther(view2) + paddingLeft;
            }
            if (layoutStateWrapper.getLayoutDirection() == -1) {
                endAfterPadding = layoutStateWrapper.getOffset() - this.mMarginBottom;
                i2 = layoutStateWrapper.getOffset() - layoutChunkResult.mConsumed;
            } else if (this.mStickyStart) {
                i2 = this.mMarginTop + layoutStateWrapper.getOffset();
                endAfterPadding = layoutStateWrapper.getOffset() + layoutChunkResult.mConsumed;
            } else {
                endAfterPadding = ((mainOrientationHelper.getEndAfterPadding() - this.mMarginBottom) - this.mOffset) - this.mAdjuster.bottom;
                i2 = endAfterPadding - layoutChunkResult.mConsumed;
            }
            if (layoutManagerHelper.getReverseLayout() || !this.mStickyStart) {
                if ((available < this.mOffset + this.mAdjuster.bottom && layoutStateWrapper.getItemDirection() == 1) || endAfterPadding > this.mMarginBottom + this.mOffset + this.mAdjuster.bottom) {
                    this.mDoNormalHandle = false;
                    this.mFixView = view2;
                    int endAfterPadding2 = ((mainOrientationHelper.getEndAfterPadding() - this.mMarginBottom) - this.mOffset) - this.mAdjuster.bottom;
                    offset2 = decoratedMeasurementInOther2;
                    i = paddingLeft;
                    decoratedMeasurementInOther = endAfterPadding2;
                    paddingTop = endAfterPadding2 - layoutChunkResult.mConsumed;
                }
                offset2 = decoratedMeasurementInOther2;
                i = paddingLeft;
                decoratedMeasurementInOther = endAfterPadding;
                paddingTop = i2;
            } else if ((available < this.mOffset + this.mAdjuster.top && layoutStateWrapper.getItemDirection() == -1) || i2 < this.mMarginTop + this.mOffset + this.mAdjuster.top) {
                this.mDoNormalHandle = false;
                this.mFixView = view2;
                int startAfterPadding = mainOrientationHelper.getStartAfterPadding() + this.mMarginTop + this.mOffset + this.mAdjuster.top;
                offset2 = decoratedMeasurementInOther2;
                i = paddingLeft;
                paddingTop = startAfterPadding;
                decoratedMeasurementInOther = layoutChunkResult.mConsumed + startAfterPadding;
            } else {
                Log.i("Sticky", "remainingSpace: " + available + "    offset: " + this.mOffset);
                offset2 = decoratedMeasurementInOther2;
                i = paddingLeft;
                decoratedMeasurementInOther = endAfterPadding;
                paddingTop = i2;
            }
        } else {
            paddingTop = layoutManagerHelper.getPaddingTop();
            decoratedMeasurementInOther = mainOrientationHelper.getDecoratedMeasurementInOther(view2) + paddingTop + this.mMarginTop;
            if (layoutStateWrapper.getLayoutDirection() == -1) {
                offset2 = layoutStateWrapper.getOffset() - this.mMarginRight;
                offset = layoutStateWrapper.getOffset() - layoutChunkResult.mConsumed;
            } else {
                offset = this.mMarginLeft + layoutStateWrapper.getOffset();
                offset2 = layoutStateWrapper.getOffset() + layoutChunkResult.mConsumed;
            }
            if (layoutManagerHelper.getReverseLayout() || !this.mStickyStart) {
                if (available < this.mOffset + this.mAdjuster.right) {
                    this.mDoNormalHandle = false;
                    this.mFixView = view2;
                    int endAfterPadding3 = (mainOrientationHelper.getEndAfterPadding() - this.mOffset) - this.mAdjuster.right;
                    offset2 = endAfterPadding3;
                    i = endAfterPadding3 - layoutChunkResult.mConsumed;
                }
                i = offset;
            } else {
                if (available < this.mOffset + this.mAdjuster.left) {
                    this.mDoNormalHandle = false;
                    this.mFixView = view2;
                    i = mainOrientationHelper.getStartAfterPadding() + this.mOffset + this.mAdjuster.left;
                    offset2 = layoutChunkResult.mConsumed;
                }
                i = offset;
            }
        }
        layoutChildWithMargin(view2, i, paddingTop, offset2, decoratedMeasurementInOther, layoutManagerHelper);
        layoutChunkResult.mConsumed += z ? getVerticalMargin() : getHorizontalMargin();
        if (state.isPreLayout()) {
            this.mDoNormalHandle = true;
        }
        if (this.mDoNormalHandle) {
            layoutManagerHelper.addChildView(layoutStateWrapper, view2);
            handleStateOnResult(layoutChunkResult, view2);
            this.mFixView = null;
        }
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void beforeLayout(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutManagerHelper layoutManagerHelper) {
        super.beforeLayout(recycler, state, layoutManagerHelper);
        if (this.mFixView != null && layoutManagerHelper.isViewHolderUpdated(this.mFixView)) {
            layoutManagerHelper.removeChildView(this.mFixView);
            recycler.recycleView(this.mFixView);
            this.mFixView = null;
        }
        this.mDoNormalHandle = false;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void afterLayout(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, int i3, LayoutManagerHelper layoutManagerHelper) {
        super.afterLayout(recycler, state, i, i2, i3, layoutManagerHelper);
        if (this.mPos < 0) {
            return;
        }
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        if (!this.mDoNormalHandle && this.mPos >= i && this.mPos <= i2) {
            fixLayoutStateFromAbnormal2Normal(mainOrientationHelper, recycler, i, i2, layoutManagerHelper);
        }
        if (this.mDoNormalHandle || state.isPreLayout()) {
            state.isPreLayout();
            if (this.mFixView == null) {
                return;
            } else {
                layoutManagerHelper.removeChildView(this.mFixView);
            }
        }
        if (!this.mDoNormalHandle && this.mFixView != null) {
            if (this.mFixView.getParent() == null) {
                layoutManagerHelper.addFixedView(this.mFixView);
                return;
            } else {
                fixLayoutStateInCase1(mainOrientationHelper, recycler, i, i2, layoutManagerHelper);
                return;
            }
        }
        fixLayoutStateInCase2(mainOrientationHelper, recycler, i, i2, layoutManagerHelper);
    }

    private void fixLayoutStateFromAbnormal2Normal(OrientationHelperEx orientationHelperEx, RecyclerView.Recycler recycler, int i, int i2, LayoutManagerHelper layoutManagerHelper) {
        Log.i(TAG, "abnormal pos: " + this.mPos + " start: " + i + " end: " + i2);
        if (this.mFixView != null) {
            if (this.mStickyStart) {
                for (int childCount = layoutManagerHelper.getChildCount() - 1; childCount >= 0; childCount--) {
                    View childAt = layoutManagerHelper.getChildAt(childCount);
                    int position = layoutManagerHelper.getPosition(childAt);
                    if (position < this.mPos) {
                        int decoratedEnd = orientationHelperEx.getDecoratedEnd(childAt);
                        LayoutHelper findLayoutHelperByPosition = layoutManagerHelper.findLayoutHelperByPosition(position);
                        if (findLayoutHelperByPosition instanceof RangeGridLayoutHelper) {
                            decoratedEnd += ((RangeGridLayoutHelper) findLayoutHelperByPosition).getBorderEndSpace(layoutManagerHelper);
                        } else if (findLayoutHelperByPosition instanceof MarginLayoutHelper) {
                            MarginLayoutHelper marginLayoutHelper = (MarginLayoutHelper) findLayoutHelperByPosition;
                            decoratedEnd = decoratedEnd + marginLayoutHelper.getMarginBottom() + marginLayoutHelper.getPaddingBottom();
                        }
                        if (decoratedEnd >= this.mOffset + this.mAdjuster.top) {
                            this.mDoNormalHandle = true;
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            for (int i3 = 0; i3 < layoutManagerHelper.getChildCount(); i3++) {
                View childAt2 = layoutManagerHelper.getChildAt(i3);
                int position2 = layoutManagerHelper.getPosition(childAt2);
                if (position2 > this.mPos) {
                    int decoratedStart = orientationHelperEx.getDecoratedStart(childAt2);
                    LayoutHelper findLayoutHelperByPosition2 = layoutManagerHelper.findLayoutHelperByPosition(position2);
                    if (findLayoutHelperByPosition2 instanceof RangeGridLayoutHelper) {
                        decoratedStart -= ((RangeGridLayoutHelper) findLayoutHelperByPosition2).getBorderStartSpace(layoutManagerHelper);
                    } else if (findLayoutHelperByPosition2 instanceof MarginLayoutHelper) {
                        MarginLayoutHelper marginLayoutHelper2 = (MarginLayoutHelper) findLayoutHelperByPosition2;
                        decoratedStart = (decoratedStart - marginLayoutHelper2.getMarginTop()) - marginLayoutHelper2.getPaddingTop();
                    }
                    if (decoratedStart >= this.mOffset + this.mAdjuster.bottom) {
                        this.mDoNormalHandle = true;
                        return;
                    }
                    return;
                }
            }
        }
    }

    private void fixLayoutStateInCase1(OrientationHelperEx orientationHelperEx, RecyclerView.Recycler recycler, int i, int i2, LayoutManagerHelper layoutManagerHelper) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int paddingLeft;
        int decoratedMeasurementInOther;
        View view;
        int i9;
        int i10;
        if ((this.mStickyStart && i2 >= this.mPos) || (!this.mStickyStart && i <= this.mPos)) {
            int decoratedMeasurement = orientationHelperEx.getDecoratedMeasurement(this.mFixView);
            int i11 = 0;
            boolean z = layoutManagerHelper.getOrientation() == 1;
            int i12 = z ? this.mAdjuster.top : this.mAdjuster.left;
            int i13 = z ? this.mAdjuster.bottom : this.mAdjuster.right;
            int i14 = -1;
            if (z) {
                if (layoutManagerHelper.isDoLayoutRTL()) {
                    decoratedMeasurementInOther = layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight();
                    paddingLeft = decoratedMeasurementInOther - orientationHelperEx.getDecoratedMeasurementInOther(this.mFixView);
                } else {
                    paddingLeft = layoutManagerHelper.getPaddingLeft();
                    decoratedMeasurementInOther = orientationHelperEx.getDecoratedMeasurementInOther(this.mFixView) + paddingLeft;
                }
                if (this.mStickyStart) {
                    i9 = layoutManagerHelper.getChildCount() - 1;
                    view = null;
                    while (i9 >= 0) {
                        view = layoutManagerHelper.getChildAt(i9);
                        int position = layoutManagerHelper.getPosition(view);
                        if (position < this.mPos) {
                            int decoratedEnd = orientationHelperEx.getDecoratedEnd(view);
                            LayoutHelper findLayoutHelperByPosition = layoutManagerHelper.findLayoutHelperByPosition(position);
                            if (findLayoutHelperByPosition instanceof RangeGridLayoutHelper) {
                                decoratedEnd += ((RangeGridLayoutHelper) findLayoutHelperByPosition).getBorderEndSpace(layoutManagerHelper);
                            } else if (findLayoutHelperByPosition instanceof MarginLayoutHelper) {
                                MarginLayoutHelper marginLayoutHelper = (MarginLayoutHelper) findLayoutHelperByPosition;
                                decoratedEnd = decoratedEnd + marginLayoutHelper.getMarginBottom() + marginLayoutHelper.getPaddingBottom();
                            }
                            i10 = decoratedEnd + decoratedMeasurement;
                            this.mDoNormalHandle = true;
                            i4 = decoratedEnd;
                            i14 = i9;
                        } else {
                            i9--;
                        }
                    }
                    i4 = 0;
                    i10 = 0;
                } else {
                    view = null;
                    for (int i15 = 0; i15 < layoutManagerHelper.getChildCount(); i15++) {
                        view = layoutManagerHelper.getChildAt(i15);
                        int position2 = layoutManagerHelper.getPosition(view);
                        if (position2 > this.mPos) {
                            int decoratedStart = orientationHelperEx.getDecoratedStart(view);
                            LayoutHelper findLayoutHelperByPosition2 = layoutManagerHelper.findLayoutHelperByPosition(position2);
                            if (findLayoutHelperByPosition2 instanceof RangeGridLayoutHelper) {
                                decoratedStart -= ((RangeGridLayoutHelper) findLayoutHelperByPosition2).getBorderStartSpace(layoutManagerHelper);
                            } else if (findLayoutHelperByPosition2 instanceof MarginLayoutHelper) {
                                MarginLayoutHelper marginLayoutHelper2 = (MarginLayoutHelper) findLayoutHelperByPosition2;
                                decoratedStart = (decoratedStart - marginLayoutHelper2.getMarginTop()) - marginLayoutHelper2.getPaddingTop();
                            }
                            i9 = i15 + 1;
                            this.mDoNormalHandle = true;
                            i4 = decoratedStart - decoratedMeasurement;
                            i10 = decoratedStart;
                            i14 = i9;
                        }
                    }
                    i4 = 0;
                    i10 = 0;
                }
                if (view == null || i14 < 0) {
                    this.mDoNormalHandle = false;
                }
                if (layoutManagerHelper.getReverseLayout() || !this.mStickyStart) {
                    if (i10 > (orientationHelperEx.getEndAfterPadding() - this.mOffset) - i13) {
                        this.mDoNormalHandle = false;
                    }
                } else if (i4 < orientationHelperEx.getStartAfterPadding() + this.mOffset + i12) {
                    this.mDoNormalHandle = false;
                }
                if (!this.mDoNormalHandle) {
                    if (layoutManagerHelper.getReverseLayout() || !this.mStickyStart) {
                        i10 = (orientationHelperEx.getEndAfterPadding() - this.mOffset) - i13;
                        i4 = i10 - decoratedMeasurement;
                    } else {
                        i4 = orientationHelperEx.getStartAfterPadding() + this.mOffset + i12;
                        i10 = i4 + decoratedMeasurement;
                    }
                }
                i3 = decoratedMeasurementInOther;
                i6 = paddingLeft;
                i5 = i10;
            } else {
                int paddingTop = layoutManagerHelper.getPaddingTop();
                int decoratedMeasurementInOther2 = orientationHelperEx.getDecoratedMeasurementInOther(this.mFixView) + paddingTop;
                if (this.mDoNormalHandle) {
                    if (this.mStickyStart) {
                        for (int childCount = layoutManagerHelper.getChildCount() - 1; childCount >= 0; childCount--) {
                            View childAt = layoutManagerHelper.getChildAt(childCount);
                            if (layoutManagerHelper.getPosition(childAt) < this.mPos) {
                                i7 = orientationHelperEx.getDecoratedEnd(childAt);
                                i8 = decoratedMeasurement + i7;
                                i11 = i7;
                                break;
                            }
                        }
                        i8 = 0;
                    } else {
                        for (int i16 = 0; i16 < layoutManagerHelper.getChildCount(); i16++) {
                            View childAt2 = layoutManagerHelper.getChildAt(i16);
                            if (layoutManagerHelper.getPosition(childAt2) > this.mPos) {
                                int decoratedStart2 = orientationHelperEx.getDecoratedStart(childAt2);
                                i7 = decoratedStart2 - decoratedMeasurement;
                                i8 = decoratedStart2;
                                i11 = i7;
                                break;
                            }
                        }
                        i8 = 0;
                    }
                    i4 = paddingTop;
                    i6 = i11;
                    i5 = decoratedMeasurementInOther2;
                    i3 = i8;
                } else if (layoutManagerHelper.getReverseLayout() || !this.mStickyStart) {
                    int endAfterPadding = (orientationHelperEx.getEndAfterPadding() - this.mOffset) - i13;
                    i3 = endAfterPadding;
                    i4 = paddingTop;
                    i5 = decoratedMeasurementInOther2;
                    i6 = endAfterPadding - decoratedMeasurement;
                } else {
                    int startAfterPadding = orientationHelperEx.getStartAfterPadding() + this.mOffset + i12;
                    i3 = decoratedMeasurement + startAfterPadding;
                    i4 = paddingTop;
                    i5 = decoratedMeasurementInOther2;
                    i6 = startAfterPadding;
                }
            }
            layoutChildWithMargin(this.mFixView, i6, i4, i3, i5, layoutManagerHelper);
            if (!this.mDoNormalHandle) {
                layoutManagerHelper.showView(this.mFixView);
                layoutManagerHelper.addFixedView(this.mFixView);
                return;
            } else {
                if (i14 >= 0) {
                    layoutManagerHelper.addChildView(this.mFixView, i14);
                    this.mFixView = null;
                    return;
                }
                return;
            }
        }
        layoutManagerHelper.removeChildView(this.mFixView);
        layoutManagerHelper.recycleView(this.mFixView);
        this.mFixView = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0164 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x016d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void fixLayoutStateInCase2(OrientationHelperEx orientationHelperEx, RecyclerView.Recycler recycler, int i, int i2, LayoutManagerHelper layoutManagerHelper) {
        boolean z;
        boolean z2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int paddingLeft;
        int decoratedMeasurementInOther;
        int i10;
        View view;
        View view2 = this.mFixView;
        if (view2 == null) {
            view2 = layoutManagerHelper.findViewByPosition(this.mPos);
        }
        boolean z3 = layoutManagerHelper.getOrientation() == 1;
        int i11 = z3 ? this.mAdjuster.top : this.mAdjuster.left;
        int i12 = z3 ? this.mAdjuster.bottom : this.mAdjuster.right;
        if ((this.mStickyStart && i2 >= this.mPos) || (!this.mStickyStart && i <= this.mPos)) {
            if (view2 == null) {
                z = this.mOffset + (this.mStickyStart ? i11 : i12) > 0;
                this.mFixView = recycler.getViewForPosition(this.mPos);
                doMeasure(this.mFixView, layoutManagerHelper);
            } else {
                if (this.mStickyStart && orientationHelperEx.getDecoratedStart(view2) >= orientationHelperEx.getStartAfterPadding() + this.mOffset + i11) {
                    this.mFixView = view2;
                } else if (!this.mStickyStart && orientationHelperEx.getDecoratedEnd(view2) <= (orientationHelperEx.getEndAfterPadding() - this.mOffset) - i12) {
                    this.mFixView = view2;
                } else {
                    this.mFixView = view2;
                }
                z = true;
            }
            if (this.mFixView != null) {
                if (((RecyclerView.LayoutParams) this.mFixView.getLayoutParams()).isItemRemoved()) {
                    return;
                }
                int decoratedMeasurement = orientationHelperEx.getDecoratedMeasurement(this.mFixView);
                int i13 = -1;
                if (z3) {
                    if (layoutManagerHelper.isDoLayoutRTL()) {
                        decoratedMeasurementInOther = layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight();
                        paddingLeft = decoratedMeasurementInOther - orientationHelperEx.getDecoratedMeasurementInOther(this.mFixView);
                    } else {
                        paddingLeft = layoutManagerHelper.getPaddingLeft();
                        decoratedMeasurementInOther = orientationHelperEx.getDecoratedMeasurementInOther(this.mFixView) + paddingLeft;
                    }
                    if (!z) {
                        z2 = z;
                        i5 = 0;
                        i10 = 0;
                    } else if (this.mStickyStart) {
                        view = null;
                        for (int childCount = layoutManagerHelper.getChildCount() - 1; childCount >= 0; childCount--) {
                            view = layoutManagerHelper.getChildAt(childCount);
                            int position = layoutManagerHelper.getPosition(view);
                            if (position < this.mPos) {
                                int decoratedEnd = orientationHelperEx.getDecoratedEnd(view);
                                LayoutHelper findLayoutHelperByPosition = layoutManagerHelper.findLayoutHelperByPosition(position);
                                if (findLayoutHelperByPosition instanceof RangeGridLayoutHelper) {
                                    decoratedEnd += ((RangeGridLayoutHelper) findLayoutHelperByPosition).getBorderEndSpace(layoutManagerHelper);
                                } else if (findLayoutHelperByPosition instanceof MarginLayoutHelper) {
                                    MarginLayoutHelper marginLayoutHelper = (MarginLayoutHelper) findLayoutHelperByPosition;
                                    decoratedEnd = decoratedEnd + marginLayoutHelper.getMarginBottom() + marginLayoutHelper.getPaddingBottom();
                                }
                                i5 = decoratedEnd;
                                i10 = decoratedEnd + decoratedMeasurement;
                                i13 = childCount + 1;
                                if (view != null || i13 < 0) {
                                    z = false;
                                }
                                z2 = (!(layoutManagerHelper.getReverseLayout() && this.mStickyStart) ? i10 > (orientationHelperEx.getEndAfterPadding() - this.mOffset) - i12 : i5 < (orientationHelperEx.getStartAfterPadding() + this.mOffset) + i11) ? z : false;
                            }
                        }
                        i5 = 0;
                        i10 = 0;
                        if (view != null) {
                        }
                        z = false;
                        if (layoutManagerHelper.getReverseLayout()) {
                        }
                    } else {
                        view = null;
                        for (int i14 = 0; i14 < layoutManagerHelper.getChildCount(); i14++) {
                            view = layoutManagerHelper.getChildAt(i14);
                            int position2 = layoutManagerHelper.getPosition(view);
                            if (position2 > this.mPos) {
                                int decoratedStart = orientationHelperEx.getDecoratedStart(view);
                                LayoutHelper findLayoutHelperByPosition2 = layoutManagerHelper.findLayoutHelperByPosition(position2);
                                if (findLayoutHelperByPosition2 instanceof RangeGridLayoutHelper) {
                                    decoratedStart -= ((RangeGridLayoutHelper) findLayoutHelperByPosition2).getBorderStartSpace(layoutManagerHelper);
                                } else if (findLayoutHelperByPosition2 instanceof MarginLayoutHelper) {
                                    MarginLayoutHelper marginLayoutHelper2 = (MarginLayoutHelper) findLayoutHelperByPosition2;
                                    decoratedStart = (decoratedStart - marginLayoutHelper2.getMarginTop()) - marginLayoutHelper2.getPaddingTop();
                                }
                                i10 = decoratedStart;
                                i13 = i14;
                                i5 = i10 - decoratedMeasurement;
                                if (view != null) {
                                }
                                z = false;
                                if (layoutManagerHelper.getReverseLayout()) {
                                }
                            }
                        }
                        i5 = 0;
                        i10 = 0;
                        if (view != null) {
                        }
                        z = false;
                        if (layoutManagerHelper.getReverseLayout()) {
                        }
                    }
                    if (z2) {
                        i3 = i10;
                    } else if (layoutManagerHelper.getReverseLayout() || !this.mStickyStart) {
                        int endAfterPadding = (orientationHelperEx.getEndAfterPadding() - this.mOffset) - i12;
                        i3 = endAfterPadding;
                        i5 = endAfterPadding - decoratedMeasurement;
                    } else {
                        int startAfterPadding = orientationHelperEx.getStartAfterPadding() + this.mOffset + i11;
                        i5 = startAfterPadding;
                        i4 = decoratedMeasurementInOther;
                        i3 = decoratedMeasurement + startAfterPadding;
                        i6 = paddingLeft;
                    }
                    i4 = decoratedMeasurementInOther;
                    i6 = paddingLeft;
                } else {
                    int paddingTop = layoutManagerHelper.getPaddingTop();
                    int decoratedMeasurementInOther2 = orientationHelperEx.getDecoratedMeasurementInOther(this.mFixView) + paddingTop;
                    if (z) {
                        if (!this.mStickyStart) {
                            int i15 = 0;
                            while (true) {
                                if (i15 >= layoutManagerHelper.getChildCount()) {
                                    i7 = 0;
                                    i8 = 0;
                                    break;
                                }
                                View childAt = layoutManagerHelper.getChildAt(i15);
                                if (layoutManagerHelper.getPosition(childAt) > this.mPos) {
                                    i7 = orientationHelperEx.getDecoratedStart(childAt);
                                    i8 = i7 - decoratedMeasurement;
                                    break;
                                }
                                i15++;
                            }
                        } else {
                            int childCount2 = layoutManagerHelper.getChildCount() - 1;
                            while (true) {
                                if (childCount2 < 0) {
                                    i9 = 0;
                                    i8 = 0;
                                    break;
                                }
                                View childAt2 = layoutManagerHelper.getChildAt(childCount2);
                                if (layoutManagerHelper.getPosition(childAt2) < this.mPos) {
                                    int decoratedEnd2 = orientationHelperEx.getDecoratedEnd(childAt2);
                                    i9 = decoratedMeasurement + decoratedEnd2;
                                    i8 = decoratedEnd2;
                                    break;
                                }
                                childCount2--;
                            }
                            i7 = i9;
                        }
                        i5 = paddingTop;
                        i3 = decoratedMeasurementInOther2;
                        i6 = i8;
                        i4 = i7;
                        z2 = z;
                    } else if (layoutManagerHelper.getReverseLayout() || !this.mStickyStart) {
                        int endAfterPadding2 = (orientationHelperEx.getEndAfterPadding() - this.mOffset) - i12;
                        z2 = z;
                        i3 = decoratedMeasurementInOther2;
                        i4 = endAfterPadding2;
                        i5 = paddingTop;
                        i6 = endAfterPadding2 - decoratedMeasurement;
                    } else {
                        int startAfterPadding2 = orientationHelperEx.getStartAfterPadding() + this.mOffset + i11;
                        z2 = z;
                        i5 = paddingTop;
                        i3 = decoratedMeasurementInOther2;
                        i4 = decoratedMeasurement + startAfterPadding2;
                        i6 = startAfterPadding2;
                    }
                }
                layoutChildWithMargin(this.mFixView, i6, i5, i4, i3, layoutManagerHelper);
                if (!z2) {
                    layoutManagerHelper.addFixedView(this.mFixView);
                } else if (i13 >= 0) {
                    layoutManagerHelper.addChildView(this.mFixView, i13);
                    this.mFixView = null;
                }
                z = z2;
            }
            this.mDoNormalHandle = z;
        }
        z = false;
        if (this.mFixView != null) {
        }
        this.mDoNormalHandle = z;
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    @Nullable
    public View getFixedView() {
        return this.mFixView;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void onClear(LayoutManagerHelper layoutManagerHelper) {
        super.onClear(layoutManagerHelper);
        if (this.mFixView != null) {
            layoutManagerHelper.removeChildView(this.mFixView);
            layoutManagerHelper.recycleView(this.mFixView);
            this.mFixView = null;
        }
    }

    private void doMeasure(View view, LayoutManagerHelper layoutManagerHelper) {
        int childMeasureSpec;
        int childMeasureSpec2;
        VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) view.getLayoutParams();
        boolean z = layoutManagerHelper.getOrientation() == 1;
        int contentWidth = ((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingLeft()) - layoutManagerHelper.getPaddingRight()) - getHorizontalMargin();
        int contentHeight = ((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom()) - getVerticalMargin();
        float f = layoutParams.mAspectRatio;
        if (z) {
            int childMeasureSpec3 = layoutManagerHelper.getChildMeasureSpec(contentWidth, layoutParams.width, false);
            if (!Float.isNaN(f) && f > 0.0f) {
                childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((int) ((contentWidth / f) + 0.5f), 1073741824);
            } else if (!Float.isNaN(this.mAspectRatio) && this.mAspectRatio > 0.0f) {
                childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec((int) ((contentWidth / this.mAspectRatio) + 0.5d), 1073741824);
            } else {
                childMeasureSpec2 = layoutManagerHelper.getChildMeasureSpec(contentHeight, layoutParams.height, true);
            }
            layoutManagerHelper.measureChildWithMargins(view, childMeasureSpec3, childMeasureSpec2);
            return;
        }
        int childMeasureSpec4 = layoutManagerHelper.getChildMeasureSpec(contentHeight, layoutParams.height, false);
        if (!Float.isNaN(f) && f > 0.0f) {
            childMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((contentHeight * f) + 0.5d), 1073741824);
        } else if (!Float.isNaN(this.mAspectRatio) && this.mAspectRatio > 0.0f) {
            childMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) ((contentHeight * this.mAspectRatio) + 0.5d), 1073741824);
        } else {
            childMeasureSpec = layoutManagerHelper.getChildMeasureSpec(contentWidth, layoutParams.width, true);
        }
        layoutManagerHelper.measureChildWithMargins(view, childMeasureSpec, childMeasureSpec4);
    }
}
