package com.yftech.libradio.carousellayoutmanager;

import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarouselLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    private static final boolean CIRCLE_LAYOUT = false;
    public static final int HORIZONTAL = 0;
    public static final int INVALID_POSITION = -1;
    public static final int MAX_VISIBLE_ITEMS = 3;
    public static final int VERTICAL = 1;

    @IdRes
    private int idForchangeAlphaView;
    private boolean mCanScrollHorizontally;
    private int mCenterItemPosition;
    private boolean mCircleLayout;
    private Integer mDecoratedChildHeight;
    private boolean mDecoratedChildSizeInvalid;
    private Integer mDecoratedChildWidth;
    private int mItemsCount;
    private final LayoutHelper mLayoutHelper;
    private final List<OnCenterItemSelectionListener> mOnCenterItemSelectionListeners;
    private final int mOrientation;

    @Nullable
    private CarouselSavedState mPendingCarouselSavedState;
    private int mPendingScrollPosition;
    private PostLayoutListener mViewPostLayout;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnCenterItemSelectionListener {
        void onCenterItemChanged(int i);
    }

    public CarouselLayoutManager(int i) {
        this(i, false);
    }

    public CarouselLayoutManager(int i, boolean z) {
        this.mLayoutHelper = new LayoutHelper(3);
        this.mOnCenterItemSelectionListeners = new ArrayList();
        this.mCenterItemPosition = -1;
        this.mCanScrollHorizontally = true;
        if (i != 0 && 1 != i) {
            throw new IllegalArgumentException("orientation should be HORIZONTAL or VERTICAL");
        }
        this.mOrientation = i;
        this.mCircleLayout = z;
        this.mPendingScrollPosition = -1;
    }

    public void setCircleLayout(boolean z) {
        if (this.mCircleLayout != z) {
            this.mCircleLayout = z;
            requestLayout();
        }
    }

    public void setPostLayoutListener(@Nullable PostLayoutListener postLayoutListener) {
        this.mViewPostLayout = postLayoutListener;
        requestLayout();
    }

    @CallSuper
    public void setMaxVisibleItems(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("maxVisibleItems can't be less then 0");
        }
        this.mLayoutHelper.mMaxVisibleItems = i;
        requestLayout();
    }

    public int getMaxVisibleItems() {
        return this.mLayoutHelper.mMaxVisibleItems;
    }

    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public boolean canScrollHorizontally() {
        return getChildCount() != 0 && this.mCanScrollHorizontally && this.mOrientation == 0;
    }

    public boolean canScrollVertically() {
        return getChildCount() != 0 && 1 == this.mOrientation;
    }

    public void setCanScrollHorizontally(boolean z) {
        this.mCanScrollHorizontally = z;
    }

    public void setIdForchangeAlphaView(@IdRes int i) {
        this.idForchangeAlphaView = i;
    }

    public int getCenterItemPosition() {
        return this.mCenterItemPosition;
    }

    public void addOnItemSelectionListener(@NonNull OnCenterItemSelectionListener onCenterItemSelectionListener) {
        this.mOnCenterItemSelectionListeners.add(onCenterItemSelectionListener);
    }

    public void removeOnItemSelectionListener(@NonNull OnCenterItemSelectionListener onCenterItemSelectionListener) {
        this.mOnCenterItemSelectionListeners.remove(onCenterItemSelectionListener);
    }

    public void scrollToPosition(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("position can't be less then 0. position is : " + i);
        }
        this.mPendingScrollPosition = i;
        requestLayout();
    }

    public void smoothScrollToPosition(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext()) { // from class: com.yftech.libradio.carousellayoutmanager.CarouselLayoutManager.1
            public int calculateDyToMakeVisible(View view, int i2) {
                if (CarouselLayoutManager.this.canScrollVertically()) {
                    return CarouselLayoutManager.this.getOffsetForCurrentView(view);
                }
                return 0;
            }

            public int calculateDxToMakeVisible(View view, int i2) {
                if (CarouselLayoutManager.this.canScrollHorizontally()) {
                    return CarouselLayoutManager.this.getOffsetForCurrentView(view);
                }
                return 0;
            }
        };
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Nullable
    public PointF computeScrollVectorForPosition(int i) {
        if (getChildCount() == 0) {
            return null;
        }
        int i2 = (int) (-Math.signum(getScrollDirection(i)));
        if (this.mOrientation == 0) {
            return new PointF(i2, 0.0f);
        }
        return new PointF(0.0f, i2);
    }

    private float getScrollDirection(int i) {
        float makeScrollPositionInRange0ToCount = makeScrollPositionInRange0ToCount(getCurrentScrollPosition(), this.mItemsCount);
        if (!this.mCircleLayout) {
            return makeScrollPositionInRange0ToCount - i;
        }
        float f = makeScrollPositionInRange0ToCount - i;
        float abs = Math.abs(f) - this.mItemsCount;
        return Math.abs(f) > Math.abs(abs) ? Math.signum(f) * abs : f;
    }

    public int scrollVerticallyBy(int i, @NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (1 == this.mOrientation) {
            return 0;
        }
        return scrollBy(i, recycler, state);
    }

    @CallSuper
    protected int scrollBy(int i, @NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state) {
        if (this.mDecoratedChildWidth == null || this.mDecoratedChildHeight == null || getChildCount() == 0 || i == 0) {
            return 0;
        }
        if (this.mCircleLayout) {
            this.mLayoutHelper.mScrollOffset += i;
            int scrollItemSize = getScrollItemSize() * this.mItemsCount;
            while (this.mLayoutHelper.mScrollOffset < 0) {
                this.mLayoutHelper.mScrollOffset += scrollItemSize;
            }
            while (this.mLayoutHelper.mScrollOffset > scrollItemSize) {
                this.mLayoutHelper.mScrollOffset -= scrollItemSize;
            }
            this.mLayoutHelper.mScrollOffset -= i;
        } else {
            int maxScrollOffset = getMaxScrollOffset();
            if (this.mLayoutHelper.mScrollOffset + i < 0) {
                i = -this.mLayoutHelper.mScrollOffset;
            } else if (this.mLayoutHelper.mScrollOffset + i > maxScrollOffset) {
                i = maxScrollOffset - this.mLayoutHelper.mScrollOffset;
            }
        }
        if (i != 0) {
            this.mLayoutHelper.mScrollOffset += i;
            fillData(recycler, state);
        }
        return i;
    }

    public void onMeasure(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state, int i, int i2) {
        this.mDecoratedChildSizeInvalid = true;
        super.onMeasure(recycler, state, i, i2);
    }

    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        super.onAdapterChanged(adapter, adapter2);
        removeAllViews();
    }

    @CallSuper
    public void onLayoutChildren(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state) {
        View view;
        boolean z;
        if (state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            selectItemCenterPosition(-1);
            return;
        }
        detachAndScrapAttachedViews(recycler);
        if (this.mDecoratedChildWidth == null || this.mDecoratedChildSizeInvalid) {
            List scrapList = recycler.getScrapList();
            if (scrapList.isEmpty()) {
                view = recycler.getViewForPosition(this.mPendingScrollPosition == -1 ? 0 : Math.max(0, Math.min(state.getItemCount() - 1, this.mPendingScrollPosition)));
                addView(view);
                z = true;
            } else {
                view = ((RecyclerView.ViewHolder) scrapList.get(0)).itemView;
                z = false;
            }
            measureChildWithMargins(view, 0, 0);
            int decoratedMeasuredWidth = getDecoratedMeasuredWidth(view);
            int decoratedMeasuredHeight = getDecoratedMeasuredHeight(view);
            if (z) {
                detachAndScrapView(view, recycler);
            }
            if (this.mDecoratedChildWidth != null && ((this.mDecoratedChildWidth.intValue() != decoratedMeasuredWidth || this.mDecoratedChildHeight.intValue() != decoratedMeasuredHeight) && -1 == this.mPendingScrollPosition && this.mPendingCarouselSavedState == null)) {
                this.mPendingScrollPosition = this.mCenterItemPosition;
            }
            this.mDecoratedChildWidth = Integer.valueOf(decoratedMeasuredWidth);
            this.mDecoratedChildHeight = Integer.valueOf(decoratedMeasuredHeight);
            this.mDecoratedChildSizeInvalid = false;
        }
        if (-1 != this.mPendingScrollPosition) {
            int itemCount = state.getItemCount();
            this.mPendingScrollPosition = itemCount == 0 ? -1 : Math.max(0, Math.min(itemCount - 1, this.mPendingScrollPosition));
        }
        if (-1 == this.mPendingScrollPosition) {
            if (this.mPendingCarouselSavedState == null) {
                if (state.didStructureChange() && -1 != this.mCenterItemPosition) {
                    this.mLayoutHelper.mScrollOffset = calculateScrollForSelectingPosition(this.mCenterItemPosition, state);
                }
            } else {
                this.mLayoutHelper.mScrollOffset = calculateScrollForSelectingPosition(this.mPendingCarouselSavedState.mCenterItemPosition, state);
                this.mPendingCarouselSavedState = null;
            }
        } else {
            this.mLayoutHelper.mScrollOffset = calculateScrollForSelectingPosition(this.mPendingScrollPosition, state);
            this.mPendingScrollPosition = -1;
            this.mPendingCarouselSavedState = null;
        }
        fillData(recycler, state);
    }

    private int calculateScrollForSelectingPosition(int i, RecyclerView.State state) {
        if (i == -1) {
            return 0;
        }
        if (i >= state.getItemCount()) {
            i = state.getItemCount() - 1;
        }
        return i * (1 == this.mOrientation ? this.mDecoratedChildHeight : this.mDecoratedChildWidth).intValue();
    }

    private void fillData(@NonNull RecyclerView.Recycler recycler, @NonNull RecyclerView.State state) {
        float currentScrollPosition = getCurrentScrollPosition();
        generateLayoutOrder(currentScrollPosition, state);
        detachAndScrapAttachedViews(recycler);
        recyclerOldViews(recycler);
        int widthNoPadding = getWidthNoPadding();
        int heightNoPadding = getHeightNoPadding();
        if (1 == this.mOrientation) {
            fillDataVertical(recycler, widthNoPadding, heightNoPadding);
        } else {
            fillDataHorizontal(recycler, widthNoPadding, heightNoPadding);
        }
        recycler.clear();
        detectOnItemSelectionChanged(currentScrollPosition, state);
    }

    private void detectOnItemSelectionChanged(float f, RecyclerView.State state) {
        final int round = Math.round(makeScrollPositionInRange0ToCount(f, state.getItemCount()));
        if (this.mCenterItemPosition != round) {
            this.mCenterItemPosition = round;
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.yftech.libradio.carousellayoutmanager.CarouselLayoutManager.2
                @Override // java.lang.Runnable
                public void run() {
                    CarouselLayoutManager.this.selectItemCenterPosition(round);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectItemCenterPosition(int i) {
        Iterator<OnCenterItemSelectionListener> it = this.mOnCenterItemSelectionListeners.iterator();
        while (it.hasNext()) {
            it.next().onCenterItemChanged(i);
        }
    }

    private void fillDataVertical(RecyclerView.Recycler recycler, int i, int i2) {
        int intValue = (i - this.mDecoratedChildWidth.intValue()) / 2;
        int intValue2 = intValue + this.mDecoratedChildWidth.intValue();
        int intValue3 = (i2 - this.mDecoratedChildHeight.intValue()) / 2;
        int length = this.mLayoutHelper.mLayoutOrder.length;
        for (int i3 = 0; i3 < length; i3++) {
            LayoutOrder layoutOrder = this.mLayoutHelper.mLayoutOrder[i3];
            int cardOffsetByPositionDiff = intValue3 + getCardOffsetByPositionDiff(layoutOrder.mItemPositionDiff);
            fillChildItem(intValue, cardOffsetByPositionDiff, intValue2, cardOffsetByPositionDiff + this.mDecoratedChildHeight.intValue(), layoutOrder, recycler, i3);
        }
    }

    private void fillDataHorizontal(RecyclerView.Recycler recycler, int i, int i2) {
        int intValue = (i2 - this.mDecoratedChildHeight.intValue()) / 2;
        int intValue2 = this.mDecoratedChildHeight.intValue() + intValue;
        int intValue3 = (i - this.mDecoratedChildWidth.intValue()) / 2;
        int i3 = this.mLayoutHelper.mLayoutOrder.length > 0 ? this.mLayoutHelper.mLayoutOrder[this.mLayoutHelper.mLayoutOrder.length - 1].mItemAdapterPosition : 0;
        int length = this.mLayoutHelper.mLayoutOrder.length;
        for (int i4 = 0; i4 < length; i4++) {
            LayoutOrder layoutOrder = this.mLayoutHelper.mLayoutOrder[i4];
            int cardOffsetByPositionDiff = getCardOffsetByPositionDiff(layoutOrder.mItemPositionDiff) + intValue3;
            int intValue4 = this.mDecoratedChildWidth.intValue() + cardOffsetByPositionDiff;
            View bindChild = bindChild(layoutOrder.mItemAdapterPosition, recycler);
            ViewCompat.setElevation(bindChild, i4);
            ItemTransformation transformChild = this.mViewPostLayout != null ? this.mViewPostLayout.transformChild(bindChild, layoutOrder.mItemPositionDiff, this.mOrientation, layoutOrder.mItemAdapterPosition) : null;
            if (transformChild == null) {
                bindChild.layout(cardOffsetByPositionDiff, intValue, intValue4, intValue2);
            } else {
                float f = cardOffsetByPositionDiff;
                bindChild.layout(Math.round(transformChild.mTranslationX + f), Math.round(intValue), Math.round(intValue4 + transformChild.mTranslationX), Math.round(intValue2));
                bindChild.setScaleX(transformChild.mScaleX);
                bindChild.setScaleY(transformChild.mScaleY);
                if (this.idForchangeAlphaView != 0) {
                    if (transformChild.mScaleY > 0.9d) {
                        bindChild.findViewById(this.idForchangeAlphaView).setAlpha(0.0f);
                    } else {
                        bindChild.findViewById(this.idForchangeAlphaView).setAlpha(1.0f - (transformChild.mScaleY / 4.0f));
                    }
                }
                if (layoutOrder.mItemAdapterPosition == i3) {
                    bindChild.setClipBounds(new Rect(0, 0, this.mDecoratedChildWidth.intValue(), this.mDecoratedChildHeight.intValue()));
                } else {
                    int i5 = layoutOrder.mItemAdapterPosition - i3;
                    if (i5 == -1) {
                        LayoutOrder layoutOrder2 = this.mLayoutHelper.mLayoutOrder[this.mLayoutHelper.mLayoutOrder.length - 1];
                        ItemTransformation transformChild2 = this.mViewPostLayout.transformChild(bindChild, layoutOrder2.mItemPositionDiff, this.mOrientation, layoutOrder2.mItemAdapterPosition);
                        float cardOffsetByPositionDiff2 = getCardOffsetByPositionDiff(layoutOrder2.mItemPositionDiff) + intValue3 + (transformChild2.mScaleX * 30.0f);
                        if (layoutOrder2.mItemPositionDiff < 0.0f) {
                            bindChild.setClipBounds(new Rect(0, 0, Math.round(((cardOffsetByPositionDiff2 - f) / transformChild.mScaleX) + 0.5f), this.mDecoratedChildHeight.intValue()));
                        } else {
                            bindChild.setClipBounds(new Rect(0, 0, Math.round((((cardOffsetByPositionDiff2 - f) + (transformChild2.mTranslationX * 2.0f)) / transformChild.mScaleX) - 0.5f), this.mDecoratedChildHeight.intValue()));
                        }
                    } else if (i5 == -2) {
                        LayoutOrder layoutOrder3 = this.mLayoutHelper.mLayoutOrder[i4 + 1];
                        bindChild.setClipBounds(new Rect(0, 0, Math.round(((((getCardOffsetByPositionDiff(layoutOrder3.mItemPositionDiff) + intValue3) + (this.mViewPostLayout.transformChild(bindChild, layoutOrder3.mItemPositionDiff, this.mOrientation, layoutOrder3.mItemAdapterPosition).mScaleX * 30.0f)) - f) / transformChild.mScaleX) + 0.5f), this.mDecoratedChildHeight.intValue()));
                    } else if (i5 == 1) {
                        LayoutOrder layoutOrder4 = this.mLayoutHelper.mLayoutOrder[this.mLayoutHelper.mLayoutOrder.length - 1];
                        ItemTransformation transformChild3 = this.mViewPostLayout.transformChild(bindChild, layoutOrder4.mItemPositionDiff, this.mOrientation, layoutOrder4.mItemAdapterPosition);
                        float cardOffsetByPositionDiff3 = (getCardOffsetByPositionDiff(layoutOrder4.mItemPositionDiff) + intValue3) - (transformChild3.mScaleX * 30.0f);
                        if (layoutOrder4.mItemPositionDiff < 0.0f) {
                            bindChild.setClipBounds(new Rect(this.mDecoratedChildWidth.intValue() - Math.round(((((-cardOffsetByPositionDiff3) + f) - (transformChild3.mTranslationX * 2.0f)) / transformChild.mScaleX) - 0.5f), 0, this.mDecoratedChildWidth.intValue(), this.mDecoratedChildHeight.intValue()));
                        } else {
                            bindChild.setClipBounds(new Rect(this.mDecoratedChildWidth.intValue() - Math.round(((f - cardOffsetByPositionDiff3) / transformChild.mScaleX) + 0.5f), 0, this.mDecoratedChildWidth.intValue(), this.mDecoratedChildHeight.intValue()));
                        }
                    } else if (i5 == 2) {
                        LayoutOrder layoutOrder5 = this.mLayoutHelper.mLayoutOrder[i4 + 1];
                        bindChild.setClipBounds(new Rect(this.mDecoratedChildWidth.intValue() - Math.round(((f - ((getCardOffsetByPositionDiff(layoutOrder5.mItemPositionDiff) + intValue3) - (this.mViewPostLayout.transformChild(bindChild, layoutOrder5.mItemPositionDiff, this.mOrientation, layoutOrder5.mItemAdapterPosition).mScaleX * 30.0f))) / transformChild.mScaleX) + 0.5f), 0, this.mDecoratedChildWidth.intValue(), this.mDecoratedChildHeight.intValue()));
                    }
                }
            }
        }
    }

    private void fillChildItem(int i, int i2, int i3, int i4, @NonNull LayoutOrder layoutOrder, @NonNull RecyclerView.Recycler recycler, int i5) {
        View bindChild = bindChild(layoutOrder.mItemAdapterPosition, recycler);
        ViewCompat.setElevation(bindChild, i5);
        ItemTransformation transformChild = this.mViewPostLayout != null ? this.mViewPostLayout.transformChild(bindChild, layoutOrder.mItemPositionDiff, this.mOrientation, layoutOrder.mItemAdapterPosition) : null;
        if (transformChild == null) {
            bindChild.layout(i, i2, i3, i4);
            return;
        }
        bindChild.layout(Math.round(i + transformChild.mTranslationX), Math.round(i2 + transformChild.mTranslationY), Math.round(i3 + transformChild.mTranslationX), Math.round(i4 + transformChild.mTranslationY));
        bindChild.setScaleX(transformChild.mScaleX);
        bindChild.setScaleY(transformChild.mScaleY);
        if (layoutOrder.mItemPositionDiff > 0.5d) {
            bindChild.setClipBounds(new Rect(Math.round(transformChild.mTranslationX / transformChild.mScaleX), 0, bindChild.getMeasuredWidth(), bindChild.getMeasuredHeight()));
        } else {
            bindChild.setClipBounds(new Rect(0, 0, bindChild.getMeasuredWidth(), bindChild.getMeasuredHeight()));
        }
        Log.d("++++", "idx=" + i5 + " pos=" + layoutOrder.mItemAdapterPosition + " start=" + i + " end=" + i3 + " diff=" + layoutOrder.mItemPositionDiff + " tX=" + transformChild.mTranslationX);
    }

    private float getCurrentScrollPosition() {
        if (getMaxScrollOffset() == 0) {
            return 0.0f;
        }
        return (this.mLayoutHelper.mScrollOffset * 1.0f) / getScrollItemSize();
    }

    private int getMaxScrollOffset() {
        return getScrollItemSize() * (this.mItemsCount - 1);
    }

    private void generateLayoutOrder(float f, @NonNull RecyclerView.State state) {
        this.mItemsCount = state.getItemCount();
        float makeScrollPositionInRange0ToCount = makeScrollPositionInRange0ToCount(f, this.mItemsCount);
        int round = Math.round(makeScrollPositionInRange0ToCount);
        if (!this.mCircleLayout || 1 >= this.mItemsCount) {
            int max = Math.max(round - this.mLayoutHelper.mMaxVisibleItems, 0);
            int min = Math.min(this.mLayoutHelper.mMaxVisibleItems + round, this.mItemsCount - 1);
            int i = (min - max) + 1;
            this.mLayoutHelper.initLayoutOrder(i);
            for (int i2 = max; i2 <= min; i2++) {
                if (i2 == round) {
                    this.mLayoutHelper.setLayoutOrder(i - 1, i2, i2 - makeScrollPositionInRange0ToCount);
                } else if (i2 < round) {
                    this.mLayoutHelper.setLayoutOrder(i2 - max, i2, i2 - makeScrollPositionInRange0ToCount);
                } else {
                    this.mLayoutHelper.setLayoutOrder((i - (i2 - round)) - 1, i2, i2 - makeScrollPositionInRange0ToCount);
                }
            }
            return;
        }
        int min2 = Math.min((this.mLayoutHelper.mMaxVisibleItems * 2) + 1, this.mItemsCount);
        this.mLayoutHelper.initLayoutOrder(min2);
        int i3 = min2 / 2;
        for (int i4 = 1; i4 <= i3; i4++) {
            float f2 = i4;
            this.mLayoutHelper.setLayoutOrder(i3 - i4, Math.round((makeScrollPositionInRange0ToCount - f2) + this.mItemsCount) % this.mItemsCount, (round - makeScrollPositionInRange0ToCount) - f2);
        }
        int i5 = min2 - 1;
        for (int i6 = i5; i6 >= i3 + 1; i6--) {
            float f3 = i6;
            float f4 = min2;
            this.mLayoutHelper.setLayoutOrder(i6 - 1, Math.round((makeScrollPositionInRange0ToCount - f3) + f4) % this.mItemsCount, ((round - makeScrollPositionInRange0ToCount) + f4) - f3);
        }
        this.mLayoutHelper.setLayoutOrder(i5, round, round - makeScrollPositionInRange0ToCount);
    }

    public int getWidthNoPadding() {
        return (getWidth() - getPaddingStart()) - getPaddingEnd();
    }

    public int getHeightNoPadding() {
        return (getHeight() - getPaddingEnd()) - getPaddingStart();
    }

    private View bindChild(int i, @NonNull RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(i);
        addView(viewForPosition);
        measureChildWithMargins(viewForPosition, 0, 0);
        return viewForPosition;
    }

    private void recyclerOldViews(RecyclerView.Recycler recycler) {
        Iterator it = new ArrayList(recycler.getScrapList()).iterator();
        while (it.hasNext()) {
            RecyclerView.ViewHolder viewHolder = (RecyclerView.ViewHolder) it.next();
            int adapterPosition = viewHolder.getAdapterPosition();
            LayoutOrder[] layoutOrderArr = this.mLayoutHelper.mLayoutOrder;
            int length = layoutOrderArr.length;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (layoutOrderArr[i].mItemAdapterPosition == adapterPosition) {
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                recycler.recycleView(viewHolder.itemView);
            }
        }
    }

    protected int getCardOffsetByPositionDiff(float f) {
        int widthNoPadding;
        double convertItemPositionDiffToSmoothPositionDiff = convertItemPositionDiffToSmoothPositionDiff(f);
        if (1 == this.mOrientation) {
            widthNoPadding = (getHeightNoPadding() - this.mDecoratedChildHeight.intValue()) / 2;
        } else {
            widthNoPadding = (getWidthNoPadding() - this.mDecoratedChildWidth.intValue()) / 2;
        }
        return (int) Math.round(Math.signum(f) * widthNoPadding * convertItemPositionDiffToSmoothPositionDiff);
    }

    protected double convertItemPositionDiffToSmoothPositionDiff(float f) {
        double abs = Math.abs(f);
        if (abs <= StrictMath.pow(1.0f / this.mLayoutHelper.mMaxVisibleItems, 0.3333333432674408d)) {
            return StrictMath.pow(abs, 2.0d);
        }
        return StrictMath.pow(r7 / this.mLayoutHelper.mMaxVisibleItems, 0.5d);
    }

    protected int getScrollItemSize() {
        if (1 == this.mOrientation) {
            return this.mDecoratedChildHeight.intValue();
        }
        return this.mDecoratedChildWidth.intValue();
    }

    public Parcelable onSaveInstanceState() {
        if (this.mPendingCarouselSavedState != null) {
            return new CarouselSavedState(this.mPendingCarouselSavedState);
        }
        CarouselSavedState carouselSavedState = new CarouselSavedState(super.onSaveInstanceState());
        carouselSavedState.mCenterItemPosition = this.mCenterItemPosition;
        return carouselSavedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof CarouselSavedState) {
            this.mPendingCarouselSavedState = (CarouselSavedState) parcelable;
            super.onRestoreInstanceState(this.mPendingCarouselSavedState.mSuperState);
        } else {
            super.onRestoreInstanceState(parcelable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOffsetCenterView() {
        return (Math.round(getCurrentScrollPosition()) * getScrollItemSize()) - this.mLayoutHelper.mScrollOffset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOffsetForCurrentView(@NonNull View view) {
        return Math.round(getScrollDirection(getPosition(view)) * getScrollItemSize());
    }

    private static float makeScrollPositionInRange0ToCount(float f, int i) {
        while (0.0f > f) {
            f += i;
        }
        while (Math.round(f) >= i) {
            f -= i;
        }
        return f;
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class PostLayoutListener {
        public ItemTransformation transformChild(@NonNull View view, float f, int i, int i2) {
            return transformChild(view, f, i);
        }

        public ItemTransformation transformChild(@NonNull View view, float f, int i) {
            throw new IllegalStateException("at least one transformChild should be implemented");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class LayoutHelper {
        private LayoutOrder[] mLayoutOrder;
        private int mMaxVisibleItems;
        private final List<WeakReference<LayoutOrder>> mReusedItems = new ArrayList();
        private int mScrollOffset;

        LayoutHelper(int i) {
            this.mMaxVisibleItems = i;
        }

        void initLayoutOrder(int i) {
            if (this.mLayoutOrder == null || this.mLayoutOrder.length != i) {
                if (this.mLayoutOrder != null) {
                    recycleItems(this.mLayoutOrder);
                }
                this.mLayoutOrder = new LayoutOrder[i];
                fillLayoutOrder();
            }
        }

        void setLayoutOrder(int i, int i2, float f) {
            LayoutOrder layoutOrder = this.mLayoutOrder[i];
            layoutOrder.mItemAdapterPosition = i2;
            layoutOrder.mItemPositionDiff = f;
        }

        boolean hasAdapterPosition(int i) {
            if (this.mLayoutOrder != null) {
                for (LayoutOrder layoutOrder : this.mLayoutOrder) {
                    if (layoutOrder.mItemAdapterPosition == i) {
                        return true;
                    }
                }
            }
            return false;
        }

        private void recycleItems(@NonNull LayoutOrder... layoutOrderArr) {
            for (LayoutOrder layoutOrder : layoutOrderArr) {
                this.mReusedItems.add(new WeakReference<>(layoutOrder));
            }
        }

        private void fillLayoutOrder() {
            int length = this.mLayoutOrder.length;
            for (int i = 0; i < length; i++) {
                if (this.mLayoutOrder[i] == null) {
                    this.mLayoutOrder[i] = createLayoutOrder();
                }
            }
        }

        private LayoutOrder createLayoutOrder() {
            Iterator<WeakReference<LayoutOrder>> it = this.mReusedItems.iterator();
            while (it.hasNext()) {
                LayoutOrder layoutOrder = it.next().get();
                it.remove();
                if (layoutOrder != null) {
                    return layoutOrder;
                }
            }
            return new LayoutOrder();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class LayoutOrder {
        private int mItemAdapterPosition;
        private float mItemPositionDiff;

        private LayoutOrder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: /home/user/work/dex/classes4.dex */
    public static class CarouselSavedState implements Parcelable {
        public static final Parcelable.Creator<CarouselSavedState> CREATOR = new Parcelable.Creator<CarouselSavedState>() { // from class: com.yftech.libradio.carousellayoutmanager.CarouselLayoutManager.CarouselSavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CarouselSavedState createFromParcel(Parcel parcel) {
                return new CarouselSavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public CarouselSavedState[] newArray(int i) {
                return new CarouselSavedState[i];
            }
        };
        private int mCenterItemPosition;
        private final Parcelable mSuperState;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        protected CarouselSavedState(@Nullable Parcelable parcelable) {
            this.mSuperState = parcelable;
        }

        private CarouselSavedState(@NonNull Parcel parcel) {
            this.mSuperState = parcel.readParcelable(Parcelable.class.getClassLoader());
            this.mCenterItemPosition = parcel.readInt();
        }

        protected CarouselSavedState(@NonNull CarouselSavedState carouselSavedState) {
            this.mSuperState = carouselSavedState.mSuperState;
            this.mCenterItemPosition = carouselSavedState.mCenterItemPosition;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.mSuperState, i);
            parcel.writeInt(this.mCenterItemPosition);
        }
    }
}
