package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Transformation;
import android.widget.AdapterView;

@Deprecated
/* loaded from: /home/user/work/dex/classes2.dex */
public class Gallery extends AbsSpinner implements GestureDetector.OnGestureListener {
    private static final int SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT = 250;
    private static final String TAG = "Gallery";
    private static final boolean localLOGV = false;
    private int mAnimationDuration;
    private AdapterView.AdapterContextMenuInfo mContextMenuInfo;
    private Runnable mDisableSuppressSelectionChangedRunnable;
    private int mDownTouchPosition;
    private View mDownTouchView;
    private FlingRunnable mFlingRunnable;
    private GestureDetector mGestureDetector;
    private int mGravity;
    private boolean mIsFirstScroll;
    private boolean mIsRtl;
    private int mLeftMost;
    private boolean mReceivedInvokeKeyDown;
    private int mRightMost;
    private int mSelectedCenterOffset;
    private View mSelectedChild;
    private boolean mShouldCallbackDuringFling;
    private boolean mShouldCallbackOnUnselectedItemClick;
    private boolean mShouldStopFling;
    private int mSpacing;
    private boolean mSuppressSelectionChanged;
    private float mUnselectedAlpha;

    @Override // android.view.View
    protected int computeHorizontalScrollExtent() {
        return 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSetSelected(boolean z) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    public Gallery(Context context) {
        this(context, null);
    }

    public Gallery(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.galleryStyle);
    }

    public Gallery(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public Gallery(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mSpacing = 0;
        this.mAnimationDuration = 400;
        this.mFlingRunnable = new FlingRunnable();
        this.mDisableSuppressSelectionChangedRunnable = new Runnable() { // from class: android.widget.Gallery.1
            @Override // java.lang.Runnable
            public void run() {
                Gallery.this.mSuppressSelectionChanged = false;
                Gallery.this.selectionChanged();
            }
        };
        this.mShouldCallbackDuringFling = true;
        this.mShouldCallbackOnUnselectedItemClick = true;
        this.mIsRtl = true;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.Gallery, i, i2);
        int i3 = obtainStyledAttributes.getInt(0, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        int i4 = obtainStyledAttributes.getInt(1, -1);
        if (i4 > 0) {
            setAnimationDuration(i4);
        }
        setSpacing(obtainStyledAttributes.getDimensionPixelOffset(2, 0));
        setUnselectedAlpha(obtainStyledAttributes.getFloat(3, 0.5f));
        obtainStyledAttributes.recycle();
        this.mGroupFlags |= 1024;
        this.mGroupFlags |= 2048;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mGestureDetector == null) {
            this.mGestureDetector = new GestureDetector(getContext(), this);
            this.mGestureDetector.setIsLongpressEnabled(true);
        }
    }

    public void setCallbackDuringFling(boolean z) {
        this.mShouldCallbackDuringFling = z;
    }

    public void setCallbackOnUnselectedItemClick(boolean z) {
        this.mShouldCallbackOnUnselectedItemClick = z;
    }

    public void setAnimationDuration(int i) {
        this.mAnimationDuration = i;
    }

    public void setSpacing(int i) {
        this.mSpacing = i;
    }

    public void setUnselectedAlpha(float f) {
        this.mUnselectedAlpha = f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public boolean getChildStaticTransformation(View view, Transformation transformation) {
        transformation.clear();
        transformation.setAlpha(view == this.mSelectedChild ? 1.0f : this.mUnselectedAlpha);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return this.mSelectedPosition;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return this.mItemCount;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AbsSpinner, android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mInLayout = true;
        layout(0, false);
        this.mInLayout = false;
    }

    @Override // android.widget.AbsSpinner
    int getChildHeight(View view) {
        return view.getMeasuredHeight();
    }

    void trackMotionScroll(int i) {
        if (getChildCount() == 0) {
            return;
        }
        boolean z = i < 0;
        int limitedMotionScrollAmount = getLimitedMotionScrollAmount(z, i);
        if (limitedMotionScrollAmount != i) {
            this.mFlingRunnable.endFling(false);
            onFinishedMovement();
        }
        offsetChildrenLeftAndRight(limitedMotionScrollAmount);
        detachOffScreenChildren(z);
        if (z) {
            fillToGalleryRight();
        } else {
            fillToGalleryLeft();
        }
        this.mRecycler.clear();
        setSelectionToCenterChild();
        View view = this.mSelectedChild;
        if (view != null) {
            this.mSelectedCenterOffset = (view.getLeft() + (view.getWidth() / 2)) - (getWidth() / 2);
        }
        onScrollChanged(0, 0, 0, 0);
        invalidate();
    }

    int getLimitedMotionScrollAmount(boolean z, int i) {
        View childAt = getChildAt((z != this.mIsRtl ? this.mItemCount - 1 : 0) - this.mFirstPosition);
        if (childAt == null) {
            return i;
        }
        int centerOfView = getCenterOfView(childAt);
        int centerOfGallery = getCenterOfGallery();
        if (z) {
            if (centerOfView <= centerOfGallery) {
                return 0;
            }
        } else if (centerOfView >= centerOfGallery) {
            return 0;
        }
        int i2 = centerOfGallery - centerOfView;
        if (z) {
            return Math.max(i2, i);
        }
        return Math.min(i2, i);
    }

    private void offsetChildrenLeftAndRight(int i) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            getChildAt(childCount).offsetLeftAndRight(i);
        }
    }

    private int getCenterOfGallery() {
        return (((getWidth() - this.mPaddingLeft) - this.mPaddingRight) / 2) + this.mPaddingLeft;
    }

    private static int getCenterOfView(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
    
        if (r10.mIsRtl == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0069, code lost:
    
        r2 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0066, code lost:
    
        if (r10.mIsRtl != false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void detachOffScreenChildren(boolean z) {
        int i;
        int i2;
        int childCount = getChildCount();
        int i3 = this.mFirstPosition;
        int i4 = 0;
        if (z) {
            int i5 = this.mPaddingLeft;
            int i6 = 0;
            i = 0;
            i2 = 0;
            while (i6 < childCount) {
                int i7 = this.mIsRtl ? (childCount - 1) - i6 : i6;
                View childAt = getChildAt(i7);
                if (childAt.getRight() >= i5) {
                    break;
                }
                i2++;
                this.mRecycler.put(i3 + i7, childAt);
                i6++;
                i = i7;
            }
        } else {
            int width = getWidth() - this.mPaddingRight;
            int i8 = childCount - 1;
            int i9 = i8;
            i = 0;
            i2 = 0;
            while (i9 >= 0) {
                int i10 = this.mIsRtl ? i8 - i9 : i9;
                View childAt2 = getChildAt(i10);
                if (childAt2.getLeft() <= width) {
                    break;
                }
                i2++;
                this.mRecycler.put(i3 + i10, childAt2);
                i9--;
                i = i10;
            }
        }
        detachViewsFromParent(i4, i2);
        if (z != this.mIsRtl) {
            this.mFirstPosition += i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollIntoSlots() {
        if (getChildCount() == 0 || this.mSelectedChild == null) {
            return;
        }
        int centerOfGallery = getCenterOfGallery() - getCenterOfView(this.mSelectedChild);
        if (centerOfGallery != 0) {
            this.mFlingRunnable.startUsingDistance(centerOfGallery);
        } else {
            onFinishedMovement();
        }
    }

    private void onFinishedMovement() {
        if (this.mSuppressSelectionChanged) {
            this.mSuppressSelectionChanged = false;
            super.selectionChanged();
        }
        this.mSelectedCenterOffset = 0;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.widget.AdapterView
    public void selectionChanged() {
        if (this.mSuppressSelectionChanged) {
            return;
        }
        super.selectionChanged();
    }

    private void setSelectionToCenterChild() {
        View view = this.mSelectedChild;
        if (this.mSelectedChild == null) {
            return;
        }
        int centerOfGallery = getCenterOfGallery();
        if (view.getLeft() > centerOfGallery || view.getRight() < centerOfGallery) {
            int i = Integer.MAX_VALUE;
            int i2 = 0;
            int childCount = getChildCount() - 1;
            while (true) {
                if (childCount < 0) {
                    break;
                }
                View childAt = getChildAt(childCount);
                if (childAt.getLeft() <= centerOfGallery && childAt.getRight() >= centerOfGallery) {
                    i2 = childCount;
                    break;
                }
                int min = Math.min(Math.abs(childAt.getLeft() - centerOfGallery), Math.abs(childAt.getRight() - centerOfGallery));
                if (min < i) {
                    i2 = childCount;
                    i = min;
                }
                childCount--;
            }
            int i3 = this.mFirstPosition + i2;
            if (i3 != this.mSelectedPosition) {
                setSelectedPositionInt(i3);
                setNextSelectedPositionInt(i3);
                checkSelectionChanged();
            }
        }
    }

    @Override // android.widget.AbsSpinner
    void layout(int i, boolean z) {
        this.mIsRtl = isLayoutRtl();
        int i2 = this.mSpinnerPadding.left;
        int i3 = ((this.mRight - this.mLeft) - this.mSpinnerPadding.left) - this.mSpinnerPadding.right;
        if (this.mDataChanged) {
            handleDataChanged();
        }
        if (this.mItemCount == 0) {
            resetList();
            return;
        }
        if (this.mNextSelectedPosition >= 0) {
            setSelectedPositionInt(this.mNextSelectedPosition);
        }
        recycleAllViews();
        detachAllViewsFromParent();
        this.mRightMost = 0;
        this.mLeftMost = 0;
        this.mFirstPosition = this.mSelectedPosition;
        View makeAndAddView = makeAndAddView(this.mSelectedPosition, 0, 0, true);
        makeAndAddView.offsetLeftAndRight(((i2 + (i3 / 2)) - (makeAndAddView.getWidth() / 2)) + this.mSelectedCenterOffset);
        fillToGalleryRight();
        fillToGalleryLeft();
        this.mRecycler.clear();
        invalidate();
        checkSelectionChanged();
        this.mDataChanged = false;
        this.mNeedSync = false;
        setNextSelectedPositionInt(this.mSelectedPosition);
        updateSelectedItemMetadata();
    }

    private void fillToGalleryLeft() {
        if (this.mIsRtl) {
            fillToGalleryLeftRtl();
        } else {
            fillToGalleryLeftLtr();
        }
    }

    private void fillToGalleryLeftRtl() {
        int i;
        int i2;
        int i3 = this.mSpacing;
        int i4 = this.mPaddingLeft;
        int childCount = getChildCount();
        int i5 = this.mItemCount;
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i = this.mFirstPosition + childCount;
            i2 = childAt.getLeft() - i3;
        } else {
            i = this.mItemCount - 1;
            this.mFirstPosition = i;
            i2 = (this.mRight - this.mLeft) - this.mPaddingRight;
            this.mShouldStopFling = true;
        }
        while (i2 > i4 && i < this.mItemCount) {
            i2 = makeAndAddView(i, i - this.mSelectedPosition, i2, false).getLeft() - i3;
            i++;
        }
    }

    private void fillToGalleryLeftLtr() {
        int i;
        int i2;
        int i3 = this.mSpacing;
        int i4 = this.mPaddingLeft;
        View childAt = getChildAt(0);
        if (childAt != null) {
            i2 = this.mFirstPosition - 1;
            i = childAt.getLeft() - i3;
        } else {
            i = (this.mRight - this.mLeft) - this.mPaddingRight;
            this.mShouldStopFling = true;
            i2 = 0;
        }
        while (i > i4 && i2 >= 0) {
            View makeAndAddView = makeAndAddView(i2, i2 - this.mSelectedPosition, i, false);
            this.mFirstPosition = i2;
            i = makeAndAddView.getLeft() - i3;
            i2--;
        }
    }

    private void fillToGalleryRight() {
        if (this.mIsRtl) {
            fillToGalleryRightRtl();
        } else {
            fillToGalleryRightLtr();
        }
    }

    private void fillToGalleryRightRtl() {
        int i;
        int i2 = this.mSpacing;
        int i3 = (this.mRight - this.mLeft) - this.mPaddingRight;
        int i4 = 0;
        View childAt = getChildAt(0);
        if (childAt != null) {
            i4 = this.mFirstPosition - 1;
            i = childAt.getRight() + i2;
        } else {
            i = this.mPaddingLeft;
            this.mShouldStopFling = true;
        }
        while (i < i3 && i4 >= 0) {
            View makeAndAddView = makeAndAddView(i4, i4 - this.mSelectedPosition, i, true);
            this.mFirstPosition = i4;
            i = makeAndAddView.getRight() + i2;
            i4--;
        }
    }

    private void fillToGalleryRightLtr() {
        int i;
        int i2;
        int i3 = this.mSpacing;
        int i4 = (this.mRight - this.mLeft) - this.mPaddingRight;
        int childCount = getChildCount();
        int i5 = this.mItemCount;
        View childAt = getChildAt(childCount - 1);
        if (childAt != null) {
            i = this.mFirstPosition + childCount;
            i2 = childAt.getRight() + i3;
        } else {
            i = this.mItemCount - 1;
            this.mFirstPosition = i;
            i2 = this.mPaddingLeft;
            this.mShouldStopFling = true;
        }
        while (i2 < i4 && i < i5) {
            i2 = makeAndAddView(i, i - this.mSelectedPosition, i2, true).getRight() + i3;
            i++;
        }
    }

    private View makeAndAddView(int i, int i2, int i3, boolean z) {
        View view;
        if (!this.mDataChanged && (view = this.mRecycler.get(i)) != null) {
            int left = view.getLeft();
            this.mRightMost = Math.max(this.mRightMost, view.getMeasuredWidth() + left);
            this.mLeftMost = Math.min(this.mLeftMost, left);
            setUpChild(view, i2, i3, z);
            return view;
        }
        View view2 = this.mAdapter.getView(i, null, this);
        setUpChild(view2, i2, i3, z);
        return view2;
    }

    private void setUpChild(View view, int i, int i2, boolean z) {
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = (LayoutParams) generateDefaultLayoutParams();
        }
        addViewInLayout(view, z != this.mIsRtl ? -1 : 0, layoutParams, true);
        view.setSelected(i == 0);
        view.measure(ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, this.mSpinnerPadding.left + this.mSpinnerPadding.right, layoutParams.width), ViewGroup.getChildMeasureSpec(this.mHeightMeasureSpec, this.mSpinnerPadding.top + this.mSpinnerPadding.bottom, layoutParams.height));
        int calculateTop = calculateTop(view, true);
        int measuredHeight = view.getMeasuredHeight() + calculateTop;
        int measuredWidth = view.getMeasuredWidth();
        if (z) {
            i3 = i2 + measuredWidth;
        } else {
            i3 = i2;
            i2 -= measuredWidth;
        }
        view.layout(i2, calculateTop, i3, measuredHeight);
    }

    private int calculateTop(View view, boolean z) {
        int measuredHeight = z ? getMeasuredHeight() : getHeight();
        int measuredHeight2 = z ? view.getMeasuredHeight() : view.getHeight();
        int i = this.mGravity;
        if (i == 16) {
            return this.mSpinnerPadding.top + ((((measuredHeight - this.mSpinnerPadding.bottom) - this.mSpinnerPadding.top) - measuredHeight2) / 2);
        }
        if (i == 48) {
            return this.mSpinnerPadding.top;
        }
        if (i != 80) {
            return 0;
        }
        return (measuredHeight - this.mSpinnerPadding.bottom) - measuredHeight2;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean onTouchEvent = this.mGestureDetector.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (action == 1) {
            onUp();
        } else if (action == 3) {
            onCancel();
        }
        return onTouchEvent;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        if (this.mDownTouchPosition < 0) {
            return false;
        }
        scrollToChild(this.mDownTouchPosition - this.mFirstPosition);
        if (!this.mShouldCallbackOnUnselectedItemClick && this.mDownTouchPosition != this.mSelectedPosition) {
            return true;
        }
        performItemClick(this.mDownTouchView, this.mDownTouchPosition, this.mAdapter.getItemId(this.mDownTouchPosition));
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (!this.mShouldCallbackDuringFling) {
            removeCallbacks(this.mDisableSuppressSelectionChangedRunnable);
            if (!this.mSuppressSelectionChanged) {
                this.mSuppressSelectionChanged = true;
            }
        }
        this.mFlingRunnable.startUsingVelocity((int) (-f));
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.mParent.requestDisallowInterceptTouchEvent(true);
        if (!this.mShouldCallbackDuringFling) {
            if (this.mIsFirstScroll) {
                if (!this.mSuppressSelectionChanged) {
                    this.mSuppressSelectionChanged = true;
                }
                postDelayed(this.mDisableSuppressSelectionChangedRunnable, 250L);
            }
        } else if (this.mSuppressSelectionChanged) {
            this.mSuppressSelectionChanged = false;
        }
        trackMotionScroll(((int) f) * (-1));
        this.mIsFirstScroll = false;
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        this.mFlingRunnable.stop(false);
        this.mDownTouchPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        if (this.mDownTouchPosition >= 0) {
            this.mDownTouchView = getChildAt(this.mDownTouchPosition - this.mFirstPosition);
            this.mDownTouchView.setPressed(true);
        }
        this.mIsFirstScroll = true;
        return true;
    }

    void onUp() {
        if (this.mFlingRunnable.mScroller.isFinished()) {
            scrollIntoSlots();
        }
        dispatchUnpress();
    }

    void onCancel() {
        onUp();
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        if (this.mDownTouchPosition < 0) {
            return;
        }
        performHapticFeedback(0);
        dispatchLongPress(this.mDownTouchView, this.mDownTouchPosition, getItemIdAtPosition(this.mDownTouchPosition), motionEvent.getX(), motionEvent.getY(), true);
    }

    private void dispatchPress(View view) {
        if (view != null) {
            view.setPressed(true);
        }
        setPressed(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchUnpress() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount >= 0) {
                getChildAt(childCount).setPressed(false);
            } else {
                setPressed(false);
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSetPressed(boolean z) {
        if (this.mSelectedChild != null) {
            this.mSelectedChild.setPressed(z);
        }
    }

    @Override // android.view.View
    protected ContextMenu.ContextMenuInfo getContextMenuInfo() {
        return this.mContextMenuInfo;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        if (isShowingContextMenuWithCoords()) {
            return false;
        }
        return showContextMenuForChildInternal(view, 0.0f, 0.0f, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean showContextMenuForChild(View view, float f, float f2) {
        return showContextMenuForChildInternal(view, f, f2, true);
    }

    private boolean showContextMenuForChildInternal(View view, float f, float f2, boolean z) {
        int positionForView = getPositionForView(view);
        if (positionForView < 0) {
            return false;
        }
        return dispatchLongPress(view, positionForView, this.mAdapter.getItemId(positionForView), f, f2, z);
    }

    @Override // android.view.View
    public boolean showContextMenu() {
        return showContextMenuInternal(0.0f, 0.0f, false);
    }

    @Override // android.view.View
    public boolean showContextMenu(float f, float f2) {
        return showContextMenuInternal(f, f2, true);
    }

    private boolean showContextMenuInternal(float f, float f2, boolean z) {
        if (!isPressed() || this.mSelectedPosition < 0) {
            return false;
        }
        return dispatchLongPress(getChildAt(this.mSelectedPosition - this.mFirstPosition), this.mSelectedPosition, this.mSelectedRowId, f, f2, z);
    }

    private boolean dispatchLongPress(View view, int i, long j, float f, float f2, boolean z) {
        boolean onItemLongClick = this.mOnItemLongClickListener != null ? this.mOnItemLongClickListener.onItemLongClick(this, this.mDownTouchView, this.mDownTouchPosition, j) : false;
        if (!onItemLongClick) {
            this.mContextMenuInfo = new AdapterView.AdapterContextMenuInfo(view, i, j);
            if (z) {
                onItemLongClick = super.showContextMenuForChild(view, f, f2);
            } else {
                onItemLongClick = super.showContextMenuForChild(this);
            }
        }
        if (onItemLongClick) {
            performHapticFeedback(0);
        }
        return onItemLongClick;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return keyEvent.dispatch(this, null, null);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 66) {
            switch (i) {
                case 21:
                    if (moveDirection(-1)) {
                        playSoundEffect(1);
                        return true;
                    }
                    break;
                case 22:
                    if (moveDirection(1)) {
                        playSoundEffect(3);
                        return true;
                    }
                    break;
            }
            return super.onKeyDown(i, keyEvent);
        }
        this.mReceivedInvokeKeyDown = true;
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (KeyEvent.isConfirmKey(i)) {
            if (this.mReceivedInvokeKeyDown && this.mItemCount > 0) {
                dispatchPress(this.mSelectedChild);
                postDelayed(new Runnable() { // from class: android.widget.Gallery.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Gallery.this.dispatchUnpress();
                    }
                }, ViewConfiguration.getPressedStateDuration());
                performItemClick(getChildAt(this.mSelectedPosition - this.mFirstPosition), this.mSelectedPosition, this.mAdapter.getItemId(this.mSelectedPosition));
            }
            this.mReceivedInvokeKeyDown = false;
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    boolean moveDirection(int i) {
        if (isLayoutRtl()) {
            i = -i;
        }
        int i2 = this.mSelectedPosition + i;
        if (this.mItemCount <= 0 || i2 < 0 || i2 >= this.mItemCount) {
            return false;
        }
        scrollToChild(i2 - this.mFirstPosition);
        return true;
    }

    private boolean scrollToChild(int i) {
        View childAt = getChildAt(i);
        if (childAt == null) {
            return false;
        }
        this.mFlingRunnable.startUsingDistance(getCenterOfGallery() - getCenterOfView(childAt));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.widget.AdapterView
    public void setSelectedPositionInt(int i) {
        super.setSelectedPositionInt(i);
        updateSelectedItemMetadata();
    }

    private void updateSelectedItemMetadata() {
        View view = this.mSelectedChild;
        View childAt = getChildAt(this.mSelectedPosition - this.mFirstPosition);
        this.mSelectedChild = childAt;
        if (childAt == null) {
            return;
        }
        childAt.setSelected(true);
        childAt.setFocusable(true);
        if (hasFocus()) {
            childAt.requestFocus();
        }
        if (view == null || view == childAt) {
            return;
        }
        view.setSelected(false);
        view.setFocusable(false);
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            this.mGravity = i;
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        int i3 = this.mSelectedPosition - this.mFirstPosition;
        return i3 < 0 ? i2 : i2 == i + (-1) ? i3 : i2 >= i3 ? i2 + 1 : i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z || this.mSelectedChild == null) {
            return;
        }
        this.mSelectedChild.requestFocus(i);
        this.mSelectedChild.setSelected(true);
    }

    @Override // android.widget.AbsSpinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Gallery.class.getName();
    }

    @Override // android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        accessibilityNodeInfo.setScrollable(this.mItemCount > 1);
        if (isEnabled()) {
            if (this.mItemCount > 0 && this.mSelectedPosition < this.mItemCount - 1) {
                accessibilityNodeInfo.addAction(4096);
            }
            if (!isEnabled() || this.mItemCount <= 0 || this.mSelectedPosition <= 0) {
                return;
            }
            accessibilityNodeInfo.addAction(8192);
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityActionInternal(int i, Bundle bundle) {
        if (super.performAccessibilityActionInternal(i, bundle)) {
            return true;
        }
        if (i == 4096) {
            if (!isEnabled() || this.mItemCount <= 0 || this.mSelectedPosition >= this.mItemCount - 1) {
                return false;
            }
            return scrollToChild((this.mSelectedPosition - this.mFirstPosition) + 1);
        }
        if (i == 8192 && isEnabled() && this.mItemCount > 0 && this.mSelectedPosition > 0) {
            return scrollToChild((this.mSelectedPosition - this.mFirstPosition) - 1);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class FlingRunnable implements Runnable {
        private int mLastFlingX;
        private Scroller mScroller;

        public FlingRunnable() {
            this.mScroller = new Scroller(Gallery.this.getContext());
        }

        private void startCommon() {
            Gallery.this.removeCallbacks(this);
        }

        public void startUsingVelocity(int i) {
            if (i == 0) {
                return;
            }
            startCommon();
            int i2 = i < 0 ? Integer.MAX_VALUE : 0;
            this.mLastFlingX = i2;
            this.mScroller.fling(i2, 0, i, 0, 0, Integer.MAX_VALUE, 0, Integer.MAX_VALUE);
            Gallery.this.post(this);
        }

        public void startUsingDistance(int i) {
            if (i == 0) {
                return;
            }
            startCommon();
            this.mLastFlingX = 0;
            this.mScroller.startScroll(0, 0, -i, 0, Gallery.this.mAnimationDuration);
            Gallery.this.post(this);
        }

        public void stop(boolean z) {
            Gallery.this.removeCallbacks(this);
            endFling(z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void endFling(boolean z) {
            this.mScroller.forceFinished(true);
            if (z) {
                Gallery.this.scrollIntoSlots();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int max;
            if (Gallery.this.mItemCount != 0) {
                Gallery.this.mShouldStopFling = false;
                Scroller scroller = this.mScroller;
                boolean computeScrollOffset = scroller.computeScrollOffset();
                int currX = scroller.getCurrX();
                int i = this.mLastFlingX - currX;
                if (i > 0) {
                    Gallery.this.mDownTouchPosition = Gallery.this.mIsRtl ? (Gallery.this.mFirstPosition + Gallery.this.getChildCount()) - 1 : Gallery.this.mFirstPosition;
                    max = Math.min(((Gallery.this.getWidth() - Gallery.this.mPaddingLeft) - Gallery.this.mPaddingRight) - 1, i);
                } else {
                    Gallery.this.getChildCount();
                    Gallery.this.mDownTouchPosition = Gallery.this.mIsRtl ? Gallery.this.mFirstPosition : (Gallery.this.mFirstPosition + Gallery.this.getChildCount()) - 1;
                    max = Math.max(-(((Gallery.this.getWidth() - Gallery.this.mPaddingRight) - Gallery.this.mPaddingLeft) - 1), i);
                }
                Gallery.this.trackMotionScroll(max);
                if (computeScrollOffset && !Gallery.this.mShouldStopFling) {
                    this.mLastFlingX = currX;
                    Gallery.this.post(this);
                    return;
                } else {
                    endFling(true);
                    return;
                }
            }
            endFling(true);
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class LayoutParams extends ViewGroup.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
