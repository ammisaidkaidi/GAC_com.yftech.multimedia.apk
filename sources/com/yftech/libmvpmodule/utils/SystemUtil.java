package com.yftech.libmvpmodule.utils;

import android.app.Activity;
import android.util.Log;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: /home/user/work/dex/classes4.dex */
public class SystemUtil {
    private static final String TAG = "SystemUtil";

    public static void setSysFullScreen(Activity activity, boolean z) {
        if (activity.getWindow() == null) {
            Log.i(TAG, "cur window is null isFullScreen=" + z);
            return;
        }
        int windowVisibility = activity.getWindow().getDecorView().getWindowVisibility();
        activity.getWindow().getDecorView().setSystemUiVisibility(!z ? windowVisibility & (-3) & (-513) & (-5) & (-16385) : windowVisibility | 2 | GL10.GL_NEVER | 256 | GL10.GL_EXP | 4096 | 4 | 16384);
        Log.d(TAG, "setSysFullScreen called isFullScreen=" + z);
    }
}
