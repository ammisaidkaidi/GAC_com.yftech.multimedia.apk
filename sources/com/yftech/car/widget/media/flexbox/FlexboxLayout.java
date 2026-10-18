package com.yftech.car.widget.media.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.flexbox.FlexboxHelper;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes2.dex */
public class FlexboxLayout extends ViewGroup implements FlexContainer {
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    private int mAlignContent;
    private int mAlignItems;

    @Nullable
    private Drawable mDividerDrawableHorizontal;

    @Nullable
    private Drawable mDividerDrawableVertical;
    private int mDividerHorizontalHeight;
    private int mDividerVerticalWidth;
    private int mFlexDirection;
    private List<FlexLine> mFlexLines;
    private FlexboxHelper.FlexLinesResult mFlexLinesResult;
    private int mFlexWrap;
    private FlexboxHelper mFlexboxHelper;
    private int mJustifyContent;
    private int mMaxLine;
    private SparseIntArray mOrderCache;
    private int[] mReorderedIndices;
    private int mShowDividerHorizontal;
    private int mShowDividerVertical;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface DividerMode {
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getDecorationLengthCrossAxis(View view) {
        return 0;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void updateViewCache(int i, View view) {
    }

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMaxLine = -1;
        this.mFlexboxHelper = new FlexboxHelper(this);
        this.mFlexLines = new ArrayList();
        this.mFlexLinesResult = new FlexboxHelper.FlexLinesResult();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexboxLayout, i, 0);
        this.mFlexDirection = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_flexDirection, 0);
        this.mFlexWrap = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_flexWrap, 0);
        this.mJustifyContent = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_justifyContent, 0);
        this.mAlignItems = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_alignItems, 0);
        this.mAlignContent = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_alignContent, 0);
        this.mMaxLine = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_maxLine, -1);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawable);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawableHorizontal);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawableVertical);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i2 = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDivider, 0);
        if (i2 != 0) {
            this.mShowDividerVertical = i2;
            this.mShowDividerHorizontal = i2;
        }
        int i3 = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDividerVertical, 0);
        if (i3 != 0) {
            this.mShowDividerVertical = i3;
        }
        int i4 = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDividerHorizontal, 0);
        if (i4 != 0) {
            this.mShowDividerHorizontal = i4;
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mOrderCache == null) {
            this.mOrderCache = new SparseIntArray(getChildCount());
        }
        if (this.mFlexboxHelper.isOrderChangedFromLastMeasurement(this.mOrderCache)) {
            this.mReorderedIndices = this.mFlexboxHelper.createReorderedIndices(this.mOrderCache);
        }
        switch (this.mFlexDirection) {
            case 0:
            case 1:
                measureHorizontal(i, i2);
                return;
            case 2:
            case 3:
                measureVertical(i, i2);
                return;
            default:
                throw new IllegalStateException("Invalid value for the flex direction is set: " + this.mFlexDirection);
        }
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getFlexItemCount() {
        return getChildCount();
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public View getFlexItemAt(int i) {
        return getChildAt(i);
    }

    public View getReorderedChildAt(int i) {
        if (i < 0 || i >= this.mReorderedIndices.length) {
            return null;
        }
        return getChildAt(this.mReorderedIndices[i]);
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public View getReorderedFlexItemAt(int i) {
        return getReorderedChildAt(i);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.mOrderCache == null) {
            this.mOrderCache = new SparseIntArray(getChildCount());
        }
        this.mReorderedIndices = this.mFlexboxHelper.createReorderedIndices(view, i, layoutParams, this.mOrderCache);
        super.addView(view, i, layoutParams);
    }

    private void measureHorizontal(int i, int i2) {
        this.mFlexLines.clear();
        this.mFlexLinesResult.reset();
        this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, i, i2);
        this.mFlexLines = this.mFlexLinesResult.mFlexLines;
        this.mFlexboxHelper.determineMainSize(i, i2);
        if (this.mAlignItems == 3) {
            for (FlexLine flexLine : this.mFlexLines) {
                int i3 = Integer.MIN_VALUE;
                for (int i4 = 0; i4 < flexLine.mItemCount; i4++) {
                    View reorderedChildAt = getReorderedChildAt(flexLine.mFirstIndex + i4);
                    if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        if (this.mFlexWrap != 2) {
                            i3 = Math.max(i3, reorderedChildAt.getMeasuredHeight() + Math.max(flexLine.mMaxBaseline - reorderedChildAt.getBaseline(), layoutParams.topMargin) + layoutParams.bottomMargin);
                        } else {
                            i3 = Math.max(i3, reorderedChildAt.getMeasuredHeight() + layoutParams.topMargin + Math.max((flexLine.mMaxBaseline - reorderedChildAt.getMeasuredHeight()) + reorderedChildAt.getBaseline(), layoutParams.bottomMargin));
                        }
                    }
                }
                flexLine.mCrossSize = i3;
            }
        }
        this.mFlexboxHelper.determineCrossSize(i, i2, getPaddingTop() + getPaddingBottom());
        this.mFlexboxHelper.stretchViews();
        setMeasuredDimensionForFlex(this.mFlexDirection, i, i2, this.mFlexLinesResult.mChildState);
    }

    private void measureVertical(int i, int i2) {
        this.mFlexLines.clear();
        this.mFlexLinesResult.reset();
        this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, i, i2);
        this.mFlexLines = this.mFlexLinesResult.mFlexLines;
        this.mFlexboxHelper.determineMainSize(i, i2);
        this.mFlexboxHelper.determineCrossSize(i, i2, getPaddingLeft() + getPaddingRight());
        this.mFlexboxHelper.stretchViews();
        setMeasuredDimensionForFlex(this.mFlexDirection, i, i2, this.mFlexLinesResult.mChildState);
    }

    private void setMeasuredDimensionForFlex(int i, int i2, int i3, int i4) {
        int sumOfCrossSize;
        int largestMainSize;
        int resolveSizeAndState;
        int resolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        switch (i) {
            case 0:
            case 1:
                sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
                largestMainSize = getLargestMainSize();
                break;
            case 2:
            case 3:
                sumOfCrossSize = getLargestMainSize();
                largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
                break;
            default:
                throw new IllegalArgumentException("Invalid flex direction: " + i);
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            } else {
                size = largestMainSize;
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        } else if (mode == 0) {
            resolveSizeAndState = View.resolveSizeAndState(largestMainSize, i2, i4);
        } else if (mode == 1073741824) {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        } else {
            throw new IllegalStateException("Unknown width mode is set: " + mode);
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i4 = View.combineMeasuredStates(i4, 256);
                sumOfCrossSize = size2;
            }
            resolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i3, i4);
        } else if (mode2 == 0) {
            resolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i3, i4);
        } else if (mode2 == 1073741824) {
            if (size2 < sumOfCrossSize) {
                i4 = View.combineMeasuredStates(i4, 256);
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        } else {
            throw new IllegalStateException("Unknown height mode is set: " + mode2);
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getLargestMainSize() {
        Iterator<FlexLine> it = this.mFlexLines.iterator();
        int i = Integer.MIN_VALUE;
        while (it.hasNext()) {
            i = Math.max(i, it.next().mMainSize);
        }
        return i;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getSumOfCrossSize() {
        int size = this.mFlexLines.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            FlexLine flexLine = this.mFlexLines.get(i2);
            if (hasDividerBeforeFlexLine(i2)) {
                if (isMainAxisDirectionHorizontal()) {
                    i += this.mDividerHorizontalHeight;
                } else {
                    i += this.mDividerVerticalWidth;
                }
            }
            if (hasEndDividerAfterFlexLine(i2)) {
                if (isMainAxisDirectionHorizontal()) {
                    i += this.mDividerHorizontalHeight;
                } else {
                    i += this.mDividerVerticalWidth;
                }
            }
            i += flexLine.mCrossSize;
        }
        return i;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public boolean isMainAxisDirectionHorizontal() {
        return this.mFlexDirection == 0 || this.mFlexDirection == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        switch (this.mFlexDirection) {
            case 0:
                layoutHorizontal(layoutDirection == 1, i, i2, i3, i4);
                return;
            case 1:
                layoutHorizontal(layoutDirection != 1, i, i2, i3, i4);
                return;
            case 2:
                z2 = layoutDirection == 1;
                layoutVertical(this.mFlexWrap == 2 ? !z2 : z2, false, i, i2, i3, i4);
                return;
            case 3:
                z2 = layoutDirection == 1;
                layoutVertical(this.mFlexWrap == 2 ? !z2 : z2, true, i, i2, i3, i4);
                return;
            default:
                throw new IllegalStateException("Invalid flex direction is set: " + this.mFlexDirection);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x003c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void layoutHorizontal(boolean z, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        int i5;
        int i6;
        int i7;
        boolean z2;
        float f4;
        float f5;
        int i8;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i9 = i3 - i;
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.mFlexLines.size();
        int i10 = paddingTop;
        int i11 = paddingBottom;
        int i12 = 0;
        while (i12 < size) {
            FlexLine flexLine = this.mFlexLines.get(i12);
            if (hasDividerBeforeFlexLine(i12)) {
                i11 -= this.mDividerHorizontalHeight;
                i10 += this.mDividerHorizontalHeight;
            }
            boolean z3 = true;
            switch (this.mJustifyContent) {
                case 0:
                    f = paddingLeft;
                    f2 = i9 - paddingRight;
                    f3 = 0.0f;
                    float max = Math.max(f3, 0.0f);
                    float f6 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                        int i13 = flexLine.mFirstIndex + i5;
                        View reorderedChildAt = getReorderedChildAt(i13);
                        if (reorderedChildAt != null) {
                            i6 = paddingLeft;
                            if (reorderedChildAt.getVisibility() == 8) {
                                i7 = i5;
                                z2 = true;
                            } else {
                                LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                                float f7 = f + layoutParams.leftMargin;
                                float f8 = f6 - layoutParams.rightMargin;
                                if (hasDividerBeforeChildAtAlongMainAxis(i13, i5)) {
                                    int i14 = this.mDividerVerticalWidth;
                                    float f9 = i14;
                                    f4 = f8 - f9;
                                    i8 = i14;
                                    f5 = f7 + f9;
                                } else {
                                    f4 = f8;
                                    f5 = f7;
                                    i8 = 0;
                                }
                                int i15 = (i5 != flexLine.mItemCount - 1 || (this.mShowDividerVertical & 4) <= 0) ? 0 : this.mDividerVerticalWidth;
                                if (this.mFlexWrap != 2) {
                                    i7 = i5;
                                    z2 = true;
                                    if (z) {
                                        this.mFlexboxHelper.layoutSingleChildHorizontal(reorderedChildAt, flexLine, Math.round(f4) - reorderedChildAt.getMeasuredWidth(), i10, Math.round(f4), i10 + reorderedChildAt.getMeasuredHeight());
                                    } else {
                                        this.mFlexboxHelper.layoutSingleChildHorizontal(reorderedChildAt, flexLine, Math.round(f5), i10, Math.round(f5) + reorderedChildAt.getMeasuredWidth(), i10 + reorderedChildAt.getMeasuredHeight());
                                    }
                                } else if (z) {
                                    i7 = i5;
                                    z2 = true;
                                    this.mFlexboxHelper.layoutSingleChildHorizontal(reorderedChildAt, flexLine, Math.round(f4) - reorderedChildAt.getMeasuredWidth(), i11 - reorderedChildAt.getMeasuredHeight(), Math.round(f4), i11);
                                } else {
                                    i7 = i5;
                                    z2 = true;
                                    this.mFlexboxHelper.layoutSingleChildHorizontal(reorderedChildAt, flexLine, Math.round(f5), i11 - reorderedChildAt.getMeasuredHeight(), Math.round(f5) + reorderedChildAt.getMeasuredWidth(), i11);
                                }
                                float measuredWidth = f5 + reorderedChildAt.getMeasuredWidth() + max + layoutParams.rightMargin;
                                float measuredWidth2 = f4 - ((reorderedChildAt.getMeasuredWidth() + max) + layoutParams.leftMargin);
                                if (z) {
                                    flexLine.updatePositionFromView(reorderedChildAt, i15, 0, i8, 0);
                                } else {
                                    flexLine.updatePositionFromView(reorderedChildAt, i8, 0, i15, 0);
                                }
                                f6 = measuredWidth2;
                                f = measuredWidth;
                            }
                        } else {
                            i6 = paddingLeft;
                            i7 = i5;
                            z2 = z3;
                        }
                        i5 = i7 + 1;
                        paddingLeft = i6;
                        z3 = z2;
                    }
                    i10 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i12++;
                    paddingLeft = paddingLeft;
                    break;
                case 1:
                    f = (i9 - flexLine.mMainSize) + paddingRight;
                    f2 = flexLine.mMainSize - paddingLeft;
                    f3 = 0.0f;
                    float max2 = Math.max(f3, 0.0f);
                    float f62 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i10 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i12++;
                    paddingLeft = paddingLeft;
                case 2:
                    f2 = (i9 - paddingRight) - ((i9 - flexLine.mMainSize) / 2.0f);
                    f = paddingLeft + ((i9 - flexLine.mMainSize) / 2.0f);
                    f3 = 0.0f;
                    float max22 = Math.max(f3, 0.0f);
                    float f622 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i10 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i12++;
                    paddingLeft = paddingLeft;
                case 3:
                    f = paddingLeft;
                    f2 = i9 - paddingRight;
                    f3 = (i9 - flexLine.mMainSize) / (flexLine.getItemCountNotGone() != 1 ? r8 - 1 : 1.0f);
                    float max222 = Math.max(f3, 0.0f);
                    float f6222 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i10 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i12++;
                    paddingLeft = paddingLeft;
                case 4:
                    int itemCountNotGone = flexLine.getItemCountNotGone();
                    f3 = itemCountNotGone != 0 ? (i9 - flexLine.mMainSize) / itemCountNotGone : 0.0f;
                    float f10 = f3 / 2.0f;
                    float f11 = (i9 - paddingRight) - f10;
                    f = paddingLeft + f10;
                    f2 = f11;
                    float max2222 = Math.max(f3, 0.0f);
                    float f62222 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i10 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i12++;
                    paddingLeft = paddingLeft;
                case 5:
                    f3 = flexLine.getItemCountNotGone() != 0 ? (i9 - flexLine.mMainSize) / (r11 + 1) : 0.0f;
                    f = paddingLeft + f3;
                    f2 = (i9 - paddingRight) - f3;
                    float max22222 = Math.max(f3, 0.0f);
                    float f622222 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i10 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i12++;
                    paddingLeft = paddingLeft;
                default:
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.mJustifyContent);
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x003c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void layoutVertical(boolean z, boolean z2, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        int i5;
        int i6;
        int i7;
        boolean z3;
        float f4;
        float f5;
        int i8;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i9 = i4 - i2;
        int i10 = (i3 - i) - paddingRight;
        int size = this.mFlexLines.size();
        int i11 = i10;
        int i12 = paddingLeft;
        int i13 = 0;
        while (i13 < size) {
            FlexLine flexLine = this.mFlexLines.get(i13);
            if (hasDividerBeforeFlexLine(i13)) {
                i12 += this.mDividerVerticalWidth;
                i11 -= this.mDividerVerticalWidth;
            }
            boolean z4 = true;
            switch (this.mJustifyContent) {
                case 0:
                    f = paddingTop;
                    f2 = i9 - paddingBottom;
                    f3 = 0.0f;
                    float max = Math.max(f3, 0.0f);
                    float f6 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                        int i14 = flexLine.mFirstIndex + i5;
                        View reorderedChildAt = getReorderedChildAt(i14);
                        if (reorderedChildAt != null) {
                            i6 = paddingTop;
                            if (reorderedChildAt.getVisibility() == 8) {
                                i7 = i5;
                                z3 = true;
                            } else {
                                LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                                float f7 = f + layoutParams.topMargin;
                                float f8 = f6 - layoutParams.bottomMargin;
                                if (hasDividerBeforeChildAtAlongMainAxis(i14, i5)) {
                                    int i15 = this.mDividerHorizontalHeight;
                                    float f9 = i15;
                                    f4 = f8 - f9;
                                    i8 = i15;
                                    f5 = f7 + f9;
                                } else {
                                    f4 = f8;
                                    f5 = f7;
                                    i8 = 0;
                                }
                                int i16 = (i5 != flexLine.mItemCount - 1 || (this.mShowDividerHorizontal & 4) <= 0) ? 0 : this.mDividerHorizontalHeight;
                                if (!z) {
                                    i7 = i5;
                                    z3 = true;
                                    if (z2) {
                                        this.mFlexboxHelper.layoutSingleChildVertical(reorderedChildAt, flexLine, false, i12, Math.round(f4) - reorderedChildAt.getMeasuredHeight(), i12 + reorderedChildAt.getMeasuredWidth(), Math.round(f4));
                                    } else {
                                        this.mFlexboxHelper.layoutSingleChildVertical(reorderedChildAt, flexLine, false, i12, Math.round(f5), i12 + reorderedChildAt.getMeasuredWidth(), Math.round(f5) + reorderedChildAt.getMeasuredHeight());
                                    }
                                } else if (z2) {
                                    i7 = i5;
                                    z3 = true;
                                    this.mFlexboxHelper.layoutSingleChildVertical(reorderedChildAt, flexLine, true, i11 - reorderedChildAt.getMeasuredWidth(), Math.round(f4) - reorderedChildAt.getMeasuredHeight(), i11, Math.round(f4));
                                } else {
                                    i7 = i5;
                                    z3 = true;
                                    this.mFlexboxHelper.layoutSingleChildVertical(reorderedChildAt, flexLine, true, i11 - reorderedChildAt.getMeasuredWidth(), Math.round(f5), i11, Math.round(f5) + reorderedChildAt.getMeasuredHeight());
                                }
                                float measuredHeight = f5 + reorderedChildAt.getMeasuredHeight() + max + layoutParams.bottomMargin;
                                float measuredHeight2 = f4 - ((reorderedChildAt.getMeasuredHeight() + max) + layoutParams.topMargin);
                                if (z2) {
                                    flexLine.updatePositionFromView(reorderedChildAt, 0, i16, 0, i8);
                                } else {
                                    flexLine.updatePositionFromView(reorderedChildAt, 0, i8, 0, i16);
                                }
                                f6 = measuredHeight2;
                                f = measuredHeight;
                            }
                        } else {
                            i6 = paddingTop;
                            i7 = i5;
                            z3 = z4;
                        }
                        i5 = i7 + 1;
                        paddingTop = i6;
                        z4 = z3;
                    }
                    i12 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i13++;
                    paddingTop = paddingTop;
                    break;
                case 1:
                    f = (i9 - flexLine.mMainSize) + paddingBottom;
                    f2 = flexLine.mMainSize - paddingTop;
                    f3 = 0.0f;
                    float max2 = Math.max(f3, 0.0f);
                    float f62 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i12 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i13++;
                    paddingTop = paddingTop;
                case 2:
                    f2 = (i9 - paddingBottom) - ((i9 - flexLine.mMainSize) / 2.0f);
                    f = paddingTop + ((i9 - flexLine.mMainSize) / 2.0f);
                    f3 = 0.0f;
                    float max22 = Math.max(f3, 0.0f);
                    float f622 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i12 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i13++;
                    paddingTop = paddingTop;
                case 3:
                    f = paddingTop;
                    f2 = i9 - paddingBottom;
                    f3 = (i9 - flexLine.mMainSize) / (flexLine.getItemCountNotGone() != 1 ? r8 - 1 : 1.0f);
                    float max222 = Math.max(f3, 0.0f);
                    float f6222 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i12 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i13++;
                    paddingTop = paddingTop;
                case 4:
                    int itemCountNotGone = flexLine.getItemCountNotGone();
                    f3 = itemCountNotGone != 0 ? (i9 - flexLine.mMainSize) / itemCountNotGone : 0.0f;
                    float f10 = f3 / 2.0f;
                    float f11 = (i9 - paddingBottom) - f10;
                    f = paddingTop + f10;
                    f2 = f11;
                    float max2222 = Math.max(f3, 0.0f);
                    float f62222 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i12 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i13++;
                    paddingTop = paddingTop;
                case 5:
                    f3 = flexLine.getItemCountNotGone() != 0 ? (i9 - flexLine.mMainSize) / (r11 + 1) : 0.0f;
                    f = paddingTop + f3;
                    f2 = (i9 - paddingBottom) - f3;
                    float max22222 = Math.max(f3, 0.0f);
                    float f622222 = f2;
                    i5 = 0;
                    while (i5 < flexLine.mItemCount) {
                    }
                    i12 += flexLine.mCrossSize;
                    i11 -= flexLine.mCrossSize;
                    i13++;
                    paddingTop = paddingTop;
                default:
                    throw new IllegalStateException("Invalid justifyContent is set: " + this.mJustifyContent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mDividerDrawableVertical == null && this.mDividerDrawableHorizontal == null) {
            return;
        }
        if (this.mShowDividerHorizontal == 0 && this.mShowDividerVertical == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        switch (this.mFlexDirection) {
            case 0:
                drawDividersHorizontal(canvas, layoutDirection == 1, this.mFlexWrap == 2);
                return;
            case 1:
                drawDividersHorizontal(canvas, layoutDirection != 1, this.mFlexWrap == 2);
                return;
            case 2:
                boolean z = layoutDirection == 1;
                if (this.mFlexWrap == 2) {
                    z = !z;
                }
                drawDividersVertical(canvas, z, false);
                return;
            case 3:
                boolean z2 = layoutDirection == 1;
                if (this.mFlexWrap == 2) {
                    z2 = !z2;
                }
                drawDividersVertical(canvas, z2, true);
                return;
            default:
                return;
        }
    }

    private void drawDividersHorizontal(Canvas canvas, boolean z, boolean z2) {
        int i;
        int i2;
        int right;
        int left;
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.mFlexLines.size();
        for (int i3 = 0; i3 < size; i3++) {
            FlexLine flexLine = this.mFlexLines.get(i3);
            for (int i4 = 0; i4 < flexLine.mItemCount; i4++) {
                int i5 = flexLine.mFirstIndex + i4;
                View reorderedChildAt = getReorderedChildAt(i5);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (hasDividerBeforeChildAtAlongMainAxis(i5, i4)) {
                        if (z) {
                            left = reorderedChildAt.getRight() + layoutParams.rightMargin;
                        } else {
                            left = (reorderedChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerVerticalWidth;
                        }
                        drawVerticalDivider(canvas, left, flexLine.mTop, flexLine.mCrossSize);
                    }
                    if (i4 == flexLine.mItemCount - 1 && (this.mShowDividerVertical & 4) > 0) {
                        if (z) {
                            right = (reorderedChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerVerticalWidth;
                        } else {
                            right = reorderedChildAt.getRight() + layoutParams.rightMargin;
                        }
                        drawVerticalDivider(canvas, right, flexLine.mTop, flexLine.mCrossSize);
                    }
                }
            }
            if (hasDividerBeforeFlexLine(i3)) {
                if (z2) {
                    i2 = flexLine.mBottom;
                } else {
                    i2 = flexLine.mTop - this.mDividerHorizontalHeight;
                }
                drawHorizontalDivider(canvas, paddingLeft, i2, max);
            }
            if (hasEndDividerAfterFlexLine(i3) && (this.mShowDividerHorizontal & 4) > 0) {
                if (z2) {
                    i = flexLine.mTop - this.mDividerHorizontalHeight;
                } else {
                    i = flexLine.mBottom;
                }
                drawHorizontalDivider(canvas, paddingLeft, i, max);
            }
        }
    }

    private void drawDividersVertical(Canvas canvas, boolean z, boolean z2) {
        int i;
        int i2;
        int bottom;
        int top;
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.mFlexLines.size();
        for (int i3 = 0; i3 < size; i3++) {
            FlexLine flexLine = this.mFlexLines.get(i3);
            for (int i4 = 0; i4 < flexLine.mItemCount; i4++) {
                int i5 = flexLine.mFirstIndex + i4;
                View reorderedChildAt = getReorderedChildAt(i5);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (hasDividerBeforeChildAtAlongMainAxis(i5, i4)) {
                        if (z2) {
                            top = reorderedChildAt.getBottom() + layoutParams.bottomMargin;
                        } else {
                            top = (reorderedChildAt.getTop() - layoutParams.topMargin) - this.mDividerHorizontalHeight;
                        }
                        drawHorizontalDivider(canvas, flexLine.mLeft, top, flexLine.mCrossSize);
                    }
                    if (i4 == flexLine.mItemCount - 1 && (this.mShowDividerHorizontal & 4) > 0) {
                        if (z2) {
                            bottom = (reorderedChildAt.getTop() - layoutParams.topMargin) - this.mDividerHorizontalHeight;
                        } else {
                            bottom = reorderedChildAt.getBottom() + layoutParams.bottomMargin;
                        }
                        drawHorizontalDivider(canvas, flexLine.mLeft, bottom, flexLine.mCrossSize);
                    }
                }
            }
            if (hasDividerBeforeFlexLine(i3)) {
                if (z) {
                    i2 = flexLine.mRight;
                } else {
                    i2 = flexLine.mLeft - this.mDividerVerticalWidth;
                }
                drawVerticalDivider(canvas, i2, paddingTop, max);
            }
            if (hasEndDividerAfterFlexLine(i3) && (this.mShowDividerVertical & 4) > 0) {
                if (z) {
                    i = flexLine.mLeft - this.mDividerVerticalWidth;
                } else {
                    i = flexLine.mRight;
                }
                drawVerticalDivider(canvas, i, paddingTop, max);
            }
        }
    }

    private void drawVerticalDivider(Canvas canvas, int i, int i2, int i3) {
        if (this.mDividerDrawableVertical == null) {
            return;
        }
        this.mDividerDrawableVertical.setBounds(i, i2, this.mDividerVerticalWidth + i, i3 + i2);
        this.mDividerDrawableVertical.draw(canvas);
    }

    private void drawHorizontalDivider(Canvas canvas, int i, int i2, int i3) {
        if (this.mDividerDrawableHorizontal == null) {
            return;
        }
        this.mDividerDrawableHorizontal.setBounds(i, i2, i3 + i, this.mDividerHorizontalHeight + i2);
        this.mDividerDrawableHorizontal.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getFlexDirection() {
        return this.mFlexDirection;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void setFlexDirection(int i) {
        if (this.mFlexDirection != i) {
            this.mFlexDirection = i;
            requestLayout();
        }
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getFlexWrap() {
        return this.mFlexWrap;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void setFlexWrap(int i) {
        if (this.mFlexWrap != i) {
            this.mFlexWrap = i;
            requestLayout();
        }
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getJustifyContent() {
        return this.mJustifyContent;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void setJustifyContent(int i) {
        if (this.mJustifyContent != i) {
            this.mJustifyContent = i;
            requestLayout();
        }
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getAlignItems() {
        return this.mAlignItems;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void setAlignItems(int i) {
        if (this.mAlignItems != i) {
            this.mAlignItems = i;
            requestLayout();
        }
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getAlignContent() {
        return this.mAlignContent;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void setAlignContent(int i) {
        if (this.mAlignContent != i) {
            this.mAlignContent = i;
            requestLayout();
        }
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getMaxLine() {
        return this.mMaxLine;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void setMaxLine(int i) {
        if (this.mMaxLine != i) {
            this.mMaxLine = i;
            requestLayout();
        }
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public List<FlexLine> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.mFlexLines.size());
        for (FlexLine flexLine : this.mFlexLines) {
            if (flexLine.getItemCountNotGone() != 0) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getDecorationLengthMainAxis(View view, int i, int i2) {
        int i3;
        if (isMainAxisDirectionHorizontal()) {
            i3 = hasDividerBeforeChildAtAlongMainAxis(i, i2) ? 0 + this.mDividerVerticalWidth : 0;
            return (this.mShowDividerVertical & 4) > 0 ? i3 + this.mDividerVerticalWidth : i3;
        }
        i3 = hasDividerBeforeChildAtAlongMainAxis(i, i2) ? 0 + this.mDividerHorizontalHeight : 0;
        return (this.mShowDividerHorizontal & 4) > 0 ? i3 + this.mDividerHorizontalHeight : i3;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void onNewFlexLineAdded(FlexLine flexLine) {
        if (isMainAxisDirectionHorizontal()) {
            if ((this.mShowDividerVertical & 4) > 0) {
                flexLine.mMainSize += this.mDividerVerticalWidth;
                flexLine.mDividerLengthInMainSize += this.mDividerVerticalWidth;
                return;
            }
            return;
        }
        if ((this.mShowDividerHorizontal & 4) > 0) {
            flexLine.mMainSize += this.mDividerHorizontalHeight;
            flexLine.mDividerLengthInMainSize += this.mDividerHorizontalHeight;
        }
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getChildWidthMeasureSpec(int i, int i2, int i3) {
        return getChildMeasureSpec(i, i2, i3);
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public int getChildHeightMeasureSpec(int i, int i2, int i3) {
        return getChildMeasureSpec(i, i2, i3);
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void onNewFlexItemAdded(View view, int i, int i2, FlexLine flexLine) {
        if (hasDividerBeforeChildAtAlongMainAxis(i, i2)) {
            if (isMainAxisDirectionHorizontal()) {
                flexLine.mMainSize += this.mDividerVerticalWidth;
                flexLine.mDividerLengthInMainSize += this.mDividerVerticalWidth;
            } else {
                flexLine.mMainSize += this.mDividerHorizontalHeight;
                flexLine.mDividerLengthInMainSize += this.mDividerHorizontalHeight;
            }
        }
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public void setFlexLines(List<FlexLine> list) {
        this.mFlexLines = list;
    }

    @Override // com.yftech.car.widget.media.flexbox.FlexContainer
    public List<FlexLine> getFlexLinesInternal() {
        return this.mFlexLines;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.mDividerDrawableHorizontal;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.mDividerDrawableVertical;
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable drawable) {
        if (drawable == this.mDividerDrawableHorizontal) {
            return;
        }
        this.mDividerDrawableHorizontal = drawable;
        if (drawable != null) {
            this.mDividerHorizontalHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerHorizontalHeight = 0;
        }
        setWillNotDrawFlag();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        if (drawable == this.mDividerDrawableVertical) {
            return;
        }
        this.mDividerDrawableVertical = drawable;
        if (drawable != null) {
            this.mDividerVerticalWidth = drawable.getIntrinsicWidth();
        } else {
            this.mDividerVerticalWidth = 0;
        }
        setWillNotDrawFlag();
        requestLayout();
    }

    public int getShowDividerVertical() {
        return this.mShowDividerVertical;
    }

    public int getShowDividerHorizontal() {
        return this.mShowDividerHorizontal;
    }

    public void setShowDivider(int i) {
        setShowDividerVertical(i);
        setShowDividerHorizontal(i);
    }

    public void setShowDividerVertical(int i) {
        if (i != this.mShowDividerVertical) {
            this.mShowDividerVertical = i;
            requestLayout();
        }
    }

    public void setShowDividerHorizontal(int i) {
        if (i != this.mShowDividerHorizontal) {
            this.mShowDividerHorizontal = i;
            requestLayout();
        }
    }

    private void setWillNotDrawFlag() {
        if (this.mDividerDrawableHorizontal == null && this.mDividerDrawableVertical == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    private boolean hasDividerBeforeChildAtAlongMainAxis(int i, int i2) {
        return allViewsAreGoneBefore(i, i2) ? isMainAxisDirectionHorizontal() ? (this.mShowDividerVertical & 1) != 0 : (this.mShowDividerHorizontal & 1) != 0 : isMainAxisDirectionHorizontal() ? (this.mShowDividerVertical & 2) != 0 : (this.mShowDividerHorizontal & 2) != 0;
    }

    private boolean allViewsAreGoneBefore(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            View reorderedChildAt = getReorderedChildAt(i - i3);
            if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private boolean hasDividerBeforeFlexLine(int i) {
        if (i < 0 || i >= this.mFlexLines.size()) {
            return false;
        }
        return allFlexLinesAreDummyBefore(i) ? isMainAxisDirectionHorizontal() ? (this.mShowDividerHorizontal & 1) != 0 : (this.mShowDividerVertical & 1) != 0 : isMainAxisDirectionHorizontal() ? (this.mShowDividerHorizontal & 2) != 0 : (this.mShowDividerVertical & 2) != 0;
    }

    private boolean allFlexLinesAreDummyBefore(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (this.mFlexLines.get(i2).getItemCountNotGone() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean hasEndDividerAfterFlexLine(int i) {
        if (i < 0 || i >= this.mFlexLines.size()) {
            return false;
        }
        for (int i2 = i + 1; i2 < this.mFlexLines.size(); i2++) {
            if (this.mFlexLines.get(i2).getItemCountNotGone() > 0) {
                return false;
            }
        }
        return isMainAxisDirectionHorizontal() ? (this.mShowDividerHorizontal & 4) != 0 : (this.mShowDividerVertical & 4) != 0;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new Parcelable.Creator<LayoutParams>() { // from class: com.yftech.car.widget.media.flexbox.FlexboxLayout.LayoutParams.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        };
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
        private int mOrder;
        private boolean mWrapBefore;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexboxLayout_Layout);
            this.mOrder = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_Layout_layout_order, 1);
            this.mFlexGrow = obtainStyledAttributes.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0f);
            this.mFlexShrink = obtainStyledAttributes.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0f);
            this.mAlignSelf = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
            this.mFlexBasisPercent = obtainStyledAttributes.getFraction(R.styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0f);
            this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minWidth, -1);
            this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minHeight, -1);
            this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxWidth, 16777215);
            this.mMaxHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxHeight, 16777215);
            this.mWrapBefore = obtainStyledAttributes.getBoolean(R.styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = layoutParams.mOrder;
            this.mFlexGrow = layoutParams.mFlexGrow;
            this.mFlexShrink = layoutParams.mFlexShrink;
            this.mAlignSelf = layoutParams.mAlignSelf;
            this.mFlexBasisPercent = layoutParams.mFlexBasisPercent;
            this.mMinWidth = layoutParams.mMinWidth;
            this.mMinHeight = layoutParams.mMinHeight;
            this.mMaxWidth = layoutParams.mMaxWidth;
            this.mMaxHeight = layoutParams.mMaxHeight;
            this.mWrapBefore = layoutParams.mWrapBefore;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(int i, int i2) {
            super(new ViewGroup.LayoutParams(i, i2));
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getWidth() {
            return this.width;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setWidth(int i) {
            this.width = i;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getHeight() {
            return this.height;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setHeight(int i) {
            this.height = i;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getOrder() {
            return this.mOrder;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setOrder(int i) {
            this.mOrder = i;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setFlexGrow(float f) {
            this.mFlexGrow = f;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setFlexShrink(float f) {
            this.mFlexShrink = f;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setAlignSelf(int i) {
            this.mAlignSelf = i;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getMinWidth() {
            return this.mMinWidth;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setMinWidth(int i) {
            this.mMinWidth = i;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getMinHeight() {
            return this.mMinHeight;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setMinHeight(int i) {
            this.mMinHeight = i;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setMaxWidth(int i) {
            this.mMaxWidth = i;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setMaxHeight(int i) {
            this.mMaxHeight = i;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setWrapBefore(boolean z) {
            this.mWrapBefore = z;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public void setFlexBasisPercent(float f) {
            this.mFlexBasisPercent = f;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getMarginLeft() {
            return this.leftMargin;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getMarginTop() {
            return this.topMargin;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getMarginRight() {
            return this.rightMargin;
        }

        @Override // com.yftech.car.widget.media.flexbox.FlexItem
        public int getMarginBottom() {
            return this.bottomMargin;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mOrder);
            parcel.writeFloat(this.mFlexGrow);
            parcel.writeFloat(this.mFlexShrink);
            parcel.writeInt(this.mAlignSelf);
            parcel.writeFloat(this.mFlexBasisPercent);
            parcel.writeInt(this.mMinWidth);
            parcel.writeInt(this.mMinHeight);
            parcel.writeInt(this.mMaxWidth);
            parcel.writeInt(this.mMaxHeight);
            parcel.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            parcel.writeInt(this.bottomMargin);
            parcel.writeInt(this.leftMargin);
            parcel.writeInt(this.rightMargin);
            parcel.writeInt(this.topMargin);
            parcel.writeInt(this.height);
            parcel.writeInt(this.width);
        }

        protected LayoutParams(Parcel parcel) {
            super(0, 0);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = parcel.readInt();
            this.mFlexGrow = parcel.readFloat();
            this.mFlexShrink = parcel.readFloat();
            this.mAlignSelf = parcel.readInt();
            this.mFlexBasisPercent = parcel.readFloat();
            this.mMinWidth = parcel.readInt();
            this.mMinHeight = parcel.readInt();
            this.mMaxWidth = parcel.readInt();
            this.mMaxHeight = parcel.readInt();
            this.mWrapBefore = parcel.readByte() != 0;
            this.bottomMargin = parcel.readInt();
            this.leftMargin = parcel.readInt();
            this.rightMargin = parcel.readInt();
            this.topMargin = parcel.readInt();
            this.height = parcel.readInt();
            this.width = parcel.readInt();
        }
    }
}
