package com.facebook.drawee.interfaces;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
/* loaded from: /home/user/work/dex/classes3.dex */
public interface DraweeHierarchy {
    Rect getBounds();

    Drawable getTopLevelDrawable();
}
