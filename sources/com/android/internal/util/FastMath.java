package com.android.internal.util;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FastMath {
    public static int round(float f) {
        return (int) (((f * 1.6777216E7f) + 8388608) >> 24);
    }
}
