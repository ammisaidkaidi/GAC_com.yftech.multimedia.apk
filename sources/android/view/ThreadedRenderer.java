package android.view;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.os.IBinder;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.Log;
import android.util.TimeUtils;
import android.view.IGraphicsStats;
import android.view.IGraphicsStatsCallback;
import android.view.Surface;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.android.internal.R;
import com.android.internal.util.VirtualRefBasePtr;
import java.io.File;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class ThreadedRenderer {
    private static final String CACHE_PATH_SHADERS = "com.android.opengl.shaders_cache";
    private static final String CACHE_PATH_SKIASHADERS = "com.android.skia.shaders_cache";
    public static final String DEBUG_DIRTY_REGIONS_PROPERTY = "debug.hwui.show_dirty_regions";
    public static final String DEBUG_FPS_DIVISOR = "debug.hwui.fps_divisor";
    public static final String DEBUG_OVERDRAW_PROPERTY = "debug.hwui.overdraw";
    public static final String DEBUG_SHOW_LAYERS_UPDATES_PROPERTY = "debug.hwui.show_layers_updates";
    public static final String DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY = "debug.hwui.show_non_rect_clip";
    public static int EGL_CONTEXT_PRIORITY_HIGH_IMG = 12545;
    public static int EGL_CONTEXT_PRIORITY_LOW_IMG = 12547;
    public static int EGL_CONTEXT_PRIORITY_MEDIUM_IMG = 12546;
    private static final int FLAG_DUMP_ALL = 1;
    private static final int FLAG_DUMP_FRAMESTATS = 1;
    private static final int FLAG_DUMP_RESET = 2;
    private static final String LOG_TAG = "ThreadedRenderer";
    public static final String OVERDRAW_PROPERTY_SHOW = "show";
    static final String PRINT_CONFIG_PROPERTY = "debug.hwui.print_config";
    static final String PROFILE_MAXFRAMES_PROPERTY = "debug.hwui.profile.maxframes";
    public static final String PROFILE_PROPERTY = "debug.hwui.profile";
    public static final String PROFILE_PROPERTY_VISUALIZE_BARS = "visual_bars";
    private static final int SYNC_CONTEXT_IS_STOPPED = 4;
    private static final int SYNC_FRAME_DROPPED = 8;
    private static final int SYNC_INVALIDATE_REQUIRED = 1;
    private static final int SYNC_LOST_SURFACE_REWARD_IF_FOUND = 2;
    private static final int SYNC_OK = 0;
    private static final String[] VISUALIZERS;
    public static boolean sRendererDisabled;
    private static Boolean sSupportsOpenGL;
    public static boolean sSystemRendererDisabled;
    public static boolean sTrimForeground;
    private final int mAmbientShadowAlpha;
    private boolean mEnabled;
    private boolean mHasInsets;
    private int mHeight;
    private int mInsetLeft;
    private int mInsetTop;
    private boolean mIsOpaque;
    private final float mLightRadius;
    private final float mLightY;
    private final float mLightZ;
    private long mNativeProxy;
    private RenderNode mRootNode;
    private boolean mRootNodeNeedsUpdate;
    private final int mSpotShadowAlpha;
    private int mSurfaceHeight;
    private int mSurfaceWidth;
    private int mWidth;
    private boolean mInitialized = false;
    private boolean mRequested = true;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface DrawCallbacks {
        void onPostDraw(DisplayListCanvas displayListCanvas);

        void onPreDraw(DisplayListCanvas displayListCanvas);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface DumpFlags {
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface FrameCompleteCallback {
        void onFrameComplete(long j);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface FrameDrawingCallback {
        void onFrameDraw(long j);
    }

    public static native void disableVsync();

    private static native long nAddFrameMetricsObserver(long j, FrameMetricsObserver frameMetricsObserver);

    private static native void nAddRenderNode(long j, long j2, boolean z);

    private static native void nBuildLayer(long j, long j2);

    private static native void nCancelLayerUpdate(long j, long j2);

    private static native boolean nCopyLayerInto(long j, long j2, Bitmap bitmap);

    private static native int nCopySurfaceInto(Surface surface, int i, int i2, int i3, int i4, Bitmap bitmap);

    private static native Bitmap nCreateHardwareBitmap(long j, int i, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nCreateProxy(boolean z, long j);

    private static native long nCreateRootRenderNode();

    private static native long nCreateTextureLayer(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDeleteProxy(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nDestroy(long j, long j2);

    private static native void nDestroyHardwareResources(long j);

    private static native void nDetachSurfaceTexture(long j, long j2);

    private static native void nDrawRenderNode(long j, long j2);

    private static native void nDumpProfileInfo(long j, FileDescriptor fileDescriptor, int i);

    private static native void nFence(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nGetRenderThreadTid(long j);

    private static native void nHackySetRTAnimationsEnabled(boolean z);

    private static native void nInitialize(long j, Surface surface);

    private static native void nInvokeFunctor(long j, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native boolean nLoadSystemProperties(long j);

    private static native void nNotifyFramePending(long j);

    private static native void nOverrideProperty(String str, String str2);

    private static native boolean nPauseSurface(long j, Surface surface);

    private static native void nPushLayerUpdate(long j, long j2);

    private static native void nRegisterAnimatingRenderNode(long j, long j2);

    private static native void nRegisterVectorDrawableAnimator(long j, long j2);

    private static native void nRemoveFrameMetricsObserver(long j, long j2);

    private static native void nRemoveRenderNode(long j, long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nRotateProcessStatsBuffer();

    private static native void nSerializeDisplayListTree(long j);

    private static native void nSetContentDrawBounds(long j, int i, int i2, int i3, int i4);

    private static native void nSetContextPriority(int i);

    private static native void nSetDebuggingEnabled(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetFrameCallback(long j, FrameDrawingCallback frameDrawingCallback);

    private static native void nSetFrameCompleteCallback(long j, FrameCompleteCallback frameCompleteCallback);

    private static native void nSetHighContrastText(boolean z);

    private static native void nSetIsolatedProcess(boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetLightCenter(long j, float f, float f2, float f3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetName(long j, String str);

    private static native void nSetOpaque(long j, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetProcessStatsBuffer(int i);

    private static native void nSetStopped(long j, boolean z);

    private static native void nSetWideGamut(long j, boolean z);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nSetup(long j, float f, int i, int i2);

    private static native void nStopDrawing(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nSyncAndDrawFrame(long j, long[] jArr, int i);

    private static native void nTrimMemory(int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nUpdateSurface(long j, Surface surface);

    static native void setupShadersDiskCache(String str, String str2);

    static /* synthetic */ long access$000() {
        return nCreateRootRenderNode();
    }

    static {
        isAvailable();
        sRendererDisabled = false;
        sSystemRendererDisabled = false;
        sTrimForeground = false;
        VISUALIZERS = new String[]{PROFILE_PROPERTY_VISUALIZE_BARS};
    }

    public static void disable(boolean z) {
        sRendererDisabled = true;
        if (z) {
            sSystemRendererDisabled = true;
        }
    }

    public static void enableForegroundTrimming() {
        sTrimForeground = true;
    }

    public static boolean isAvailable() {
        if (sSupportsOpenGL != null) {
            return sSupportsOpenGL.booleanValue();
        }
        if (SystemProperties.getInt("ro.kernel.qemu", 0) == 0) {
            sSupportsOpenGL = true;
            return true;
        }
        int i = SystemProperties.getInt("qemu.gles", -1);
        if (i == -1) {
            return false;
        }
        sSupportsOpenGL = Boolean.valueOf(i > 0);
        return sSupportsOpenGL.booleanValue();
    }

    public static void setupDiskCache(File file) {
        setupShadersDiskCache(new File(file, CACHE_PATH_SHADERS).getAbsolutePath(), new File(file, CACHE_PATH_SKIASHADERS).getAbsolutePath());
    }

    public static ThreadedRenderer create(Context context, boolean z, String str) {
        if (isAvailable()) {
            return new ThreadedRenderer(context, z, str);
        }
        return null;
    }

    public static void trimMemory(int i) {
        nTrimMemory(i);
    }

    public static void overrideProperty(String str, String str2) {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("name and value must be non-null");
        }
        nOverrideProperty(str, str2);
    }

    ThreadedRenderer(Context context, boolean z, String str) {
        this.mIsOpaque = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.Lighting, 0, 0);
        this.mLightY = obtainStyledAttributes.getDimension(3, 0.0f);
        this.mLightZ = obtainStyledAttributes.getDimension(4, 0.0f);
        this.mLightRadius = obtainStyledAttributes.getDimension(2, 0.0f);
        this.mAmbientShadowAlpha = (int) ((obtainStyledAttributes.getFloat(0, 0.0f) * 255.0f) + 0.5f);
        this.mSpotShadowAlpha = (int) ((obtainStyledAttributes.getFloat(1, 0.0f) * 255.0f) + 0.5f);
        obtainStyledAttributes.recycle();
        long nCreateRootRenderNode = nCreateRootRenderNode();
        this.mRootNode = RenderNode.adopt(nCreateRootRenderNode);
        this.mRootNode.setClipToBounds(false);
        this.mIsOpaque = !z;
        this.mNativeProxy = nCreateProxy(z, nCreateRootRenderNode);
        nSetName(this.mNativeProxy, str);
        ProcessInitializer.sInstance.init(context, this.mNativeProxy);
        loadSystemProperties();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        this.mInitialized = false;
        updateEnabledState(null);
        nDestroy(this.mNativeProxy, this.mRootNode.mNativeRenderNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEnabled() {
        return this.mEnabled;
    }

    void setEnabled(boolean z) {
        this.mEnabled = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isRequested() {
        return this.mRequested;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRequested(boolean z) {
        this.mRequested = z;
    }

    private void updateEnabledState(Surface surface) {
        if (surface == null || !surface.isValid()) {
            setEnabled(false);
        } else {
            setEnabled(this.mInitialized);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean initialize(Surface surface) throws Surface.OutOfResourcesException {
        boolean z = !this.mInitialized;
        this.mInitialized = true;
        updateEnabledState(surface);
        nInitialize(this.mNativeProxy, surface);
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean initializeIfNeeded(int i, int i2, View.AttachInfo attachInfo, Surface surface, Rect rect) throws Surface.OutOfResourcesException {
        if (!isRequested() || isEnabled() || !initialize(surface)) {
            return false;
        }
        setup(i, i2, attachInfo, rect);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateSurface(Surface surface) throws Surface.OutOfResourcesException {
        updateEnabledState(surface);
        nUpdateSurface(this.mNativeProxy, surface);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean pauseSurface(Surface surface) {
        return nPauseSurface(this.mNativeProxy, surface);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStopped(boolean z) {
        nSetStopped(this.mNativeProxy, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroyHardwareResources(View view) {
        destroyResources(view);
        nDestroyHardwareResources(this.mNativeProxy);
    }

    private static void destroyResources(View view) {
        view.destroyHardwareResources();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void detachSurfaceTexture(long j) {
        nDetachSurfaceTexture(this.mNativeProxy, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setup(int i, int i2, View.AttachInfo attachInfo, Rect rect) {
        this.mWidth = i;
        this.mHeight = i2;
        if (rect != null && (rect.left != 0 || rect.right != 0 || rect.top != 0 || rect.bottom != 0)) {
            this.mHasInsets = true;
            this.mInsetLeft = rect.left;
            this.mInsetTop = rect.top;
            this.mSurfaceWidth = i + this.mInsetLeft + rect.right;
            this.mSurfaceHeight = i2 + this.mInsetTop + rect.bottom;
            setOpaque(false);
        } else {
            this.mHasInsets = false;
            this.mInsetLeft = 0;
            this.mInsetTop = 0;
            this.mSurfaceWidth = i;
            this.mSurfaceHeight = i2;
        }
        this.mRootNode.setLeftTopRightBottom(-this.mInsetLeft, -this.mInsetTop, this.mSurfaceWidth, this.mSurfaceHeight);
        nSetup(this.mNativeProxy, this.mLightRadius, this.mAmbientShadowAlpha, this.mSpotShadowAlpha);
        setLightCenter(attachInfo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLightCenter(View.AttachInfo attachInfo) {
        attachInfo.mDisplay.getRealSize(attachInfo.mPoint);
        nSetLightCenter(this.mNativeProxy, (r0.x / 2.0f) - attachInfo.mWindowLeft, this.mLightY - attachInfo.mWindowTop, this.mLightZ);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOpaque(boolean z) {
        this.mIsOpaque = z && !this.mHasInsets;
        nSetOpaque(this.mNativeProxy, this.mIsOpaque);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isOpaque() {
        return this.mIsOpaque;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setWideGamut(boolean z) {
        nSetWideGamut(this.mNativeProxy, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWidth() {
        return this.mWidth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHeight() {
        return this.mHeight;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void dumpGfxInfo(PrintWriter printWriter, FileDescriptor fileDescriptor, String[] strArr) {
        char c;
        printWriter.flush();
        int i = (strArr == null || strArr.length == 0) ? 1 : 0;
        for (String str : strArr) {
            int hashCode = str.hashCode();
            if (hashCode == -252053678) {
                if (str.equals("framestats")) {
                    c = 0;
                }
                c = 65535;
            } else if (hashCode != 1492) {
                if (hashCode == 108404047 && str.equals("reset")) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str.equals("-a")) {
                    c = 2;
                }
                c = 65535;
            }
            switch (c) {
                case 0:
                    i |= 1;
                    break;
                case 1:
                    i |= 2;
                    break;
                case 2:
                    i = 1;
                    break;
            }
        }
        nDumpProfileInfo(this.mNativeProxy, fileDescriptor, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean loadSystemProperties() {
        boolean nLoadSystemProperties = nLoadSystemProperties(this.mNativeProxy);
        if (nLoadSystemProperties) {
            invalidateRoot();
        }
        return nLoadSystemProperties;
    }

    private void updateViewTreeDisplayList(View view) {
        view.mPrivateFlags |= 32;
        view.mRecreateDisplayList = (view.mPrivateFlags & Integer.MIN_VALUE) == Integer.MIN_VALUE;
        view.mPrivateFlags &= Integer.MAX_VALUE;
        view.updateDisplayListIfDirty();
        view.mRecreateDisplayList = false;
    }

    private void updateRootDisplayList(View view, DrawCallbacks drawCallbacks) {
        Trace.traceBegin(8L, "Record View#draw()");
        updateViewTreeDisplayList(view);
        if (this.mRootNodeNeedsUpdate || !this.mRootNode.isValid()) {
            DisplayListCanvas start = this.mRootNode.start(this.mSurfaceWidth, this.mSurfaceHeight);
            try {
                int save = start.save();
                start.translate(this.mInsetLeft, this.mInsetTop);
                drawCallbacks.onPreDraw(start);
                start.insertReorderBarrier();
                start.drawRenderNode(view.updateDisplayListIfDirty());
                start.insertInorderBarrier();
                drawCallbacks.onPostDraw(start);
                start.restoreToCount(save);
                this.mRootNodeNeedsUpdate = false;
            } finally {
                this.mRootNode.end(start);
            }
        }
        Trace.traceEnd(8L);
    }

    public void addRenderNode(RenderNode renderNode, boolean z) {
        nAddRenderNode(this.mNativeProxy, renderNode.mNativeRenderNode, z);
    }

    public void removeRenderNode(RenderNode renderNode) {
        nRemoveRenderNode(this.mNativeProxy, renderNode.mNativeRenderNode);
    }

    public void drawRenderNode(RenderNode renderNode) {
        nDrawRenderNode(this.mNativeProxy, renderNode.mNativeRenderNode);
    }

    public void setContentDrawBounds(int i, int i2, int i3, int i4) {
        nSetContentDrawBounds(this.mNativeProxy, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invalidateRoot() {
        this.mRootNodeNeedsUpdate = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void draw(View view, View.AttachInfo attachInfo, DrawCallbacks drawCallbacks, FrameDrawingCallback frameDrawingCallback) {
        attachInfo.mIgnoreDirtyState = true;
        Choreographer choreographer = attachInfo.mViewRootImpl.mChoreographer;
        choreographer.mFrameInfo.markDrawStart();
        updateRootDisplayList(view, drawCallbacks);
        attachInfo.mIgnoreDirtyState = false;
        if (attachInfo.mPendingAnimatingRenderNodes != null) {
            int size = attachInfo.mPendingAnimatingRenderNodes.size();
            for (int i = 0; i < size; i++) {
                registerAnimatingRenderNode(attachInfo.mPendingAnimatingRenderNodes.get(i));
            }
            attachInfo.mPendingAnimatingRenderNodes.clear();
            attachInfo.mPendingAnimatingRenderNodes = null;
        }
        long[] jArr = choreographer.mFrameInfo.mFrameInfo;
        if (frameDrawingCallback != null) {
            nSetFrameCallback(this.mNativeProxy, frameDrawingCallback);
        }
        int nSyncAndDrawFrame = nSyncAndDrawFrame(this.mNativeProxy, jArr, jArr.length);
        if ((nSyncAndDrawFrame & 2) != 0) {
            setEnabled(false);
            attachInfo.mViewRootImpl.mSurface.release();
            attachInfo.mViewRootImpl.invalidate();
        }
        if ((nSyncAndDrawFrame & 1) != 0) {
            attachInfo.mViewRootImpl.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFrameCompleteCallback(FrameCompleteCallback frameCompleteCallback) {
        nSetFrameCompleteCallback(this.mNativeProxy, frameCompleteCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void invokeFunctor(long j, boolean z) {
        nInvokeFunctor(j, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextureLayer createTextureLayer() {
        return TextureLayer.adoptTextureLayer(this, nCreateTextureLayer(this.mNativeProxy));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildLayer(RenderNode renderNode) {
        nBuildLayer(this.mNativeProxy, renderNode.getNativeDisplayList());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean copyLayerInto(TextureLayer textureLayer, Bitmap bitmap) {
        return nCopyLayerInto(this.mNativeProxy, textureLayer.getDeferredLayerUpdater(), bitmap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pushLayerUpdate(TextureLayer textureLayer) {
        nPushLayerUpdate(this.mNativeProxy, textureLayer.getDeferredLayerUpdater());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onLayerDestroyed(TextureLayer textureLayer) {
        nCancelLayerUpdate(this.mNativeProxy, textureLayer.getDeferredLayerUpdater());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fence() {
        nFence(this.mNativeProxy);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopDrawing() {
        nStopDrawing(this.mNativeProxy);
    }

    public void notifyFramePending() {
        nNotifyFramePending(this.mNativeProxy);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void registerAnimatingRenderNode(RenderNode renderNode) {
        nRegisterAnimatingRenderNode(this.mRootNode.mNativeRenderNode, renderNode.mNativeRenderNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void registerVectorDrawableAnimator(AnimatedVectorDrawable.VectorDrawableAnimatorRT vectorDrawableAnimatorRT) {
        nRegisterVectorDrawableAnimator(this.mRootNode.mNativeRenderNode, vectorDrawableAnimatorRT.getAnimatorNativePtr());
    }

    public void serializeDisplayListTree() {
        nSerializeDisplayListTree(this.mNativeProxy);
    }

    public static int copySurfaceInto(Surface surface, Rect rect, Bitmap bitmap) {
        if (rect == null) {
            return nCopySurfaceInto(surface, 0, 0, 0, 0, bitmap);
        }
        return nCopySurfaceInto(surface, rect.left, rect.top, rect.right, rect.bottom, bitmap);
    }

    public static Bitmap createHardwareBitmap(RenderNode renderNode, int i, int i2) {
        return nCreateHardwareBitmap(renderNode.getNativeDisplayList(), i, i2);
    }

    public static void setHighContrastText(boolean z) {
        nSetHighContrastText(z);
    }

    public static void setIsolatedProcess(boolean z) {
        nSetIsolatedProcess(z);
    }

    public static void setDebuggingEnabled(boolean z) {
        nSetDebuggingEnabled(z);
    }

    protected void finalize() throws Throwable {
        try {
            nDeleteProxy(this.mNativeProxy);
            this.mNativeProxy = 0L;
        } finally {
            super.finalize();
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class SimpleRenderer {
        private final FrameInfo mFrameInfo = new FrameInfo();
        private final float mLightY;
        private final float mLightZ;
        private long mNativeProxy;
        private final RenderNode mRootNode;
        private Surface mSurface;

        public SimpleRenderer(Context context, String str, Surface surface) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.Lighting, 0, 0);
            this.mLightY = obtainStyledAttributes.getDimension(3, 0.0f);
            this.mLightZ = obtainStyledAttributes.getDimension(4, 0.0f);
            float dimension = obtainStyledAttributes.getDimension(2, 0.0f);
            int i = (int) ((obtainStyledAttributes.getFloat(0, 0.0f) * 255.0f) + 0.5f);
            int i2 = (int) ((obtainStyledAttributes.getFloat(1, 0.0f) * 255.0f) + 0.5f);
            obtainStyledAttributes.recycle();
            long access$000 = ThreadedRenderer.access$000();
            this.mRootNode = RenderNode.adopt(access$000);
            this.mRootNode.setClipToBounds(false);
            this.mNativeProxy = ThreadedRenderer.nCreateProxy(true, access$000);
            ThreadedRenderer.nSetName(this.mNativeProxy, str);
            ProcessInitializer.sInstance.init(context, this.mNativeProxy);
            ThreadedRenderer.nLoadSystemProperties(this.mNativeProxy);
            ThreadedRenderer.nSetup(this.mNativeProxy, dimension, i, i2);
            this.mSurface = surface;
            ThreadedRenderer.nUpdateSurface(this.mNativeProxy, surface);
        }

        public void setLightCenter(Display display, int i, int i2) {
            display.getRealSize(new Point());
            ThreadedRenderer.nSetLightCenter(this.mNativeProxy, (r0.x / 2.0f) - i, this.mLightY - i2, this.mLightZ);
        }

        public RenderNode getRootNode() {
            return this.mRootNode;
        }

        public void draw(FrameDrawingCallback frameDrawingCallback) {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis() * TimeUtils.NANOS_PER_MS;
            this.mFrameInfo.setVsync(currentAnimationTimeMillis, currentAnimationTimeMillis);
            this.mFrameInfo.addFlags(4L);
            if (frameDrawingCallback != null) {
                ThreadedRenderer.nSetFrameCallback(this.mNativeProxy, frameDrawingCallback);
            }
            ThreadedRenderer.nSyncAndDrawFrame(this.mNativeProxy, this.mFrameInfo.mFrameInfo, this.mFrameInfo.mFrameInfo.length);
        }

        public void destroy() {
            this.mSurface = null;
            ThreadedRenderer.nDestroy(this.mNativeProxy, this.mRootNode.mNativeRenderNode);
        }

        protected void finalize() throws Throwable {
            try {
                ThreadedRenderer.nDeleteProxy(this.mNativeProxy);
                this.mNativeProxy = 0L;
            } finally {
                super.finalize();
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private static class ProcessInitializer {
        static ProcessInitializer sInstance = new ProcessInitializer();
        private Context mAppContext;
        private IGraphicsStats mGraphicsStatsService;
        private boolean mInitialized = false;
        private IGraphicsStatsCallback mGraphicsStatsCallback = new IGraphicsStatsCallback.Stub() { // from class: android.view.ThreadedRenderer.ProcessInitializer.1
            @Override // android.view.IGraphicsStatsCallback
            public void onRotateGraphicsStatsBuffer() throws RemoteException {
                ProcessInitializer.this.rotateBuffer();
            }
        };

        private ProcessInitializer() {
        }

        synchronized void init(Context context, long j) {
            if (this.mInitialized) {
                return;
            }
            this.mInitialized = true;
            this.mAppContext = context.getApplicationContext();
            initSched(j);
            if (this.mAppContext != null) {
                initGraphicsStats();
            }
        }

        private void initSched(long j) {
            try {
                ActivityManager.getService().setRenderThread(ThreadedRenderer.nGetRenderThreadTid(j));
            } catch (Throwable th) {
                Log.w(ThreadedRenderer.LOG_TAG, "Failed to set scheduler for RenderThread", th);
            }
        }

        private void initGraphicsStats() {
            try {
                IBinder service = ServiceManager.getService("graphicsstats");
                if (service == null) {
                    return;
                }
                this.mGraphicsStatsService = IGraphicsStats.Stub.asInterface(service);
                requestBuffer();
            } catch (Throwable th) {
                Log.w(ThreadedRenderer.LOG_TAG, "Could not acquire gfx stats buffer", th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void rotateBuffer() {
            ThreadedRenderer.nRotateProcessStatsBuffer();
            requestBuffer();
        }

        private void requestBuffer() {
            try {
                ParcelFileDescriptor requestBufferForProcess = this.mGraphicsStatsService.requestBufferForProcess(this.mAppContext.getApplicationInfo().packageName, this.mGraphicsStatsCallback);
                ThreadedRenderer.nSetProcessStatsBuffer(requestBufferForProcess.getFd());
                requestBufferForProcess.close();
            } catch (Throwable th) {
                Log.w(ThreadedRenderer.LOG_TAG, "Could not acquire gfx stats buffer", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addFrameMetricsObserver(FrameMetricsObserver frameMetricsObserver) {
        frameMetricsObserver.mNative = new VirtualRefBasePtr(nAddFrameMetricsObserver(this.mNativeProxy, frameMetricsObserver));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeFrameMetricsObserver(FrameMetricsObserver frameMetricsObserver) {
        nRemoveFrameMetricsObserver(this.mNativeProxy, frameMetricsObserver.mNative.get());
        frameMetricsObserver.mNative = null;
    }

    public static void setFPSDivisor(int i) {
        nHackySetRTAnimationsEnabled(i <= 1);
    }

    public static void setContextPriority(int i) {
        nSetContextPriority(i);
    }
}
