package com.yftech.car.widget.media.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public class FlexboxHelper {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int INITIAL_CAPACITY = 10;
    private static final long MEASURE_SPEC_WIDTH_MASK = 4294967295L;
    private boolean[] mChildrenFrozen;
    private final FlexContainer mFlexContainer;

    @Nullable
    int[] mIndexToFlexLine;

    @Nullable
    long[] mMeasureSpecCache;

    @Nullable
    private long[] mMeasuredSizeCache;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int extractHigherInt(long j) {
        return (int) (j >> 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int extractLowerInt(long j) {
        return (int) j;
    }

    @VisibleForTesting
    long makeCombinedLong(int i, int i2) {
        return (i & 4294967295L) | (i2 << 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlexboxHelper(FlexContainer flexContainer) {
        this.mFlexContainer = flexContainer;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public int[] createReorderedIndices(View view, int i, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        List<Order> createOrders = createOrders(flexItemCount);
        Order order = new Order();
        if (view != null && (layoutParams instanceof FlexItem)) {
            order.order = ((FlexItem) layoutParams).getOrder();
        } else {
            order.order = 1;
        }
        if (i == -1 || i == flexItemCount) {
            order.index = flexItemCount;
        } else if (i < this.mFlexContainer.getFlexItemCount()) {
            order.index = i;
            while (i < flexItemCount) {
                createOrders.get(i).index++;
                i++;
            }
        } else {
            order.index = flexItemCount;
        }
        createOrders.add(order);
        return sortOrdersIntoReorderedIndices(flexItemCount + 1, createOrders, sparseIntArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] createReorderedIndices(SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        return sortOrdersIntoReorderedIndices(flexItemCount, createOrders(flexItemCount), sparseIntArray);
    }

    @NonNull
    private List<Order> createOrders(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            FlexItem flexItem = (FlexItem) this.mFlexContainer.getFlexItemAt(i2).getLayoutParams();
            Order order = new Order();
            order.order = flexItem.getOrder();
            order.index = i2;
            arrayList.add(order);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isOrderChangedFromLastMeasurement(SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i = 0; i < flexItemCount; i++) {
            View flexItemAt = this.mFlexContainer.getFlexItemAt(i);
            if (flexItemAt != null && ((FlexItem) flexItemAt.getLayoutParams()).getOrder() != sparseIntArray.get(i)) {
                return true;
            }
        }
        return false;
    }

    private int[] sortOrdersIntoReorderedIndices(int i, List<Order> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        int i2 = 0;
        for (Order order : list) {
            iArr[i2] = order.index;
            sparseIntArray.append(order.index, order.order);
            i2++;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void calculateHorizontalFlexLines(FlexLinesResult flexLinesResult, int i, int i2) {
        calculateFlexLines(flexLinesResult, i, i2, Integer.MAX_VALUE, 0, -1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void calculateHorizontalFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, @Nullable List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i, i2, i3, i4, -1, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void calculateHorizontalFlexLinesToIndex(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i, i2, i3, 0, i4, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void calculateVerticalFlexLines(FlexLinesResult flexLinesResult, int i, int i2) {
        calculateFlexLines(flexLinesResult, i2, i, Integer.MAX_VALUE, 0, -1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void calculateVerticalFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, @Nullable List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i2, i, i3, i4, -1, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void calculateVerticalFlexLinesToIndex(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i2, i, i3, 0, i4, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void calculateFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, int i5, @Nullable List<FlexLine> list) {
        int i6;
        int i7;
        int i8;
        List<FlexLine> list2;
        int i9;
        int i10;
        int i11;
        View view;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18 = i;
        int i19 = i2;
        int i20 = i5;
        boolean isMainAxisDirectionHorizontal = this.mFlexContainer.isMainAxisDirectionHorizontal();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        List<FlexLine> arrayList = list == null ? new ArrayList() : list;
        flexLinesResult.mFlexLines = arrayList;
        boolean z = i20 == -1;
        int paddingStartMain = getPaddingStartMain(isMainAxisDirectionHorizontal);
        int paddingEndMain = getPaddingEndMain(isMainAxisDirectionHorizontal);
        int paddingStartCross = getPaddingStartCross(isMainAxisDirectionHorizontal);
        int paddingEndCross = getPaddingEndCross(isMainAxisDirectionHorizontal);
        FlexLine flexLine = new FlexLine();
        int i21 = i4;
        flexLine.mFirstIndex = i21;
        int i22 = paddingEndMain + paddingStartMain;
        flexLine.mMainSize = i22;
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        boolean z2 = z;
        int i23 = Integer.MIN_VALUE;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        while (i21 < flexItemCount) {
            View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i21);
            if (reorderedFlexItemAt == null) {
                if (isLastFlexItem(i21, flexItemCount, flexLine)) {
                    addFlexLine(arrayList, flexLine, i21, i24);
                }
            } else if (reorderedFlexItemAt.getVisibility() == 8) {
                flexLine.mGoneItemCount++;
                flexLine.mItemCount++;
                if (isLastFlexItem(i21, flexItemCount, flexLine)) {
                    addFlexLine(arrayList, flexLine, i21, i24);
                }
            } else {
                if (reorderedFlexItemAt instanceof CompoundButton) {
                    evaluateMinimumSizeForCompoundButton((CompoundButton) reorderedFlexItemAt);
                }
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int i27 = flexItemCount;
                if (flexItem.getAlignSelf() == 4) {
                    flexLine.mIndicesAlignSelfStretch.add(Integer.valueOf(i21));
                }
                int flexItemSizeMain = getFlexItemSizeMain(flexItem, isMainAxisDirectionHorizontal);
                if (flexItem.getFlexBasisPercent() != -1.0f && mode == 1073741824) {
                    flexItemSizeMain = Math.round(size * flexItem.getFlexBasisPercent());
                }
                if (isMainAxisDirectionHorizontal) {
                    int childWidthMeasureSpec = this.mFlexContainer.getChildWidthMeasureSpec(i18, i22 + getFlexItemMarginStartMain(flexItem, true) + getFlexItemMarginEndMain(flexItem, true), flexItemSizeMain);
                    i6 = size;
                    i7 = mode;
                    int childHeightMeasureSpec = this.mFlexContainer.getChildHeightMeasureSpec(i19, paddingStartCross + paddingEndCross + getFlexItemMarginStartCross(flexItem, true) + getFlexItemMarginEndCross(flexItem, true) + i24, getFlexItemSizeCross(flexItem, true));
                    reorderedFlexItemAt.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                    updateMeasureCache(i21, childWidthMeasureSpec, childHeightMeasureSpec, reorderedFlexItemAt);
                    i8 = childWidthMeasureSpec;
                } else {
                    i6 = size;
                    i7 = mode;
                    int childWidthMeasureSpec2 = this.mFlexContainer.getChildWidthMeasureSpec(i19, paddingStartCross + paddingEndCross + getFlexItemMarginStartCross(flexItem, false) + getFlexItemMarginEndCross(flexItem, false) + i24, getFlexItemSizeCross(flexItem, false));
                    int childHeightMeasureSpec2 = this.mFlexContainer.getChildHeightMeasureSpec(i18, getFlexItemMarginStartMain(flexItem, false) + i22 + getFlexItemMarginEndMain(flexItem, false), flexItemSizeMain);
                    reorderedFlexItemAt.measure(childWidthMeasureSpec2, childHeightMeasureSpec2);
                    updateMeasureCache(i21, childWidthMeasureSpec2, childHeightMeasureSpec2, reorderedFlexItemAt);
                    i8 = childHeightMeasureSpec2;
                }
                this.mFlexContainer.updateViewCache(i21, reorderedFlexItemAt);
                checkSizeConstraints(reorderedFlexItemAt, i21);
                i25 = View.combineMeasuredStates(i25, reorderedFlexItemAt.getMeasuredState());
                int i28 = i24;
                int i29 = i22;
                FlexLine flexLine2 = flexLine;
                int i30 = i21;
                list2 = arrayList;
                i9 = i6;
                int i31 = i8;
                i10 = i7;
                if (isWrapRequired(reorderedFlexItemAt, i7, i6, flexLine.mMainSize, getFlexItemMarginEndMain(flexItem, isMainAxisDirectionHorizontal) + getViewMeasuredSizeMain(reorderedFlexItemAt, isMainAxisDirectionHorizontal) + getFlexItemMarginStartMain(flexItem, isMainAxisDirectionHorizontal), flexItem, i30, i26, arrayList.size())) {
                    if (flexLine2.getItemCountNotGone() > 0) {
                        addFlexLine(list2, flexLine2, i30 > 0 ? i30 - 1 : 0, i28);
                        i17 = flexLine2.mCrossSize + i28;
                    } else {
                        i17 = i28;
                    }
                    if (isMainAxisDirectionHorizontal) {
                        if (flexItem.getHeight() == -1) {
                            i21 = i30;
                            i12 = i2;
                            view = reorderedFlexItemAt;
                            view.measure(i31, this.mFlexContainer.getChildHeightMeasureSpec(i12, this.mFlexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i17, flexItem.getHeight()));
                            checkSizeConstraints(view, i21);
                        } else {
                            i21 = i30;
                            view = reorderedFlexItemAt;
                            i12 = i2;
                        }
                    } else {
                        i21 = i30;
                        view = reorderedFlexItemAt;
                        i12 = i2;
                        if (flexItem.getWidth() == -1) {
                            view.measure(this.mFlexContainer.getChildWidthMeasureSpec(i12, this.mFlexContainer.getPaddingLeft() + this.mFlexContainer.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i17, flexItem.getWidth()), i31);
                            checkSizeConstraints(view, i21);
                        }
                    }
                    flexLine = new FlexLine();
                    flexLine.mItemCount = 1;
                    i11 = i29;
                    flexLine.mMainSize = i11;
                    flexLine.mFirstIndex = i21;
                    i28 = i17;
                    i14 = Integer.MIN_VALUE;
                    i13 = 0;
                } else {
                    i21 = i30;
                    flexLine = flexLine2;
                    i11 = i29;
                    view = reorderedFlexItemAt;
                    i12 = i2;
                    flexLine.mItemCount++;
                    i13 = i26 + 1;
                    i14 = i23;
                }
                flexLine.mAnyItemsHaveFlexGrow |= flexItem.getFlexGrow() != 0.0f;
                flexLine.mAnyItemsHaveFlexShrink |= flexItem.getFlexShrink() != 0.0f;
                if (this.mIndexToFlexLine != null) {
                    this.mIndexToFlexLine[i21] = list2.size();
                }
                flexLine.mMainSize += getViewMeasuredSizeMain(view, isMainAxisDirectionHorizontal) + getFlexItemMarginStartMain(flexItem, isMainAxisDirectionHorizontal) + getFlexItemMarginEndMain(flexItem, isMainAxisDirectionHorizontal);
                flexLine.mTotalFlexGrow += flexItem.getFlexGrow();
                flexLine.mTotalFlexShrink += flexItem.getFlexShrink();
                this.mFlexContainer.onNewFlexItemAdded(view, i21, i13, flexLine);
                int max = Math.max(i14, getViewMeasuredSizeCross(view, isMainAxisDirectionHorizontal) + getFlexItemMarginStartCross(flexItem, isMainAxisDirectionHorizontal) + getFlexItemMarginEndCross(flexItem, isMainAxisDirectionHorizontal) + this.mFlexContainer.getDecorationLengthCrossAxis(view));
                flexLine.mCrossSize = Math.max(flexLine.mCrossSize, max);
                if (isMainAxisDirectionHorizontal) {
                    if (this.mFlexContainer.getFlexWrap() != 2) {
                        flexLine.mMaxBaseline = Math.max(flexLine.mMaxBaseline, view.getBaseline() + flexItem.getMarginTop());
                    } else {
                        flexLine.mMaxBaseline = Math.max(flexLine.mMaxBaseline, (view.getMeasuredHeight() - view.getBaseline()) + flexItem.getMarginBottom());
                    }
                }
                i15 = i27;
                if (isLastFlexItem(i21, i15, flexLine)) {
                    addFlexLine(list2, flexLine, i21, i28);
                    i28 += flexLine.mCrossSize;
                }
                i16 = i5;
                if (i16 != -1 && list2.size() > 0) {
                    if (list2.get(list2.size() - 1).mLastIndex >= i16 && i21 >= i16 && !z2) {
                        i28 = -flexLine.getCrossSize();
                        z2 = true;
                    }
                }
                int i32 = i28;
                if (i32 > i3 && z2) {
                    break;
                }
                i26 = i13;
                i23 = max;
                i24 = i32;
                i21++;
                flexItemCount = i15;
                i19 = i12;
                i22 = i11;
                arrayList = list2;
                mode = i10;
                i18 = i;
                i20 = i16;
                size = i9;
            }
            i9 = size;
            i10 = mode;
            i12 = i19;
            i16 = i20;
            list2 = arrayList;
            i11 = i22;
            i15 = flexItemCount;
            i21++;
            flexItemCount = i15;
            i19 = i12;
            i22 = i11;
            arrayList = list2;
            mode = i10;
            i18 = i;
            i20 = i16;
            size = i9;
        }
        flexLinesResult.mChildState = i25;
    }

    private void evaluateMinimumSizeForCompoundButton(CompoundButton compoundButton) {
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int minWidth = flexItem.getMinWidth();
        int minHeight = flexItem.getMinHeight();
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
        int minimumHeight = buttonDrawable == null ? 0 : buttonDrawable.getMinimumHeight();
        if (minWidth == -1) {
            minWidth = minimumWidth;
        }
        flexItem.setMinWidth(minWidth);
        if (minHeight != -1) {
            minimumHeight = minHeight;
        }
        flexItem.setMinHeight(minimumHeight);
    }

    private int getPaddingStartMain(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingStart();
        }
        return this.mFlexContainer.getPaddingTop();
    }

    private int getPaddingEndMain(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingEnd();
        }
        return this.mFlexContainer.getPaddingBottom();
    }

    private int getPaddingStartCross(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingTop();
        }
        return this.mFlexContainer.getPaddingStart();
    }

    private int getPaddingEndCross(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingBottom();
        }
        return this.mFlexContainer.getPaddingEnd();
    }

    private int getViewMeasuredSizeMain(View view, boolean z) {
        if (z) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private int getViewMeasuredSizeCross(View view, boolean z) {
        if (z) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int getFlexItemSizeMain(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getWidth();
        }
        return flexItem.getHeight();
    }

    private int getFlexItemSizeCross(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getHeight();
        }
        return flexItem.getWidth();
    }

    private int getFlexItemMarginStartMain(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginLeft();
        }
        return flexItem.getMarginTop();
    }

    private int getFlexItemMarginEndMain(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginRight();
        }
        return flexItem.getMarginBottom();
    }

    private int getFlexItemMarginStartCross(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginTop();
        }
        return flexItem.getMarginLeft();
    }

    private int getFlexItemMarginEndCross(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginBottom();
        }
        return flexItem.getMarginRight();
    }

    private boolean isWrapRequired(View view, int i, int i2, int i3, int i4, FlexItem flexItem, int i5, int i6, int i7) {
        if (this.mFlexContainer.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int maxLine = this.mFlexContainer.getMaxLine();
        if (maxLine != -1 && maxLine <= i7 + 1) {
            return false;
        }
        int decorationLengthMainAxis = this.mFlexContainer.getDecorationLengthMainAxis(view, i5, i6);
        if (decorationLengthMainAxis > 0) {
            i4 += decorationLengthMainAxis;
        }
        return i2 < i3 + i4;
    }

    private boolean isLastFlexItem(int i, int i2, FlexLine flexLine) {
        return i == i2 - 1 && flexLine.getItemCountNotGone() != 0;
    }

    private void addFlexLine(List<FlexLine> list, FlexLine flexLine, int i, int i2) {
        flexLine.mSumCrossSizeBefore = i2;
        this.mFlexContainer.onNewFlexLineAdded(flexLine);
        flexLine.mLastIndex = i;
        list.add(flexLine);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkSizeConstraints(View view, int i) {
        boolean z;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z2 = true;
        if (measuredWidth < flexItem.getMinWidth()) {
            measuredWidth = flexItem.getMinWidth();
        } else if (measuredWidth > flexItem.getMaxWidth()) {
            measuredWidth = flexItem.getMaxWidth();
        } else {
            z = false;
            if (measuredHeight >= flexItem.getMinHeight()) {
                measuredHeight = flexItem.getMinHeight();
            } else if (measuredHeight > flexItem.getMaxHeight()) {
                measuredHeight = flexItem.getMaxHeight();
            } else {
                z2 = z;
            }
            if (z2) {
                return;
            }
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            updateMeasureCache(i, makeMeasureSpec, makeMeasureSpec2, view);
            this.mFlexContainer.updateViewCache(i, view);
            return;
        }
        z = true;
        if (measuredHeight >= flexItem.getMinHeight()) {
        }
        if (z2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void determineMainSize(int i, int i2) {
        determineMainSize(i, i2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void determineMainSize(int i, int i2, int i3) {
        int size;
        int paddingLeft;
        ensureChildrenFrozen(this.mFlexContainer.getFlexItemCount());
        if (i3 >= this.mFlexContainer.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.mFlexContainer.getFlexDirection();
        switch (this.mFlexContainer.getFlexDirection()) {
            case 0:
            case 1:
                int mode = View.MeasureSpec.getMode(i);
                size = View.MeasureSpec.getSize(i);
                int largestMainSize = this.mFlexContainer.getLargestMainSize();
                if (mode != 1073741824) {
                    size = Math.min(largestMainSize, size);
                }
                paddingLeft = this.mFlexContainer.getPaddingLeft() + this.mFlexContainer.getPaddingRight();
                break;
            case 2:
            case 3:
                int mode2 = View.MeasureSpec.getMode(i2);
                size = View.MeasureSpec.getSize(i2);
                if (mode2 != 1073741824) {
                    size = this.mFlexContainer.getLargestMainSize();
                }
                paddingLeft = this.mFlexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom();
                break;
            default:
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
        }
        int i4 = this.mIndexToFlexLine != null ? this.mIndexToFlexLine[i3] : 0;
        List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i5 = i4; i5 < size2; i5++) {
            FlexLine flexLine = flexLinesInternal.get(i5);
            if (flexLine.mMainSize < size && flexLine.mAnyItemsHaveFlexGrow) {
                expandFlexItems(i, i2, flexLine, size, paddingLeft, false);
            } else if (flexLine.mMainSize > size && flexLine.mAnyItemsHaveFlexShrink) {
                shrinkFlexItems(i, i2, flexLine, size, paddingLeft, false);
            }
        }
    }

    private void ensureChildrenFrozen(int i) {
        if (this.mChildrenFrozen == null) {
            this.mChildrenFrozen = new boolean[Math.max(i, 10)];
        } else if (this.mChildrenFrozen.length < i) {
            this.mChildrenFrozen = new boolean[Math.max(this.mChildrenFrozen.length * 2, i)];
        } else {
            Arrays.fill(this.mChildrenFrozen, false);
        }
    }

    private void expandFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int max;
        float f;
        int i7;
        int i8;
        float f2;
        FlexLine flexLine2 = flexLine;
        if (flexLine2.mTotalFlexGrow <= 0.0f || i3 < flexLine2.mMainSize) {
            return;
        }
        int i9 = flexLine2.mMainSize;
        float f3 = (i3 - flexLine2.mMainSize) / flexLine2.mTotalFlexGrow;
        flexLine2.mMainSize = i4 + flexLine2.mDividerLengthInMainSize;
        if (!z) {
            flexLine2.mCrossSize = Integer.MIN_VALUE;
        }
        float f4 = 0.0f;
        boolean z2 = false;
        int i10 = 0;
        for (int i11 = 0; i11 < flexLine2.mItemCount; i11++) {
            int i12 = flexLine2.mFirstIndex + i11;
            View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i12);
            if (reorderedFlexItemAt != null && reorderedFlexItemAt.getVisibility() != 8) {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.mFlexContainer.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    if (this.mMeasuredSizeCache != null) {
                        measuredWidth = extractLowerInt(this.mMeasuredSizeCache[i12]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    if (this.mMeasuredSizeCache != null) {
                        measuredHeight = extractHigherInt(this.mMeasuredSizeCache[i12]);
                    }
                    if (this.mChildrenFrozen[i12] || flexItem.getFlexGrow() <= 0.0f) {
                        i5 = measuredWidth;
                        i6 = measuredHeight;
                    } else {
                        float flexGrow = measuredWidth + (flexItem.getFlexGrow() * f3);
                        if (i11 == flexLine2.mItemCount - 1) {
                            flexGrow += f4;
                            f4 = 0.0f;
                        }
                        int round = Math.round(flexGrow);
                        if (round > flexItem.getMaxWidth()) {
                            round = flexItem.getMaxWidth();
                            this.mChildrenFrozen[i12] = true;
                            flexLine2.mTotalFlexGrow -= flexItem.getFlexGrow();
                            z2 = true;
                        } else {
                            f4 += flexGrow - round;
                            double d = f4;
                            if (d > 1.0d) {
                                round++;
                                f = (float) (d - 1.0d);
                            } else if (d < -1.0d) {
                                round--;
                                f = (float) (d + 1.0d);
                            }
                            f4 = f;
                        }
                        int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine2.mSumCrossSizeBefore);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        reorderedFlexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                        i5 = reorderedFlexItemAt.getMeasuredWidth();
                        i6 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i12, makeMeasureSpec, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i12, reorderedFlexItemAt);
                    }
                    max = Math.max(i10, this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt) + i6 + flexItem.getMarginTop() + flexItem.getMarginBottom());
                    flexLine2.mMainSize += i5 + flexItem.getMarginLeft() + flexItem.getMarginRight();
                } else {
                    int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                    if (this.mMeasuredSizeCache != null) {
                        measuredHeight2 = extractHigherInt(this.mMeasuredSizeCache[i12]);
                    }
                    int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                    if (this.mMeasuredSizeCache != null) {
                        measuredWidth2 = extractLowerInt(this.mMeasuredSizeCache[i12]);
                    }
                    if (this.mChildrenFrozen[i12] || flexItem.getFlexGrow() <= 0.0f) {
                        flexLine2 = flexLine;
                        i7 = measuredHeight2;
                        i8 = measuredWidth2;
                    } else {
                        float flexGrow2 = measuredHeight2 + (flexItem.getFlexGrow() * f3);
                        flexLine2 = flexLine;
                        if (i11 == flexLine2.mItemCount - 1) {
                            flexGrow2 += f4;
                            f4 = 0.0f;
                        }
                        int round2 = Math.round(flexGrow2);
                        if (round2 > flexItem.getMaxHeight()) {
                            round2 = flexItem.getMaxHeight();
                            this.mChildrenFrozen[i12] = true;
                            flexLine2.mTotalFlexGrow -= flexItem.getFlexGrow();
                            z2 = true;
                        } else {
                            f4 += flexGrow2 - round2;
                            double d2 = f4;
                            if (d2 > 1.0d) {
                                round2++;
                                f2 = (float) (d2 - 1.0d);
                            } else if (d2 < -1.0d) {
                                round2--;
                                f2 = (float) (d2 + 1.0d);
                            }
                            f4 = f2;
                        }
                        int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine2.mSumCrossSizeBefore);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                        i8 = reorderedFlexItemAt.getMeasuredWidth();
                        i7 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i12, childWidthMeasureSpecInternal, makeMeasureSpec2, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i12, reorderedFlexItemAt);
                    }
                    max = Math.max(i10, i8 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine2.mMainSize += i7 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                }
                flexLine2.mCrossSize = Math.max(flexLine2.mCrossSize, max);
                i10 = max;
            }
        }
        if (!z2 || i9 == flexLine2.mMainSize) {
            return;
        }
        expandFlexItems(i, i2, flexLine, i3, i4, true);
    }

    private void shrinkFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = flexLine.mMainSize;
        if (flexLine.mTotalFlexShrink <= 0.0f || i3 > flexLine.mMainSize) {
            return;
        }
        float f = (flexLine.mMainSize - i3) / flexLine.mTotalFlexShrink;
        flexLine.mMainSize = i4 + flexLine.mDividerLengthInMainSize;
        if (!z) {
            flexLine.mCrossSize = Integer.MIN_VALUE;
        }
        int i10 = 0;
        float f2 = 0.0f;
        boolean z2 = false;
        int i11 = 0;
        while (i10 < flexLine.mItemCount) {
            int i12 = flexLine.mFirstIndex + i10;
            View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i12);
            if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                i5 = i10;
                z2 = z2;
            } else {
                FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                int flexDirection = this.mFlexContainer.getFlexDirection();
                if (flexDirection == 0 || flexDirection == 1) {
                    i5 = i10;
                    int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                    if (this.mMeasuredSizeCache != null) {
                        measuredWidth = extractLowerInt(this.mMeasuredSizeCache[i12]);
                    }
                    int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                    if (this.mMeasuredSizeCache != null) {
                        measuredHeight = extractHigherInt(this.mMeasuredSizeCache[i12]);
                    }
                    if (this.mChildrenFrozen[i12] || flexItem.getFlexShrink() <= 0.0f) {
                        i6 = measuredHeight;
                        z2 = z2;
                    } else {
                        float flexShrink = measuredWidth - (flexItem.getFlexShrink() * f);
                        if (i5 == flexLine.mItemCount - 1) {
                            flexShrink += f2;
                            f2 = 0.0f;
                        }
                        int round = Math.round(flexShrink);
                        if (round < flexItem.getMinWidth()) {
                            round = flexItem.getMinWidth();
                            this.mChildrenFrozen[i12] = true;
                            flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                            z2 = true;
                        } else {
                            f2 += flexShrink - round;
                            boolean z3 = z2;
                            double d = f2;
                            if (d > 1.0d) {
                                round++;
                                f2 -= 1.0f;
                            } else if (d < -1.0d) {
                                round--;
                                f2 += 1.0f;
                            }
                            z2 = z3;
                        }
                        int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                        reorderedFlexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                        int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                        i6 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i12, makeMeasureSpec, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i12, reorderedFlexItemAt);
                        measuredWidth = measuredWidth2;
                    }
                    int max = Math.max(i11, i6 + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.mMainSize += measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight();
                    i7 = max;
                } else {
                    int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                    if (this.mMeasuredSizeCache != null) {
                        i8 = i10;
                        measuredHeight2 = extractHigherInt(this.mMeasuredSizeCache[i12]);
                    } else {
                        i8 = i10;
                    }
                    int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                    if (this.mMeasuredSizeCache != null) {
                        measuredWidth3 = extractLowerInt(this.mMeasuredSizeCache[i12]);
                    }
                    if (this.mChildrenFrozen[i12] || flexItem.getFlexShrink() <= 0.0f) {
                        i5 = i8;
                    } else {
                        float flexShrink2 = measuredHeight2 - (flexItem.getFlexShrink() * f);
                        i5 = i8;
                        if (i5 == flexLine.mItemCount - 1) {
                            flexShrink2 += f2;
                            f2 = 0.0f;
                        }
                        int round2 = Math.round(flexShrink2);
                        if (round2 < flexItem.getMinHeight()) {
                            round2 = flexItem.getMinHeight();
                            this.mChildrenFrozen[i12] = true;
                            flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                            z2 = true;
                        } else {
                            f2 += flexShrink2 - round2;
                            double d2 = f2;
                            if (d2 > 1.0d) {
                                round2++;
                                f2 -= 1.0f;
                            } else if (d2 < -1.0d) {
                                round2--;
                                f2 += 1.0f;
                            }
                        }
                        int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine.mSumCrossSizeBefore);
                        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                        reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                        int measuredWidth4 = reorderedFlexItemAt.getMeasuredWidth();
                        measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                        updateMeasureCache(i12, childWidthMeasureSpecInternal, makeMeasureSpec2, reorderedFlexItemAt);
                        this.mFlexContainer.updateViewCache(i12, reorderedFlexItemAt);
                        measuredWidth3 = measuredWidth4;
                    }
                    i7 = Math.max(i11, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                    flexLine.mMainSize += measuredHeight2 + flexItem.getMarginTop() + flexItem.getMarginBottom();
                }
                flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i7);
                i11 = i7;
            }
            i10 = i5 + 1;
        }
        if (!z2 || i9 == flexLine.mMainSize) {
            return;
        }
        shrinkFlexItems(i, i2, flexLine, i3, i4, true);
    }

    private int getChildWidthMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
        int childWidthMeasureSpec = this.mFlexContainer.getChildWidthMeasureSpec(i, this.mFlexContainer.getPaddingLeft() + this.mFlexContainer.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i2, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
        if (size > flexItem.getMaxWidth()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec));
        }
        return size < flexItem.getMinWidth() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec)) : childWidthMeasureSpec;
    }

    private int getChildHeightMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
        int childHeightMeasureSpec = this.mFlexContainer.getChildHeightMeasureSpec(i, this.mFlexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i2, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
        if (size > flexItem.getMaxHeight()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec));
        }
        return size < flexItem.getMinHeight() ? View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec)) : childHeightMeasureSpec;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void determineCrossSize(int i, int i2, int i3) {
        int mode;
        int size;
        int flexDirection = this.mFlexContainer.getFlexDirection();
        switch (flexDirection) {
            case 0:
            case 1:
                mode = View.MeasureSpec.getMode(i2);
                size = View.MeasureSpec.getSize(i2);
                break;
            case 2:
            case 3:
                int mode2 = View.MeasureSpec.getMode(i);
                size = View.MeasureSpec.getSize(i);
                mode = mode2;
                break;
            default:
                throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
        }
        List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = this.mFlexContainer.getSumOfCrossSize() + i3;
            int i4 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).mCrossSize = size - i3;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                switch (this.mFlexContainer.getAlignContent()) {
                    case 1:
                        FlexLine flexLine = new FlexLine();
                        flexLine.mCrossSize = size - sumOfCrossSize;
                        flexLinesInternal.add(0, flexLine);
                        return;
                    case 2:
                        this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    case 3:
                        if (sumOfCrossSize >= size) {
                            return;
                        }
                        float size2 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                        ArrayList arrayList = new ArrayList();
                        int size3 = flexLinesInternal.size();
                        float f = 0.0f;
                        while (i4 < size3) {
                            arrayList.add(flexLinesInternal.get(i4));
                            if (i4 != flexLinesInternal.size() - 1) {
                                FlexLine flexLine2 = new FlexLine();
                                if (i4 == flexLinesInternal.size() - 2) {
                                    flexLine2.mCrossSize = Math.round(f + size2);
                                    f = 0.0f;
                                } else {
                                    flexLine2.mCrossSize = Math.round(size2);
                                }
                                f += size2 - flexLine2.mCrossSize;
                                if (f > 1.0f) {
                                    flexLine2.mCrossSize++;
                                    f -= 1.0f;
                                } else if (f < -1.0f) {
                                    flexLine2.mCrossSize--;
                                    f += 1.0f;
                                }
                                arrayList.add(flexLine2);
                            }
                            i4++;
                        }
                        this.mFlexContainer.setFlexLines(arrayList);
                        return;
                    case 4:
                        if (sumOfCrossSize >= size) {
                            this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(flexLinesInternal, size, sumOfCrossSize));
                            return;
                        }
                        int size4 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                        ArrayList arrayList2 = new ArrayList();
                        FlexLine flexLine3 = new FlexLine();
                        flexLine3.mCrossSize = size4;
                        for (FlexLine flexLine4 : flexLinesInternal) {
                            arrayList2.add(flexLine3);
                            arrayList2.add(flexLine4);
                            arrayList2.add(flexLine3);
                        }
                        this.mFlexContainer.setFlexLines(arrayList2);
                        return;
                    case 5:
                        if (sumOfCrossSize >= size) {
                            return;
                        }
                        float size5 = (size - sumOfCrossSize) / flexLinesInternal.size();
                        int size6 = flexLinesInternal.size();
                        float f2 = 0.0f;
                        while (i4 < size6) {
                            FlexLine flexLine5 = flexLinesInternal.get(i4);
                            float f3 = flexLine5.mCrossSize + size5;
                            if (i4 == flexLinesInternal.size() - 1) {
                                f3 += f2;
                                f2 = 0.0f;
                            }
                            int round = Math.round(f3);
                            f2 += f3 - round;
                            if (f2 > 1.0f) {
                                round++;
                                f2 -= 1.0f;
                            } else if (f2 < -1.0f) {
                                round--;
                                f2 += 1.0f;
                            }
                            flexLine5.mCrossSize = round;
                            i4++;
                        }
                        return;
                    default:
                        return;
                }
            }
        }
    }

    private List<FlexLine> constructFlexLinesForAlignContentCenter(List<FlexLine> list, int i, int i2) {
        int i3 = (i - i2) / 2;
        ArrayList arrayList = new ArrayList();
        FlexLine flexLine = new FlexLine();
        flexLine.mCrossSize = i3;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (i4 == 0) {
                arrayList.add(flexLine);
            }
            arrayList.add(list.get(i4));
            if (i4 == list.size() - 1) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stretchViews() {
        stretchViews(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stretchViews(int i) {
        View reorderedFlexItemAt;
        if (i >= this.mFlexContainer.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.mFlexContainer.getFlexDirection();
        if (this.mFlexContainer.getAlignItems() == 4) {
            List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i2 = this.mIndexToFlexLine != null ? this.mIndexToFlexLine[i] : 0; i2 < size; i2++) {
                FlexLine flexLine = flexLinesInternal.get(i2);
                int i3 = flexLine.mItemCount;
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = flexLine.mFirstIndex + i4;
                    if (i4 < this.mFlexContainer.getFlexItemCount() && (reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i5)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                        FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                        if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                            switch (flexDirection) {
                                case 0:
                                case 1:
                                    stretchViewVertically(reorderedFlexItemAt, flexLine.mCrossSize, i5);
                                    break;
                                case 2:
                                case 3:
                                    stretchViewHorizontally(reorderedFlexItemAt, flexLine.mCrossSize, i5);
                                    break;
                                default:
                                    throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                            }
                        }
                    }
                }
            }
            return;
        }
        for (FlexLine flexLine2 : this.mFlexContainer.getFlexLinesInternal()) {
            for (Integer num : flexLine2.mIndicesAlignSelfStretch) {
                View reorderedFlexItemAt2 = this.mFlexContainer.getReorderedFlexItemAt(num.intValue());
                switch (flexDirection) {
                    case 0:
                    case 1:
                        stretchViewVertically(reorderedFlexItemAt2, flexLine2.mCrossSize, num.intValue());
                        break;
                    case 2:
                    case 3:
                        stretchViewHorizontally(reorderedFlexItemAt2, flexLine2.mCrossSize, num.intValue());
                        break;
                    default:
                        throw new IllegalArgumentException("Invalid flex direction: " + flexDirection);
                }
            }
        }
    }

    private void stretchViewVertically(View view, int i, int i2) {
        int measuredWidth;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        if (this.mMeasuredSizeCache != null) {
            measuredWidth = extractLowerInt(this.mMeasuredSizeCache[i2]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        updateMeasureCache(i2, makeMeasureSpec, makeMeasureSpec2, view);
        this.mFlexContainer.updateViewCache(i2, view);
    }

    private void stretchViewHorizontally(View view, int i, int i2) {
        int measuredHeight;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        if (this.mMeasuredSizeCache != null) {
            measuredHeight = extractHigherInt(this.mMeasuredSizeCache[i2]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        updateMeasureCache(i2, makeMeasureSpec2, makeMeasureSpec, view);
        this.mFlexContainer.updateViewCache(i2, view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void layoutSingleChildHorizontal(View view, FlexLine flexLine, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = flexLine.mCrossSize;
        switch (alignItems) {
            case 0:
            case 4:
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    view.layout(i, i2 + flexItem.getMarginTop(), i3, i4 + flexItem.getMarginTop());
                    return;
                } else {
                    view.layout(i, i2 - flexItem.getMarginBottom(), i3, i4 - flexItem.getMarginBottom());
                    return;
                }
            case 1:
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    int i6 = i2 + i5;
                    view.layout(i, (i6 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), i3, i6 - flexItem.getMarginBottom());
                    return;
                } else {
                    view.layout(i, (i2 - i5) + view.getMeasuredHeight() + flexItem.getMarginTop(), i3, (i4 - i5) + view.getMeasuredHeight() + flexItem.getMarginTop());
                    return;
                }
            case 2:
                int measuredHeight = (((i5 - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    int i7 = i2 + measuredHeight;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                } else {
                    int i8 = i2 - measuredHeight;
                    view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                    return;
                }
            case 3:
                if (this.mFlexContainer.getFlexWrap() != 2) {
                    int max = Math.max(flexLine.mMaxBaseline - view.getBaseline(), flexItem.getMarginTop());
                    view.layout(i, i2 + max, i3, i4 + max);
                    return;
                } else {
                    int max2 = Math.max((flexLine.mMaxBaseline - view.getMeasuredHeight()) + view.getBaseline(), flexItem.getMarginBottom());
                    view.layout(i, i2 - max2, i3, i4 - max2);
                    return;
                }
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void layoutSingleChildVertical(View view, FlexLine flexLine, boolean z, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = flexLine.mCrossSize;
        switch (alignItems) {
            case 0:
            case 3:
            case 4:
                if (!z) {
                    view.layout(i + flexItem.getMarginLeft(), i2, i3 + flexItem.getMarginLeft(), i4);
                    return;
                } else {
                    view.layout(i - flexItem.getMarginRight(), i2, i3 - flexItem.getMarginRight(), i4);
                    return;
                }
            case 1:
                if (!z) {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i4);
                    return;
                } else {
                    view.layout((i - i5) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i2, (i3 - i5) + view.getMeasuredWidth() + flexItem.getMarginLeft(), i4);
                    return;
                }
            case 2:
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i5 - view.getMeasuredWidth()) + MarginLayoutParamsCompat.getMarginStart(marginLayoutParams)) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                if (!z) {
                    view.layout(i + measuredWidth, i2, i3 + measuredWidth, i4);
                    return;
                } else {
                    view.layout(i - measuredWidth, i2, i3 - measuredWidth, i4);
                    return;
                }
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureMeasuredSizeCache(int i) {
        if (this.mMeasuredSizeCache == null) {
            this.mMeasuredSizeCache = new long[Math.max(i, 10)];
        } else if (this.mMeasuredSizeCache.length < i) {
            this.mMeasuredSizeCache = Arrays.copyOf(this.mMeasuredSizeCache, Math.max(this.mMeasuredSizeCache.length * 2, i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureMeasureSpecCache(int i) {
        if (this.mMeasureSpecCache == null) {
            this.mMeasureSpecCache = new long[Math.max(i, 10)];
        } else if (this.mMeasureSpecCache.length < i) {
            this.mMeasureSpecCache = Arrays.copyOf(this.mMeasureSpecCache, Math.max(this.mMeasureSpecCache.length * 2, i));
        }
    }

    private void updateMeasureCache(int i, int i2, int i3, View view) {
        if (this.mMeasureSpecCache != null) {
            this.mMeasureSpecCache[i] = makeCombinedLong(i2, i3);
        }
        if (this.mMeasuredSizeCache != null) {
            this.mMeasuredSizeCache[i] = makeCombinedLong(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureIndexToFlexLine(int i) {
        if (this.mIndexToFlexLine == null) {
            this.mIndexToFlexLine = new int[Math.max(i, 10)];
        } else if (this.mIndexToFlexLine.length < i) {
            this.mIndexToFlexLine = Arrays.copyOf(this.mIndexToFlexLine, Math.max(this.mIndexToFlexLine.length * 2, i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearFlexLines(List<FlexLine> list, int i) {
        int i2 = this.mIndexToFlexLine[i];
        if (i2 == -1) {
            i2 = 0;
        }
        if (list.size() > i2) {
            list.subList(i2, list.size()).clear();
        }
        int length = this.mIndexToFlexLine.length - 1;
        if (i > length) {
            Arrays.fill(this.mIndexToFlexLine, -1);
        } else {
            Arrays.fill(this.mIndexToFlexLine, i, length, -1);
        }
        int length2 = this.mMeasureSpecCache.length - 1;
        if (i > length2) {
            Arrays.fill(this.mMeasureSpecCache, 0L);
        } else {
            Arrays.fill(this.mMeasureSpecCache, i, length2, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class Order implements Comparable<Order> {
        int index;
        int order;

        private Order() {
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Order order) {
            if (this.order != order.order) {
                return this.order - order.order;
            }
            return this.index - order.index;
        }

        @NonNull
        public String toString() {
            return "Order{order=" + this.order + ", index=" + this.index + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class FlexLinesResult {
        int mChildState;
        List<FlexLine> mFlexLines;

        /* JADX INFO: Access modifiers changed from: package-private */
        public void reset() {
            this.mFlexLines = null;
            this.mChildState = 0;
        }
    }
}
