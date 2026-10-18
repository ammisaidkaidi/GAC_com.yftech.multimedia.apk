package android.view;

import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceControl;
import android.view.SurfaceHolder;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import com.android.internal.view.SurfaceCallbackHelper;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: /home/user/work/dex/classes2.dex */
public class SurfaceView extends View implements ViewRootImpl.WindowStoppedCallback {
    private static final boolean DEBUG = false;
    private static final String TAG = "SurfaceView";
    private boolean mAttachedToWindow;
    final ArrayList<SurfaceHolder.Callback> mCallbacks;
    final Configuration mConfiguration;
    SurfaceControl mDeferredDestroySurfaceControl;
    boolean mDrawFinished;
    private final ViewTreeObserver.OnPreDrawListener mDrawListener;
    boolean mDrawingStopped;
    int mFormat;
    private boolean mGlobalListenersAdded;
    boolean mHaveFrame;
    boolean mIsCreating;
    long mLastLockTime;
    int mLastSurfaceHeight;
    int mLastSurfaceWidth;
    boolean mLastWindowVisibility;
    final int[] mLocation;
    private int mPendingReportDraws;
    private Rect mRTLastReportedPosition;
    int mRequestedFormat;
    int mRequestedHeight;
    boolean mRequestedVisible;
    int mRequestedWidth;
    private volatile boolean mRtHandlingPositionUpdates;
    private SurfaceControl.Transaction mRtTransaction;
    final Rect mScreenRect;
    private final ViewTreeObserver.OnScrollChangedListener mScrollChangedListener;
    int mSubLayer;
    final Surface mSurface;
    SurfaceControlWithBackground mSurfaceControl;
    boolean mSurfaceCreated;
    private int mSurfaceFlags;
    final Rect mSurfaceFrame;
    int mSurfaceHeight;
    private final SurfaceHolder mSurfaceHolder;
    final ReentrantLock mSurfaceLock;
    SurfaceSession mSurfaceSession;
    int mSurfaceWidth;
    final Rect mTmpRect;
    private CompatibilityInfo.Translator mTranslator;
    boolean mViewVisibility;
    boolean mVisible;
    int mWindowSpaceLeft;
    int mWindowSpaceTop;
    boolean mWindowStopped;
    boolean mWindowVisibility;

    protected void applyChildSurfaceTransaction_renderWorker(SurfaceControl.Transaction transaction, Surface surface, long j) {
    }

    public SurfaceView(Context context) {
        this(context, null);
    }

    public SurfaceView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SurfaceView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public SurfaceView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mCallbacks = new ArrayList<>();
        this.mLocation = new int[2];
        this.mSurfaceLock = new ReentrantLock();
        this.mSurface = new Surface();
        this.mDrawingStopped = true;
        this.mDrawFinished = false;
        this.mScreenRect = new Rect();
        this.mTmpRect = new Rect();
        this.mConfiguration = new Configuration();
        this.mSubLayer = -2;
        this.mIsCreating = false;
        this.mRtHandlingPositionUpdates = false;
        this.mScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.view.SurfaceView.1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                SurfaceView.this.updateSurface();
            }
        };
        this.mDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: android.view.SurfaceView.2
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                SurfaceView.this.mHaveFrame = SurfaceView.this.getWidth() > 0 && SurfaceView.this.getHeight() > 0;
                SurfaceView.this.updateSurface();
                return true;
            }
        };
        this.mRequestedVisible = false;
        this.mWindowVisibility = false;
        this.mLastWindowVisibility = false;
        this.mViewVisibility = false;
        this.mWindowStopped = false;
        this.mRequestedWidth = -1;
        this.mRequestedHeight = -1;
        this.mRequestedFormat = 4;
        this.mHaveFrame = false;
        this.mSurfaceCreated = false;
        this.mLastLockTime = 0L;
        this.mVisible = false;
        this.mWindowSpaceLeft = -1;
        this.mWindowSpaceTop = -1;
        this.mSurfaceWidth = -1;
        this.mSurfaceHeight = -1;
        this.mFormat = -1;
        this.mSurfaceFrame = new Rect();
        this.mLastSurfaceWidth = -1;
        this.mLastSurfaceHeight = -1;
        this.mSurfaceFlags = 4;
        this.mRtTransaction = new SurfaceControl.Transaction();
        this.mRTLastReportedPosition = new Rect();
        this.mSurfaceHolder = new AnonymousClass3();
        this.mRenderNode.requestPositionUpdates(this);
        setWillNotDraw(true);
    }

    public SurfaceHolder getHolder() {
        return this.mSurfaceHolder;
    }

    private void updateRequestedVisibility() {
        this.mRequestedVisible = this.mViewVisibility && this.mWindowVisibility && !this.mWindowStopped;
    }

    @Override // android.view.ViewRootImpl.WindowStoppedCallback
    public void windowStopped(boolean z) {
        this.mWindowStopped = z;
        updateRequestedVisibility();
        updateSurface();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getViewRootImpl().addWindowStoppedCallback(this);
        this.mWindowStopped = false;
        this.mViewVisibility = getVisibility() == 0;
        updateRequestedVisibility();
        this.mAttachedToWindow = true;
        this.mParent.requestTransparentRegion(this);
        if (this.mGlobalListenersAdded) {
            return;
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        viewTreeObserver.addOnScrollChangedListener(this.mScrollChangedListener);
        viewTreeObserver.addOnPreDrawListener(this.mDrawListener);
        this.mGlobalListenersAdded = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.mWindowVisibility = i == 0;
        updateRequestedVisibility();
        updateSurface();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = false;
        this.mViewVisibility = i == 0;
        if (this.mWindowVisibility && this.mViewVisibility && !this.mWindowStopped) {
            z = true;
        }
        if (z != this.mRequestedVisible) {
            requestLayout();
        }
        this.mRequestedVisible = z;
        updateSurface();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performDrawFinished() {
        if (this.mPendingReportDraws > 0) {
            this.mDrawFinished = true;
            if (this.mAttachedToWindow) {
                notifyDrawFinished();
                invalidate();
                return;
            }
            return;
        }
        Log.e(TAG, System.identityHashCode(this) + "finished drawing but no pending report draw (extra call to draw completion runnable?)");
    }

    void notifyDrawFinished() {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.pendingDrawFinished();
        }
        this.mPendingReportDraws--;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDetachedFromWindow() {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.removeWindowStoppedCallback(this);
        }
        this.mAttachedToWindow = false;
        if (this.mGlobalListenersAdded) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            viewTreeObserver.removeOnScrollChangedListener(this.mScrollChangedListener);
            viewTreeObserver.removeOnPreDrawListener(this.mDrawListener);
            this.mGlobalListenersAdded = false;
        }
        while (this.mPendingReportDraws > 0) {
            notifyDrawFinished();
        }
        this.mRequestedVisible = false;
        updateSurface();
        if (this.mSurfaceControl != null) {
            this.mSurfaceControl.destroy();
        }
        this.mSurfaceControl = null;
        this.mHaveFrame = false;
        super.onDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int defaultSize;
        int defaultSize2;
        if (this.mRequestedWidth >= 0) {
            defaultSize = resolveSizeAndState(this.mRequestedWidth, i, 0);
        } else {
            defaultSize = getDefaultSize(0, i);
        }
        if (this.mRequestedHeight >= 0) {
            defaultSize2 = resolveSizeAndState(this.mRequestedHeight, i2, 0);
        } else {
            defaultSize2 = getDefaultSize(0, i2);
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        updateSurface();
        return frame;
    }

    @Override // android.view.View
    public boolean gatherTransparentRegion(Region region) {
        boolean z;
        if (isAboveParent() || !this.mDrawFinished) {
            return super.gatherTransparentRegion(region);
        }
        if ((this.mPrivateFlags & 128) == 0) {
            z = super.gatherTransparentRegion(region);
        } else {
            if (region != null) {
                int width = getWidth();
                int height = getHeight();
                if (width > 0 && height > 0) {
                    getLocationInWindow(this.mLocation);
                    int i = this.mLocation[0];
                    int i2 = this.mLocation[1];
                    region.op(i, i2, i + width, i2 + height, Region.Op.UNION);
                }
            }
            z = true;
        }
        if (PixelFormat.formatHasAlpha(this.mRequestedFormat)) {
            return false;
        }
        return z;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.mDrawFinished && !isAboveParent() && (this.mPrivateFlags & 128) == 0) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        super.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (this.mDrawFinished && !isAboveParent() && (this.mPrivateFlags & 128) == 128) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        super.dispatchDraw(canvas);
    }

    public void setZOrderMediaOverlay(boolean z) {
        this.mSubLayer = z ? -1 : -2;
    }

    public void setZOrderOnTop(boolean z) {
        if (z) {
            this.mSubLayer = 1;
        } else {
            this.mSubLayer = -2;
        }
    }

    public void setSecure(boolean z) {
        if (z) {
            this.mSurfaceFlags |= 128;
        } else {
            this.mSurfaceFlags &= -129;
        }
    }

    private void updateOpaqueFlag() {
        if (!PixelFormat.formatHasAlpha(this.mRequestedFormat)) {
            this.mSurfaceFlags |= 1024;
        } else {
            this.mSurfaceFlags &= -1025;
        }
    }

    private Rect getParentSurfaceInsets() {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl == null) {
            return null;
        }
        return viewRootImpl.mWindowAttributes.surfaceInsets;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0245 A[Catch: all -> 0x0393, TryCatch #1 {all -> 0x0393, blocks: (B:91:0x01d5, B:103:0x022e, B:108:0x0239, B:110:0x0245, B:111:0x026c, B:113:0x0278, B:117:0x0280, B:199:0x0252, B:204:0x038f, B:205:0x0392, B:93:0x01da, B:95:0x01e5, B:98:0x01f4, B:101:0x0225, B:201:0x01f8, B:202:0x01eb), top: B:90:0x01d5, outer: #3, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x029b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02ab A[Catch: all -> 0x0291, TryCatch #0 {all -> 0x0291, blocks: (B:195:0x028b, B:121:0x0296, B:126:0x02a1, B:128:0x02ab, B:130:0x02b3), top: B:194:0x028b }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02cf A[Catch: all -> 0x02d7, TryCatch #4 {all -> 0x02d7, blocks: (B:141:0x02b5, B:145:0x02be, B:147:0x02c6, B:149:0x02cf, B:151:0x02dd, B:153:0x02eb, B:155:0x02f4, B:157:0x02fc, B:161:0x0304, B:163:0x030b, B:164:0x030f, B:166:0x0313, B:175:0x0341, B:176:0x0345, B:179:0x0329, B:180:0x032d, B:182:0x0331), top: B:140:0x02b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02dd A[Catch: all -> 0x02d7, TryCatch #4 {all -> 0x02d7, blocks: (B:141:0x02b5, B:145:0x02be, B:147:0x02c6, B:149:0x02cf, B:151:0x02dd, B:153:0x02eb, B:155:0x02f4, B:157:0x02fc, B:161:0x0304, B:163:0x030b, B:164:0x030f, B:166:0x0313, B:175:0x0341, B:176:0x0345, B:179:0x0329, B:180:0x032d, B:182:0x0331), top: B:140:0x02b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02f4 A[Catch: all -> 0x02d7, TryCatch #4 {all -> 0x02d7, blocks: (B:141:0x02b5, B:145:0x02be, B:147:0x02c6, B:149:0x02cf, B:151:0x02dd, B:153:0x02eb, B:155:0x02f4, B:157:0x02fc, B:161:0x0304, B:163:0x030b, B:164:0x030f, B:166:0x0313, B:175:0x0341, B:176:0x0345, B:179:0x0329, B:180:0x032d, B:182:0x0331), top: B:140:0x02b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x030b A[Catch: all -> 0x02d7, TryCatch #4 {all -> 0x02d7, blocks: (B:141:0x02b5, B:145:0x02be, B:147:0x02c6, B:149:0x02cf, B:151:0x02dd, B:153:0x02eb, B:155:0x02f4, B:157:0x02fc, B:161:0x0304, B:163:0x030b, B:164:0x030f, B:166:0x0313, B:175:0x0341, B:176:0x0345, B:179:0x0329, B:180:0x032d, B:182:0x0331), top: B:140:0x02b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0313 A[Catch: all -> 0x02d7, LOOP:1: B:165:0x0311->B:166:0x0313, LOOP_END, TryCatch #4 {all -> 0x02d7, blocks: (B:141:0x02b5, B:145:0x02be, B:147:0x02c6, B:149:0x02cf, B:151:0x02dd, B:153:0x02eb, B:155:0x02f4, B:157:0x02fc, B:161:0x0304, B:163:0x030b, B:164:0x030f, B:166:0x0313, B:175:0x0341, B:176:0x0345, B:179:0x0329, B:180:0x032d, B:182:0x0331), top: B:140:0x02b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0329 A[Catch: all -> 0x02d7, TryCatch #4 {all -> 0x02d7, blocks: (B:141:0x02b5, B:145:0x02be, B:147:0x02c6, B:149:0x02cf, B:151:0x02dd, B:153:0x02eb, B:155:0x02f4, B:157:0x02fc, B:161:0x0304, B:163:0x030b, B:164:0x030f, B:166:0x0313, B:175:0x0341, B:176:0x0345, B:179:0x0329, B:180:0x032d, B:182:0x0331), top: B:140:0x02b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0331 A[Catch: all -> 0x02d7, LOOP:2: B:181:0x032f->B:182:0x0331, LOOP_END, TryCatch #4 {all -> 0x02d7, blocks: (B:141:0x02b5, B:145:0x02be, B:147:0x02c6, B:149:0x02cf, B:151:0x02dd, B:153:0x02eb, B:155:0x02f4, B:157:0x02fc, B:161:0x0304, B:163:0x030b, B:164:0x030f, B:166:0x0313, B:175:0x0341, B:176:0x0345, B:179:0x0329, B:180:0x032d, B:182:0x0331), top: B:140:0x02b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0364 A[Catch: Exception -> 0x039a, TryCatch #3 {Exception -> 0x039a, blocks: (B:79:0x011c, B:81:0x015e, B:82:0x0165, B:84:0x0174, B:87:0x01a8, B:88:0x01ce, B:118:0x0284, B:134:0x0376, B:136:0x037c, B:138:0x0380, B:139:0x038d, B:185:0x035e, B:187:0x0364, B:189:0x0368, B:207:0x0394, B:208:0x0399, B:210:0x01c9, B:91:0x01d5, B:103:0x022e, B:108:0x0239, B:110:0x0245, B:111:0x026c, B:113:0x0278, B:117:0x0280, B:199:0x0252, B:204:0x038f, B:205:0x0392, B:93:0x01da, B:95:0x01e5, B:98:0x01f4, B:101:0x0225, B:201:0x01f8, B:202:0x01eb), top: B:78:0x011c, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x028b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0252 A[Catch: all -> 0x0393, TryCatch #1 {all -> 0x0393, blocks: (B:91:0x01d5, B:103:0x022e, B:108:0x0239, B:110:0x0245, B:111:0x026c, B:113:0x0278, B:117:0x0280, B:199:0x0252, B:204:0x038f, B:205:0x0392, B:93:0x01da, B:95:0x01e5, B:98:0x01f4, B:101:0x0225, B:201:0x01f8, B:202:0x01eb), top: B:90:0x01d5, outer: #3, inners: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void updateSurface() {
        ViewRootImpl viewRootImpl;
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        boolean z4;
        Throwable th;
        SurfaceHolder.Callback[] callbackArr;
        if (!this.mHaveFrame || (viewRootImpl = getViewRootImpl()) == null || viewRootImpl.mSurface == null || !viewRootImpl.mSurface.isValid()) {
            return;
        }
        this.mTranslator = viewRootImpl.mTranslator;
        if (this.mTranslator != null) {
            this.mSurface.setCompatibilityTranslator(this.mTranslator);
        }
        int i2 = this.mRequestedWidth;
        if (i2 <= 0) {
            i2 = getWidth();
        }
        int i3 = this.mRequestedHeight;
        if (i3 <= 0) {
            i3 = getHeight();
        }
        boolean z5 = false;
        boolean z6 = this.mFormat != this.mRequestedFormat;
        boolean z7 = this.mVisible != this.mRequestedVisible;
        boolean z8 = (this.mSurfaceControl == null || z6 || z7) && this.mRequestedVisible;
        boolean z9 = (this.mSurfaceWidth == i2 && this.mSurfaceHeight == i3) ? false : true;
        boolean z10 = this.mWindowVisibility != this.mLastWindowVisibility;
        if (z8 || z6 || z9 || z7 || z10) {
            getLocationInWindow(this.mLocation);
            try {
                boolean z11 = this.mRequestedVisible;
                this.mVisible = z11;
                this.mWindowSpaceLeft = this.mLocation[0];
                this.mWindowSpaceTop = this.mLocation[1];
                this.mSurfaceWidth = i2;
                this.mSurfaceHeight = i3;
                this.mFormat = this.mRequestedFormat;
                this.mLastWindowVisibility = this.mWindowVisibility;
                this.mScreenRect.left = this.mWindowSpaceLeft;
                this.mScreenRect.top = this.mWindowSpaceTop;
                this.mScreenRect.right = this.mWindowSpaceLeft + getWidth();
                this.mScreenRect.bottom = this.mWindowSpaceTop + getHeight();
                if (this.mTranslator != null) {
                    this.mTranslator.translateRectInAppWindowToScreen(this.mScreenRect);
                }
                Rect parentSurfaceInsets = getParentSurfaceInsets();
                this.mScreenRect.offset(parentSurfaceInsets.left, parentSurfaceInsets.top);
                if (z8) {
                    this.mSurfaceSession = new SurfaceSession(viewRootImpl.mSurface);
                    this.mDeferredDestroySurfaceControl = this.mSurfaceControl;
                    updateOpaqueFlag();
                    this.mSurfaceControl = new SurfaceControlWithBackground("SurfaceView - " + viewRootImpl.getTitle().toString(), (this.mSurfaceFlags & 1024) != 0, new SurfaceControl.Builder(this.mSurfaceSession).setSize(this.mSurfaceWidth, this.mSurfaceHeight).setFormat(this.mFormat).setFlags(this.mSurfaceFlags));
                } else if (this.mSurfaceControl == null) {
                    return;
                }
                this.mSurfaceLock.lock();
                try {
                    this.mDrawingStopped = !z11;
                    SurfaceControl.openTransaction();
                    try {
                        this.mSurfaceControl.setLayer(this.mSubLayer);
                        if (this.mViewVisibility) {
                            this.mSurfaceControl.show();
                        } else {
                            this.mSurfaceControl.hide();
                        }
                        if (z9 || z8 || !this.mRtHandlingPositionUpdates) {
                            this.mSurfaceControl.setPosition(this.mScreenRect.left, this.mScreenRect.top);
                            this.mSurfaceControl.setMatrix(this.mScreenRect.width() / this.mSurfaceWidth, 0.0f, 0.0f, this.mScreenRect.height() / this.mSurfaceHeight);
                        }
                        if (z9) {
                            this.mSurfaceControl.setSize(this.mSurfaceWidth, this.mSurfaceHeight);
                        }
                        if (!z9 && !z8) {
                            z = false;
                            this.mSurfaceFrame.left = 0;
                            this.mSurfaceFrame.top = 0;
                            if (this.mTranslator != null) {
                                this.mSurfaceFrame.right = this.mSurfaceWidth;
                                this.mSurfaceFrame.bottom = this.mSurfaceHeight;
                            } else {
                                float f = this.mTranslator.applicationInvertedScale;
                                this.mSurfaceFrame.right = (int) ((this.mSurfaceWidth * f) + 0.5f);
                                this.mSurfaceFrame.bottom = (int) ((this.mSurfaceHeight * f) + 0.5f);
                            }
                            i = this.mSurfaceFrame.right;
                            int i4 = this.mSurfaceFrame.bottom;
                            if (this.mLastSurfaceWidth == i && this.mLastSurfaceHeight == i4) {
                                z2 = false;
                                this.mLastSurfaceWidth = i;
                                this.mLastSurfaceHeight = i4;
                                if (z11) {
                                    try {
                                        if (!this.mDrawFinished) {
                                            z3 = true;
                                            boolean z12 = z | z3;
                                            if (this.mSurfaceCreated && (z8 || (!z11 && z7))) {
                                                this.mSurfaceCreated = false;
                                                if (this.mSurface.isValid()) {
                                                    callbackArr = getSurfaceCallbacks();
                                                    int length = callbackArr.length;
                                                    int i5 = 0;
                                                    while (i5 < length) {
                                                        try {
                                                            callbackArr[i5].surfaceDestroyed(this.mSurfaceHolder);
                                                            i5++;
                                                            z5 = false;
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            z4 = false;
                                                            this.mIsCreating = z4;
                                                            if (this.mSurfaceControl != null) {
                                                                this.mSurface.release();
                                                                this.mSurfaceControl.destroy();
                                                                this.mSurfaceControl = null;
                                                            }
                                                            throw th;
                                                        }
                                                    }
                                                    if (this.mSurface.isValid()) {
                                                        this.mSurface.forceScopedDisconnect();
                                                    }
                                                    if (z8) {
                                                        this.mSurface.copyFrom(this.mSurfaceControl);
                                                    }
                                                    if (z9 && getContext().getApplicationInfo().targetSdkVersion < 26) {
                                                        this.mSurface.createFrom(this.mSurfaceControl);
                                                    }
                                                    if (z11 && this.mSurface.isValid()) {
                                                        if (!this.mSurfaceCreated && (z8 || z7)) {
                                                            this.mSurfaceCreated = true;
                                                            this.mIsCreating = true;
                                                            if (callbackArr == null) {
                                                                callbackArr = getSurfaceCallbacks();
                                                            }
                                                            for (SurfaceHolder.Callback callback : callbackArr) {
                                                                callback.surfaceCreated(this.mSurfaceHolder);
                                                            }
                                                        }
                                                        if (!z8 || z6 || z9 || z7 || z2) {
                                                            if (callbackArr == null) {
                                                                callbackArr = getSurfaceCallbacks();
                                                            }
                                                            for (SurfaceHolder.Callback callback2 : callbackArr) {
                                                                callback2.surfaceChanged(this.mSurfaceHolder, this.mFormat, i2, i3);
                                                            }
                                                        }
                                                        if (z12) {
                                                            if (callbackArr == null) {
                                                                callbackArr = getSurfaceCallbacks();
                                                            }
                                                            this.mPendingReportDraws++;
                                                            viewRootImpl.drawPending();
                                                            new SurfaceCallbackHelper(new Runnable() { // from class: android.view.-$$Lambda$SurfaceView$SyyzxOgxKwZMRgiiTGcRYbOU5JY
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    SurfaceView.this.onDrawFinished();
                                                                }
                                                            }).dispatchSurfaceRedrawNeededAsync(this.mSurfaceHolder, callbackArr);
                                                        }
                                                    }
                                                    this.mIsCreating = false;
                                                    if (this.mSurfaceControl != null || this.mSurfaceCreated) {
                                                        return;
                                                    }
                                                    this.mSurface.release();
                                                    this.mSurfaceControl.destroy();
                                                    this.mSurfaceControl = null;
                                                    return;
                                                }
                                            }
                                            callbackArr = null;
                                            if (z8) {
                                            }
                                            if (z9) {
                                                this.mSurface.createFrom(this.mSurfaceControl);
                                            }
                                            if (z11) {
                                                if (!this.mSurfaceCreated) {
                                                    this.mSurfaceCreated = true;
                                                    this.mIsCreating = true;
                                                    if (callbackArr == null) {
                                                    }
                                                    while (r10 < r7) {
                                                    }
                                                }
                                                if (!z8) {
                                                }
                                                if (callbackArr == null) {
                                                }
                                                while (r5 < r4) {
                                                }
                                                if (z12) {
                                                }
                                            }
                                            this.mIsCreating = false;
                                            if (this.mSurfaceControl != null) {
                                                return;
                                            } else {
                                                return;
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        z4 = z5;
                                        this.mIsCreating = z4;
                                        if (this.mSurfaceControl != null && !this.mSurfaceCreated) {
                                            this.mSurface.release();
                                            this.mSurfaceControl.destroy();
                                            this.mSurfaceControl = null;
                                        }
                                        throw th;
                                    }
                                }
                                z3 = false;
                                boolean z122 = z | z3;
                                if (this.mSurfaceCreated) {
                                    this.mSurfaceCreated = false;
                                    if (this.mSurface.isValid()) {
                                    }
                                }
                                callbackArr = null;
                                if (z8) {
                                }
                                if (z9) {
                                }
                                if (z11) {
                                }
                                this.mIsCreating = false;
                                if (this.mSurfaceControl != null) {
                                }
                            }
                            z2 = true;
                            this.mLastSurfaceWidth = i;
                            this.mLastSurfaceHeight = i4;
                            if (z11) {
                            }
                            z3 = false;
                            boolean z1222 = z | z3;
                            if (this.mSurfaceCreated) {
                            }
                            callbackArr = null;
                            if (z8) {
                            }
                            if (z9) {
                            }
                            if (z11) {
                            }
                            this.mIsCreating = false;
                            if (this.mSurfaceControl != null) {
                            }
                        }
                        z = true;
                        this.mSurfaceFrame.left = 0;
                        this.mSurfaceFrame.top = 0;
                        if (this.mTranslator != null) {
                        }
                        i = this.mSurfaceFrame.right;
                        int i42 = this.mSurfaceFrame.bottom;
                        if (this.mLastSurfaceWidth == i) {
                            z2 = false;
                            this.mLastSurfaceWidth = i;
                            this.mLastSurfaceHeight = i42;
                            if (z11) {
                            }
                            z3 = false;
                            boolean z12222 = z | z3;
                            if (this.mSurfaceCreated) {
                            }
                            callbackArr = null;
                            if (z8) {
                            }
                            if (z9) {
                            }
                            if (z11) {
                            }
                            this.mIsCreating = false;
                            if (this.mSurfaceControl != null) {
                            }
                        }
                        z2 = true;
                        this.mLastSurfaceWidth = i;
                        this.mLastSurfaceHeight = i42;
                        if (z11) {
                        }
                        z3 = false;
                        boolean z122222 = z | z3;
                        if (this.mSurfaceCreated) {
                        }
                        callbackArr = null;
                        if (z8) {
                        }
                        if (z9) {
                        }
                        if (z11) {
                        }
                        this.mIsCreating = false;
                        if (this.mSurfaceControl != null) {
                        }
                    } finally {
                        SurfaceControl.closeTransaction();
                    }
                } finally {
                    this.mSurfaceLock.unlock();
                }
            } catch (Exception e) {
                Log.e(TAG, "Exception configuring surface", e);
            }
        } else {
            getLocationInSurface(this.mLocation);
            boolean z13 = (this.mWindowSpaceLeft == this.mLocation[0] && this.mWindowSpaceTop == this.mLocation[1]) ? false : true;
            boolean z14 = (getWidth() == this.mScreenRect.width() && getHeight() == this.mScreenRect.height()) ? false : true;
            if (z13 || z14) {
                this.mWindowSpaceLeft = this.mLocation[0];
                this.mWindowSpaceTop = this.mLocation[1];
                this.mLocation[0] = getWidth();
                this.mLocation[1] = getHeight();
                this.mScreenRect.set(this.mWindowSpaceLeft, this.mWindowSpaceTop, this.mWindowSpaceLeft + this.mLocation[0], this.mWindowSpaceTop + this.mLocation[1]);
                if (this.mTranslator != null) {
                    this.mTranslator.translateRectInAppWindowToScreen(this.mScreenRect);
                }
                if (this.mSurfaceControl == null) {
                    return;
                }
                if (isHardwareAccelerated() && this.mRtHandlingPositionUpdates) {
                    return;
                }
                try {
                    setParentSpaceRectangle(this.mScreenRect, -1L);
                } catch (Exception e2) {
                    Log.e(TAG, "Exception configuring surface", e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDrawFinished() {
        if (this.mDeferredDestroySurfaceControl != null) {
            this.mDeferredDestroySurfaceControl.destroy();
            this.mDeferredDestroySurfaceControl = null;
        }
        runOnUiThread(new Runnable() { // from class: android.view.-$$Lambda$SurfaceView$Cs7TGTdA1lXf9qW8VOJAfEsMjdk
            @Override // java.lang.Runnable
            public final void run() {
                SurfaceView.this.performDrawFinished();
            }
        });
    }

    private void applySurfaceTransforms(SurfaceControl surfaceControl, Rect rect, long j) {
        if (j > 0) {
            this.mRtTransaction.deferTransactionUntilSurface(surfaceControl, getViewRootImpl().mSurface, j);
        }
        this.mRtTransaction.setPosition(surfaceControl, rect.left, rect.top);
        this.mRtTransaction.setMatrix(surfaceControl, rect.width() / this.mSurfaceWidth, 0.0f, 0.0f, rect.height() / this.mSurfaceHeight);
    }

    private void setParentSpaceRectangle(Rect rect, long j) {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        applySurfaceTransforms(this.mSurfaceControl, rect, j);
        applySurfaceTransforms(this.mSurfaceControl.mBackgroundControl, rect, j);
        applyChildSurfaceTransaction_renderWorker(this.mRtTransaction, viewRootImpl.mSurface, j);
        this.mRtTransaction.apply();
    }

    public final void updateSurfacePosition_renderWorker(long j, int i, int i2, int i3, int i4) {
        if (this.mSurfaceControl == null) {
            return;
        }
        this.mRtHandlingPositionUpdates = true;
        if (this.mRTLastReportedPosition.left == i && this.mRTLastReportedPosition.top == i2 && this.mRTLastReportedPosition.right == i3 && this.mRTLastReportedPosition.bottom == i4) {
            return;
        }
        try {
            this.mRTLastReportedPosition.set(i, i2, i3, i4);
            setParentSpaceRectangle(this.mRTLastReportedPosition, j);
        } catch (Exception e) {
            Log.e(TAG, "Exception from repositionChild", e);
        }
    }

    public final void surfacePositionLost_uiRtSync(long j) {
        this.mRTLastReportedPosition.setEmpty();
        if (this.mSurfaceControl != null && this.mRtHandlingPositionUpdates) {
            this.mRtHandlingPositionUpdates = false;
            if (this.mScreenRect.isEmpty() || this.mScreenRect.equals(this.mRTLastReportedPosition)) {
                return;
            }
            try {
                setParentSpaceRectangle(this.mScreenRect, j);
            } catch (Exception e) {
                Log.e(TAG, "Exception configuring surface", e);
            }
        }
    }

    private SurfaceHolder.Callback[] getSurfaceCallbacks() {
        SurfaceHolder.Callback[] callbackArr;
        synchronized (this.mCallbacks) {
            callbackArr = new SurfaceHolder.Callback[this.mCallbacks.size()];
            this.mCallbacks.toArray(callbackArr);
        }
        return callbackArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runOnUiThread(Runnable runnable) {
        Handler handler = getHandler();
        if (handler != null && handler.getLooper() != Looper.myLooper()) {
            handler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public boolean isFixedSize() {
        return (this.mRequestedWidth == -1 && this.mRequestedHeight == -1) ? false : true;
    }

    private boolean isAboveParent() {
        return this.mSubLayer >= 0;
    }

    public void setResizeBackgroundColor(int i) {
        this.mSurfaceControl.setBackgroundColor(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.view.SurfaceView$3, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class AnonymousClass3 implements SurfaceHolder {
        private static final String LOG_TAG = "SurfaceHolder";

        @Override // android.view.SurfaceHolder
        @Deprecated
        public void setType(int i) {
        }

        AnonymousClass3() {
        }

        @Override // android.view.SurfaceHolder
        public boolean isCreating() {
            return SurfaceView.this.mIsCreating;
        }

        @Override // android.view.SurfaceHolder
        public void addCallback(SurfaceHolder.Callback callback) {
            synchronized (SurfaceView.this.mCallbacks) {
                if (!SurfaceView.this.mCallbacks.contains(callback)) {
                    SurfaceView.this.mCallbacks.add(callback);
                }
            }
        }

        @Override // android.view.SurfaceHolder
        public void removeCallback(SurfaceHolder.Callback callback) {
            synchronized (SurfaceView.this.mCallbacks) {
                SurfaceView.this.mCallbacks.remove(callback);
            }
        }

        @Override // android.view.SurfaceHolder
        public void setFixedSize(int i, int i2) {
            if (SurfaceView.this.mRequestedWidth == i && SurfaceView.this.mRequestedHeight == i2) {
                return;
            }
            SurfaceView.this.mRequestedWidth = i;
            SurfaceView.this.mRequestedHeight = i2;
            SurfaceView.this.requestLayout();
        }

        @Override // android.view.SurfaceHolder
        public void setSizeFromLayout() {
            if (SurfaceView.this.mRequestedWidth == -1 && SurfaceView.this.mRequestedHeight == -1) {
                return;
            }
            SurfaceView surfaceView = SurfaceView.this;
            SurfaceView.this.mRequestedHeight = -1;
            surfaceView.mRequestedWidth = -1;
            SurfaceView.this.requestLayout();
        }

        @Override // android.view.SurfaceHolder
        public void setFormat(int i) {
            if (i == -1) {
                i = 4;
            }
            SurfaceView.this.mRequestedFormat = i;
            if (SurfaceView.this.mSurfaceControl != null) {
                SurfaceView.this.updateSurface();
            }
        }

        @Override // android.view.SurfaceHolder
        public void setKeepScreenOn(final boolean z) {
            SurfaceView.this.runOnUiThread(new Runnable() { // from class: android.view.-$$Lambda$SurfaceView$3$XvaZSTTyv1kHN4GtX5NDdmQTRp8
                @Override // java.lang.Runnable
                public final void run() {
                    SurfaceView.this.setKeepScreenOn(z);
                }
            });
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockCanvas() {
            return internalLockCanvas(null, false);
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockCanvas(Rect rect) {
            return internalLockCanvas(rect, false);
        }

        @Override // android.view.SurfaceHolder
        public Canvas lockHardwareCanvas() {
            return internalLockCanvas(null, true);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0034  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x003d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private Canvas internalLockCanvas(Rect rect, boolean z) {
            Canvas canvas;
            SurfaceView.this.mSurfaceLock.lock();
            if (!SurfaceView.this.mDrawingStopped && SurfaceView.this.mSurfaceControl != null) {
                try {
                    if (z) {
                        canvas = SurfaceView.this.mSurface.lockHardwareCanvas();
                    } else {
                        canvas = SurfaceView.this.mSurface.lockCanvas(rect);
                    }
                } catch (Exception e) {
                    Log.e(LOG_TAG, "Exception locking surface", e);
                }
                if (canvas == null) {
                    SurfaceView.this.mLastLockTime = SystemClock.uptimeMillis();
                    return canvas;
                }
                long uptimeMillis = SystemClock.uptimeMillis();
                long j = SurfaceView.this.mLastLockTime + 100;
                if (j > uptimeMillis) {
                    try {
                        Thread.sleep(j - uptimeMillis);
                    } catch (InterruptedException unused) {
                    }
                    uptimeMillis = SystemClock.uptimeMillis();
                }
                SurfaceView.this.mLastLockTime = uptimeMillis;
                SurfaceView.this.mSurfaceLock.unlock();
                return null;
            }
            canvas = null;
            if (canvas == null) {
            }
        }

        @Override // android.view.SurfaceHolder
        public void unlockCanvasAndPost(Canvas canvas) {
            SurfaceView.this.mSurface.unlockCanvasAndPost(canvas);
            SurfaceView.this.mSurfaceLock.unlock();
        }

        @Override // android.view.SurfaceHolder
        public Surface getSurface() {
            return SurfaceView.this.mSurface;
        }

        @Override // android.view.SurfaceHolder
        public Rect getSurfaceFrame() {
            return SurfaceView.this.mSurfaceFrame;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class SurfaceControlWithBackground extends SurfaceControl {
        SurfaceControl mBackgroundControl;
        private boolean mOpaque;
        public boolean mVisible;

        public SurfaceControlWithBackground(String str, boolean z, SurfaceControl.Builder builder) throws Exception {
            super(builder.setName(str).build());
            this.mOpaque = true;
            this.mVisible = false;
            this.mBackgroundControl = builder.setName("Background for -" + str).setFormat(1024).setColorLayer(true).build();
            this.mOpaque = z;
        }

        @Override // android.view.SurfaceControl
        public void setAlpha(float f) {
            super.setAlpha(f);
            this.mBackgroundControl.setAlpha(f);
        }

        @Override // android.view.SurfaceControl
        public void setLayer(int i) {
            super.setLayer(i);
            this.mBackgroundControl.setLayer(-3);
        }

        @Override // android.view.SurfaceControl
        public void setPosition(float f, float f2) {
            super.setPosition(f, f2);
            this.mBackgroundControl.setPosition(f, f2);
        }

        @Override // android.view.SurfaceControl
        public void setSize(int i, int i2) {
            super.setSize(i, i2);
            this.mBackgroundControl.setSize(i, i2);
        }

        @Override // android.view.SurfaceControl
        public void setWindowCrop(Rect rect) {
            super.setWindowCrop(rect);
            this.mBackgroundControl.setWindowCrop(rect);
        }

        @Override // android.view.SurfaceControl
        public void setFinalCrop(Rect rect) {
            super.setFinalCrop(rect);
            this.mBackgroundControl.setFinalCrop(rect);
        }

        @Override // android.view.SurfaceControl
        public void setLayerStack(int i) {
            super.setLayerStack(i);
            this.mBackgroundControl.setLayerStack(i);
        }

        @Override // android.view.SurfaceControl
        public void setOpaque(boolean z) {
            super.setOpaque(z);
            this.mOpaque = z;
            updateBackgroundVisibility();
        }

        @Override // android.view.SurfaceControl
        public void setSecure(boolean z) {
            super.setSecure(z);
        }

        @Override // android.view.SurfaceControl
        public void setMatrix(float f, float f2, float f3, float f4) {
            super.setMatrix(f, f2, f3, f4);
            this.mBackgroundControl.setMatrix(f, f2, f3, f4);
        }

        @Override // android.view.SurfaceControl
        public void hide() {
            super.hide();
            this.mVisible = false;
            updateBackgroundVisibility();
        }

        @Override // android.view.SurfaceControl
        public void show() {
            super.show();
            this.mVisible = true;
            updateBackgroundVisibility();
        }

        @Override // android.view.SurfaceControl
        public void destroy() {
            super.destroy();
            this.mBackgroundControl.destroy();
        }

        @Override // android.view.SurfaceControl
        public void release() {
            super.release();
            this.mBackgroundControl.release();
        }

        @Override // android.view.SurfaceControl
        public void setTransparentRegionHint(Region region) {
            super.setTransparentRegionHint(region);
            this.mBackgroundControl.setTransparentRegionHint(region);
        }

        @Override // android.view.SurfaceControl
        public void deferTransactionUntil(IBinder iBinder, long j) {
            super.deferTransactionUntil(iBinder, j);
            this.mBackgroundControl.deferTransactionUntil(iBinder, j);
        }

        @Override // android.view.SurfaceControl
        public void deferTransactionUntil(Surface surface, long j) {
            super.deferTransactionUntil(surface, j);
            this.mBackgroundControl.deferTransactionUntil(surface, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setBackgroundColor(int i) {
            float[] fArr = {Color.red(i) / 255.0f, Color.green(i) / 255.0f, Color.blue(i) / 255.0f};
            SurfaceControl.openTransaction();
            try {
                this.mBackgroundControl.setColor(fArr);
            } finally {
                SurfaceControl.closeTransaction();
            }
        }

        void updateBackgroundVisibility() {
            if (this.mOpaque && this.mVisible) {
                this.mBackgroundControl.show();
            } else {
                this.mBackgroundControl.hide();
            }
        }
    }
}
