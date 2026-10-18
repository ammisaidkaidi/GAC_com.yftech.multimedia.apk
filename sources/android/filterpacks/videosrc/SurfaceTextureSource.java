package android.filterpacks.videosrc;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.Frame;
import android.filterfw.core.GLFrame;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.GenerateFinalPort;
import android.filterfw.core.MutableFrameFormat;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;
import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.opengl.Matrix;
import android.os.ConditionVariable;
import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class SurfaceTextureSource extends Filter {

    @GenerateFieldPort(hasDefault = true, name = "closeOnTimeout")
    private boolean mCloseOnTimeout;
    private boolean mFirstFrame;
    private ShaderProgram mFrameExtractor;
    private float[] mFrameTransform;

    @GenerateFieldPort(name = MediaFormat.KEY_HEIGHT)
    private int mHeight;
    private float[] mMappedCoords;
    private GLFrame mMediaFrame;
    private ConditionVariable mNewFrameAvailable;
    private MutableFrameFormat mOutputFormat;
    private final String mRenderShader;

    @GenerateFinalPort(name = "sourceListener")
    private SurfaceTextureSourceListener mSourceListener;
    private SurfaceTexture mSurfaceTexture;

    @GenerateFieldPort(hasDefault = true, name = "waitForNewFrame")
    private boolean mWaitForNewFrame;

    @GenerateFieldPort(hasDefault = true, name = "waitTimeout")
    private int mWaitTimeout;

    @GenerateFieldPort(name = MediaFormat.KEY_WIDTH)
    private int mWidth;
    private SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener;
    private static final float[] mSourceCoords = {0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f};
    private static final String TAG = "SurfaceTextureSource";
    private static final boolean mLogVerbose = Log.isLoggable(TAG, 2);

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface SurfaceTextureSourceListener {
        void onSurfaceTextureSourceReady(SurfaceTexture surfaceTexture);
    }

    public SurfaceTextureSource(String str) {
        super(str);
        this.mWaitForNewFrame = true;
        this.mWaitTimeout = 1000;
        this.mCloseOnTimeout = false;
        this.mRenderShader = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n";
        this.onFrameAvailableListener = new SurfaceTexture.OnFrameAvailableListener() { // from class: android.filterpacks.videosrc.SurfaceTextureSource.1
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                if (SurfaceTextureSource.mLogVerbose) {
                    Log.v(SurfaceTextureSource.TAG, "New frame from SurfaceTexture");
                }
                SurfaceTextureSource.this.mNewFrameAvailable.open();
            }
        };
        this.mNewFrameAvailable = new ConditionVariable();
        this.mFrameTransform = new float[16];
        this.mMappedCoords = new float[16];
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        addOutputPort(MediaCodec.MetricsConstants.MODE_VIDEO, ImageFormat.create(3, 3));
    }

    private void createFormats() {
        this.mOutputFormat = ImageFormat.create(this.mWidth, this.mHeight, 3, 3);
    }

    @Override // android.filterfw.core.Filter
    protected void prepare(FilterContext filterContext) {
        if (mLogVerbose) {
            Log.v(TAG, "Preparing SurfaceTextureSource");
        }
        createFormats();
        this.mMediaFrame = (GLFrame) filterContext.getFrameManager().newBoundFrame(this.mOutputFormat, 104, 0L);
        this.mFrameExtractor = new ShaderProgram(filterContext, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n");
    }

    @Override // android.filterfw.core.Filter
    public void open(FilterContext filterContext) {
        if (mLogVerbose) {
            Log.v(TAG, "Opening SurfaceTextureSource");
        }
        this.mSurfaceTexture = new SurfaceTexture(this.mMediaFrame.getTextureId());
        this.mSurfaceTexture.setOnFrameAvailableListener(this.onFrameAvailableListener);
        this.mSourceListener.onSurfaceTextureSourceReady(this.mSurfaceTexture);
        this.mFirstFrame = true;
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        if (mLogVerbose) {
            Log.v(TAG, "Processing new frame");
        }
        if (this.mWaitForNewFrame || this.mFirstFrame) {
            if (this.mWaitTimeout != 0) {
                if (!this.mNewFrameAvailable.block(this.mWaitTimeout)) {
                    if (!this.mCloseOnTimeout) {
                        throw new RuntimeException("Timeout waiting for new frame");
                    }
                    if (mLogVerbose) {
                        Log.v(TAG, "Timeout waiting for a new frame. Closing.");
                    }
                    closeOutputPort(MediaCodec.MetricsConstants.MODE_VIDEO);
                    return;
                }
            } else {
                this.mNewFrameAvailable.block();
            }
            this.mNewFrameAvailable.close();
            this.mFirstFrame = false;
        }
        this.mSurfaceTexture.updateTexImage();
        this.mSurfaceTexture.getTransformMatrix(this.mFrameTransform);
        Matrix.multiplyMM(this.mMappedCoords, 0, this.mFrameTransform, 0, mSourceCoords, 0);
        this.mFrameExtractor.setSourceRegion(this.mMappedCoords[0], this.mMappedCoords[1], this.mMappedCoords[4], this.mMappedCoords[5], this.mMappedCoords[8], this.mMappedCoords[9], this.mMappedCoords[12], this.mMappedCoords[13]);
        Frame newFrame = filterContext.getFrameManager().newFrame(this.mOutputFormat);
        this.mFrameExtractor.process(this.mMediaFrame, newFrame);
        newFrame.setTimestamp(this.mSurfaceTexture.getTimestamp());
        pushOutput(MediaCodec.MetricsConstants.MODE_VIDEO, newFrame);
        newFrame.release();
    }

    @Override // android.filterfw.core.Filter
    public void close(FilterContext filterContext) {
        if (mLogVerbose) {
            Log.v(TAG, "SurfaceTextureSource closed");
        }
        this.mSourceListener.onSurfaceTextureSourceReady(null);
        this.mSurfaceTexture.release();
        this.mSurfaceTexture = null;
    }

    @Override // android.filterfw.core.Filter
    public void tearDown(FilterContext filterContext) {
        if (this.mMediaFrame != null) {
            this.mMediaFrame.release();
        }
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        if (str.equals(MediaFormat.KEY_WIDTH) || str.equals(MediaFormat.KEY_HEIGHT)) {
            this.mOutputFormat.setDimensions(this.mWidth, this.mHeight);
        }
    }
}
