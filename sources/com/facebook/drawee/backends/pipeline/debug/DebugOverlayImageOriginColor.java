package com.facebook.drawee.backends.pipeline.debug;

import android.util.SparseIntArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import com.facebook.infer.annotation.Nullsafe;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class DebugOverlayImageOriginColor {
    private static final SparseIntArray IMAGE_ORIGIN_COLOR_MAP = new SparseIntArray(7);

    static {
        IMAGE_ORIGIN_COLOR_MAP.append(1, -7829368);
        IMAGE_ORIGIN_COLOR_MAP.append(2, SupportMenu.CATEGORY_MASK);
        IMAGE_ORIGIN_COLOR_MAP.append(3, InputDeviceCompat.SOURCE_ANY);
        IMAGE_ORIGIN_COLOR_MAP.append(4, InputDeviceCompat.SOURCE_ANY);
        IMAGE_ORIGIN_COLOR_MAP.append(5, -16711936);
        IMAGE_ORIGIN_COLOR_MAP.append(6, -16711936);
        IMAGE_ORIGIN_COLOR_MAP.append(7, -16711936);
    }

    public static int getImageOriginColor(int i) {
        return IMAGE_ORIGIN_COLOR_MAP.get(i, -1);
    }
}
