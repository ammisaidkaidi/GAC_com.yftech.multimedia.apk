package com.yftech.car.widget.media.photo.photoview.gestures;

import android.view.MotionEvent;

/* loaded from: /home/user/work/dex/classes3.dex */
public interface GestureDetector {
    boolean isScaling();

    boolean onTouchEvent(MotionEvent motionEvent);

    void setOnGestureListener(OnGestureListener onGestureListener);
}
