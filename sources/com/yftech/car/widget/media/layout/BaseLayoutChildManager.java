package com.yftech.car.widget.media.layout;

import android.view.MotionEvent;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class BaseLayoutChildManager {
    public static final int MUSIC = 0;
    public static final int PHOTO = 2;
    public static final int VIDEO = 1;

    public abstract boolean dispatchTouchEvent(MotionEvent motionEvent);

    public abstract void initView(ViewGroup viewGroup);

    public abstract void onWindowFocusChanged(boolean z);

    public abstract void unregister();

    public abstract void updateTouchEvent(boolean z);
}
