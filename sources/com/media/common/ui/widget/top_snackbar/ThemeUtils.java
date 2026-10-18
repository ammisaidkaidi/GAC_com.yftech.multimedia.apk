package com.media.common.ui.widget.top_snackbar;

import android.content.Context;
import android.content.res.TypedArray;

/* loaded from: /home/user/work/dex/classes3.dex */
class ThemeUtils {
    private static final int[] APPCOMPAT_CHECK_ATTRS = new int[0];

    ThemeUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void checkAppCompatTheme(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(APPCOMPAT_CHECK_ATTRS);
        boolean z = !obtainStyledAttributes.hasValue(0);
        if (obtainStyledAttributes != null) {
            obtainStyledAttributes.recycle();
        }
        if (z) {
            throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
        }
    }
}
