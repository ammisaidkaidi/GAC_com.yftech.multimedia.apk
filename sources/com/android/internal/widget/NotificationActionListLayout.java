package com.android.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Gravity;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RemoteViews;
import android.widget.TextView;
import androidx.core.view.GravityCompat;
import java.util.ArrayList;
import java.util.Comparator;

@RemoteViews.RemoteView
/* loaded from: /home/user/work/dex/classes3.dex */
public class NotificationActionListLayout extends LinearLayout {
    public static final Comparator<Pair<Integer, TextView>> MEASURE_ORDER_COMPARATOR = new Comparator() { // from class: com.android.internal.widget.-$$Lambda$NotificationActionListLayout$uFZFEmIEBpI3kn6c3tNvvgmMSv8
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int compareTo;
            compareTo = ((Integer) ((Pair) obj).first).compareTo((Integer) ((Pair) obj2).first);
            return compareTo;
        }
    };
    private int mDefaultPaddingBottom;
    private int mDefaultPaddingTop;
    private int mEmphasizedHeight;
    private boolean mEmphasizedMode;
    private final int mGravity;
    private ArrayList<View> mMeasureOrderOther;
    private ArrayList<Pair<Integer, TextView>> mMeasureOrderTextViews;
    private int mRegularHeight;
    private int mTotalWidth;

    public NotificationActionListLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NotificationActionListLayout(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public NotificationActionListLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mTotalWidth = 0;
        this.mMeasureOrderTextViews = new ArrayList<>();
        this.mMeasureOrderOther = new ArrayList<>();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842927}, i, i2);
        this.mGravity = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        View view;
        if (this.mEmphasizedMode) {
            super.onMeasure(i, i2);
            return;
        }
        int childCount = getChildCount();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i3 = 8;
            if (i4 >= childCount) {
                break;
            }
            View childAt = getChildAt(i4);
            if (childAt instanceof TextView) {
                i5++;
            } else {
                i6++;
            }
            if (childAt.getVisibility() != 8) {
                i7++;
            }
            i4++;
        }
        boolean z = (i5 == this.mMeasureOrderTextViews.size() && i6 == this.mMeasureOrderOther.size()) ? false : true;
        if (!z) {
            int size = this.mMeasureOrderTextViews.size();
            boolean z2 = z;
            for (int i8 = 0; i8 < size; i8++) {
                Pair<Integer, TextView> pair = this.mMeasureOrderTextViews.get(i8);
                if (((Integer) pair.first).intValue() != ((TextView) pair.second).getText().length()) {
                    z2 = true;
                }
            }
            z = z2;
        }
        if (z) {
            rebuildMeasureOrder(i5, i6);
        }
        boolean z3 = View.MeasureSpec.getMode(i) != 0;
        int size2 = (View.MeasureSpec.getSize(i) - this.mPaddingLeft) - this.mPaddingRight;
        int size3 = this.mMeasureOrderOther.size();
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        while (i9 < childCount) {
            if (i9 < size3) {
                view = this.mMeasureOrderOther.get(i9);
            } else {
                view = (View) this.mMeasureOrderTextViews.get(i9 - size3).second;
            }
            View view2 = view;
            if (view2.getVisibility() != i3) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                measureChildWithMargins(view2, i, z3 ? size2 - ((size2 - i10) / (i7 - i11)) : i10, i2, 0);
                i10 += view2.getMeasuredWidth() + marginLayoutParams.rightMargin + marginLayoutParams.leftMargin;
                i11++;
            }
            i9++;
            i3 = 8;
        }
        this.mTotalWidth = i10 + this.mPaddingRight + this.mPaddingLeft;
        setMeasuredDimension(resolveSize(getSuggestedMinimumWidth(), i), resolveSize(getSuggestedMinimumHeight(), i2));
    }

    private void rebuildMeasureOrder(int i, int i2) {
        clearMeasureOrder();
        this.mMeasureOrderTextViews.ensureCapacity(i);
        this.mMeasureOrderOther.ensureCapacity(i2);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (textView.getText().length() > 0) {
                    this.mMeasureOrderTextViews.add(Pair.create(Integer.valueOf(textView.getText().length()), textView));
                }
            }
            this.mMeasureOrderOther.add(childAt);
        }
        this.mMeasureOrderTextViews.sort(MEASURE_ORDER_COMPARATOR);
    }

    private void clearMeasureOrder() {
        this.mMeasureOrderOther.clear();
        this.mMeasureOrderTextViews.clear();
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        clearMeasureOrder();
        if (view.getBackground() instanceof RippleDrawable) {
            ((RippleDrawable) view.getBackground()).setForceSoftware(true);
        }
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        clearMeasureOrder();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (this.mEmphasizedMode) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        boolean isLayoutRtl = isLayoutRtl();
        int i7 = this.mPaddingTop;
        int i8 = 1;
        if ((this.mGravity & 1) != 0) {
            i5 = ((this.mPaddingLeft + i) + ((i3 - i) / 2)) - (this.mTotalWidth / 2);
        } else {
            i5 = this.mPaddingLeft;
            if (Gravity.getAbsoluteGravity(GravityCompat.START, getLayoutDirection()) == 5) {
                i5 += (i3 - i) - this.mTotalWidth;
            }
        }
        int i9 = ((i4 - i2) - i7) - this.mPaddingBottom;
        int childCount = getChildCount();
        if (isLayoutRtl) {
            i6 = childCount - 1;
            i8 = -1;
        } else {
            i6 = 0;
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt((i8 * i10) + i6);
            if (childAt.getVisibility() != 8) {
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
                int i11 = ((((i9 - measuredHeight) / 2) + i7) + marginLayoutParams.topMargin) - marginLayoutParams.bottomMargin;
                int i12 = i5 + marginLayoutParams.leftMargin;
                childAt.layout(i12, i11, i12 + measuredWidth, measuredHeight + i11);
                i5 = i12 + measuredWidth + marginLayoutParams.rightMargin;
            }
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mDefaultPaddingBottom = getPaddingBottom();
        this.mDefaultPaddingTop = getPaddingTop();
        updateHeights();
    }

    private void updateHeights() {
        this.mEmphasizedHeight = getResources().getDimensionPixelSize(17105219) + getResources().getDimensionPixelSize(17105217) + getResources().getDimensionPixelSize(17105207);
        this.mRegularHeight = getResources().getDimensionPixelSize(17105208);
    }

    @RemotableViewMethod
    public void setEmphasizedMode(boolean z) {
        int i;
        this.mEmphasizedMode = z;
        if (z) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(17105217);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(17105219);
            i = this.mEmphasizedHeight;
            int dimensionPixelSize3 = getResources().getDimensionPixelSize(17104943);
            setPaddingRelative(getPaddingStart(), dimensionPixelSize - dimensionPixelSize3, getPaddingEnd(), dimensionPixelSize2 - dimensionPixelSize3);
        } else {
            setPaddingRelative(getPaddingStart(), this.mDefaultPaddingTop, getPaddingEnd(), this.mDefaultPaddingBottom);
            i = this.mRegularHeight;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i;
        setLayoutParams(layoutParams);
    }

    public int getExtraMeasureHeight() {
        if (this.mEmphasizedMode) {
            return this.mEmphasizedHeight - this.mRegularHeight;
        }
        return 0;
    }
}
