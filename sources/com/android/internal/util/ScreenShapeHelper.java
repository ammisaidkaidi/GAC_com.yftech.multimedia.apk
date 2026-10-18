package com.android.internal.util;

import android.content.res.Resources;
import android.os.Build;
import android.os.SystemProperties;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ScreenShapeHelper {
    public static int getWindowOutsetBottomPx(Resources resources) {
        if (Build.IS_EMULATOR) {
            return SystemProperties.getInt("ro.emu.win_outset_bottom_px", 0);
        }
        return resources.getInteger(17694930);
    }
}
