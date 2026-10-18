package com.yftech.car.widget.media.radio.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* loaded from: /home/user/work/dex/classes3.dex */
public class RadioRelativeLayout extends RelativeLayout {
    private LayoutChildManager mLayoutChildManager;

    public RadioRelativeLayout(Context context) {
        super(context);
    }

    public RadioRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RadioRelativeLayout(Context context, AttributeSet attributeSet, int i) {
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
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mLayoutChildManager != null) {
            this.mLayoutChildManager.unregister();
        }
    }
}
