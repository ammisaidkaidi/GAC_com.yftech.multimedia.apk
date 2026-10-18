package com.alibaba.android.vlayout;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcelable;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx;
import com.alibaba.android.vlayout.layout.BaseLayoutHelper;
import com.alibaba.android.vlayout.layout.DefaultLayoutHelper;
import com.alibaba.android.vlayout.layout.FixAreaAdjuster;
import com.alibaba.android.vlayout.layout.FixAreaLayoutHelper;
import com.alibaba.android.vlayout.layout.LayoutChunkResult;
import com.facebook.imagepipeline.common.BytesRange;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes3.dex */
public class VirtualLayoutManager extends ExposeLinearLayoutManagerEx implements LayoutManagerHelper {
    private static LayoutHelper DEFAULT_LAYOUT_HELPER = new DefaultLayoutHelper();
    public static final int HORIZONTAL = 0;
    private static final int MAX_NO_SCROLLING_SIZE = 134217727;
    protected static final String TAG = "VirtualLayoutManager";
    private static final String TRACE_LAYOUT = "VLM onLayoutChildren";
    private static final String TRACE_SCROLL = "VLM scroll";
    public static final int VERTICAL = 1;
    private static boolean sDebuggable = false;
    private Rect mDecorInsets;
    private LayoutHelper mDefaultLayoutHelper;
    private boolean mEnableMarginOverlapping;
    private FixAreaAdjuster mFixAreaAdjustor;
    private LayoutHelperFinder mHelperFinder;
    private BaseLayoutHelper.LayoutViewBindListener mLayoutViewBindListener;
    private LayoutViewFactory mLayoutViewFatory;
    private int mMaxMeasureSize;
    private int mMeasuredFullSpace;
    private int mNested;
    private boolean mNestedScrolling;
    private boolean mNoScrolling;
    protected OrientationHelperEx mOrientationHelper;
    private List<Pair<Range<Integer>, Integer>> mRangeLengths;
    private RecyclerView mRecyclerView;
    protected OrientationHelperEx mSecondaryOrientationHelper;
    private boolean mSpaceMeasured;
    private boolean mSpaceMeasuring;
    private AnchorInfoWrapper mTempAnchorInfoWrapper;
    private LayoutStateWrapper mTempLayoutStateWrapper;
    private HashMap<Integer, LayoutHelper> newHelpersSet;
    private HashMap<Integer, LayoutHelper> oldHelpersSet;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface CacheViewHolder {
        boolean needCached();
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public /* bridge */ /* synthetic */ void assertNotInLayoutOrScroll(String str) {
        super.assertNotInLayoutOrScroll(str);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public /* bridge */ /* synthetic */ PointF computeScrollVectorForPosition(int i) {
        return super.computeScrollVectorForPosition(i);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager
    public /* bridge */ /* synthetic */ int findFirstVisibleItemPosition() {
        return super.findFirstVisibleItemPosition();
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager
    public /* bridge */ /* synthetic */ int findLastVisibleItemPosition() {
        return super.findLastVisibleItemPosition();
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public /* bridge */ /* synthetic */ View onFocusSearchFailed(View view, int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return super.onFocusSearchFailed(view, i, recycler, state);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public /* bridge */ /* synthetic */ void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(parcelable);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public /* bridge */ /* synthetic */ Parcelable onSaveInstanceState() {
        return super.onSaveInstanceState();
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public /* bridge */ /* synthetic */ int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return super.scrollHorizontallyBy(i, recycler, state);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public /* bridge */ /* synthetic */ int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        return super.scrollVerticallyBy(i, recycler, state);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    public /* bridge */ /* synthetic */ void setRecycleOffset(int i) {
        super.setRecycleOffset(i);
    }

    public static void enableDebugging(boolean z) {
        sDebuggable = z;
    }

    public VirtualLayoutManager(@NonNull Context context) {
        this(context, 1);
    }

    public VirtualLayoutManager(@NonNull Context context, int i) {
        this(context, i, false);
    }

    public VirtualLayoutManager(@NonNull Context context, int i, boolean z) {
        super(context, i, z);
        this.mNoScrolling = false;
        this.mNestedScrolling = false;
        this.mEnableMarginOverlapping = false;
        this.mMaxMeasureSize = -1;
        this.mFixAreaAdjustor = FixAreaAdjuster.mDefaultAdjuster;
        this.newHelpersSet = new HashMap<>();
        this.oldHelpersSet = new HashMap<>();
        this.mTempAnchorInfoWrapper = new AnchorInfoWrapper();
        this.mNested = 0;
        this.mTempLayoutStateWrapper = new LayoutStateWrapper();
        this.mRangeLengths = new LinkedList();
        this.mDefaultLayoutHelper = DEFAULT_LAYOUT_HELPER;
        this.mLayoutViewFatory = new LayoutViewFactory() { // from class: com.alibaba.android.vlayout.VirtualLayoutManager.3
            @Override // com.alibaba.android.vlayout.LayoutViewFactory
            public View generateLayoutView(@NonNull Context context2) {
                return new LayoutView(context2);
            }
        };
        this.mDecorInsets = new Rect();
        this.mSpaceMeasured = false;
        this.mMeasuredFullSpace = 0;
        this.mSpaceMeasuring = false;
        this.mOrientationHelper = OrientationHelperEx.createOrientationHelper(this, i);
        this.mSecondaryOrientationHelper = OrientationHelperEx.createOrientationHelper(this, i != 1 ? 1 : 0);
        setHelperFinder(new RangeLayoutHelperFinder());
    }

    public void setNoScrolling(boolean z) {
        this.mNoScrolling = z;
        this.mSpaceMeasured = false;
        this.mMeasuredFullSpace = 0;
        this.mSpaceMeasuring = false;
    }

    public void setNestedScrolling(boolean z) {
        setNestedScrolling(z, -1);
    }

    public void setNestedScrolling(boolean z, int i) {
        this.mNestedScrolling = z;
        this.mSpaceMeasured = false;
        this.mSpaceMeasuring = false;
        this.mMeasuredFullSpace = 0;
    }

    public void setHelperFinder(@NonNull LayoutHelperFinder layoutHelperFinder) {
        if (layoutHelperFinder == null) {
            throw new IllegalArgumentException("finder is null");
        }
        LinkedList linkedList = new LinkedList();
        if (this.mHelperFinder != null) {
            Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
            while (it.hasNext()) {
                linkedList.add(it.next());
            }
        }
        this.mHelperFinder = layoutHelperFinder;
        if (linkedList.size() > 0) {
            this.mHelperFinder.setLayouts(linkedList);
        }
        this.mSpaceMeasured = false;
        requestLayout();
    }

    public void setFixOffset(int i, int i2, int i3, int i4) {
        this.mFixAreaAdjustor = new FixAreaAdjuster(i, i2, i3, i4);
    }

    public void setLayoutHelpers(@Nullable List<LayoutHelper> list) {
        Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
        while (it.hasNext()) {
            LayoutHelper next = it.next();
            this.oldHelpersSet.put(Integer.valueOf(System.identityHashCode(next)), next);
        }
        if (list != null) {
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                LayoutHelper layoutHelper = list.get(i2);
                if (layoutHelper instanceof FixAreaLayoutHelper) {
                    ((FixAreaLayoutHelper) layoutHelper).setAdjuster(this.mFixAreaAdjustor);
                }
                if ((layoutHelper instanceof BaseLayoutHelper) && this.mLayoutViewBindListener != null) {
                    ((BaseLayoutHelper) layoutHelper).setLayoutViewBindListener(this.mLayoutViewBindListener);
                }
                if (layoutHelper.getItemCount() > 0) {
                    layoutHelper.setRange(i, (layoutHelper.getItemCount() + i) - 1);
                } else {
                    layoutHelper.setRange(-1, -1);
                }
                i += layoutHelper.getItemCount();
            }
        }
        this.mHelperFinder.setLayouts(list);
        Iterator<LayoutHelper> it2 = this.mHelperFinder.iterator();
        while (it2.hasNext()) {
            LayoutHelper next2 = it2.next();
            this.newHelpersSet.put(Integer.valueOf(System.identityHashCode(next2)), next2);
        }
        Iterator<Map.Entry<Integer, LayoutHelper>> it3 = this.oldHelpersSet.entrySet().iterator();
        while (it3.hasNext()) {
            Integer key = it3.next().getKey();
            if (this.newHelpersSet.containsKey(key)) {
                this.newHelpersSet.remove(key);
                it3.remove();
            }
        }
        Iterator<LayoutHelper> it4 = this.oldHelpersSet.values().iterator();
        while (it4.hasNext()) {
            it4.next().clear(this);
        }
        if (!this.oldHelpersSet.isEmpty() || !this.newHelpersSet.isEmpty()) {
            this.mSpaceMeasured = false;
        }
        this.oldHelpersSet.clear();
        this.newHelpersSet.clear();
        requestLayout();
    }

    @NonNull
    public List<LayoutHelper> getLayoutHelpers() {
        return this.mHelperFinder.getLayoutHelpers();
    }

    public void setEnableMarginOverlapping(boolean z) {
        this.mEnableMarginOverlapping = z;
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, com.alibaba.android.vlayout.LayoutManagerHelper
    public boolean isEnableMarginOverLap() {
        return this.mEnableMarginOverlapping;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, com.alibaba.android.vlayout.LayoutManagerHelper
    public int getOrientation() {
        return super.getOrientation();
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager
    public void setOrientation(int i) {
        this.mOrientationHelper = OrientationHelperEx.createOrientationHelper(this, i);
        super.setOrientation(i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setReverseLayout(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("VirtualLayoutManager does not support reverse layout in current version.");
        }
        super.setReverseLayout(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void setStackFromEnd(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("VirtualLayoutManager does not support stack from end.");
        }
        super.setStackFromEnd(false);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    public void onAnchorReady(RecyclerView.State state, ExposeLinearLayoutManagerEx.AnchorInfo anchorInfo) {
        super.onAnchorReady(state, anchorInfo);
        boolean z = true;
        while (z) {
            this.mTempAnchorInfoWrapper.position = anchorInfo.mPosition;
            this.mTempAnchorInfoWrapper.coordinate = anchorInfo.mCoordinate;
            this.mTempAnchorInfoWrapper.layoutFromEnd = anchorInfo.mLayoutFromEnd;
            LayoutHelper layoutHelper = this.mHelperFinder.getLayoutHelper(anchorInfo.mPosition);
            if (layoutHelper != null) {
                layoutHelper.checkAnchorInfo(state, this.mTempAnchorInfoWrapper, this);
            }
            if (this.mTempAnchorInfoWrapper.position == anchorInfo.mPosition) {
                z = false;
            } else {
                anchorInfo.mPosition = this.mTempAnchorInfoWrapper.position;
            }
            anchorInfo.mCoordinate = this.mTempAnchorInfoWrapper.coordinate;
            this.mTempAnchorInfoWrapper.position = -1;
        }
        this.mTempAnchorInfoWrapper.position = anchorInfo.mPosition;
        this.mTempAnchorInfoWrapper.coordinate = anchorInfo.mCoordinate;
        Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
        while (it.hasNext()) {
            it.next().onRefreshLayout(state, this.mTempAnchorInfoWrapper, this);
        }
    }

    public LayoutHelper findNeighbourNonfixLayoutHelper(LayoutHelper layoutHelper, boolean z) {
        List<LayoutHelper> layoutHelpers;
        int indexOf;
        LayoutHelper layoutHelper2;
        if (layoutHelper == null || (indexOf = (layoutHelpers = this.mHelperFinder.getLayoutHelpers()).indexOf(layoutHelper)) == -1) {
            return null;
        }
        int i = z ? indexOf - 1 : indexOf + 1;
        if (i < 0 || i >= layoutHelpers.size() || (layoutHelper2 = layoutHelpers.get(i)) == null || layoutHelper2.isFixLayout()) {
            return null;
        }
        return layoutHelper2;
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    protected int computeAlignOffset(View view, boolean z, boolean z2) {
        return computeAlignOffset(getPosition(view), z, z2);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    protected int computeAlignOffset(int i, boolean z, boolean z2) {
        LayoutHelper layoutHelper;
        if (i == -1 || (layoutHelper = this.mHelperFinder.getLayoutHelper(i)) == null) {
            return 0;
        }
        return layoutHelper.computeAlignOffset(i - layoutHelper.getRange().getLower().intValue(), z, z2, this);
    }

    public int obtainExtraMargin(View view, boolean z) {
        return obtainExtraMargin(view, z, true);
    }

    public int obtainExtraMargin(View view, boolean z, boolean z2) {
        if (view != null) {
            return computeAlignOffset(view, z, z2);
        }
        return 0;
    }

    private void runPreLayout(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (this.mNested == 0) {
            Iterator<LayoutHelper> it = this.mHelperFinder.reverse().iterator();
            while (it.hasNext()) {
                it.next().beforeLayout(recycler, state, this);
            }
        }
        this.mNested++;
    }

    private void runPostLayout(RecyclerView.Recycler recycler, RecyclerView.State state, int i) {
        this.mNested--;
        if (this.mNested <= 0) {
            this.mNested = 0;
            int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
            int findLastVisibleItemPosition = findLastVisibleItemPosition();
            Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
            while (it.hasNext()) {
                try {
                    it.next().afterLayout(recycler, state, findFirstVisibleItemPosition, findLastVisibleItemPosition, i, this);
                } catch (Exception e) {
                    if (sDebuggable) {
                        throw e;
                    }
                }
            }
        }
    }

    public void runAdjustLayout() {
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        LayoutHelper layoutHelper = this.mHelperFinder.getLayoutHelper(findFirstVisibleItemPosition);
        int findLastVisibleItemPosition = findLastVisibleItemPosition();
        LayoutHelper layoutHelper2 = this.mHelperFinder.getLayoutHelper(findLastVisibleItemPosition);
        List<LayoutHelper> layoutHelpers = this.mHelperFinder.getLayoutHelpers();
        int indexOf = layoutHelpers.indexOf(layoutHelper2);
        for (int indexOf2 = layoutHelpers.indexOf(layoutHelper); indexOf2 <= indexOf; indexOf2++) {
            try {
                layoutHelpers.get(indexOf2).adjustLayout(findFirstVisibleItemPosition, findLastVisibleItemPosition, this);
            } catch (Exception e) {
                if (sDebuggable) {
                    throw e;
                }
            }
        }
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(TRACE_LAYOUT);
        }
        if (this.mNoScrolling && state.didStructureChange()) {
            this.mSpaceMeasured = false;
            this.mSpaceMeasuring = true;
        }
        runPreLayout(recycler, state);
        try {
            try {
                super.onLayoutChildren(recycler, state);
                runPostLayout(recycler, state, BytesRange.TO_END_OF_CONTENT);
                if ((this.mNestedScrolling || this.mNoScrolling) && this.mSpaceMeasuring) {
                    this.mSpaceMeasured = true;
                    View childAt = getChildAt(getChildCount() - 1);
                    if (childAt != null) {
                        this.mMeasuredFullSpace = getDecoratedBottom(childAt) + ((RecyclerView.LayoutParams) childAt.getLayoutParams()).bottomMargin + computeAlignOffset(childAt, true, false);
                        if (this.mRecyclerView != null && this.mNestedScrolling) {
                            Object parent = this.mRecyclerView.getParent();
                            if (parent instanceof View) {
                                this.mMeasuredFullSpace = Math.min(this.mMeasuredFullSpace, ((View) parent).getMeasuredHeight());
                            }
                        }
                    } else {
                        this.mSpaceMeasuring = false;
                    }
                    this.mSpaceMeasuring = false;
                    if (this.mRecyclerView != null && getItemCount() > 0) {
                        this.mRecyclerView.post(new Runnable() { // from class: com.alibaba.android.vlayout.VirtualLayoutManager.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (VirtualLayoutManager.this.mRecyclerView != null) {
                                    VirtualLayoutManager.this.mRecyclerView.requestLayout();
                                }
                            }
                        });
                    }
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    Trace.endSection();
                }
            } catch (Exception e) {
                e.printStackTrace();
                throw e;
            }
        } catch (Throwable th) {
            runPostLayout(recycler, state, BytesRange.TO_END_OF_CONTENT);
            throw th;
        }
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    protected int scrollInternalBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(TRACE_SCROLL);
        }
        runPreLayout(recycler, state);
        int i2 = 0;
        try {
            try {
                if (!this.mNoScrolling) {
                    i = super.scrollInternalBy(i, recycler, state);
                } else {
                    if (getChildCount() != 0 && i != 0) {
                        this.mLayoutState.mRecycle = true;
                        ensureLayoutStateExpose();
                        int i3 = i > 0 ? 1 : -1;
                        int abs = Math.abs(i);
                        updateLayoutStateExpose(i3, abs, true, state);
                        int fill = this.mLayoutState.mScrollingOffset + fill(recycler, this.mLayoutState, state, false);
                        if (fill < 0) {
                            return 0;
                        }
                        if (abs > fill) {
                            i = i3 * fill;
                        }
                    }
                    return 0;
                }
                i2 = i;
            } catch (Exception e) {
                Log.w(TAG, Log.getStackTraceString(e), e);
                if (sDebuggable) {
                    throw e;
                }
            }
            if (Build.VERSION.SDK_INT >= 18) {
                Trace.endSection();
            }
            return i2;
        } finally {
            runPostLayout(recycler, state, 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i) {
        super.onScrollStateChanged(i);
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        int findLastVisibleItemPosition = findLastVisibleItemPosition();
        Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
        while (it.hasNext()) {
            it.next().onScrollStateChanged(i, findFirstVisibleItemPosition, findLastVisibleItemPosition, this);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenHorizontal(int i) {
        super.offsetChildrenHorizontal(i);
        Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
        while (it.hasNext()) {
            it.next().onOffsetChildrenHorizontal(i, this);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void offsetChildrenVertical(int i) {
        super.offsetChildrenVertical(i);
        Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
        while (it.hasNext()) {
            it.next().onOffsetChildrenVertical(i, this);
        }
    }

    @Nullable
    private int findRangeLength(@NonNull Range<Integer> range) {
        Pair<Range<Integer>, Integer> pair;
        Pair<Range<Integer>, Integer> pair2;
        int size = this.mRangeLengths.size();
        if (size == 0) {
            return -1;
        }
        int i = 0;
        int i2 = size - 1;
        int i3 = -1;
        while (true) {
            pair = null;
            if (i > i2) {
                break;
            }
            i3 = (i + i2) / 2;
            pair2 = this.mRangeLengths.get(i3);
            Range<Integer> range2 = (Range) pair2.first;
            if (range2 == null) {
                break;
            }
            if (range2.contains((Range<Integer>) range.getLower()) || range2.contains((Range<Integer>) range.getUpper()) || range.contains(range2)) {
                break;
            }
            if (range2.getLower().intValue() > range.getUpper().intValue()) {
                i2 = i3 - 1;
            } else if (range2.getUpper().intValue() < range.getLower().intValue()) {
                i = i3 + 1;
            }
        }
        pair = pair2;
        if (pair == null) {
            return -1;
        }
        return i3;
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    protected void layoutChunk(RecyclerView.Recycler recycler, RecyclerView.State state, ExposeLinearLayoutManagerEx.LayoutState layoutState, LayoutChunkResult layoutChunkResult) {
        int i = layoutState.mCurrentPosition;
        this.mTempLayoutStateWrapper.mLayoutState = layoutState;
        LayoutHelper layoutHelper = this.mHelperFinder == null ? null : this.mHelperFinder.getLayoutHelper(i);
        if (layoutHelper == null) {
            layoutHelper = this.mDefaultLayoutHelper;
        }
        layoutHelper.doLayout(recycler, state, this.mTempLayoutStateWrapper, layoutChunkResult, this);
        this.mTempLayoutStateWrapper.mLayoutState = null;
        if (layoutState.mCurrentPosition == i) {
            Log.w(TAG, "layoutHelper[" + layoutHelper.getClass().getSimpleName() + "@" + layoutHelper.toString() + "] consumes no item!");
            layoutChunkResult.mFinished = true;
            return;
        }
        int i2 = layoutState.mCurrentPosition - layoutState.mItemDirection;
        int i3 = layoutChunkResult.mIgnoreConsumed ? 0 : layoutChunkResult.mConsumed;
        Range<Integer> range = new Range<>(Integer.valueOf(Math.min(i, i2)), Integer.valueOf(Math.max(i, i2)));
        int findRangeLength = findRangeLength(range);
        if (findRangeLength >= 0) {
            Pair<Range<Integer>, Integer> pair = this.mRangeLengths.get(findRangeLength);
            if (pair != null && ((Range) pair.first).equals(range) && ((Integer) pair.second).intValue() == i3) {
                return;
            } else {
                this.mRangeLengths.remove(findRangeLength);
            }
        }
        this.mRangeLengths.add(Pair.create(range, Integer.valueOf(i3)));
        Collections.sort(this.mRangeLengths, new Comparator<Pair<Range<Integer>, Integer>>() { // from class: com.alibaba.android.vlayout.VirtualLayoutManager.2
            @Override // java.util.Comparator
            public int compare(Pair<Range<Integer>, Integer> pair2, Pair<Range<Integer>, Integer> pair3) {
                if (pair2 == null && pair3 == null) {
                    return 0;
                }
                if (pair2 == null) {
                    return -1;
                }
                if (pair3 == null) {
                    return 1;
                }
                return ((Integer) ((Range) pair2.first).getLower()).intValue() - ((Integer) ((Range) pair3.first).getLower()).intValue();
            }
        });
    }

    public int getOffsetToStart() {
        if (getChildCount() == 0) {
            return -1;
        }
        View childAt = getChildAt(0);
        if (childAt == null) {
            return -1;
        }
        int position = getPosition(childAt);
        int findRangeLength = findRangeLength(Range.create(Integer.valueOf(position), Integer.valueOf(position)));
        if (findRangeLength < 0 || findRangeLength >= this.mRangeLengths.size()) {
            return -1;
        }
        int i = -this.mOrientationHelper.getDecoratedStart(childAt);
        for (int i2 = 0; i2 < findRangeLength; i2++) {
            Pair<Range<Integer>, Integer> pair = this.mRangeLengths.get(i2);
            if (pair != null) {
                i += ((Integer) pair.second).intValue();
            }
        }
        return i;
    }

    private void setDefaultLayoutHelper(@NonNull LayoutHelper layoutHelper) {
        if (layoutHelper == null) {
            throw new IllegalArgumentException("layoutHelper should not be null");
        }
        this.mDefaultLayoutHelper = layoutHelper;
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        super.scrollToPosition(i);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager
    public void scrollToPositionWithOffset(int i, int i2) {
        super.scrollToPositionWithOffset(i, i2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        super.smoothScrollToPosition(recyclerView, state, i);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean supportsPredictiveItemAnimations() {
        return this.mCurrentPendingSavedState == null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        onItemsChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        onItemsChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        onItemsChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        onItemsChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsChanged(RecyclerView recyclerView) {
        Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
        while (it.hasNext()) {
            it.next().onItemsChanged(this);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((RecyclerView.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof RecyclerView.LayoutParams) {
            return new LayoutParams((RecyclerView.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new InflateLayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        super.onAdapterChanged(adapter, adapter2);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.mRecyclerView = recyclerView;
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
        while (it.hasNext()) {
            it.next().clear(this);
        }
        this.mRecyclerView = null;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams {
        public static final int INVALIDE_SIZE = Integer.MIN_VALUE;
        public float mAspectRatio;
        private int mOriginHeight;
        private int mOriginWidth;
        public int zIndex;

        public void storeOriginWidth() {
            if (this.mOriginWidth == Integer.MIN_VALUE) {
                this.mOriginWidth = this.width;
            }
        }

        public void storeOriginHeight() {
            if (this.mOriginHeight == Integer.MIN_VALUE) {
                this.mOriginHeight = this.height;
            }
        }

        public void restoreOriginWidth() {
            if (this.mOriginWidth != Integer.MIN_VALUE) {
                this.width = this.mOriginWidth;
            }
        }

        public void restoreOriginHeight() {
            if (this.mOriginHeight != Integer.MIN_VALUE) {
                this.height = this.mOriginHeight;
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.zIndex = 0;
            this.mAspectRatio = Float.NaN;
            this.mOriginWidth = Integer.MIN_VALUE;
            this.mOriginHeight = Integer.MIN_VALUE;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.zIndex = 0;
            this.mAspectRatio = Float.NaN;
            this.mOriginWidth = Integer.MIN_VALUE;
            this.mOriginHeight = Integer.MIN_VALUE;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.zIndex = 0;
            this.mAspectRatio = Float.NaN;
            this.mOriginWidth = Integer.MIN_VALUE;
            this.mOriginHeight = Integer.MIN_VALUE;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.zIndex = 0;
            this.mAspectRatio = Float.NaN;
            this.mOriginWidth = Integer.MIN_VALUE;
            this.mOriginHeight = Integer.MIN_VALUE;
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.zIndex = 0;
            this.mAspectRatio = Float.NaN;
            this.mOriginWidth = Integer.MIN_VALUE;
            this.mOriginHeight = Integer.MIN_VALUE;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class InflateLayoutParams extends LayoutParams {
        public InflateLayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class AnchorInfoWrapper {
        public int coordinate;
        public boolean layoutFromEnd;
        public int position;

        AnchorInfoWrapper() {
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class LayoutStateWrapper {
        static final int INVALID_LAYOUT = Integer.MIN_VALUE;
        public static final int ITEM_DIRECTION_HEAD = -1;
        public static final int ITEM_DIRECTION_TAIL = 1;
        public static final int LAYOUT_END = 1;
        public static final int LAYOUT_START = -1;
        static final int SCOLLING_OFFSET_NaN = Integer.MIN_VALUE;
        private ExposeLinearLayoutManagerEx.LayoutState mLayoutState;

        LayoutStateWrapper() {
        }

        LayoutStateWrapper(ExposeLinearLayoutManagerEx.LayoutState layoutState) {
            this.mLayoutState = layoutState;
        }

        public int getOffset() {
            return this.mLayoutState.mOffset;
        }

        public int getCurrentPosition() {
            return this.mLayoutState.mCurrentPosition;
        }

        public boolean hasScrapList() {
            return this.mLayoutState.mScrapList != null;
        }

        public void skipCurrentPosition() {
            this.mLayoutState.mCurrentPosition += this.mLayoutState.mItemDirection;
        }

        public boolean isRecycle() {
            return this.mLayoutState.mRecycle;
        }

        public boolean isRefreshLayout() {
            return this.mLayoutState.mOnRefresLayout;
        }

        public int getAvailable() {
            return this.mLayoutState.mAvailable;
        }

        public int getItemDirection() {
            return this.mLayoutState.mItemDirection;
        }

        public int getLayoutDirection() {
            return this.mLayoutState.mLayoutDirection;
        }

        public int getScrollingOffset() {
            return this.mLayoutState.mScrollingOffset;
        }

        public int getExtra() {
            return this.mLayoutState.mExtra;
        }

        public boolean isPreLayout() {
            return this.mLayoutState.mIsPreLayout;
        }

        public boolean hasMore(RecyclerView.State state) {
            return this.mLayoutState.hasMore(state);
        }

        public View next(RecyclerView.Recycler recycler) {
            return this.mLayoutState.next(recycler);
        }

        public View retrieve(RecyclerView.Recycler recycler, int i) {
            int i2 = this.mLayoutState.mCurrentPosition;
            this.mLayoutState.mCurrentPosition = i;
            View next = next(recycler);
            this.mLayoutState.mCurrentPosition = i2;
            return next;
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private static class LayoutViewHolder extends RecyclerView.ViewHolder {
        public LayoutViewHolder(View view) {
            super(view);
        }
    }

    public List<View> getFixedViews() {
        if (this.mRecyclerView == null) {
            return Collections.emptyList();
        }
        LinkedList linkedList = new LinkedList();
        Iterator<LayoutHelper> it = this.mHelperFinder.iterator();
        while (it.hasNext()) {
            View fixedView = it.next().getFixedView();
            if (fixedView != null) {
                linkedList.add(fixedView);
            }
        }
        return linkedList;
    }

    public void setLayoutViewFactory(@NonNull LayoutViewFactory layoutViewFactory) {
        if (layoutViewFactory == null) {
            throw new IllegalArgumentException("factory should not be null");
        }
        this.mLayoutViewFatory = layoutViewFactory;
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public final View generateLayoutView() {
        if (this.mRecyclerView == null) {
            return null;
        }
        View generateLayoutView = this.mLayoutViewFatory.generateLayoutView(this.mRecyclerView.getContext());
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        attachViewHolder(layoutParams, new LayoutViewHolder(generateLayoutView));
        generateLayoutView.setLayoutParams(layoutParams);
        return generateLayoutView;
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void addChildView(View view, int i) {
        super.addView(view, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void moveView(int i, int i2) {
        super.moveView(i, i2);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void addChildView(LayoutStateWrapper layoutStateWrapper, View view) {
        addChildView(layoutStateWrapper, view, layoutStateWrapper.getItemDirection() == 1 ? -1 : 0);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void addChildView(LayoutStateWrapper layoutStateWrapper, View view, int i) {
        showView(view);
        if (!layoutStateWrapper.hasScrapList()) {
            addView(view, i);
        } else {
            addDisappearingView(view, i);
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void addOffFlowView(View view, boolean z) {
        showView(view);
        addHiddenView(view, z);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void addBackgroundView(View view, boolean z) {
        showView(view);
        addView(view, z ? 0 : -1);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void addFixedView(View view) {
        addOffFlowView(view, false);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, com.alibaba.android.vlayout.LayoutManagerHelper
    public void hideView(View view) {
        super.hideView(view);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx, com.alibaba.android.vlayout.LayoutManagerHelper
    public void showView(View view) {
        super.showView(view);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public RecyclerView getRecyclerView() {
        return this.mRecyclerView;
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public RecyclerView.ViewHolder getChildViewHolder(View view) {
        if (this.mRecyclerView != null) {
            return this.mRecyclerView.getChildViewHolder(view);
        }
        return null;
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public boolean isViewHolderUpdated(View view) {
        RecyclerView.ViewHolder childViewHolder = getChildViewHolder(view);
        return childViewHolder == null || isViewHolderUpdated(childViewHolder);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void removeChildView(View view) {
        removeView(view);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public OrientationHelperEx getMainOrientationHelper() {
        return this.mOrientationHelper;
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public OrientationHelperEx getSecondaryOrientationHelper() {
        return this.mSecondaryOrientationHelper;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager, com.alibaba.android.vlayout.LayoutManagerHelper
    public void measureChild(View view, int i, int i2) {
        measureChildWithDecorations(view, i, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager, com.alibaba.android.vlayout.LayoutManagerHelper
    public void measureChildWithMargins(View view, int i, int i2) {
        measureChildWithDecorationsAndMargin(view, i, i2);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public int getChildMeasureSpec(int i, int i2, boolean z) {
        return getChildMeasureSpec(i, 0, i2, z);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return super.canScrollHorizontally() && !this.mNoScrolling;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return super.canScrollVertically() && !this.mNoScrolling;
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void layoutChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        layoutDecorated(view, i + marginLayoutParams.leftMargin, i2 + marginLayoutParams.topMargin, i3 - marginLayoutParams.rightMargin, i4 - marginLayoutParams.bottomMargin);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void layoutChild(View view, int i, int i2, int i3, int i4) {
        layoutDecorated(view, i, i2, i3, i4);
    }

    @Override // com.alibaba.android.vlayout.ExposeLinearLayoutManagerEx
    protected void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (sDebuggable) {
            Log.d(TAG, "Recycling " + Math.abs(i - i2) + " items");
        }
        if (i2 > i) {
            View childAt = getChildAt(i2 - 1);
            int position = getPosition(getChildAt(i));
            int position2 = getPosition(childAt);
            int i3 = i;
            while (i < i2) {
                int position3 = getPosition(getChildAt(i3));
                if (position3 != -1) {
                    LayoutHelper layoutHelper = this.mHelperFinder.getLayoutHelper(position3);
                    if (layoutHelper == null || layoutHelper.isRecyclable(position3, position, position2, this, true)) {
                        removeAndRecycleViewAt(i3, recycler);
                    } else {
                        i3++;
                    }
                } else {
                    removeAndRecycleViewAt(i3, recycler);
                }
                i++;
            }
            return;
        }
        View childAt2 = getChildAt(i);
        int position4 = getPosition(getChildAt(i2 + 1));
        int position5 = getPosition(childAt2);
        while (i > i2) {
            int position6 = getPosition(getChildAt(i));
            if (position6 != -1) {
                LayoutHelper layoutHelper2 = this.mHelperFinder.getLayoutHelper(position6);
                if (layoutHelper2 == null || layoutHelper2.isRecyclable(position6, position4, position5, this, false)) {
                    removeAndRecycleViewAt(i, recycler);
                }
            } else {
                removeAndRecycleViewAt(i, recycler);
            }
            i--;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void detachAndScrapAttachedViews(RecyclerView.Recycler recycler) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            RecyclerView.ViewHolder childViewHolder = getChildViewHolder(getChildAt(childCount));
            if ((childViewHolder instanceof CacheViewHolder) && ((CacheViewHolder) childViewHolder).needCached()) {
                ExposeLinearLayoutManagerEx.ViewHolderWrapper.setFlags(childViewHolder, 0, 6);
            }
        }
        super.detachAndScrapAttachedViews(recycler);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void detachAndScrapViewAt(int i, RecyclerView.Recycler recycler) {
        RecyclerView.ViewHolder childViewHolder = getChildViewHolder(getChildAt(i));
        if ((childViewHolder instanceof CacheViewHolder) && ((CacheViewHolder) childViewHolder).needCached()) {
            ExposeLinearLayoutManagerEx.ViewHolderWrapper.setFlags(childViewHolder, 0, 4);
        }
        super.detachAndScrapViewAt(i, recycler);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void detachAndScrapView(View view, RecyclerView.Recycler recycler) {
        super.detachAndScrapView(view, recycler);
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public int getContentWidth() {
        return super.getWidth();
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public int getContentHeight() {
        return super.getHeight();
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public boolean isDoLayoutRTL() {
        return isLayoutRTL();
    }

    private void measureChildWithDecorations(View view, int i, int i2) {
        calculateItemDecorationsForChild(view, this.mDecorInsets);
        view.measure(updateSpecWithExtra(i, this.mDecorInsets.left, this.mDecorInsets.right), updateSpecWithExtra(i2, this.mDecorInsets.top, this.mDecorInsets.bottom));
    }

    private void measureChildWithDecorationsAndMargin(View view, int i, int i2) {
        calculateItemDecorationsForChild(view, this.mDecorInsets);
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (getOrientation() == 1) {
            i = updateSpecWithExtra(i, layoutParams.leftMargin + this.mDecorInsets.left, layoutParams.rightMargin + this.mDecorInsets.right);
        }
        if (getOrientation() == 0) {
            i2 = updateSpecWithExtra(i2, this.mDecorInsets.top, this.mDecorInsets.bottom);
        }
        view.measure(i, i2);
    }

    private int updateSpecWithExtra(int i, int i2, int i3) {
        if (i2 == 0 && i3 == 0) {
            return i;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode != Integer.MIN_VALUE && mode != 1073741824) {
            return i;
        }
        if ((View.MeasureSpec.getSize(i) - i2) - i3 < 0) {
            return View.MeasureSpec.makeMeasureSpec(0, mode);
        }
        return View.MeasureSpec.makeMeasureSpec((View.MeasureSpec.getSize(i) - i2) - i3, mode);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View findViewByPosition(int i) {
        View findViewByPosition = super.findViewByPosition(i);
        if (findViewByPosition != null && getPosition(findViewByPosition) == i) {
            return findViewByPosition;
        }
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && getPosition(childAt) == i) {
                return childAt;
            }
        }
        return null;
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public void recycleView(View view) {
        if (this.mRecyclerView != null) {
            this.mRecyclerView.getRecycledViewPool().putRecycledView(this.mRecyclerView.getChildViewHolder(view));
        }
    }

    @Override // com.alibaba.android.vlayout.LayoutManagerHelper
    public LayoutHelper findLayoutHelperByPosition(int i) {
        return this.mHelperFinder.getLayoutHelper(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2  */
    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        int i3;
        if (!this.mNoScrolling && !this.mNestedScrolling) {
            super.onMeasure(recycler, state, i, i2);
            return;
        }
        if (this.mRecyclerView != null && this.mNestedScrolling) {
            if (this.mMaxMeasureSize > 0) {
                i3 = this.mMaxMeasureSize;
            } else {
                Object parent = this.mRecyclerView.getParent();
                if (parent instanceof View) {
                    i3 = ((View) parent).getMeasuredHeight();
                }
            }
            if (this.mSpaceMeasured) {
                i3 = this.mMeasuredFullSpace;
            }
            if (this.mNoScrolling) {
                this.mSpaceMeasuring = !this.mSpaceMeasured;
                if (getChildCount() > 0 || getChildCount() != getItemCount()) {
                    View childAt = getChildAt(getChildCount() - 1);
                    int i4 = this.mMeasuredFullSpace;
                    if (childAt != null) {
                        i4 = computeAlignOffset(childAt, true, false) + getDecoratedBottom(childAt) + ((RecyclerView.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                    }
                    if (getChildCount() != getItemCount() || (childAt != null && i4 != this.mMeasuredFullSpace)) {
                        this.mSpaceMeasured = false;
                        this.mSpaceMeasuring = true;
                        i3 = MAX_NO_SCROLLING_SIZE;
                    }
                } else if (getItemCount() == 0) {
                    this.mSpaceMeasured = true;
                    this.mSpaceMeasuring = false;
                    i3 = 0;
                }
            }
            if (getOrientation() != 1) {
                super.onMeasure(recycler, state, i, View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE));
                return;
            } else {
                super.onMeasure(recycler, state, View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE), i2);
                return;
            }
        }
        i3 = MAX_NO_SCROLLING_SIZE;
        if (this.mSpaceMeasured) {
        }
        if (this.mNoScrolling) {
        }
        if (getOrientation() != 1) {
        }
    }
}
