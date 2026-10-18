package android.hardware.camera2.legacy;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.legacy.LegacyExceptionUtils;
import android.net.wifi.WifiEnterpriseConfig;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Environment;
import android.os.SystemProperties;
import android.text.format.Time;
import android.util.Log;
import android.util.Pair;
import android.util.Size;
import android.view.Surface;
import java.io.File;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class SurfaceTextureRenderer {
    private static final boolean DEBUG = false;
    private static final int EGL_COLOR_BITLENGTH = 8;
    private static final int EGL_RECORDABLE_ANDROID = 12610;
    private static final int FLIP_TYPE_BOTH = 3;
    private static final int FLIP_TYPE_HORIZONTAL = 1;
    private static final int FLIP_TYPE_NONE = 0;
    private static final int FLIP_TYPE_VERTICAL = 2;
    private static final int FLOAT_SIZE_BYTES = 4;
    private static final String FRAGMENT_SHADER = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n";
    private static final int GLES_VERSION = 2;
    private static final int GL_MATRIX_SIZE = 16;
    private static final String LEGACY_PERF_PROPERTY = "persist.camera.legacy_perf";
    private static final int PBUFFER_PIXEL_BYTES = 4;
    private static final String TAG = "SurfaceTextureRenderer";
    private static final int TRIANGLE_VERTICES_DATA_POS_OFFSET = 0;
    private static final int TRIANGLE_VERTICES_DATA_STRIDE_BYTES = 20;
    private static final int TRIANGLE_VERTICES_DATA_UV_OFFSET = 3;
    private static final int VERTEX_POS_SIZE = 3;
    private static final String VERTEX_SHADER = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n";
    private static final int VERTEX_UV_SIZE = 2;
    private FloatBuffer mBothFlipTriangleVertices;
    private EGLConfig mConfigs;
    private final int mFacing;
    private FloatBuffer mHorizontalFlipTriangleVertices;
    private ByteBuffer mPBufferPixels;
    private int mProgram;
    private volatile SurfaceTexture mSurfaceTexture;
    private FloatBuffer mVerticalFlipTriangleVertices;
    private int maPositionHandle;
    private int maTextureHandle;
    private int muMVPMatrixHandle;
    private int muSTMatrixHandle;
    private static final float[] sHorizontalFlipTriangleVertices = {-1.0f, -1.0f, 0.0f, 1.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f};
    private static final float[] sVerticalFlipTriangleVertices = {-1.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f};
    private static final float[] sBothFlipTriangleVertices = {-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, 1.0f, -1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f};
    private static final float[] sRegularTriangleVertices = {-1.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f};
    private EGLDisplay mEGLDisplay = EGL14.EGL_NO_DISPLAY;
    private EGLContext mEGLContext = EGL14.EGL_NO_CONTEXT;
    private List<EGLSurfaceHolder> mSurfaces = new ArrayList();
    private List<EGLSurfaceHolder> mConversionSurfaces = new ArrayList();
    private float[] mMVPMatrix = new float[16];
    private float[] mSTMatrix = new float[16];
    private int mTextureID = 0;
    private PerfMeasurement mPerfMeasurer = null;
    private FloatBuffer mRegularTriangleVertices = ByteBuffer.allocateDirect(sRegularTriangleVertices.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public class EGLSurfaceHolder {
        EGLSurface eglSurface;
        int height;
        Surface surface;
        int width;

        private EGLSurfaceHolder() {
        }
    }

    public SurfaceTextureRenderer(int i) {
        this.mFacing = i;
        this.mRegularTriangleVertices.put(sRegularTriangleVertices).position(0);
        this.mHorizontalFlipTriangleVertices = ByteBuffer.allocateDirect(sHorizontalFlipTriangleVertices.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mHorizontalFlipTriangleVertices.put(sHorizontalFlipTriangleVertices).position(0);
        this.mVerticalFlipTriangleVertices = ByteBuffer.allocateDirect(sVerticalFlipTriangleVertices.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mVerticalFlipTriangleVertices.put(sVerticalFlipTriangleVertices).position(0);
        this.mBothFlipTriangleVertices = ByteBuffer.allocateDirect(sBothFlipTriangleVertices.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.mBothFlipTriangleVertices.put(sBothFlipTriangleVertices).position(0);
        Matrix.setIdentityM(this.mSTMatrix, 0);
    }

    private int loadShader(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        checkGlError("glCreateShader type=" + i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        Log.e(TAG, "Could not compile shader " + i + ":");
        Log.e(TAG, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + GLES20.glGetShaderInfoLog(glCreateShader));
        GLES20.glDeleteShader(glCreateShader);
        throw new IllegalStateException("Could not compile shader " + i);
    }

    private int createProgram(String str, String str2) {
        int loadShader;
        int loadShader2 = loadShader(35633, str);
        if (loadShader2 == 0 || (loadShader = loadShader(35632, str2)) == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        checkGlError("glCreateProgram");
        if (glCreateProgram == 0) {
            Log.e(TAG, "Could not create program");
        }
        GLES20.glAttachShader(glCreateProgram, loadShader2);
        checkGlError("glAttachShader");
        GLES20.glAttachShader(glCreateProgram, loadShader);
        checkGlError("glAttachShader");
        GLES20.glLinkProgram(glCreateProgram);
        int[] iArr = new int[1];
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        if (iArr[0] == 1) {
            return glCreateProgram;
        }
        Log.e(TAG, "Could not link program: ");
        Log.e(TAG, GLES20.glGetProgramInfoLog(glCreateProgram));
        GLES20.glDeleteProgram(glCreateProgram);
        throw new IllegalStateException("Could not link program");
    }

    private void drawFrame(SurfaceTexture surfaceTexture, int i, int i2, int i3) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        FloatBuffer floatBuffer;
        checkGlError("onDrawFrame start");
        surfaceTexture.getTransformMatrix(this.mSTMatrix);
        Matrix.setIdentityM(this.mMVPMatrix, 0);
        try {
            Size textureSize = LegacyCameraDevice.getTextureSize(surfaceTexture);
            float width = textureSize.getWidth();
            float height = textureSize.getHeight();
            if (width <= 0.0f || height <= 0.0f) {
                throw new IllegalStateException("Illegal intermediate texture with dimension of 0");
            }
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF(0.0f, 0.0f, i, i2);
            android.graphics.Matrix matrix = new android.graphics.Matrix();
            matrix.setRectToRect(rectF2, rectF, Matrix.ScaleToFit.CENTER);
            matrix.mapRect(rectF2);
            android.opengl.Matrix.scaleM(this.mMVPMatrix, 0, rectF.width() / rectF2.width(), rectF.height() / rectF2.height(), 1.0f);
            GLES20.glViewport(0, 0, i, i2);
            GLES20.glUseProgram(this.mProgram);
            checkGlError("glUseProgram");
            GLES20.glActiveTexture(33984);
            GLES20.glBindTexture(36197, this.mTextureID);
            switch (i3) {
                case 1:
                    floatBuffer = this.mHorizontalFlipTriangleVertices;
                    break;
                case 2:
                    floatBuffer = this.mVerticalFlipTriangleVertices;
                    break;
                case 3:
                    floatBuffer = this.mBothFlipTriangleVertices;
                    break;
                default:
                    floatBuffer = this.mRegularTriangleVertices;
                    break;
            }
            floatBuffer.position(0);
            FloatBuffer floatBuffer2 = floatBuffer;
            GLES20.glVertexAttribPointer(this.maPositionHandle, 3, 5126, false, 20, (Buffer) floatBuffer2);
            checkGlError("glVertexAttribPointer maPosition");
            GLES20.glEnableVertexAttribArray(this.maPositionHandle);
            checkGlError("glEnableVertexAttribArray maPositionHandle");
            floatBuffer.position(3);
            GLES20.glVertexAttribPointer(this.maTextureHandle, 2, 5126, false, 20, (Buffer) floatBuffer2);
            checkGlError("glVertexAttribPointer maTextureHandle");
            GLES20.glEnableVertexAttribArray(this.maTextureHandle);
            checkGlError("glEnableVertexAttribArray maTextureHandle");
            GLES20.glUniformMatrix4fv(this.muMVPMatrixHandle, 1, false, this.mMVPMatrix, 0);
            GLES20.glUniformMatrix4fv(this.muSTMatrixHandle, 1, false, this.mSTMatrix, 0);
            GLES20.glDrawArrays(5, 0, 4);
            checkGlDrawError("glDrawArrays");
        } catch (LegacyExceptionUtils.BufferQueueAbandonedException e) {
            throw new IllegalStateException("Surface abandoned, skipping drawFrame...", e);
        }
    }

    private void initializeGLState() {
        this.mProgram = createProgram(VERTEX_SHADER, FRAGMENT_SHADER);
        if (this.mProgram == 0) {
            throw new IllegalStateException("failed creating program");
        }
        this.maPositionHandle = GLES20.glGetAttribLocation(this.mProgram, "aPosition");
        checkGlError("glGetAttribLocation aPosition");
        if (this.maPositionHandle == -1) {
            throw new IllegalStateException("Could not get attrib location for aPosition");
        }
        this.maTextureHandle = GLES20.glGetAttribLocation(this.mProgram, "aTextureCoord");
        checkGlError("glGetAttribLocation aTextureCoord");
        if (this.maTextureHandle == -1) {
            throw new IllegalStateException("Could not get attrib location for aTextureCoord");
        }
        this.muMVPMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uMVPMatrix");
        checkGlError("glGetUniformLocation uMVPMatrix");
        if (this.muMVPMatrixHandle == -1) {
            throw new IllegalStateException("Could not get attrib location for uMVPMatrix");
        }
        this.muSTMatrixHandle = GLES20.glGetUniformLocation(this.mProgram, "uSTMatrix");
        checkGlError("glGetUniformLocation uSTMatrix");
        if (this.muSTMatrixHandle == -1) {
            throw new IllegalStateException("Could not get attrib location for uSTMatrix");
        }
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        this.mTextureID = iArr[0];
        GLES20.glBindTexture(36197, this.mTextureID);
        checkGlError("glBindTexture mTextureID");
        GLES20.glTexParameterf(36197, 10241, 9728.0f);
        GLES20.glTexParameterf(36197, 10240, 9729.0f);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        checkGlError("glTexParameter");
    }

    private int getTextureId() {
        return this.mTextureID;
    }

    private void clearState() {
        this.mSurfaces.clear();
        Iterator<EGLSurfaceHolder> it = this.mConversionSurfaces.iterator();
        while (it.hasNext()) {
            try {
                LegacyCameraDevice.disconnectSurface(it.next().surface);
            } catch (LegacyExceptionUtils.BufferQueueAbandonedException e) {
                Log.w(TAG, "Surface abandoned, skipping...", e);
            }
        }
        this.mConversionSurfaces.clear();
        this.mPBufferPixels = null;
        if (this.mSurfaceTexture != null) {
            this.mSurfaceTexture.release();
        }
        this.mSurfaceTexture = null;
    }

    private void configureEGLContext() {
        this.mEGLDisplay = EGL14.eglGetDisplay(0);
        if (this.mEGLDisplay == EGL14.EGL_NO_DISPLAY) {
            throw new IllegalStateException("No EGL14 display");
        }
        int[] iArr = new int[2];
        if (!EGL14.eglInitialize(this.mEGLDisplay, iArr, 0, iArr, 1)) {
            throw new IllegalStateException("Cannot initialize EGL14");
        }
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        EGL14.eglChooseConfig(this.mEGLDisplay, new int[]{12324, 8, 12323, 8, 12322, 8, 12352, 4, EGL_RECORDABLE_ANDROID, 1, 12339, 5, 12344}, 0, eGLConfigArr, 0, eGLConfigArr.length, new int[1], 0);
        checkEglError("eglCreateContext RGB888+recordable ES2");
        this.mConfigs = eGLConfigArr[0];
        this.mEGLContext = EGL14.eglCreateContext(this.mEGLDisplay, eGLConfigArr[0], EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
        checkEglError("eglCreateContext");
        if (this.mEGLContext == EGL14.EGL_NO_CONTEXT) {
            throw new IllegalStateException("No EGLContext could be made");
        }
    }

    private void configureEGLOutputSurfaces(Collection<EGLSurfaceHolder> collection) {
        if (collection == null || collection.size() == 0) {
            throw new IllegalStateException("No Surfaces were provided to draw to");
        }
        int[] iArr = {12344};
        for (EGLSurfaceHolder eGLSurfaceHolder : collection) {
            eGLSurfaceHolder.eglSurface = EGL14.eglCreateWindowSurface(this.mEGLDisplay, this.mConfigs, eGLSurfaceHolder.surface, iArr, 0);
            checkEglError("eglCreateWindowSurface");
        }
    }

    private void configureEGLPbufferSurfaces(Collection<EGLSurfaceHolder> collection) {
        if (collection == null || collection.size() == 0) {
            throw new IllegalStateException("No Surfaces were provided to draw to");
        }
        int i = 0;
        for (EGLSurfaceHolder eGLSurfaceHolder : collection) {
            int i2 = eGLSurfaceHolder.width * eGLSurfaceHolder.height;
            if (i2 > i) {
                i = i2;
            }
            eGLSurfaceHolder.eglSurface = EGL14.eglCreatePbufferSurface(this.mEGLDisplay, this.mConfigs, new int[]{12375, eGLSurfaceHolder.width, 12374, eGLSurfaceHolder.height, 12344}, 0);
            checkEglError("eglCreatePbufferSurface");
        }
        this.mPBufferPixels = ByteBuffer.allocateDirect(i * 4).order(ByteOrder.nativeOrder());
    }

    private void releaseEGLContext() {
        if (this.mEGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(this.mEGLDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT);
            dumpGlTiming();
            if (this.mSurfaces != null) {
                for (EGLSurfaceHolder eGLSurfaceHolder : this.mSurfaces) {
                    if (eGLSurfaceHolder.eglSurface != null) {
                        EGL14.eglDestroySurface(this.mEGLDisplay, eGLSurfaceHolder.eglSurface);
                    }
                }
            }
            if (this.mConversionSurfaces != null) {
                for (EGLSurfaceHolder eGLSurfaceHolder2 : this.mConversionSurfaces) {
                    if (eGLSurfaceHolder2.eglSurface != null) {
                        EGL14.eglDestroySurface(this.mEGLDisplay, eGLSurfaceHolder2.eglSurface);
                    }
                }
            }
            EGL14.eglDestroyContext(this.mEGLDisplay, this.mEGLContext);
            EGL14.eglReleaseThread();
            EGL14.eglTerminate(this.mEGLDisplay);
        }
        this.mConfigs = null;
        this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
        this.mEGLContext = EGL14.EGL_NO_CONTEXT;
        clearState();
    }

    private void makeCurrent(EGLSurface eGLSurface) {
        EGL14.eglMakeCurrent(this.mEGLDisplay, eGLSurface, eGLSurface, this.mEGLContext);
        checkEglError("makeCurrent");
    }

    private boolean swapBuffers(EGLSurface eGLSurface) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        boolean eglSwapBuffers = EGL14.eglSwapBuffers(this.mEGLDisplay, eGLSurface);
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return eglSwapBuffers;
        }
        if (eglGetError == 12299 || eglGetError == 12301) {
            throw new LegacyExceptionUtils.BufferQueueAbandonedException();
        }
        throw new IllegalStateException("swapBuffers: EGL error: 0x" + Integer.toHexString(eglGetError));
    }

    private void checkEglError(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return;
        }
        throw new IllegalStateException(str + ": EGL error: 0x" + Integer.toHexString(eglGetError));
    }

    private void checkGlError(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError == 0) {
            return;
        }
        throw new IllegalStateException(str + ": GLES20 error: 0x" + Integer.toHexString(glGetError));
    }

    private void checkGlDrawError(String str) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        int glGetError;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            glGetError = GLES20.glGetError();
            if (glGetError == 0) {
                break;
            } else if (glGetError == 1285) {
                z2 = true;
            } else {
                z = true;
            }
        }
        if (!z) {
            if (z2) {
                throw new LegacyExceptionUtils.BufferQueueAbandonedException();
            }
        } else {
            throw new IllegalStateException(str + ": GLES20 error: 0x" + Integer.toHexString(glGetError));
        }
    }

    private void dumpGlTiming() {
        if (this.mPerfMeasurer == null) {
            return;
        }
        File file = new File(Environment.getExternalStorageDirectory(), "CameraLegacy");
        if (!file.exists() && !file.mkdirs()) {
            Log.e(TAG, "Failed to create directory for data dump");
            return;
        }
        StringBuilder sb = new StringBuilder(file.getPath());
        sb.append(File.separator);
        sb.append("durations_");
        Time time = new Time();
        time.setToNow();
        sb.append(time.format2445());
        sb.append("_S");
        for (EGLSurfaceHolder eGLSurfaceHolder : this.mSurfaces) {
            sb.append(String.format("_%d_%d", Integer.valueOf(eGLSurfaceHolder.width), Integer.valueOf(eGLSurfaceHolder.height)));
        }
        sb.append("_C");
        for (EGLSurfaceHolder eGLSurfaceHolder2 : this.mConversionSurfaces) {
            sb.append(String.format("_%d_%d", Integer.valueOf(eGLSurfaceHolder2.width), Integer.valueOf(eGLSurfaceHolder2.height)));
        }
        sb.append(".txt");
        this.mPerfMeasurer.dumpPerformanceData(sb.toString());
    }

    private void setupGlTiming() {
        if (PerfMeasurement.isGlTimingSupported()) {
            Log.d(TAG, "Enabling GL performance measurement");
            this.mPerfMeasurer = new PerfMeasurement();
        } else {
            Log.d(TAG, "GL performance measurement not supported on this device");
            this.mPerfMeasurer = null;
        }
    }

    private void beginGlTiming() {
        if (this.mPerfMeasurer == null) {
            return;
        }
        this.mPerfMeasurer.startTimer();
    }

    private void addGlTimestamp(long j) {
        if (this.mPerfMeasurer == null) {
            return;
        }
        this.mPerfMeasurer.addTimestamp(j);
    }

    private void endGlTiming() {
        if (this.mPerfMeasurer == null) {
            return;
        }
        this.mPerfMeasurer.stopTimer();
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.mSurfaceTexture;
    }

    public void configureSurfaces(Collection<Pair<Surface, Size>> collection) {
        releaseEGLContext();
        if (collection == null || collection.size() == 0) {
            Log.w(TAG, "No output surfaces configured for GL drawing.");
            return;
        }
        for (Pair<Surface, Size> pair : collection) {
            Surface surface = (Surface) pair.first;
            Size size = (Size) pair.second;
            try {
                EGLSurfaceHolder eGLSurfaceHolder = new EGLSurfaceHolder();
                eGLSurfaceHolder.surface = surface;
                eGLSurfaceHolder.width = size.getWidth();
                eGLSurfaceHolder.height = size.getHeight();
                if (LegacyCameraDevice.needsConversion(surface)) {
                    this.mConversionSurfaces.add(eGLSurfaceHolder);
                    LegacyCameraDevice.connectSurface(surface);
                } else {
                    this.mSurfaces.add(eGLSurfaceHolder);
                }
            } catch (LegacyExceptionUtils.BufferQueueAbandonedException e) {
                Log.w(TAG, "Surface abandoned, skipping configuration... ", e);
            }
        }
        configureEGLContext();
        if (this.mSurfaces.size() > 0) {
            configureEGLOutputSurfaces(this.mSurfaces);
        }
        if (this.mConversionSurfaces.size() > 0) {
            configureEGLPbufferSurfaces(this.mConversionSurfaces);
        }
        makeCurrent(this.mSurfaces.size() > 0 ? this.mSurfaces.get(0).eglSurface : this.mConversionSurfaces.get(0).eglSurface);
        initializeGLState();
        this.mSurfaceTexture = new SurfaceTexture(getTextureId());
        if (SystemProperties.getBoolean(LEGACY_PERF_PROPERTY, false)) {
            setupGlTiming();
        }
    }

    public void drawIntoSurfaces(CaptureCollector captureCollector) {
        if ((this.mSurfaces == null || this.mSurfaces.size() == 0) && (this.mConversionSurfaces == null || this.mConversionSurfaces.size() == 0)) {
            return;
        }
        boolean hasPendingPreviewCaptures = captureCollector.hasPendingPreviewCaptures();
        checkGlError("before updateTexImage");
        if (hasPendingPreviewCaptures) {
            beginGlTiming();
        }
        this.mSurfaceTexture.updateTexImage();
        long timestamp = this.mSurfaceTexture.getTimestamp();
        Pair<RequestHolder, Long> previewCaptured = captureCollector.previewCaptured(timestamp);
        if (previewCaptured == null) {
            if (hasPendingPreviewCaptures) {
                endGlTiming();
                return;
            }
            return;
        }
        RequestHolder requestHolder = (RequestHolder) previewCaptured.first;
        Collection<Surface> holderTargets = requestHolder.getHolderTargets();
        if (hasPendingPreviewCaptures) {
            addGlTimestamp(timestamp);
        }
        Collection arrayList = new ArrayList();
        try {
            arrayList = LegacyCameraDevice.getSurfaceIds(holderTargets);
        } catch (LegacyExceptionUtils.BufferQueueAbandonedException e) {
            Log.w(TAG, "Surface abandoned, dropping frame. ", e);
            requestHolder.setOutputAbandoned();
        }
        for (EGLSurfaceHolder eGLSurfaceHolder : this.mSurfaces) {
            if (LegacyCameraDevice.containsSurfaceId(eGLSurfaceHolder.surface, arrayList)) {
                try {
                    LegacyCameraDevice.setSurfaceDimens(eGLSurfaceHolder.surface, eGLSurfaceHolder.width, eGLSurfaceHolder.height);
                    makeCurrent(eGLSurfaceHolder.eglSurface);
                    LegacyCameraDevice.setNextTimestamp(eGLSurfaceHolder.surface, ((Long) previewCaptured.second).longValue());
                    drawFrame(this.mSurfaceTexture, eGLSurfaceHolder.width, eGLSurfaceHolder.height, this.mFacing == 0 ? 1 : 0);
                    swapBuffers(eGLSurfaceHolder.eglSurface);
                } catch (LegacyExceptionUtils.BufferQueueAbandonedException e2) {
                    Log.w(TAG, "Surface abandoned, dropping frame. ", e2);
                    requestHolder.setOutputAbandoned();
                }
            }
        }
        for (EGLSurfaceHolder eGLSurfaceHolder2 : this.mConversionSurfaces) {
            if (LegacyCameraDevice.containsSurfaceId(eGLSurfaceHolder2.surface, arrayList)) {
                makeCurrent(eGLSurfaceHolder2.eglSurface);
                try {
                    drawFrame(this.mSurfaceTexture, eGLSurfaceHolder2.width, eGLSurfaceHolder2.height, this.mFacing == 0 ? 3 : 2);
                    this.mPBufferPixels.clear();
                    GLES20.glReadPixels(0, 0, eGLSurfaceHolder2.width, eGLSurfaceHolder2.height, 6408, 5121, this.mPBufferPixels);
                    checkGlError("glReadPixels");
                    try {
                        int detectSurfaceType = LegacyCameraDevice.detectSurfaceType(eGLSurfaceHolder2.surface);
                        LegacyCameraDevice.setSurfaceDimens(eGLSurfaceHolder2.surface, eGLSurfaceHolder2.width, eGLSurfaceHolder2.height);
                        LegacyCameraDevice.setNextTimestamp(eGLSurfaceHolder2.surface, ((Long) previewCaptured.second).longValue());
                        LegacyCameraDevice.produceFrame(eGLSurfaceHolder2.surface, this.mPBufferPixels.array(), eGLSurfaceHolder2.width, eGLSurfaceHolder2.height, detectSurfaceType);
                    } catch (LegacyExceptionUtils.BufferQueueAbandonedException e3) {
                        Log.w(TAG, "Surface abandoned, dropping frame. ", e3);
                        requestHolder.setOutputAbandoned();
                    }
                } catch (LegacyExceptionUtils.BufferQueueAbandonedException e4) {
                    throw new IllegalStateException("Surface abandoned, skipping drawFrame...", e4);
                }
            }
        }
        captureCollector.previewProduced();
        if (hasPendingPreviewCaptures) {
            endGlTiming();
        }
    }

    public void cleanupEGLContext() {
        releaseEGLContext();
    }

    public void flush() {
        Log.e(TAG, "Flush not yet implemented.");
    }
}
