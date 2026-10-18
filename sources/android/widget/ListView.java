package android.widget;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.MathUtils;
import android.util.SparseBooleanArray;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.RemotableViewMethod;
import android.view.SoundEffectConstants;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewHierarchyEncoder;
import android.view.ViewRootImpl;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.widget.AbsListView;
import android.widget.RemoteViews;
import com.google.android.collect.Lists;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

@RemoteViews.RemoteView
/* loaded from: /home/user/work/dex/classes2.dex */
public class ListView extends AbsListView {
    private static final float MAX_SCROLL_FACTOR = 0.33f;
    private static final int MIN_SCROLL_PREVIEW_PIXELS = 2;
    static final int NO_POSITION = -1;
    static final String TAG = "ListView";
    private boolean mAreAllItemsSelectable;
    private final ArrowScrollFocusResult mArrowScrollFocusResult;
    Drawable mDivider;
    int mDividerHeight;
    private boolean mDividerIsOpaque;
    private Paint mDividerPaint;
    private FocusSelector mFocusSelector;
    private boolean mFooterDividersEnabled;
    ArrayList<FixedViewInfo> mFooterViewInfos;
    private boolean mHeaderDividersEnabled;
    ArrayList<FixedViewInfo> mHeaderViewInfos;
    private boolean mIsCacheColorOpaque;
    private boolean mItemsCanFocus;
    Drawable mOverScrollFooter;
    Drawable mOverScrollHeader;
    private final Rect mTempRect;

    private int getTopSelectionPixel(int i, int i2, int i3) {
        return i3 > 0 ? i + i2 : i;
    }

    @ViewDebug.ExportedProperty(category = "list")
    protected boolean recycleOnMeasure() {
        return true;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public class FixedViewInfo {
        public Object data;
        public boolean isSelectable;
        public View view;

        public FixedViewInfo() {
        }
    }

    public ListView(Context context) {
        this(context, null);
    }

    public ListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public ListView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        int dimensionPixelSize;
        this.mHeaderViewInfos = Lists.newArrayList();
        this.mFooterViewInfos = Lists.newArrayList();
        this.mAreAllItemsSelectable = true;
        this.mItemsCanFocus = false;
        this.mTempRect = new Rect();
        this.mArrowScrollFocusResult = new ArrowScrollFocusResult();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.ListView, i, i2);
        CharSequence[] textArray = obtainStyledAttributes.getTextArray(0);
        if (textArray != null) {
            setAdapter((ListAdapter) new ArrayAdapter(context, R.layout.simple_list_item_1, textArray));
        }
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        if (drawable != null) {
            setDivider(drawable);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(5);
        if (drawable2 != null) {
            setOverscrollHeader(drawable2);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(6);
        if (drawable3 != null) {
            setOverscrollFooter(drawable3);
        }
        if (obtainStyledAttributes.hasValueOrEmpty(2) && (dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, 0)) != 0) {
            setDividerHeight(dimensionPixelSize);
        }
        this.mHeaderDividersEnabled = obtainStyledAttributes.getBoolean(3, true);
        this.mFooterDividersEnabled = obtainStyledAttributes.getBoolean(4, true);
        obtainStyledAttributes.recycle();
    }

    public int getMaxScrollAmount() {
        return (int) ((this.mBottom - this.mTop) * MAX_SCROLL_FACTOR);
    }

    private void adjustViewsUpOrDown() {
        int childCount = getChildCount();
        if (childCount > 0) {
            int i = 0;
            if (!this.mStackFromBottom) {
                int top = getChildAt(0).getTop() - this.mListPadding.top;
                if (this.mFirstPosition != 0) {
                    top -= this.mDividerHeight;
                }
                if (top >= 0) {
                    i = top;
                }
            } else {
                int bottom = getChildAt(childCount - 1).getBottom() - (getHeight() - this.mListPadding.bottom);
                if (this.mFirstPosition + childCount < this.mItemCount) {
                    bottom += this.mDividerHeight;
                }
                if (bottom <= 0) {
                    i = bottom;
                }
            }
            if (i != 0) {
                offsetChildrenTopAndBottom(-i);
            }
        }
    }

    public void addHeaderView(View view, Object obj, boolean z) {
        if (view.getParent() != null && view.getParent() != this && Log.isLoggable(TAG, 5)) {
            Log.w(TAG, "The specified child already has a parent. You must call removeView() on the child's parent first.");
        }
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        fixedViewInfo.view = view;
        fixedViewInfo.data = obj;
        fixedViewInfo.isSelectable = z;
        this.mHeaderViewInfos.add(fixedViewInfo);
        this.mAreAllItemsSelectable &= z;
        if (this.mAdapter != null) {
            if (!(this.mAdapter instanceof HeaderViewListAdapter)) {
                wrapHeaderListAdapterInternal();
            }
            if (this.mDataSetObserver != null) {
                this.mDataSetObserver.onChanged();
            }
        }
    }

    public void addHeaderView(View view) {
        addHeaderView(view, null, true);
    }

    @Override // android.widget.AbsListView
    public int getHeaderViewsCount() {
        return this.mHeaderViewInfos.size();
    }

    public boolean removeHeaderView(View view) {
        boolean z = false;
        if (this.mHeaderViewInfos.size() <= 0) {
            return false;
        }
        if (this.mAdapter != null && ((HeaderViewListAdapter) this.mAdapter).removeHeader(view)) {
            if (this.mDataSetObserver != null) {
                this.mDataSetObserver.onChanged();
            }
            z = true;
        }
        removeFixedViewInfo(view, this.mHeaderViewInfos);
        return z;
    }

    private void removeFixedViewInfo(View view, ArrayList<FixedViewInfo> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (arrayList.get(i).view == view) {
                arrayList.remove(i);
                return;
            }
        }
    }

    public void addFooterView(View view, Object obj, boolean z) {
        if (view.getParent() != null && view.getParent() != this && Log.isLoggable(TAG, 5)) {
            Log.w(TAG, "The specified child already has a parent. You must call removeView() on the child's parent first.");
        }
        FixedViewInfo fixedViewInfo = new FixedViewInfo();
        fixedViewInfo.view = view;
        fixedViewInfo.data = obj;
        fixedViewInfo.isSelectable = z;
        this.mFooterViewInfos.add(fixedViewInfo);
        this.mAreAllItemsSelectable &= z;
        if (this.mAdapter != null) {
            if (!(this.mAdapter instanceof HeaderViewListAdapter)) {
                wrapHeaderListAdapterInternal();
            }
            if (this.mDataSetObserver != null) {
                this.mDataSetObserver.onChanged();
            }
        }
    }

    public void addFooterView(View view) {
        addFooterView(view, null, true);
    }

    @Override // android.widget.AbsListView
    public int getFooterViewsCount() {
        return this.mFooterViewInfos.size();
    }

    public boolean removeFooterView(View view) {
        boolean z = false;
        if (this.mFooterViewInfos.size() <= 0) {
            return false;
        }
        if (this.mAdapter != null && ((HeaderViewListAdapter) this.mAdapter).removeFooter(view)) {
            if (this.mDataSetObserver != null) {
                this.mDataSetObserver.onChanged();
            }
            z = true;
        }
        removeFixedViewInfo(view, this.mFooterViewInfos);
        return z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // android.widget.AbsListView
    @RemotableViewMethod(asyncImpl = "setRemoteViewsAdapterAsync")
    public void setRemoteViewsAdapter(Intent intent) {
        super.setRemoteViewsAdapter(intent);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.widget.AbsListView, android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        int lookForSelectablePosition;
        if (this.mAdapter != null && this.mDataSetObserver != null) {
            this.mAdapter.unregisterDataSetObserver(this.mDataSetObserver);
        }
        resetList();
        this.mRecycler.clear();
        if (this.mHeaderViewInfos.size() > 0 || this.mFooterViewInfos.size() > 0) {
            this.mAdapter = wrapHeaderListAdapterInternal(this.mHeaderViewInfos, this.mFooterViewInfos, listAdapter);
        } else {
            this.mAdapter = listAdapter;
        }
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        super.setAdapter(listAdapter);
        if (this.mAdapter != null) {
            this.mAreAllItemsSelectable = this.mAdapter.areAllItemsEnabled();
            this.mOldItemCount = this.mItemCount;
            this.mItemCount = this.mAdapter.getCount();
            checkFocus();
            this.mDataSetObserver = new AbsListView.AdapterDataSetObserver();
            this.mAdapter.registerDataSetObserver(this.mDataSetObserver);
            this.mRecycler.setViewTypeCount(this.mAdapter.getViewTypeCount());
            if (this.mStackFromBottom) {
                lookForSelectablePosition = lookForSelectablePosition(this.mItemCount - 1, false);
            } else {
                lookForSelectablePosition = lookForSelectablePosition(0, true);
            }
            setSelectedPositionInt(lookForSelectablePosition);
            setNextSelectedPositionInt(lookForSelectablePosition);
            if (this.mItemCount == 0) {
                checkSelectionChanged();
            }
        } else {
            this.mAreAllItemsSelectable = true;
            checkFocus();
            checkSelectionChanged();
        }
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.widget.AbsListView
    public void resetList() {
        clearRecycledState(this.mHeaderViewInfos);
        clearRecycledState(this.mFooterViewInfos);
        super.resetList();
        this.mLayoutMode = 0;
    }

    private void clearRecycledState(ArrayList<FixedViewInfo> arrayList) {
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ViewGroup.LayoutParams layoutParams = arrayList.get(i).view.getLayoutParams();
                if (checkLayoutParams(layoutParams)) {
                    ((AbsListView.LayoutParams) layoutParams).recycledHeaderFooter = false;
                }
            }
        }
    }

    private boolean showingTopFadingEdge() {
        return this.mFirstPosition > 0 || getChildAt(0).getTop() > this.mScrollY + this.mListPadding.top;
    }

    private boolean showingBottomFadingEdge() {
        int childCount = getChildCount();
        return (this.mFirstPosition + childCount) - 1 < this.mItemCount - 1 || getChildAt(childCount + (-1)).getBottom() < (this.mScrollY + getHeight()) - this.mListPadding.bottom;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        int i;
        int i2;
        int i3;
        int i4 = rect.top;
        rect.offset(view.getLeft(), view.getTop());
        rect.offset(-view.getScrollX(), -view.getScrollY());
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (showingTopFadingEdge() && (this.mSelectedPosition > 0 || i4 > verticalFadingEdgeLength)) {
            scrollY += verticalFadingEdgeLength;
        }
        int bottom = getChildAt(getChildCount() - 1).getBottom();
        if (showingBottomFadingEdge() && (this.mSelectedPosition < this.mItemCount - 1 || rect.bottom < bottom - verticalFadingEdgeLength)) {
            i5 -= verticalFadingEdgeLength;
        }
        if (rect.bottom > i5 && rect.top > scrollY) {
            if (rect.height() > height) {
                i3 = (rect.top - scrollY) + 0;
            } else {
                i3 = (rect.bottom - i5) + 0;
            }
            i = Math.min(i3, bottom - i5);
        } else if (rect.top >= scrollY || rect.bottom >= i5) {
            i = 0;
        } else {
            if (rect.height() > height) {
                i2 = 0 - (i5 - rect.bottom);
            } else {
                i2 = 0 - (scrollY - rect.top);
            }
            i = Math.max(i2, getChildAt(0).getTop() - scrollY);
        }
        boolean z2 = i != 0;
        if (z2) {
            scrollListItemsBy(-i);
            positionSelector(-1, view);
            this.mSelectedTop = view.getTop();
            invalidate();
        }
        return z2;
    }

    @Override // android.widget.AbsListView
    void fillGap(boolean z) {
        int height;
        int childCount = getChildCount();
        if (z) {
            int listPaddingTop = (this.mGroupFlags & 34) == 34 ? getListPaddingTop() : 0;
            if (childCount > 0) {
                listPaddingTop = this.mDividerHeight + getChildAt(childCount - 1).getBottom();
            }
            fillDown(this.mFirstPosition + childCount, listPaddingTop);
            correctTooHigh(getChildCount());
            return;
        }
        int listPaddingBottom = (this.mGroupFlags & 34) == 34 ? getListPaddingBottom() : 0;
        if (childCount > 0) {
            height = getChildAt(0).getTop() - this.mDividerHeight;
        } else {
            height = getHeight() - listPaddingBottom;
        }
        fillUp(this.mFirstPosition - 1, height);
        correctTooLow(getChildCount());
    }

    private View fillDown(int i, int i2) {
        int i3 = this.mBottom - this.mTop;
        View view = null;
        if ((this.mGroupFlags & 34) == 34) {
            i3 -= this.mListPadding.bottom;
        }
        int i4 = i2;
        while (true) {
            if (i4 >= i3 || i >= this.mItemCount) {
                break;
            }
            boolean z = i == this.mSelectedPosition;
            View makeAndAddView = makeAndAddView(i, i4, true, this.mListPadding.left, z);
            i4 = makeAndAddView.getBottom() + this.mDividerHeight;
            if (z) {
                view = makeAndAddView;
            }
            i++;
        }
        setVisibleRangeHint(this.mFirstPosition, (this.mFirstPosition + getChildCount()) - 1);
        return view;
    }

    private View fillUp(int i, int i2) {
        int i3;
        int i4;
        View view = null;
        if ((this.mGroupFlags & 34) == 34) {
            i4 = this.mListPadding.top;
            i3 = i2;
        } else {
            i3 = i2;
            i4 = 0;
        }
        while (true) {
            if (i3 <= i4 || i < 0) {
                break;
            }
            boolean z = i == this.mSelectedPosition;
            View makeAndAddView = makeAndAddView(i, i3, false, this.mListPadding.left, z);
            i3 = makeAndAddView.getTop() - this.mDividerHeight;
            if (z) {
                view = makeAndAddView;
            }
            i--;
        }
        this.mFirstPosition = i + 1;
        setVisibleRangeHint(this.mFirstPosition, (this.mFirstPosition + getChildCount()) - 1);
        return view;
    }

    private View fillFromTop(int i) {
        this.mFirstPosition = Math.min(this.mFirstPosition, this.mSelectedPosition);
        this.mFirstPosition = Math.min(this.mFirstPosition, this.mItemCount - 1);
        if (this.mFirstPosition < 0) {
            this.mFirstPosition = 0;
        }
        return fillDown(this.mFirstPosition, i);
    }

    private View fillFromMiddle(int i, int i2) {
        int i3 = i2 - i;
        int reconcileSelectedPosition = reconcileSelectedPosition();
        View makeAndAddView = makeAndAddView(reconcileSelectedPosition, i, true, this.mListPadding.left, true);
        this.mFirstPosition = reconcileSelectedPosition;
        int measuredHeight = makeAndAddView.getMeasuredHeight();
        if (measuredHeight <= i3) {
            makeAndAddView.offsetTopAndBottom((i3 - measuredHeight) / 2);
        }
        fillAboveAndBelow(makeAndAddView, reconcileSelectedPosition);
        if (!this.mStackFromBottom) {
            correctTooHigh(getChildCount());
        } else {
            correctTooLow(getChildCount());
        }
        return makeAndAddView;
    }

    private void fillAboveAndBelow(View view, int i) {
        int i2 = this.mDividerHeight;
        if (!this.mStackFromBottom) {
            fillUp(i - 1, view.getTop() - i2);
            adjustViewsUpOrDown();
            fillDown(i + 1, view.getBottom() + i2);
        } else {
            fillDown(i + 1, view.getBottom() + i2);
            adjustViewsUpOrDown();
            fillUp(i - 1, view.getTop() - i2);
        }
    }

    private View fillFromSelection(int i, int i2, int i3) {
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i4 = this.mSelectedPosition;
        int topSelectionPixel = getTopSelectionPixel(i2, verticalFadingEdgeLength, i4);
        int bottomSelectionPixel = getBottomSelectionPixel(i3, verticalFadingEdgeLength, i4);
        View makeAndAddView = makeAndAddView(i4, i, true, this.mListPadding.left, true);
        if (makeAndAddView.getBottom() > bottomSelectionPixel) {
            makeAndAddView.offsetTopAndBottom(-Math.min(makeAndAddView.getTop() - topSelectionPixel, makeAndAddView.getBottom() - bottomSelectionPixel));
        } else if (makeAndAddView.getTop() < topSelectionPixel) {
            makeAndAddView.offsetTopAndBottom(Math.min(topSelectionPixel - makeAndAddView.getTop(), bottomSelectionPixel - makeAndAddView.getBottom()));
        }
        fillAboveAndBelow(makeAndAddView, i4);
        if (!this.mStackFromBottom) {
            correctTooHigh(getChildCount());
        } else {
            correctTooLow(getChildCount());
        }
        return makeAndAddView;
    }

    private int getBottomSelectionPixel(int i, int i2, int i3) {
        return i3 != this.mItemCount + (-1) ? i - i2 : i;
    }

    @Override // android.widget.AbsListView
    @RemotableViewMethod
    public void smoothScrollToPosition(int i) {
        super.smoothScrollToPosition(i);
    }

    @Override // android.widget.AbsListView
    @RemotableViewMethod
    public void smoothScrollByOffset(int i) {
        super.smoothScrollByOffset(i);
    }

    private View moveSelection(View view, View view2, int i, int i2, int i3) {
        View makeAndAddView;
        View makeAndAddView2;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i4 = this.mSelectedPosition;
        int topSelectionPixel = getTopSelectionPixel(i2, verticalFadingEdgeLength, i4);
        int bottomSelectionPixel = getBottomSelectionPixel(i2, verticalFadingEdgeLength, i4);
        if (i > 0) {
            View makeAndAddView3 = makeAndAddView(i4 - 1, view.getTop(), true, this.mListPadding.left, false);
            int i5 = this.mDividerHeight;
            makeAndAddView = makeAndAddView(i4, makeAndAddView3.getBottom() + i5, true, this.mListPadding.left, true);
            if (makeAndAddView.getBottom() > bottomSelectionPixel) {
                int i6 = -Math.min(Math.min(makeAndAddView.getTop() - topSelectionPixel, makeAndAddView.getBottom() - bottomSelectionPixel), (i3 - i2) / 2);
                makeAndAddView3.offsetTopAndBottom(i6);
                makeAndAddView.offsetTopAndBottom(i6);
            }
            if (!this.mStackFromBottom) {
                fillUp(this.mSelectedPosition - 2, makeAndAddView.getTop() - i5);
                adjustViewsUpOrDown();
                fillDown(this.mSelectedPosition + 1, makeAndAddView.getBottom() + i5);
            } else {
                fillDown(this.mSelectedPosition + 1, makeAndAddView.getBottom() + i5);
                adjustViewsUpOrDown();
                fillUp(this.mSelectedPosition - 2, makeAndAddView.getTop() - i5);
            }
        } else if (i < 0) {
            if (view2 != null) {
                makeAndAddView2 = makeAndAddView(i4, view2.getTop(), true, this.mListPadding.left, true);
            } else {
                makeAndAddView2 = makeAndAddView(i4, view.getTop(), false, this.mListPadding.left, true);
            }
            makeAndAddView = makeAndAddView2;
            if (makeAndAddView.getTop() < topSelectionPixel) {
                makeAndAddView.offsetTopAndBottom(Math.min(Math.min(topSelectionPixel - makeAndAddView.getTop(), bottomSelectionPixel - makeAndAddView.getBottom()), (i3 - i2) / 2));
            }
            fillAboveAndBelow(makeAndAddView, i4);
        } else {
            int top = view.getTop();
            makeAndAddView = makeAndAddView(i4, top, true, this.mListPadding.left, true);
            if (top < i2 && makeAndAddView.getBottom() < i2 + 20) {
                makeAndAddView.offsetTopAndBottom(i2 - makeAndAddView.getTop());
            }
            fillAboveAndBelow(makeAndAddView, i4);
        }
        return makeAndAddView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class FocusSelector implements Runnable {
        private static final int STATE_REQUEST_FOCUS = 3;
        private static final int STATE_SET_SELECTION = 1;
        private static final int STATE_WAIT_FOR_LAYOUT = 2;
        private int mAction;
        private int mPosition;
        private int mPositionTop;

        private FocusSelector() {
        }

        FocusSelector setupForSetSelection(int i, int i2) {
            this.mPosition = i;
            this.mPositionTop = i2;
            this.mAction = 1;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mAction == 1) {
                ListView.this.setSelectionFromTop(this.mPosition, this.mPositionTop);
                this.mAction = 2;
            } else if (this.mAction == 3) {
                View childAt = ListView.this.getChildAt(this.mPosition - ListView.this.mFirstPosition);
                if (childAt != null) {
                    childAt.requestFocus();
                }
                this.mAction = -1;
            }
        }

        Runnable setupFocusIfValid(int i) {
            if (this.mAction != 2 || i != this.mPosition) {
                return null;
            }
            this.mAction = 3;
            return this;
        }

        void onLayoutComplete() {
            if (this.mAction == 2) {
                this.mAction = -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        if (this.mFocusSelector != null) {
            removeCallbacks(this.mFocusSelector);
            this.mFocusSelector = null;
        }
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        View focusedChild;
        if (getChildCount() > 0 && (focusedChild = getFocusedChild()) != null) {
            int indexOfChild = this.mFirstPosition + indexOfChild(focusedChild);
            int top = focusedChild.getTop() - Math.max(0, focusedChild.getBottom() - (i2 - this.mPaddingTop));
            if (this.mFocusSelector == null) {
                this.mFocusSelector = new FocusSelector();
            }
            post(this.mFocusSelector.setupForSetSelection(indexOfChild, top));
        }
        super.onSizeChanged(i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int i5 = 0;
        this.mItemCount = this.mAdapter == null ? 0 : this.mAdapter.getCount();
        if (this.mItemCount <= 0 || !(mode == 0 || mode2 == 0)) {
            i3 = 0;
            i4 = 0;
        } else {
            View obtainView = obtainView(0, this.mIsScrap);
            measureScrapChild(obtainView, 0, i, size2);
            int measuredWidth = obtainView.getMeasuredWidth();
            i3 = obtainView.getMeasuredHeight();
            i4 = combineMeasuredStates(0, obtainView.getMeasuredState());
            if (recycleOnMeasure() && this.mRecycler.shouldRecycleViewType(((AbsListView.LayoutParams) obtainView.getLayoutParams()).viewType)) {
                this.mRecycler.addScrapView(obtainView, 0);
            }
            i5 = measuredWidth;
        }
        int verticalScrollbarWidth = mode == 0 ? this.mListPadding.left + this.mListPadding.right + i5 + getVerticalScrollbarWidth() : ((-16777216) & i4) | size;
        if (mode2 == 0) {
            size2 = this.mListPadding.top + this.mListPadding.bottom + i3 + (getVerticalFadingEdgeLength() * 2);
        }
        int i6 = size2;
        if (mode2 == Integer.MIN_VALUE) {
            i6 = measureHeightOfChildren(i, 0, -1, i6, -1);
        }
        setMeasuredDimension(verticalScrollbarWidth, i6);
        this.mWidthMeasureSpec = i;
    }

    private void measureScrapChild(View view, int i, int i2, int i3) {
        int makeSafeMeasureSpec;
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
            view.setLayoutParams(layoutParams);
        }
        layoutParams.viewType = this.mAdapter.getItemViewType(i);
        layoutParams.isEnabled = this.mAdapter.isEnabled(i);
        layoutParams.forceAdd = true;
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, this.mListPadding.left + this.mListPadding.right, layoutParams.width);
        int i4 = layoutParams.height;
        if (i4 > 0) {
            makeSafeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        } else {
            makeSafeMeasureSpec = View.MeasureSpec.makeSafeMeasureSpec(i3, 0);
        }
        view.measure(childMeasureSpec, makeSafeMeasureSpec);
        view.forceLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int measureHeightOfChildren(int i, int i2, int i3, int i4, int i5) {
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter == null) {
            return this.mListPadding.top + this.mListPadding.bottom;
        }
        int i6 = this.mListPadding.top + this.mListPadding.bottom;
        int i7 = this.mDividerHeight;
        int i8 = 0;
        if (i3 == -1) {
            i3 = listAdapter.getCount() - 1;
        }
        AbsListView.RecycleBin recycleBin = this.mRecycler;
        boolean recycleOnMeasure = recycleOnMeasure();
        boolean[] zArr = this.mIsScrap;
        while (i2 <= i3) {
            View obtainView = obtainView(i2, zArr);
            measureScrapChild(obtainView, i2, i, i4);
            if (i2 > 0) {
                i6 += i7;
            }
            if (recycleOnMeasure && recycleBin.shouldRecycleViewType(((AbsListView.LayoutParams) obtainView.getLayoutParams()).viewType)) {
                recycleBin.addScrapView(obtainView, -1);
            }
            i6 += obtainView.getMeasuredHeight();
            if (i6 >= i4) {
                return (i5 < 0 || i2 <= i5 || i8 <= 0 || i6 == i4) ? i4 : i8;
            }
            if (i5 >= 0 && i2 >= i5) {
                i8 = i6;
            }
            i2++;
        }
        return i6;
    }

    @Override // android.widget.AbsListView
    int findMotionRow(int i) {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return -1;
        }
        if (this.mStackFromBottom) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                if (i >= getChildAt(i2).getTop()) {
                    return this.mFirstPosition + i2;
                }
            }
            return -1;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            if (i <= getChildAt(i3).getBottom()) {
                return this.mFirstPosition + i3;
            }
        }
        return -1;
    }

    private View fillSpecific(int i, int i2) {
        View fillDown;
        View fillUp;
        boolean z = i == this.mSelectedPosition;
        View makeAndAddView = makeAndAddView(i, i2, true, this.mListPadding.left, z);
        this.mFirstPosition = i;
        int i3 = this.mDividerHeight;
        if (!this.mStackFromBottom) {
            View fillUp2 = fillUp(i - 1, makeAndAddView.getTop() - i3);
            adjustViewsUpOrDown();
            View fillDown2 = fillDown(i + 1, makeAndAddView.getBottom() + i3);
            int childCount = getChildCount();
            if (childCount > 0) {
                correctTooHigh(childCount);
            }
            fillDown = fillDown2;
            fillUp = fillUp2;
        } else {
            fillDown = fillDown(i + 1, makeAndAddView.getBottom() + i3);
            adjustViewsUpOrDown();
            fillUp = fillUp(i - 1, makeAndAddView.getTop() - i3);
            int childCount2 = getChildCount();
            if (childCount2 > 0) {
                correctTooLow(childCount2);
            }
        }
        return z ? makeAndAddView : fillUp != null ? fillUp : fillDown;
    }

    private void correctTooHigh(int i) {
        if ((this.mFirstPosition + i) - 1 != this.mItemCount - 1 || i <= 0) {
            return;
        }
        int bottom = ((this.mBottom - this.mTop) - this.mListPadding.bottom) - getChildAt(i - 1).getBottom();
        View childAt = getChildAt(0);
        int top = childAt.getTop();
        if (bottom > 0) {
            if (this.mFirstPosition > 0 || top < this.mListPadding.top) {
                if (this.mFirstPosition == 0) {
                    bottom = Math.min(bottom, this.mListPadding.top - top);
                }
                offsetChildrenTopAndBottom(bottom);
                if (this.mFirstPosition > 0) {
                    fillUp(this.mFirstPosition - 1, childAt.getTop() - this.mDividerHeight);
                    adjustViewsUpOrDown();
                }
            }
        }
    }

    private void correctTooLow(int i) {
        if (this.mFirstPosition != 0 || i <= 0) {
            return;
        }
        int top = getChildAt(0).getTop();
        int i2 = this.mListPadding.top;
        int i3 = (this.mBottom - this.mTop) - this.mListPadding.bottom;
        int i4 = top - i2;
        View childAt = getChildAt(i - 1);
        int bottom = childAt.getBottom();
        int i5 = (this.mFirstPosition + i) - 1;
        if (i4 > 0) {
            if (i5 < this.mItemCount - 1 || bottom > i3) {
                if (i5 == this.mItemCount - 1) {
                    i4 = Math.min(i4, bottom - i3);
                }
                offsetChildrenTopAndBottom(-i4);
                if (i5 < this.mItemCount - 1) {
                    fillDown(i5 + 1, childAt.getBottom() + this.mDividerHeight);
                    adjustViewsUpOrDown();
                    return;
                }
                return;
            }
            if (i5 == this.mItemCount - 1) {
                adjustViewsUpOrDown();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0268 A[Catch: all -> 0x0365, TryCatch #0 {all -> 0x0365, blocks: (B:73:0x0116, B:77:0x0121, B:80:0x0141, B:81:0x0149, B:83:0x014e, B:85:0x01ac, B:86:0x0201, B:88:0x0210, B:90:0x0214, B:92:0x021a, B:96:0x0224, B:100:0x0235, B:102:0x023b, B:103:0x023e, B:104:0x0251, B:106:0x02a4, B:109:0x02ac, B:111:0x02b2, B:114:0x02ba, B:115:0x02c9, B:118:0x02d2, B:120:0x02e6, B:122:0x02eb, B:124:0x02f1, B:125:0x02f4, B:127:0x02fd, B:128:0x0305, B:130:0x0314, B:131:0x0317, B:139:0x0243, B:140:0x022a, B:143:0x024d, B:144:0x0258, B:146:0x025d, B:151:0x0268, B:153:0x0273, B:154:0x0297, B:157:0x029f, B:158:0x0279, B:160:0x027e, B:162:0x0289, B:163:0x028f, B:165:0x01ba, B:166:0x01ce, B:168:0x01d2, B:170:0x01d8, B:173:0x01e1, B:174:0x01dd, B:175:0x01e6, B:177:0x01ec, B:180:0x01f5, B:181:0x01f1, B:182:0x01fa, B:184:0x0151, B:185:0x0159, B:186:0x0163, B:188:0x016f, B:190:0x0173, B:192:0x017b, B:193:0x0181, B:195:0x0190, B:196:0x019a, B:197:0x019f, B:198:0x013a, B:206:0x032b, B:207:0x0364), top: B:42:0x00ac }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0279 A[Catch: all -> 0x0365, TryCatch #0 {all -> 0x0365, blocks: (B:73:0x0116, B:77:0x0121, B:80:0x0141, B:81:0x0149, B:83:0x014e, B:85:0x01ac, B:86:0x0201, B:88:0x0210, B:90:0x0214, B:92:0x021a, B:96:0x0224, B:100:0x0235, B:102:0x023b, B:103:0x023e, B:104:0x0251, B:106:0x02a4, B:109:0x02ac, B:111:0x02b2, B:114:0x02ba, B:115:0x02c9, B:118:0x02d2, B:120:0x02e6, B:122:0x02eb, B:124:0x02f1, B:125:0x02f4, B:127:0x02fd, B:128:0x0305, B:130:0x0314, B:131:0x0317, B:139:0x0243, B:140:0x022a, B:143:0x024d, B:144:0x0258, B:146:0x025d, B:151:0x0268, B:153:0x0273, B:154:0x0297, B:157:0x029f, B:158:0x0279, B:160:0x027e, B:162:0x0289, B:163:0x028f, B:165:0x01ba, B:166:0x01ce, B:168:0x01d2, B:170:0x01d8, B:173:0x01e1, B:174:0x01dd, B:175:0x01e6, B:177:0x01ec, B:180:0x01f5, B:181:0x01f1, B:182:0x01fa, B:184:0x0151, B:185:0x0159, B:186:0x0163, B:188:0x016f, B:190:0x0173, B:192:0x017b, B:193:0x0181, B:195:0x0190, B:196:0x019a, B:197:0x019f, B:198:0x013a, B:206:0x032b, B:207:0x0364), top: B:42:0x00ac }] */
    @Override // android.widget.AbsListView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutChildren() {
        int i;
        View view;
        View view2;
        View view3;
        int i2;
        AccessibilityNodeInfo accessibilityNodeInfo;
        View view4;
        boolean z;
        View view5;
        AccessibilityNodeInfo accessibilityNodeInfo2;
        View view6;
        View fillFromTop;
        View fillSpecific;
        Runnable runnable;
        boolean z2;
        View childAt;
        View accessibilityFocusedChild;
        boolean z3 = this.mBlockLayoutRequests;
        if (z3) {
            return;
        }
        this.mBlockLayoutRequests = true;
        try {
            super.layoutChildren();
            invalidate();
            if (this.mAdapter == null) {
                resetList();
                invokeOnItemScrollListener();
                if (this.mFocusSelector != null) {
                    this.mFocusSelector.onLayoutComplete();
                }
                if (z3) {
                    return;
                }
                this.mBlockLayoutRequests = false;
                return;
            }
            int i3 = this.mListPadding.top;
            int i4 = (this.mBottom - this.mTop) - this.mListPadding.bottom;
            int childCount = getChildCount();
            switch (this.mLayoutMode) {
                case 2:
                    int i5 = this.mNextSelectedPosition - this.mFirstPosition;
                    if (i5 >= 0 && i5 < childCount) {
                        view2 = getChildAt(i5);
                        i = 0;
                        view = null;
                        view3 = null;
                        break;
                    }
                case 1:
                case 3:
                case 4:
                case 5:
                    i = 0;
                    view = null;
                    view2 = null;
                    view3 = null;
                    break;
                default:
                    int i6 = this.mSelectedPosition - this.mFirstPosition;
                    View childAt2 = (i6 < 0 || i6 >= childCount) ? null : getChildAt(i6);
                    View childAt3 = getChildAt(0);
                    int i7 = this.mNextSelectedPosition >= 0 ? this.mNextSelectedPosition - this.mSelectedPosition : 0;
                    View view7 = childAt2;
                    view2 = getChildAt(i6 + i7);
                    view = view7;
                    int i8 = i7;
                    view3 = childAt3;
                    i = i8;
                    break;
            }
            boolean z4 = this.mDataChanged;
            if (z4) {
                handleDataChanged();
            }
            if (this.mItemCount == 0) {
                resetList();
                invokeOnItemScrollListener();
                if (this.mFocusSelector != null) {
                    this.mFocusSelector.onLayoutComplete();
                }
                if (z3) {
                    return;
                }
                this.mBlockLayoutRequests = false;
                return;
            }
            try {
                if (this.mItemCount != this.mAdapter.getCount()) {
                    throw new IllegalStateException("The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. Make sure your adapter calls notifyDataSetChanged() when its content changes. [in ListView(" + getId() + ", " + getClass() + ") with Adapter(" + this.mAdapter.getClass() + ")]");
                }
                setSelectedPositionInt(this.mNextSelectedPosition);
                ViewRootImpl viewRootImpl = getViewRootImpl();
                if (viewRootImpl == null || (view4 = viewRootImpl.getAccessibilityFocusedHost()) == null || (accessibilityFocusedChild = getAccessibilityFocusedChild(view4)) == null) {
                    i2 = -1;
                    accessibilityNodeInfo = null;
                    view4 = null;
                } else {
                    if (z4 && !isDirectChildHeaderOrFooter(accessibilityFocusedChild) && (!accessibilityFocusedChild.hasTransientState() || !this.mAdapterHasStableIds)) {
                        accessibilityNodeInfo = null;
                        view4 = null;
                        i2 = getPositionForView(accessibilityFocusedChild);
                    }
                    accessibilityNodeInfo = viewRootImpl.getAccessibilityFocusedVirtualView();
                    i2 = getPositionForView(accessibilityFocusedChild);
                }
                View focusedChild = getFocusedChild();
                if (focusedChild != null) {
                    if (z4 && !isDirectChildHeaderOrFooter(focusedChild) && !focusedChild.hasTransientState() && !this.mAdapterHasStableIds) {
                        view5 = null;
                        focusedChild = null;
                        requestFocus();
                        z = z3;
                    }
                    view5 = findFocus();
                    if (view5 != null) {
                        view5.dispatchStartTemporaryDetach();
                    }
                    requestFocus();
                    z = z3;
                } else {
                    z = z3;
                    view5 = null;
                    focusedChild = null;
                }
                int i9 = this.mFirstPosition;
                int i10 = i2;
                AbsListView.RecycleBin recycleBin = this.mRecycler;
                if (z4) {
                    int i11 = 0;
                    while (i11 < childCount) {
                        recycleBin.addScrapView(getChildAt(i11), i9 + i11);
                        i11++;
                        accessibilityNodeInfo = accessibilityNodeInfo;
                        view4 = view4;
                    }
                    accessibilityNodeInfo2 = accessibilityNodeInfo;
                    view6 = view4;
                } else {
                    accessibilityNodeInfo2 = accessibilityNodeInfo;
                    view6 = view4;
                    recycleBin.fillActiveViews(childCount, i9);
                }
                detachAllViewsFromParent();
                recycleBin.removeSkippedScrap();
                switch (this.mLayoutMode) {
                    case 1:
                        this.mFirstPosition = 0;
                        fillFromTop = fillFromTop(i3);
                        adjustViewsUpOrDown();
                        break;
                    case 2:
                        if (view2 == null) {
                            fillFromTop = fillFromMiddle(i3, i4);
                            break;
                        } else {
                            fillFromTop = fillFromSelection(view2.getTop(), i3, i4);
                            break;
                        }
                    case 3:
                        fillFromTop = fillUp(this.mItemCount - 1, i4);
                        adjustViewsUpOrDown();
                        break;
                    case 4:
                        int reconcileSelectedPosition = reconcileSelectedPosition();
                        fillSpecific = fillSpecific(reconcileSelectedPosition, this.mSpecificTop);
                        if (fillSpecific == null && this.mFocusSelector != null && (runnable = this.mFocusSelector.setupFocusIfValid(reconcileSelectedPosition)) != null) {
                            post(runnable);
                        }
                        fillFromTop = fillSpecific;
                        break;
                    case 5:
                        fillFromTop = fillSpecific(this.mSyncPosition, this.mSpecificTop);
                        break;
                    case 6:
                        fillFromTop = moveSelection(view, view2, i, i3, i4);
                        break;
                    default:
                        if (childCount != 0) {
                            if (this.mSelectedPosition >= 0 && this.mSelectedPosition < this.mItemCount) {
                                int i12 = this.mSelectedPosition;
                                if (view != null) {
                                    i3 = view.getTop();
                                }
                                fillFromTop = fillSpecific(i12, i3);
                                break;
                            } else if (this.mFirstPosition >= this.mItemCount) {
                                fillSpecific = fillSpecific(0, i3);
                                fillFromTop = fillSpecific;
                                break;
                            } else {
                                int i13 = this.mFirstPosition;
                                if (view3 != null) {
                                    i3 = view3.getTop();
                                }
                                fillFromTop = fillSpecific(i13, i3);
                                break;
                            }
                        } else if (!this.mStackFromBottom) {
                            setSelectedPositionInt(lookForSelectablePosition(0, true));
                            fillFromTop = fillFromTop(i3);
                            break;
                        } else {
                            setSelectedPositionInt(lookForSelectablePosition(this.mItemCount - 1, false));
                            fillFromTop = fillUp(this.mItemCount - 1, i4);
                            break;
                        }
                        break;
                }
                recycleBin.scrapActiveViews();
                removeUnusedFixedViews(this.mHeaderViewInfos);
                removeUnusedFixedViews(this.mFooterViewInfos);
                if (fillFromTop != null) {
                    if (this.mItemsCanFocus && hasFocus() && !fillFromTop.hasFocus()) {
                        if ((fillFromTop == focusedChild && view5 != null && view5.requestFocus()) || fillFromTop.requestFocus()) {
                            fillFromTop.setSelected(false);
                            this.mSelectorRect.setEmpty();
                        } else {
                            View focusedChild2 = getFocusedChild();
                            if (focusedChild2 != null) {
                                focusedChild2.clearFocus();
                            }
                            positionSelector(-1, fillFromTop);
                        }
                    } else {
                        positionSelector(-1, fillFromTop);
                    }
                    this.mSelectedTop = fillFromTop.getTop();
                } else {
                    if (this.mTouchMode != 1 && this.mTouchMode != 2) {
                        z2 = false;
                        if (!z2) {
                            View childAt4 = getChildAt(this.mMotionPosition - this.mFirstPosition);
                            if (childAt4 != null) {
                                positionSelector(this.mMotionPosition, childAt4);
                            }
                        } else if (this.mSelectorPosition != -1) {
                            View childAt5 = getChildAt(this.mSelectorPosition - this.mFirstPosition);
                            if (childAt5 != null) {
                                positionSelector(this.mSelectorPosition, childAt5);
                            }
                        } else {
                            this.mSelectedTop = 0;
                            this.mSelectorRect.setEmpty();
                        }
                        if (hasFocus() && view5 != null) {
                            view5.requestFocus();
                        }
                    }
                    z2 = true;
                    if (!z2) {
                    }
                    if (hasFocus()) {
                        view5.requestFocus();
                    }
                }
                if (viewRootImpl != null && viewRootImpl.getAccessibilityFocusedHost() == null) {
                    if (view6 != null && view6.isAttachedToWindow()) {
                        AccessibilityNodeProvider accessibilityNodeProvider = view6.getAccessibilityNodeProvider();
                        if (accessibilityNodeInfo2 == null || accessibilityNodeProvider == null) {
                            view6.requestAccessibilityFocus();
                        } else {
                            accessibilityNodeProvider.performAction(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo2.getSourceNodeId()), 64, null);
                        }
                    } else if (i10 != -1 && (childAt = getChildAt(MathUtils.constrain(i10 - this.mFirstPosition, 0, getChildCount() - 1))) != null) {
                        childAt.requestAccessibilityFocus();
                    }
                }
                if (view5 != null && view5.getWindowToken() != null) {
                    view5.dispatchFinishTemporaryDetach();
                }
                this.mLayoutMode = 0;
                this.mDataChanged = false;
                if (this.mPositionScrollAfterLayout != null) {
                    post(this.mPositionScrollAfterLayout);
                    this.mPositionScrollAfterLayout = null;
                }
                this.mNeedSync = false;
                setNextSelectedPositionInt(this.mSelectedPosition);
                updateScrollIndicators();
                if (this.mItemCount > 0) {
                    checkSelectionChanged();
                }
                invokeOnItemScrollListener();
                if (this.mFocusSelector != null) {
                    this.mFocusSelector.onLayoutComplete();
                }
                if (z) {
                    return;
                }
                this.mBlockLayoutRequests = false;
            } catch (Throwable th) {
                th = th;
                if (this.mFocusSelector != null) {
                    this.mFocusSelector.onLayoutComplete();
                }
                if (!z3) {
                    this.mBlockLayoutRequests = false;
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.widget.AbsListView
    public boolean trackMotionScroll(int i, int i2) {
        boolean trackMotionScroll = super.trackMotionScroll(i, i2);
        removeUnusedFixedViews(this.mHeaderViewInfos);
        removeUnusedFixedViews(this.mFooterViewInfos);
        return trackMotionScroll;
    }

    private void removeUnusedFixedViews(List<FixedViewInfo> list) {
        if (list == null) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            View view = list.get(size).view;
            AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
            if (view.getParent() == null && layoutParams != null && layoutParams.recycledHeaderFooter) {
                removeDetachedView(view, false);
                layoutParams.recycledHeaderFooter = false;
            }
        }
    }

    private boolean isDirectChildHeaderOrFooter(View view) {
        ArrayList<FixedViewInfo> arrayList = this.mHeaderViewInfos;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (view == arrayList.get(i).view) {
                return true;
            }
        }
        ArrayList<FixedViewInfo> arrayList2 = this.mFooterViewInfos;
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            if (view == arrayList2.get(i2).view) {
                return true;
            }
        }
        return false;
    }

    private View makeAndAddView(int i, int i2, boolean z, int i3, boolean z2) {
        View activeView;
        if (!this.mDataChanged && (activeView = this.mRecycler.getActiveView(i)) != null) {
            setupChild(activeView, i, i2, z, i3, z2, true);
            return activeView;
        }
        View obtainView = obtainView(i, this.mIsScrap);
        setupChild(obtainView, i, i2, z, i3, z2, this.mIsScrap[0]);
        return obtainView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setupChild(View view, int i, int i2, boolean z, int i3, boolean z2, boolean z3) {
        int makeSafeMeasureSpec;
        Trace.traceBegin(8L, "setupListItem");
        boolean z4 = z2 && shouldShowSelector();
        boolean z5 = z4 != view.isSelected();
        int i4 = this.mTouchMode;
        boolean z6 = i4 > 0 && i4 < 3 && this.mMotionPosition == i;
        boolean z7 = z6 != view.isPressed();
        boolean z8 = !z3 || z5 || view.isLayoutRequested();
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
        }
        layoutParams.viewType = this.mAdapter.getItemViewType(i);
        layoutParams.isEnabled = this.mAdapter.isEnabled(i);
        if (z5) {
            view.setSelected(z4);
        }
        if (z7) {
            view.setPressed(z6);
        }
        if (this.mChoiceMode != 0 && this.mCheckStates != null) {
            if (view instanceof Checkable) {
                ((Checkable) view).setChecked(this.mCheckStates.get(i));
            } else if (getContext().getApplicationInfo().targetSdkVersion >= 11) {
                view.setActivated(this.mCheckStates.get(i));
            }
        }
        if ((z3 && !layoutParams.forceAdd) || (layoutParams.recycledHeaderFooter && layoutParams.viewType == -2)) {
            attachViewToParent(view, z ? -1 : 0, layoutParams);
            if (z3 && ((AbsListView.LayoutParams) view.getLayoutParams()).scrappedFromPosition != i) {
                view.jumpDrawablesToCurrentState();
            }
        } else {
            layoutParams.forceAdd = false;
            if (layoutParams.viewType == -2) {
                layoutParams.recycledHeaderFooter = true;
            }
            addViewInLayout(view, z ? -1 : 0, layoutParams, true);
            view.resolveRtlPropertiesIfNeeded();
        }
        if (z8) {
            int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, this.mListPadding.left + this.mListPadding.right, layoutParams.width);
            int i5 = layoutParams.height;
            if (i5 > 0) {
                makeSafeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
            } else {
                makeSafeMeasureSpec = View.MeasureSpec.makeSafeMeasureSpec(getMeasuredHeight(), 0);
            }
            view.measure(childMeasureSpec, makeSafeMeasureSpec);
        } else {
            cleanupLayoutState(view);
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i6 = z ? i2 : i2 - measuredHeight;
        if (z8) {
            view.layout(i3, i6, measuredWidth + i3, measuredHeight + i6);
        } else {
            view.offsetLeftAndRight(i3 - view.getLeft());
            view.offsetTopAndBottom(i6 - view.getTop());
        }
        if (this.mCachingStarted && !view.isDrawingCacheEnabled()) {
            view.setDrawingCacheEnabled(true);
        }
        Trace.traceEnd(8L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AdapterView, android.view.ViewGroup
    public boolean canAnimate() {
        return super.canAnimate() && this.mItemCount > 0;
    }

    @Override // android.widget.AdapterView
    public void setSelection(int i) {
        setSelectionFromTop(i, 0);
    }

    @Override // android.widget.AbsListView
    void setSelectionInt(int i) {
        setNextSelectedPositionInt(i);
        int i2 = this.mSelectedPosition;
        boolean z = true;
        if (i2 < 0 || (i != i2 - 1 && i != i2 + 1)) {
            z = false;
        }
        if (this.mPositionScroller != null) {
            this.mPositionScroller.stop();
        }
        layoutChildren();
        if (z) {
            awakenScrollBars();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.widget.AdapterView
    public int lookForSelectablePosition(int i, boolean z) {
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter == null || isInTouchMode()) {
            return -1;
        }
        int count = listAdapter.getCount();
        if (!this.mAreAllItemsSelectable) {
            if (z) {
                i = Math.max(0, i);
                while (i < count && !listAdapter.isEnabled(i)) {
                    i++;
                }
            } else {
                i = Math.min(i, count - 1);
                while (i >= 0 && !listAdapter.isEnabled(i)) {
                    i--;
                }
            }
        }
        if (i < 0 || i >= count) {
            return -1;
        }
        return i;
    }

    int lookForSelectablePositionAfter(int i, int i2, boolean z) {
        int max;
        ListAdapter listAdapter = this.mAdapter;
        if (listAdapter == null || isInTouchMode()) {
            return -1;
        }
        int lookForSelectablePosition = lookForSelectablePosition(i2, z);
        if (lookForSelectablePosition != -1) {
            return lookForSelectablePosition;
        }
        int count = listAdapter.getCount() - 1;
        int constrain = MathUtils.constrain(i, -1, count);
        if (z) {
            max = Math.min(i2 - 1, count);
            while (max > constrain && !listAdapter.isEnabled(max)) {
                max--;
            }
            if (max <= constrain) {
                return -1;
            }
        } else {
            max = Math.max(0, i2 + 1);
            while (max < constrain && !listAdapter.isEnabled(max)) {
                max++;
            }
            if (max >= constrain) {
                return -1;
            }
        }
        return max;
    }

    public void setSelectionAfterHeaderView() {
        int headerViewsCount = getHeaderViewsCount();
        if (headerViewsCount > 0) {
            this.mNextSelectedPosition = 0;
        } else if (this.mAdapter != null) {
            setSelection(headerViewsCount);
        } else {
            this.mNextSelectedPosition = headerViewsCount;
            this.mLayoutMode = 2;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        return (dispatchKeyEvent || getFocusedChild() == null || keyEvent.getAction() != 0) ? dispatchKeyEvent : onKeyDown(keyEvent.getKeyCode(), keyEvent);
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return commonKey(i, 1, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return commonKey(i, i2, keyEvent);
    }

    @Override // android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return commonKey(i, 1, keyEvent);
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x015f, code lost:
    
        if (fullScroll(33) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005d, code lost:
    
        if (fullScroll(130) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0076, code lost:
    
        if (fullScroll(33) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0089, code lost:
    
        if (pageScroll(130) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009c, code lost:
    
        if (fullScroll(130) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00af, code lost:
    
        if (pageScroll(33) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00c2, code lost:
    
        if (fullScroll(33) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00d5, code lost:
    
        if (arrowScroll(130) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e8, code lost:
    
        if (arrowScroll(33) == false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0130, code lost:
    
        if (fullScroll(130) == false) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean commonKey(int i, int i2, KeyEvent keyEvent) {
        boolean z;
        int i3;
        if (this.mAdapter == null || !isAttachedToWindow()) {
            return false;
        }
        if (this.mDataChanged) {
            layoutChildren();
        }
        int action = keyEvent.getAction();
        if (KeyEvent.isConfirmKey(i) && keyEvent.hasNoModifiers() && action != 1) {
            z = resurrectSelectionIfNeeded();
            if (!z && keyEvent.getRepeatCount() == 0 && getChildCount() > 0) {
                keyPressed();
                z = true;
            }
        } else {
            z = false;
        }
        if (!z && action != 1) {
            switch (i) {
                case 19:
                    if (keyEvent.hasNoModifiers()) {
                        z = resurrectSelectionIfNeeded();
                        if (!z) {
                            while (true) {
                                i3 = i2 - 1;
                                if (i2 > 0 && arrowScroll(33)) {
                                    z = true;
                                    i2 = i3;
                                }
                            }
                            i2 = i3;
                            break;
                        }
                    } else if (keyEvent.hasModifiers(2)) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                        break;
                    }
                    break;
                case 20:
                    if (keyEvent.hasNoModifiers()) {
                        z = resurrectSelectionIfNeeded();
                        if (!z) {
                            while (true) {
                                i3 = i2 - 1;
                                if (i2 > 0 && arrowScroll(130)) {
                                    z = true;
                                    i2 = i3;
                                }
                            }
                            i2 = i3;
                            break;
                        }
                    } else if (keyEvent.hasModifiers(2)) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                        break;
                    }
                    break;
                case 21:
                    if (keyEvent.hasNoModifiers()) {
                        z = handleHorizontalFocusWithinListItem(17);
                        break;
                    }
                    break;
                case 22:
                    if (keyEvent.hasNoModifiers()) {
                        z = handleHorizontalFocusWithinListItem(66);
                        break;
                    }
                    break;
                case 61:
                    if (keyEvent.hasNoModifiers()) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                        break;
                    } else if (keyEvent.hasModifiers(1)) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                    }
                    break;
                case 92:
                    if (keyEvent.hasNoModifiers()) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                        break;
                    } else if (keyEvent.hasModifiers(2)) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                    }
                    break;
                case 93:
                    if (keyEvent.hasNoModifiers()) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                        break;
                    } else if (keyEvent.hasModifiers(2)) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                    }
                    break;
                case 122:
                    if (keyEvent.hasNoModifiers()) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                        break;
                    }
                    break;
                case 123:
                    if (keyEvent.hasNoModifiers()) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                        break;
                    }
                    break;
            }
        }
        if (z || sendToTextFilter(i, i2, keyEvent)) {
            return true;
        }
        switch (action) {
            case 0:
                return super.onKeyDown(i, keyEvent);
            case 1:
                return super.onKeyUp(i, keyEvent);
            case 2:
                return super.onKeyMultiple(i, i2, keyEvent);
            default:
                return false;
        }
    }

    boolean pageScroll(int i) {
        int min;
        boolean z;
        int lookForSelectablePositionAfter;
        if (i == 33) {
            min = Math.max(0, (this.mSelectedPosition - getChildCount()) - 1);
            z = false;
        } else {
            if (i != 130) {
                return false;
            }
            min = Math.min(this.mItemCount - 1, (this.mSelectedPosition + getChildCount()) - 1);
            z = true;
        }
        if (min < 0 || (lookForSelectablePositionAfter = lookForSelectablePositionAfter(this.mSelectedPosition, min, z)) < 0) {
            return false;
        }
        this.mLayoutMode = 4;
        this.mSpecificTop = this.mPaddingTop + getVerticalFadingEdgeLength();
        if (z && lookForSelectablePositionAfter > this.mItemCount - getChildCount()) {
            this.mLayoutMode = 3;
        }
        if (!z && lookForSelectablePositionAfter < getChildCount()) {
            this.mLayoutMode = 1;
        }
        setSelectionInt(lookForSelectablePositionAfter);
        invokeOnItemScrollListener();
        if (!awakenScrollBars()) {
            invalidate();
        }
        return true;
    }

    boolean fullScroll(int i) {
        int i2;
        boolean z = true;
        if (i == 33) {
            if (this.mSelectedPosition != 0) {
                int lookForSelectablePositionAfter = lookForSelectablePositionAfter(this.mSelectedPosition, 0, true);
                if (lookForSelectablePositionAfter >= 0) {
                    this.mLayoutMode = 1;
                    setSelectionInt(lookForSelectablePositionAfter);
                    invokeOnItemScrollListener();
                }
            }
            z = false;
        } else {
            if (i == 130 && this.mSelectedPosition < (i2 = this.mItemCount - 1)) {
                int lookForSelectablePositionAfter2 = lookForSelectablePositionAfter(this.mSelectedPosition, i2, false);
                if (lookForSelectablePositionAfter2 >= 0) {
                    this.mLayoutMode = 3;
                    setSelectionInt(lookForSelectablePositionAfter2);
                    invokeOnItemScrollListener();
                }
            }
            z = false;
        }
        if (z && !awakenScrollBars()) {
            awakenScrollBars();
            invalidate();
        }
        return z;
    }

    private boolean handleHorizontalFocusWithinListItem(int i) {
        View selectedView;
        if (i != 17 && i != 66) {
            throw new IllegalArgumentException("direction must be one of {View.FOCUS_LEFT, View.FOCUS_RIGHT}");
        }
        int childCount = getChildCount();
        if (!this.mItemsCanFocus || childCount <= 0 || this.mSelectedPosition == -1 || (selectedView = getSelectedView()) == null || !selectedView.hasFocus() || !(selectedView instanceof ViewGroup)) {
            return false;
        }
        View findFocus = selectedView.findFocus();
        View findNextFocus = FocusFinder.getInstance().findNextFocus((ViewGroup) selectedView, findFocus, i);
        if (findNextFocus != null) {
            Rect rect = this.mTempRect;
            if (findFocus != null) {
                findFocus.getFocusedRect(rect);
                offsetDescendantRectToMyCoords(findFocus, rect);
                offsetRectIntoDescendantCoords(findNextFocus, rect);
            } else {
                rect = null;
            }
            if (findNextFocus.requestFocus(i, rect)) {
                return true;
            }
        }
        View findNextFocus2 = FocusFinder.getInstance().findNextFocus((ViewGroup) getRootView(), findFocus, i);
        if (findNextFocus2 != null) {
            return isViewAncestorOf(findNextFocus2, this);
        }
        return false;
    }

    boolean arrowScroll(int i) {
        try {
            this.mInLayout = true;
            boolean arrowScrollImpl = arrowScrollImpl(i);
            if (arrowScrollImpl) {
                playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
            }
            return arrowScrollImpl;
        } finally {
            this.mInLayout = false;
        }
    }

    private final int nextSelectedPositionForDirection(View view, int i, int i2) {
        int i3;
        if (i2 == 130) {
            int height = getHeight() - this.mListPadding.bottom;
            if (view == null || view.getBottom() > height) {
                return -1;
            }
            i3 = (i == -1 || i < this.mFirstPosition) ? this.mFirstPosition : i + 1;
        } else {
            int i4 = this.mListPadding.top;
            if (view == null || view.getTop() < i4) {
                return -1;
            }
            int childCount = (this.mFirstPosition + getChildCount()) - 1;
            i3 = (i == -1 || i > childCount) ? childCount : i - 1;
        }
        if (i3 < 0 || i3 >= this.mAdapter.getCount()) {
            return -1;
        }
        return lookForSelectablePosition(i3, i2 == 130);
    }

    private boolean arrowScrollImpl(int i) {
        View findFocus;
        View focusedChild;
        if (getChildCount() <= 0) {
            return false;
        }
        View selectedView = getSelectedView();
        int i2 = this.mSelectedPosition;
        int nextSelectedPositionForDirection = nextSelectedPositionForDirection(selectedView, i2, i);
        int amountToScroll = amountToScroll(i, nextSelectedPositionForDirection);
        ArrowScrollFocusResult arrowScrollFocused = this.mItemsCanFocus ? arrowScrollFocused(i) : null;
        if (arrowScrollFocused != null) {
            nextSelectedPositionForDirection = arrowScrollFocused.getSelectedPosition();
            amountToScroll = arrowScrollFocused.getAmountToScroll();
        }
        boolean z = arrowScrollFocused != null;
        if (nextSelectedPositionForDirection != -1) {
            handleNewSelectionChange(selectedView, i, nextSelectedPositionForDirection, arrowScrollFocused != null);
            setSelectedPositionInt(nextSelectedPositionForDirection);
            setNextSelectedPositionInt(nextSelectedPositionForDirection);
            selectedView = getSelectedView();
            if (this.mItemsCanFocus && arrowScrollFocused == null && (focusedChild = getFocusedChild()) != null) {
                focusedChild.clearFocus();
            }
            checkSelectionChanged();
            i2 = nextSelectedPositionForDirection;
            z = true;
        }
        if (amountToScroll > 0) {
            if (i != 33) {
                amountToScroll = -amountToScroll;
            }
            scrollListItemsBy(amountToScroll);
            z = true;
        }
        if (this.mItemsCanFocus && arrowScrollFocused == null && selectedView != null && selectedView.hasFocus() && (findFocus = selectedView.findFocus()) != null && (!isViewAncestorOf(findFocus, this) || distanceToView(findFocus) > 0)) {
            findFocus.clearFocus();
        }
        if (nextSelectedPositionForDirection == -1 && selectedView != null && !isViewAncestorOf(selectedView, this)) {
            hideSelector();
            this.mResurrectToPosition = -1;
            selectedView = null;
        }
        if (!z) {
            return false;
        }
        if (selectedView != null) {
            positionSelectorLikeFocus(i2, selectedView);
            this.mSelectedTop = selectedView.getTop();
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        invokeOnItemScrollListener();
        return true;
    }

    private void handleNewSelectionChange(View view, int i, int i2, boolean z) {
        int i3;
        View view2;
        boolean z2;
        if (i2 == -1) {
            throw new IllegalArgumentException("newSelectedPosition needs to be valid");
        }
        int i4 = this.mSelectedPosition - this.mFirstPosition;
        int i5 = i2 - this.mFirstPosition;
        if (i == 33) {
            i3 = i4;
            view2 = view;
            view = getChildAt(i5);
            z2 = true;
        } else {
            View childAt = getChildAt(i5);
            i3 = i5;
            i5 = i4;
            view2 = childAt;
            z2 = false;
        }
        int childCount = getChildCount();
        if (view != null) {
            view.setSelected(!z && z2);
            measureAndAdjustDown(view, i5, childCount);
        }
        if (view2 != null) {
            view2.setSelected((z || z2) ? false : true);
            measureAndAdjustDown(view2, i3, childCount);
        }
    }

    private void measureAndAdjustDown(View view, int i, int i2) {
        int height = view.getHeight();
        measureItem(view);
        if (view.getMeasuredHeight() == height) {
            return;
        }
        relayoutMeasuredItem(view);
        int measuredHeight = view.getMeasuredHeight() - height;
        while (true) {
            i++;
            if (i >= i2) {
                return;
            } else {
                getChildAt(i).offsetTopAndBottom(measuredHeight);
            }
        }
    }

    private void measureItem(View view) {
        int makeSafeMeasureSpec;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-1, -2);
        }
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, this.mListPadding.left + this.mListPadding.right, layoutParams.width);
        int i = layoutParams.height;
        if (i > 0) {
            makeSafeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i, 1073741824);
        } else {
            makeSafeMeasureSpec = View.MeasureSpec.makeSafeMeasureSpec(getMeasuredHeight(), 0);
        }
        view.measure(childMeasureSpec, makeSafeMeasureSpec);
    }

    private void relayoutMeasuredItem(View view) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i = this.mListPadding.left;
        int top = view.getTop();
        view.layout(i, top, measuredWidth + i, measuredHeight + top);
    }

    private int getArrowScrollPreviewLength() {
        return Math.max(2, getVerticalFadingEdgeLength());
    }

    private int amountToScroll(int i, int i2) {
        int height = getHeight() - this.mListPadding.bottom;
        int i3 = this.mListPadding.top;
        int childCount = getChildCount();
        if (i == 130) {
            int i4 = childCount - 1;
            if (i2 != -1) {
                i4 = i2 - this.mFirstPosition;
            }
            while (childCount <= i4) {
                addViewBelow(getChildAt(childCount - 1), (this.mFirstPosition + childCount) - 1);
                childCount++;
            }
            int i5 = this.mFirstPosition + i4;
            View childAt = getChildAt(i4);
            int arrowScrollPreviewLength = i5 < this.mItemCount + (-1) ? height - getArrowScrollPreviewLength() : height;
            if (childAt.getBottom() <= arrowScrollPreviewLength) {
                return 0;
            }
            if (i2 != -1 && arrowScrollPreviewLength - childAt.getTop() >= getMaxScrollAmount()) {
                return 0;
            }
            int bottom = childAt.getBottom() - arrowScrollPreviewLength;
            if (this.mFirstPosition + childCount == this.mItemCount) {
                bottom = Math.min(bottom, getChildAt(childCount - 1).getBottom() - height);
            }
            return Math.min(bottom, getMaxScrollAmount());
        }
        int i6 = i2 != -1 ? i2 - this.mFirstPosition : 0;
        while (i6 < 0) {
            addViewAbove(getChildAt(0), this.mFirstPosition);
            this.mFirstPosition--;
            i6 = i2 - this.mFirstPosition;
        }
        int i7 = this.mFirstPosition + i6;
        View childAt2 = getChildAt(i6);
        int arrowScrollPreviewLength2 = i7 > 0 ? getArrowScrollPreviewLength() + i3 : i3;
        if (childAt2.getTop() >= arrowScrollPreviewLength2) {
            return 0;
        }
        if (i2 != -1 && childAt2.getBottom() - arrowScrollPreviewLength2 >= getMaxScrollAmount()) {
            return 0;
        }
        int top = arrowScrollPreviewLength2 - childAt2.getTop();
        if (this.mFirstPosition == 0) {
            top = Math.min(top, i3 - getChildAt(0).getTop());
        }
        return Math.min(top, getMaxScrollAmount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ArrowScrollFocusResult {
        private int mAmountToScroll;
        private int mSelectedPosition;

        private ArrowScrollFocusResult() {
        }

        void populate(int i, int i2) {
            this.mSelectedPosition = i;
            this.mAmountToScroll = i2;
        }

        public int getSelectedPosition() {
            return this.mSelectedPosition;
        }

        public int getAmountToScroll() {
            return this.mAmountToScroll;
        }
    }

    private int lookForSelectablePositionOnScreen(int i) {
        int childCount;
        int i2 = this.mFirstPosition;
        if (i == 130) {
            int i3 = this.mSelectedPosition != -1 ? this.mSelectedPosition + 1 : i2;
            if (i3 >= this.mAdapter.getCount()) {
                return -1;
            }
            if (i3 < i2) {
                i3 = i2;
            }
            int lastVisiblePosition = getLastVisiblePosition();
            ListAdapter adapter = getAdapter();
            while (i3 <= lastVisiblePosition) {
                if (adapter.isEnabled(i3) && getChildAt(i3 - i2).getVisibility() == 0) {
                    return i3;
                }
                i3++;
            }
        } else {
            int childCount2 = (getChildCount() + i2) - 1;
            if (this.mSelectedPosition != -1) {
                childCount = this.mSelectedPosition - 1;
            } else {
                childCount = (getChildCount() + i2) - 1;
            }
            if (childCount < 0 || childCount >= this.mAdapter.getCount()) {
                return -1;
            }
            if (childCount <= childCount2) {
                childCount2 = childCount;
            }
            ListAdapter adapter2 = getAdapter();
            while (childCount2 >= i2) {
                if (adapter2.isEnabled(childCount2) && getChildAt(childCount2 - i2).getVisibility() == 0) {
                    return childCount2;
                }
                childCount2--;
            }
        }
        return -1;
    }

    private ArrowScrollFocusResult arrowScrollFocused(int i) {
        View findNextFocusFromRect;
        int lookForSelectablePositionOnScreen;
        View selectedView = getSelectedView();
        if (selectedView != null && selectedView.hasFocus()) {
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocus(this, selectedView.findFocus(), i);
        } else {
            if (i == 130) {
                int arrowScrollPreviewLength = this.mListPadding.top + (this.mFirstPosition > 0 ? getArrowScrollPreviewLength() : 0);
                if (selectedView != null && selectedView.getTop() > arrowScrollPreviewLength) {
                    arrowScrollPreviewLength = selectedView.getTop();
                }
                this.mTempRect.set(0, arrowScrollPreviewLength, 0, arrowScrollPreviewLength);
            } else {
                int height = (getHeight() - this.mListPadding.bottom) - ((this.mFirstPosition + getChildCount()) - 1 < this.mItemCount ? getArrowScrollPreviewLength() : 0);
                if (selectedView != null && selectedView.getBottom() < height) {
                    height = selectedView.getBottom();
                }
                this.mTempRect.set(0, height, 0, height);
            }
            findNextFocusFromRect = FocusFinder.getInstance().findNextFocusFromRect(this, this.mTempRect, i);
        }
        if (findNextFocusFromRect != null) {
            int positionOfNewFocus = positionOfNewFocus(findNextFocusFromRect);
            if (this.mSelectedPosition != -1 && positionOfNewFocus != this.mSelectedPosition && (lookForSelectablePositionOnScreen = lookForSelectablePositionOnScreen(i)) != -1 && ((i == 130 && lookForSelectablePositionOnScreen < positionOfNewFocus) || (i == 33 && lookForSelectablePositionOnScreen > positionOfNewFocus))) {
                return null;
            }
            int amountToScrollToNewFocus = amountToScrollToNewFocus(i, findNextFocusFromRect, positionOfNewFocus);
            int maxScrollAmount = getMaxScrollAmount();
            if (amountToScrollToNewFocus < maxScrollAmount) {
                findNextFocusFromRect.requestFocus(i);
                this.mArrowScrollFocusResult.populate(positionOfNewFocus, amountToScrollToNewFocus);
                return this.mArrowScrollFocusResult;
            }
            if (distanceToView(findNextFocusFromRect) < maxScrollAmount) {
                findNextFocusFromRect.requestFocus(i);
                this.mArrowScrollFocusResult.populate(positionOfNewFocus, maxScrollAmount);
                return this.mArrowScrollFocusResult;
            }
        }
        return null;
    }

    private int positionOfNewFocus(View view) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (isViewAncestorOf(view, getChildAt(i))) {
                return this.mFirstPosition + i;
            }
        }
        throw new IllegalArgumentException("newFocus is not a child of any of the children of the list!");
    }

    private boolean isViewAncestorOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewAncestorOf((View) parent, view2);
    }

    private int amountToScrollToNewFocus(int i, View view, int i2) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        if (i == 33) {
            if (this.mTempRect.top < this.mListPadding.top) {
                int i3 = this.mListPadding.top - this.mTempRect.top;
                return i2 > 0 ? i3 + getArrowScrollPreviewLength() : i3;
            }
        } else {
            int height = getHeight() - this.mListPadding.bottom;
            if (this.mTempRect.bottom > height) {
                int i4 = this.mTempRect.bottom - height;
                return i2 < this.mItemCount + (-1) ? i4 + getArrowScrollPreviewLength() : i4;
            }
        }
        return 0;
    }

    private int distanceToView(View view) {
        view.getDrawingRect(this.mTempRect);
        offsetDescendantRectToMyCoords(view, this.mTempRect);
        int i = (this.mBottom - this.mTop) - this.mListPadding.bottom;
        if (this.mTempRect.bottom < this.mListPadding.top) {
            return this.mListPadding.top - this.mTempRect.bottom;
        }
        if (this.mTempRect.top > i) {
            return this.mTempRect.top - i;
        }
        return 0;
    }

    private void scrollListItemsBy(int i) {
        int i2;
        offsetChildrenTopAndBottom(i);
        int height = getHeight() - this.mListPadding.bottom;
        int i3 = this.mListPadding.top;
        AbsListView.RecycleBin recycleBin = this.mRecycler;
        if (i < 0) {
            int childCount = getChildCount();
            View childAt = getChildAt(childCount - 1);
            while (childAt.getBottom() < height && (this.mFirstPosition + childCount) - 1 < this.mItemCount - 1) {
                childAt = addViewBelow(childAt, i2);
                childCount++;
            }
            if (childAt.getBottom() < height) {
                offsetChildrenTopAndBottom(height - childAt.getBottom());
            }
            View childAt2 = getChildAt(0);
            while (childAt2.getBottom() < i3) {
                if (recycleBin.shouldRecycleViewType(((AbsListView.LayoutParams) childAt2.getLayoutParams()).viewType)) {
                    recycleBin.addScrapView(childAt2, this.mFirstPosition);
                }
                detachViewFromParent(childAt2);
                childAt2 = getChildAt(0);
                this.mFirstPosition++;
            }
        } else {
            View childAt3 = getChildAt(0);
            while (childAt3.getTop() > i3 && this.mFirstPosition > 0) {
                childAt3 = addViewAbove(childAt3, this.mFirstPosition);
                this.mFirstPosition--;
            }
            if (childAt3.getTop() > i3) {
                offsetChildrenTopAndBottom(i3 - childAt3.getTop());
            }
            int childCount2 = getChildCount() - 1;
            View childAt4 = getChildAt(childCount2);
            while (childAt4.getTop() > height) {
                if (recycleBin.shouldRecycleViewType(((AbsListView.LayoutParams) childAt4.getLayoutParams()).viewType)) {
                    recycleBin.addScrapView(childAt4, this.mFirstPosition + childCount2);
                }
                detachViewFromParent(childAt4);
                childCount2--;
                childAt4 = getChildAt(childCount2);
            }
        }
        recycleBin.fullyDetachScrapViews();
        removeUnusedFixedViews(this.mHeaderViewInfos);
        removeUnusedFixedViews(this.mFooterViewInfos);
    }

    private View addViewAbove(View view, int i) {
        int i2 = i - 1;
        View obtainView = obtainView(i2, this.mIsScrap);
        setupChild(obtainView, i2, view.getTop() - this.mDividerHeight, false, this.mListPadding.left, false, this.mIsScrap[0]);
        return obtainView;
    }

    private View addViewBelow(View view, int i) {
        int i2 = i + 1;
        View obtainView = obtainView(i2, this.mIsScrap);
        setupChild(obtainView, i2, view.getBottom() + this.mDividerHeight, true, this.mListPadding.left, false, this.mIsScrap[0]);
        return obtainView;
    }

    public void setItemsCanFocus(boolean z) {
        this.mItemsCanFocus = z;
        if (z) {
            return;
        }
        setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
    }

    public boolean getItemsCanFocus() {
        return this.mItemsCanFocus;
    }

    @Override // android.view.View
    public boolean isOpaque() {
        boolean z = (this.mCachingActive && this.mIsCacheColorOpaque && this.mDividerIsOpaque && hasOpaqueScrollbars()) || super.isOpaque();
        if (z) {
            int i = this.mListPadding != null ? this.mListPadding.top : this.mPaddingTop;
            View childAt = getChildAt(0);
            if (childAt == null || childAt.getTop() > i) {
                return false;
            }
            int height = getHeight() - (this.mListPadding != null ? this.mListPadding.bottom : this.mPaddingBottom);
            View childAt2 = getChildAt(getChildCount() - 1);
            if (childAt2 == null || childAt2.getBottom() < height) {
                return false;
            }
        }
        return z;
    }

    @Override // android.widget.AbsListView
    public void setCacheColorHint(int i) {
        boolean z = (i >>> 24) == 255;
        this.mIsCacheColorOpaque = z;
        if (z) {
            if (this.mDividerPaint == null) {
                this.mDividerPaint = new Paint();
            }
            this.mDividerPaint.setColor(i);
        }
        super.setCacheColorHint(i);
    }

    void drawOverscrollHeader(Canvas canvas, Drawable drawable, Rect rect) {
        int minimumHeight = drawable.getMinimumHeight();
        canvas.save();
        canvas.clipRect(rect);
        if (rect.bottom - rect.top < minimumHeight) {
            rect.top = rect.bottom - minimumHeight;
        }
        drawable.setBounds(rect);
        drawable.draw(canvas);
        canvas.restore();
    }

    void drawOverscrollFooter(Canvas canvas, Drawable drawable, Rect rect) {
        int minimumHeight = drawable.getMinimumHeight();
        canvas.save();
        canvas.clipRect(rect);
        if (rect.bottom - rect.top < minimumHeight) {
            rect.bottom = rect.top + minimumHeight;
        }
        drawable.setBounds(rect);
        drawable.draw(canvas);
        canvas.restore();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        ListAdapter listAdapter;
        int i;
        int i2;
        int i3;
        Drawable drawable;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z;
        ListAdapter listAdapter2;
        Paint paint;
        if (this.mCachingStarted) {
            this.mCachingActive = true;
        }
        int i9 = this.mDividerHeight;
        Drawable drawable2 = this.mOverScrollHeader;
        Drawable drawable3 = this.mOverScrollFooter;
        int i10 = drawable2 != null ? 1 : 0;
        boolean z2 = drawable3 != null;
        boolean z3 = i9 > 0 && this.mDivider != null;
        if (z3 || i10 != 0 || z2) {
            Rect rect = this.mTempRect;
            rect.left = this.mPaddingLeft;
            rect.right = (this.mRight - this.mLeft) - this.mPaddingRight;
            int childCount = getChildCount();
            int headerViewsCount = getHeaderViewsCount();
            int i11 = this.mItemCount;
            int size = i11 - this.mFooterViewInfos.size();
            boolean z4 = this.mHeaderDividersEnabled;
            boolean z5 = this.mFooterDividersEnabled;
            int i12 = this.mFirstPosition;
            boolean z6 = this.mAreAllItemsSelectable;
            ListAdapter listAdapter3 = this.mAdapter;
            boolean z7 = isOpaque() && !super.isOpaque();
            if (z7) {
                i = i11;
                if (this.mDividerPaint == null && this.mIsCacheColorOpaque) {
                    this.mDividerPaint = new Paint();
                    listAdapter = listAdapter3;
                    this.mDividerPaint.setColor(getCacheColorHint());
                } else {
                    listAdapter = listAdapter3;
                }
            } else {
                listAdapter = listAdapter3;
                i = i11;
            }
            Paint paint2 = this.mDividerPaint;
            if ((this.mGroupFlags & 34) == 34) {
                int i13 = this.mListPadding.top;
                i2 = this.mListPadding.bottom;
                i3 = i13;
            } else {
                i2 = 0;
                i3 = 0;
            }
            boolean z8 = z2;
            int i14 = ((this.mBottom - this.mTop) - i2) + this.mScrollY;
            if (!this.mStackFromBottom) {
                int i15 = this.mScrollY;
                if (childCount > 0 && i15 < 0) {
                    if (i10 != 0) {
                        rect.bottom = 0;
                        rect.top = i15;
                        drawOverscrollHeader(canvas, drawable2, rect);
                    } else if (z3) {
                        rect.bottom = 0;
                        rect.top = -i9;
                        drawDivider(canvas, rect, -1);
                    }
                }
                int i16 = 0;
                int i17 = 0;
                while (i16 < childCount) {
                    int i18 = i12 + i16;
                    boolean z9 = i18 < headerViewsCount;
                    boolean z10 = i18 >= size;
                    if ((z4 || !z9) && (z5 || !z10)) {
                        i17 = getChildAt(i16).getBottom();
                        i7 = i12;
                        boolean z11 = i16 == childCount + (-1);
                        if (!z3 || i17 >= i14 || (z8 && z11)) {
                            i8 = i14;
                        } else {
                            i8 = i14;
                            int i19 = i18 + 1;
                            z = z3;
                            listAdapter2 = listAdapter;
                            if (listAdapter2.isEnabled(i18) && ((z4 || (!z9 && i19 >= headerViewsCount)) && (z11 || (listAdapter2.isEnabled(i19) && (z5 || (!z10 && i19 < size)))))) {
                                rect.top = i17;
                                rect.bottom = i17 + i9;
                                drawDivider(canvas, rect, i16);
                            } else if (z7) {
                                rect.top = i17;
                                rect.bottom = i17 + i9;
                                paint = paint2;
                                canvas.drawRect(rect, paint);
                                i16++;
                                paint2 = paint;
                                listAdapter = listAdapter2;
                                i12 = i7;
                                i14 = i8;
                                z3 = z;
                            }
                            paint = paint2;
                            i16++;
                            paint2 = paint;
                            listAdapter = listAdapter2;
                            i12 = i7;
                            i14 = i8;
                            z3 = z;
                        }
                    } else {
                        i8 = i14;
                        i7 = i12;
                    }
                    z = z3;
                    listAdapter2 = listAdapter;
                    paint = paint2;
                    i16++;
                    paint2 = paint;
                    listAdapter = listAdapter2;
                    i12 = i7;
                    i14 = i8;
                    z3 = z;
                }
                int i20 = i12;
                int i21 = this.mBottom + this.mScrollY;
                if (z8 && i20 + childCount == i && i21 > i17) {
                    rect.top = i17;
                    rect.bottom = i21;
                    drawOverscrollFooter(canvas, drawable3, rect);
                }
            } else {
                boolean z12 = z3;
                Drawable drawable4 = drawable3;
                ListAdapter listAdapter4 = listAdapter;
                int i22 = this.mScrollY;
                if (childCount > 0 && i10 != 0) {
                    rect.top = i22;
                    rect.bottom = getChildAt(0).getTop();
                    drawOverscrollHeader(canvas, drawable2, rect);
                }
                int i23 = i10;
                while (i23 < childCount) {
                    int i24 = i12 + i23;
                    boolean z13 = i24 < headerViewsCount;
                    boolean z14 = i24 >= size;
                    if ((z4 || !z13) && (z5 || !z14)) {
                        drawable = drawable4;
                        int top = getChildAt(i23).getTop();
                        if (z12) {
                            i4 = i22;
                            i5 = i3;
                            if (top > i5) {
                                boolean z15 = i23 == i10;
                                i6 = i10;
                                int i25 = i24 - 1;
                                if (listAdapter4.isEnabled(i24) && ((z4 || (!z13 && i25 >= headerViewsCount)) && (z15 || (listAdapter4.isEnabled(i25) && (z5 || (!z14 && i25 < size)))))) {
                                    rect.top = top - i9;
                                    rect.bottom = top;
                                    drawDivider(canvas, rect, i23 - 1);
                                } else if (z7) {
                                    rect.top = top - i9;
                                    rect.bottom = top;
                                    canvas.drawRect(rect, paint2);
                                }
                            } else {
                                i6 = i10;
                            }
                            i23++;
                            i3 = i5;
                            drawable4 = drawable;
                            i22 = i4;
                            i10 = i6;
                        }
                    } else {
                        drawable = drawable4;
                    }
                    i6 = i10;
                    i4 = i22;
                    i5 = i3;
                    i23++;
                    i3 = i5;
                    drawable4 = drawable;
                    i22 = i4;
                    i10 = i6;
                }
                Drawable drawable5 = drawable4;
                int i26 = i22;
                if (childCount > 0 && i26 > 0) {
                    if (z8) {
                        int i27 = this.mBottom;
                        rect.top = i27;
                        rect.bottom = i27 + i26;
                        drawOverscrollFooter(canvas, drawable5, rect);
                    } else if (z12) {
                        rect.top = i14;
                        rect.bottom = i14 + i9;
                        drawDivider(canvas, rect, -1);
                    }
                }
            }
        }
        super.dispatchDraw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild = super.drawChild(canvas, view, j);
        if (this.mCachingActive && view.mCachingFailed) {
            this.mCachingActive = false;
        }
        return drawChild;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void drawDivider(Canvas canvas, Rect rect, int i) {
        Drawable drawable = this.mDivider;
        drawable.setBounds(rect);
        drawable.draw(canvas);
    }

    public Drawable getDivider() {
        return this.mDivider;
    }

    public void setDivider(Drawable drawable) {
        if (drawable != null) {
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerHeight = 0;
        }
        this.mDivider = drawable;
        this.mDividerIsOpaque = drawable == null || drawable.getOpacity() == -1;
        requestLayout();
        invalidate();
    }

    public int getDividerHeight() {
        return this.mDividerHeight;
    }

    public void setDividerHeight(int i) {
        this.mDividerHeight = i;
        requestLayout();
        invalidate();
    }

    public void setHeaderDividersEnabled(boolean z) {
        this.mHeaderDividersEnabled = z;
        invalidate();
    }

    public boolean areHeaderDividersEnabled() {
        return this.mHeaderDividersEnabled;
    }

    public void setFooterDividersEnabled(boolean z) {
        this.mFooterDividersEnabled = z;
        invalidate();
    }

    public boolean areFooterDividersEnabled() {
        return this.mFooterDividersEnabled;
    }

    public void setOverscrollHeader(Drawable drawable) {
        this.mOverScrollHeader = drawable;
        if (this.mScrollY < 0) {
            invalidate();
        }
    }

    public Drawable getOverscrollHeader() {
        return this.mOverScrollHeader;
    }

    public void setOverscrollFooter(Drawable drawable) {
        this.mOverScrollFooter = drawable;
        invalidate();
    }

    public Drawable getOverscrollFooter() {
        return this.mOverScrollFooter;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        ListAdapter listAdapter = this.mAdapter;
        int i2 = 0;
        int i3 = -1;
        if (listAdapter != null && z && rect != null) {
            rect.offset(this.mScrollX, this.mScrollY);
            if (listAdapter.getCount() < getChildCount() + this.mFirstPosition) {
                this.mLayoutMode = 0;
                layoutChildren();
            }
            Rect rect2 = this.mTempRect;
            int childCount = getChildCount();
            int i4 = this.mFirstPosition;
            int i5 = Integer.MAX_VALUE;
            int i6 = 0;
            while (i2 < childCount) {
                if (listAdapter.isEnabled(i4 + i2)) {
                    View childAt = getChildAt(i2);
                    childAt.getDrawingRect(rect2);
                    offsetDescendantRectToMyCoords(childAt, rect2);
                    int distance = getDistance(rect, rect2, i);
                    if (distance < i5) {
                        i6 = childAt.getTop();
                        i3 = i2;
                        i5 = distance;
                    }
                }
                i2++;
            }
            i2 = i6;
        }
        if (i3 >= 0) {
            setSelectionFromTop(i3 + this.mFirstPosition, i2);
        } else {
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        int childCount = getChildCount();
        if (childCount > 0) {
            for (int i = 0; i < childCount; i++) {
                addHeaderView(getChildAt(i));
            }
            removeAllViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public <T extends View> T findViewTraversal(int i) {
        T t = (T) super.findViewTraversal(i);
        if (t == null) {
            T t2 = (T) findViewInHeadersOrFooters(this.mHeaderViewInfos, i);
            if (t2 != null) {
                return t2;
            }
            t = (T) findViewInHeadersOrFooters(this.mFooterViewInfos, i);
            if (t != null) {
                return t;
            }
        }
        return t;
    }

    View findViewInHeadersOrFooters(ArrayList<FixedViewInfo> arrayList, int i) {
        View findViewById;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = arrayList.get(i2).view;
            if (!view.isRootNamespace() && (findViewById = view.findViewById(i)) != null) {
                return findViewById;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public <T extends View> T findViewWithTagTraversal(Object obj) {
        T t = (T) super.findViewWithTagTraversal(obj);
        if (t == null) {
            T t2 = (T) findViewWithTagInHeadersOrFooters(this.mHeaderViewInfos, obj);
            if (t2 != null) {
                return t2;
            }
            t = (T) findViewWithTagInHeadersOrFooters(this.mFooterViewInfos, obj);
            if (t != null) {
                return t;
            }
        }
        return t;
    }

    View findViewWithTagInHeadersOrFooters(ArrayList<FixedViewInfo> arrayList, Object obj) {
        View findViewWithTag;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i).view;
            if (!view.isRootNamespace() && (findViewWithTag = view.findViewWithTag(obj)) != null) {
                return findViewWithTag;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public <T extends View> T findViewByPredicateTraversal(Predicate<View> predicate, View view) {
        T t = (T) super.findViewByPredicateTraversal(predicate, view);
        if (t == null) {
            T t2 = (T) findViewByPredicateInHeadersOrFooters(this.mHeaderViewInfos, predicate, view);
            if (t2 != null) {
                return t2;
            }
            t = (T) findViewByPredicateInHeadersOrFooters(this.mFooterViewInfos, predicate, view);
            if (t != null) {
                return t;
            }
        }
        return t;
    }

    View findViewByPredicateInHeadersOrFooters(ArrayList<FixedViewInfo> arrayList, Predicate<View> predicate, View view) {
        View findViewByPredicate;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view2 = arrayList.get(i).view;
            if (view2 != view && !view2.isRootNamespace() && (findViewByPredicate = view2.findViewByPredicate(predicate)) != null) {
                return findViewByPredicate;
            }
        }
        return null;
    }

    @Deprecated
    public long[] getCheckItemIds() {
        if (this.mAdapter != null && this.mAdapter.hasStableIds()) {
            return getCheckedItemIds();
        }
        if (this.mChoiceMode != 0 && this.mCheckStates != null && this.mAdapter != null) {
            SparseBooleanArray sparseBooleanArray = this.mCheckStates;
            int size = sparseBooleanArray.size();
            long[] jArr = new long[size];
            ListAdapter listAdapter = this.mAdapter;
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                if (sparseBooleanArray.valueAt(i2)) {
                    jArr[i] = listAdapter.getItemId(sparseBooleanArray.keyAt(i2));
                    i++;
                }
            }
            if (i == size) {
                return jArr;
            }
            long[] jArr2 = new long[i];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            return jArr2;
        }
        return new long[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.widget.AbsListView
    public int getHeightForPosition(int i) {
        int heightForPosition = super.getHeightForPosition(i);
        return shouldAdjustHeightForDivider(i) ? heightForPosition + this.mDividerHeight : heightForPosition;
    }

    private boolean shouldAdjustHeightForDivider(int i) {
        int i2 = this.mDividerHeight;
        Drawable drawable = this.mOverScrollHeader;
        Drawable drawable2 = this.mOverScrollFooter;
        int i3 = drawable != null ? 1 : 0;
        boolean z = drawable2 != null;
        if (i2 > 0 && this.mDivider != null) {
            boolean z2 = isOpaque() && !super.isOpaque();
            int i4 = this.mItemCount;
            int headerViewsCount = getHeaderViewsCount();
            int size = i4 - this.mFooterViewInfos.size();
            boolean z3 = i < headerViewsCount;
            boolean z4 = i >= size;
            boolean z5 = this.mHeaderDividersEnabled;
            boolean z6 = this.mFooterDividersEnabled;
            if ((z5 || !z3) && (z6 || !z4)) {
                ListAdapter listAdapter = this.mAdapter;
                if (this.mStackFromBottom) {
                    boolean z7 = i == i3;
                    if (!z7) {
                        int i5 = i - 1;
                        if ((listAdapter.isEnabled(i) && ((z5 || (!z3 && i5 >= headerViewsCount)) && (z7 || (listAdapter.isEnabled(i5) && (z6 || (!z4 && i5 < size)))))) || z2) {
                            return true;
                        }
                    }
                } else {
                    boolean z8 = i == i4 - 1;
                    if (!z || !z8) {
                        int i6 = i + 1;
                        if ((listAdapter.isEnabled(i) && ((z5 || (!z3 && i6 >= headerViewsCount)) && (z8 || (listAdapter.isEnabled(i6) && (z6 || (!z4 && i6 < size)))))) || z2) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ListView.class.getName();
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        int count = getCount();
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(count, 1, false, getSelectionModeForAccessibility()));
        if (count > 0) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION);
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean performAccessibilityActionInternal(int i, Bundle bundle) {
        if (super.performAccessibilityActionInternal(i, bundle)) {
            return true;
        }
        if (i != 16908343) {
            return false;
        }
        int i2 = bundle.getInt(AccessibilityNodeInfo.ACTION_ARGUMENT_ROW_INT, -1);
        int min = Math.min(i2, getCount() - 1);
        if (i2 < 0) {
            return false;
        }
        smoothScrollToPosition(min);
        return true;
    }

    @Override // android.widget.AbsListView
    public void onInitializeAccessibilityNodeInfoForItem(View view, int i, AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoForItem(view, i, accessibilityNodeInfo);
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, 1, 0, 1, layoutParams != null && layoutParams.viewType == -2, isItemChecked(i)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("recycleOnMeasure", recycleOnMeasure());
    }

    protected HeaderViewListAdapter wrapHeaderListAdapterInternal(ArrayList<FixedViewInfo> arrayList, ArrayList<FixedViewInfo> arrayList2, ListAdapter listAdapter) {
        return new HeaderViewListAdapter(arrayList, arrayList2, listAdapter);
    }

    protected void wrapHeaderListAdapterInternal() {
        this.mAdapter = wrapHeaderListAdapterInternal(this.mHeaderViewInfos, this.mFooterViewInfos, this.mAdapter);
    }

    protected void dispatchDataSetObserverOnChangedInternal() {
        if (this.mDataSetObserver != null) {
            this.mDataSetObserver.onChanged();
        }
    }
}
