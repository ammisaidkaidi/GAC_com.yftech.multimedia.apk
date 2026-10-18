package com.yftech.car.widget.media.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.music.layout.MusicLayoutChildManager;
import com.yftech.car.widget.media.photo.layout.PhotoLayoutChildManager;
import com.yftech.car.widget.media.video.layout.VideoLayoutChildManager;

/* loaded from: /home/user/work/dex/classes2.dex */
public class MediaRelativeLayout extends RelativeLayout {
    private static final String TAG = "MusicRelativeLayout";
    private BaseLayoutChildManager mLayoutChildManager;

    public MediaRelativeLayout(Context context) {
        super(context);
    }

    public MediaRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public MediaRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        switch (context.obtainStyledAttributes(attributeSet, R.styleable.media_layout).getInt(R.styleable.media_layout_layout_media_type, 0)) {
            case 0:
                this.mLayoutChildManager = new MusicLayoutChildManager();
                return;
            case 1:
                this.mLayoutChildManager = new VideoLayoutChildManager();
                return;
            default:
                this.mLayoutChildManager = new PhotoLayoutChildManager();
                return;
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (this.mLayoutChildManager != null) {
            this.mLayoutChildManager.onWindowFocusChanged(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.mLayoutChildManager.dispatchTouchEvent(motionEvent)) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d(TAG, "onAttachedToWindow: ");
        this.mLayoutChildManager.initView(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Loger.d(TAG, "onDetachedFromWindow: ");
        if (this.mLayoutChildManager != null) {
            this.mLayoutChildManager.unregister();
        }
    }

    public void release() {
        Loger.d(TAG, "release: ");
        if (this.mLayoutChildManager != null) {
            this.mLayoutChildManager.unregister();
        }
    }
}
