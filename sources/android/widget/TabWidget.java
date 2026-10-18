package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;

/* loaded from: /home/user/work/dex/classes2.dex */
public class TabWidget extends LinearLayout implements View.OnFocusChangeListener {
    private final Rect mBounds;
    private boolean mDrawBottomStrips;
    private int[] mImposedTabWidths;
    private int mImposedTabsHeight;
    private Drawable mLeftStrip;
    private Drawable mRightStrip;
    private int mSelectedTab;
    private OnTabSelectionChanged mSelectionChangedListener;
    private boolean mStripMoved;

    /* loaded from: /home/user/work/dex/classes2.dex */
    interface OnTabSelectionChanged {
        void onTabSelectionChanged(int i, boolean z);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
    }

    public TabWidget(Context context) {
        this(context, null);
    }

    public TabWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabWidgetStyle);
    }

    public TabWidget(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public TabWidget(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mBounds = new Rect();
        this.mSelectedTab = -1;
        this.mDrawBottomStrips = true;
        this.mImposedTabsHeight = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.TabWidget, i, i2);
        this.mDrawBottomStrips = obtainStyledAttributes.getBoolean(3, this.mDrawBottomStrips);
        boolean z = context.getApplicationInfo().targetSdkVersion <= 4;
        if (obtainStyledAttributes.hasValueOrEmpty(1)) {
            this.mLeftStrip = obtainStyledAttributes.getDrawable(1);
        } else if (z) {
            this.mLeftStrip = context.getDrawable(R.drawable.stat_sys_ra_signal_2_cdma);
        } else {
            this.mLeftStrip = context.getDrawable(R.drawable.stat_sys_ra_signal_1_cdma);
        }
        if (obtainStyledAttributes.hasValueOrEmpty(2)) {
            this.mRightStrip = obtainStyledAttributes.getDrawable(2);
        } else if (z) {
            this.mRightStrip = context.getDrawable(R.drawable.stat_sys_ra_signal_4_cdma);
        } else {
            this.mRightStrip = context.getDrawable(R.drawable.stat_sys_ra_signal_3_cdma);
        }
        obtainStyledAttributes.recycle();
        setChildrenDrawingOrderEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        this.mStripMoved = true;
        super.onSizeChanged(i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        if (this.mSelectedTab == -1) {
            return i2;
        }
        if (i2 == i - 1) {
            return this.mSelectedTab;
        }
        return i2 >= this.mSelectedTab ? i2 + 1 : i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.widget.LinearLayout
    public void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        if (!isMeasureWithLargestChildEnabled() && this.mImposedTabsHeight >= 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.mImposedTabWidths[i] + i3, 1073741824);
            i4 = View.MeasureSpec.makeMeasureSpec(this.mImposedTabsHeight, 1073741824);
        }
        super.measureChildBeforeLayout(view, i, i2, i3, i4, i5);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.widget.LinearLayout
    public void measureHorizontal(int i, int i2) {
        if (View.MeasureSpec.getMode(i) == 0) {
            super.measureHorizontal(i, i2);
            return;
        }
        int size = View.MeasureSpec.getSize(i);
        int makeSafeMeasureSpec = View.MeasureSpec.makeSafeMeasureSpec(size, 0);
        this.mImposedTabsHeight = -1;
        super.measureHorizontal(makeSafeMeasureSpec, i2);
        int measuredWidth = getMeasuredWidth() - size;
        if (measuredWidth > 0) {
            int childCount = getChildCount();
            int i3 = 0;
            for (int i4 = 0; i4 < childCount; i4++) {
                if (getChildAt(i4).getVisibility() != 8) {
                    i3++;
                }
            }
            if (i3 > 0) {
                if (this.mImposedTabWidths == null || this.mImposedTabWidths.length != childCount) {
                    this.mImposedTabWidths = new int[childCount];
                }
                int i5 = measuredWidth;
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = getChildAt(i6);
                    if (childAt.getVisibility() != 8) {
                        int measuredWidth2 = childAt.getMeasuredWidth();
                        int max = Math.max(0, measuredWidth2 - (i5 / i3));
                        this.mImposedTabWidths[i6] = max;
                        i5 -= measuredWidth2 - max;
                        i3--;
                        this.mImposedTabsHeight = Math.max(this.mImposedTabsHeight, childAt.getMeasuredHeight());
                    }
                }
            }
        }
        super.measureHorizontal(i, i2);
    }

    public View getChildTabViewAt(int i) {
        return getChildAt(i);
    }

    public int getTabCount() {
        return getChildCount();
    }

    @Override // android.widget.LinearLayout
    public void setDividerDrawable(Drawable drawable) {
        super.setDividerDrawable(drawable);
    }

    public void setDividerDrawable(int i) {
        setDividerDrawable(this.mContext.getDrawable(i));
    }

    public void setLeftStripDrawable(Drawable drawable) {
        this.mLeftStrip = drawable;
        requestLayout();
        invalidate();
    }

    public void setLeftStripDrawable(int i) {
        setLeftStripDrawable(this.mContext.getDrawable(i));
    }

    public Drawable getLeftStripDrawable() {
        return this.mLeftStrip;
    }

    public void setRightStripDrawable(Drawable drawable) {
        this.mRightStrip = drawable;
        requestLayout();
        invalidate();
    }

    public void setRightStripDrawable(int i) {
        setRightStripDrawable(this.mContext.getDrawable(i));
    }

    public Drawable getRightStripDrawable() {
        return this.mRightStrip;
    }

    public void setStripEnabled(boolean z) {
        this.mDrawBottomStrips = z;
        invalidate();
    }

    public boolean isStripEnabled() {
        return this.mDrawBottomStrips;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void childDrawableStateChanged(View view) {
        if (getTabCount() > 0 && view == getChildTabViewAt(this.mSelectedTab)) {
            invalidate();
        }
        super.childDrawableStateChanged(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (getTabCount() != 0 && this.mDrawBottomStrips) {
            View childTabViewAt = getChildTabViewAt(this.mSelectedTab);
            Drawable drawable = this.mLeftStrip;
            Drawable drawable2 = this.mRightStrip;
            if (drawable != null) {
                drawable.setState(childTabViewAt.getDrawableState());
            }
            if (drawable2 != null) {
                drawable2.setState(childTabViewAt.getDrawableState());
            }
            if (this.mStripMoved) {
                Rect rect = this.mBounds;
                rect.left = childTabViewAt.getLeft();
                rect.right = childTabViewAt.getRight();
                int height = getHeight();
                if (drawable != null) {
                    drawable.setBounds(Math.min(0, rect.left - drawable.getIntrinsicWidth()), height - drawable.getIntrinsicHeight(), rect.left, height);
                }
                if (drawable2 != null) {
                    drawable2.setBounds(rect.right, height - drawable2.getIntrinsicHeight(), Math.max(getWidth(), rect.right + drawable2.getIntrinsicWidth()), height);
                }
                this.mStripMoved = false;
            }
            if (drawable != null) {
                drawable.draw(canvas);
            }
            if (drawable2 != null) {
                drawable2.draw(canvas);
            }
        }
    }

    public void setCurrentTab(int i) {
        if (i < 0 || i >= getTabCount() || i == this.mSelectedTab) {
            return;
        }
        if (this.mSelectedTab != -1) {
            getChildTabViewAt(this.mSelectedTab).setSelected(false);
        }
        this.mSelectedTab = i;
        getChildTabViewAt(this.mSelectedTab).setSelected(true);
        this.mStripMoved = true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return TabWidget.class.getName();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEventInternal(accessibilityEvent);
        accessibilityEvent.setItemCount(getTabCount());
        accessibilityEvent.setCurrentItemIndex(this.mSelectedTab);
    }

    public void focusCurrentTab(int i) {
        int i2 = this.mSelectedTab;
        setCurrentTab(i);
        if (i2 != i) {
            getChildTabViewAt(i).requestFocus();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        int tabCount = getTabCount();
        for (int i = 0; i < tabCount; i++) {
            getChildTabViewAt(i).setEnabled(z);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (view.getLayoutParams() == null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1, 1.0f);
            layoutParams.setMargins(0, 0, 0, 0);
            view.setLayoutParams(layoutParams);
        }
        view.setFocusable(true);
        view.setClickable(true);
        if (view.getPointerIcon() == null) {
            view.setPointerIcon(PointerIcon.getSystemIcon(getContext(), 1002));
        }
        super.addView(view);
        view.setOnClickListener(new TabClickListener(getTabCount() - 1));
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        this.mSelectedTab = -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (isEnabled()) {
            return super.onResolvePointerIcon(motionEvent, i);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTabSelectionListener(OnTabSelectionChanged onTabSelectionChanged) {
        this.mSelectionChangedListener = onTabSelectionChanged;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private class TabClickListener implements View.OnClickListener {
        private final int mTabIndex;

        private TabClickListener(int i) {
            this.mTabIndex = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            TabWidget.this.mSelectionChangedListener.onTabSelectionChanged(this.mTabIndex, true);
        }
    }
}
