package com.alibaba.android.vlayout.layout;

import android.graphics.Rect;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.android.vlayout.LayoutManagerHelper;
import com.alibaba.android.vlayout.OrientationHelperEx;
import com.alibaba.android.vlayout.Range;
import com.alibaba.android.vlayout.layout.BaseLayoutHelper;
import com.alibaba.android.vlayout.layout.RangeStyle;
import java.lang.reflect.Array;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RangeStyle<T extends RangeStyle> {
    private static final boolean DEBUG = false;
    private static final String TAG = "RangeStyle";
    private int mBgColor;
    protected BaseLayoutHelper mLayoutHelper;
    private View mLayoutView;
    private BaseLayoutHelper.LayoutViewBindListener mLayoutViewBindListener;
    private BaseLayoutHelper.LayoutViewUnBindListener mLayoutViewUnBindListener;
    protected int mMarginBottom;
    protected int mMarginLeft;
    protected int mMarginRight;
    protected int mMarginTop;
    protected int mPaddingBottom;
    protected int mPaddingLeft;
    protected int mPaddingRight;
    protected int mPaddingTop;
    protected T mParent;
    protected Range<Integer> mRange;
    private int mOriginStartOffset = 0;
    private int mOriginEndOffset = 0;
    protected ArrayMap<Range<Integer>, T> mChildren = new ArrayMap<>();
    protected Rect mLayoutRegion = new Rect();

    private boolean isValidScrolled(int i) {
        return (i == Integer.MAX_VALUE || i == Integer.MIN_VALUE) ? false : true;
    }

    public RangeStyle(BaseLayoutHelper baseLayoutHelper) {
        this.mLayoutHelper = baseLayoutHelper;
    }

    public RangeStyle() {
    }

    public void addChildRangeStyle(int i, int i2, T t) {
        if (i > i2 || t == null) {
            return;
        }
        t.setParent(this);
        t.setOriginStartOffset(i);
        t.setOriginEndOffset(i2);
        t.setRange(i, i2);
        this.mChildren.put(t.getRange(), t);
    }

    public void setParent(T t) {
        this.mParent = t;
    }

    public void setPadding(int i, int i2, int i3, int i4) {
        this.mPaddingLeft = i;
        this.mPaddingRight = i3;
        this.mPaddingTop = i2;
        this.mPaddingBottom = i4;
    }

    public void setMargin(int i, int i2, int i3, int i4) {
        this.mMarginLeft = i;
        this.mMarginTop = i2;
        this.mMarginRight = i3;
        this.mMarginBottom = i4;
    }

    protected int getHorizontalMargin() {
        return this.mMarginLeft + this.mMarginRight;
    }

    protected int getVerticalMargin() {
        return this.mMarginTop + this.mMarginBottom;
    }

    protected int getHorizontalPadding() {
        return this.mPaddingLeft + this.mPaddingRight;
    }

    protected int getVerticalPadding() {
        return this.mPaddingTop + this.mPaddingBottom;
    }

    public int getPaddingLeft() {
        return this.mPaddingLeft;
    }

    public int getPaddingRight() {
        return this.mPaddingRight;
    }

    public int getPaddingTop() {
        return this.mPaddingTop;
    }

    public int getPaddingBottom() {
        return this.mPaddingBottom;
    }

    public int getMarginLeft() {
        return this.mMarginLeft;
    }

    public int getMarginRight() {
        return this.mMarginRight;
    }

    public int getMarginTop() {
        return this.mMarginTop;
    }

    public int getMarginBottom() {
        return this.mMarginBottom;
    }

    public void setPaddingLeft(int i) {
        this.mPaddingLeft = i;
    }

    public void setPaddingRight(int i) {
        this.mPaddingRight = i;
    }

    public void setPaddingTop(int i) {
        this.mPaddingTop = i;
    }

    public void setPaddingBottom(int i) {
        this.mPaddingBottom = i;
    }

    public void setMarginLeft(int i) {
        this.mMarginLeft = i;
    }

    public void setMarginRight(int i) {
        this.mMarginRight = i;
    }

    public void setMarginTop(int i) {
        this.mMarginTop = i;
    }

    public void setMarginBottom(int i) {
        this.mMarginBottom = i;
    }

    public int getFamilyHorizontalMargin() {
        return (this.mParent != null ? this.mParent.getFamilyHorizontalMargin() : 0) + getHorizontalMargin();
    }

    public int getFamilyVerticalMargin() {
        return (this.mParent != null ? this.mParent.getFamilyVerticalMargin() : 0) + getVerticalMargin();
    }

    public int getFamilyHorizontalPadding() {
        return (this.mParent != null ? this.mParent.getFamilyHorizontalPadding() : 0) + getHorizontalPadding();
    }

    public int getFamilyVerticalPadding() {
        return (this.mParent != null ? this.mParent.getFamilyVerticalPadding() : 0) + getVerticalPadding();
    }

    public int getFamilyPaddingLeft() {
        return (this.mParent != null ? this.mParent.getFamilyPaddingLeft() : 0) + this.mPaddingLeft;
    }

    public int getFamilyPaddingRight() {
        return (this.mParent != null ? this.mParent.getFamilyPaddingRight() : 0) + this.mPaddingRight;
    }

    public int getFamilyPaddingTop() {
        return (this.mParent != null ? this.mParent.getFamilyPaddingTop() : 0) + this.mPaddingTop;
    }

    public int getFamilyPaddingBottom() {
        return (this.mParent != null ? this.mParent.getFamilyPaddingBottom() : 0) + this.mPaddingBottom;
    }

    public int getFamilyMarginLeft() {
        return (this.mParent != null ? this.mParent.getFamilyMarginLeft() : 0) + this.mMarginLeft;
    }

    public int getFamilyMarginRight() {
        return (this.mParent != null ? this.mParent.getFamilyMarginRight() : 0) + this.mMarginRight;
    }

    public int getFamilyMarginTop() {
        return (this.mParent != null ? this.mParent.getFamilyMarginTop() : 0) + this.mMarginTop;
    }

    public int getFamilyMarginBottom() {
        return (this.mParent != null ? this.mParent.getFamilyMarginBottom() : 0) + this.mMarginBottom;
    }

    public int getAncestorHorizontalMargin() {
        if (this.mParent != null) {
            return this.mParent.getAncestorHorizontalMargin() + this.mParent.getHorizontalMargin();
        }
        return 0;
    }

    public int getAncestorVerticalMargin() {
        if (this.mParent != null) {
            return this.mParent.getAncestorVerticalMargin() + this.mParent.getVerticalMargin();
        }
        return 0;
    }

    public int getAncestorHorizontalPadding() {
        if (this.mParent != null) {
            return this.mParent.getAncestorHorizontalPadding() + this.mParent.getHorizontalPadding();
        }
        return 0;
    }

    public int getAncestorVerticalPadding() {
        if (this.mParent != null) {
            return this.mParent.getAncestorVerticalPadding() + this.mParent.getVerticalPadding();
        }
        return 0;
    }

    public int getAncestorPaddingLeft() {
        if (this.mParent != null) {
            return this.mParent.getAncestorPaddingLeft() + this.mParent.getPaddingLeft();
        }
        return 0;
    }

    public int getAncestorPaddingRight() {
        if (this.mParent != null) {
            return this.mParent.getAncestorPaddingRight() + this.mParent.getPaddingRight();
        }
        return 0;
    }

    public int getAncestorPaddingTop() {
        if (this.mParent != null) {
            return this.mParent.getAncestorPaddingTop() + this.mParent.getPaddingTop();
        }
        return 0;
    }

    public int getAncestorPaddingBottom() {
        if (this.mParent != null) {
            return this.mParent.getAncestorPaddingBottom() + this.mParent.getPaddingBottom();
        }
        return 0;
    }

    public int getAncestorMarginLeft() {
        if (this.mParent != null) {
            return this.mParent.getAncestorMarginLeft() + this.mParent.getMarginLeft();
        }
        return 0;
    }

    public int getAncestorMarginRight() {
        if (this.mParent != null) {
            return this.mParent.getAncestorMarginRight() + this.mParent.getMarginRight();
        }
        return 0;
    }

    public int getAncestorMarginTop() {
        if (this.mParent != null) {
            return this.mParent.getAncestorMarginTop() + this.mParent.getMarginTop();
        }
        return 0;
    }

    public int getAncestorMarginBottom() {
        if (this.mParent != null) {
            return this.mParent.getAncestorMarginBottom() + this.mParent.getMarginBottom();
        }
        return 0;
    }

    public int getOriginStartOffset() {
        return this.mOriginStartOffset;
    }

    public int getOriginEndOffset() {
        return this.mOriginEndOffset;
    }

    public void setOriginStartOffset(int i) {
        this.mOriginStartOffset = i;
    }

    public void setOriginEndOffset(int i) {
        this.mOriginEndOffset = i;
    }

    public Range<Integer> getRange() {
        return this.mRange;
    }

    public BaseLayoutHelper getLayoutHelper() {
        if (this.mLayoutHelper != null) {
            return this.mLayoutHelper;
        }
        if (this.mParent != null) {
            return this.mParent.getLayoutHelper();
        }
        return null;
    }

    public boolean isChildrenEmpty() {
        return this.mChildren.isEmpty();
    }

    public boolean isRoot() {
        return this.mParent == null;
    }

    public boolean isOutOfRange(int i) {
        return this.mRange == null || !this.mRange.contains((Range<Integer>) Integer.valueOf(i));
    }

    public boolean isFirstPosition(int i) {
        return this.mRange != null && this.mRange.getLower().intValue() == i;
    }

    public boolean isLastPosition(int i) {
        return this.mRange != null && this.mRange.getUpper().intValue() == i;
    }

    public void setRange(int i, int i2) {
        this.mRange = Range.create(Integer.valueOf(i), Integer.valueOf(i2));
        if (this.mChildren.isEmpty()) {
            return;
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        int size = this.mChildren.size();
        for (int i3 = 0; i3 < size; i3++) {
            RangeStyle rangeStyle = (RangeStyle) this.mChildren.valueAt(i3);
            int originStartOffset = rangeStyle.getOriginStartOffset() + i;
            int originEndOffset = rangeStyle.getOriginEndOffset() + i;
            simpleArrayMap.put(Range.create(Integer.valueOf(originStartOffset), Integer.valueOf(originEndOffset)), rangeStyle);
            rangeStyle.setRange(originStartOffset, originEndOffset);
        }
        this.mChildren.clear();
        this.mChildren.putAll(simpleArrayMap);
    }

    public void beforeLayout(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutManagerHelper layoutManagerHelper) {
        if (!isChildrenEmpty()) {
            int size = this.mChildren.size();
            for (int i = 0; i < size; i++) {
                ((RangeStyle) this.mChildren.valueAt(i)).beforeLayout(recycler, state, layoutManagerHelper);
            }
        }
        if (requireLayoutView()) {
            View view = this.mLayoutView;
        } else if (this.mLayoutView != null) {
            if (this.mLayoutViewUnBindListener != null) {
                this.mLayoutViewUnBindListener.onUnbind(this.mLayoutView, getLayoutHelper());
            }
            layoutManagerHelper.removeChildView(this.mLayoutView);
            this.mLayoutView = null;
        }
    }

    public void afterLayout(RecyclerView.Recycler recycler, RecyclerView.State state, int i, int i2, int i3, LayoutManagerHelper layoutManagerHelper) {
        if (!isChildrenEmpty()) {
            int size = this.mChildren.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((RangeStyle) this.mChildren.valueAt(i4)).afterLayout(recycler, state, i, i2, i3, layoutManagerHelper);
            }
        }
        if (requireLayoutView()) {
            if (isValidScrolled(i3) && this.mLayoutView != null) {
                this.mLayoutRegion.union(this.mLayoutView.getLeft(), this.mLayoutView.getTop(), this.mLayoutView.getRight(), this.mLayoutView.getBottom());
            }
            if (!this.mLayoutRegion.isEmpty()) {
                if (isValidScrolled(i3)) {
                    if (layoutManagerHelper.getOrientation() == 1) {
                        this.mLayoutRegion.offset(0, -i3);
                    } else {
                        this.mLayoutRegion.offset(-i3, 0);
                    }
                }
                unionChildRegion(this);
                int contentWidth = layoutManagerHelper.getContentWidth();
                int contentHeight = layoutManagerHelper.getContentHeight();
                if (layoutManagerHelper.getOrientation() != 1 ? this.mLayoutRegion.intersects((-contentWidth) / 4, 0, contentWidth + (contentWidth / 4), contentHeight) : this.mLayoutRegion.intersects(0, (-contentHeight) / 4, contentWidth, contentHeight + (contentHeight / 4))) {
                    if (this.mLayoutView == null) {
                        this.mLayoutView = layoutManagerHelper.generateLayoutView();
                        layoutManagerHelper.addBackgroundView(this.mLayoutView, true);
                    }
                    if (layoutManagerHelper.getOrientation() == 1) {
                        this.mLayoutRegion.left = layoutManagerHelper.getPaddingLeft() + getFamilyMarginLeft() + getAncestorPaddingLeft();
                        this.mLayoutRegion.right = ((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingRight()) - getFamilyMarginRight()) - getAncestorPaddingRight();
                    } else {
                        this.mLayoutRegion.top = layoutManagerHelper.getPaddingTop() + getFamilyMarginTop() + getAncestorPaddingTop();
                        this.mLayoutRegion.bottom = ((layoutManagerHelper.getContentWidth() - layoutManagerHelper.getPaddingBottom()) - getFamilyMarginBottom()) - getAncestorPaddingBottom();
                    }
                    bindLayoutView(this.mLayoutView);
                    hideLayoutViews(layoutManagerHelper);
                    return;
                }
                this.mLayoutRegion.set(0, 0, 0, 0);
                if (this.mLayoutView != null) {
                    this.mLayoutView.layout(0, 0, 0, 0);
                }
                hideLayoutViews(layoutManagerHelper);
            }
        }
        hideLayoutViews(layoutManagerHelper);
        if (isRoot()) {
            removeChildViews(layoutManagerHelper, this);
        }
    }

    private void unionChildRegion(RangeStyle<T> rangeStyle) {
        if (rangeStyle.isChildrenEmpty()) {
            return;
        }
        int size = rangeStyle.mChildren.size();
        for (int i = 0; i < size; i++) {
            RangeStyle<T> rangeStyle2 = (RangeStyle) rangeStyle.mChildren.valueAt(i);
            unionChildRegion(rangeStyle2);
            if (rangeStyle2.mLayoutView != null) {
                rangeStyle.mLayoutRegion.union(rangeStyle2.mLayoutView.getLeft(), rangeStyle2.mLayoutView.getTop(), rangeStyle2.mLayoutView.getRight(), rangeStyle2.mLayoutView.getBottom());
            }
        }
    }

    private void removeChildViews(LayoutManagerHelper layoutManagerHelper, RangeStyle<T> rangeStyle) {
        if (!rangeStyle.isChildrenEmpty()) {
            int size = rangeStyle.mChildren.size();
            for (int i = 0; i < size; i++) {
                removeChildViews(layoutManagerHelper, (RangeStyle) rangeStyle.mChildren.valueAt(i));
            }
        }
        if (rangeStyle.mLayoutView != null) {
            if (rangeStyle.mLayoutViewUnBindListener != null) {
                rangeStyle.mLayoutViewUnBindListener.onUnbind(rangeStyle.mLayoutView, getLayoutHelper());
            }
            layoutManagerHelper.removeChildView(rangeStyle.mLayoutView);
            rangeStyle.mLayoutView = null;
        }
    }

    public void adjustLayout(int i, int i2, LayoutManagerHelper layoutManagerHelper) {
        if (!isChildrenEmpty()) {
            int size = this.mChildren.size();
            for (int i3 = 0; i3 < size; i3++) {
                ((RangeStyle) this.mChildren.valueAt(i3)).adjustLayout(i, i2, layoutManagerHelper);
            }
        }
        if (requireLayoutView()) {
            Rect rect = new Rect();
            OrientationHelperEx mainOrientationHelper = layoutManagerHelper.getMainOrientationHelper();
            for (int i4 = 0; i4 < layoutManagerHelper.getChildCount(); i4++) {
                View childAt = layoutManagerHelper.getChildAt(i4);
                if (getRange().contains((Range<Integer>) Integer.valueOf(layoutManagerHelper.getPosition(childAt)))) {
                    if (childAt.getVisibility() == 8) {
                        rect.setEmpty();
                    } else {
                        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) childAt.getLayoutParams();
                        if (layoutManagerHelper.getOrientation() == 1) {
                            rect.union(layoutManagerHelper.getDecoratedLeft(childAt) - layoutParams.leftMargin, mainOrientationHelper.getDecoratedStart(childAt), layoutManagerHelper.getDecoratedRight(childAt) + layoutParams.rightMargin, mainOrientationHelper.getDecoratedEnd(childAt));
                        } else {
                            rect.union(mainOrientationHelper.getDecoratedStart(childAt), layoutManagerHelper.getDecoratedTop(childAt) - layoutParams.topMargin, mainOrientationHelper.getDecoratedEnd(childAt), layoutManagerHelper.getDecoratedBottom(childAt) + layoutParams.bottomMargin);
                        }
                    }
                }
            }
            if (!rect.isEmpty()) {
                this.mLayoutRegion.set(rect.left - this.mPaddingLeft, rect.top - this.mPaddingTop, rect.right + this.mPaddingRight, rect.bottom + this.mPaddingBottom);
            } else {
                this.mLayoutRegion.setEmpty();
            }
            if (this.mLayoutView != null) {
                this.mLayoutView.layout(this.mLayoutRegion.left, this.mLayoutRegion.top, this.mLayoutRegion.right, this.mLayoutRegion.bottom);
            }
        }
    }

    private void hideLayoutViews(LayoutManagerHelper layoutManagerHelper) {
        if (isRoot()) {
            hideChildLayoutViews(layoutManagerHelper, this);
            if (this.mLayoutView != null) {
                layoutManagerHelper.hideView(this.mLayoutView);
            }
        }
    }

    private void hideChildLayoutViews(LayoutManagerHelper layoutManagerHelper, RangeStyle<T> rangeStyle) {
        int size = rangeStyle.mChildren.size();
        for (int i = 0; i < size; i++) {
            RangeStyle<T> rangeStyle2 = (RangeStyle) rangeStyle.mChildren.valueAt(i);
            if (!rangeStyle2.isChildrenEmpty()) {
                hideChildLayoutViews(layoutManagerHelper, rangeStyle2);
            }
            if (rangeStyle2.mLayoutView != null) {
                layoutManagerHelper.hideView(rangeStyle2.mLayoutView);
            }
        }
    }

    public boolean requireLayoutView() {
        boolean z = (this.mBgColor == 0 && this.mLayoutViewBindListener == null) ? false : true;
        return !isChildrenEmpty() ? z | requireChildLayoutView(this) : z;
    }

    private boolean requireChildLayoutView(RangeStyle<T> rangeStyle) {
        boolean z = (rangeStyle.mBgColor == 0 && rangeStyle.mLayoutViewBindListener == null) ? false : true;
        int size = rangeStyle.mChildren.size();
        for (int i = 0; i < size; i++) {
            RangeStyle<T> rangeStyle2 = (RangeStyle) rangeStyle.mChildren.valueAt(i);
            if (!rangeStyle2.isChildrenEmpty()) {
                z |= requireChildLayoutView(rangeStyle2);
            } else {
                return rangeStyle2.requireLayoutView();
            }
        }
        return z;
    }

    public void bindLayoutView(@NonNull View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(this.mLayoutRegion.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.mLayoutRegion.height(), 1073741824));
        view.layout(this.mLayoutRegion.left, this.mLayoutRegion.top, this.mLayoutRegion.right, this.mLayoutRegion.bottom);
        view.setBackgroundColor(this.mBgColor);
        if (this.mLayoutViewBindListener != null) {
            this.mLayoutViewBindListener.onBind(view, getLayoutHelper());
        }
        this.mLayoutRegion.set(0, 0, 0, 0);
    }

    public void setLayoutViewHelper(BaseLayoutHelper.DefaultLayoutViewHelper defaultLayoutViewHelper) {
        this.mLayoutViewBindListener = defaultLayoutViewHelper;
        this.mLayoutViewUnBindListener = defaultLayoutViewHelper;
    }

    public void setLayoutViewBindListener(BaseLayoutHelper.LayoutViewBindListener layoutViewBindListener) {
        this.mLayoutViewBindListener = layoutViewBindListener;
    }

    public void setLayoutViewUnBindListener(BaseLayoutHelper.LayoutViewUnBindListener layoutViewUnBindListener) {
        this.mLayoutViewUnBindListener = layoutViewUnBindListener;
    }

    public void setBgColor(int i) {
        this.mBgColor = i;
    }

    public void onClear(LayoutManagerHelper layoutManagerHelper) {
        clearChild(layoutManagerHelper, this);
    }

    private void clearChild(LayoutManagerHelper layoutManagerHelper, RangeStyle<T> rangeStyle) {
        if (rangeStyle.mLayoutView != null) {
            if (rangeStyle.mLayoutViewUnBindListener != null) {
                rangeStyle.mLayoutViewUnBindListener.onUnbind(rangeStyle.mLayoutView, getLayoutHelper());
            }
            layoutManagerHelper.removeChildView(rangeStyle.mLayoutView);
            rangeStyle.mLayoutView = null;
        }
        if (rangeStyle.mChildren.isEmpty()) {
            return;
        }
        int size = rangeStyle.mChildren.size();
        for (int i = 0; i < size; i++) {
            clearChild(layoutManagerHelper, (RangeStyle) rangeStyle.mChildren.valueAt(i));
        }
    }

    public void onClearChildMap() {
        this.mChildren.clear();
    }

    public void layoutChild(View view, int i, int i2, int i3, int i4, @NonNull LayoutManagerHelper layoutManagerHelper, boolean z) {
        layoutManagerHelper.layoutChildWithMargins(view, i, i2, i3, i4);
        fillLayoutRegion(i, i2, i3, i4, z);
    }

    protected void fillLayoutRegion(int i, int i2, int i3, int i4, boolean z) {
        if (z) {
            this.mLayoutRegion.union((i - this.mPaddingLeft) - this.mMarginLeft, (i2 - this.mPaddingTop) - this.mMarginTop, this.mPaddingRight + i3 + this.mMarginRight, this.mPaddingBottom + i4 + this.mMarginBottom);
        } else {
            this.mLayoutRegion.union(i - this.mPaddingLeft, i2 - this.mPaddingTop, this.mPaddingRight + i3, this.mPaddingBottom + i4);
        }
        if (this.mParent != null) {
            this.mParent.fillLayoutRegion((i - this.mPaddingLeft) - this.mMarginLeft, (i2 - this.mPaddingTop) - this.mMarginLeft, i3 + this.mPaddingRight + this.mMarginRight, i4 + this.mPaddingBottom + this.mMarginBottom, z);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    private static class RangeMap<T> {
        private static final int CAPACITY = 64;
        private T[] mCardMap;
        private Class<T> mClass;
        private int lastIndex = -1;
        private int[] mOffsetMap = new int[64];

        public RangeMap(Class<T> cls) {
            this.mCardMap = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mClass, 64));
            this.mClass = cls;
        }

        public void addChild(int i, int i2, T t) {
            int i3 = this.lastIndex + 1;
            if (i3 < this.mCardMap.length) {
                this.mCardMap[i3] = t;
            } else {
                i3 = this.mCardMap.length;
                T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) this.mClass, i3 * 2));
                System.arraycopy(this.mCardMap, 0, tArr, 0, i3);
                this.mCardMap = tArr;
                this.mCardMap[i3] = t;
                int length = this.mOffsetMap.length;
                int[] iArr = new int[length * 2];
                System.arraycopy(this.mOffsetMap, 0, iArr, 0, length);
                this.mOffsetMap = iArr;
            }
            this.lastIndex = i3;
            while (i <= i2) {
                this.mOffsetMap[i] = i3;
                i++;
            }
        }

        public T getChild(int i) {
            return this.mCardMap[this.mOffsetMap[i]];
        }
    }
}
