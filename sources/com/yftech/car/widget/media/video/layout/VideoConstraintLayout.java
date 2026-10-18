package com.yftech.car.widget.media.video.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yftech.car.utils.Loger;

/* loaded from: /home/user/work/dex/classes3.dex */
public class VideoConstraintLayout extends ConstraintLayout {
    private static final String TAG = "VideoFrameLayout";
    private VideoLayoutChildManager mLayoutChildManager;

    public VideoConstraintLayout(@NonNull Context context) {
        super(context);
    }

    public VideoConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VideoConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.mLayoutChildManager != null) {
            this.mLayoutChildManager.onWindowFocusChanged(z);
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.mLayoutChildManager.dispatchTouchEvent(motionEvent)) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Loger.d(TAG, " onAttachedToWindow: ");
        if (this.mLayoutChildManager == null) {
            this.mLayoutChildManager = new VideoLayoutChildManager();
        }
        this.mLayoutChildManager.initView(this);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Loger.d(TAG, " onDetachedFromWindow: ");
        if (this.mLayoutChildManager != null) {
            this.mLayoutChildManager.unregister();
        }
    }
}
