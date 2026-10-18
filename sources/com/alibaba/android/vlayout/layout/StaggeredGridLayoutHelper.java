package com.alibaba.android.vlayout.layout;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutHelper;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.Range;
import com.alibaba.android.vlayout.VirtualLayoutManager;
import com.facebook.imagepipeline.common.BytesRange;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class StaggeredGridLayoutHelper extends BaseLayoutHelper {
    static final int INVALID_LINE = Integer.MIN_VALUE;
    private static final int INVALID_SPAN_ID = Integer.MIN_VALUE;
    private static final String LOOKUP_BUNDLE_KEY = "StaggeredGridLayoutHelper_LazySpanLookup";
    private static final String TAG = "Staggered";
    private int anchorPosition;
    private final Runnable checkForGapsRunnable;
    private int mColLength;
    private int mEachGap;
    private int mHGap;
    private int mLastGap;
    private WeakReference<VirtualLayoutManager> mLayoutManager;
    private boolean mLayoutWithAnchor;
    private LazySpanLookup mLazySpanLookup;
    private int mNumLanes;
    private BitSet mRemainingSpans;
    private Span[] mSpans;
    private int mVGap;
    private List<View> prelayoutViewList;

    public StaggeredGridLayoutHelper() {
        this(1, 0);
    }

    public StaggeredGridLayoutHelper(int i) {
        this(i, 0);
    }

    public StaggeredGridLayoutHelper(int i, int i2) {
        this.mNumLanes = 0;
        this.mHGap = 0;
        this.mVGap = 0;
        this.mColLength = 0;
        this.mEachGap = 0;
        this.mLastGap = 0;
        this.mRemainingSpans = null;
        this.mLazySpanLookup = new LazySpanLookup();
        this.prelayoutViewList = new ArrayList();
        this.mLayoutManager = null;
        this.checkForGapsRunnable = new Runnable() { // from class: com.alibaba.android.vlayout.layout.StaggeredGridLayoutHelper.1
            @Override // java.lang.Runnable
            public void run() {
                StaggeredGridLayoutHelper.this.checkForGaps();
            }
        };
        setLane(i);
        setGap(i2);
    }

    public void setGap(int i) {
        setHGap(i);
        setVGap(i);
    }

    public void setHGap(int i) {
        this.mHGap = i;
    }

    public int getHGap() {
        return this.mHGap;
    }

    public void setVGap(int i) {
        this.mVGap = i;
    }

    public int getVGap() {
        return this.mVGap;
    }

    public void setLane(int i) {
        this.mNumLanes = i;
        ensureLanes();
    }

    public int getLane() {
        return this.mNumLanes;
    }

    public int getColLength() {
        return this.mColLength;
    }

    private void ensureLanes() {
        if (this.mSpans == null || this.mSpans.length != this.mNumLanes || this.mRemainingSpans == null) {
            this.mRemainingSpans = new BitSet(this.mNumLanes);
            this.mSpans = new Span[this.mNumLanes];
            for (int i = 0; i < this.mNumLanes; i++) {
                this.mSpans[i] = new Span(i);
            }
        }
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void beforeLayout(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutManagerHelper layoutManagerHelper) {
        int contentHeight;
        super.beforeLayout(recycler, state, layoutManagerHelper);
        if (layoutManagerHelper.getOrientation() == 1) {
            contentHeight = (((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingLeft()) - layoutManagerHelper.getPaddingRight()) - getHorizontalMargin()) - getHorizontalPadding();
        } else {
            contentHeight = (((layoutManagerHelper.getContentHeight() - layoutManagerHelper.getPaddingTop()) - layoutManagerHelper.getPaddingBottom()) - getVerticalMargin()) - getVerticalPadding();
        }
        this.mColLength = (int) (((contentHeight - (this.mHGap * (this.mNumLanes - 1))) / this.mNumLanes) + 0.5d);
        int i = contentHeight - (this.mColLength * this.mNumLanes);
        if (this.mNumLanes <= 1) {
            this.mLastGap = 0;
            this.mEachGap = 0;
        } else if (this.mNumLanes == 2) {
            this.mEachGap = i;
            this.mLastGap = i;
        } else {
            int i2 = layoutManagerHelper.getOrientation() == 1 ? this.mHGap : this.mVGap;
            this.mLastGap = i2;
            this.mEachGap = i2;
        }
        if ((this.mLayoutManager == null || this.mLayoutManager.get() == null || this.mLayoutManager.get() != layoutManagerHelper) && (layoutManagerHelper instanceof VirtualLayoutManager)) {
            this.mLayoutManager = new WeakReference<>((VirtualLayoutManager) layoutManagerHelper);
        }
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public void afterLayout(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, int i3, LayoutManagerHelper layoutManagerHelper) {
        super.afterLayout(recycler, state, i, i2, i3, layoutManagerHelper);
        this.mLayoutWithAnchor = false;
        if (i > getRange().getUpper().intValue() || i2 < getRange().getLower().intValue() || state.isPreLayout() || layoutManagerHelper.getChildCount() <= 0) {
            return;
        }
        ViewCompat.postOnAnimation(layoutManagerHelper.getChildAt(0), this.checkForGapsRunnable);
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void layoutViews(RecyclerView.Recycler recycler, RecyclerView.State state, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutChunkResult layoutChunkResult, LayoutManagerHelper layoutManagerHelper) {
        int offset;
        int extra;
        VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper2;
        int i;
        int i2;
        int i3;
        int i4;
        Span span;
        boolean z;
        int startLine;
        int i5;
        int decoratedMeasurement;
        int i6;
        View view;
        int i7;
        boolean z2;
        Span span2;
        int i8;
        OrientationHelperEx orientationHelperEx;
        RecyclerView.Recycler recycler2 = recycler;
        RecyclerView.State state2 = state;
        VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper3 = layoutStateWrapper;
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            return;
        }
        ensureLanes();
        boolean z3 = layoutManagerHelper.getOrientation() == 1;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        OrientationHelperEx secondaryOrientationHelper = layoutManagerHelper.getSecondaryOrientationHelper();
        boolean isEnableMarginOverLap = layoutManagerHelper.isEnableMarginOverLap();
        this.mRemainingSpans.set(0, this.mNumLanes, true);
        if (layoutStateWrapper.getLayoutDirection() == 1) {
            offset = layoutStateWrapper.getOffset() + layoutStateWrapper.getAvailable();
            extra = layoutStateWrapper.getExtra() + offset + mainOrientationHelper.getEndPadding();
        } else {
            offset = layoutStateWrapper.getOffset() - layoutStateWrapper.getAvailable();
            extra = (offset - layoutStateWrapper.getExtra()) - mainOrientationHelper.getStartAfterPadding();
        }
        int i9 = offset;
        int i10 = extra;
        updateAllRemainingSpans(layoutStateWrapper.getLayoutDirection(), i10, mainOrientationHelper);
        int offset2 = layoutStateWrapper.getOffset();
        this.prelayoutViewList.clear();
        while (layoutStateWrapper3.hasMore(state2) && !this.mRemainingSpans.isEmpty() && !isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            int currentPosition = layoutStateWrapper.getCurrentPosition();
            View next = layoutStateWrapper3.next(recycler2);
            if (next == null) {
                break;
            }
            VirtualLayoutManager.LayoutParams layoutParams = (VirtualLayoutManager.LayoutParams) next.getLayoutParams();
            int viewPosition = layoutParams.getViewPosition();
            int i11 = i10;
            int span3 = this.mLazySpanLookup.getSpan(viewPosition);
            if (span3 == Integer.MIN_VALUE) {
                span = getNextSpan(offset2, layoutStateWrapper3, layoutManagerHelper);
                this.mLazySpanLookup.setSpan(viewPosition, span);
            } else {
                span = this.mSpans[span3];
            }
            Span span4 = span;
            boolean z4 = viewPosition - getRange().getLower().intValue() < this.mNumLanes;
            boolean z5 = getRange().getUpper().intValue() - viewPosition < this.mNumLanes;
            if (layoutStateWrapper.isPreLayout()) {
                this.prelayoutViewList.add(next);
            }
            layoutManagerHelper.addChildView(layoutStateWrapper3, next);
            if (z3) {
                layoutManagerHelper.measureChildWithMargins(next, layoutManagerHelper.getChildMeasureSpec(this.mColLength, layoutParams.width, false), layoutManagerHelper.getChildMeasureSpec(mainOrientationHelper.getTotalSpace(), Float.isNaN(layoutParams.mAspectRatio) ? layoutParams.height : (int) ((View.MeasureSpec.getSize(r9) / layoutParams.mAspectRatio) + 0.5f), true));
                z = true;
            } else {
                int childMeasureSpec = layoutManagerHelper.getChildMeasureSpec(this.mColLength, layoutParams.height, false);
                int totalSpace = mainOrientationHelper.getTotalSpace();
                int size = Float.isNaN(layoutParams.mAspectRatio) ? layoutParams.width : (int) ((View.MeasureSpec.getSize(childMeasureSpec) * layoutParams.mAspectRatio) + 0.5f);
                z = true;
                layoutManagerHelper.measureChildWithMargins(next, layoutManagerHelper.getChildMeasureSpec(totalSpace, size, true), childMeasureSpec);
            }
            if (layoutStateWrapper.getLayoutDirection() == z) {
                decoratedMeasurement = span4.getEndLine(offset2, mainOrientationHelper);
                if (z4) {
                    decoratedMeasurement += computeStartSpace(layoutManagerHelper, z3, z, isEnableMarginOverLap);
                } else if (this.mLayoutWithAnchor) {
                    if (Math.abs(currentPosition - this.anchorPosition) >= this.mNumLanes) {
                        decoratedMeasurement += z3 ? this.mVGap : this.mHGap;
                    }
                } else {
                    decoratedMeasurement += z3 ? this.mVGap : this.mHGap;
                }
                i5 = mainOrientationHelper.getDecoratedMeasurement(next) + decoratedMeasurement;
            } else {
                if (z5) {
                    startLine = span4.getStartLine(offset2, mainOrientationHelper) - ((z3 ? this.mMarginBottom : this.mMarginRight) + this.mPaddingRight);
                } else {
                    startLine = span4.getStartLine(offset2, mainOrientationHelper) - (z3 ? this.mVGap : this.mHGap);
                }
                i5 = startLine;
                decoratedMeasurement = startLine - mainOrientationHelper.getDecoratedMeasurement(next);
            }
            if (layoutStateWrapper.getLayoutDirection() == 1) {
                span4.appendToSpan(next, mainOrientationHelper);
            } else {
                span4.prependToSpan(next, mainOrientationHelper);
            }
            int startAfterPadding = (span4.mIndex == this.mNumLanes - 1 ? ((span4.mIndex * (this.mColLength + this.mEachGap)) - this.mEachGap) + this.mLastGap : span4.mIndex * (this.mColLength + this.mEachGap)) + secondaryOrientationHelper.getStartAfterPadding();
            if (z3) {
                i6 = startAfterPadding + this.mMarginLeft + this.mPaddingLeft;
            } else {
                i6 = startAfterPadding + this.mMarginTop + this.mPaddingTop;
            }
            int i12 = i6;
            int decoratedMeasurementInOther = i12 + mainOrientationHelper.getDecoratedMeasurementInOther(next);
            if (z3) {
                view = next;
                i7 = offset2;
                z2 = isEnableMarginOverLap;
                layoutChildWithMargin(next, i12, decoratedMeasurement, decoratedMeasurementInOther, i5, layoutManagerHelper);
                i8 = i11;
                span2 = span4;
                orientationHelperEx = mainOrientationHelper;
            } else {
                view = next;
                i7 = offset2;
                z2 = isEnableMarginOverLap;
                int i13 = decoratedMeasurement;
                span2 = span4;
                int i14 = i5;
                i8 = i11;
                orientationHelperEx = mainOrientationHelper;
                layoutChildWithMargin(view, i13, i12, i14, decoratedMeasurementInOther, layoutManagerHelper);
            }
            updateRemainingSpans(span2, layoutStateWrapper.getLayoutDirection(), i8, orientationHelperEx);
            recycle(recycler, layoutStateWrapper, span2, i9, layoutManagerHelper);
            handleStateOnResult(layoutChunkResult, view);
            i10 = i8;
            mainOrientationHelper = orientationHelperEx;
            offset2 = i7;
            isEnableMarginOverLap = z2;
            recycler2 = recycler;
            state2 = state;
            layoutStateWrapper3 = layoutStateWrapper;
        }
        OrientationHelperEx orientationHelperEx2 = mainOrientationHelper;
        if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
            if (layoutStateWrapper.getLayoutDirection() == -1) {
                for (Span span5 : this.mSpans) {
                    if (span5.mCachedStart != Integer.MIN_VALUE) {
                        span5.mLastEdgeStart = span5.mCachedStart;
                    }
                }
            } else {
                for (Span span6 : this.mSpans) {
                    if (span6.mCachedEnd != Integer.MIN_VALUE) {
                        span6.mLastEdgeEnd = span6.mCachedEnd;
                    }
                }
            }
        }
        if (layoutStateWrapper.getLayoutDirection() == -1) {
            if (isOutOfRange(layoutStateWrapper.getCurrentPosition())) {
                layoutStateWrapper2 = layoutStateWrapper;
            } else {
                layoutStateWrapper2 = layoutStateWrapper;
                if (layoutStateWrapper2.hasMore(state)) {
                    layoutChunkResult.mConsumed = layoutStateWrapper.getOffset() - getMaxStart(orientationHelperEx2.getStartAfterPadding(), orientationHelperEx2);
                }
            }
            int offset3 = layoutStateWrapper.getOffset() - getMinStart(orientationHelperEx2.getEndAfterPadding(), orientationHelperEx2);
            if (z3) {
                i3 = this.mMarginTop;
                i4 = this.mPaddingTop;
            } else {
                i3 = this.mMarginLeft;
                i4 = this.mPaddingLeft;
            }
            layoutChunkResult.mConsumed = offset3 + i3 + i4;
        } else {
            layoutStateWrapper2 = layoutStateWrapper;
            if (!isOutOfRange(layoutStateWrapper.getCurrentPosition()) && layoutStateWrapper2.hasMore(state)) {
                layoutChunkResult.mConsumed = getMinEnd(orientationHelperEx2.getEndAfterPadding(), orientationHelperEx2) - layoutStateWrapper.getOffset();
            } else {
                int maxEnd = getMaxEnd(orientationHelperEx2.getEndAfterPadding(), orientationHelperEx2) - layoutStateWrapper.getOffset();
                if (z3) {
                    i = this.mMarginBottom;
                    i2 = this.mPaddingBottom;
                } else {
                    i = this.mMarginRight;
                    i2 = this.mPaddingRight;
                }
                layoutChunkResult.mConsumed = maxEnd + i + i2;
            }
        }
        recycleForPreLayout(recycler, layoutStateWrapper2, layoutManagerHelper);
    }

    private void recycleForPreLayout(RecyclerView.Recycler recycler, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutManagerHelper layoutManagerHelper) {
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        for (int size = this.prelayoutViewList.size() - 1; size >= 0; size--) {
            View view = this.prelayoutViewList.get(size);
            if (view != null && mainOrientationHelper.getDecoratedStart(view) > mainOrientationHelper.getEndAfterPadding()) {
                Span findSpan = findSpan(((RecyclerView.LayoutParams) view.getLayoutParams()).getViewPosition(), view, false);
                if (findSpan != null) {
                    findSpan.popEnd(mainOrientationHelper);
                    layoutManagerHelper.removeChildView(view);
                    recycler.recycleView(view);
                }
            } else {
                Span findSpan2 = findSpan(((RecyclerView.LayoutParams) view.getLayoutParams()).getViewPosition(), view, false);
                if (findSpan2 != null) {
                    findSpan2.popEnd(mainOrientationHelper);
                    layoutManagerHelper.removeChildView(view);
                    recycler.recycleView(view);
                    return;
                }
                return;
            }
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onScrollStateChanged(int i, int i2, int i3, LayoutManagerHelper layoutManagerHelper) {
        if (i2 > getRange().getUpper().intValue() || i3 < getRange().getLower().intValue() || i != 0) {
            return;
        }
        checkForGaps();
    }

    @Override // com.alibaba.android.vlayout.layout.MarginLayoutHelper, com.alibaba.android.vlayout.LayoutHelper
    public int computeAlignOffset(int i, boolean z, boolean z2, LayoutManagerHelper layoutManagerHelper) {
        boolean z3 = layoutManagerHelper.getOrientation() == 1;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        View findViewByPosition = layoutManagerHelper.findViewByPosition(getRange().getLower().intValue() + i);
        if (findViewByPosition == null) {
            return 0;
        }
        ensureLanes();
        if (z3) {
            if (z) {
                if (i == getItemCount() - 1) {
                    return this.mMarginBottom + this.mPaddingBottom + (getMaxEnd(mainOrientationHelper.getDecoratedEnd(findViewByPosition), mainOrientationHelper) - mainOrientationHelper.getDecoratedEnd(findViewByPosition));
                }
                if (!z2) {
                    return getMinEnd(mainOrientationHelper.getDecoratedStart(findViewByPosition), mainOrientationHelper) - mainOrientationHelper.getDecoratedEnd(findViewByPosition);
                }
            } else {
                if (i == 0) {
                    return ((-this.mMarginTop) - this.mPaddingTop) - (mainOrientationHelper.getDecoratedStart(findViewByPosition) - getMinStart(mainOrientationHelper.getDecoratedStart(findViewByPosition), mainOrientationHelper));
                }
                if (!z2) {
                    return getMaxStart(mainOrientationHelper.getDecoratedEnd(findViewByPosition), mainOrientationHelper) - mainOrientationHelper.getDecoratedStart(findViewByPosition);
                }
            }
        }
        return 0;
    }

    @Override // com.alibaba.android.vlayout.layout.BaseLayoutHelper
    public void onClear(LayoutManagerHelper layoutManagerHelper) {
        super.onClear(layoutManagerHelper);
        this.mLazySpanLookup.clear();
        this.mSpans = null;
        this.mLayoutManager = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkForGaps() {
        VirtualLayoutManager virtualLayoutManager;
        int intValue;
        int position;
        int i;
        int decoratedEnd;
        if (this.mLayoutManager == null || (virtualLayoutManager = this.mLayoutManager.get()) == null || virtualLayoutManager.getChildCount() == 0) {
            return;
        }
        Range<Integer> range = getRange();
        if (virtualLayoutManager.getReverseLayout()) {
            virtualLayoutManager.findLastVisibleItemPosition();
            virtualLayoutManager.findFirstVisibleItemPosition();
            intValue = range.getUpper().intValue() - 1;
        } else {
            virtualLayoutManager.findFirstVisibleItemPosition();
            virtualLayoutManager.findLastCompletelyVisibleItemPosition();
            intValue = range.getLower().intValue();
        }
        OrientationHelperEx mainOrientationHelper = virtualLayoutManager.getMainOrientationHelper();
        int childCount = virtualLayoutManager.getChildCount();
        if (virtualLayoutManager.getReverseLayout()) {
            int i2 = childCount - 1;
            for (int i3 = i2; i3 >= 0; i3--) {
                View childAt = virtualLayoutManager.getChildAt(i3);
                position = virtualLayoutManager.getPosition(childAt);
                if (position == intValue) {
                    if (i3 == i2) {
                        i = mainOrientationHelper.getDecoratedEnd(childAt);
                    } else {
                        View childAt2 = virtualLayoutManager.getChildAt(i3 + 1);
                        if (virtualLayoutManager.getPosition(childAt2) == position - 1) {
                            decoratedEnd = (mainOrientationHelper.getDecoratedStart(childAt2) - virtualLayoutManager.obtainExtraMargin(childAt2, false)) + virtualLayoutManager.obtainExtraMargin(childAt, true);
                        } else {
                            decoratedEnd = mainOrientationHelper.getDecoratedEnd(childAt);
                        }
                        i = decoratedEnd;
                    }
                }
            }
            i = Integer.MIN_VALUE;
            position = Integer.MIN_VALUE;
        } else {
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt3 = virtualLayoutManager.getChildAt(i4);
                position = virtualLayoutManager.getPosition(childAt3);
                if (position == intValue) {
                    if (i4 == 0) {
                        i = mainOrientationHelper.getDecoratedStart(childAt3);
                    } else {
                        View childAt4 = virtualLayoutManager.getChildAt(i4 - 1);
                        int decoratedEnd2 = (mainOrientationHelper.getDecoratedEnd(childAt4) + virtualLayoutManager.obtainExtraMargin(childAt4, true, false)) - virtualLayoutManager.obtainExtraMargin(childAt3, false, false);
                        if (decoratedEnd2 == mainOrientationHelper.getDecoratedStart(childAt3)) {
                            position = Integer.MIN_VALUE;
                        } else {
                            int position2 = virtualLayoutManager.getPosition(childAt4);
                            int i5 = intValue - 1;
                            if (position2 != i5) {
                                LayoutHelper findLayoutHelperByPosition = virtualLayoutManager.findLayoutHelperByPosition(i5);
                                if (findLayoutHelperByPosition != null && (findLayoutHelperByPosition instanceof StickyLayoutHelper) && findLayoutHelperByPosition.getFixedView() != null) {
                                    decoratedEnd2 += findLayoutHelperByPosition.getFixedView().getMeasuredHeight();
                                }
                            } else {
                                virtualLayoutManager.findLayoutHelperByPosition(position2).getRange();
                            }
                        }
                        i = decoratedEnd2;
                    }
                }
            }
            i = Integer.MIN_VALUE;
            position = Integer.MIN_VALUE;
        }
        if (position == Integer.MIN_VALUE || hasGapsToFix(virtualLayoutManager, position, i) == null) {
            return;
        }
        for (Span span : this.mSpans) {
            span.setLine(i);
        }
        virtualLayoutManager.requestSimpleAnimationsInNextLayout();
        virtualLayoutManager.requestLayout();
    }

    private View hasGapsToFix(VirtualLayoutManager virtualLayoutManager, int i, int i2) {
        if (virtualLayoutManager.findViewByPosition(i) == null) {
            return null;
        }
        new BitSet(this.mNumLanes).set(0, this.mNumLanes, true);
        for (Span span : this.mSpans) {
            if (span.mViews.size() != 0 && checkSpanForGap(span, virtualLayoutManager, i2)) {
                return (View) (virtualLayoutManager.getReverseLayout() ? span.mViews.get(span.mViews.size() - 1) : span.mViews.get(0));
            }
        }
        return null;
    }

    private boolean checkSpanForGap(Span span, VirtualLayoutManager virtualLayoutManager, int i) {
        OrientationHelperEx mainOrientationHelper = virtualLayoutManager.getMainOrientationHelper();
        return virtualLayoutManager.getReverseLayout() ? span.getEndLine(mainOrientationHelper) < i : span.getStartLine(mainOrientationHelper) > i;
    }

    private void recycle(RecyclerView.Recycler recycler, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, Span span, int i, LayoutManagerHelper layoutManagerHelper) {
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        if (layoutStateWrapper.getLayoutDirection() == -1) {
            recycleFromEnd(recycler, Math.max(i, getMaxStart(span.getStartLine(mainOrientationHelper), mainOrientationHelper)) + (mainOrientationHelper.getEnd() - mainOrientationHelper.getStartAfterPadding()), layoutManagerHelper);
        } else {
            recycleFromStart(recycler, Math.min(i, getMinEnd(span.getEndLine(mainOrientationHelper), mainOrientationHelper)) - (mainOrientationHelper.getEnd() - mainOrientationHelper.getStartAfterPadding()), layoutManagerHelper);
        }
    }

    private void recycleFromStart(RecyclerView.Recycler recycler, int i, LayoutManagerHelper layoutManagerHelper) {
        View childAt;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        boolean z = true;
        while (layoutManagerHelper.getChildCount() > 0 && z && (childAt = layoutManagerHelper.getChildAt(0)) != null && mainOrientationHelper.getDecoratedEnd(childAt) < i) {
            Span findSpan = findSpan(((RecyclerView.LayoutParams) childAt.getLayoutParams()).getViewPosition(), childAt, true);
            if (findSpan != null) {
                findSpan.popStart(mainOrientationHelper);
                layoutManagerHelper.removeChildView(childAt);
                recycler.recycleView(childAt);
            } else {
                z = false;
            }
        }
    }

    private void recycleFromEnd(RecyclerView.Recycler recycler, int i, LayoutManagerHelper layoutManagerHelper) {
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        for (int childCount = layoutManagerHelper.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = layoutManagerHelper.getChildAt(childCount);
            if (childAt == null || mainOrientationHelper.getDecoratedStart(childAt) <= i) {
                return;
            }
            Span findSpan = findSpan(((RecyclerView.LayoutParams) childAt.getLayoutParams()).getViewPosition(), childAt, false);
            if (findSpan != null) {
                findSpan.popEnd(mainOrientationHelper);
                layoutManagerHelper.removeChildView(childAt);
                recycler.recycleView(childAt);
            }
        }
    }

    private Span findSpan(int i, View view, boolean z) {
        int span = this.mLazySpanLookup.getSpan(i);
        if (span >= 0 && span < this.mSpans.length) {
            Span span2 = this.mSpans[span];
            if (z && span2.findStart(view)) {
                return span2;
            }
            if (!z && span2.findEnd(view)) {
                return span2;
            }
        }
        for (int i2 = 0; i2 < this.mSpans.length; i2++) {
            if (i2 != span) {
                Span span3 = this.mSpans[i2];
                if (z && span3.findStart(view)) {
                    return span3;
                }
                if (!z && span3.findEnd(view)) {
                    return span3;
                }
            }
        }
        return null;
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public boolean isRecyclable(int i, int i2, int i3, LayoutManagerHelper layoutManagerHelper, boolean z) {
        View findViewByPosition;
        boolean isRecyclable = super.isRecyclable(i, i2, i3, layoutManagerHelper, z);
        if (isRecyclable && (findViewByPosition = layoutManagerHelper.findViewByPosition(i)) != null) {
            OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
            int viewPosition = ((RecyclerView.LayoutParams) findViewByPosition.getLayoutParams()).getViewPosition();
            if (layoutManagerHelper.getReverseLayout()) {
                if (z) {
                    Span findSpan = findSpan(viewPosition, findViewByPosition, true);
                    if (findSpan != null) {
                        findSpan.popEnd(mainOrientationHelper);
                    }
                } else {
                    Span findSpan2 = findSpan(viewPosition, findViewByPosition, false);
                    if (findSpan2 != null) {
                        findSpan2.popStart(mainOrientationHelper);
                    }
                }
            } else if (z) {
                Span findSpan3 = findSpan(viewPosition, findViewByPosition, true);
                if (findSpan3 != null) {
                    findSpan3.popStart(mainOrientationHelper);
                }
            } else {
                Span findSpan4 = findSpan(viewPosition, findViewByPosition, false);
                if (findSpan4 != null) {
                    findSpan4.popEnd(mainOrientationHelper);
                }
            }
        }
        return isRecyclable;
    }

    private void updateAllRemainingSpans(int i, int i2, OrientationHelperEx orientationHelperEx) {
        for (int i3 = 0; i3 < this.mNumLanes; i3++) {
            if (!this.mSpans[i3].mViews.isEmpty()) {
                updateRemainingSpans(this.mSpans[i3], i, i2, orientationHelperEx);
            }
        }
    }

    private void updateRemainingSpans(Span span, int i, int i2, OrientationHelperEx orientationHelperEx) {
        int deletedSize = span.getDeletedSize();
        if (i == -1) {
            if (span.getStartLine(orientationHelperEx) + deletedSize < i2) {
                this.mRemainingSpans.set(span.mIndex, false);
            }
        } else if (span.getEndLine(orientationHelperEx) - deletedSize > i2) {
            this.mRemainingSpans.set(span.mIndex, false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x001e, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0036, code lost:
    
        if (((r8.getLayoutDirection() == -1) == r9.getReverseLayout()) == r9.isDoLayoutRTL()) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001a, code lost:
    
        if ((r8.getLayoutDirection() == -1) != r9.getReverseLayout()) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
    
        r9 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Span getNextSpan(int i, VirtualLayoutManager.LayoutStateWrapper layoutStateWrapper, LayoutManagerHelper layoutManagerHelper) {
        boolean z;
        int i2;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        int i3 = -1;
        int i4 = 0;
        if (layoutManagerHelper.getOrientation() == 0) {
        }
        if (z) {
            i4 = this.mNumLanes - 1;
            i2 = -1;
        } else {
            i3 = this.mNumLanes;
            i2 = 1;
        }
        Span span = null;
        if (layoutStateWrapper.getLayoutDirection() == 1) {
            int i5 = BytesRange.TO_END_OF_CONTENT;
            while (i4 != i3) {
                Span span2 = this.mSpans[i4];
                int endLine = span2.getEndLine(i, mainOrientationHelper);
                if (endLine < i5) {
                    span = span2;
                    i5 = endLine;
                }
                i4 += i2;
            }
            return span;
        }
        int i6 = Integer.MIN_VALUE;
        while (i4 != i3) {
            Span span3 = this.mSpans[i4];
            int startLine = span3.getStartLine(i, mainOrientationHelper);
            if (startLine > i6) {
                span = span3;
                i6 = startLine;
            }
            i4 += i2;
        }
        return span;
    }

    private int getMaxStart(int i, OrientationHelperEx orientationHelperEx) {
        int startLine = this.mSpans[0].getStartLine(i, orientationHelperEx);
        for (int i2 = 1; i2 < this.mNumLanes; i2++) {
            int startLine2 = this.mSpans[i2].getStartLine(i, orientationHelperEx);
            if (startLine2 > startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    private int getMinStart(int i, OrientationHelperEx orientationHelperEx) {
        int startLine = this.mSpans[0].getStartLine(i, orientationHelperEx);
        for (int i2 = 1; i2 < this.mNumLanes; i2++) {
            int startLine2 = this.mSpans[i2].getStartLine(i, orientationHelperEx);
            if (startLine2 < startLine) {
                startLine = startLine2;
            }
        }
        return startLine;
    }

    private int getMaxEnd(int i, OrientationHelperEx orientationHelperEx) {
        int endLine = this.mSpans[0].getEndLine(i, orientationHelperEx);
        for (int i2 = 1; i2 < this.mNumLanes; i2++) {
            int endLine2 = this.mSpans[i2].getEndLine(i, orientationHelperEx);
            if (endLine2 > endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    private int getMinEnd(int i, OrientationHelperEx orientationHelperEx) {
        int endLine = this.mSpans[0].getEndLine(i, orientationHelperEx);
        for (int i2 = 1; i2 < this.mNumLanes; i2++) {
            int endLine2 = this.mSpans[i2].getEndLine(i, orientationHelperEx);
            if (endLine2 < endLine) {
                endLine = endLine2;
            }
        }
        return endLine;
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onRefreshLayout(RecyclerView.State state, VirtualLayoutManager.AnchorInfoWrapper anchorInfoWrapper, LayoutManagerHelper layoutManagerHelper) {
        super.onRefreshLayout(state, anchorInfoWrapper, layoutManagerHelper);
        ensureLanes();
        if (isOutOfRange(anchorInfoWrapper.position)) {
            for (Span span : this.mSpans) {
                span.clear();
            }
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void checkAnchorInfo(RecyclerView.State state, VirtualLayoutManager.AnchorInfoWrapper anchorInfoWrapper, LayoutManagerHelper layoutManagerHelper) {
        int i;
        super.checkAnchorInfo(state, anchorInfoWrapper, layoutManagerHelper);
        ensureLanes();
        Range<Integer> range = getRange();
        if (anchorInfoWrapper.layoutFromEnd) {
            if (anchorInfoWrapper.position < (range.getLower().intValue() + this.mNumLanes) - 1) {
                anchorInfoWrapper.position = Math.min((range.getLower().intValue() + this.mNumLanes) - 1, range.getUpper().intValue());
            }
        } else if (anchorInfoWrapper.position > range.getUpper().intValue() - (this.mNumLanes - 1)) {
            anchorInfoWrapper.position = Math.max(range.getLower().intValue(), range.getUpper().intValue() - (this.mNumLanes - 1));
        }
        View findViewByPosition = layoutManagerHelper.findViewByPosition(anchorInfoWrapper.position);
        int i2 = 0;
        int i3 = layoutManagerHelper.getOrientation() == 1 ? this.mVGap : this.mHGap;
        OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
        if (findViewByPosition == null) {
            Span[] spanArr = this.mSpans;
            int length = spanArr.length;
            while (i2 < length) {
                Span span = spanArr[i2];
                span.clear();
                span.setLine(anchorInfoWrapper.coordinate);
                i2++;
            }
            return;
        }
        int i4 = Integer.MIN_VALUE;
        int i5 = anchorInfoWrapper.layoutFromEnd ? Integer.MIN_VALUE : BytesRange.TO_END_OF_CONTENT;
        int i6 = i5;
        for (Span span2 : this.mSpans) {
            if (!span2.mViews.isEmpty()) {
                if (anchorInfoWrapper.layoutFromEnd) {
                    i6 = Math.max(i6, layoutManagerHelper.getPosition((View) span2.mViews.get(span2.mViews.size() - 1)));
                } else {
                    i6 = Math.min(i6, layoutManagerHelper.getPosition((View) span2.mViews.get(0)));
                }
            }
        }
        if (!isOutOfRange(i6)) {
            boolean z = i6 == range.getLower().intValue();
            View findViewByPosition2 = layoutManagerHelper.findViewByPosition(i6);
            if (findViewByPosition2 != null) {
                if (anchorInfoWrapper.layoutFromEnd) {
                    anchorInfoWrapper.position = i6;
                    int decoratedEnd = mainOrientationHelper.getDecoratedEnd(findViewByPosition);
                    if (decoratedEnd < anchorInfoWrapper.coordinate) {
                        int i7 = anchorInfoWrapper.coordinate - decoratedEnd;
                        if (z) {
                            i3 = 0;
                        }
                        i = i7 + i3;
                        anchorInfoWrapper.coordinate = mainOrientationHelper.getDecoratedEnd(findViewByPosition2) + i;
                    } else {
                        i = z ? 0 : i3;
                        anchorInfoWrapper.coordinate = mainOrientationHelper.getDecoratedEnd(findViewByPosition2) + i;
                    }
                } else {
                    anchorInfoWrapper.position = i6;
                    int decoratedStart = mainOrientationHelper.getDecoratedStart(findViewByPosition);
                    if (decoratedStart > anchorInfoWrapper.coordinate) {
                        int i8 = anchorInfoWrapper.coordinate - decoratedStart;
                        if (z) {
                            i3 = 0;
                        }
                        i = i8 - i3;
                        anchorInfoWrapper.coordinate = mainOrientationHelper.getDecoratedStart(findViewByPosition2) + i;
                    } else {
                        if (z) {
                            i3 = 0;
                        }
                        int i9 = -i3;
                        anchorInfoWrapper.coordinate = mainOrientationHelper.getDecoratedStart(findViewByPosition2) + i9;
                        i4 = i9;
                    }
                }
                i4 = i;
            }
        } else {
            this.anchorPosition = anchorInfoWrapper.position;
            this.mLayoutWithAnchor = true;
        }
        Span[] spanArr2 = this.mSpans;
        int length2 = spanArr2.length;
        while (i2 < length2) {
            spanArr2[i2].cacheReferenceLineAndClear(layoutManagerHelper.getReverseLayout() ^ anchorInfoWrapper.layoutFromEnd, i4, mainOrientationHelper);
            i2++;
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onItemsChanged(LayoutManagerHelper layoutManagerHelper) {
        this.mLazySpanLookup.clear();
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onSaveState(Bundle bundle) {
        super.onSaveState(bundle);
        bundle.putIntArray(LOOKUP_BUNDLE_KEY, this.mLazySpanLookup.mData);
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mLazySpanLookup.mData = bundle.getIntArray(LOOKUP_BUNDLE_KEY);
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onOffsetChildrenVertical(int i, LayoutManagerHelper layoutManagerHelper) {
        super.onOffsetChildrenVertical(i, layoutManagerHelper);
        if (layoutManagerHelper.getOrientation() == 1) {
            for (Span span : this.mSpans) {
                span.onOffset(i);
            }
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutHelper
    public void onOffsetChildrenHorizontal(int i, LayoutManagerHelper layoutManagerHelper) {
        super.onOffsetChildrenHorizontal(i, layoutManagerHelper);
        if (layoutManagerHelper.getOrientation() == 0) {
            for (Span span : this.mSpans) {
                span.onOffset(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Span {
        static final int INVALID_OFFSET = Integer.MIN_VALUE;
        int mCachedEnd;
        int mCachedStart;
        int mDeletedSize;
        final int mIndex;
        int mLastEdgeEnd;
        int mLastEdgeStart;
        private ArrayList<View> mViews;

        private Span(int i) {
            this.mViews = new ArrayList<>();
            this.mCachedStart = Integer.MIN_VALUE;
            this.mCachedEnd = Integer.MIN_VALUE;
            this.mDeletedSize = 0;
            this.mLastEdgeStart = Integer.MIN_VALUE;
            this.mLastEdgeEnd = Integer.MIN_VALUE;
            this.mIndex = i;
        }

        void calculateCachedStart(@NonNull OrientationHelperEx orientationHelperEx) {
            if (this.mViews.size() == 0) {
                this.mCachedStart = Integer.MIN_VALUE;
            } else {
                this.mCachedStart = orientationHelperEx.getDecoratedStart(this.mViews.get(0));
            }
        }

        int getStartLine(OrientationHelperEx orientationHelperEx) {
            return getStartLine(Integer.MIN_VALUE, orientationHelperEx);
        }

        int getStartLine(int i, OrientationHelperEx orientationHelperEx) {
            if (this.mCachedStart != Integer.MIN_VALUE) {
                return this.mCachedStart;
            }
            if (i != Integer.MIN_VALUE && this.mViews.size() == 0) {
                return this.mLastEdgeEnd != Integer.MIN_VALUE ? this.mLastEdgeEnd : i;
            }
            calculateCachedStart(orientationHelperEx);
            return this.mCachedStart;
        }

        void calculateCachedEnd(OrientationHelperEx orientationHelperEx) {
            if (this.mViews.size() == 0) {
                this.mCachedEnd = Integer.MIN_VALUE;
            } else {
                this.mCachedEnd = orientationHelperEx.getDecoratedEnd(this.mViews.get(this.mViews.size() - 1));
            }
        }

        int getEndLine(OrientationHelperEx orientationHelperEx) {
            return getEndLine(Integer.MIN_VALUE, orientationHelperEx);
        }

        int getEndLine(int i, OrientationHelperEx orientationHelperEx) {
            if (this.mCachedEnd != Integer.MIN_VALUE) {
                return this.mCachedEnd;
            }
            if (i != Integer.MIN_VALUE && this.mViews.size() == 0) {
                return this.mLastEdgeStart != Integer.MIN_VALUE ? this.mLastEdgeStart : i;
            }
            calculateCachedEnd(orientationHelperEx);
            return this.mCachedEnd;
        }

        void prependToSpan(View view, OrientationHelperEx orientationHelperEx) {
            RecyclerView.LayoutParams layoutParams = getLayoutParams(view);
            this.mViews.add(0, view);
            this.mCachedStart = Integer.MIN_VALUE;
            if (this.mViews.size() == 1) {
                this.mCachedEnd = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize += orientationHelperEx.getDecoratedMeasurement(view);
            }
        }

        void appendToSpan(View view, OrientationHelperEx orientationHelperEx) {
            RecyclerView.LayoutParams layoutParams = getLayoutParams(view);
            this.mViews.add(view);
            this.mCachedEnd = Integer.MIN_VALUE;
            if (this.mViews.size() == 1) {
                this.mCachedStart = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize += orientationHelperEx.getDecoratedMeasurement(view);
            }
        }

        void cacheReferenceLineAndClear(boolean z, int i, OrientationHelperEx orientationHelperEx) {
            int startLine;
            if (z) {
                startLine = getEndLine(orientationHelperEx);
            } else {
                startLine = getStartLine(orientationHelperEx);
            }
            clear();
            if (startLine == Integer.MIN_VALUE) {
                return;
            }
            if ((!z || startLine >= orientationHelperEx.getEndAfterPadding()) && !z) {
                orientationHelperEx.getStartAfterPadding();
            }
            if (i != Integer.MIN_VALUE) {
                startLine += i;
            }
            this.mCachedEnd = startLine;
            this.mCachedStart = startLine;
            this.mLastEdgeEnd = Integer.MIN_VALUE;
            this.mLastEdgeStart = Integer.MIN_VALUE;
        }

        void clear() {
            Log.d("Longer", "clear span");
            this.mViews.clear();
            invalidateCache();
            this.mDeletedSize = 0;
        }

        void invalidateCache() {
            this.mCachedStart = Integer.MIN_VALUE;
            this.mCachedEnd = Integer.MIN_VALUE;
            this.mLastEdgeEnd = Integer.MIN_VALUE;
            this.mLastEdgeStart = Integer.MIN_VALUE;
        }

        void setLine(int i) {
            this.mCachedStart = i;
            this.mCachedEnd = i;
            this.mLastEdgeEnd = Integer.MIN_VALUE;
            this.mLastEdgeStart = Integer.MIN_VALUE;
        }

        void popEnd(OrientationHelperEx orientationHelperEx) {
            int size = this.mViews.size();
            View remove = this.mViews.remove(size - 1);
            RecyclerView.LayoutParams layoutParams = getLayoutParams(remove);
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize -= orientationHelperEx.getDecoratedMeasurement(remove);
            }
            if (size == 1) {
                this.mCachedStart = Integer.MIN_VALUE;
            }
            this.mCachedEnd = Integer.MIN_VALUE;
        }

        boolean findEnd(View view) {
            int size = this.mViews.size();
            return size > 0 && this.mViews.get(size - 1) == view;
        }

        void popStart(OrientationHelperEx orientationHelperEx) {
            View remove = this.mViews.remove(0);
            RecyclerView.LayoutParams layoutParams = getLayoutParams(remove);
            if (this.mViews.size() == 0) {
                this.mCachedEnd = Integer.MIN_VALUE;
            }
            if (layoutParams.isItemRemoved() || layoutParams.isItemChanged()) {
                this.mDeletedSize -= orientationHelperEx.getDecoratedMeasurement(remove);
            }
            this.mCachedStart = Integer.MIN_VALUE;
        }

        boolean findStart(View view) {
            return this.mViews.size() > 0 && this.mViews.get(0) == view;
        }

        public int getDeletedSize() {
            return this.mDeletedSize;
        }

        RecyclerView.LayoutParams getLayoutParams(View view) {
            return (RecyclerView.LayoutParams) view.getLayoutParams();
        }

        void onOffset(int i) {
            if (this.mLastEdgeStart != Integer.MIN_VALUE) {
                this.mLastEdgeStart += i;
            }
            if (this.mCachedStart != Integer.MIN_VALUE) {
                this.mCachedStart += i;
            }
            if (this.mLastEdgeEnd != Integer.MIN_VALUE) {
                this.mLastEdgeEnd += i;
            }
            if (this.mCachedEnd != Integer.MIN_VALUE) {
                this.mCachedEnd += i;
            }
        }

        int getNormalizedOffset(int i, int i2, int i3, OrientationHelperEx orientationHelperEx) {
            if (this.mViews.size() == 0) {
                return 0;
            }
            if (i < 0) {
                int endLine = getEndLine(0, orientationHelperEx) - i3;
                if (endLine <= 0) {
                    return 0;
                }
                return (-i) > endLine ? -endLine : i;
            }
            int startLine = i2 - getStartLine(0, orientationHelperEx);
            if (startLine <= 0) {
                return 0;
            }
            return startLine < i ? startLine : i;
        }

        boolean isEmpty(int i, int i2, OrientationHelperEx orientationHelperEx) {
            int size = this.mViews.size();
            for (int i3 = 0; i3 < size; i3++) {
                View view = this.mViews.get(i3);
                if (orientationHelperEx.getDecoratedStart(view) < i2 && orientationHelperEx.getDecoratedEnd(view) > i) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class LazySpanLookup {
        private static final int MIN_SIZE = 10;
        int[] mData;

        LazySpanLookup() {
        }

        int invalidateAfter(int i) {
            if (this.mData == null || i >= this.mData.length) {
                return -1;
            }
            Arrays.fill(this.mData, i, this.mData.length, Integer.MIN_VALUE);
            return this.mData.length;
        }

        int getSpan(int i) {
            if (this.mData == null || i >= this.mData.length) {
                return Integer.MIN_VALUE;
            }
            return this.mData[i];
        }

        void setSpan(int i, Span span) {
            ensureSize(i);
            this.mData[i] = span.mIndex;
        }

        int sizeForPosition(int i) {
            int length = this.mData.length;
            while (length <= i) {
                length *= 2;
            }
            return length;
        }

        void ensureSize(int i) {
            if (this.mData == null) {
                this.mData = new int[Math.max(i, 10) + 1];
                Arrays.fill(this.mData, Integer.MIN_VALUE);
            } else if (i >= this.mData.length) {
                int[] iArr = this.mData;
                this.mData = new int[sizeForPosition(i)];
                System.arraycopy(iArr, 0, this.mData, 0, iArr.length);
                Arrays.fill(this.mData, iArr.length, this.mData.length, Integer.MIN_VALUE);
            }
        }

        void clear() {
            if (this.mData != null) {
                Arrays.fill(this.mData, Integer.MIN_VALUE);
            }
        }

        void offsetForRemoval(int i, int i2) {
            if (this.mData == null || i >= this.mData.length) {
                return;
            }
            int i3 = i + i2;
            ensureSize(i3);
            System.arraycopy(this.mData, i3, this.mData, i, (this.mData.length - i) - i2);
            Arrays.fill(this.mData, this.mData.length - i2, this.mData.length, Integer.MIN_VALUE);
        }

        void offsetForAddition(int i, int i2) {
            if (this.mData == null || i >= this.mData.length) {
                return;
            }
            int i3 = i + i2;
            ensureSize(i3);
            System.arraycopy(this.mData, i, this.mData, i3, (this.mData.length - i) - i2);
            Arrays.fill(this.mData, i, i3, Integer.MIN_VALUE);
        }
    }
}
