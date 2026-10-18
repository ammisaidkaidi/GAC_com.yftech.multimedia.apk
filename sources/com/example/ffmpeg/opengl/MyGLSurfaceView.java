package com.example.ffmpeg.opengl;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import com.example.ffmpeg.opengl.MyRender;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MyGLSurfaceView extends GLSurfaceView {
    private MyRender wlRender;

    public MyGLSurfaceView(Context context) {
        this(context, null);
    }

    public MyGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setEGLContextClientVersion(2);
        this.wlRender = new MyRender(context);
        setRenderer(this.wlRender);
        setRenderMode(0);
        this.wlRender.setOnRenderListener(new MyRender.OnRenderListener() { // from class: com.example.ffmpeg.opengl.MyGLSurfaceView.1
            @Override // com.example.ffmpeg.opengl.MyRender.OnRenderListener
            public void onRender() {
                MyGLSurfaceView.this.requestRender();
            }
        });
    }

    public void setYUVData(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (this.wlRender != null) {
            this.wlRender.setYUVRenderData(i, i2, bArr, bArr2, bArr3);
            requestRender();
        }
    }

    public MyRender getWlRender() {
        return this.wlRender;
    }
}
