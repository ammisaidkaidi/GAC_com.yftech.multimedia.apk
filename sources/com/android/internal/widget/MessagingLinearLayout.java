package com.android.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.RemotableViewMethod;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RemoteViews;
import com.android.internal.R;
import com.facebook.imagepipeline.common.BytesRange;

@RemoteViews.RemoteView
/* loaded from: /home/user/work/dex/classes3.dex */
public class MessagingLinearLayout extends ViewGroup {
    private int mMaxDisplayedLines;
    private MessagingLayout mMessagingLayout;
    private int mSpacing;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface MessagingChild {
        public static final int MEASURED_NORMAL = 0;
        public static final int MEASURED_SHORTENED = 1;
        public static final int MEASURED_TOO_SMALL = 2;

        int getConsumedLines();

        default int getExtraSpacing() {
            return 0;
        }

        int getMeasuredType();

        void hideAnimated();

        boolean isHidingAnimated();

        void setMaxDisplayedLines(int i);
    }

    public MessagingLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMaxDisplayedLines = BytesRange.TO_END_OF_CONTENT;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MessagingLinearLayout, 0, 0);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            if (obtainStyledAttributes.getIndex(i) == 0) {
                this.mSpacing = obtainStyledAttributes.getDimensionPixelSize(i, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = View.MeasureSpec.getSize(i2);
        if (View.MeasureSpec.getMode(i2) == 0) {
            size = BytesRange.TO_END_OF_CONTENT;
        }
        int i5 = size;
        int i6 = this.mPaddingLeft + this.mPaddingRight;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            ((LayoutParams) getChildAt(i7).getLayoutParams()).hide = true;
        }
        int i8 = i6;
        int i9 = this.mPaddingTop + this.mPaddingBottom;
        int i10 = this.mMaxDisplayedLines;
        boolean z = true;
        for (int i11 = childCount - 1; i11 >= 0 && i9 < i5; i11--) {
            if (getChildAt(i11).getVisibility() != 8) {
                View childAt = getChildAt(i11);
                LayoutParams layoutParams = (LayoutParams) getChildAt(i11).getLayoutParams();
                MessagingChild messagingChild = null;
                int i12 = this.mSpacing;
                if (childAt instanceof MessagingChild) {
                    messagingChild = (MessagingChild) childAt;
                    messagingChild.setMaxDisplayedLines(i10);
                    i12 += messagingChild.getExtraSpacing();
                }
                MessagingChild messagingChild2 = messagingChild;
                int i13 = z ? 0 : i12;
                measureChildWithMargins(childAt, i, 0, i2, ((i9 - this.mPaddingTop) - this.mPaddingBottom) + i13);
                i3 = Math.max(i9, childAt.getMeasuredHeight() + i9 + layoutParams.topMargin + layoutParams.bottomMargin + i13);
                if (messagingChild2 != null) {
                    i4 = messagingChild2.getMeasuredType();
                    i10 -= messagingChild2.getConsumedLines();
                } else {
                    i4 = 0;
                }
                boolean z2 = i4 == 1;
                boolean z3 = i4 == 2;
                if (i3 > i5 || z3) {
                    break;
                }
                i8 = Math.max(i8, childAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin + this.mPaddingLeft + this.mPaddingRight);
                layoutParams.hide = false;
                if (z2 || i10 <= 0) {
                    break;
                }
                i9 = i3;
                z = false;
            }
        }
        i3 = i9;
        setMeasuredDimension(resolveSize(Math.max(getSuggestedMinimumWidth(), i8), i), Math.max(getSuggestedMinimumHeight(), i3));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = this.mPaddingLeft;
        int i8 = (i3 - i) - this.mPaddingRight;
        int layoutDirection = getLayoutDirection();
        int childCount = getChildCount();
        int i9 = this.mPaddingTop;
        boolean isShown = isShown();
        int i10 = 1;
        int i11 = i9;
        boolean z2 = true;
        int i12 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                MessagingChild messagingChild = (MessagingChild) childAt;
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (layoutDirection == i10) {
                    i5 = (i8 - measuredWidth) - layoutParams.rightMargin;
                } else {
                    i5 = i7 + layoutParams.leftMargin;
                }
                int i13 = i5;
                if (layoutParams.hide) {
                    if (isShown && layoutParams.visibleBefore) {
                        childAt.layout(i13, i11, measuredWidth + i13, layoutParams.lastVisibleHeight + i11);
                        messagingChild.hideAnimated();
                    }
                    layoutParams.visibleBefore = false;
                } else {
                    i6 = 1;
                    layoutParams.visibleBefore = true;
                    layoutParams.lastVisibleHeight = measuredHeight;
                    if (!z2) {
                        i11 += this.mSpacing;
                    }
                    int i14 = i11 + layoutParams.topMargin;
                    childAt.layout(i13, i14, measuredWidth + i13, i14 + measuredHeight);
                    i11 = i14 + measuredHeight + layoutParams.bottomMargin;
                    z2 = false;
                    i12++;
                    i10 = i6;
                }
            }
            i6 = 1;
            i12++;
            i10 = i6;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (!((LayoutParams) view.getLayoutParams()).hide || ((MessagingChild) view).isHidingAnimated()) {
            return super.drawChild(canvas, view, j);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(this.mContext, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutParams layoutParams2 = new LayoutParams(layoutParams.width, layoutParams.height);
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            layoutParams2.copyMarginsFrom((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return layoutParams2;
    }

    public static boolean isGone(View view) {
        if (view.getVisibility() == 8) {
            return true;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        return (layoutParams instanceof LayoutParams) && ((LayoutParams) layoutParams).hide;
    }

    @RemotableViewMethod
    public void setMaxDisplayedLines(int i) {
        this.mMaxDisplayedLines = i;
    }

    public void setMessagingLayout(MessagingLayout messagingLayout) {
        this.mMessagingLayout = messagingLayout;
    }

    public MessagingLayout getMessagingLayout() {
        return this.mMessagingLayout;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public boolean hide;
        public int lastVisibleHeight;
        public boolean visibleBefore;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.hide = false;
            this.visibleBefore = false;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.hide = false;
            this.visibleBefore = false;
        }
    }
}
