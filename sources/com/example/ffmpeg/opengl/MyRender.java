package com.example.ffmpeg.opengl;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.view.Surface;
import com.example.ffmpeg.R;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MyRender implements GLSurfaceView.Renderer, SurfaceTexture.OnFrameAvailableListener {
    public static final int RENDER_MEDIACODEC = 2;
    public static final int RENDER_YUV = 1;
    private int afPosition_mediacodec;
    private int afPosition_yuv;
    private int avPosition_mediacodec;
    private int avPosition_yuv;
    private Context context;
    private int height_yuv;
    private OnRenderListener onRenderListener;
    private OnSurfaceCreateListener onSurfaceCreateListener;
    private int program_mediacodec;
    private int program_yuv;
    private int samplerOES_mediacodec;
    private int sampler_u;
    private int sampler_v;
    private int sampler_y;
    private Surface surface;
    private SurfaceTexture surfaceTexture;
    private FloatBuffer textureBuffer;
    private int textureId_mediacodec;
    private int[] textureId_yuv;
    private ByteBuffer u;
    private ByteBuffer v;
    private int width_yuv;
    private ByteBuffer y;
    private final float[] vertexData = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    private final float[] textureData = {0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f};
    private int renderType = 1;
    private FloatBuffer vertexBuffer = ByteBuffer.allocateDirect(this.vertexData.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(this.vertexData);

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnRenderListener {
        void onRender();
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnSurfaceCreateListener {
        void onSurfaceCreate(Surface surface);
    }

    public MyRender(Context context) {
        this.context = context;
        this.vertexBuffer.position(0);
        this.textureBuffer = ByteBuffer.allocateDirect(this.textureData.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(this.textureData);
        this.textureBuffer.position(0);
    }

    public void setRenderType(int i) {
        this.renderType = i;
    }

    public void setOnSurfaceCreateListener(OnSurfaceCreateListener onSurfaceCreateListener) {
        this.onSurfaceCreateListener = onSurfaceCreateListener;
    }

    public void setOnRenderListener(OnRenderListener onRenderListener) {
        this.onRenderListener = onRenderListener;
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        initRenderYUV();
        initRenderMediacodec();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        GLES20.glClear(16384);
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        if (this.renderType == 1) {
            renderYUV();
        } else if (this.renderType == 2) {
            renderMediacodec();
        }
        GLES20.glDrawArrays(5, 0, 4);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        if (this.onRenderListener != null) {
            this.onRenderListener.onRender();
        }
    }

    private void initRenderYUV() {
        this.program_yuv = MyShaderUtil.createProgram(MyShaderUtil.readRawTxt(this.context, R.raw.vertex_shader), MyShaderUtil.readRawTxt(this.context, R.raw.fragment_shader));
        this.avPosition_yuv = GLES20.glGetAttribLocation(this.program_yuv, "av_Position");
        this.afPosition_yuv = GLES20.glGetAttribLocation(this.program_yuv, "af_Position");
        this.sampler_y = GLES20.glGetUniformLocation(this.program_yuv, "sampler_y");
        this.sampler_u = GLES20.glGetUniformLocation(this.program_yuv, "sampler_u");
        this.sampler_v = GLES20.glGetUniformLocation(this.program_yuv, "sampler_v");
        this.textureId_yuv = new int[3];
        GLES20.glGenTextures(3, this.textureId_yuv, 0);
        for (int i = 0; i < 3; i++) {
            GLES20.glBindTexture(3553, this.textureId_yuv[i]);
            GLES20.glTexParameteri(3553, 10242, 10497);
            GLES20.glTexParameteri(3553, 10243, 10497);
            GLES20.glTexParameteri(3553, 10241, 9729);
            GLES20.glTexParameteri(3553, 10240, 9729);
        }
    }

    public void setYUVRenderData(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.width_yuv = i;
        this.height_yuv = i2;
        this.y = ByteBuffer.wrap(bArr);
        this.u = ByteBuffer.wrap(bArr2);
        this.v = ByteBuffer.wrap(bArr3);
    }

    private void renderYUV() {
        if (this.width_yuv <= 0 || this.height_yuv <= 0 || this.y == null || this.u == null || this.v == null) {
            return;
        }
        GLES20.glUseProgram(this.program_yuv);
        GLES20.glEnableVertexAttribArray(this.avPosition_yuv);
        GLES20.glVertexAttribPointer(this.avPosition_yuv, 2, 5126, false, 8, (Buffer) this.vertexBuffer);
        GLES20.glEnableVertexAttribArray(this.afPosition_yuv);
        GLES20.glVertexAttribPointer(this.afPosition_yuv, 2, 5126, false, 8, (Buffer) this.textureBuffer);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(3553, this.textureId_yuv[0]);
        GLES20.glTexImage2D(3553, 0, 6409, this.width_yuv, this.height_yuv, 0, 6409, 5121, this.y);
        GLES20.glActiveTexture(33985);
        GLES20.glBindTexture(3553, this.textureId_yuv[1]);
        GLES20.glTexImage2D(3553, 0, 6409, this.width_yuv / 2, this.height_yuv / 2, 0, 6409, 5121, this.u);
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, this.textureId_yuv[2]);
        GLES20.glTexImage2D(3553, 0, 6409, this.width_yuv / 2, this.height_yuv / 2, 0, 6409, 5121, this.v);
        GLES20.glUniform1i(this.sampler_y, 0);
        GLES20.glUniform1i(this.sampler_u, 1);
        GLES20.glUniform1i(this.sampler_v, 2);
        this.y.clear();
        this.u.clear();
        this.v.clear();
        this.y = null;
        this.u = null;
        this.v = null;
    }

    private void initRenderMediacodec() {
        this.program_mediacodec = MyShaderUtil.createProgram(MyShaderUtil.readRawTxt(this.context, R.raw.vertex_shader), MyShaderUtil.readRawTxt(this.context, R.raw.fragment_mediacodec));
        this.avPosition_mediacodec = GLES20.glGetAttribLocation(this.program_mediacodec, "av_Position");
        this.afPosition_mediacodec = GLES20.glGetAttribLocation(this.program_mediacodec, "af_Position");
        this.samplerOES_mediacodec = GLES20.glGetUniformLocation(this.program_mediacodec, "sTexture");
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        this.textureId_mediacodec = iArr[0];
        GLES20.glTexParameteri(36197, 10242, 10497);
        GLES20.glTexParameteri(36197, 10243, 10497);
        GLES20.glTexParameteri(36197, 10241, 9729);
        GLES20.glTexParameteri(36197, 10240, 9729);
        this.surfaceTexture = new SurfaceTexture(this.textureId_mediacodec);
        this.surface = new Surface(this.surfaceTexture);
        this.surfaceTexture.setOnFrameAvailableListener(this);
        if (this.onSurfaceCreateListener != null) {
            this.onSurfaceCreateListener.onSurfaceCreate(this.surface);
        }
    }

    private void renderMediacodec() {
        this.surfaceTexture.updateTexImage();
        GLES20.glUseProgram(this.program_mediacodec);
        GLES20.glEnableVertexAttribArray(this.avPosition_mediacodec);
        GLES20.glVertexAttribPointer(this.avPosition_mediacodec, 2, 5126, false, 8, (Buffer) this.vertexBuffer);
        GLES20.glEnableVertexAttribArray(this.afPosition_mediacodec);
        GLES20.glVertexAttribPointer(this.afPosition_mediacodec, 2, 5126, false, 8, (Buffer) this.textureBuffer);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, this.textureId_mediacodec);
        GLES20.glUniform1i(this.samplerOES_mediacodec, 0);
    }
}
