package com.wuyr.pathlayoutmanager;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Path;
import android.graphics.PointF;
import android.view.View;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import com.wuyr.pathlayoutmanager.RepairedItemAnimator;
import com.wuyr.pathlayoutmanager.keyframes.Keyframes;
import com.wuyr.pathlayoutmanager.keyframes.PosTan;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PathLayoutManager extends RecyclerView.LayoutManager implements RecyclerView.SmoothScroller.ScrollVectorProvider {
    public static final int SCROLL_MODE_LOOP = 2;
    public static final int SCROLL_MODE_NORMAL = 0;
    public static final int SCROLL_MODE_OVERFLOW = 1;
    private boolean isAnimatorInitialized;
    private boolean isAutoSelect;
    private boolean isFlingEnable;
    private boolean isFlinging;
    private boolean isItemDirectionFixed;
    private volatile boolean isPosting;
    private ValueAnimator mAnimator;
    private float mAutoSelectFraction;
    private int mCacheCount;
    private int mFirstVisibleItemPos;
    private long mFixingAnimationDuration;
    private RepairedItemAnimator mItemAnimator;
    private int mItemCountInScreen;
    private int mItemOffset;
    private OnItemSelectedListener mItemSelectedListener;
    private Keyframes mKeyframes;
    private float mOffsetX;
    private float mOffsetY;
    private int mOrientation;
    private RecyclerView.Recycler mRecycler;
    private float[] mScaleRatio;
    private int mScrollMode;
    private RecyclerView.State mState;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnItemSelectedListener {
        void onSelected(int i);
    }

    private float solveTwoPointForm(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return false;
    }

    public PathLayoutManager(Path path, int i) {
        this(path, i, 1);
    }

    public PathLayoutManager(Path path, int i, int i2) {
        this.mCacheCount = 2;
        this.mAutoSelectFraction = 0.5f;
        this.mFixingAnimationDuration = 250L;
        this.mOrientation = i2;
        this.mItemOffset = i;
        this.isFlingEnable = true;
        updatePath(path);
        this.mItemAnimator = new RepairedItemAnimator();
        this.mItemAnimator.setOnErrorListener(new RepairedItemAnimator.OnErrorListener() { // from class: com.wuyr.pathlayoutmanager.PathLayoutManager.1
            @Override // com.wuyr.pathlayoutmanager.RepairedItemAnimator.OnErrorListener
            public void onError(RecyclerView.ViewHolder viewHolder) {
                if (PathLayoutManager.this.mRecycler == null || PathLayoutManager.this.mState == null) {
                    return;
                }
                PathLayoutManager.this.removeAndRecycleAllViews(PathLayoutManager.this.mRecycler);
                for (int i3 = 0; i3 < PathLayoutManager.this.mState.getItemCount(); i3++) {
                    PathLayoutManager.this.mRecycler.recycleView(PathLayoutManager.this.mRecycler.getViewForPosition(i3));
                }
                PathLayoutManager.this.requestLayout();
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (state.getItemCount() == 0) {
            removeAndRecycleAllViews(recycler);
            return;
        }
        this.mRecycler = recycler;
        this.mState = state;
        if (!this.isAnimatorInitialized) {
            initItemAnimator();
            this.isAnimatorInitialized = true;
        }
        detachAndScrapAttachedViews(recycler);
        relayoutChildren(recycler, state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onMeasure(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2) {
        if (this.mKeyframes != null) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            if (mode == Integer.MIN_VALUE) {
                i = View.MeasureSpec.makeMeasureSpec(this.mKeyframes.getMaxX(), 1073741824);
            }
            if (mode2 == Integer.MIN_VALUE) {
                i2 = View.MeasureSpec.makeMeasureSpec(this.mKeyframes.getMaxY(), 1073741824);
            }
        }
        super.onMeasure(recycler, state, i, i2);
    }

    private void initItemAnimator() {
        try {
            Field declaredField = RecyclerView.LayoutManager.class.getDeclaredField("mRecyclerView");
            declaredField.setAccessible(true);
            RecyclerView recyclerView = (RecyclerView) declaredField.get(this);
            if (recyclerView != null) {
                recyclerView.setOverScrollMode(2);
                recyclerView.setHorizontalScrollBarEnabled(false);
                recyclerView.setVerticalScrollBarEnabled(false);
                if (recyclerView.getItemAnimator() != this.mItemAnimator) {
                    recyclerView.setItemAnimator(this.mItemAnimator);
                }
            }
            this.mRecycler.setViewCacheSize(this.mCacheCount);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void relayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        List<PosTan> needLayoutItems = getNeedLayoutItems();
        if (needLayoutItems.isEmpty() || state.getItemCount() == 0 || this.mKeyframes == null) {
            removeAndRecycleAllViews(recycler);
        } else {
            onLayout(recycler, needLayoutItems);
            recycleChildren(recycler);
        }
    }

    private void onLayout(RecyclerView.Recycler recycler, List<PosTan> list) {
        for (PosTan posTan : list) {
            View viewForPosition = recycler.getViewForPosition(posTan.index);
            addView(viewForPosition);
            measureChild(viewForPosition, 0, 0);
            int decoratedMeasuredWidth = ((int) posTan.x) - (getDecoratedMeasuredWidth(viewForPosition) / 2);
            int decoratedMeasuredHeight = ((int) posTan.y) - (getDecoratedMeasuredHeight(viewForPosition) / 2);
            layoutDecorated(viewForPosition, decoratedMeasuredWidth, decoratedMeasuredHeight, decoratedMeasuredWidth + getDecoratedMeasuredWidth(viewForPosition), decoratedMeasuredHeight + getDecoratedMeasuredHeight(viewForPosition));
            viewForPosition.setRotation(this.isItemDirectionFixed ? 0.0f : posTan.getChildAngle());
            if (this.mScaleRatio != null) {
                float scale = getScale(posTan.fraction);
                viewForPosition.setScaleX(scale);
                viewForPosition.setScaleY(scale);
            }
        }
    }

    private float getScale(float f) {
        boolean z = false;
        float f2 = 0.0f;
        boolean z2 = false;
        float f3 = 1.0f;
        int i = 1;
        while (i < this.mScaleRatio.length && this.mScaleRatio[i] <= f) {
            f2 = this.mScaleRatio[i - 1];
            f3 = this.mScaleRatio[i];
            i += 2;
            z2 = true;
        }
        int length = this.mScaleRatio.length - 1;
        float f4 = 0.0f;
        float f5 = 1.0f;
        while (length >= 1 && this.mScaleRatio[length] >= f) {
            f4 = this.mScaleRatio[length - 1];
            f5 = this.mScaleRatio[length];
            length -= 2;
            z = true;
        }
        if (!z2) {
            f2 = 1.0f;
        }
        float solveTwoPointForm = f2 + (((z ? f4 : 1.0f) - f2) * solveTwoPointForm(f3, f5, f));
        return isFinite(solveTwoPointForm) ? solveTwoPointForm : f2;
    }

    private boolean isFinite(float f) {
        return (Float.isNaN(f) || Float.isInfinite(f)) ? false : true;
    }

    private List<PosTan> getNeedLayoutItems() {
        checkKeyframes();
        ArrayList arrayList = new ArrayList();
        int itemCount = getItemCount();
        if (isSatisfiedLoopScroll()) {
            initNeedLayoutLoopScrollItems(arrayList, itemCount);
        } else {
            initNeedLayoutItems(arrayList, itemCount);
        }
        return arrayList;
    }

    private void initNeedLayoutLoopScrollItems(List<PosTan> list, int i) {
        int overflowCount = getOverflowCount();
        this.mFirstVisibleItemPos = (overflowCount - this.mItemCountInScreen) - 1;
        for (int i2 = this.mFirstVisibleItemPos; i2 < overflowCount; i2++) {
            int i3 = i2 % i;
            if (i3 < 0) {
                i3 = i3 == (-i) ? 0 : i3 + i;
            }
            float scrollOffset = (((i2 + i) * this.mItemOffset) - getScrollOffset()) / this.mKeyframes.getPathLength();
            PosTan value = this.mKeyframes.getValue(scrollOffset);
            if (value != null) {
                list.add(new PosTan(value, i3, scrollOffset));
            }
        }
    }

    private void initNeedLayoutItems(List<PosTan> list, int i) {
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            if ((this.mItemOffset * i2) - getScrollOffset() >= 0.0f) {
                this.mFirstVisibleItemPos = i2;
                break;
            }
            i2++;
        }
        int i3 = this.mFirstVisibleItemPos + this.mItemCountInScreen;
        int itemCount = this.mState == null ? getItemCount() : this.mState.getItemCount();
        if (i3 > itemCount) {
            i3 = itemCount;
        }
        for (int i4 = this.mFirstVisibleItemPos; i4 < i3; i4++) {
            float scrollOffset = ((this.mItemOffset * i4) - getScrollOffset()) / this.mKeyframes.getPathLength();
            PosTan value = this.mKeyframes.getValue(scrollOffset);
            if (value != null) {
                list.add(new PosTan(value, i4, scrollOffset));
            }
        }
    }

    private int getOverflowCount() {
        int itemLength = getItemLength();
        int pathLength = this.mKeyframes.getPathLength();
        int scrollOffset = (int) (getScrollOffset() + pathLength);
        int i = pathLength + itemLength;
        return (((scrollOffset - itemLength) % itemLength) + (scrollOffset > i ? scrollOffset - i : 0)) / this.mItemOffset;
    }

    private void recycleChildren(RecyclerView.Recycler recycler) {
        List<RecyclerView.ViewHolder> scrapList = recycler.getScrapList();
        for (int i = 0; i < scrapList.size(); i++) {
            RecyclerView.ViewHolder viewHolder = scrapList.get(i);
            removeView(viewHolder.itemView);
            recycler.recycleView(viewHolder.itemView);
        }
    }

    private int fixOverflowIndex(int i, int i2) {
        while (i < 0) {
            i += i2;
        }
        return i % i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.mRecycler = recycler;
        this.mState = state;
        checkKeyframes();
        detachAndScrapAttachedViews(recycler);
        float f = this.mOffsetX;
        updateOffsetX(i);
        relayoutChildren(recycler, state);
        if (f == this.mOffsetX) {
            return 0;
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        this.mRecycler = recycler;
        this.mState = state;
        checkKeyframes();
        detachAndScrapAttachedViews(recycler);
        float f = this.mOffsetY;
        updateOffsetY(i);
        relayoutChildren(recycler, state);
        if (f == this.mOffsetY) {
            return 0;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOffsetY(float f) {
        if (!this.isFlinging || this.isFlingEnable) {
            this.mOffsetY += f;
            int pathLength = this.mKeyframes.getPathLength();
            int itemLength = getItemLength();
            if (isSatisfiedLoopScroll(pathLength, itemLength)) {
                float f2 = itemLength;
                if (this.mOffsetY > f2) {
                    this.mOffsetY %= f2;
                    this.mOffsetY -= this.mItemOffset;
                    return;
                } else {
                    if (this.mOffsetY <= (-pathLength)) {
                        this.mOffsetY += f2;
                        this.mOffsetY += this.mItemOffset;
                        return;
                    }
                    return;
                }
            }
            if (isOverflowMode()) {
                float f3 = -pathLength;
                if (this.mOffsetY < f3) {
                    this.mOffsetY = f3;
                    return;
                }
                float f4 = itemLength;
                if (this.mOffsetY > f4) {
                    this.mOffsetY = f4;
                    return;
                }
                return;
            }
            int i = itemLength - pathLength;
            if (this.mOffsetY < 0.0f) {
                this.mOffsetY = 0.0f;
                return;
            }
            float f5 = i;
            if (this.mOffsetY > f5) {
                if (itemLength > pathLength) {
                    this.mOffsetY = f5;
                } else {
                    this.mOffsetY -= f;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOffsetX(float f) {
        if (!this.isFlinging || this.isFlingEnable) {
            this.mOffsetX += f;
            int pathLength = this.mKeyframes.getPathLength();
            int itemLength = getItemLength();
            if (isSatisfiedLoopScroll(pathLength, itemLength)) {
                float f2 = itemLength;
                if (this.mOffsetX > f2) {
                    this.mOffsetX %= f2;
                    this.mOffsetX -= this.mItemOffset;
                    return;
                } else {
                    if (this.mOffsetX <= (-pathLength)) {
                        this.mOffsetX += f2;
                        this.mOffsetX += this.mItemOffset;
                        return;
                    }
                    return;
                }
            }
            if (isOverflowMode()) {
                float f3 = -pathLength;
                if (this.mOffsetX < f3) {
                    this.mOffsetX = f3;
                    return;
                }
                float f4 = itemLength;
                if (this.mOffsetX > f4) {
                    this.mOffsetX = f4;
                    return;
                }
                return;
            }
            int i = itemLength - pathLength;
            if (this.mOffsetX < 0.0f) {
                this.mOffsetX = 0.0f;
                return;
            }
            float f5 = i;
            if (this.mOffsetX > f5) {
                if (itemLength > pathLength) {
                    this.mOffsetX = f5;
                } else {
                    this.mOffsetX -= f;
                }
            }
        }
    }

    private boolean isSatisfiedLoopScroll() {
        checkKeyframes();
        return isLoopScrollMode() && getItemLength() - this.mKeyframes.getPathLength() > this.mItemOffset;
    }

    private boolean isSatisfiedLoopScroll(int i, int i2) {
        return isLoopScrollMode() && i2 - i > this.mItemOffset;
    }

    private boolean isLoopScrollMode() {
        return this.mScrollMode == 2;
    }

    private boolean isOverflowMode() {
        return this.mScrollMode == 1;
    }

    private int getItemLength() {
        return ((getItemCount() * this.mItemOffset) - this.mItemOffset) + 1;
    }

    private float getScrollOffset() {
        return this.mOrientation == 1 ? this.mOffsetY : this.mOffsetX;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    public void updatePath(Path path) {
        if (path != null) {
            this.mKeyframes = new Keyframes(path);
            if (this.mItemOffset == 0) {
                throw new IllegalStateException("itemOffset must be > 0 !!!");
            }
            this.mItemCountInScreen = (this.mKeyframes.getPathLength() / this.mItemOffset) + 1;
        }
        requestLayout();
    }

    public void setItemOffset(int i) {
        if (this.mItemOffset == i || i <= 0) {
            return;
        }
        this.mItemOffset = i;
        if (this.mKeyframes != null) {
            this.mItemCountInScreen = (this.mKeyframes.getPathLength() / this.mItemOffset) + 1;
            requestLayout();
        }
    }

    public void setItemDirectionFixed(boolean z) {
        if (this.isItemDirectionFixed != z) {
            this.isItemDirectionFixed = z;
            requestLayout();
        }
    }

    public void setScrollMode(int i) {
        if (i != this.mScrollMode) {
            this.mScrollMode = i;
            requestLayout();
        }
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            if (i == 0) {
                this.mOffsetX = this.mOffsetY;
                this.mOffsetY = 0.0f;
            } else {
                this.mOffsetY = this.mOffsetX;
                this.mOffsetX = 0.0f;
            }
        }
    }

    public void setCacheCount(int i) {
        if (this.mRecycler != null) {
            this.mRecycler.setViewCacheSize(i);
        }
        this.mCacheCount = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onScrollStateChanged(int i) {
        this.isFlinging = i == 2;
        switch (i) {
            case 0:
                if (this.isAutoSelect) {
                    smoothScrollToPosition(findClosestPosition());
                    return;
                }
                return;
            case 1:
                stopFixingAnimation();
                return;
            default:
                return;
        }
    }

    private void stopFixingAnimation() {
        if (this.mAnimator == null || !this.mAnimator.isRunning()) {
            return;
        }
        this.mAnimator.cancel();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        int itemCount = getItemCount();
        if (i <= -1 || i >= itemCount) {
            return;
        }
        checkKeyframes();
        int distance = getDistance(i);
        if (canScrollVertically()) {
            updateOffsetY(distance);
        } else {
            updateOffsetX(distance);
        }
        requestLayout();
    }

    private int getDistance(int i) {
        float pathLength;
        int i2;
        PosTan visiblePosTanByPosition = getVisiblePosTanByPosition(i);
        if (visiblePosTanByPosition == null) {
            int itemCount = getItemCount();
            int findClosestPosition = findClosestPosition();
            int i3 = 0;
            do {
                i3++;
                i2 = findClosestPosition + i3;
            } while (fixOverflowIndex(i2, itemCount) != i);
            if (isSatisfiedLoopScroll() && i3 < Math.abs(findClosestPosition - i)) {
                i = i2;
            }
            pathLength = (i * this.mItemOffset) - getScrollOffset();
        } else {
            pathLength = this.mKeyframes.getPathLength() * visiblePosTanByPosition.fraction;
        }
        return (int) (pathLength - (this.mKeyframes.getPathLength() * this.mAutoSelectFraction));
    }

    @Nullable
    private PosTan getVisiblePosTanByPosition(int i) {
        List<PosTan> needLayoutItems = getNeedLayoutItems();
        for (int i2 = 0; i2 < needLayoutItems.size(); i2++) {
            PosTan posTan = needLayoutItems.get(i2);
            if (posTan.index == i) {
                return posTan;
            }
        }
        return null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        smoothScrollToPosition(i);
    }

    public void smoothScrollToPosition(int i) {
        if (i <= -1 || i >= getItemCount() || this.mState == null) {
            return;
        }
        checkKeyframes();
        startValueAnimator(i);
    }

    private void startValueAnimator(final int i) {
        stopFixingAnimation();
        this.mAnimator = ValueAnimator.ofFloat(0.0f, getDistance(i)).setDuration(this.mFixingAnimationDuration);
        this.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.wuyr.pathlayoutmanager.PathLayoutManager.2
            private float mLastScrollOffset;

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f = floatValue - this.mLastScrollOffset;
                if (PathLayoutManager.this.canScrollVertically()) {
                    PathLayoutManager.this.updateOffsetY(f);
                } else {
                    PathLayoutManager.this.updateOffsetX(f);
                }
                PathLayoutManager.this.requestLayout();
                this.mLastScrollOffset = floatValue;
            }
        });
        this.mAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.wuyr.pathlayoutmanager.PathLayoutManager.3
            boolean isCanceled;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                this.isCanceled = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (this.isCanceled || !PathLayoutManager.this.isAutoSelect || PathLayoutManager.this.mItemSelectedListener == null) {
                    return;
                }
                PathLayoutManager.this.mItemSelectedListener.onSelected(i);
            }
        });
        this.mAnimator.start();
    }

    private int findClosestPosition() {
        int i;
        List<PosTan> needLayoutItems = getNeedLayoutItems();
        if (needLayoutItems.size() > 1) {
            i = needLayoutItems.get(0).index;
            float abs = Math.abs(needLayoutItems.get(0).fraction - this.mAutoSelectFraction);
            for (PosTan posTan : needLayoutItems) {
                float abs2 = Math.abs(posTan.fraction - this.mAutoSelectFraction);
                if (abs2 < abs) {
                    i = posTan.index;
                    abs = abs2;
                }
            }
        } else {
            i = -1;
        }
        return (i >= 0 || needLayoutItems.isEmpty()) ? i : needLayoutItems.get(0).index;
    }

    public void setAutoSelectFraction(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.mAutoSelectFraction != f) {
            this.mAutoSelectFraction = f;
            requestLayout();
        }
    }

    public void setAutoSelect(boolean z) {
        if (this.isAutoSelect != z) {
            this.isAutoSelect = z;
            if (!z || this.mKeyframes == null) {
                return;
            }
            onScrollStateChanged(0);
        }
    }

    public void setItemScaleRatio(float... fArr) {
        if (fArr.length == 0) {
            fArr = new float[]{1.0f, 1.0f};
        }
        for (float f : fArr) {
            if (f < 0.0f) {
                throw new IllegalArgumentException("Array value can not be negative!");
            }
        }
        if (this.mScaleRatio != fArr) {
            if (fArr.length < 2 || fArr.length % 2 != 0) {
                throw new IllegalArgumentException("Array length no match!");
            }
            this.mScaleRatio = fArr;
            int i = 1;
            if (this.mScaleRatio[1] != 0.0f) {
                this.mScaleRatio = insertElement(true, this.mScaleRatio, 1.0f, 0.0f);
            }
            if (this.mScaleRatio[this.mScaleRatio.length - 1] != 1.0f) {
                this.mScaleRatio = insertElement(false, this.mScaleRatio, 1.0f, 1.0f);
            }
            float f2 = this.mScaleRatio[1];
            while (i < this.mScaleRatio.length) {
                float f3 = this.mScaleRatio[i];
                if (f2 > f3) {
                    throw new IllegalArgumentException("Incorrect array value! position must be from small to large");
                }
                i += 2;
                f2 = f3;
            }
            requestLayout();
        }
    }

    private float[] insertElement(boolean z, @NonNull float[] fArr, @NonNull float... fArr2) {
        float[] fArr3 = new float[fArr.length + fArr2.length];
        if (z) {
            System.arraycopy(fArr2, 0, fArr3, 0, fArr2.length);
            System.arraycopy(fArr, 0, fArr3, fArr2.length, fArr.length);
        } else {
            System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
            System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        }
        return fArr3;
    }

    public void setFixingAnimationDuration(long j) {
        this.mFixingAnimationDuration = j;
    }

    public void setFlingEnable(boolean z) {
        this.isFlingEnable = z;
    }

    public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.mItemSelectedListener = onItemSelectedListener;
    }

    private void checkKeyframes() {
        if (this.mKeyframes == null) {
            throw new NullPointerException("Path not set!");
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        removeAndRecycleAllViews(recycler);
        if (this.mKeyframes != null) {
            this.mKeyframes.release();
            this.mKeyframes = null;
        }
        this.mScaleRatio = null;
        this.mItemAnimator = null;
        this.mRecycler = null;
        this.mState = null;
        stopFixingAnimation();
        this.mAnimator = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(RecyclerView recyclerView, int i, int i2) {
        delayNotifyDataSetChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(RecyclerView recyclerView, int i, int i2) {
        delayNotifyDataSetChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2) {
        delayNotifyDataSetChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(RecyclerView recyclerView, int i, int i2, Object obj) {
        delayNotifyDataSetChanged(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(RecyclerView recyclerView, int i, int i2, int i3) {
        delayNotifyDataSetChanged(recyclerView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delayNotifyDataSetChanged(final RecyclerView recyclerView) {
        if (recyclerView.isComputingLayout()) {
            this.isPosting = true;
            recyclerView.postDelayed(new Runnable() { // from class: com.wuyr.pathlayoutmanager.PathLayoutManager.4
                @Override // java.lang.Runnable
                public void run() {
                    PathLayoutManager.this.delayNotifyDataSetChanged(recyclerView);
                }
            }, 5L);
        } else if (this.isPosting) {
            this.isPosting = false;
            recyclerView.getAdapter().notifyDataSetChanged();
        }
    }
}
