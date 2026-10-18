package com.android.internal.widget;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes3.dex */
public class BackgroundFallback {
    private Drawable mBackgroundFallback;

    public void setDrawable(Drawable drawable) {
        this.mBackgroundFallback = drawable;
    }

    public boolean hasFallback() {
        return this.mBackgroundFallback != null;
    }

    public void draw(ViewGroup viewGroup, ViewGroup viewGroup2, Canvas canvas, View view, View view2, View view3) {
        int i;
        if (hasFallback()) {
            int width = viewGroup.getWidth();
            int height = viewGroup.getHeight();
            int left = viewGroup2.getLeft();
            int top = viewGroup2.getTop();
            int childCount = viewGroup2.getChildCount();
            int i2 = width;
            int i3 = height;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (i4 < childCount) {
                View childAt = viewGroup2.getChildAt(i4);
                int i7 = childCount;
                Drawable background = childAt.getBackground();
                if (childAt == view) {
                    if (background == null && (childAt instanceof ViewGroup) && ((ViewGroup) childAt).getChildCount() == 0) {
                    }
                    int min = Math.min(i2, childAt.getLeft() + left);
                    int min2 = Math.min(i3, childAt.getTop() + top);
                    i5 = Math.max(i5, childAt.getRight() + left);
                    i6 = Math.max(i6, childAt.getBottom() + top);
                    i3 = min2;
                    i2 = min;
                } else if (childAt.getVisibility() == 0) {
                    if (!isOpaque(background)) {
                    }
                    int min3 = Math.min(i2, childAt.getLeft() + left);
                    int min22 = Math.min(i3, childAt.getTop() + top);
                    i5 = Math.max(i5, childAt.getRight() + left);
                    i6 = Math.max(i6, childAt.getBottom() + top);
                    i3 = min22;
                    i2 = min3;
                }
                i4++;
                childCount = i7;
            }
            boolean z = true;
            int i8 = 0;
            while (i8 < 2) {
                View view4 = i8 == 0 ? view2 : view3;
                if (view4 != null && view4.getVisibility() == 0 && view4.getAlpha() == 1.0f && isOpaque(view4.getBackground())) {
                    if (view4.getTop() <= 0 && view4.getBottom() >= height && view4.getLeft() <= 0 && view4.getRight() >= i2) {
                        i2 = 0;
                    }
                    if (view4.getTop() <= 0 && view4.getBottom() >= height && view4.getLeft() <= i5 && view4.getRight() >= width) {
                        i5 = width;
                    }
                    if (view4.getTop() <= 0 && view4.getBottom() >= i3 && view4.getLeft() <= 0 && view4.getRight() >= width) {
                        i3 = 0;
                    }
                    if (view4.getTop() <= i6 && view4.getBottom() >= height && view4.getLeft() <= 0 && view4.getRight() >= width) {
                        i6 = height;
                    }
                    z &= view4.getTop() <= 0 && view4.getBottom() >= i3;
                } else {
                    z = false;
                }
                i8++;
            }
            if (z && (viewsCoverEntireWidth(view2, view3, width) || viewsCoverEntireWidth(view3, view2, width))) {
                i3 = 0;
            }
            if (i2 >= i5 || i3 >= i6) {
                return;
            }
            if (i3 > 0) {
                i = 0;
                this.mBackgroundFallback.setBounds(0, 0, width, i3);
                this.mBackgroundFallback.draw(canvas);
            } else {
                i = 0;
            }
            if (i2 > 0) {
                this.mBackgroundFallback.setBounds(i, i3, i2, height);
                this.mBackgroundFallback.draw(canvas);
            }
            if (i5 < width) {
                this.mBackgroundFallback.setBounds(i5, i3, width, height);
                this.mBackgroundFallback.draw(canvas);
            }
            if (i6 < height) {
                this.mBackgroundFallback.setBounds(i2, i6, i5, height);
                this.mBackgroundFallback.draw(canvas);
            }
        }
    }

    private boolean isOpaque(Drawable drawable) {
        return drawable != null && drawable.getOpacity() == -1;
    }

    private boolean viewsCoverEntireWidth(View view, View view2, int i) {
        return view.getLeft() <= 0 && view.getRight() >= view2.getLeft() && view2.getRight() >= i;
    }
}
