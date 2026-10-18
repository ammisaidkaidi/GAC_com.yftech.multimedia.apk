package android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Pools;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewHierarchyEncoder;
import android.view.accessibility.AccessibilityEvent;
import android.widget.RemoteViews;
import com.android.internal.R;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.SortedSet;
import java.util.TreeSet;

@RemoteViews.RemoteView
/* loaded from: /home/user/work/dex/classes2.dex */
public class RelativeLayout extends ViewGroup {
    public static final int ABOVE = 2;
    public static final int ALIGN_BASELINE = 4;
    public static final int ALIGN_BOTTOM = 8;
    public static final int ALIGN_END = 19;
    public static final int ALIGN_LEFT = 5;
    public static final int ALIGN_PARENT_BOTTOM = 12;
    public static final int ALIGN_PARENT_END = 21;
    public static final int ALIGN_PARENT_LEFT = 9;
    public static final int ALIGN_PARENT_RIGHT = 11;
    public static final int ALIGN_PARENT_START = 20;
    public static final int ALIGN_PARENT_TOP = 10;
    public static final int ALIGN_RIGHT = 7;
    public static final int ALIGN_START = 18;
    public static final int ALIGN_TOP = 6;
    public static final int BELOW = 3;
    public static final int CENTER_HORIZONTAL = 14;
    public static final int CENTER_IN_PARENT = 13;
    public static final int CENTER_VERTICAL = 15;
    private static final int DEFAULT_WIDTH = 65536;
    public static final int END_OF = 17;
    public static final int LEFT_OF = 0;
    public static final int RIGHT_OF = 1;
    public static final int START_OF = 16;
    public static final int TRUE = -1;
    private static final int VALUE_NOT_SET = Integer.MIN_VALUE;
    private static final int VERB_COUNT = 22;
    private boolean mAllowBrokenMeasureSpecs;
    private View mBaselineView;
    private final Rect mContentBounds;
    private boolean mDirtyHierarchy;
    private final DependencyGraph mGraph;
    private int mGravity;
    private int mIgnoreGravity;
    private boolean mMeasureVerticalWithPaddingMargin;
    private final Rect mSelfBounds;
    private View[] mSortedHorizontalChildren;
    private View[] mSortedVerticalChildren;
    private SortedSet<View> mTopToBottomLeftToRightSet;
    private static final int[] RULES_VERTICAL = {2, 3, 4, 6, 8};
    private static final int[] RULES_HORIZONTAL = {0, 1, 5, 7, 16, 17, 18, 19};

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public RelativeLayout(Context context) {
        this(context, null);
    }

    public RelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RelativeLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public RelativeLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mBaselineView = null;
        this.mGravity = 8388659;
        this.mContentBounds = new Rect();
        this.mSelfBounds = new Rect();
        this.mTopToBottomLeftToRightSet = null;
        this.mGraph = new DependencyGraph();
        this.mAllowBrokenMeasureSpecs = false;
        this.mMeasureVerticalWithPaddingMargin = false;
        initFromAttributes(context, attributeSet, i, i2);
        queryCompatibilityModes(context);
    }

    private void initFromAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RelativeLayout, i, i2);
        this.mIgnoreGravity = obtainStyledAttributes.getResourceId(1, -1);
        this.mGravity = obtainStyledAttributes.getInt(0, this.mGravity);
        obtainStyledAttributes.recycle();
    }

    private void queryCompatibilityModes(Context context) {
        int i = context.getApplicationInfo().targetSdkVersion;
        this.mAllowBrokenMeasureSpecs = i <= 17;
        this.mMeasureVerticalWithPaddingMargin = i >= 18;
    }

    @RemotableViewMethod
    public void setIgnoreGravity(int i) {
        this.mIgnoreGravity = i;
    }

    public int getGravity() {
        return this.mGravity;
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

    @Override // android.view.View
    public int getBaseline() {
        return this.mBaselineView != null ? this.mBaselineView.getBaseline() : super.getBaseline();
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        this.mDirtyHierarchy = true;
    }

    private void sortChildren() {
        int childCount = getChildCount();
        if (this.mSortedVerticalChildren == null || this.mSortedVerticalChildren.length != childCount) {
            this.mSortedVerticalChildren = new View[childCount];
        }
        if (this.mSortedHorizontalChildren == null || this.mSortedHorizontalChildren.length != childCount) {
            this.mSortedHorizontalChildren = new View[childCount];
        }
        DependencyGraph dependencyGraph = this.mGraph;
        dependencyGraph.clear();
        for (int i = 0; i < childCount; i++) {
            dependencyGraph.add(getChildAt(i));
        }
        dependencyGraph.getSortedViews(this.mSortedVerticalChildren, RULES_VERTICAL);
        dependencyGraph.getSortedViews(this.mSortedHorizontalChildren, RULES_HORIZONTAL);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0130  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onMeasure(int i, int i2) {
        int i3;
        View view;
        int i4;
        int i5;
        int i6 = 0;
        if (this.mDirtyHierarchy) {
            this.mDirtyHierarchy = false;
            sortChildren();
        }
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = -1;
        }
        if (mode2 == 0) {
            size2 = -1;
        }
        int i7 = mode == 1073741824 ? size : 0;
        int i8 = mode2 == 1073741824 ? size2 : 0;
        int i9 = this.mGravity & Gravity.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        boolean z = (i9 == 8388611 || i9 == 0) ? false : true;
        int i10 = this.mGravity & 112;
        boolean z2 = (i10 == 48 || i10 == 0) ? false : true;
        View findViewById = ((z || z2) && this.mIgnoreGravity != -1) ? findViewById(this.mIgnoreGravity) : null;
        boolean z3 = mode != 1073741824;
        boolean z4 = mode2 != 1073741824;
        int layoutDirection = getLayoutDirection();
        if (isLayoutRtl() && size == -1) {
            size = 65536;
        }
        View[] viewArr = this.mSortedHorizontalChildren;
        int length = viewArr.length;
        boolean z5 = false;
        while (true) {
            i3 = 8;
            if (i6 >= length) {
                break;
            }
            View view2 = viewArr[i6];
            View[] viewArr2 = viewArr;
            if (view2.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) view2.getLayoutParams();
                applyHorizontalSizeRules(layoutParams, size, layoutParams.getRules(layoutDirection));
                measureChildHorizontal(view2, layoutParams, size, size2);
                if (positionChildHorizontal(view2, layoutParams, size, z3)) {
                    z5 = true;
                }
            }
            i6++;
            viewArr = viewArr2;
        }
        View[] viewArr3 = this.mSortedVerticalChildren;
        int length2 = viewArr3.length;
        int i11 = getContext().getApplicationInfo().targetSdkVersion;
        int i12 = Integer.MIN_VALUE;
        int i13 = Integer.MIN_VALUE;
        int i14 = Integer.MAX_VALUE;
        int i15 = Integer.MAX_VALUE;
        boolean z6 = false;
        int i16 = i8;
        int i17 = i7;
        int i18 = 0;
        while (i18 < length2) {
            int i19 = layoutDirection;
            View view3 = viewArr3[i18];
            View[] viewArr4 = viewArr3;
            if (view3.getVisibility() != i3) {
                LayoutParams layoutParams2 = (LayoutParams) view3.getLayoutParams();
                applyVerticalSizeRules(layoutParams2, size2, view3.getBaseline());
                measureChild(view3, layoutParams2, size, size2);
                if (positionChildVertical(view3, layoutParams2, size2, z4)) {
                    z6 = true;
                }
                if (z3) {
                    if (!isLayoutRtl()) {
                        i5 = size2;
                        i17 = i11 < 19 ? Math.max(i17, layoutParams2.mRight) : Math.max(i17, layoutParams2.mRight + layoutParams2.rightMargin);
                    } else if (i11 < 19) {
                        i17 = Math.max(i17, size - layoutParams2.mLeft);
                    } else {
                        i5 = size2;
                        i17 = Math.max(i17, (size - layoutParams2.mLeft) + layoutParams2.leftMargin);
                    }
                    if (z4) {
                        i16 = i11 < 19 ? Math.max(i16, layoutParams2.mBottom) : Math.max(i16, layoutParams2.mBottom + layoutParams2.bottomMargin);
                    }
                    if (view3 == findViewById || z2) {
                        i14 = Math.min(i14, layoutParams2.mLeft - layoutParams2.leftMargin);
                        i15 = Math.min(i15, layoutParams2.mTop - layoutParams2.topMargin);
                    }
                    if (view3 == findViewById || z) {
                        int max = Math.max(i12, layoutParams2.mRight + layoutParams2.rightMargin);
                        i13 = Math.max(i13, layoutParams2.mBottom + layoutParams2.bottomMargin);
                        i12 = max;
                    }
                }
                i5 = size2;
                if (z4) {
                }
                if (view3 == findViewById) {
                }
                i14 = Math.min(i14, layoutParams2.mLeft - layoutParams2.leftMargin);
                i15 = Math.min(i15, layoutParams2.mTop - layoutParams2.topMargin);
                if (view3 == findViewById) {
                }
                int max2 = Math.max(i12, layoutParams2.mRight + layoutParams2.rightMargin);
                i13 = Math.max(i13, layoutParams2.mBottom + layoutParams2.bottomMargin);
                i12 = max2;
            } else {
                i5 = size2;
            }
            i18++;
            layoutDirection = i19;
            viewArr3 = viewArr4;
            size2 = i5;
            i3 = 8;
        }
        View[] viewArr5 = viewArr3;
        int i20 = layoutDirection;
        int i21 = i14;
        int i22 = i15;
        int i23 = i12;
        int i24 = i13;
        int i25 = size;
        LayoutParams layoutParams3 = null;
        int i26 = 0;
        View view4 = null;
        while (i26 < length2) {
            View view5 = viewArr5[i26];
            View view6 = findViewById;
            int i27 = i24;
            if (view5.getVisibility() != 8) {
                LayoutParams layoutParams4 = (LayoutParams) view5.getLayoutParams();
                if (view4 == null || layoutParams3 == null || compareLayoutPosition(layoutParams4, layoutParams3) < 0) {
                    layoutParams3 = layoutParams4;
                    view4 = view5;
                }
            }
            i26++;
            findViewById = view6;
            i24 = i27;
        }
        int i28 = i24;
        View view7 = findViewById;
        this.mBaselineView = view4;
        if (z3) {
            int i29 = i17 + this.mPaddingRight;
            if (this.mLayoutParams != null && this.mLayoutParams.width >= 0) {
                i29 = Math.max(i29, this.mLayoutParams.width);
            }
            i17 = resolveSize(Math.max(i29, getSuggestedMinimumWidth()), i);
            if (z5) {
                int i30 = 0;
                while (i30 < length2) {
                    View view8 = viewArr5[i30];
                    if (view8.getVisibility() != 8) {
                        LayoutParams layoutParams5 = (LayoutParams) view8.getLayoutParams();
                        i4 = i20;
                        int[] rules = layoutParams5.getRules(i4);
                        if (rules[13] != 0 || rules[14] != 0) {
                            centerHorizontal(view8, layoutParams5, i17);
                        } else if (rules[11] != 0) {
                            int measuredWidth = view8.getMeasuredWidth();
                            layoutParams5.mLeft = (i17 - this.mPaddingRight) - measuredWidth;
                            layoutParams5.mRight = layoutParams5.mLeft + measuredWidth;
                        }
                    } else {
                        i4 = i20;
                    }
                    i30++;
                    i20 = i4;
                }
            }
        }
        int i31 = i20;
        if (z4) {
            int i32 = i16 + this.mPaddingBottom;
            if (this.mLayoutParams != null && this.mLayoutParams.height >= 0) {
                i32 = Math.max(i32, this.mLayoutParams.height);
            }
            i16 = resolveSize(Math.max(i32, getSuggestedMinimumHeight()), i2);
            if (z6) {
                for (int i33 = 0; i33 < length2; i33++) {
                    View view9 = viewArr5[i33];
                    if (view9.getVisibility() != 8) {
                        LayoutParams layoutParams6 = (LayoutParams) view9.getLayoutParams();
                        int[] rules2 = layoutParams6.getRules(i31);
                        if (rules2[13] != 0 || rules2[15] != 0) {
                            centerVertical(view9, layoutParams6, i16);
                        } else if (rules2[12] != 0) {
                            int measuredHeight = view9.getMeasuredHeight();
                            layoutParams6.mTop = (i16 - this.mPaddingBottom) - measuredHeight;
                            layoutParams6.mBottom = layoutParams6.mTop + measuredHeight;
                        }
                    }
                }
            }
        }
        int i34 = i16;
        if (z || z2) {
            Rect rect = this.mSelfBounds;
            rect.set(this.mPaddingLeft, this.mPaddingTop, i17 - this.mPaddingRight, i34 - this.mPaddingBottom);
            Rect rect2 = this.mContentBounds;
            Gravity.apply(this.mGravity, i23 - i21, i28 - i22, rect, rect2, i31);
            int i35 = rect2.left - i21;
            int i36 = rect2.top - i22;
            if (i35 != 0 || i36 != 0) {
                int i37 = 0;
                while (i37 < length2) {
                    View view10 = viewArr5[i37];
                    if (view10.getVisibility() != 8) {
                        view = view7;
                        if (view10 != view) {
                            LayoutParams layoutParams7 = (LayoutParams) view10.getLayoutParams();
                            if (z) {
                                LayoutParams.access$112(layoutParams7, i35);
                                LayoutParams.access$212(layoutParams7, i35);
                            }
                            if (z2) {
                                LayoutParams.access$412(layoutParams7, i36);
                                LayoutParams.access$312(layoutParams7, i36);
                            }
                        }
                    } else {
                        view = view7;
                    }
                    i37++;
                    view7 = view;
                }
            }
        }
        if (isLayoutRtl()) {
            int i38 = i25 - i17;
            for (int i39 = 0; i39 < length2; i39++) {
                View view11 = viewArr5[i39];
                if (view11.getVisibility() != 8) {
                    LayoutParams layoutParams8 = (LayoutParams) view11.getLayoutParams();
                    LayoutParams.access$120(layoutParams8, i38);
                    LayoutParams.access$220(layoutParams8, i38);
                }
            }
        }
        setMeasuredDimension(i17, i34);
    }

    private int compareLayoutPosition(LayoutParams layoutParams, LayoutParams layoutParams2) {
        int i = layoutParams.mTop - layoutParams2.mTop;
        return i != 0 ? i : layoutParams.mLeft - layoutParams2.mLeft;
    }

    private void measureChild(View view, LayoutParams layoutParams, int i, int i2) {
        view.measure(getChildMeasureSpec(layoutParams.mLeft, layoutParams.mRight, layoutParams.width, layoutParams.leftMargin, layoutParams.rightMargin, this.mPaddingLeft, this.mPaddingRight, i), getChildMeasureSpec(layoutParams.mTop, layoutParams.mBottom, layoutParams.height, layoutParams.topMargin, layoutParams.bottomMargin, this.mPaddingTop, this.mPaddingBottom, i2));
    }

    private void measureChildHorizontal(View view, LayoutParams layoutParams, int i, int i2) {
        int max;
        int makeMeasureSpec;
        int childMeasureSpec = getChildMeasureSpec(layoutParams.mLeft, layoutParams.mRight, layoutParams.width, layoutParams.leftMargin, layoutParams.rightMargin, this.mPaddingLeft, this.mPaddingRight, i);
        if (i2 < 0 && !this.mAllowBrokenMeasureSpecs) {
            if (layoutParams.height >= 0) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.height, 1073741824);
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
            }
        } else {
            if (this.mMeasureVerticalWithPaddingMargin) {
                max = Math.max(0, (((i2 - this.mPaddingTop) - this.mPaddingBottom) - layoutParams.topMargin) - layoutParams.bottomMargin);
            } else {
                max = Math.max(0, i2);
            }
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max, layoutParams.height != -1 ? Integer.MIN_VALUE : 1073741824);
        }
        view.measure(childMeasureSpec, makeMeasureSpec);
    }

    private int getChildMeasureSpec(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        boolean z = i8 < 0;
        if (z && !this.mAllowBrokenMeasureSpecs) {
            if (i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE) {
                i3 = Math.max(0, i2 - i);
            } else if (i3 < 0) {
                i3 = 0;
                r2 = 0;
            }
            return View.MeasureSpec.makeMeasureSpec(i3, r2);
        }
        int i9 = (i2 == Integer.MIN_VALUE ? (i8 - i7) - i5 : i2) - (i == Integer.MIN_VALUE ? i6 + i4 : i);
        if (i != Integer.MIN_VALUE && i2 != Integer.MIN_VALUE) {
            r2 = z ? 0 : 1073741824;
            i3 = Math.max(0, i9);
        } else if (i3 >= 0) {
            if (i9 >= 0) {
                i3 = Math.min(i9, i3);
            }
        } else if (i3 == -1) {
            r2 = z ? 0 : 1073741824;
            i3 = Math.max(0, i9);
        } else if (i3 != -2 || i9 < 0) {
            i3 = 0;
            r2 = 0;
        } else {
            i3 = i9;
            r2 = Integer.MIN_VALUE;
        }
        return View.MeasureSpec.makeMeasureSpec(i3, r2);
    }

    private boolean positionChildHorizontal(View view, LayoutParams layoutParams, int i, boolean z) {
        int[] rules = layoutParams.getRules(getLayoutDirection());
        if (layoutParams.mLeft != Integer.MIN_VALUE || layoutParams.mRight == Integer.MIN_VALUE) {
            if (layoutParams.mLeft == Integer.MIN_VALUE || layoutParams.mRight != Integer.MIN_VALUE) {
                if (layoutParams.mLeft == Integer.MIN_VALUE && layoutParams.mRight == Integer.MIN_VALUE) {
                    if (rules[13] != 0 || rules[14] != 0) {
                        if (!z) {
                            centerHorizontal(view, layoutParams, i);
                        } else {
                            positionAtEdge(view, layoutParams, i);
                        }
                        return true;
                    }
                    positionAtEdge(view, layoutParams, i);
                }
            } else {
                layoutParams.mRight = layoutParams.mLeft + view.getMeasuredWidth();
            }
        } else {
            layoutParams.mLeft = layoutParams.mRight - view.getMeasuredWidth();
        }
        return rules[21] != 0;
    }

    private void positionAtEdge(View view, LayoutParams layoutParams, int i) {
        if (isLayoutRtl()) {
            layoutParams.mRight = (i - this.mPaddingRight) - layoutParams.rightMargin;
            layoutParams.mLeft = layoutParams.mRight - view.getMeasuredWidth();
        } else {
            layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
            layoutParams.mRight = layoutParams.mLeft + view.getMeasuredWidth();
        }
    }

    private boolean positionChildVertical(View view, LayoutParams layoutParams, int i, boolean z) {
        int[] rules = layoutParams.getRules();
        if (layoutParams.mTop != Integer.MIN_VALUE || layoutParams.mBottom == Integer.MIN_VALUE) {
            if (layoutParams.mTop == Integer.MIN_VALUE || layoutParams.mBottom != Integer.MIN_VALUE) {
                if (layoutParams.mTop == Integer.MIN_VALUE && layoutParams.mBottom == Integer.MIN_VALUE) {
                    if (rules[13] != 0 || rules[15] != 0) {
                        if (!z) {
                            centerVertical(view, layoutParams, i);
                        } else {
                            layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
                            layoutParams.mBottom = layoutParams.mTop + view.getMeasuredHeight();
                        }
                        return true;
                    }
                    layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
                    layoutParams.mBottom = layoutParams.mTop + view.getMeasuredHeight();
                }
            } else {
                layoutParams.mBottom = layoutParams.mTop + view.getMeasuredHeight();
            }
        } else {
            layoutParams.mTop = layoutParams.mBottom - view.getMeasuredHeight();
        }
        return rules[12] != 0;
    }

    private void applyHorizontalSizeRules(LayoutParams layoutParams, int i, int[] iArr) {
        layoutParams.mLeft = Integer.MIN_VALUE;
        layoutParams.mRight = Integer.MIN_VALUE;
        LayoutParams relatedViewParams = getRelatedViewParams(iArr, 0);
        if (relatedViewParams == null) {
            if (layoutParams.alignWithParent && iArr[0] != 0 && i >= 0) {
                layoutParams.mRight = (i - this.mPaddingRight) - layoutParams.rightMargin;
            }
        } else {
            layoutParams.mRight = relatedViewParams.mLeft - (relatedViewParams.leftMargin + layoutParams.rightMargin);
        }
        LayoutParams relatedViewParams2 = getRelatedViewParams(iArr, 1);
        if (relatedViewParams2 == null) {
            if (layoutParams.alignWithParent && iArr[1] != 0) {
                layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
            }
        } else {
            layoutParams.mLeft = relatedViewParams2.mRight + relatedViewParams2.rightMargin + layoutParams.leftMargin;
        }
        LayoutParams relatedViewParams3 = getRelatedViewParams(iArr, 5);
        if (relatedViewParams3 == null) {
            if (layoutParams.alignWithParent && iArr[5] != 0) {
                layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
            }
        } else {
            layoutParams.mLeft = relatedViewParams3.mLeft + layoutParams.leftMargin;
        }
        LayoutParams relatedViewParams4 = getRelatedViewParams(iArr, 7);
        if (relatedViewParams4 == null) {
            if (layoutParams.alignWithParent && iArr[7] != 0 && i >= 0) {
                layoutParams.mRight = (i - this.mPaddingRight) - layoutParams.rightMargin;
            }
        } else {
            layoutParams.mRight = relatedViewParams4.mRight - layoutParams.rightMargin;
        }
        if (iArr[9] != 0) {
            layoutParams.mLeft = this.mPaddingLeft + layoutParams.leftMargin;
        }
        if (iArr[11] == 0 || i < 0) {
            return;
        }
        layoutParams.mRight = (i - this.mPaddingRight) - layoutParams.rightMargin;
    }

    private void applyVerticalSizeRules(LayoutParams layoutParams, int i, int i2) {
        int[] rules = layoutParams.getRules();
        int relatedViewBaselineOffset = getRelatedViewBaselineOffset(rules);
        if (relatedViewBaselineOffset != -1) {
            if (i2 != -1) {
                relatedViewBaselineOffset -= i2;
            }
            layoutParams.mTop = relatedViewBaselineOffset;
            layoutParams.mBottom = Integer.MIN_VALUE;
            return;
        }
        layoutParams.mTop = Integer.MIN_VALUE;
        layoutParams.mBottom = Integer.MIN_VALUE;
        LayoutParams relatedViewParams = getRelatedViewParams(rules, 2);
        if (relatedViewParams == null) {
            if (layoutParams.alignWithParent && rules[2] != 0 && i >= 0) {
                layoutParams.mBottom = (i - this.mPaddingBottom) - layoutParams.bottomMargin;
            }
        } else {
            layoutParams.mBottom = relatedViewParams.mTop - (relatedViewParams.topMargin + layoutParams.bottomMargin);
        }
        LayoutParams relatedViewParams2 = getRelatedViewParams(rules, 3);
        if (relatedViewParams2 == null) {
            if (layoutParams.alignWithParent && rules[3] != 0) {
                layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
            }
        } else {
            layoutParams.mTop = relatedViewParams2.mBottom + relatedViewParams2.bottomMargin + layoutParams.topMargin;
        }
        LayoutParams relatedViewParams3 = getRelatedViewParams(rules, 6);
        if (relatedViewParams3 == null) {
            if (layoutParams.alignWithParent && rules[6] != 0) {
                layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
            }
        } else {
            layoutParams.mTop = relatedViewParams3.mTop + layoutParams.topMargin;
        }
        LayoutParams relatedViewParams4 = getRelatedViewParams(rules, 8);
        if (relatedViewParams4 == null) {
            if (layoutParams.alignWithParent && rules[8] != 0 && i >= 0) {
                layoutParams.mBottom = (i - this.mPaddingBottom) - layoutParams.bottomMargin;
            }
        } else {
            layoutParams.mBottom = relatedViewParams4.mBottom - layoutParams.bottomMargin;
        }
        if (rules[10] != 0) {
            layoutParams.mTop = this.mPaddingTop + layoutParams.topMargin;
        }
        if (rules[12] == 0 || i < 0) {
            return;
        }
        layoutParams.mBottom = (i - this.mPaddingBottom) - layoutParams.bottomMargin;
    }

    private View getRelatedView(int[] iArr, int i) {
        DependencyGraph.Node node;
        int i2 = iArr[i];
        if (i2 == 0 || (node = (DependencyGraph.Node) this.mGraph.mKeyNodes.get(i2)) == null) {
            return null;
        }
        View view = node.view;
        while (view.getVisibility() == 8) {
            DependencyGraph.Node node2 = (DependencyGraph.Node) this.mGraph.mKeyNodes.get(((LayoutParams) view.getLayoutParams()).getRules(view.getLayoutDirection())[i]);
            if (node2 == null || view == node2.view) {
                return null;
            }
            view = node2.view;
        }
        return view;
    }

    private LayoutParams getRelatedViewParams(int[] iArr, int i) {
        View relatedView = getRelatedView(iArr, i);
        if (relatedView == null || !(relatedView.getLayoutParams() instanceof LayoutParams)) {
            return null;
        }
        return (LayoutParams) relatedView.getLayoutParams();
    }

    private int getRelatedViewBaselineOffset(int[] iArr) {
        int baseline;
        View relatedView = getRelatedView(iArr, 4);
        if (relatedView == null || (baseline = relatedView.getBaseline()) == -1 || !(relatedView.getLayoutParams() instanceof LayoutParams)) {
            return -1;
        }
        return ((LayoutParams) relatedView.getLayoutParams()).mTop + baseline;
    }

    private static void centerHorizontal(View view, LayoutParams layoutParams, int i) {
        int measuredWidth = view.getMeasuredWidth();
        int i2 = (i - measuredWidth) / 2;
        layoutParams.mLeft = i2;
        layoutParams.mRight = i2 + measuredWidth;
    }

    private static void centerVertical(View view, LayoutParams layoutParams, int i) {
        int measuredHeight = view.getMeasuredHeight();
        int i2 = (i - measuredHeight) / 2;
        layoutParams.mTop = i2;
        layoutParams.mBottom = i2 + measuredHeight;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                childAt.layout(layoutParams.mLeft, layoutParams.mTop, layoutParams.mRight, layoutParams.mBottom);
            }
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
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

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        if (this.mTopToBottomLeftToRightSet == null) {
            this.mTopToBottomLeftToRightSet = new TreeSet(new TopToBottomLeftToRightComparator());
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.mTopToBottomLeftToRightSet.add(getChildAt(i));
        }
        for (View view : this.mTopToBottomLeftToRightSet) {
            if (view.getVisibility() == 0 && view.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                this.mTopToBottomLeftToRightSet.clear();
                return true;
            }
        }
        this.mTopToBottomLeftToRightSet.clear();
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return RelativeLayout.class.getName();
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private class TopToBottomLeftToRightComparator implements Comparator<View> {
        private TopToBottomLeftToRightComparator() {
        }

        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            int top = view.getTop() - view2.getTop();
            if (top != 0) {
                return top;
            }
            int left = view.getLeft() - view2.getLeft();
            if (left != 0) {
                return left;
            }
            int height = view.getHeight() - view2.getHeight();
            if (height != 0) {
                return height;
            }
            int width = view.getWidth() - view2.getWidth();
            if (width != 0) {
                return width;
            }
            return 0;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        @ViewDebug.ExportedProperty(category = "layout")
        public boolean alignWithParent;
        private int mBottom;
        private int[] mInitialRules;
        private boolean mIsRtlCompatibilityMode;
        private int mLeft;
        private boolean mNeedsLayoutResolution;
        private int mRight;

        @ViewDebug.ExportedProperty(category = "layout", indexMapping = {@ViewDebug.IntToString(from = 2, to = "above"), @ViewDebug.IntToString(from = 4, to = "alignBaseline"), @ViewDebug.IntToString(from = 8, to = "alignBottom"), @ViewDebug.IntToString(from = 5, to = "alignLeft"), @ViewDebug.IntToString(from = 12, to = "alignParentBottom"), @ViewDebug.IntToString(from = 9, to = "alignParentLeft"), @ViewDebug.IntToString(from = 11, to = "alignParentRight"), @ViewDebug.IntToString(from = 10, to = "alignParentTop"), @ViewDebug.IntToString(from = 7, to = "alignRight"), @ViewDebug.IntToString(from = 6, to = "alignTop"), @ViewDebug.IntToString(from = 3, to = "below"), @ViewDebug.IntToString(from = 14, to = "centerHorizontal"), @ViewDebug.IntToString(from = 13, to = "center"), @ViewDebug.IntToString(from = 15, to = "centerVertical"), @ViewDebug.IntToString(from = 0, to = "leftOf"), @ViewDebug.IntToString(from = 1, to = "rightOf"), @ViewDebug.IntToString(from = 18, to = "alignStart"), @ViewDebug.IntToString(from = 19, to = "alignEnd"), @ViewDebug.IntToString(from = 20, to = "alignParentStart"), @ViewDebug.IntToString(from = 21, to = "alignParentEnd"), @ViewDebug.IntToString(from = 16, to = "startOf"), @ViewDebug.IntToString(from = 17, to = "endOf")}, mapping = {@ViewDebug.IntToString(from = -1, to = "true"), @ViewDebug.IntToString(from = 0, to = "false/NO_ID")}, resolveId = true)
        private int[] mRules;
        private boolean mRulesChanged;
        private int mTop;

        private boolean isRelativeRule(int i) {
            return i == 16 || i == 17 || i == 18 || i == 19 || i == 20 || i == 21;
        }

        static /* synthetic */ int access$112(LayoutParams layoutParams, int i) {
            int i2 = layoutParams.mLeft + i;
            layoutParams.mLeft = i2;
            return i2;
        }

        static /* synthetic */ int access$120(LayoutParams layoutParams, int i) {
            int i2 = layoutParams.mLeft - i;
            layoutParams.mLeft = i2;
            return i2;
        }

        static /* synthetic */ int access$212(LayoutParams layoutParams, int i) {
            int i2 = layoutParams.mRight + i;
            layoutParams.mRight = i2;
            return i2;
        }

        static /* synthetic */ int access$220(LayoutParams layoutParams, int i) {
            int i2 = layoutParams.mRight - i;
            layoutParams.mRight = i2;
            return i2;
        }

        static /* synthetic */ int access$312(LayoutParams layoutParams, int i) {
            int i2 = layoutParams.mBottom + i;
            layoutParams.mBottom = i2;
            return i2;
        }

        static /* synthetic */ int access$412(LayoutParams layoutParams, int i) {
            int i2 = layoutParams.mTop + i;
            layoutParams.mTop = i2;
            return i2;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RelativeLayout_Layout);
            this.mIsRtlCompatibilityMode = context.getApplicationInfo().targetSdkVersion < 17 || !context.getApplicationInfo().hasRtlSupport();
            int[] iArr = this.mRules;
            int[] iArr2 = this.mInitialRules;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (index) {
                    case 0:
                        iArr[0] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 1:
                        iArr[1] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 2:
                        iArr[2] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 3:
                        iArr[3] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 4:
                        iArr[4] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 5:
                        iArr[5] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 6:
                        iArr[6] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 7:
                        iArr[7] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 8:
                        iArr[8] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 9:
                        iArr[9] = obtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 10:
                        iArr[10] = obtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 11:
                        iArr[11] = obtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 12:
                        iArr[12] = obtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 13:
                        iArr[13] = obtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 14:
                        iArr[14] = obtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 15:
                        iArr[15] = obtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 16:
                        this.alignWithParent = obtainStyledAttributes.getBoolean(index, false);
                        break;
                    case 17:
                        iArr[16] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 18:
                        iArr[17] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 19:
                        iArr[18] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 20:
                        iArr[19] = obtainStyledAttributes.getResourceId(index, 0);
                        break;
                    case 21:
                        iArr[20] = obtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                    case 22:
                        iArr[21] = obtainStyledAttributes.getBoolean(index, false) ? -1 : 0;
                        break;
                }
            }
            this.mRulesChanged = true;
            System.arraycopy(iArr, 0, iArr2, 0, 22);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.mRules = new int[22];
            this.mInitialRules = new int[22];
            this.mRulesChanged = false;
            this.mIsRtlCompatibilityMode = false;
            this.mIsRtlCompatibilityMode = layoutParams.mIsRtlCompatibilityMode;
            this.mRulesChanged = layoutParams.mRulesChanged;
            this.alignWithParent = layoutParams.alignWithParent;
            System.arraycopy(layoutParams.mRules, 0, this.mRules, 0, 22);
            System.arraycopy(layoutParams.mInitialRules, 0, this.mInitialRules, 0, 22);
        }

        @Override // android.view.ViewGroup.LayoutParams
        public String debug(String str) {
            return str + "ViewGroup.LayoutParams={ width=" + sizeToString(this.width) + ", height=" + sizeToString(this.height) + " }";
        }

        public void addRule(int i) {
            addRule(i, -1);
        }

        public void addRule(int i, int i2) {
            if (!this.mNeedsLayoutResolution && isRelativeRule(i) && this.mInitialRules[i] != 0 && i2 == 0) {
                this.mNeedsLayoutResolution = true;
            }
            this.mRules[i] = i2;
            this.mInitialRules[i] = i2;
            this.mRulesChanged = true;
        }

        public void removeRule(int i) {
            addRule(i, 0);
        }

        public int getRule(int i) {
            return this.mRules[i];
        }

        private boolean hasRelativeRules() {
            return (this.mInitialRules[16] == 0 && this.mInitialRules[17] == 0 && this.mInitialRules[18] == 0 && this.mInitialRules[19] == 0 && this.mInitialRules[20] == 0 && this.mInitialRules[21] == 0) ? false : true;
        }

        private void resolveRules(int i) {
            char c = i == 1 ? (char) 1 : (char) 0;
            System.arraycopy(this.mInitialRules, 0, this.mRules, 0, 22);
            if (this.mIsRtlCompatibilityMode) {
                if (this.mRules[18] != 0) {
                    if (this.mRules[5] == 0) {
                        this.mRules[5] = this.mRules[18];
                    }
                    this.mRules[18] = 0;
                }
                if (this.mRules[19] != 0) {
                    if (this.mRules[7] == 0) {
                        this.mRules[7] = this.mRules[19];
                    }
                    this.mRules[19] = 0;
                }
                if (this.mRules[16] != 0) {
                    if (this.mRules[0] == 0) {
                        this.mRules[0] = this.mRules[16];
                    }
                    this.mRules[16] = 0;
                }
                if (this.mRules[17] != 0) {
                    if (this.mRules[1] == 0) {
                        this.mRules[1] = this.mRules[17];
                    }
                    this.mRules[17] = 0;
                }
                if (this.mRules[20] != 0) {
                    if (this.mRules[9] == 0) {
                        this.mRules[9] = this.mRules[20];
                    }
                    this.mRules[20] = 0;
                }
                if (this.mRules[21] != 0) {
                    if (this.mRules[11] == 0) {
                        this.mRules[11] = this.mRules[21];
                    }
                    this.mRules[21] = 0;
                }
            } else {
                if ((this.mRules[18] != 0 || this.mRules[19] != 0) && (this.mRules[5] != 0 || this.mRules[7] != 0)) {
                    this.mRules[5] = 0;
                    this.mRules[7] = 0;
                }
                if (this.mRules[18] != 0) {
                    this.mRules[c != 0 ? (char) 7 : (char) 5] = this.mRules[18];
                    this.mRules[18] = 0;
                }
                if (this.mRules[19] != 0) {
                    this.mRules[c != 0 ? (char) 5 : (char) 7] = this.mRules[19];
                    this.mRules[19] = 0;
                }
                if ((this.mRules[16] != 0 || this.mRules[17] != 0) && (this.mRules[0] != 0 || this.mRules[1] != 0)) {
                    this.mRules[0] = 0;
                    this.mRules[1] = 0;
                }
                if (this.mRules[16] != 0) {
                    this.mRules[c] = this.mRules[16];
                    this.mRules[16] = 0;
                }
                if (this.mRules[17] != 0) {
                    this.mRules[c ^ 1] = this.mRules[17];
                    this.mRules[17] = 0;
                }
                if ((this.mRules[20] != 0 || this.mRules[21] != 0) && (this.mRules[9] != 0 || this.mRules[11] != 0)) {
                    this.mRules[9] = 0;
                    this.mRules[11] = 0;
                }
                if (this.mRules[20] != 0) {
                    this.mRules[c != 0 ? (char) 11 : '\t'] = this.mRules[20];
                    this.mRules[20] = 0;
                }
                if (this.mRules[21] != 0) {
                    this.mRules[c != 0 ? '\t' : (char) 11] = this.mRules[21];
                    this.mRules[21] = 0;
                }
            }
            this.mRulesChanged = false;
            this.mNeedsLayoutResolution = false;
        }

        public int[] getRules(int i) {
            resolveLayoutDirection(i);
            return this.mRules;
        }

        public int[] getRules() {
            return this.mRules;
        }

        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public void resolveLayoutDirection(int i) {
            if (shouldResolveLayoutDirection(i)) {
                resolveRules(i);
            }
            super.resolveLayoutDirection(i);
        }

        private boolean shouldResolveLayoutDirection(int i) {
            return (this.mNeedsLayoutResolution || hasRelativeRules()) && (this.mRulesChanged || i != getLayoutDirection());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            super.encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.addProperty("layout:alignWithParent", this.alignWithParent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class DependencyGraph {
        private SparseArray<Node> mKeyNodes;
        private ArrayList<Node> mNodes;
        private ArrayDeque<Node> mRoots;

        private DependencyGraph() {
            this.mNodes = new ArrayList<>();
            this.mKeyNodes = new SparseArray<>();
            this.mRoots = new ArrayDeque<>();
        }

        void clear() {
            ArrayList<Node> arrayList = this.mNodes;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                arrayList.get(i).release();
            }
            arrayList.clear();
            this.mKeyNodes.clear();
            this.mRoots.clear();
        }

        void add(View view) {
            int id = view.getId();
            Node acquire = Node.acquire(view);
            if (id != -1) {
                this.mKeyNodes.put(id, acquire);
            }
            this.mNodes.add(acquire);
        }

        void getSortedViews(View[] viewArr, int... iArr) {
            ArrayDeque<Node> findRoots = findRoots(iArr);
            int i = 0;
            while (true) {
                Node pollLast = findRoots.pollLast();
                if (pollLast == null) {
                    break;
                }
                View view = pollLast.view;
                int id = view.getId();
                int i2 = i + 1;
                viewArr[i] = view;
                ArrayMap<Node, DependencyGraph> arrayMap = pollLast.dependents;
                int size = arrayMap.size();
                for (int i3 = 0; i3 < size; i3++) {
                    Node keyAt = arrayMap.keyAt(i3);
                    SparseArray<Node> sparseArray = keyAt.dependencies;
                    sparseArray.remove(id);
                    if (sparseArray.size() == 0) {
                        findRoots.add(keyAt);
                    }
                }
                i = i2;
            }
            if (i < viewArr.length) {
                throw new IllegalStateException("Circular dependencies cannot exist in RelativeLayout");
            }
        }

        private ArrayDeque<Node> findRoots(int[] iArr) {
            Node node;
            SparseArray<Node> sparseArray = this.mKeyNodes;
            ArrayList<Node> arrayList = this.mNodes;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                Node node2 = arrayList.get(i);
                node2.dependents.clear();
                node2.dependencies.clear();
            }
            for (int i2 = 0; i2 < size; i2++) {
                Node node3 = arrayList.get(i2);
                int[] iArr2 = ((LayoutParams) node3.view.getLayoutParams()).mRules;
                for (int i3 : iArr) {
                    int i4 = iArr2[i3];
                    if (i4 > 0 && (node = sparseArray.get(i4)) != null && node != node3) {
                        node.dependents.put(node3, this);
                        node3.dependencies.put(i4, node);
                    }
                }
            }
            ArrayDeque<Node> arrayDeque = this.mRoots;
            arrayDeque.clear();
            for (int i5 = 0; i5 < size; i5++) {
                Node node4 = arrayList.get(i5);
                if (node4.dependencies.size() == 0) {
                    arrayDeque.addLast(node4);
                }
            }
            return arrayDeque;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: /home/user/work/dex/classes2.dex */
        public static class Node {
            private static final int POOL_LIMIT = 100;
            private static final Pools.SynchronizedPool<Node> sPool = new Pools.SynchronizedPool<>(100);
            View view;
            final ArrayMap<Node, DependencyGraph> dependents = new ArrayMap<>();
            final SparseArray<Node> dependencies = new SparseArray<>();

            Node() {
            }

            static Node acquire(View view) {
                Node acquire = sPool.acquire();
                if (acquire == null) {
                    acquire = new Node();
                }
                acquire.view = view;
                return acquire;
            }

            void release() {
                this.view = null;
                this.dependents.clear();
                this.dependencies.clear();
                sPool.release(this);
            }
        }
    }
}
