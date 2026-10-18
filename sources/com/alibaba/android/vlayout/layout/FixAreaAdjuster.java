package com.alibaba.android.vlayout.layout;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FixAreaAdjuster {
    public static final FixAreaAdjuster mDefaultAdjuster = new FixAreaAdjuster(0, 0, 0, 0);
    public final int bottom;
    public final int left;
    public final int right;
    public final int top;

    public FixAreaAdjuster(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.right = i3;
        this.bottom = i4;
    }
}
