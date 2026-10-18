package com.yftech.car.widget.media.photo.layout;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.yftech.car.utils.Loger;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PhotoConstraintLayout extends ConstraintLayout {
    private static final String TAG = "VideoFrameLayout";
    private PhotoLayoutChildManager mLayoutChildManager;

    public PhotoConstraintLayout(@NonNull Context context) {
        super(context);
    }

    public PhotoConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PhotoConstraintLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.mLayoutChildManager != null) {
            this.mLayoutChildManager.onWindowFocusChanged(z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Loger.d(TAG, " onAttachedToWindow: ");
        if (this.mLayoutChildManager == null) {
            this.mLayoutChildManager = new PhotoLayoutChildManager();
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
