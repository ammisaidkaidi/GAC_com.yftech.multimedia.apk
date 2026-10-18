package com.yftech.car.widget.media.radio.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yftech.car.utils.Loger;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioFrameLayout extends FrameLayout {
    private static final String TAG = "RadioFrameLayout";
    private LayoutChildManager mLayoutChildManager;

    public RadioFrameLayout(@NonNull Context context) {
        super(context);
    }

    public RadioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RadioFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.mLayoutChildManager != null) {
            this.mLayoutChildManager.onWindowFocusChanged(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mLayoutChildManager == null) {
            this.mLayoutChildManager = new LayoutChildManager();
        }
        this.mLayoutChildManager.initView(this);
        Loger.d(TAG, " onAttachedToWindow: ");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mLayoutChildManager != null) {
            this.mLayoutChildManager.unregister();
        }
    }
}
