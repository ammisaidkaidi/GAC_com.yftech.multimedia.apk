package com.android.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.LinearLayout;
import com.android.internal.R;

/* loaded from: /home/user/work/dex/classes3.dex */
public class WeightedLinearLayout extends LinearLayout {
    private float mMajorWeightMax;
    private float mMajorWeightMin;
    private float mMinorWeightMax;
    private float mMinorWeightMin;

    public WeightedLinearLayout(Context context) {
        super(context);
    }

    public WeightedLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WeightedLinearLayout);
        this.mMajorWeightMin = obtainStyledAttributes.getFloat(1, 0.0f);
        this.mMinorWeightMin = obtainStyledAttributes.getFloat(3, 0.0f);
        this.mMajorWeightMax = obtainStyledAttributes.getFloat(0, 0.0f);
        this.mMinorWeightMax = obtainStyledAttributes.getFloat(2, 0.0f);
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        int i3 = displayMetrics.widthPixels;
        boolean z = true;
        boolean z2 = i3 < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i);
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        float f = z2 ? this.mMinorWeightMin : this.mMajorWeightMin;
        float f2 = z2 ? this.mMinorWeightMax : this.mMajorWeightMax;
        if (mode == Integer.MIN_VALUE) {
            int i4 = (int) (i3 * f);
            if (f > 0.0f && measuredWidth < i4) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            } else if (f2 > 0.0f && measuredWidth > i4) {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            }
            if (z) {
                return;
            }
            super.onMeasure(makeMeasureSpec, i2);
            return;
        }
        z = false;
        if (z) {
        }
    }
}
