package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.security.keystore.KeyProperties;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.InputDevice;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewHierarchyEncoder;
import android.widget.RemoteViews;
import com.android.internal.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RemoteViews.RemoteView
/* loaded from: /home/user/work/dex/classes2.dex */
public class LinearLayout extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private static boolean sCompatibilityDone = false;
    private static boolean sRemeasureWeightedChildren = true;
    private final boolean mAllowInconsistentMeasurement;

    @ViewDebug.ExportedProperty(category = "layout")
    private boolean mBaselineAligned;

    @ViewDebug.ExportedProperty(category = "layout")
    private int mBaselineAlignedChildIndex;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;

    @ViewDebug.ExportedProperty(category = "measurement", flagMapping = {@ViewDebug.FlagToString(equals = -1, mask = -1, name = KeyProperties.DIGEST_NONE), @ViewDebug.FlagToString(equals = 0, mask = 0, name = KeyProperties.DIGEST_NONE), @ViewDebug.FlagToString(equals = 48, mask = 48, name = "TOP"), @ViewDebug.FlagToString(equals = 80, mask = 80, name = "BOTTOM"), @ViewDebug.FlagToString(equals = 3, mask = 3, name = "LEFT"), @ViewDebug.FlagToString(equals = 5, mask = 5, name = "RIGHT"), @ViewDebug.FlagToString(equals = Gravity.START, mask = Gravity.START, name = "START"), @ViewDebug.FlagToString(equals = Gravity.END, mask = Gravity.END, name = "END"), @ViewDebug.FlagToString(equals = 16, mask = 16, name = "CENTER_VERTICAL"), @ViewDebug.FlagToString(equals = 112, mask = 112, name = "FILL_VERTICAL"), @ViewDebug.FlagToString(equals = 1, mask = 1, name = "CENTER_HORIZONTAL"), @ViewDebug.FlagToString(equals = 7, mask = 7, name = "FILL_HORIZONTAL"), @ViewDebug.FlagToString(equals = 17, mask = 17, name = "CENTER"), @ViewDebug.FlagToString(equals = 119, mask = 119, name = "FILL"), @ViewDebug.FlagToString(equals = 8388608, mask = 8388608, name = "RELATIVE")}, formatToHexString = true)
    private int mGravity;
    private int mLayoutDirection;
    private int[] mMaxAscent;
    private int[] mMaxDescent;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mOrientation;
    private int mShowDividers;

    @ViewDebug.ExportedProperty(category = "measurement")
    private int mTotalLength;

    @ViewDebug.ExportedProperty(category = "layout")
    private boolean mUseLargestChild;

    @ViewDebug.ExportedProperty(category = "layout")
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface DividerMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface OrientationMode {
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    int measureNullChild(int i) {
        return 0;
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayout(Context context) {
        this(context, null);
    }

    public LinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public LinearLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        this.mLayoutDirection = -1;
        if (!sCompatibilityDone && context != null) {
            sRemeasureWeightedChildren = context.getApplicationInfo().targetSdkVersion >= 28;
            sCompatibilityDone = true;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayout, i, i2);
        int i3 = obtainStyledAttributes.getInt(1, -1);
        if (i3 >= 0) {
            setOrientation(i3);
        }
        int i4 = obtainStyledAttributes.getInt(0, -1);
        if (i4 >= 0) {
            setGravity(i4);
        }
        boolean z = obtainStyledAttributes.getBoolean(2, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(4, -1.0f);
        this.mBaselineAlignedChildIndex = obtainStyledAttributes.getInt(3, -1);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(6, false);
        this.mShowDividers = obtainStyledAttributes.getInt(7, 0);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        setDividerDrawable(obtainStyledAttributes.getDrawable(5));
        this.mAllowInconsistentMeasurement = context.getApplicationInfo().targetSdkVersion <= 23;
        obtainStyledAttributes.recycle();
    }

    private boolean isShowingDividers() {
        return (this.mShowDividers == 0 || this.mDivider == null) ? false : true;
    }

    public void setShowDividers(int i) {
        if (i == this.mShowDividers) {
            return;
        }
        this.mShowDividers = i;
        setWillNotDraw(!isShowingDividers());
        requestLayout();
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        setWillNotDraw(!isShowingDividers());
        requestLayout();
    }

    public void setDividerPadding(int i) {
        if (i == this.mDividerPadding) {
            return;
        }
        this.mDividerPadding = i;
        if (isShowingDividers()) {
            requestLayout();
            invalidate();
        }
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View lastNonGoneChild = getLastNonGoneChild();
            if (lastNonGoneChild == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                bottom = lastNonGoneChild.getBottom() + ((LayoutParams) lastNonGoneChild.getLayoutParams()).bottomMargin;
            }
            drawHorizontalDivider(canvas, bottom);
        }
    }

    private View getLastNonGoneChild() {
        for (int virtualChildCount = getVirtualChildCount() - 1; virtualChildCount >= 0; virtualChildCount--) {
            View virtualChildAt = getVirtualChildAt(virtualChildCount);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8) {
                return virtualChildAt;
            }
        }
        return null;
    }

    void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = isLayoutRtl();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (isLayoutRtl) {
                    left = virtualChildAt.getRight() + layoutParams.rightMargin;
                } else {
                    left = (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, left);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View lastNonGoneChild = getLastNonGoneChild();
            if (lastNonGoneChild != null) {
                LayoutParams layoutParams2 = (LayoutParams) lastNonGoneChild.getLayoutParams();
                if (isLayoutRtl) {
                    right = (lastNonGoneChild.getLeft() - layoutParams2.leftMargin) - this.mDividerWidth;
                } else {
                    right = lastNonGoneChild.getRight() + layoutParams2.rightMargin;
                }
            } else if (isLayoutRtl) {
                right = getPaddingLeft();
            } else {
                right = (getWidth() - getPaddingRight()) - this.mDividerWidth;
            }
            drawVerticalDivider(canvas, right);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    @RemotableViewMethod
    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    @RemotableViewMethod
    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.mBaselineAlignedChildIndex);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.mBaselineAlignedChildIndex == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i2 = this.mBaselineChildTop;
        if (this.mOrientation == 1 && (i = this.mGravity & 112) != 48) {
            if (i == 16) {
                i2 += ((((this.mBottom - this.mTop) - this.mPaddingTop) - this.mPaddingBottom) - this.mTotalLength) / 2;
            } else if (i == 80) {
                i2 = ((this.mBottom - this.mTop) - this.mPaddingBottom) - this.mTotalLength;
            }
        }
        return i2 + ((LayoutParams) childAt.getLayoutParams()).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    @RemotableViewMethod
    public void setBaselineAlignedChildIndex(int i) {
        if (i < 0 || i >= getChildCount()) {
            throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
        }
        this.mBaselineAlignedChildIndex = i;
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    @RemotableViewMethod
    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    protected boolean hasDividerBeforeChildAt(int i) {
        return i == getVirtualChildCount() ? (this.mShowDividers & 4) != 0 : allViewsAreGoneBefore(i) ? (this.mShowDividers & 1) != 0 : (this.mShowDividers & 2) != 0;
    }

    private boolean allViewsAreGoneBefore(int i) {
        for (int i2 = i - 1; i2 >= 0; i2--) {
            View virtualChildAt = getVirtualChildAt(i2);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02c4, code lost:
    
        if (r0 == 1073741824) goto L149;
     */
    /* JADX WARN: Removed duplicated region for block: B:148:0x032d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z;
        int i12;
        int i13;
        boolean z2;
        int i14;
        int i15;
        int i16;
        int i17;
        LayoutParams layoutParams;
        int i18;
        View view;
        int i19;
        boolean z3;
        int max;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i20 = this.mBaselineAlignedChildIndex;
        boolean z4 = this.mUseLargestChild;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        boolean z5 = false;
        int i26 = 0;
        int i27 = 0;
        boolean z6 = false;
        float f = 0.0f;
        boolean z7 = true;
        int i28 = Integer.MIN_VALUE;
        while (i24 < virtualChildCount) {
            int i29 = i28;
            View virtualChildAt = getVirtualChildAt(i24);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i24);
            } else if (virtualChildAt.getVisibility() == 8) {
                i24 += getChildrenSkipCount(virtualChildAt, i24);
            } else {
                int i30 = i21 + 1;
                if (hasDividerBeforeChildAt(i24)) {
                    this.mTotalLength += this.mDividerHeight;
                }
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                float f2 = f + layoutParams2.weight;
                if (layoutParams2.height != 0 || layoutParams2.weight <= 0.0f) {
                    i13 = 1073741824;
                    z2 = false;
                } else {
                    z2 = true;
                    i13 = 1073741824;
                }
                if (mode2 == i13 && z2) {
                    int i31 = this.mTotalLength;
                    this.mTotalLength = Math.max(i31, layoutParams2.topMargin + i31 + layoutParams2.bottomMargin);
                    i17 = i24;
                    layoutParams = layoutParams2;
                    i15 = i30;
                    i18 = mode2;
                    z5 = true;
                    i14 = i22;
                    i16 = i23;
                    view = virtualChildAt;
                    i28 = i29;
                } else {
                    int i32 = i22;
                    if (z2) {
                        layoutParams2.height = -2;
                    }
                    i14 = i32;
                    i15 = i30;
                    i16 = i23;
                    i17 = i24;
                    layoutParams = layoutParams2;
                    i18 = mode2;
                    measureChildBeforeLayout(virtualChildAt, i24, i, 0, i2, f2 == 0.0f ? this.mTotalLength : 0);
                    int measuredHeight = virtualChildAt.getMeasuredHeight();
                    if (z2) {
                        layoutParams.height = 0;
                        i25 += measuredHeight;
                    }
                    int i33 = this.mTotalLength;
                    view = virtualChildAt;
                    this.mTotalLength = Math.max(i33, i33 + measuredHeight + layoutParams.topMargin + layoutParams.bottomMargin + getNextLocationOffset(view));
                    i28 = z4 ? Math.max(measuredHeight, i29) : i29;
                }
                if (i20 >= 0) {
                    i19 = i17;
                    if (i20 == i19 + 1) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                } else {
                    i19 = i17;
                }
                if (i19 < i20 && layoutParams.weight > 0.0f) {
                    throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                }
                if (mode == 1073741824 || layoutParams.width != -1) {
                    z3 = false;
                } else {
                    z3 = true;
                    z6 = true;
                }
                int i34 = layoutParams.leftMargin + layoutParams.rightMargin;
                int measuredWidth = view.getMeasuredWidth() + i34;
                int max2 = Math.max(i26, measuredWidth);
                int combineMeasuredStates = combineMeasuredStates(i27, view.getMeasuredState());
                boolean z8 = z7 && layoutParams.width == -1;
                if (layoutParams.weight > 0.0f) {
                    if (!z3) {
                        i34 = measuredWidth;
                    }
                    i22 = Math.max(i14, i34);
                    max = i16;
                } else {
                    int i35 = i14;
                    if (!z3) {
                        i34 = measuredWidth;
                    }
                    max = Math.max(i16, i34);
                    i22 = i35;
                }
                i24 = i19 + getChildrenSkipCount(view, i19);
                i23 = max;
                i27 = combineMeasuredStates;
                z7 = z8;
                f = f2;
                i21 = i15;
                i26 = max2;
                i24++;
                mode2 = i18;
            }
            i18 = mode2;
            i28 = i29;
            i24++;
            mode2 = i18;
        }
        int i36 = i22;
        int i37 = i23;
        int i38 = i28;
        int i39 = 8;
        int i40 = mode2;
        int i41 = i27;
        if (i21 > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerHeight;
        }
        if (z4) {
            i3 = i40;
            if (i3 == Integer.MIN_VALUE || i3 == 0) {
                this.mTotalLength = 0;
                int i42 = 0;
                while (i42 < virtualChildCount) {
                    View virtualChildAt2 = getVirtualChildAt(i42);
                    if (virtualChildAt2 == null) {
                        this.mTotalLength += measureNullChild(i42);
                    } else if (virtualChildAt2.getVisibility() == i39) {
                        i42 += getChildrenSkipCount(virtualChildAt2, i42);
                    } else {
                        LayoutParams layoutParams3 = (LayoutParams) virtualChildAt2.getLayoutParams();
                        int i43 = this.mTotalLength;
                        this.mTotalLength = Math.max(i43, i43 + i38 + layoutParams3.topMargin + layoutParams3.bottomMargin + getNextLocationOffset(virtualChildAt2));
                    }
                    i42++;
                    i39 = 8;
                }
            }
        } else {
            i3 = i40;
        }
        this.mTotalLength += this.mPaddingTop + this.mPaddingBottom;
        int resolveSizeAndState = resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumHeight()), i2, 0);
        int i44 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (this.mAllowInconsistentMeasurement) {
            i25 = 0;
        }
        int i45 = i44 + i25;
        if (z5 || ((sRemeasureWeightedChildren || i45 != 0) && f > 0.0f)) {
            if (this.mWeightSum > 0.0f) {
                f = this.mWeightSum;
            }
            this.mTotalLength = 0;
            float f3 = f;
            int i46 = i45;
            i4 = i26;
            int i47 = 0;
            while (i47 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i47);
                if (virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8) {
                    i7 = i3;
                    i8 = i38;
                    i9 = i46;
                } else {
                    LayoutParams layoutParams4 = (LayoutParams) virtualChildAt3.getLayoutParams();
                    float f4 = layoutParams4.weight;
                    if (f4 > 0.0f) {
                        int i48 = i38;
                        int i49 = (int) ((i46 * f4) / f3);
                        int i50 = i46 - i49;
                        f3 -= f4;
                        if (this.mUseLargestChild) {
                            i12 = 1073741824;
                            if (i3 != 1073741824) {
                                i7 = i3;
                                i49 = i48;
                                i9 = i50;
                                i8 = i48;
                                virtualChildAt3.measure(getChildMeasureSpec(i, this.mPaddingLeft + this.mPaddingRight + layoutParams4.leftMargin + layoutParams4.rightMargin, layoutParams4.width), View.MeasureSpec.makeMeasureSpec(Math.max(0, i49), i12));
                                i41 = combineMeasuredStates(i41, virtualChildAt3.getMeasuredState() & InputDevice.SOURCE_ANY);
                            }
                        }
                        if (layoutParams4.height == 0) {
                            if (this.mAllowInconsistentMeasurement) {
                                i12 = 1073741824;
                            } else {
                                i12 = 1073741824;
                            }
                            i7 = i3;
                            i9 = i50;
                            i8 = i48;
                            virtualChildAt3.measure(getChildMeasureSpec(i, this.mPaddingLeft + this.mPaddingRight + layoutParams4.leftMargin + layoutParams4.rightMargin, layoutParams4.width), View.MeasureSpec.makeMeasureSpec(Math.max(0, i49), i12));
                            i41 = combineMeasuredStates(i41, virtualChildAt3.getMeasuredState() & InputDevice.SOURCE_ANY);
                        } else {
                            i12 = 1073741824;
                        }
                        i49 = virtualChildAt3.getMeasuredHeight() + i49;
                        i7 = i3;
                        i9 = i50;
                        i8 = i48;
                        virtualChildAt3.measure(getChildMeasureSpec(i, this.mPaddingLeft + this.mPaddingRight + layoutParams4.leftMargin + layoutParams4.rightMargin, layoutParams4.width), View.MeasureSpec.makeMeasureSpec(Math.max(0, i49), i12));
                        i41 = combineMeasuredStates(i41, virtualChildAt3.getMeasuredState() & InputDevice.SOURCE_ANY);
                    } else {
                        i7 = i3;
                        i8 = i38;
                        i9 = i46;
                    }
                    int i51 = layoutParams4.leftMargin + layoutParams4.rightMargin;
                    int measuredWidth2 = virtualChildAt3.getMeasuredWidth() + i51;
                    i4 = Math.max(i4, measuredWidth2);
                    if (mode != 1073741824) {
                        i10 = i51;
                        i11 = -1;
                        if (layoutParams4.width == -1) {
                            z = true;
                            if (z) {
                                measuredWidth2 = i10;
                            }
                            int max3 = Math.max(i37, measuredWidth2);
                            boolean z9 = !z7 && layoutParams4.width == i11;
                            int i52 = this.mTotalLength;
                            this.mTotalLength = Math.max(i52, i52 + virtualChildAt3.getMeasuredHeight() + layoutParams4.topMargin + layoutParams4.bottomMargin + getNextLocationOffset(virtualChildAt3));
                            z7 = z9;
                            i37 = max3;
                        }
                    } else {
                        i10 = i51;
                        i11 = -1;
                    }
                    z = false;
                    if (z) {
                    }
                    int max32 = Math.max(i37, measuredWidth2);
                    if (z7) {
                    }
                    int i522 = this.mTotalLength;
                    this.mTotalLength = Math.max(i522, i522 + virtualChildAt3.getMeasuredHeight() + layoutParams4.topMargin + layoutParams4.bottomMargin + getNextLocationOffset(virtualChildAt3));
                    z7 = z9;
                    i37 = max32;
                }
                i47++;
                i38 = i8;
                i3 = i7;
                i46 = i9;
            }
            i5 = i;
            this.mTotalLength += this.mPaddingTop + this.mPaddingBottom;
            i6 = i37;
        } else {
            i6 = Math.max(i37, i36);
            if (z4 && i3 != 1073741824) {
                for (int i53 = 0; i53 < virtualChildCount; i53++) {
                    View virtualChildAt4 = getVirtualChildAt(i53);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i38, 1073741824));
                    }
                }
            }
            i4 = i26;
            i5 = i;
        }
        if (z7 || mode == 1073741824) {
            i6 = i4;
        }
        setMeasuredDimension(resolveSizeAndState(Math.max(i6 + this.mPaddingLeft + this.mPaddingRight, getSuggestedMinimumWidth()), i5, i41), resolveSizeAndState);
        if (z6) {
            forceUniformWidth(virtualChildCount, i2);
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x03af, code lost:
    
        if (r12 == 1073741824) goto L178;
     */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0467  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void measureHorizontal(int i, int i2) {
        int[] iArr;
        int i3;
        int i4;
        float f;
        int i5;
        int i6;
        float f2;
        int i7;
        boolean z;
        int baseline;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z2;
        boolean z3;
        LayoutParams layoutParams;
        int i12;
        View view;
        int i13;
        boolean z4;
        int baseline2;
        boolean z5 = false;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z6 = this.mBaselineAligned;
        boolean z7 = this.mUseLargestChild;
        int i14 = 1073741824;
        boolean z8 = mode == 1073741824;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        boolean z9 = false;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        boolean z10 = false;
        boolean z11 = true;
        float f3 = 0.0f;
        int i22 = Integer.MIN_VALUE;
        while (true) {
            iArr = iArr3;
            if (i15 >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(i15);
            if (virtualChildAt == null) {
                this.mTotalLength += measureNullChild(i15);
            } else if (virtualChildAt.getVisibility() == 8) {
                i15 += getChildrenSkipCount(virtualChildAt, i15);
            } else {
                i16++;
                if (hasDividerBeforeChildAt(i15)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                f3 += layoutParams2.weight;
                boolean z12 = (layoutParams2.width != 0 || layoutParams2.weight <= 0.0f) ? z5 : true;
                if (mode == i14 && z12) {
                    if (z8) {
                        this.mTotalLength += layoutParams2.leftMargin + layoutParams2.rightMargin;
                    } else {
                        int i23 = this.mTotalLength;
                        this.mTotalLength = Math.max(i23, layoutParams2.leftMargin + i23 + layoutParams2.rightMargin);
                    }
                    if (z6) {
                        virtualChildAt.measure(View.MeasureSpec.makeSafeMeasureSpec(View.MeasureSpec.getSize(i), 0), View.MeasureSpec.makeSafeMeasureSpec(View.MeasureSpec.getSize(i2), 0));
                        i11 = i15;
                        z2 = z7;
                        z3 = z6;
                        layoutParams = layoutParams2;
                        view = virtualChildAt;
                    } else {
                        i11 = i15;
                        z2 = z7;
                        z3 = z6;
                        layoutParams = layoutParams2;
                        view = virtualChildAt;
                        z9 = true;
                    }
                    i13 = 1073741824;
                    i12 = -1;
                } else {
                    if (z12) {
                        layoutParams2.width = -2;
                    }
                    int i24 = i15;
                    i11 = i24;
                    z2 = z7;
                    z3 = z6;
                    layoutParams = layoutParams2;
                    i12 = -1;
                    measureChildBeforeLayout(virtualChildAt, i24, i, f3 == 0.0f ? this.mTotalLength : 0, i2, 0);
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    if (z12) {
                        layoutParams.width = 0;
                        i18 += measuredWidth;
                    }
                    if (z8) {
                        view = virtualChildAt;
                        this.mTotalLength += layoutParams.leftMargin + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(view);
                    } else {
                        view = virtualChildAt;
                        int i25 = this.mTotalLength;
                        this.mTotalLength = Math.max(i25, i25 + measuredWidth + layoutParams.leftMargin + layoutParams.rightMargin + getNextLocationOffset(view));
                    }
                    if (z2) {
                        i22 = Math.max(measuredWidth, i22);
                    }
                    i13 = 1073741824;
                }
                if (mode2 == i13 || layoutParams.height != i12) {
                    z4 = false;
                } else {
                    z4 = true;
                    z10 = true;
                }
                int i26 = layoutParams.topMargin + layoutParams.bottomMargin;
                int measuredHeight = view.getMeasuredHeight() + i26;
                int combineMeasuredStates = combineMeasuredStates(i21, view.getMeasuredState());
                if (z3 && (baseline2 = view.getBaseline()) != i12) {
                    int i27 = ((((layoutParams.gravity < 0 ? this.mGravity : layoutParams.gravity) & 112) >> 4) & (-2)) >> 1;
                    iArr2[i27] = Math.max(iArr2[i27], baseline2);
                    iArr[i27] = Math.max(iArr[i27], measuredHeight - baseline2);
                }
                int max = Math.max(i17, measuredHeight);
                boolean z13 = z11 && layoutParams.height == -1;
                if (layoutParams.weight > 0.0f) {
                    if (!z4) {
                        i26 = measuredHeight;
                    }
                    i20 = Math.max(i20, i26);
                } else {
                    int i28 = i20;
                    if (!z4) {
                        i26 = measuredHeight;
                    }
                    i19 = Math.max(i19, i26);
                    i20 = i28;
                }
                int i29 = i11;
                i15 = getChildrenSkipCount(view, i29) + i29;
                i21 = combineMeasuredStates;
                i17 = max;
                z11 = z13;
                i15++;
                iArr3 = iArr;
                z7 = z2;
                z6 = z3;
                i14 = 1073741824;
                z5 = false;
            }
            z2 = z7;
            z3 = z6;
            i15++;
            iArr3 = iArr;
            z7 = z2;
            z6 = z3;
            i14 = 1073741824;
            z5 = false;
        }
        boolean z14 = z7;
        boolean z15 = z6;
        int i30 = i17;
        int i31 = i19;
        int i32 = i20;
        int i33 = i21;
        if (i16 > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        if (iArr2[1] != -1 || iArr2[0] != -1 || iArr2[2] != -1 || iArr2[3] != -1) {
            i30 = Math.max(i30, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z14 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int i34 = 0;
            while (i34 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i34);
                if (virtualChildAt2 == null) {
                    this.mTotalLength += measureNullChild(i34);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i34 += getChildrenSkipCount(virtualChildAt2, i34);
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z8) {
                        this.mTotalLength += layoutParams3.leftMargin + i22 + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt2);
                    } else {
                        int i35 = this.mTotalLength;
                        i10 = i34;
                        this.mTotalLength = Math.max(i35, i35 + i22 + layoutParams3.leftMargin + layoutParams3.rightMargin + getNextLocationOffset(virtualChildAt2));
                        i34 = i10 + 1;
                    }
                }
                i10 = i34;
                i34 = i10 + 1;
            }
        }
        this.mTotalLength += this.mPaddingLeft + this.mPaddingRight;
        int resolveSizeAndState = resolveSizeAndState(Math.max(this.mTotalLength, getSuggestedMinimumWidth()), i, 0);
        int i36 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (this.mAllowInconsistentMeasurement) {
            i18 = 0;
        }
        int i37 = i36 + i18;
        if (z9 || ((sRemeasureWeightedChildren || i37 != 0) && f3 > 0.0f)) {
            float f4 = this.mWeightSum > 0.0f ? this.mWeightSum : f3;
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int i38 = i31;
            int i39 = i33;
            int i40 = -1;
            int i41 = 0;
            while (i41 < virtualChildCount) {
                View virtualChildAt3 = getVirtualChildAt(i41);
                if (virtualChildAt3 != null) {
                    i6 = i22;
                    if (virtualChildAt3.getVisibility() == 8) {
                        f = f4;
                        i5 = mode;
                    } else {
                        LayoutParams layoutParams4 = (LayoutParams) virtualChildAt3.getLayoutParams();
                        float f5 = layoutParams4.weight;
                        if (f5 > 0.0f) {
                            int i42 = (int) ((i37 * f5) / f4);
                            int i43 = i37 - i42;
                            float f6 = f4 - f5;
                            if (this.mUseLargestChild) {
                                i8 = 1073741824;
                                if (mode != 1073741824) {
                                    i9 = i43;
                                    i42 = i6;
                                    f2 = f6;
                                    i5 = mode;
                                    virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, i42), i8), getChildMeasureSpec(i2, this.mPaddingTop + this.mPaddingBottom + layoutParams4.topMargin + layoutParams4.bottomMargin, layoutParams4.height));
                                    i39 = combineMeasuredStates(i39, virtualChildAt3.getMeasuredState() & (-16777216));
                                    i37 = i9;
                                }
                            }
                            if (layoutParams4.width == 0) {
                                if (this.mAllowInconsistentMeasurement) {
                                    i8 = 1073741824;
                                } else {
                                    i8 = 1073741824;
                                }
                                i9 = i43;
                                f2 = f6;
                                i5 = mode;
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, i42), i8), getChildMeasureSpec(i2, this.mPaddingTop + this.mPaddingBottom + layoutParams4.topMargin + layoutParams4.bottomMargin, layoutParams4.height));
                                i39 = combineMeasuredStates(i39, virtualChildAt3.getMeasuredState() & (-16777216));
                                i37 = i9;
                            } else {
                                i8 = 1073741824;
                            }
                            i42 = virtualChildAt3.getMeasuredWidth() + i42;
                            i9 = i43;
                            f2 = f6;
                            i5 = mode;
                            virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(Math.max(0, i42), i8), getChildMeasureSpec(i2, this.mPaddingTop + this.mPaddingBottom + layoutParams4.topMargin + layoutParams4.bottomMargin, layoutParams4.height));
                            i39 = combineMeasuredStates(i39, virtualChildAt3.getMeasuredState() & (-16777216));
                            i37 = i9;
                        } else {
                            i5 = mode;
                            f2 = f4;
                        }
                        if (z8) {
                            this.mTotalLength += virtualChildAt3.getMeasuredWidth() + layoutParams4.leftMargin + layoutParams4.rightMargin + getNextLocationOffset(virtualChildAt3);
                        } else {
                            int i44 = this.mTotalLength;
                            this.mTotalLength = Math.max(i44, virtualChildAt3.getMeasuredWidth() + i44 + layoutParams4.leftMargin + layoutParams4.rightMargin + getNextLocationOffset(virtualChildAt3));
                        }
                        boolean z16 = mode2 != 1073741824 && layoutParams4.height == -1;
                        int i45 = layoutParams4.topMargin + layoutParams4.bottomMargin;
                        int measuredHeight2 = virtualChildAt3.getMeasuredHeight() + i45;
                        i40 = Math.max(i40, measuredHeight2);
                        if (!z16) {
                            i45 = measuredHeight2;
                        }
                        int max2 = Math.max(i38, i45);
                        if (z11) {
                            i7 = -1;
                            if (layoutParams4.height == -1) {
                                z = true;
                                if (z15 && (baseline = virtualChildAt3.getBaseline()) != i7) {
                                    int i46 = ((((layoutParams4.gravity >= 0 ? this.mGravity : layoutParams4.gravity) & 112) >> 4) & (-2)) >> 1;
                                    iArr2[i46] = Math.max(iArr2[i46], baseline);
                                    iArr[i46] = Math.max(iArr[i46], measuredHeight2 - baseline);
                                }
                                z11 = z;
                                i38 = max2;
                                i41++;
                                i22 = i6;
                                f4 = f2;
                                mode = i5;
                            }
                        } else {
                            i7 = -1;
                        }
                        z = false;
                        if (z15) {
                            int i462 = ((((layoutParams4.gravity >= 0 ? this.mGravity : layoutParams4.gravity) & 112) >> 4) & (-2)) >> 1;
                            iArr2[i462] = Math.max(iArr2[i462], baseline);
                            iArr[i462] = Math.max(iArr[i462], measuredHeight2 - baseline);
                        }
                        z11 = z;
                        i38 = max2;
                        i41++;
                        i22 = i6;
                        f4 = f2;
                        mode = i5;
                    }
                } else {
                    f = f4;
                    i5 = mode;
                    i6 = i22;
                }
                f2 = f;
                i41++;
                i22 = i6;
                f4 = f2;
                mode = i5;
            }
            i3 = i2;
            this.mTotalLength += this.mPaddingLeft + this.mPaddingRight;
            int max3 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i40 : Math.max(i40, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            i33 = i39;
            i30 = max3;
            i4 = i38;
        } else {
            i4 = Math.max(i31, i32);
            if (z14 && mode != 1073741824) {
                for (int i47 = 0; i47 < virtualChildCount; i47++) {
                    View virtualChildAt4 = getVirtualChildAt(i47);
                    if (virtualChildAt4 != null && virtualChildAt4.getVisibility() != 8 && ((LayoutParams) virtualChildAt4.getLayoutParams()).weight > 0.0f) {
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(i22, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i3 = i2;
        }
        if (z11 || mode2 == 1073741824) {
            i4 = i30;
        }
        setMeasuredDimension(resolveSizeAndState | ((-16777216) & i33), resolveSizeAndState(Math.max(i4 + this.mPaddingTop + this.mPaddingBottom, getSuggestedMinimumHeight()), i3, i33 << 16));
        if (z10) {
            forceUniformHeight(virtualChildCount, i);
        }
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    layoutParams.width = i4;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void layoutVertical(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8 = this.mPaddingLeft;
        int i9 = i3 - i;
        int i10 = i9 - this.mPaddingRight;
        int i11 = (i9 - i8) - this.mPaddingRight;
        int virtualChildCount = getVirtualChildCount();
        int i12 = this.mGravity & 112;
        int i13 = this.mGravity & Gravity.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i12 == 16) {
            i5 = (((i4 - i2) - this.mTotalLength) / 2) + this.mPaddingTop;
        } else if (i12 == 80) {
            i5 = ((this.mPaddingTop + i4) - i2) - this.mTotalLength;
        } else {
            i5 = this.mPaddingTop;
        }
        int i14 = 0;
        while (i14 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i14);
            if (virtualChildAt == null) {
                i5 += measureNullChild(i14);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i15 = layoutParams.gravity;
                if (i15 < 0) {
                    i15 = i13;
                }
                int absoluteGravity = Gravity.getAbsoluteGravity(i15, getLayoutDirection()) & 7;
                if (absoluteGravity == 1) {
                    i6 = ((((i11 - measuredWidth) / 2) + i8) + layoutParams.leftMargin) - layoutParams.rightMargin;
                } else if (absoluteGravity == 5) {
                    i6 = (i10 - measuredWidth) - layoutParams.rightMargin;
                } else {
                    i6 = layoutParams.leftMargin + i8;
                }
                int i16 = i6;
                if (hasDividerBeforeChildAt(i14)) {
                    i5 += this.mDividerHeight;
                }
                int i17 = i5 + layoutParams.topMargin;
                setChildFrame(virtualChildAt, i16, i17 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                int nextLocationOffset = i17 + measuredHeight + layoutParams.bottomMargin + getNextLocationOffset(virtualChildAt);
                i14 += getChildrenSkipCount(virtualChildAt, i14);
                i5 = nextLocationOffset;
                i7 = 1;
                i14 += i7;
            }
            i7 = 1;
            i14 += i7;
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (i != this.mLayoutDirection) {
            this.mLayoutDirection = i;
            if (this.mOrientation == 0) {
                requestLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutHorizontal(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean isLayoutRtl = isLayoutRtl();
        int i16 = this.mPaddingTop;
        int i17 = i4 - i2;
        int i18 = i17 - this.mPaddingBottom;
        int i19 = (i17 - i16) - this.mPaddingBottom;
        int virtualChildCount = getVirtualChildCount();
        int i20 = this.mGravity & Gravity.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i21 = this.mGravity & 112;
        boolean z2 = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = Gravity.getAbsoluteGravity(i20, getLayoutDirection());
        boolean z3 = true;
        if (absoluteGravity == 1) {
            i5 = (((i3 - i) - this.mTotalLength) / 2) + this.mPaddingLeft;
        } else if (absoluteGravity == 5) {
            i5 = ((this.mPaddingLeft + i3) - i) - this.mTotalLength;
        } else {
            i5 = this.mPaddingLeft;
        }
        if (isLayoutRtl) {
            i6 = virtualChildCount - 1;
            i7 = -1;
        } else {
            i6 = 0;
            i7 = 1;
        }
        int i22 = 0;
        while (i22 < virtualChildCount) {
            int i23 = i6 + (i7 * i22);
            View virtualChildAt = getVirtualChildAt(i23);
            if (virtualChildAt == null) {
                i5 += measureNullChild(i23);
                z = z3;
                i8 = i16;
                i9 = virtualChildCount;
                i10 = i21;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (z2) {
                    i11 = i22;
                    i9 = virtualChildCount;
                    if (layoutParams.height != -1) {
                        i12 = virtualChildAt.getBaseline();
                        i13 = layoutParams.gravity;
                        if (i13 < 0) {
                            i13 = i21;
                        }
                        i14 = i13 & 112;
                        i10 = i21;
                        if (i14 != 16) {
                            z = true;
                            i15 = ((((i19 - measuredHeight) / 2) + i16) + layoutParams.topMargin) - layoutParams.bottomMargin;
                        } else if (i14 != 48) {
                            if (i14 != 80) {
                                i15 = i16;
                            } else {
                                int i24 = (i18 - measuredHeight) - layoutParams.bottomMargin;
                                if (i12 != -1) {
                                    i24 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - i12);
                                }
                                i15 = i24;
                            }
                            z = true;
                        } else {
                            int i25 = layoutParams.topMargin + i16;
                            if (i12 != -1) {
                                z = true;
                                i25 += iArr[1] - i12;
                            } else {
                                z = true;
                            }
                            i15 = i25;
                        }
                        if (hasDividerBeforeChildAt(i23)) {
                            i5 += this.mDividerWidth;
                        }
                        int i26 = layoutParams.leftMargin + i5;
                        i8 = i16;
                        setChildFrame(virtualChildAt, i26 + getLocationOffset(virtualChildAt), i15, measuredWidth, measuredHeight);
                        int nextLocationOffset = i26 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                        i22 = i11 + getChildrenSkipCount(virtualChildAt, i23);
                        i5 = nextLocationOffset;
                        i22++;
                        z3 = z;
                        virtualChildCount = i9;
                        i21 = i10;
                        i16 = i8;
                    }
                } else {
                    i11 = i22;
                    i9 = virtualChildCount;
                }
                i12 = -1;
                i13 = layoutParams.gravity;
                if (i13 < 0) {
                }
                i14 = i13 & 112;
                i10 = i21;
                if (i14 != 16) {
                }
                if (hasDividerBeforeChildAt(i23)) {
                }
                int i262 = layoutParams.leftMargin + i5;
                i8 = i16;
                setChildFrame(virtualChildAt, i262 + getLocationOffset(virtualChildAt), i15, measuredWidth, measuredHeight);
                int nextLocationOffset2 = i262 + measuredWidth + layoutParams.rightMargin + getNextLocationOffset(virtualChildAt);
                i22 = i11 + getChildrenSkipCount(virtualChildAt, i23);
                i5 = nextLocationOffset2;
                i22++;
                z3 = z;
                virtualChildCount = i9;
                i21 = i10;
                i16 = i8;
            } else {
                i8 = i16;
                i9 = virtualChildCount;
                i10 = i21;
                z = true;
            }
            i22++;
            z3 = z;
            virtualChildCount = i9;
            i21 = i10;
            i16 = i8;
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    @RemotableViewMethod
    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((8388615 & i) == 0) {
                i |= Gravity.START;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    @RemotableViewMethod
    public void setHorizontalGravity(int i) {
        int i2 = i & Gravity.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if ((8388615 & this.mGravity) != i2) {
            this.mGravity = i2 | (this.mGravity & (-8388616));
            requestLayout();
        }
    }

    @RemotableViewMethod
    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        if ((this.mGravity & 112) != i2) {
            this.mGravity = i2 | (this.mGravity & (-113));
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -2);
        }
        if (this.mOrientation == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (sPreserveMarginParamsInLayoutParamConversion) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            }
        }
        return new LayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return LinearLayout.class.getName();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("layout:baselineAligned", this.mBaselineAligned);
        viewHierarchyEncoder.addProperty("layout:baselineAlignedChildIndex", this.mBaselineAlignedChildIndex);
        viewHierarchyEncoder.addProperty("measurement:baselineChildTop", this.mBaselineChildTop);
        viewHierarchyEncoder.addProperty("measurement:orientation", this.mOrientation);
        viewHierarchyEncoder.addProperty("measurement:gravity", this.mGravity);
        viewHierarchyEncoder.addProperty("measurement:totalLength", this.mTotalLength);
        viewHierarchyEncoder.addProperty("layout:totalLength", this.mTotalLength);
        viewHierarchyEncoder.addProperty("layout:useLargestChild", this.mUseLargestChild);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 0, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 48, to = "TOP"), @ViewDebug.IntToString(from = 80, to = "BOTTOM"), @ViewDebug.IntToString(from = 3, to = "LEFT"), @ViewDebug.IntToString(from = 5, to = "RIGHT"), @ViewDebug.IntToString(from = Gravity.START, to = "START"), @ViewDebug.IntToString(from = Gravity.END, to = "END"), @ViewDebug.IntToString(from = 16, to = "CENTER_VERTICAL"), @ViewDebug.IntToString(from = 112, to = "FILL_VERTICAL"), @ViewDebug.IntToString(from = 1, to = "CENTER_HORIZONTAL"), @ViewDebug.IntToString(from = 7, to = "FILL_HORIZONTAL"), @ViewDebug.IntToString(from = 17, to = "CENTER"), @ViewDebug.IntToString(from = 119, to = "FILL")})
        public int gravity;

        @ViewDebug.ExportedProperty(category = "layout")
        public float weight;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LinearLayout_Layout);
            this.weight = obtainStyledAttributes.getFloat(3, 0.0f);
            this.gravity = obtainStyledAttributes.getInt(0, -1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            return str + "LinearLayout.LayoutParams={width=" + sizeToString(this.width) + ", height=" + sizeToString(this.height) + " weight=" + this.weight + "}";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            super.encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.addProperty("layout:weight", this.weight);
            viewHierarchyEncoder.addProperty("layout:gravity", this.gravity);
        }
    }
}
