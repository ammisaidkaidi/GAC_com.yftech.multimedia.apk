package com.yftech.car.widget.media.photo.photoview.scrollerproxy;

import android.content.Context;
import android.os.Build;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class ScrollerProxy {
    public abstract boolean computeScrollOffset();

    public abstract void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10);

    public abstract void forceFinished(boolean z);

    public abstract int getCurrX();

    public abstract int getCurrY();

    public abstract boolean isFinished();

    public static ScrollerProxy getScroller(Context context) {
        if (Build.VERSION.SDK_INT < 9) {
            return new PreGingerScroller(context);
        }
        if (Build.VERSION.SDK_INT < 14) {
            return new GingerScroller(context);
        }
        return new IcsScroller(context);
    }
}
