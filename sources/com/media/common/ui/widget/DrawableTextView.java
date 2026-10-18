package com.media.common.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.Nullable;

/* loaded from: /home/user/work/dex/classes3.dex */
public class DrawableTextView extends TextView {
    private final int LEFT;
    private final int RIGHT;
    private Drawable drawableBottom;
    private int drawableHeight;
    private Drawable drawableLeft;
    private Drawable drawableRight;
    private Drawable drawableTop;
    private int drawableWidth;
    private OnDrawableLeftListener leftListener;
    private OnDrawableRightListener rightListener;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnDrawableLeftListener {
        void onLeftClick(View view);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnDrawableRightListener {
        void onRightClick(View view);
    }

    public DrawableTextView(Context context) {
        this(context, null);
    }

    public DrawableTextView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawableTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.drawableLeft = null;
        this.drawableTop = null;
        this.drawableRight = null;
        this.drawableBottom = null;
        this.LEFT = 0;
        this.RIGHT = 2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DrawableTextView);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = obtainStyledAttributes.getIndex(i2);
            if (index == R.styleable.DrawableTextView_drawableRight) {
                this.drawableRight = obtainStyledAttributes.getDrawable(index);
            } else if (index == R.styleable.DrawableTextView_drawableLeft) {
                this.drawableLeft = obtainStyledAttributes.getDrawable(index);
            } else if (index == R.styleable.DrawableTextView_drawableTop) {
                this.drawableTop = obtainStyledAttributes.getDrawable(index);
            } else if (index == R.styleable.DrawableTextView_drawableBottom) {
                this.drawableBottom = obtainStyledAttributes.getDrawable(index);
            } else if (index == R.styleable.DrawableTextView_drawableWidth) {
                this.drawableWidth = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            } else if (index == R.styleable.DrawableTextView_drawableHeight) {
                this.drawableHeight = obtainStyledAttributes.getDimensionPixelSize(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
        if (this.drawableLeft != null) {
            this.drawableLeft.setBounds(0, 0, this.drawableWidth, this.drawableHeight);
        }
        if (this.drawableRight != null) {
            this.drawableRight.setBounds(0, 0, this.drawableWidth, this.drawableHeight);
        }
        if (this.drawableTop != null) {
            this.drawableTop.setBounds(0, 0, this.drawableWidth, this.drawableHeight);
        }
        if (this.drawableBottom != null) {
            this.drawableBottom.setBounds(0, 0, this.drawableWidth, this.drawableHeight);
        }
        setCompoundDrawables(this.drawableLeft, this.drawableTop, this.drawableRight, this.drawableBottom);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (getCompoundDrawables()[0] != null && motionEvent.getRawX() <= getLeft() + r0.getBounds().width() && this.leftListener != null) {
                this.leftListener.onLeftClick(this);
            }
            if (getCompoundDrawables()[2] != null && motionEvent.getRawX() >= getRight() - r0.getBounds().width() && this.leftListener != null) {
                this.rightListener.onRightClick(this);
            } else {
                performClick();
            }
        }
        return true;
    }

    public void setOnDrawableLeftListener(OnDrawableLeftListener onDrawableLeftListener) {
        this.leftListener = onDrawableLeftListener;
    }

    public void setOnDrawableRightListener(OnDrawableRightListener onDrawableRightListener) {
        this.rightListener = onDrawableRightListener;
    }
}
