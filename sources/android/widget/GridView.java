package android.widget;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.MathUtils;
import android.view.Gravity;
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
import android.view.animation.GridLayoutAnimationController;
import android.widget.AbsListView;
import android.widget.RemoteViews;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RemoteViews.RemoteView
/* loaded from: /home/user/work/dex/classes2.dex */
public class GridView extends AbsListView {
    public static final int AUTO_FIT = -1;
    public static final int NO_STRETCH = 0;
    public static final int STRETCH_COLUMN_WIDTH = 2;
    public static final int STRETCH_SPACING = 1;
    public static final int STRETCH_SPACING_UNIFORM = 3;
    private int mColumnWidth;
    private int mGravity;
    private int mHorizontalSpacing;
    private int mNumColumns;
    private View mReferenceView;
    private View mReferenceViewInSelectedRow;
    private int mRequestedColumnWidth;
    private int mRequestedHorizontalSpacing;
    private int mRequestedNumColumns;
    private int mStretchMode;
    private final Rect mTempRect;
    private int mVerticalSpacing;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface StretchMode {
    }

    private int getTopSelectionPixel(int i, int i2, int i3) {
        return i3 > 0 ? i + i2 : i;
    }

    public GridView(Context context) {
        this(context, null);
    }

    public GridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.gridViewStyle);
    }

    public GridView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public GridView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mNumColumns = -1;
        this.mHorizontalSpacing = 0;
        this.mVerticalSpacing = 0;
        this.mStretchMode = 2;
        this.mReferenceView = null;
        this.mReferenceViewInSelectedRow = null;
        this.mGravity = Gravity.START;
        this.mTempRect = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.GridView, i, i2);
        setHorizontalSpacing(obtainStyledAttributes.getDimensionPixelOffset(1, 0));
        setVerticalSpacing(obtainStyledAttributes.getDimensionPixelOffset(2, 0));
        int i3 = obtainStyledAttributes.getInt(3, 2);
        if (i3 >= 0) {
            setStretchMode(i3);
        }
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(4, -1);
        if (dimensionPixelOffset > 0) {
            setColumnWidth(dimensionPixelOffset);
        }
        setNumColumns(obtainStyledAttributes.getInt(5, 1));
        int i4 = obtainStyledAttributes.getInt(0, -1);
        if (i4 >= 0) {
            setGravity(i4);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.AdapterView
    public ListAdapter getAdapter() {
        return this.mAdapter;
    }

    @Override // android.widget.AbsListView
    @RemotableViewMethod(asyncImpl = "setRemoteViewsAdapterAsync")
    public void setRemoteViewsAdapter(Intent intent) {
        super.setRemoteViewsAdapter(intent);
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        int lookForSelectablePosition;
        if (this.mAdapter != null && this.mDataSetObserver != null) {
            this.mAdapter.unregisterDataSetObserver(this.mDataSetObserver);
        }
        resetList();
        this.mRecycler.clear();
        this.mAdapter = listAdapter;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        super.setAdapter(listAdapter);
        if (this.mAdapter != null) {
            this.mOldItemCount = this.mItemCount;
            this.mItemCount = this.mAdapter.getCount();
            this.mDataChanged = true;
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
            checkSelectionChanged();
        } else {
            checkFocus();
            checkSelectionChanged();
        }
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.widget.AdapterView
    public int lookForSelectablePosition(int i, boolean z) {
        if (this.mAdapter == null || isInTouchMode() || i < 0 || i >= this.mItemCount) {
            return -1;
        }
        return i;
    }

    @Override // android.widget.AbsListView
    void fillGap(boolean z) {
        int i = this.mNumColumns;
        int i2 = this.mVerticalSpacing;
        int childCount = getChildCount();
        if (z) {
            int listPaddingTop = (this.mGroupFlags & 34) == 34 ? getListPaddingTop() : 0;
            if (childCount > 0) {
                listPaddingTop = getChildAt(childCount - 1).getBottom() + i2;
            }
            int i3 = this.mFirstPosition + childCount;
            if (this.mStackFromBottom) {
                i3 += i - 1;
            }
            fillDown(i3, listPaddingTop);
            correctTooHigh(i, i2, getChildCount());
            return;
        }
        int top = childCount > 0 ? getChildAt(0).getTop() - i2 : getHeight() - ((this.mGroupFlags & 34) == 34 ? getListPaddingBottom() : 0);
        int i4 = this.mFirstPosition;
        fillUp(!this.mStackFromBottom ? i4 - i : i4 - 1, top);
        correctTooLow(i, i2, getChildCount());
    }

    private View fillDown(int i, int i2) {
        int i3 = this.mBottom - this.mTop;
        View view = null;
        if ((this.mGroupFlags & 34) == 34) {
            i3 -= this.mListPadding.bottom;
        }
        while (i2 < i3 && i < this.mItemCount) {
            View makeRow = makeRow(i, i2, true);
            if (makeRow != null) {
                view = makeRow;
            }
            i2 = this.mReferenceView.getBottom() + this.mVerticalSpacing;
            i += this.mNumColumns;
        }
        setVisibleRangeHint(this.mFirstPosition, (this.mFirstPosition + getChildCount()) - 1);
        return view;
    }

    private View makeRow(int i, int i2, boolean z) {
        int i3;
        int i4;
        int i5;
        int i6 = this.mColumnWidth;
        int i7 = this.mHorizontalSpacing;
        boolean isLayoutRtl = isLayoutRtl();
        boolean z2 = false;
        if (isLayoutRtl) {
            i3 = ((getWidth() - this.mListPadding.right) - i6) - (this.mStretchMode == 3 ? i7 : 0);
        } else {
            i3 = this.mListPadding.left + (this.mStretchMode == 3 ? i7 : 0);
        }
        if (!this.mStackFromBottom) {
            i4 = Math.min(i + this.mNumColumns, this.mItemCount);
            i5 = i;
        } else {
            i4 = i + 1;
            int max = Math.max(0, (i - this.mNumColumns) + 1);
            int i8 = i4 - max;
            if (i8 < this.mNumColumns) {
                i3 += (isLayoutRtl ? -1 : 1) * (this.mNumColumns - i8) * (i6 + i7);
            }
            i5 = max;
        }
        int i9 = i4;
        boolean shouldShowSelector = shouldShowSelector();
        boolean z3 = touchModeDrawsInPressedState();
        int i10 = this.mSelectedPosition;
        int i11 = isLayoutRtl ? -1 : 1;
        View view = null;
        View view2 = null;
        int i12 = i3;
        int i13 = i5;
        while (i13 < i9) {
            boolean z4 = i13 == i10 ? true : z2;
            int i14 = i13;
            int i15 = i10;
            view = makeAndAddView(i13, i2, z, i12, z4, z ? -1 : i13 - i5);
            i12 += i11 * i6;
            if (i14 < i9 - 1) {
                i12 += i11 * i7;
            }
            if (z4 && (shouldShowSelector || z3)) {
                view2 = view;
            }
            i13 = i14 + 1;
            i10 = i15;
            z2 = false;
        }
        this.mReferenceView = view;
        if (view2 != null) {
            this.mReferenceViewInSelectedRow = this.mReferenceView;
        }
        return view2;
    }

    private View fillUp(int i, int i2) {
        View view = null;
        int i3 = (this.mGroupFlags & 34) == 34 ? this.mListPadding.top : 0;
        while (i2 > i3 && i >= 0) {
            View makeRow = makeRow(i, i2, false);
            if (makeRow != null) {
                view = makeRow;
            }
            i2 = this.mReferenceView.getTop() - this.mVerticalSpacing;
            this.mFirstPosition = i;
            i -= this.mNumColumns;
        }
        if (this.mStackFromBottom) {
            this.mFirstPosition = Math.max(0, i + 1);
        }
        setVisibleRangeHint(this.mFirstPosition, (this.mFirstPosition + getChildCount()) - 1);
        return view;
    }

    private View fillFromTop(int i) {
        this.mFirstPosition = Math.min(this.mFirstPosition, this.mSelectedPosition);
        this.mFirstPosition = Math.min(this.mFirstPosition, this.mItemCount - 1);
        if (this.mFirstPosition < 0) {
            this.mFirstPosition = 0;
        }
        this.mFirstPosition -= this.mFirstPosition % this.mNumColumns;
        return fillDown(this.mFirstPosition, i);
    }

    private View fillFromBottom(int i, int i2) {
        int min = (this.mItemCount - 1) - Math.min(Math.max(i, this.mSelectedPosition), this.mItemCount - 1);
        return fillUp((this.mItemCount - 1) - (min - (min % this.mNumColumns)), i2);
    }

    private View fillSelection(int i, int i2) {
        int i3;
        int max;
        int reconcileSelectedPosition = reconcileSelectedPosition();
        int i4 = this.mNumColumns;
        int i5 = this.mVerticalSpacing;
        if (!this.mStackFromBottom) {
            max = reconcileSelectedPosition - (reconcileSelectedPosition % i4);
            i3 = -1;
        } else {
            int i6 = (this.mItemCount - 1) - reconcileSelectedPosition;
            i3 = (this.mItemCount - 1) - (i6 - (i6 % i4));
            max = Math.max(0, (i3 - i4) + 1);
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        View makeRow = makeRow(this.mStackFromBottom ? i3 : max, getTopSelectionPixel(i, verticalFadingEdgeLength, max), true);
        this.mFirstPosition = max;
        View view = this.mReferenceView;
        if (!this.mStackFromBottom) {
            fillDown(max + i4, view.getBottom() + i5);
            pinToBottom(i2);
            fillUp(max - i4, view.getTop() - i5);
            adjustViewsUpOrDown();
        } else {
            offsetChildrenTopAndBottom(getBottomSelectionPixel(i2, verticalFadingEdgeLength, i4, max) - view.getBottom());
            fillUp(max - 1, view.getTop() - i5);
            pinToTop(i);
            fillDown(i3 + i4, view.getBottom() + i5);
            adjustViewsUpOrDown();
        }
        return makeRow;
    }

    private void pinToTop(int i) {
        int top;
        if (this.mFirstPosition != 0 || (top = i - getChildAt(0).getTop()) >= 0) {
            return;
        }
        offsetChildrenTopAndBottom(top);
    }

    private void pinToBottom(int i) {
        int bottom;
        int childCount = getChildCount();
        if (this.mFirstPosition + childCount != this.mItemCount || (bottom = i - getChildAt(childCount - 1).getBottom()) <= 0) {
            return;
        }
        offsetChildrenTopAndBottom(bottom);
    }

    @Override // android.widget.AbsListView
    int findMotionRow(int i) {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return -1;
        }
        int i2 = this.mNumColumns;
        if (this.mStackFromBottom) {
            for (int i3 = childCount - 1; i3 >= 0; i3 -= i2) {
                if (i >= getChildAt(i3).getTop()) {
                    return this.mFirstPosition + i3;
                }
            }
            return -1;
        }
        for (int i4 = 0; i4 < childCount; i4 += i2) {
            if (i <= getChildAt(i4).getBottom()) {
                return this.mFirstPosition + i4;
            }
        }
        return -1;
    }

    private View fillSpecific(int i, int i2) {
        int i3;
        int max;
        View fillDown;
        View fillUp;
        int i4 = this.mNumColumns;
        if (!this.mStackFromBottom) {
            max = i - (i % i4);
            i3 = -1;
        } else {
            int i5 = (this.mItemCount - 1) - i;
            i3 = (this.mItemCount - 1) - (i5 - (i5 % i4));
            max = Math.max(0, (i3 - i4) + 1);
        }
        View makeRow = makeRow(this.mStackFromBottom ? i3 : max, i2, true);
        this.mFirstPosition = max;
        View view = this.mReferenceView;
        if (view == null) {
            return null;
        }
        int i6 = this.mVerticalSpacing;
        if (!this.mStackFromBottom) {
            View fillUp2 = fillUp(max - i4, view.getTop() - i6);
            adjustViewsUpOrDown();
            View fillDown2 = fillDown(max + i4, view.getBottom() + i6);
            int childCount = getChildCount();
            if (childCount > 0) {
                correctTooHigh(i4, i6, childCount);
            }
            fillDown = fillDown2;
            fillUp = fillUp2;
        } else {
            fillDown = fillDown(i3 + i4, view.getBottom() + i6);
            adjustViewsUpOrDown();
            fillUp = fillUp(max - 1, view.getTop() - i6);
            int childCount2 = getChildCount();
            if (childCount2 > 0) {
                correctTooLow(i4, i6, childCount2);
            }
        }
        return makeRow != null ? makeRow : fillUp != null ? fillUp : fillDown;
    }

    private void correctTooHigh(int i, int i2, int i3) {
        if ((this.mFirstPosition + i3) - 1 != this.mItemCount - 1 || i3 <= 0) {
            return;
        }
        int bottom = ((this.mBottom - this.mTop) - this.mListPadding.bottom) - getChildAt(i3 - 1).getBottom();
        View childAt = getChildAt(0);
        int top = childAt.getTop();
        if (bottom > 0) {
            if (this.mFirstPosition > 0 || top < this.mListPadding.top) {
                if (this.mFirstPosition == 0) {
                    bottom = Math.min(bottom, this.mListPadding.top - top);
                }
                offsetChildrenTopAndBottom(bottom);
                if (this.mFirstPosition > 0) {
                    int i4 = this.mFirstPosition;
                    if (this.mStackFromBottom) {
                        i = 1;
                    }
                    fillUp(i4 - i, childAt.getTop() - i2);
                    adjustViewsUpOrDown();
                }
            }
        }
    }

    private void correctTooLow(int i, int i2, int i3) {
        if (this.mFirstPosition != 0 || i3 <= 0) {
            return;
        }
        int top = getChildAt(0).getTop();
        int i4 = this.mListPadding.top;
        int i5 = (this.mBottom - this.mTop) - this.mListPadding.bottom;
        int i6 = top - i4;
        View childAt = getChildAt(i3 - 1);
        int bottom = childAt.getBottom();
        int i7 = (this.mFirstPosition + i3) - 1;
        if (i6 > 0) {
            if (i7 < this.mItemCount - 1 || bottom > i5) {
                if (i7 == this.mItemCount - 1) {
                    i6 = Math.min(i6, bottom - i5);
                }
                offsetChildrenTopAndBottom(-i6);
                if (i7 < this.mItemCount - 1) {
                    if (!this.mStackFromBottom) {
                        i = 1;
                    }
                    fillDown(i7 + i, childAt.getBottom() + i2);
                    adjustViewsUpOrDown();
                }
            }
        }
    }

    private View fillFromSelection(int i, int i2, int i3) {
        int i4;
        int max;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i5 = this.mSelectedPosition;
        int i6 = this.mNumColumns;
        int i7 = this.mVerticalSpacing;
        if (!this.mStackFromBottom) {
            max = i5 - (i5 % i6);
            i4 = -1;
        } else {
            int i8 = (this.mItemCount - 1) - i5;
            i4 = (this.mItemCount - 1) - (i8 - (i8 % i6));
            max = Math.max(0, (i4 - i6) + 1);
        }
        int topSelectionPixel = getTopSelectionPixel(i2, verticalFadingEdgeLength, max);
        int bottomSelectionPixel = getBottomSelectionPixel(i3, verticalFadingEdgeLength, i6, max);
        View makeRow = makeRow(this.mStackFromBottom ? i4 : max, i, true);
        this.mFirstPosition = max;
        View view = this.mReferenceView;
        adjustForTopFadingEdge(view, topSelectionPixel, bottomSelectionPixel);
        adjustForBottomFadingEdge(view, topSelectionPixel, bottomSelectionPixel);
        if (!this.mStackFromBottom) {
            fillUp(max - i6, view.getTop() - i7);
            adjustViewsUpOrDown();
            fillDown(max + i6, view.getBottom() + i7);
        } else {
            fillDown(i4 + i6, view.getBottom() + i7);
            adjustViewsUpOrDown();
            fillUp(max - 1, view.getTop() - i7);
        }
        return makeRow;
    }

    private int getBottomSelectionPixel(int i, int i2, int i3, int i4) {
        return (i4 + i3) + (-1) < this.mItemCount + (-1) ? i - i2 : i;
    }

    private void adjustForBottomFadingEdge(View view, int i, int i2) {
        if (view.getBottom() > i2) {
            offsetChildrenTopAndBottom(-Math.min(view.getTop() - i, view.getBottom() - i2));
        }
    }

    private void adjustForTopFadingEdge(View view, int i, int i2) {
        if (view.getTop() < i) {
            offsetChildrenTopAndBottom(Math.min(i - view.getTop(), i2 - view.getBottom()));
        }
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

    private View moveSelection(int i, int i2, int i3) {
        int i4;
        int max;
        int i5;
        View makeRow;
        View view;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int i6 = this.mSelectedPosition;
        int i7 = this.mNumColumns;
        int i8 = this.mVerticalSpacing;
        if (!this.mStackFromBottom) {
            int i9 = i6 - i;
            max = i9 - (i9 % i7);
            i5 = i6 - (i6 % i7);
            i4 = -1;
        } else {
            int i10 = (this.mItemCount - 1) - i6;
            i4 = (this.mItemCount - 1) - (i10 - (i10 % i7));
            int max2 = Math.max(0, (i4 - i7) + 1);
            int i11 = (this.mItemCount - 1) - (i6 - i);
            max = Math.max(0, (((this.mItemCount - 1) - (i11 - (i11 % i7))) - i7) + 1);
            i5 = max2;
        }
        int i12 = i5 - max;
        int topSelectionPixel = getTopSelectionPixel(i2, verticalFadingEdgeLength, i5);
        int bottomSelectionPixel = getBottomSelectionPixel(i3, verticalFadingEdgeLength, i7, i5);
        this.mFirstPosition = i5;
        if (i12 > 0) {
            makeRow = makeRow(this.mStackFromBottom ? i4 : i5, (this.mReferenceViewInSelectedRow != null ? this.mReferenceViewInSelectedRow.getBottom() : 0) + i8, true);
            view = this.mReferenceView;
            adjustForBottomFadingEdge(view, topSelectionPixel, bottomSelectionPixel);
        } else if (i12 < 0) {
            makeRow = makeRow(this.mStackFromBottom ? i4 : i5, (this.mReferenceViewInSelectedRow == null ? 0 : this.mReferenceViewInSelectedRow.getTop()) - i8, false);
            view = this.mReferenceView;
            adjustForTopFadingEdge(view, topSelectionPixel, bottomSelectionPixel);
        } else {
            makeRow = makeRow(this.mStackFromBottom ? i4 : i5, this.mReferenceViewInSelectedRow != null ? this.mReferenceViewInSelectedRow.getTop() : 0, true);
            view = this.mReferenceView;
        }
        if (!this.mStackFromBottom) {
            fillUp(i5 - i7, view.getTop() - i8);
            adjustViewsUpOrDown();
            fillDown(i5 + i7, view.getBottom() + i8);
        } else {
            fillDown(i4 + i7, view.getBottom() + i8);
            adjustViewsUpOrDown();
            fillUp(i5 - 1, view.getTop() - i8);
        }
        return makeRow;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private boolean determineColumns(int i) {
        int i2 = this.mRequestedHorizontalSpacing;
        int i3 = this.mStretchMode;
        int i4 = this.mRequestedColumnWidth;
        if (this.mRequestedNumColumns != -1) {
            this.mNumColumns = this.mRequestedNumColumns;
        } else if (i4 > 0) {
            this.mNumColumns = (i + i2) / (i4 + i2);
        } else {
            this.mNumColumns = 2;
        }
        if (this.mNumColumns <= 0) {
            this.mNumColumns = 1;
        }
        if (i3 == 0) {
            this.mColumnWidth = i4;
            this.mHorizontalSpacing = i2;
        } else {
            int i5 = (i - (this.mNumColumns * i4)) - ((this.mNumColumns - 1) * i2);
            r3 = i5 < 0;
            switch (i3) {
                case 1:
                    this.mColumnWidth = i4;
                    if (this.mNumColumns > 1) {
                        this.mHorizontalSpacing = i2 + (i5 / (this.mNumColumns - 1));
                        break;
                    } else {
                        this.mHorizontalSpacing = i2 + i5;
                        break;
                    }
                case 2:
                    this.mColumnWidth = i4 + (i5 / this.mNumColumns);
                    this.mHorizontalSpacing = i2;
                    break;
                case 3:
                    this.mColumnWidth = i4;
                    if (this.mNumColumns > 1) {
                        this.mHorizontalSpacing = i2 + (i5 / (this.mNumColumns + 1));
                        break;
                    } else {
                        this.mHorizontalSpacing = i2 + i5;
                        break;
                    }
            }
        }
        return r3;
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
        if (mode == 0) {
            if (this.mColumnWidth > 0) {
                i4 = this.mColumnWidth + this.mListPadding.left + this.mListPadding.right;
            } else {
                i4 = this.mListPadding.left + this.mListPadding.right;
            }
            size = i4 + getVerticalScrollbarWidth();
        }
        boolean determineColumns = determineColumns((size - this.mListPadding.left) - this.mListPadding.right);
        int i5 = 0;
        this.mItemCount = this.mAdapter == null ? 0 : this.mAdapter.getCount();
        int i6 = this.mItemCount;
        if (i6 > 0) {
            View obtainView = obtainView(0, this.mIsScrap);
            AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) obtainView.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
                obtainView.setLayoutParams(layoutParams);
            }
            layoutParams.viewType = this.mAdapter.getItemViewType(0);
            layoutParams.isEnabled = this.mAdapter.isEnabled(0);
            layoutParams.forceAdd = true;
            obtainView.measure(getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(this.mColumnWidth, 1073741824), 0, layoutParams.width), getChildMeasureSpec(View.MeasureSpec.makeSafeMeasureSpec(View.MeasureSpec.getSize(i2), 0), 0, layoutParams.height));
            i3 = obtainView.getMeasuredHeight();
            combineMeasuredStates(0, obtainView.getMeasuredState());
            if (this.mRecycler.shouldRecycleViewType(layoutParams.viewType)) {
                this.mRecycler.addScrapView(obtainView, -1);
            }
        } else {
            i3 = 0;
        }
        if (mode2 == 0) {
            size2 = this.mListPadding.top + this.mListPadding.bottom + i3 + (getVerticalFadingEdgeLength() * 2);
        }
        if (mode2 == Integer.MIN_VALUE) {
            int i7 = this.mListPadding.top + this.mListPadding.bottom;
            int i8 = this.mNumColumns;
            while (true) {
                if (i5 >= i6) {
                    size2 = i7;
                    break;
                }
                i7 += i3;
                i5 += i8;
                if (i5 < i6) {
                    i7 += this.mVerticalSpacing;
                }
                if (i7 >= size2) {
                    break;
                }
            }
        }
        if (mode == Integer.MIN_VALUE && this.mRequestedNumColumns != -1 && ((this.mRequestedNumColumns * this.mColumnWidth) + ((this.mRequestedNumColumns - 1) * this.mHorizontalSpacing) + this.mListPadding.left + this.mListPadding.right > size || determineColumns)) {
            size |= 16777216;
        }
        setMeasuredDimension(size, size2);
        this.mWidthMeasureSpec = i;
    }

    @Override // android.view.ViewGroup
    protected void attachLayoutAnimationParameters(View view, ViewGroup.LayoutParams layoutParams, int i, int i2) {
        GridLayoutAnimationController.AnimationParameters animationParameters = (GridLayoutAnimationController.AnimationParameters) layoutParams.layoutAnimationParameters;
        if (animationParameters == null) {
            animationParameters = new GridLayoutAnimationController.AnimationParameters();
            layoutParams.layoutAnimationParameters = animationParameters;
        }
        animationParameters.count = i2;
        animationParameters.index = i;
        animationParameters.columnsCount = this.mNumColumns;
        animationParameters.rowsCount = i2 / this.mNumColumns;
        if (!this.mStackFromBottom) {
            animationParameters.column = i % this.mNumColumns;
            animationParameters.row = i / this.mNumColumns;
        } else {
            int i3 = (i2 - 1) - i;
            animationParameters.column = (this.mNumColumns - 1) - (i3 % this.mNumColumns);
            animationParameters.row = (animationParameters.rowsCount - 1) - (i3 / this.mNumColumns);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.widget.AbsListView
    public void layoutChildren() {
        boolean z;
        int i;
        View childAt;
        View view;
        View view2;
        int i2;
        AccessibilityNodeInfo accessibilityNodeInfo;
        View view3;
        int i3;
        View fillFromTop;
        View childAt2;
        int i4;
        int i5;
        View accessibilityFocusedChild;
        boolean z2 = this.mBlockLayoutRequests;
        if (!z2) {
            this.mBlockLayoutRequests = true;
        }
        try {
            super.layoutChildren();
            invalidate();
            if (this.mAdapter == null) {
                resetList();
                invokeOnItemScrollListener();
                if (z2) {
                    return;
                }
                this.mBlockLayoutRequests = false;
                return;
            }
            int i6 = this.mListPadding.top;
            int i7 = (this.mBottom - this.mTop) - this.mListPadding.bottom;
            int childCount = getChildCount();
            switch (this.mLayoutMode) {
                case 1:
                case 3:
                case 4:
                case 5:
                    i = 0;
                    childAt = null;
                    view = null;
                    view2 = null;
                    break;
                case 2:
                    int i8 = this.mNextSelectedPosition - this.mFirstPosition;
                    if (i8 >= 0 && i8 < childCount) {
                        childAt = getChildAt(i8);
                        i = 0;
                        view = null;
                        view2 = null;
                        break;
                    }
                    i = 0;
                    childAt = null;
                    view = null;
                    view2 = null;
                case 6:
                    if (this.mNextSelectedPosition >= 0) {
                        i = this.mNextSelectedPosition - this.mSelectedPosition;
                        childAt = null;
                        view = null;
                        view2 = null;
                        break;
                    }
                    i = 0;
                    childAt = null;
                    view = null;
                    view2 = null;
                default:
                    int i9 = this.mSelectedPosition - this.mFirstPosition;
                    view = (i9 < 0 || i9 >= childCount) ? null : getChildAt(i9);
                    view2 = getChildAt(0);
                    childAt = null;
                    i = 0;
                    break;
            }
            boolean z3 = this.mDataChanged;
            if (z3) {
                handleDataChanged();
            }
            if (this.mItemCount == 0) {
                resetList();
                invokeOnItemScrollListener();
                if (z2) {
                    return;
                }
                this.mBlockLayoutRequests = false;
                return;
            }
            setSelectedPositionInt(this.mNextSelectedPosition);
            ViewRootImpl viewRootImpl = getViewRootImpl();
            if (viewRootImpl == null || (view3 = viewRootImpl.getAccessibilityFocusedHost()) == null || (accessibilityFocusedChild = getAccessibilityFocusedChild(view3)) == null) {
                i2 = -1;
                accessibilityNodeInfo = null;
                view3 = null;
            } else {
                if (z3 && !accessibilityFocusedChild.hasTransientState() && !this.mAdapterHasStableIds) {
                    accessibilityNodeInfo = null;
                    view3 = null;
                    i2 = getPositionForView(accessibilityFocusedChild);
                }
                accessibilityNodeInfo = viewRootImpl.getAccessibilityFocusedVirtualView();
                i2 = getPositionForView(accessibilityFocusedChild);
            }
            int i10 = this.mFirstPosition;
            AbsListView.RecycleBin recycleBin = this.mRecycler;
            try {
                if (z3) {
                    int i11 = 0;
                    while (i11 < childCount) {
                        boolean z4 = z2;
                        recycleBin.addScrapView(getChildAt(i11), i10 + i11);
                        i11++;
                        z2 = z4;
                        i2 = i2;
                    }
                    z = z2;
                    i3 = i2;
                } else {
                    z = z2;
                    i3 = i2;
                    recycleBin.fillActiveViews(childCount, i10);
                }
                detachAllViewsFromParent();
                recycleBin.removeSkippedScrap();
                switch (this.mLayoutMode) {
                    case 1:
                        this.mFirstPosition = 0;
                        fillFromTop = fillFromTop(i6);
                        adjustViewsUpOrDown();
                        break;
                    case 2:
                        if (childAt != null) {
                            fillFromTop = fillFromSelection(childAt.getTop(), i6, i7);
                            break;
                        } else {
                            fillFromTop = fillSelection(i6, i7);
                            break;
                        }
                    case 3:
                        fillFromTop = fillUp(this.mItemCount - 1, i7);
                        adjustViewsUpOrDown();
                        break;
                    case 4:
                        fillFromTop = fillSpecific(this.mSelectedPosition, this.mSpecificTop);
                        break;
                    case 5:
                        fillFromTop = fillSpecific(this.mSyncPosition, this.mSpecificTop);
                        break;
                    case 6:
                        fillFromTop = moveSelection(i, i6, i7);
                        break;
                    default:
                        if (childCount == 0) {
                            if (!this.mStackFromBottom) {
                                if (this.mAdapter != null && !isInTouchMode()) {
                                    i5 = 0;
                                    setSelectedPositionInt(i5);
                                    fillFromTop = fillFromTop(i6);
                                    break;
                                }
                                i5 = -1;
                                setSelectedPositionInt(i5);
                                fillFromTop = fillFromTop(i6);
                            } else {
                                int i12 = this.mItemCount - 1;
                                if (this.mAdapter != null && !isInTouchMode()) {
                                    i4 = i12;
                                    setSelectedPositionInt(i4);
                                    fillFromTop = fillFromBottom(i12, i7);
                                    break;
                                }
                                i4 = -1;
                                setSelectedPositionInt(i4);
                                fillFromTop = fillFromBottom(i12, i7);
                            }
                        } else if (this.mSelectedPosition >= 0 && this.mSelectedPosition < this.mItemCount) {
                            int i13 = this.mSelectedPosition;
                            if (view != null) {
                                i6 = view.getTop();
                            }
                            fillFromTop = fillSpecific(i13, i6);
                            break;
                        } else if (this.mFirstPosition < this.mItemCount) {
                            int i14 = this.mFirstPosition;
                            if (view2 != null) {
                                i6 = view2.getTop();
                            }
                            fillFromTop = fillSpecific(i14, i6);
                            break;
                        } else {
                            fillFromTop = fillSpecific(0, i6);
                            break;
                        }
                        break;
                }
                recycleBin.scrapActiveViews();
                if (fillFromTop != null) {
                    positionSelector(-1, fillFromTop);
                    this.mSelectedTop = fillFromTop.getTop();
                } else {
                    if (this.mTouchMode > 0 && this.mTouchMode < 3) {
                        View childAt3 = getChildAt(this.mMotionPosition - this.mFirstPosition);
                        if (childAt3 != null) {
                            positionSelector(this.mMotionPosition, childAt3);
                        }
                    } else if (this.mSelectedPosition != -1) {
                        View childAt4 = getChildAt(this.mSelectorPosition - this.mFirstPosition);
                        if (childAt4 != null) {
                            positionSelector(this.mSelectorPosition, childAt4);
                        }
                    } else {
                        this.mSelectedTop = 0;
                        this.mSelectorRect.setEmpty();
                    }
                }
                if (viewRootImpl != null && viewRootImpl.getAccessibilityFocusedHost() == null) {
                    if (view3 == null || !view3.isAttachedToWindow()) {
                        int i15 = i3;
                        if (i15 != -1 && (childAt2 = getChildAt(MathUtils.constrain(i15 - this.mFirstPosition, 0, getChildCount() - 1))) != null) {
                            childAt2.requestAccessibilityFocus();
                        }
                    } else {
                        AccessibilityNodeProvider accessibilityNodeProvider = view3.getAccessibilityNodeProvider();
                        if (accessibilityNodeInfo != null && accessibilityNodeProvider != null) {
                            accessibilityNodeProvider.performAction(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo.getSourceNodeId()), 64, null);
                        } else {
                            view3.requestAccessibilityFocus();
                        }
                    }
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
                if (z) {
                    return;
                }
                this.mBlockLayoutRequests = false;
            } catch (Throwable th) {
                th = th;
                if (!z) {
                    this.mBlockLayoutRequests = false;
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            z = z2;
        }
    }

    private View makeAndAddView(int i, int i2, boolean z, int i3, boolean z2, int i4) {
        View activeView;
        if (!this.mDataChanged && (activeView = this.mRecycler.getActiveView(i)) != null) {
            setupChild(activeView, i, i2, z, i3, z2, true, i4);
            return activeView;
        }
        View obtainView = obtainView(i, this.mIsScrap);
        setupChild(obtainView, i, i2, z, i3, z2, this.mIsScrap[0], i4);
        return obtainView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void setupChild(View view, int i, int i2, boolean z, int i3, boolean z2, boolean z3, int i4) {
        int i5;
        Trace.traceBegin(8L, "setupGridItem");
        boolean z4 = z2 && shouldShowSelector();
        boolean z5 = z4 != view.isSelected();
        int i6 = this.mTouchMode;
        boolean z6 = i6 > 0 && i6 < 3 && this.mMotionPosition == i;
        boolean z7 = z6 != view.isPressed();
        boolean z8 = !z3 || z5 || view.isLayoutRequested();
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
        }
        AbsListView.LayoutParams layoutParams2 = layoutParams;
        layoutParams2.viewType = this.mAdapter.getItemViewType(i);
        layoutParams2.isEnabled = this.mAdapter.isEnabled(i);
        if (z5) {
            view.setSelected(z4);
            if (z4) {
                requestFocus();
            }
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
        if (z3 && !layoutParams2.forceAdd) {
            attachViewToParent(view, i4, layoutParams2);
            if (!z3 || ((AbsListView.LayoutParams) view.getLayoutParams()).scrappedFromPosition != i) {
                view.jumpDrawablesToCurrentState();
            }
        } else {
            layoutParams2.forceAdd = false;
            addViewInLayout(view, i4, layoutParams2, true);
        }
        if (z8) {
            view.measure(ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(this.mColumnWidth, 1073741824), 0, layoutParams2.width), ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, layoutParams2.height));
        } else {
            cleanupLayoutState(view);
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i7 = z ? i2 : i2 - measuredHeight;
        int absoluteGravity = Gravity.getAbsoluteGravity(this.mGravity, getLayoutDirection()) & 7;
        if (absoluteGravity == 1) {
            i5 = i3 + ((this.mColumnWidth - measuredWidth) / 2);
        } else {
            i5 = (absoluteGravity == 3 || absoluteGravity != 5) ? i3 : (i3 + this.mColumnWidth) - measuredWidth;
        }
        if (z8) {
            view.layout(i5, i7, measuredWidth + i5, measuredHeight + i7);
        } else {
            view.offsetLeftAndRight(i5 - view.getLeft());
            view.offsetTopAndBottom(i7 - view.getTop());
        }
        if (this.mCachingStarted && !view.isDrawingCacheEnabled()) {
            view.setDrawingCacheEnabled(true);
        }
        Trace.traceEnd(8L);
    }

    @Override // android.widget.AdapterView
    public void setSelection(int i) {
        if (!isInTouchMode()) {
            setNextSelectedPositionInt(i);
        } else {
            this.mResurrectToPosition = i;
        }
        this.mLayoutMode = 2;
        if (this.mPositionScroller != null) {
            this.mPositionScroller.stop();
        }
        requestLayout();
    }

    @Override // android.widget.AbsListView
    void setSelectionInt(int i) {
        int i2 = this.mNextSelectedPosition;
        if (this.mPositionScroller != null) {
            this.mPositionScroller.stop();
        }
        setNextSelectedPositionInt(i);
        layoutChildren();
        int i3 = this.mStackFromBottom ? (this.mItemCount - 1) - this.mNextSelectedPosition : this.mNextSelectedPosition;
        if (this.mStackFromBottom) {
            i2 = (this.mItemCount - 1) - i2;
        }
        if (i3 / this.mNumColumns != i2 / this.mNumColumns) {
            awakenScrollBars();
        }
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

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0149, code lost:
    
        if (arrowScroll(33) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x015d, code lost:
    
        if (fullScroll(33) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
    
        if (fullScroll(130) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0059, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006f, code lost:
    
        if (fullScroll(33) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0082, code lost:
    
        if (pageScroll(130) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0095, code lost:
    
        if (fullScroll(130) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a8, code lost:
    
        if (pageScroll(33) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00bb, code lost:
    
        if (fullScroll(33) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ce, code lost:
    
        if (sequenceScroll(2) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e1, code lost:
    
        if (sequenceScroll(1) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00f7, code lost:
    
        if (arrowScroll(66) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x010d, code lost:
    
        if (arrowScroll(17) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0121, code lost:
    
        if (arrowScroll(130) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0135, code lost:
    
        if (fullScroll(130) == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean commonKey(int i, int i2, KeyEvent keyEvent) {
        boolean z;
        if (this.mAdapter == null) {
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
                case 20:
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
                case 21:
                    if (keyEvent.hasNoModifiers()) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
                        break;
                    }
                    break;
                case 22:
                    if (keyEvent.hasNoModifiers()) {
                        if (!resurrectSelectionIfNeeded()) {
                            break;
                        }
                        z = true;
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
        if (i == 33) {
            min = Math.max(0, this.mSelectedPosition - getChildCount());
        } else {
            min = i == 130 ? Math.min(this.mItemCount - 1, this.mSelectedPosition + getChildCount()) : -1;
        }
        if (min < 0) {
            return false;
        }
        setSelectionInt(min);
        invokeOnItemScrollListener();
        awakenScrollBars();
        return true;
    }

    boolean fullScroll(int i) {
        boolean z = true;
        if (i == 33) {
            this.mLayoutMode = 2;
            setSelectionInt(0);
            invokeOnItemScrollListener();
        } else if (i == 130) {
            this.mLayoutMode = 2;
            setSelectionInt(this.mItemCount - 1);
            invokeOnItemScrollListener();
        } else {
            z = false;
        }
        if (z) {
            awakenScrollBars();
        }
        return z;
    }

    boolean arrowScroll(int i) {
        int i2;
        int max;
        boolean z;
        int i3 = this.mSelectedPosition;
        int i4 = this.mNumColumns;
        boolean z2 = true;
        if (!this.mStackFromBottom) {
            max = (i3 / i4) * i4;
            i2 = Math.min((max + i4) - 1, this.mItemCount - 1);
        } else {
            i2 = (this.mItemCount - 1) - ((((this.mItemCount - 1) - i3) / i4) * i4);
            max = Math.max(0, (i2 - i4) + 1);
        }
        if (i != 33) {
            if (i == 130 && i2 < this.mItemCount - 1) {
                this.mLayoutMode = 6;
                setSelectionInt(Math.min(i4 + i3, this.mItemCount - 1));
                z = true;
            }
            z = false;
        } else {
            if (max > 0) {
                this.mLayoutMode = 6;
                setSelectionInt(Math.max(0, i3 - i4));
                z = true;
            }
            z = false;
        }
        boolean isLayoutRtl = isLayoutRtl();
        if (i3 > max && ((i == 17 && !isLayoutRtl) || (i == 66 && isLayoutRtl))) {
            this.mLayoutMode = 6;
            setSelectionInt(Math.max(0, i3 - 1));
        } else if (i3 >= i2 || (!(i == 17 && isLayoutRtl) && (i != 66 || isLayoutRtl))) {
            z2 = z;
        } else {
            this.mLayoutMode = 6;
            setSelectionInt(Math.min(i3 + 1, this.mItemCount - 1));
        }
        if (z2) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
            invokeOnItemScrollListener();
        }
        if (z2) {
            awakenScrollBars();
        }
        return z2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0045, code lost:
    
        if (r0 == r1) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (r0 == r3) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean sequenceScroll(int i) {
        int i2;
        int max;
        int i3 = this.mSelectedPosition;
        int i4 = this.mNumColumns;
        int i5 = this.mItemCount;
        boolean z = false;
        boolean z2 = true;
        if (!this.mStackFromBottom) {
            int i6 = (i3 / i4) * i4;
            i2 = Math.min((i4 + i6) - 1, i5 - 1);
            max = i6;
        } else {
            int i7 = i5 - 1;
            i2 = i7 - (((i7 - i3) / i4) * i4);
            max = Math.max(0, (i2 - i4) + 1);
        }
        switch (i) {
            case 1:
                if (i3 > 0) {
                    this.mLayoutMode = 6;
                    setSelectionInt(i3 - 1);
                    break;
                }
                z2 = false;
                break;
            case 2:
                if (i3 < i5 - 1) {
                    this.mLayoutMode = 6;
                    setSelectionInt(i3 + 1);
                    break;
                }
                z2 = false;
                break;
            default:
                z2 = false;
                break;
        }
        if (z2) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
            invokeOnItemScrollListener();
        }
        if (z) {
            awakenScrollBars();
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        int i2 = -1;
        if (z && rect != null) {
            rect.offset(this.mScrollX, this.mScrollY);
            Rect rect2 = this.mTempRect;
            int i3 = Integer.MAX_VALUE;
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                if (isCandidateSelection(i4, i)) {
                    View childAt = getChildAt(i4);
                    childAt.getDrawingRect(rect2);
                    offsetDescendantRectToMyCoords(childAt, rect2);
                    int distance = getDistance(rect, rect2, i);
                    if (distance < i3) {
                        i2 = i4;
                        i3 = distance;
                    }
                }
            }
        }
        if (i2 >= 0) {
            setSelection(i2 + this.mFirstPosition);
        } else {
            requestLayout();
        }
    }

    private boolean isCandidateSelection(int i, int i2) {
        int max;
        int i3;
        int childCount = getChildCount();
        int i4 = childCount - 1;
        int i5 = i4 - i;
        if (!this.mStackFromBottom) {
            max = i - (i % this.mNumColumns);
            i3 = Math.min((this.mNumColumns + max) - 1, childCount);
        } else {
            int i6 = i4 - (i5 - (i5 % this.mNumColumns));
            max = Math.max(0, (i6 - this.mNumColumns) + 1);
            i3 = i6;
        }
        if (i2 == 17) {
            return i == i3;
        }
        if (i2 == 33) {
            return i3 == i4;
        }
        if (i2 == 66) {
            return i == max;
        }
        if (i2 == 130) {
            return max == 0;
        }
        switch (i2) {
            case 1:
                return i == i3 && i3 == i4;
            case 2:
                return i == max && max == 0;
            default:
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}.");
        }
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            this.mGravity = i;
            requestLayoutIfNecessary();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    public void setHorizontalSpacing(int i) {
        if (i != this.mRequestedHorizontalSpacing) {
            this.mRequestedHorizontalSpacing = i;
            requestLayoutIfNecessary();
        }
    }

    public int getHorizontalSpacing() {
        return this.mHorizontalSpacing;
    }

    public int getRequestedHorizontalSpacing() {
        return this.mRequestedHorizontalSpacing;
    }

    public void setVerticalSpacing(int i) {
        if (i != this.mVerticalSpacing) {
            this.mVerticalSpacing = i;
            requestLayoutIfNecessary();
        }
    }

    public int getVerticalSpacing() {
        return this.mVerticalSpacing;
    }

    public void setStretchMode(int i) {
        if (i != this.mStretchMode) {
            this.mStretchMode = i;
            requestLayoutIfNecessary();
        }
    }

    public int getStretchMode() {
        return this.mStretchMode;
    }

    public void setColumnWidth(int i) {
        if (i != this.mRequestedColumnWidth) {
            this.mRequestedColumnWidth = i;
            requestLayoutIfNecessary();
        }
    }

    public int getColumnWidth() {
        return this.mColumnWidth;
    }

    public int getRequestedColumnWidth() {
        return this.mRequestedColumnWidth;
    }

    public void setNumColumns(int i) {
        if (i != this.mRequestedNumColumns) {
            this.mRequestedNumColumns = i;
            requestLayoutIfNecessary();
        }
    }

    @ViewDebug.ExportedProperty
    public int getNumColumns() {
        return this.mNumColumns;
    }

    private void adjustViewsUpOrDown() {
        int childCount = getChildCount();
        if (childCount > 0) {
            int i = 0;
            if (!this.mStackFromBottom) {
                int top = getChildAt(0).getTop() - this.mListPadding.top;
                if (this.mFirstPosition != 0) {
                    top -= this.mVerticalSpacing;
                }
                if (top >= 0) {
                    i = top;
                }
            } else {
                int bottom = getChildAt(childCount - 1).getBottom() - (getHeight() - this.mListPadding.bottom);
                if (this.mFirstPosition + childCount < this.mItemCount) {
                    bottom += this.mVerticalSpacing;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.View
    public int computeVerticalScrollExtent() {
        int childCount = getChildCount();
        if (childCount <= 0) {
            return 0;
        }
        int i = (((childCount + r2) - 1) / this.mNumColumns) * 100;
        View childAt = getChildAt(0);
        int top = childAt.getTop();
        int height = childAt.getHeight();
        if (height > 0) {
            i += (top * 100) / height;
        }
        View childAt2 = getChildAt(childCount - 1);
        int bottom = childAt2.getBottom();
        int height2 = childAt2.getHeight();
        return height2 > 0 ? i - (((bottom - getHeight()) * 100) / height2) : i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.View
    public int computeVerticalScrollOffset() {
        if (this.mFirstPosition >= 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            int top = childAt.getTop();
            int height = childAt.getHeight();
            if (height > 0) {
                int i = this.mNumColumns;
                int i2 = ((this.mItemCount + i) - 1) / i;
                return Math.max(((((this.mFirstPosition + (isStackFromBottom() ? (i2 * i) - this.mItemCount : 0)) / i) * 100) - ((top * 100) / height)) + ((int) ((this.mScrollY / getHeight()) * i2 * 100.0f)), 0);
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.view.View
    public int computeVerticalScrollRange() {
        int i = ((this.mItemCount + r0) - 1) / this.mNumColumns;
        int max = Math.max(i * 100, 0);
        return this.mScrollY != 0 ? max + Math.abs((int) ((this.mScrollY / getHeight()) * i * 100.0f)) : max;
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return GridView.class.getName();
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        int numColumns = getNumColumns();
        int count = getCount() / numColumns;
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(count, numColumns, false, getSelectionModeForAccessibility()));
        if (numColumns > 0 || count > 0) {
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
        int numColumns = getNumColumns();
        int i2 = bundle.getInt(AccessibilityNodeInfo.ACTION_ARGUMENT_ROW_INT, -1);
        int min = Math.min(numColumns * i2, getCount() - 1);
        if (i2 < 0) {
            return false;
        }
        smoothScrollToPosition(min);
        return true;
    }

    @Override // android.widget.AbsListView
    public void onInitializeAccessibilityNodeInfoForItem(View view, int i, AccessibilityNodeInfo accessibilityNodeInfo) {
        int i2;
        int i3;
        super.onInitializeAccessibilityNodeInfoForItem(view, i, accessibilityNodeInfo);
        int count = getCount();
        int numColumns = getNumColumns();
        int i4 = count / numColumns;
        if (!this.mStackFromBottom) {
            i3 = i % numColumns;
            i2 = i / numColumns;
        } else {
            int i5 = (count - 1) - i;
            i2 = (i4 - 1) - (i5 / numColumns);
            i3 = (numColumns - 1) - (i5 % numColumns);
        }
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) view.getLayoutParams();
        accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(i2, 1, i3, 1, layoutParams != null && layoutParams.viewType == -2, isItemChecked(i)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("numColumns", getNumColumns());
    }
}
