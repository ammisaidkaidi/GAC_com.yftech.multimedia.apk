package com.android.internal.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* loaded from: /home/user/work/dex/classes3.dex */
public class UserIcons {
    private static final int[] USER_ICON_COLORS = {17170881, 17170882, 17170883, 17170884, 17170885, 17170886, 17170887, 17170888};

    public static Bitmap convertToBitmap(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(canvas);
        return createBitmap;
    }

    public static Drawable getDefaultUserIcon(Resources resources, int i, boolean z) {
        int i2 = z ? 17170890 : 17170889;
        if (i != -10000) {
            i2 = USER_ICON_COLORS[i % USER_ICON_COLORS.length];
        }
        Drawable mutate = resources.getDrawable(17302262, null).mutate();
        mutate.setColorFilter(resources.getColor(i2, null), PorterDuff.Mode.SRC_IN);
        mutate.setBounds(0, 0, mutate.getIntrinsicWidth(), mutate.getIntrinsicHeight());
        return mutate;
    }
}
