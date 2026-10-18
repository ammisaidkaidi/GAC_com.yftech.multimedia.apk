package android.renderscript;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.renderscript.RenderScriptGL;
import android.util.AttributeSet;
import android.view.TextureView;

/* loaded from: /home/user/work/dex/classes2.dex */
public class RSTextureView extends TextureView implements TextureView.SurfaceTextureListener {
    private RenderScriptGL mRS;
    private SurfaceTexture mSurfaceTexture;

    public RSTextureView(Context context) {
        super(context);
        init();
    }

    public RSTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        setSurfaceTextureListener(this);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.mSurfaceTexture = surfaceTexture;
        if (this.mRS != null) {
            this.mRS.setSurfaceTexture(this.mSurfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.mSurfaceTexture = surfaceTexture;
        if (this.mRS != null) {
            this.mRS.setSurfaceTexture(this.mSurfaceTexture, i, i2);
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.mSurfaceTexture = surfaceTexture;
        if (this.mRS == null) {
            return true;
        }
        this.mRS.setSurfaceTexture(null, 0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.mSurfaceTexture = surfaceTexture;
    }

    public void pause() {
        if (this.mRS != null) {
            this.mRS.pause();
        }
    }

    public void resume() {
        if (this.mRS != null) {
            this.mRS.resume();
        }
    }

    public RenderScriptGL createRenderScriptGL(RenderScriptGL.SurfaceConfig surfaceConfig) {
        RenderScriptGL renderScriptGL = new RenderScriptGL(getContext(), surfaceConfig);
        setRenderScriptGL(renderScriptGL);
        if (this.mSurfaceTexture != null) {
            this.mRS.setSurfaceTexture(this.mSurfaceTexture, getWidth(), getHeight());
        }
        return renderScriptGL;
    }

    public void destroyRenderScriptGL() {
        this.mRS.destroy();
        this.mRS = null;
    }

    public void setRenderScriptGL(RenderScriptGL renderScriptGL) {
        this.mRS = renderScriptGL;
        if (this.mSurfaceTexture != null) {
            this.mRS.setSurfaceTexture(this.mSurfaceTexture, getWidth(), getHeight());
        }
    }

    public RenderScriptGL getRenderScriptGL() {
        return this.mRS;
    }
}
