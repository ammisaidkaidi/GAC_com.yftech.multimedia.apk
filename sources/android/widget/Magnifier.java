package android.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.DisplayListCanvas;
import android.view.PixelCopy;
import android.view.RenderNode;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceHolder;
import android.view.SurfaceSession;
import android.view.SurfaceView;
import android.view.ThreadedRenderer;
import android.view.View;
import android.view.ViewRootImpl;
import android.widget.Magnifier;
import com.android.internal.util.Preconditions;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class Magnifier {
    private static final int NONEXISTENT_PREVIOUS_CONFIG_VALUE = -1;
    private static final HandlerThread sPixelCopyHandlerThread = new HandlerThread("magnifier pixel copy result handler");
    private final int mBitmapHeight;
    private final int mBitmapWidth;
    private Callback mCallback;
    private SurfaceInfo mContentCopySurface;
    private SurfaceInfo mParentSurface;
    private final View mView;
    private final int[] mViewCoordinatesInSurface;
    private InternalPopupWindow mWindow;
    private final float mWindowCornerRadius;
    private final float mWindowElevation;
    private final int mWindowHeight;
    private final int mWindowWidth;
    private final float mZoom;
    private final Point mWindowCoords = new Point();
    private final Point mCenterZoomCoords = new Point();
    private final Point mClampedCenterZoomCoords = new Point();
    private final Point mPrevStartCoordsInSurface = new Point(-1, -1);
    private final PointF mPrevPosInView = new PointF(-1.0f, -1.0f);
    private final Rect mPixelCopyRequestRect = new Rect();
    private final Object mLock = new Object();

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface Callback {
        void onOperationComplete();
    }

    static {
        sPixelCopyHandlerThread.start();
    }

    public Magnifier(View view) {
        this.mView = (View) Preconditions.checkNotNull(view);
        Context context = this.mView.getContext();
        this.mWindowWidth = context.getResources().getDimensionPixelSize(R.dimen.fast_scroller_minimum_touch_target);
        this.mWindowHeight = context.getResources().getDimensionPixelSize(R.dimen.expanded_group_conversation_message_padding);
        this.mWindowElevation = context.getResources().getDimension(R.dimen.emphasized_button_stroke_width);
        this.mWindowCornerRadius = getDeviceDefaultDialogCornerRadius();
        this.mZoom = context.getResources().getFloat(R.dimen.floating_toolbar_height);
        this.mBitmapWidth = Math.round(this.mWindowWidth / this.mZoom);
        this.mBitmapHeight = Math.round(this.mWindowHeight / this.mZoom);
        this.mViewCoordinatesInSurface = new int[2];
    }

    private float getDeviceDefaultDialogCornerRadius() {
        TypedArray obtainStyledAttributes = new ContextThemeWrapper(this.mView.getContext(), R.style.Theme.DeviceDefault).obtainStyledAttributes(new int[]{R.attr.dialogCornerRadius});
        float dimension = obtainStyledAttributes.getDimension(0, 0.0f);
        obtainStyledAttributes.recycle();
        return dimension;
    }

    public void show(float f, float f2) {
        float f3;
        float f4;
        float max = Math.max(0.0f, Math.min(f, this.mView.getWidth()));
        float max2 = Math.max(0.0f, Math.min(f2, this.mView.getHeight()));
        obtainSurfaces();
        obtainContentCoordinates(max, max2);
        obtainWindowCoordinates();
        int i = this.mClampedCenterZoomCoords.x - (this.mBitmapWidth / 2);
        int i2 = this.mClampedCenterZoomCoords.y - (this.mBitmapHeight / 2);
        if (max == this.mPrevPosInView.x && max2 == this.mPrevPosInView.y) {
            return;
        }
        if (this.mWindow == null) {
            synchronized (this.mLock) {
                f4 = max2;
                f3 = max;
                this.mWindow = new InternalPopupWindow(this.mView.getContext(), this.mView.getDisplay(), this.mParentSurface.mSurface, this.mWindowWidth, this.mWindowHeight, this.mWindowElevation, this.mWindowCornerRadius, Handler.getMain(), this.mLock, this.mCallback);
            }
        } else {
            f3 = max;
            f4 = max2;
        }
        performPixelCopy(i, i2, true);
        this.mPrevPosInView.x = f3;
        this.mPrevPosInView.y = f4;
    }

    public void dismiss() {
        if (this.mWindow != null) {
            synchronized (this.mLock) {
                this.mWindow.destroy();
                this.mWindow = null;
            }
            this.mPrevPosInView.x = -1.0f;
            this.mPrevPosInView.y = -1.0f;
            this.mPrevStartCoordsInSurface.x = -1;
            this.mPrevStartCoordsInSurface.y = -1;
        }
    }

    public void update() {
        if (this.mWindow != null) {
            obtainSurfaces();
            performPixelCopy(this.mPrevStartCoordsInSurface.x, this.mPrevStartCoordsInSurface.y, false);
        }
    }

    public int getWidth() {
        return this.mWindowWidth;
    }

    public int getHeight() {
        return this.mWindowHeight;
    }

    public float getZoom() {
        return this.mZoom;
    }

    public Point getWindowCoords() {
        if (this.mWindow == null) {
            return null;
        }
        Rect rect = this.mView.getViewRootImpl().mWindowAttributes.surfaceInsets;
        return new Point(this.mWindow.mLastDrawContentPositionX - rect.left, this.mWindow.mLastDrawContentPositionY - rect.top);
    }

    private void obtainSurfaces() {
        SurfaceHolder holder;
        Surface surface;
        ViewRootImpl viewRootImpl;
        Surface surface2;
        SurfaceInfo surfaceInfo = SurfaceInfo.NULL;
        if (this.mView.getViewRootImpl() != null && (surface2 = (viewRootImpl = this.mView.getViewRootImpl()).mSurface) != null && surface2.isValid()) {
            Rect rect = viewRootImpl.mWindowAttributes.surfaceInsets;
            surfaceInfo = new SurfaceInfo(surface2, viewRootImpl.getWidth() + rect.left + rect.right, viewRootImpl.getHeight() + rect.top + rect.bottom, true);
        }
        SurfaceInfo surfaceInfo2 = SurfaceInfo.NULL;
        if ((this.mView instanceof SurfaceView) && (surface = (holder = ((SurfaceView) this.mView).getHolder()).getSurface()) != null && surface.isValid()) {
            Rect surfaceFrame = holder.getSurfaceFrame();
            surfaceInfo2 = new SurfaceInfo(surface, surfaceFrame.right, surfaceFrame.bottom, false);
        }
        this.mParentSurface = surfaceInfo != SurfaceInfo.NULL ? surfaceInfo : surfaceInfo2;
        if (this.mView instanceof SurfaceView) {
            surfaceInfo = surfaceInfo2;
        }
        this.mContentCopySurface = surfaceInfo;
    }

    private void obtainContentCoordinates(float f, float f2) {
        this.mView.getLocationInSurface(this.mViewCoordinatesInSurface);
        if (!(this.mView instanceof SurfaceView)) {
            f += this.mViewCoordinatesInSurface[0];
            f2 += this.mViewCoordinatesInSurface[1];
        }
        this.mCenterZoomCoords.x = Math.round(f);
        this.mCenterZoomCoords.y = Math.round(f2);
        Rect rect = new Rect();
        this.mView.getGlobalVisibleRect(rect);
        if (this.mView.getViewRootImpl() != null) {
            Rect rect2 = this.mView.getViewRootImpl().mWindowAttributes.surfaceInsets;
            rect.offset(rect2.left, rect2.top);
        }
        if (this.mView instanceof SurfaceView) {
            rect.offset(-this.mViewCoordinatesInSurface[0], -this.mViewCoordinatesInSurface[1]);
        }
        this.mClampedCenterZoomCoords.x = Math.max(rect.left + (this.mBitmapWidth / 2), Math.min(this.mCenterZoomCoords.x, rect.right - (this.mBitmapWidth / 2)));
        this.mClampedCenterZoomCoords.y = this.mCenterZoomCoords.y;
    }

    private void obtainWindowCoordinates() {
        int dimensionPixelSize = this.mView.getContext().getResources().getDimensionPixelSize(R.dimen.face_unlock_height);
        this.mWindowCoords.x = this.mCenterZoomCoords.x - (this.mWindowWidth / 2);
        this.mWindowCoords.y = (this.mCenterZoomCoords.y - (this.mWindowHeight / 2)) - dimensionPixelSize;
        if (this.mParentSurface != this.mContentCopySurface) {
            this.mWindowCoords.x += this.mViewCoordinatesInSurface[0];
            this.mWindowCoords.y += this.mViewCoordinatesInSurface[1];
        }
    }

    private void performPixelCopy(int i, int i2, final boolean z) {
        Rect rect;
        if (this.mContentCopySurface.mSurface == null || !this.mContentCopySurface.mSurface.isValid()) {
            return;
        }
        int max = Math.max(0, Math.min(i, this.mContentCopySurface.mWidth - this.mBitmapWidth));
        int max2 = Math.max(0, Math.min(i2, this.mContentCopySurface.mHeight - this.mBitmapHeight));
        if (this.mParentSurface.mIsMainWindowSurface) {
            Rect systemWindowInsets = this.mView.getRootWindowInsets().getSystemWindowInsets();
            rect = new Rect(systemWindowInsets.left, systemWindowInsets.top, this.mParentSurface.mWidth - systemWindowInsets.right, this.mParentSurface.mHeight - systemWindowInsets.bottom);
        } else {
            rect = new Rect(0, 0, this.mParentSurface.mWidth, this.mParentSurface.mHeight);
        }
        final int max3 = Math.max(rect.left, Math.min(rect.right - this.mWindowWidth, this.mWindowCoords.x));
        final int max4 = Math.max(rect.top, Math.min(rect.bottom - this.mWindowHeight, this.mWindowCoords.y));
        this.mPixelCopyRequestRect.set(max, max2, this.mBitmapWidth + max, this.mBitmapHeight + max2);
        final InternalPopupWindow internalPopupWindow = this.mWindow;
        final Bitmap createBitmap = Bitmap.createBitmap(this.mBitmapWidth, this.mBitmapHeight, Bitmap.Config.ARGB_8888);
        PixelCopy.request(this.mContentCopySurface.mSurface, this.mPixelCopyRequestRect, createBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: android.widget.-$$Lambda$Magnifier$1ctRJdojBZQzahoS7og5wm1FKM4
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i3) {
                Magnifier.lambda$performPixelCopy$0(Magnifier.this, internalPopupWindow, z, max3, max4, createBitmap, i3);
            }
        }, sPixelCopyHandlerThread.getThreadHandler());
        this.mPrevStartCoordsInSurface.x = i;
        this.mPrevStartCoordsInSurface.y = i2;
    }

    public static /* synthetic */ void lambda$performPixelCopy$0(Magnifier magnifier, InternalPopupWindow internalPopupWindow, boolean z, int i, int i2, Bitmap bitmap, int i3) {
        synchronized (magnifier.mLock) {
            if (magnifier.mWindow != internalPopupWindow) {
                return;
            }
            if (z) {
                magnifier.mWindow.setContentPositionForNextDraw(i, i2);
            }
            magnifier.mWindow.updateContent(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class SurfaceInfo {
        public static final SurfaceInfo NULL = new SurfaceInfo(null, 0, 0, false);
        private int mHeight;
        private boolean mIsMainWindowSurface;
        private Surface mSurface;
        private int mWidth;

        SurfaceInfo(Surface surface, int i, int i2, boolean z) {
            this.mSurface = surface;
            this.mWidth = i;
            this.mHeight = i2;
            this.mIsMainWindowSurface = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class InternalPopupWindow {
        private static final int CONTENT_BITMAP_ALPHA = 242;
        private static final int SURFACE_Z = 5;
        private Bitmap mBitmap;
        private final RenderNode mBitmapRenderNode;
        private Callback mCallback;
        private final int mContentHeight;
        private final int mContentWidth;
        private final Display mDisplay;
        private boolean mFrameDrawScheduled;
        private final Handler mHandler;
        private int mLastDrawContentPositionX;
        private int mLastDrawContentPositionY;
        private final Object mLock;
        private final Runnable mMagnifierUpdater;
        private final int mOffsetX;
        private final int mOffsetY;
        private boolean mPendingWindowPositionUpdate;
        private final ThreadedRenderer.SimpleRenderer mRenderer;
        private final SurfaceControl mSurfaceControl;
        private final int mSurfaceHeight;
        private final SurfaceSession mSurfaceSession;
        private final int mSurfaceWidth;
        private int mWindowPositionX;
        private int mWindowPositionY;
        private boolean mFirstDraw = true;
        private final Object mDestroyLock = new Object();
        private final Surface mSurface = new Surface();

        InternalPopupWindow(Context context, Display display, Surface surface, int i, int i2, float f, float f2, Handler handler, Object obj, Callback callback) {
            this.mDisplay = display;
            this.mLock = obj;
            this.mCallback = callback;
            this.mContentWidth = i;
            this.mContentHeight = i2;
            this.mOffsetX = (int) (i * 0.1f);
            this.mOffsetY = (int) (i2 * 0.1f);
            this.mSurfaceWidth = this.mContentWidth + (this.mOffsetX * 2);
            this.mSurfaceHeight = this.mContentHeight + (this.mOffsetY * 2);
            this.mSurfaceSession = new SurfaceSession(surface);
            this.mSurfaceControl = new SurfaceControl.Builder(this.mSurfaceSession).setFormat(-3).setSize(this.mSurfaceWidth, this.mSurfaceHeight).setName("magnifier surface").setFlags(4).build();
            this.mSurface.copyFrom(this.mSurfaceControl);
            this.mRenderer = new ThreadedRenderer.SimpleRenderer(context, "magnifier renderer", this.mSurface);
            this.mBitmapRenderNode = createRenderNodeForBitmap("magnifier content", f, f2);
            DisplayListCanvas start = this.mRenderer.getRootNode().start(i, i2);
            try {
                start.insertReorderBarrier();
                start.drawRenderNode(this.mBitmapRenderNode);
                start.insertInorderBarrier();
                this.mRenderer.getRootNode().end(start);
                this.mHandler = handler;
                this.mMagnifierUpdater = new Runnable() { // from class: android.widget.-$$Lambda$Magnifier$InternalPopupWindow$t9Cn2sIi2LBUhAVikvRPKKoAwIU
                    @Override // java.lang.Runnable
                    public final void run() {
                        Magnifier.InternalPopupWindow.this.doDraw();
                    }
                };
                this.mFrameDrawScheduled = false;
            } catch (Throwable th) {
                this.mRenderer.getRootNode().end(start);
                throw th;
            }
        }

        private RenderNode createRenderNodeForBitmap(String str, float f, float f2) {
            RenderNode create = RenderNode.create(str, null);
            create.setLeftTopRightBottom(this.mOffsetX, this.mOffsetY, this.mOffsetX + this.mContentWidth, this.mOffsetY + this.mContentHeight);
            create.setElevation(f);
            Outline outline = new Outline();
            outline.setRoundRect(0, 0, this.mContentWidth, this.mContentHeight, f2);
            outline.setAlpha(1.0f);
            create.setOutline(outline);
            create.setClipToOutline(true);
            DisplayListCanvas start = create.start(this.mContentWidth, this.mContentHeight);
            try {
                start.drawColor(-16711936);
                return create;
            } finally {
                create.end(start);
            }
        }

        public void setContentPositionForNextDraw(int i, int i2) {
            this.mWindowPositionX = i - this.mOffsetX;
            this.mWindowPositionY = i2 - this.mOffsetY;
            this.mPendingWindowPositionUpdate = true;
            requestUpdate();
        }

        public void updateContent(Bitmap bitmap) {
            if (this.mBitmap != null) {
                this.mBitmap.recycle();
            }
            this.mBitmap = bitmap;
            requestUpdate();
        }

        private void requestUpdate() {
            if (this.mFrameDrawScheduled) {
                return;
            }
            Message obtain = Message.obtain(this.mHandler, this.mMagnifierUpdater);
            obtain.setAsynchronous(true);
            obtain.sendToTarget();
            this.mFrameDrawScheduled = true;
        }

        public void destroy() {
            synchronized (this.mDestroyLock) {
                this.mSurface.destroy();
            }
            synchronized (this.mLock) {
                this.mRenderer.destroy();
                this.mSurfaceControl.destroy();
                this.mSurfaceSession.kill();
                this.mBitmapRenderNode.destroy();
                this.mHandler.removeCallbacks(this.mMagnifierUpdater);
                if (this.mBitmap != null) {
                    this.mBitmap.recycle();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0086  */
        /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void doDraw() {
            ThreadedRenderer.FrameDrawingCallback frameDrawingCallback;
            synchronized (this.mLock) {
                if (!this.mSurface.isValid()) {
                    return;
                }
                DisplayListCanvas start = this.mBitmapRenderNode.start(this.mContentWidth, this.mContentHeight);
                try {
                    start.drawColor(-1);
                    Rect rect = new Rect(0, 0, this.mBitmap.getWidth(), this.mBitmap.getHeight());
                    Rect rect2 = new Rect(0, 0, this.mContentWidth, this.mContentHeight);
                    Paint paint = new Paint();
                    paint.setFilterBitmap(true);
                    paint.setAlpha(242);
                    start.drawBitmap(this.mBitmap, rect, rect2, paint);
                    this.mBitmapRenderNode.end(start);
                    if (!this.mPendingWindowPositionUpdate && !this.mFirstDraw) {
                        frameDrawingCallback = null;
                        this.mLastDrawContentPositionX = this.mWindowPositionX + this.mOffsetX;
                        this.mLastDrawContentPositionY = this.mWindowPositionY + this.mOffsetY;
                        this.mFrameDrawScheduled = false;
                        this.mRenderer.draw(frameDrawingCallback);
                        if (this.mCallback == null) {
                            this.mCallback.onOperationComplete();
                            return;
                        }
                        return;
                    }
                    final boolean z = this.mFirstDraw;
                    this.mFirstDraw = false;
                    final boolean z2 = this.mPendingWindowPositionUpdate;
                    this.mPendingWindowPositionUpdate = false;
                    final int i = this.mWindowPositionX;
                    final int i2 = this.mWindowPositionY;
                    frameDrawingCallback = new ThreadedRenderer.FrameDrawingCallback() { // from class: android.widget.-$$Lambda$Magnifier$InternalPopupWindow$vZThyvjDQhg2J1GAeOWCNqy2iiw
                        @Override // android.view.ThreadedRenderer.FrameDrawingCallback
                        public final void onFrameDraw(long j) {
                            Magnifier.InternalPopupWindow.lambda$doDraw$0(Magnifier.InternalPopupWindow.this, i, i2, z2, z, j);
                        }
                    };
                    this.mLastDrawContentPositionX = this.mWindowPositionX + this.mOffsetX;
                    this.mLastDrawContentPositionY = this.mWindowPositionY + this.mOffsetY;
                    this.mFrameDrawScheduled = false;
                    this.mRenderer.draw(frameDrawingCallback);
                    if (this.mCallback == null) {
                    }
                } catch (Throwable th) {
                    this.mBitmapRenderNode.end(start);
                    throw th;
                }
            }
        }

        public static /* synthetic */ void lambda$doDraw$0(InternalPopupWindow internalPopupWindow, int i, int i2, boolean z, boolean z2, long j) {
            synchronized (internalPopupWindow.mDestroyLock) {
                if (internalPopupWindow.mSurface.isValid()) {
                    synchronized (internalPopupWindow.mLock) {
                        internalPopupWindow.mRenderer.setLightCenter(internalPopupWindow.mDisplay, i, i2);
                        SurfaceControl.openTransaction();
                        internalPopupWindow.mSurfaceControl.deferTransactionUntil(internalPopupWindow.mSurface, j);
                        if (z) {
                            internalPopupWindow.mSurfaceControl.setPosition(i, i2);
                        }
                        if (z2) {
                            internalPopupWindow.mSurfaceControl.setLayer(5);
                            internalPopupWindow.mSurfaceControl.show();
                        }
                        SurfaceControl.closeTransaction();
                    }
                }
            }
        }
    }

    public void setOnOperationCompleteCallback(Callback callback) {
        this.mCallback = callback;
        if (this.mWindow != null) {
            this.mWindow.mCallback = callback;
        }
    }

    public Bitmap getContent() {
        Bitmap createScaledBitmap;
        if (this.mWindow == null) {
            return null;
        }
        synchronized (this.mWindow.mLock) {
            createScaledBitmap = Bitmap.createScaledBitmap(this.mWindow.mBitmap, this.mWindowWidth, this.mWindowHeight, true);
        }
        return createScaledBitmap;
    }

    public Rect getWindowPositionOnScreen() {
        int[] iArr = new int[2];
        this.mView.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        this.mView.getLocationInSurface(iArr2);
        int i = (this.mWindowCoords.x + iArr[0]) - iArr2[0];
        int i2 = (this.mWindowCoords.y + iArr[1]) - iArr2[1];
        return new Rect(i, i2, this.mWindowWidth + i, this.mWindowHeight + i2);
    }

    public static PointF getMagnifierDefaultSize() {
        Resources system = Resources.getSystem();
        float f = system.getDisplayMetrics().density;
        PointF pointF = new PointF();
        pointF.x = system.getDimension(R.dimen.fast_scroller_minimum_touch_target) / f;
        pointF.y = system.getDimension(R.dimen.expanded_group_conversation_message_padding) / f;
        return pointF;
    }
}
