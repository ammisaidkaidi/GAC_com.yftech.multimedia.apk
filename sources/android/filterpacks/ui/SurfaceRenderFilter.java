package android.filterpacks.ui;

import android.filterfw.core.Filter;
import android.filterfw.core.FilterContext;
import android.filterfw.core.FilterSurfaceView;
import android.filterfw.core.Frame;
import android.filterfw.core.GLEnvironment;
import android.filterfw.core.GLFrame;
import android.filterfw.core.GenerateFieldPort;
import android.filterfw.core.GenerateFinalPort;
import android.filterfw.core.ShaderProgram;
import android.filterfw.format.ImageFormat;
import android.util.Log;
import android.view.SurfaceHolder;

/* loaded from: /home/user/work/dex/classes.dex */
public class SurfaceRenderFilter extends Filter implements SurfaceHolder.Callback {
    private static final String TAG = "SurfaceRenderFilter";
    private final int RENDERMODE_FILL_CROP;
    private final int RENDERMODE_FIT;
    private final int RENDERMODE_STRETCH;
    private float mAspectRatio;
    private boolean mIsBound;
    private boolean mLogVerbose;
    private ShaderProgram mProgram;
    private int mRenderMode;

    @GenerateFieldPort(hasDefault = true, name = "renderMode")
    private String mRenderModeString;
    private GLFrame mScreen;
    private int mScreenHeight;
    private int mScreenWidth;

    @GenerateFinalPort(name = "surfaceView")
    private FilterSurfaceView mSurfaceView;

    public SurfaceRenderFilter(String str) {
        super(str);
        this.RENDERMODE_STRETCH = 0;
        this.RENDERMODE_FIT = 1;
        this.RENDERMODE_FILL_CROP = 2;
        this.mIsBound = false;
        this.mRenderMode = 1;
        this.mAspectRatio = 1.0f;
        this.mLogVerbose = Log.isLoggable(TAG, 2);
    }

    @Override // android.filterfw.core.Filter
    public void setupPorts() {
        if (this.mSurfaceView == null) {
            throw new RuntimeException("NULL SurfaceView passed to SurfaceRenderFilter");
        }
        addMaskedInputPort("frame", ImageFormat.create(3));
    }

    public void updateRenderMode() {
        if (this.mRenderModeString != null) {
            if (this.mRenderModeString.equals("stretch")) {
                this.mRenderMode = 0;
            } else if (this.mRenderModeString.equals("fit")) {
                this.mRenderMode = 1;
            } else if (this.mRenderModeString.equals("fill_crop")) {
                this.mRenderMode = 2;
            } else {
                throw new RuntimeException("Unknown render mode '" + this.mRenderModeString + "'!");
            }
        }
        updateTargetRect();
    }

    @Override // android.filterfw.core.Filter
    public void prepare(FilterContext filterContext) {
        this.mProgram = ShaderProgram.createIdentity(filterContext);
        this.mProgram.setSourceRect(0.0f, 1.0f, 1.0f, -1.0f);
        this.mProgram.setClearsOutput(true);
        this.mProgram.setClearColor(0.0f, 0.0f, 0.0f);
        updateRenderMode();
        this.mScreen = (GLFrame) filterContext.getFrameManager().newBoundFrame(ImageFormat.create(this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight(), 3, 3), 101, 0L);
    }

    @Override // android.filterfw.core.Filter
    public void open(FilterContext filterContext) {
        this.mSurfaceView.unbind();
        this.mSurfaceView.bindToListener(this, filterContext.getGLEnvironment());
    }

    @Override // android.filterfw.core.Filter
    public void process(FilterContext filterContext) {
        if (!this.mIsBound) {
            Log.w(TAG, this + ": Ignoring frame as there is no surface to render to!");
            return;
        }
        if (this.mLogVerbose) {
            Log.v(TAG, "Starting frame processing");
        }
        GLEnvironment gLEnv = this.mSurfaceView.getGLEnv();
        if (gLEnv != filterContext.getGLEnvironment()) {
            throw new RuntimeException("Surface created under different GLEnvironment!");
        }
        Frame pullInput = pullInput("frame");
        boolean z = false;
        float width = pullInput.getFormat().getWidth() / pullInput.getFormat().getHeight();
        if (width != this.mAspectRatio) {
            if (this.mLogVerbose) {
                Log.v(TAG, "New aspect ratio: " + width + ", previously: " + this.mAspectRatio);
            }
            this.mAspectRatio = width;
            updateTargetRect();
        }
        if (this.mLogVerbose) {
            Log.v(TAG, "Got input format: " + pullInput.getFormat());
        }
        if (pullInput.getFormat().getTarget() != 3) {
            pullInput = filterContext.getFrameManager().duplicateFrameToTarget(pullInput, 3);
            z = true;
        }
        gLEnv.activateSurfaceWithId(this.mSurfaceView.getSurfaceId());
        this.mProgram.process(pullInput, this.mScreen);
        gLEnv.swapBuffers();
        if (z) {
            pullInput.release();
        }
    }

    @Override // android.filterfw.core.Filter
    public void fieldPortValueUpdated(String str, FilterContext filterContext) {
        updateTargetRect();
    }

    @Override // android.filterfw.core.Filter
    public void close(FilterContext filterContext) {
        this.mSurfaceView.unbind();
    }

    @Override // android.filterfw.core.Filter
    public void tearDown(FilterContext filterContext) {
        if (this.mScreen != null) {
            this.mScreen.release();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public synchronized void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mIsBound = true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public synchronized void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (this.mScreen != null) {
            this.mScreenWidth = i2;
            this.mScreenHeight = i3;
            this.mScreen.setViewport(0, 0, this.mScreenWidth, this.mScreenHeight);
            updateTargetRect();
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public synchronized void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mIsBound = false;
    }

    private void updateTargetRect() {
        if (this.mScreenWidth <= 0 || this.mScreenHeight <= 0 || this.mProgram == null) {
            return;
        }
        float f = (this.mScreenWidth / this.mScreenHeight) / this.mAspectRatio;
        switch (this.mRenderMode) {
            case 0:
                this.mProgram.setTargetRect(0.0f, 0.0f, 1.0f, 1.0f);
                return;
            case 1:
                if (f > 1.0f) {
                    this.mProgram.setTargetRect(0.5f - (0.5f / f), 0.0f, 1.0f / f, 1.0f);
                    return;
                } else {
                    this.mProgram.setTargetRect(0.0f, 0.5f - (f * 0.5f), 1.0f, f);
                    return;
                }
            case 2:
                if (f > 1.0f) {
                    this.mProgram.setTargetRect(0.0f, 0.5f - (f * 0.5f), 1.0f, f);
                    return;
                } else {
                    this.mProgram.setTargetRect(0.5f - (0.5f / f), 0.0f, 1.0f / f, 1.0f);
                    return;
                }
            default:
                return;
        }
    }
}
