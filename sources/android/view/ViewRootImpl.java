package android.view;

import android.R;
import android.animation.LayoutTransition;
import android.app.ActivityManager;
import android.app.ResourcesManager;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.content.res.CompatibilityInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PixelFormat;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.hardware.input.InputManager;
import android.media.AudioManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.Trace;
import android.util.AndroidRuntimeException;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LongArray;
import android.util.MergedConfiguration;
import android.util.Slog;
import android.util.SparseArray;
import android.util.TimeUtils;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.Choreographer;
import android.view.DisplayCutout;
import android.view.IWindow;
import android.view.InputDevice;
import android.view.InputQueue;
import android.view.KeyCharacterMap;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.ThreadedRenderer;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.IAccessibilityInteractionConnection;
import android.view.accessibility.IAccessibilityInteractionConnectionCallback;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.autofill.AutofillManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Scroller;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.os.IResultReceiver;
import com.android.internal.os.SomeArgs;
import com.android.internal.policy.PhoneFallbackEventHandler;
import com.android.internal.util.Preconditions;
import com.android.internal.view.BaseSurfaceHolder;
import com.android.internal.view.RootViewSurfaceTaker;
import com.android.internal.view.SurfaceCallbackHelper;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.concurrent.CountDownLatch;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class ViewRootImpl implements ViewParent, View.AttachInfo.Callbacks, ThreadedRenderer.DrawCallbacks {
    private static final boolean DBG = false;
    private static final boolean DEBUG_CONFIGURATION = false;
    private static final boolean DEBUG_DIALOG = false;
    private static final boolean DEBUG_DRAW = false;
    private static final boolean DEBUG_FPS = false;
    private static final boolean DEBUG_IMF = false;
    private static final boolean DEBUG_INPUT_RESIZE = false;
    private static final boolean DEBUG_INPUT_STAGES = false;
    private static final boolean DEBUG_KEEP_SCREEN_ON = false;
    private static final boolean DEBUG_LAYOUT = false;
    private static final boolean DEBUG_ORIENTATION = false;
    private static final boolean DEBUG_TRACKBALL = false;
    private static final boolean LOCAL_LOGV = false;
    private static final int MAX_QUEUED_INPUT_EVENT_POOL_SIZE = 10;
    static final int MAX_TRACKBALL_DELAY = 250;
    private static final int MSG_CHECK_FOCUS = 13;
    private static final int MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST = 21;
    private static final int MSG_CLOSE_SYSTEM_DIALOGS = 14;
    private static final int MSG_DIE = 3;
    private static final int MSG_DISPATCH_APP_VISIBILITY = 8;
    private static final int MSG_DISPATCH_DRAG_EVENT = 15;
    private static final int MSG_DISPATCH_DRAG_LOCATION_EVENT = 16;
    private static final int MSG_DISPATCH_GET_NEW_SURFACE = 9;
    private static final int MSG_DISPATCH_INPUT_EVENT = 7;
    private static final int MSG_DISPATCH_KEY_FROM_AUTOFILL = 12;
    private static final int MSG_DISPATCH_KEY_FROM_IME = 11;
    private static final int MSG_DISPATCH_SYSTEM_UI_VISIBILITY = 17;
    private static final int MSG_DISPATCH_WINDOW_SHOWN = 25;
    private static final int MSG_DRAW_FINISHED = 29;
    private static final int MSG_INVALIDATE = 1;
    private static final int MSG_INVALIDATE_RECT = 2;
    private static final int MSG_INVALIDATE_WORLD = 22;
    private static final int MSG_POINTER_CAPTURE_CHANGED = 28;
    private static final int MSG_PROCESS_INPUT_EVENTS = 19;
    private static final int MSG_REQUEST_KEYBOARD_SHORTCUTS = 26;
    private static final int MSG_RESIZED = 4;
    private static final int MSG_RESIZED_REPORT = 5;
    private static final int MSG_SYNTHESIZE_INPUT_EVENT = 24;
    private static final int MSG_UPDATE_CONFIGURATION = 18;
    private static final int MSG_UPDATE_POINTER_ICON = 27;
    private static final int MSG_WINDOW_FOCUS_CHANGED = 6;
    private static final int MSG_WINDOW_MOVED = 23;
    private static final boolean MT_RENDERER_AVAILABLE = true;
    public static final String PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX = "ro.emu.win_outset_bottom_px";
    private static final String PROPERTY_PROFILE_RENDERING = "viewroot.profile_rendering";
    private static final String TAG = "ViewRootImpl";
    private static boolean sAlwaysAssignFocus;
    View mAccessibilityFocusedHost;
    AccessibilityNodeInfo mAccessibilityFocusedVirtualView;
    AccessibilityInteractionController mAccessibilityInteractionController;
    final AccessibilityManager mAccessibilityManager;
    private ActivityConfigCallback mActivityConfigCallback;
    private boolean mActivityRelaunched;
    boolean mAdded;
    boolean mAddedTouchMode;
    private boolean mAppVisibilityChanged;
    boolean mApplyInsetsRequested;
    final View.AttachInfo mAttachInfo;
    AudioManager mAudioManager;
    final String mBasePackageName;
    private int mCanvasOffsetX;
    private int mCanvasOffsetY;
    Choreographer mChoreographer;
    int mClientWindowLayoutFlags;
    final ConsumeBatchedInputImmediatelyRunnable mConsumeBatchedInputImmediatelyRunnable;
    boolean mConsumeBatchedInputImmediatelyScheduled;
    boolean mConsumeBatchedInputScheduled;
    final ConsumeBatchedInputRunnable mConsumedBatchedInputRunnable;
    final Context mContext;
    int mCurScrollY;
    View mCurrentDragView;
    private final int mDensity;
    Rect mDirty;
    Display mDisplay;
    private final DisplayManager.DisplayListener mDisplayListener;
    final DisplayManager mDisplayManager;
    ClipDescription mDragDescription;
    private boolean mDragResizing;
    boolean mDrawingAllowed;
    int mDrawsNeededToReport;
    FallbackEventHandler mFallbackEventHandler;
    boolean mFirst;
    InputStage mFirstInputStage;
    InputStage mFirstPostImeInputStage;
    private boolean mForceNextConfigUpdate;
    boolean mForceNextWindowRelayout;
    private int mFpsNumFrames;
    boolean mFullRedrawNeeded;
    boolean mHadWindowFocus;
    final ViewRootHandler mHandler;
    int mHardwareXOffset;
    int mHardwareYOffset;
    boolean mHasHadWindowFocus;
    int mHeight;
    final HighContrastTextManager mHighContrastTextManager;
    InputChannel mInputChannel;
    protected final InputEventConsistencyVerifier mInputEventConsistencyVerifier;
    WindowInputEventReceiver mInputEventReceiver;
    InputQueue mInputQueue;
    InputQueue.Callback mInputQueueCallback;
    final InvalidateOnAnimationRunnable mInvalidateOnAnimationRunnable;
    private boolean mInvalidateRootRequested;
    public boolean mIsAnimating;
    boolean mIsCreating;
    boolean mIsDrawing;
    boolean mIsInTraversal;
    boolean mLastOverscanRequested;
    WeakReference<View> mLastScrolledFocus;
    int mLastSystemUiVisibility;
    int mLastTouchSource;
    boolean mLastWasImTarget;
    private WindowInsets mLastWindowInsets;
    boolean mLayoutRequested;
    volatile Object mLocalDragState;
    final WindowLeaked mLocation;
    boolean mLostWindowFocus;
    private boolean mNeedsRendererSetup;
    boolean mNewSurfaceNeeded;
    private ThreadedRenderer.FrameDrawingCallback mNextRtFrameCallback;
    private final int mNoncompatDensity;
    boolean mPendingAlwaysConsumeNavBar;
    int mPendingInputEventCount;
    QueuedInputEvent mPendingInputEventHead;
    QueuedInputEvent mPendingInputEventTail;
    private ArrayList<LayoutTransition> mPendingTransitions;
    boolean mPointerCapture;
    final Region mPreviousTransparentRegion;
    boolean mProcessInputEventsScheduled;
    private boolean mProfile;
    private boolean mProfileRendering;
    private QueuedInputEvent mQueuedInputEventPool;
    private int mQueuedInputEventPoolSize;
    private boolean mRemoved;
    private Choreographer.FrameCallback mRenderProfiler;
    private boolean mRenderProfilingEnabled;
    boolean mReportNextDraw;
    private int mResizeMode;
    boolean mScrollMayChange;
    int mScrollY;
    Scroller mScroller;
    SendWindowContentChangedAccessibilityEvent mSendWindowContentChangedAccessibilityEvent;
    int mSeq;
    int mSoftInputMode;
    BaseSurfaceHolder mSurfaceHolder;
    SurfaceHolder.Callback2 mSurfaceHolderCallback;
    InputStage mSyntheticInputStage;
    private String mTag;
    final int mTargetSdkVersion;
    HashSet<View> mTempHashSet;
    final Rect mTempRect;
    final Thread mThread;
    CompatibilityInfo.Translator mTranslator;
    final Region mTransparentRegion;
    int mTraversalBarrier;
    final TraversalRunnable mTraversalRunnable;
    public boolean mTraversalScheduled;
    boolean mUnbufferedInputDispatch;

    @GuardedBy("this")
    boolean mUpcomingInTouchMode;

    @GuardedBy("this")
    boolean mUpcomingWindowFocus;
    private boolean mUseMTRenderer;
    View mView;
    final ViewConfiguration mViewConfiguration;
    private int mViewLayoutDirectionInitial;
    int mViewVisibility;
    final Rect mVisRect;
    int mWidth;
    boolean mWillDrawSoon;
    final Rect mWinFrame;
    final W mWindow;
    CountDownLatch mWindowDrawCountDown;

    @GuardedBy("this")
    boolean mWindowFocusChanged;
    final IWindowSession mWindowSession;
    private final ArrayList<WindowStoppedCallback> mWindowStoppedCallbacks;
    static final ThreadLocal<HandlerActionQueue> sRunQueues = new ThreadLocal<>();
    static final ArrayList<Runnable> sFirstDrawHandlers = new ArrayList<>();
    static boolean sFirstDrawComplete = false;
    private static final ArrayList<ConfigChangedCallback> sConfigCallbacks = new ArrayList<>();
    private static boolean sCompatibilityDone = false;
    static final Interpolator mResizeInterpolator = new AccelerateDecelerateInterpolator();

    @GuardedBy("mWindowCallbacks")
    final ArrayList<WindowCallbacks> mWindowCallbacks = new ArrayList<>();
    final int[] mTmpLocation = new int[2];
    final TypedValue mTmpValue = new TypedValue();
    public final WindowManager.LayoutParams mWindowAttributes = new WindowManager.LayoutParams();
    boolean mAppVisible = true;
    private boolean mForceDecorViewVisibility = false;
    int mOrigWindowType = -1;
    boolean mStopped = false;
    boolean mIsAmbientMode = false;
    boolean mPausedForTransition = false;
    boolean mLastInCompatMode = false;
    String mPendingInputEventQueueLengthCounterName = "pq";
    private final UnhandledKeyManager mUnhandledKeyManager = new UnhandledKeyManager();
    boolean mWindowAttributesChanged = false;
    int mWindowAttributesChangesFlag = 0;
    public final Surface mSurface = new Surface();
    final Rect mPendingOverscanInsets = new Rect();
    final Rect mPendingVisibleInsets = new Rect();
    final Rect mPendingStableInsets = new Rect();
    final Rect mPendingContentInsets = new Rect();
    final Rect mPendingOutsets = new Rect();
    final Rect mPendingBackDropFrame = new Rect();
    final DisplayCutout.ParcelableWrapper mPendingDisplayCutout = new DisplayCutout.ParcelableWrapper(DisplayCutout.NO_CUTOUT);
    final ViewTreeObserver.InternalInsetsInfo mLastGivenInsets = new ViewTreeObserver.InternalInsetsInfo();
    final Rect mDispatchContentInsets = new Rect();
    final Rect mDispatchStableInsets = new Rect();
    DisplayCutout mDispatchDisplayCutout = DisplayCutout.NO_CUTOUT;
    private final Configuration mLastConfigurationFromResources = new Configuration();
    private final MergedConfiguration mLastReportedMergedConfiguration = new MergedConfiguration();
    private final MergedConfiguration mPendingMergedConfiguration = new MergedConfiguration();
    final PointF mDragPoint = new PointF();
    final PointF mLastTouchPoint = new PointF();
    private long mFpsStartTime = -1;
    private long mFpsPrevTime = -1;
    private int mPointerIconType = 1;
    private PointerIcon mCustomPointerIcon = null;
    final AccessibilityInteractionConnectionManager mAccessibilityInteractionConnectionManager = new AccessibilityInteractionConnectionManager();
    private boolean mInLayout = false;
    ArrayList<View> mLayoutRequesters = new ArrayList<>();
    boolean mHandlingLayoutInLayoutRequest = false;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface ActivityConfigCallback {
        void onConfigurationChanged(Configuration configuration, int i);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface ConfigChangedCallback {
        void onConfigurationChanged(Configuration configuration);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface WindowStoppedCallback {
        void windowStopped(boolean z);
    }

    @Override // android.view.ViewParent
    public void bringChildToFront(View view) {
    }

    @Override // android.view.ViewParent
    public boolean canResolveLayoutDirection() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean canResolveTextAlignment() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean canResolveTextDirection() {
        return true;
    }

    @Override // android.view.ViewParent
    public void childDrawableStateChanged(View view) {
    }

    @Override // android.view.ViewParent
    public void childHasTransientStateChanged(View view, boolean z) {
    }

    @Override // android.view.ViewParent
    public void createContextMenu(ContextMenu contextMenu) {
    }

    @Override // android.view.ViewParent
    public int getLayoutDirection() {
        return 0;
    }

    @Override // android.view.ViewParent
    public ViewParent getParent() {
        return null;
    }

    @Override // android.view.ViewParent
    public ViewParent getParentForAccessibility() {
        return null;
    }

    @Override // android.view.ViewParent
    public int getTextAlignment() {
        return 1;
    }

    @Override // android.view.ViewParent
    public int getTextDirection() {
        return 1;
    }

    @Override // android.view.ViewParent
    public boolean isLayoutDirectionResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isTextAlignmentResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean isTextDirectionResolved() {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean onNestedPrePerformAccessibilityAction(View view, int i, Bundle bundle) {
        return false;
    }

    @Override // android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
    }

    @Override // android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return false;
    }

    @Override // android.view.ViewParent
    public void onStopNestedScroll(View view) {
    }

    @Override // android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        return false;
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class SystemUiVisibilityInfo {
        int globalVisibility;
        int localChanges;
        int localValue;
        int seq;

        SystemUiVisibilityInfo() {
        }
    }

    public ViewRootImpl(Context context, Display display) {
        this.mInputEventConsistencyVerifier = InputEventConsistencyVerifier.isInstrumentationEnabled() ? new InputEventConsistencyVerifier(this, 0) : null;
        this.mTag = TAG;
        this.mProfile = false;
        this.mDisplayListener = new DisplayManager.DisplayListener() { // from class: android.view.ViewRootImpl.1
            private int toViewScreenState(int i) {
                return i == 1 ? 0 : 1;
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayAdded(int i) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayRemoved(int i) {
            }

            @Override // android.hardware.display.DisplayManager.DisplayListener
            public void onDisplayChanged(int i) {
                int i2;
                int state;
                if (ViewRootImpl.this.mView == null || ViewRootImpl.this.mDisplay.getDisplayId() != i || (i2 = ViewRootImpl.this.mAttachInfo.mDisplayState) == (state = ViewRootImpl.this.mDisplay.getState())) {
                    return;
                }
                ViewRootImpl.this.mAttachInfo.mDisplayState = state;
                ViewRootImpl.this.pokeDrawLockIfNeeded();
                if (i2 != 0) {
                    int viewScreenState = toViewScreenState(i2);
                    int viewScreenState2 = toViewScreenState(state);
                    if (viewScreenState != viewScreenState2) {
                        ViewRootImpl.this.mView.dispatchScreenStateChanged(viewScreenState2);
                    }
                    if (i2 == 1) {
                        ViewRootImpl.this.mFullRedrawNeeded = true;
                        ViewRootImpl.this.scheduleTraversals();
                    }
                }
            }
        };
        this.mWindowStoppedCallbacks = new ArrayList<>();
        this.mDrawsNeededToReport = 0;
        this.mHandler = new ViewRootHandler();
        this.mTraversalRunnable = new TraversalRunnable();
        this.mConsumedBatchedInputRunnable = new ConsumeBatchedInputRunnable();
        this.mConsumeBatchedInputImmediatelyRunnable = new ConsumeBatchedInputImmediatelyRunnable();
        this.mInvalidateOnAnimationRunnable = new InvalidateOnAnimationRunnable();
        this.mContext = context;
        this.mWindowSession = WindowManagerGlobal.getWindowSession();
        this.mDisplay = display;
        this.mBasePackageName = context.getBasePackageName();
        this.mThread = Thread.currentThread();
        this.mLocation = new WindowLeaked(null);
        this.mLocation.fillInStackTrace();
        this.mWidth = -1;
        this.mHeight = -1;
        this.mDirty = new Rect();
        this.mTempRect = new Rect();
        this.mVisRect = new Rect();
        this.mWinFrame = new Rect();
        this.mWindow = new W(this);
        this.mTargetSdkVersion = context.getApplicationInfo().targetSdkVersion;
        this.mViewVisibility = 8;
        this.mTransparentRegion = new Region();
        this.mPreviousTransparentRegion = new Region();
        this.mFirst = true;
        this.mAdded = false;
        this.mAttachInfo = new View.AttachInfo(this.mWindowSession, this.mWindow, display, this, this.mHandler, this, context);
        this.mAccessibilityManager = AccessibilityManager.getInstance(context);
        this.mAccessibilityManager.addAccessibilityStateChangeListener(this.mAccessibilityInteractionConnectionManager, this.mHandler);
        this.mHighContrastTextManager = new HighContrastTextManager();
        this.mAccessibilityManager.addHighTextContrastStateChangeListener(this.mHighContrastTextManager, this.mHandler);
        this.mViewConfiguration = ViewConfiguration.get(context);
        this.mDensity = context.getResources().getDisplayMetrics().densityDpi;
        this.mNoncompatDensity = context.getResources().getDisplayMetrics().noncompatDensityDpi;
        this.mFallbackEventHandler = new PhoneFallbackEventHandler(context);
        this.mChoreographer = Choreographer.getInstance();
        this.mDisplayManager = (DisplayManager) context.getSystemService("display");
        if (!sCompatibilityDone) {
            sAlwaysAssignFocus = this.mTargetSdkVersion < 28;
            sCompatibilityDone = true;
        }
        loadSystemProperties();
    }

    public static void addFirstDrawHandler(Runnable runnable) {
        synchronized (sFirstDrawHandlers) {
            if (!sFirstDrawComplete) {
                sFirstDrawHandlers.add(runnable);
            }
        }
    }

    public static void addConfigCallback(ConfigChangedCallback configChangedCallback) {
        synchronized (sConfigCallbacks) {
            sConfigCallbacks.add(configChangedCallback);
        }
    }

    public void setActivityConfigCallback(ActivityConfigCallback activityConfigCallback) {
        this.mActivityConfigCallback = activityConfigCallback;
    }

    public void addWindowCallbacks(WindowCallbacks windowCallbacks) {
        synchronized (this.mWindowCallbacks) {
            this.mWindowCallbacks.add(windowCallbacks);
        }
    }

    public void removeWindowCallbacks(WindowCallbacks windowCallbacks) {
        synchronized (this.mWindowCallbacks) {
            this.mWindowCallbacks.remove(windowCallbacks);
        }
    }

    public void reportDrawFinish() {
        if (this.mWindowDrawCountDown != null) {
            this.mWindowDrawCountDown.countDown();
        }
    }

    public void profile() {
        this.mProfile = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isInTouchMode() {
        IWindowSession peekWindowSession = WindowManagerGlobal.peekWindowSession();
        if (peekWindowSession == null) {
            return false;
        }
        try {
            return peekWindowSession.getInTouchMode();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void notifyChildRebuilt() {
        if (this.mView instanceof RootViewSurfaceTaker) {
            if (this.mSurfaceHolderCallback != null) {
                this.mSurfaceHolder.removeCallback(this.mSurfaceHolderCallback);
            }
            this.mSurfaceHolderCallback = this.mView.willYouTakeTheSurface();
            if (this.mSurfaceHolderCallback != null) {
                this.mSurfaceHolder = new TakenSurfaceHolder();
                this.mSurfaceHolder.setFormat(0);
                this.mSurfaceHolder.addCallback(this.mSurfaceHolderCallback);
            } else {
                this.mSurfaceHolder = null;
            }
            this.mInputQueueCallback = this.mView.willYouTakeTheInputQueue();
            if (this.mInputQueueCallback != null) {
                this.mInputQueueCallback.onInputQueueCreated(this.mInputQueue);
            }
        }
    }

    public void setView(View view, WindowManager.LayoutParams layoutParams, View view2) {
        boolean z;
        boolean z2;
        synchronized (this) {
            if (this.mView == null) {
                this.mView = view;
                this.mAttachInfo.mDisplayState = this.mDisplay.getState();
                this.mDisplayManager.registerDisplayListener(this.mDisplayListener, this.mHandler);
                this.mViewLayoutDirectionInitial = this.mView.getRawLayoutDirection();
                this.mFallbackEventHandler.setView(view);
                this.mWindowAttributes.copyFrom(layoutParams);
                if (this.mWindowAttributes.packageName == null) {
                    this.mWindowAttributes.packageName = this.mBasePackageName;
                }
                WindowManager.LayoutParams layoutParams2 = this.mWindowAttributes;
                setTag();
                this.mClientWindowLayoutFlags = layoutParams2.flags;
                setAccessibilityFocus(null, null);
                if (view instanceof RootViewSurfaceTaker) {
                    this.mSurfaceHolderCallback = ((RootViewSurfaceTaker) view).willYouTakeTheSurface();
                    if (this.mSurfaceHolderCallback != null) {
                        this.mSurfaceHolder = new TakenSurfaceHolder();
                        this.mSurfaceHolder.setFormat(0);
                        this.mSurfaceHolder.addCallback(this.mSurfaceHolderCallback);
                    }
                }
                if (!layoutParams2.hasManualSurfaceInsets) {
                    layoutParams2.setSurfaceInsets(view, false, true);
                }
                CompatibilityInfo compatibilityInfo = this.mDisplay.getDisplayAdjustments().getCompatibilityInfo();
                this.mTranslator = compatibilityInfo.getTranslator();
                if (this.mSurfaceHolder == null) {
                    enableHardwareAcceleration(layoutParams2);
                    boolean z3 = this.mAttachInfo.mThreadedRenderer != null;
                    if (this.mUseMTRenderer != z3) {
                        endDragResizing();
                        this.mUseMTRenderer = z3;
                    }
                }
                if (this.mTranslator != null) {
                    this.mSurface.setCompatibilityTranslator(this.mTranslator);
                    layoutParams2.backup();
                    this.mTranslator.translateWindowLayout(layoutParams2);
                    z = true;
                } else {
                    z = false;
                }
                if (!compatibilityInfo.supportsScreen()) {
                    layoutParams2.privateFlags |= 128;
                    this.mLastInCompatMode = true;
                }
                this.mSoftInputMode = layoutParams2.softInputMode;
                this.mWindowAttributesChanged = true;
                this.mWindowAttributesChangesFlag = -1;
                this.mAttachInfo.mRootView = view;
                this.mAttachInfo.mScalingRequired = this.mTranslator != null;
                this.mAttachInfo.mApplicationScale = this.mTranslator == null ? 1.0f : this.mTranslator.applicationScale;
                if (view2 != null) {
                    this.mAttachInfo.mPanelParentWindowToken = view2.getApplicationWindowToken();
                }
                this.mAdded = true;
                requestLayout();
                if ((this.mWindowAttributes.inputFeatures & 2) == 0) {
                    this.mInputChannel = new InputChannel();
                }
                this.mForceDecorViewVisibility = (this.mWindowAttributes.privateFlags & 16384) != 0;
                try {
                    try {
                        this.mOrigWindowType = this.mWindowAttributes.type;
                        this.mAttachInfo.mRecomputeGlobalAttributes = true;
                        collectViewAttributes();
                    } finally {
                        if (z) {
                            layoutParams2.restore();
                        }
                    }
                } catch (RemoteException e) {
                    e = e;
                    z2 = false;
                }
                try {
                    int addToDisplay = this.mWindowSession.addToDisplay(this.mWindow, this.mSeq, this.mWindowAttributes, getHostVisibility(), this.mDisplay.getDisplayId(), this.mWinFrame, this.mAttachInfo.mContentInsets, this.mAttachInfo.mStableInsets, this.mAttachInfo.mOutsets, this.mAttachInfo.mDisplayCutout, this.mInputChannel);
                    if (this.mTranslator != null) {
                        this.mTranslator.translateRectInScreenToAppWindow(this.mAttachInfo.mContentInsets);
                    }
                    this.mPendingOverscanInsets.set(0, 0, 0, 0);
                    this.mPendingContentInsets.set(this.mAttachInfo.mContentInsets);
                    this.mPendingStableInsets.set(this.mAttachInfo.mStableInsets);
                    this.mPendingDisplayCutout.set(this.mAttachInfo.mDisplayCutout);
                    this.mPendingVisibleInsets.set(0, 0, 0, 0);
                    this.mAttachInfo.mAlwaysConsumeNavBar = (addToDisplay & 4) != 0;
                    this.mPendingAlwaysConsumeNavBar = this.mAttachInfo.mAlwaysConsumeNavBar;
                    if (addToDisplay < 0) {
                        this.mAttachInfo.mRootView = null;
                        this.mAdded = false;
                        this.mFallbackEventHandler.setView(null);
                        unscheduleTraversals();
                        setAccessibilityFocus(null, null);
                        switch (addToDisplay) {
                            case -10:
                                throw new WindowManager.InvalidDisplayException("Unable to add window " + this.mWindow + " -- the specified window type " + this.mWindowAttributes.type + " is not valid");
                            case -9:
                                throw new WindowManager.InvalidDisplayException("Unable to add window " + this.mWindow + " -- the specified display can not be found");
                            case -8:
                                throw new WindowManager.BadTokenException("Unable to add window " + this.mWindow + " -- permission denied for window type " + this.mWindowAttributes.type);
                            case -7:
                                throw new WindowManager.BadTokenException("Unable to add window " + this.mWindow + " -- another window of type " + this.mWindowAttributes.type + " already exists");
                            case -6:
                                return;
                            case -5:
                                throw new WindowManager.BadTokenException("Unable to add window -- window " + this.mWindow + " has already been added");
                            case -4:
                                throw new WindowManager.BadTokenException("Unable to add window -- app for token " + layoutParams2.token + " is exiting");
                            case -3:
                                throw new WindowManager.BadTokenException("Unable to add window -- token " + layoutParams2.token + " is not for an application");
                            case -2:
                            case -1:
                                throw new WindowManager.BadTokenException("Unable to add window -- token " + layoutParams2.token + " is not valid; is your activity running?");
                            default:
                                throw new RuntimeException("Unable to add window -- unknown error code " + addToDisplay);
                        }
                    }
                    if (view instanceof RootViewSurfaceTaker) {
                        this.mInputQueueCallback = ((RootViewSurfaceTaker) view).willYouTakeTheInputQueue();
                    }
                    if (this.mInputChannel != null) {
                        if (this.mInputQueueCallback != null) {
                            this.mInputQueue = new InputQueue();
                            this.mInputQueueCallback.onInputQueueCreated(this.mInputQueue);
                        }
                        this.mInputEventReceiver = new WindowInputEventReceiver(this.mInputChannel, Looper.myLooper());
                    }
                    view.assignParent(this);
                    this.mAddedTouchMode = (addToDisplay & 1) != 0;
                    this.mAppVisible = (addToDisplay & 2) != 0;
                    if (this.mAccessibilityManager.isEnabled()) {
                        this.mAccessibilityInteractionConnectionManager.ensureConnection();
                    }
                    if (view.getImportantForAccessibility() == 0) {
                        view.setImportantForAccessibility(1);
                    }
                    CharSequence title = layoutParams2.getTitle();
                    this.mSyntheticInputStage = new SyntheticInputStage();
                    EarlyPostImeInputStage earlyPostImeInputStage = new EarlyPostImeInputStage(new NativePostImeInputStage(new ViewPostImeInputStage(this.mSyntheticInputStage), "aq:native-post-ime:" + ((Object) title)));
                    this.mFirstInputStage = new NativePreImeInputStage(new ViewPreImeInputStage(new ImeInputStage(earlyPostImeInputStage, "aq:ime:" + ((Object) title))), "aq:native-pre-ime:" + ((Object) title));
                    this.mFirstPostImeInputStage = earlyPostImeInputStage;
                    this.mPendingInputEventQueueLengthCounterName = "aq:pending:" + ((Object) title);
                } catch (RemoteException e2) {
                    e = e2;
                    z2 = false;
                    this.mAdded = z2;
                    this.mView = null;
                    this.mAttachInfo.mRootView = null;
                    this.mInputChannel = null;
                    this.mFallbackEventHandler.setView(null);
                    unscheduleTraversals();
                    setAccessibilityFocus(null, null);
                    throw new RuntimeException("Adding window failed", e);
                }
            }
        }
    }

    private void setTag() {
        String[] split = this.mWindowAttributes.getTitle().toString().split("\\.");
        if (split.length > 0) {
            this.mTag = "ViewRootImpl[" + split[split.length - 1] + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInLocalFocusMode() {
        return (this.mWindowAttributes.flags & 268435456) != 0;
    }

    public int getWindowFlags() {
        return this.mWindowAttributes.flags;
    }

    public int getDisplayId() {
        return this.mDisplay.getDisplayId();
    }

    public CharSequence getTitle() {
        return this.mWindowAttributes.getTitle();
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroyHardwareResources() {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.destroyHardwareResources(this.mView);
            this.mAttachInfo.mThreadedRenderer.destroy();
        }
    }

    public void detachFunctor(long j) {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.stopDrawing();
        }
    }

    public static void invokeFunctor(long j, boolean z) {
        ThreadedRenderer.invokeFunctor(j, z);
    }

    public void registerAnimatingRenderNode(RenderNode renderNode) {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.registerAnimatingRenderNode(renderNode);
            return;
        }
        if (this.mAttachInfo.mPendingAnimatingRenderNodes == null) {
            this.mAttachInfo.mPendingAnimatingRenderNodes = new ArrayList();
        }
        this.mAttachInfo.mPendingAnimatingRenderNodes.add(renderNode);
    }

    public void registerVectorDrawableAnimator(AnimatedVectorDrawable.VectorDrawableAnimatorRT vectorDrawableAnimatorRT) {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.registerVectorDrawableAnimator(vectorDrawableAnimatorRT);
        }
    }

    public void registerRtFrameCallback(ThreadedRenderer.FrameDrawingCallback frameDrawingCallback) {
        this.mNextRtFrameCallback = frameDrawingCallback;
    }

    private void enableHardwareAcceleration(WindowManager.LayoutParams layoutParams) {
        boolean z = false;
        this.mAttachInfo.mHardwareAccelerated = false;
        this.mAttachInfo.mHardwareAccelerationRequested = false;
        if (this.mTranslator != null) {
            return;
        }
        if (((layoutParams.flags & 16777216) != 0) && ThreadedRenderer.isAvailable()) {
            boolean z2 = (layoutParams.privateFlags & 1) != 0;
            boolean z3 = (layoutParams.privateFlags & 2) != 0;
            if (z2) {
                this.mAttachInfo.mHardwareAccelerationRequested = true;
                return;
            }
            if (!ThreadedRenderer.sRendererDisabled || (ThreadedRenderer.sSystemRendererDisabled && z3)) {
                if (this.mAttachInfo.mThreadedRenderer != null) {
                    this.mAttachInfo.mThreadedRenderer.destroy();
                }
                Rect rect = layoutParams.surfaceInsets;
                boolean z4 = layoutParams.format != -1 || (rect.left != 0 || rect.right != 0 || rect.top != 0 || rect.bottom != 0);
                if (this.mContext.getResources().getConfiguration().isScreenWideColorGamut() && layoutParams.getColorMode() == 1) {
                    z = true;
                }
                this.mAttachInfo.mThreadedRenderer = ThreadedRenderer.create(this.mContext, z4, layoutParams.getTitle().toString());
                this.mAttachInfo.mThreadedRenderer.setWideGamut(z);
                if (this.mAttachInfo.mThreadedRenderer != null) {
                    View.AttachInfo attachInfo = this.mAttachInfo;
                    this.mAttachInfo.mHardwareAccelerationRequested = true;
                    attachInfo.mHardwareAccelerated = true;
                }
            }
        }
    }

    public View getView() {
        return this.mView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final WindowLeaked getLocation() {
        return this.mLocation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLayoutParams(WindowManager.LayoutParams layoutParams, boolean z) {
        synchronized (this) {
            int i = this.mWindowAttributes.surfaceInsets.left;
            int i2 = this.mWindowAttributes.surfaceInsets.top;
            int i3 = this.mWindowAttributes.surfaceInsets.right;
            int i4 = this.mWindowAttributes.surfaceInsets.bottom;
            int i5 = this.mWindowAttributes.softInputMode;
            boolean z2 = this.mWindowAttributes.hasManualSurfaceInsets;
            this.mClientWindowLayoutFlags = layoutParams.flags;
            int i6 = this.mWindowAttributes.privateFlags & 128;
            layoutParams.systemUiVisibility = this.mWindowAttributes.systemUiVisibility;
            layoutParams.subtreeSystemUiVisibility = this.mWindowAttributes.subtreeSystemUiVisibility;
            this.mWindowAttributesChangesFlag = this.mWindowAttributes.copyFrom(layoutParams);
            if ((this.mWindowAttributesChangesFlag & 524288) != 0) {
                this.mAttachInfo.mRecomputeGlobalAttributes = true;
            }
            if ((this.mWindowAttributesChangesFlag & 1) != 0) {
                this.mAttachInfo.mNeedsUpdateLightCenter = true;
            }
            if (this.mWindowAttributes.packageName == null) {
                this.mWindowAttributes.packageName = this.mBasePackageName;
            }
            WindowManager.LayoutParams layoutParams2 = this.mWindowAttributes;
            layoutParams2.privateFlags = i6 | layoutParams2.privateFlags;
            if (this.mWindowAttributes.preservePreviousSurfaceInsets) {
                this.mWindowAttributes.surfaceInsets.set(i, i2, i3, i4);
                this.mWindowAttributes.hasManualSurfaceInsets = z2;
            } else if (this.mWindowAttributes.surfaceInsets.left != i || this.mWindowAttributes.surfaceInsets.top != i2 || this.mWindowAttributes.surfaceInsets.right != i3 || this.mWindowAttributes.surfaceInsets.bottom != i4) {
                this.mNeedsRendererSetup = true;
            }
            applyKeepScreenOnFlag(this.mWindowAttributes);
            if (z) {
                this.mSoftInputMode = layoutParams.softInputMode;
                requestLayout();
            }
            if ((layoutParams.softInputMode & 240) == 0) {
                this.mWindowAttributes.softInputMode = (this.mWindowAttributes.softInputMode & (-241)) | (i5 & 240);
            }
            this.mWindowAttributesChanged = true;
            scheduleTraversals();
        }
    }

    void handleAppVisibility(boolean z) {
        if (this.mAppVisible != z) {
            this.mAppVisible = z;
            this.mAppVisibilityChanged = true;
            scheduleTraversals();
            if (this.mAppVisible) {
                return;
            }
            WindowManagerGlobal.trimForeground();
        }
    }

    void handleGetNewSurface() {
        this.mNewSurfaceNeeded = true;
        this.mFullRedrawNeeded = true;
        scheduleTraversals();
    }

    public void onMovedToDisplay(int i, Configuration configuration) {
        if (this.mDisplay.getDisplayId() == i) {
            return;
        }
        this.mDisplay = ResourcesManager.getInstance().getAdjustedDisplay(i, this.mView.getResources());
        this.mAttachInfo.mDisplayState = this.mDisplay.getState();
        this.mView.dispatchMovedToDisplay(this.mDisplay, configuration);
    }

    void pokeDrawLockIfNeeded() {
        int i = this.mAttachInfo.mDisplayState;
        if (this.mView != null && this.mAdded && this.mTraversalScheduled) {
            if (i == 3 || i == 4) {
                try {
                    this.mWindowSession.pokeDrawLock(this.mWindow);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    @Override // android.view.ViewParent
    public void requestFitSystemWindows() {
        checkThread();
        this.mApplyInsetsRequested = true;
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public void requestLayout() {
        if (this.mHandlingLayoutInLayoutRequest) {
            return;
        }
        checkThread();
        this.mLayoutRequested = true;
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public boolean isLayoutRequested() {
        return this.mLayoutRequested;
    }

    @Override // android.view.ViewParent
    public void onDescendantInvalidated(View view, View view2) {
        if ((view2.mPrivateFlags & 64) != 0) {
            this.mIsAnimating = true;
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void invalidate() {
        this.mDirty.set(0, 0, this.mWidth, this.mHeight);
        if (this.mWillDrawSoon) {
            return;
        }
        scheduleTraversals();
    }

    void invalidateWorld(View view) {
        view.invalidate();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                invalidateWorld(viewGroup.getChildAt(i));
            }
        }
    }

    @Override // android.view.ViewParent
    public void invalidateChild(View view, Rect rect) {
        invalidateChildInParent(null, rect);
    }

    @Override // android.view.ViewParent
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        checkThread();
        if (rect == null) {
            invalidate();
            return null;
        }
        if (rect.isEmpty() && !this.mIsAnimating) {
            return null;
        }
        if (this.mCurScrollY != 0 || this.mTranslator != null) {
            this.mTempRect.set(rect);
            rect = this.mTempRect;
            if (this.mCurScrollY != 0) {
                rect.offset(0, -this.mCurScrollY);
            }
            if (this.mTranslator != null) {
                this.mTranslator.translateRectInAppWindowToScreen(rect);
            }
            if (this.mAttachInfo.mScalingRequired) {
                rect.inset(-1, -1);
            }
        }
        invalidateRectOnScreen(rect);
        return null;
    }

    private void invalidateRectOnScreen(Rect rect) {
        Rect rect2 = this.mDirty;
        if (!rect2.isEmpty() && !rect2.contains(rect)) {
            this.mAttachInfo.mSetIgnoreDirtyState = true;
            this.mAttachInfo.mIgnoreDirtyState = true;
        }
        rect2.union(rect.left, rect.top, rect.right, rect.bottom);
        float f = this.mAttachInfo.mApplicationScale;
        boolean intersect = rect2.intersect(0, 0, (int) ((this.mWidth * f) + 0.5f), (int) ((this.mHeight * f) + 0.5f));
        if (!intersect) {
            rect2.setEmpty();
        }
        if (this.mWillDrawSoon) {
            return;
        }
        if (intersect || this.mIsAnimating) {
            scheduleTraversals();
        }
    }

    public void setIsAmbientMode(boolean z) {
        this.mIsAmbientMode = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addWindowStoppedCallback(WindowStoppedCallback windowStoppedCallback) {
        this.mWindowStoppedCallbacks.add(windowStoppedCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeWindowStoppedCallback(WindowStoppedCallback windowStoppedCallback) {
        this.mWindowStoppedCallbacks.remove(windowStoppedCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setWindowStopped(boolean z) {
        if (this.mStopped != z) {
            this.mStopped = z;
            ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
            if (threadedRenderer != null) {
                threadedRenderer.setStopped(this.mStopped);
            }
            if (!this.mStopped) {
                this.mNewSurfaceNeeded = true;
                scheduleTraversals();
            } else if (threadedRenderer != null) {
                threadedRenderer.destroyHardwareResources(this.mView);
            }
            for (int i = 0; i < this.mWindowStoppedCallbacks.size(); i++) {
                this.mWindowStoppedCallbacks.get(i).windowStopped(z);
            }
            if (this.mStopped) {
                this.mSurface.release();
            }
        }
    }

    public void setPausedForTransition(boolean z) {
        this.mPausedForTransition = z;
    }

    @Override // android.view.ViewParent
    public boolean getChildVisibleRect(View view, Rect rect, Point point) {
        if (view != this.mView) {
            throw new RuntimeException("child is not mine, honest!");
        }
        return rect.intersect(0, 0, this.mWidth, this.mHeight);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHostVisibility() {
        if (this.mAppVisible || this.mForceDecorViewVisibility) {
            return this.mView.getVisibility();
        }
        return 8;
    }

    public void requestTransitionStart(LayoutTransition layoutTransition) {
        if (this.mPendingTransitions == null || !this.mPendingTransitions.contains(layoutTransition)) {
            if (this.mPendingTransitions == null) {
                this.mPendingTransitions = new ArrayList<>();
            }
            this.mPendingTransitions.add(layoutTransition);
        }
    }

    void notifyRendererOfFramePending() {
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.notifyFramePending();
        }
    }

    void scheduleTraversals() {
        if (this.mTraversalScheduled) {
            return;
        }
        this.mTraversalScheduled = true;
        this.mTraversalBarrier = this.mHandler.getLooper().getQueue().postSyncBarrier();
        this.mChoreographer.postCallback(2, this.mTraversalRunnable, null);
        if (!this.mUnbufferedInputDispatch) {
            scheduleConsumeBatchedInput();
        }
        notifyRendererOfFramePending();
        pokeDrawLockIfNeeded();
    }

    void unscheduleTraversals() {
        if (this.mTraversalScheduled) {
            this.mTraversalScheduled = false;
            this.mHandler.getLooper().getQueue().removeSyncBarrier(this.mTraversalBarrier);
            this.mChoreographer.removeCallbacks(2, this.mTraversalRunnable, null);
        }
    }

    void doTraversal() {
        if (this.mTraversalScheduled) {
            this.mTraversalScheduled = false;
            this.mHandler.getLooper().getQueue().removeSyncBarrier(this.mTraversalBarrier);
            if (this.mProfile) {
                Debug.startMethodTracing("ViewAncestor");
            }
            performTraversals();
            if (this.mProfile) {
                Debug.stopMethodTracing();
                this.mProfile = false;
            }
        }
    }

    private void applyKeepScreenOnFlag(WindowManager.LayoutParams layoutParams) {
        if (this.mAttachInfo.mKeepScreenOn) {
            layoutParams.flags |= 128;
        } else {
            layoutParams.flags = (this.mClientWindowLayoutFlags & 128) | (layoutParams.flags & (-129));
        }
    }

    private boolean collectViewAttributes() {
        if (this.mAttachInfo.mRecomputeGlobalAttributes) {
            this.mAttachInfo.mRecomputeGlobalAttributes = false;
            boolean z = this.mAttachInfo.mKeepScreenOn;
            this.mAttachInfo.mKeepScreenOn = false;
            this.mAttachInfo.mSystemUiVisibility = 0;
            this.mAttachInfo.mHasSystemUiListeners = false;
            this.mView.dispatchCollectViewAttributes(this.mAttachInfo, 0);
            this.mAttachInfo.mSystemUiVisibility &= ~this.mAttachInfo.mDisabledSystemUiVisibility;
            WindowManager.LayoutParams layoutParams = this.mWindowAttributes;
            this.mAttachInfo.mSystemUiVisibility |= getImpliedSystemUiVisibility(layoutParams);
            if (this.mAttachInfo.mKeepScreenOn != z || this.mAttachInfo.mSystemUiVisibility != layoutParams.subtreeSystemUiVisibility || this.mAttachInfo.mHasSystemUiListeners != layoutParams.hasSystemUiListeners) {
                applyKeepScreenOnFlag(layoutParams);
                layoutParams.subtreeSystemUiVisibility = this.mAttachInfo.mSystemUiVisibility;
                layoutParams.hasSystemUiListeners = this.mAttachInfo.mHasSystemUiListeners;
                this.mView.dispatchWindowSystemUiVisiblityChanged(this.mAttachInfo.mSystemUiVisibility);
                return true;
            }
        }
        return false;
    }

    private int getImpliedSystemUiVisibility(WindowManager.LayoutParams layoutParams) {
        int i = (layoutParams.flags & 67108864) != 0 ? 1280 : 0;
        return (layoutParams.flags & 134217728) != 0 ? i | 768 : i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
    
        if ((r6.getMeasuredWidthAndState() & 16777216) == 0) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean measureHierarchy(View view, WindowManager.LayoutParams layoutParams, Resources resources, int i, int i2) {
        boolean z;
        if (layoutParams.width == -2) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            resources.getValue(R.dimen.car_keyline_1, this.mTmpValue, true);
            int dimension = this.mTmpValue.type == 5 ? (int) this.mTmpValue.getDimension(displayMetrics) : 0;
            if (dimension != 0 && i > dimension) {
                int rootMeasureSpec = getRootMeasureSpec(dimension, layoutParams.width);
                int rootMeasureSpec2 = getRootMeasureSpec(i2, layoutParams.height);
                performMeasure(rootMeasureSpec, rootMeasureSpec2);
                if ((view.getMeasuredWidthAndState() & 16777216) != 0) {
                    performMeasure(getRootMeasureSpec((dimension + i) / 2, layoutParams.width), rootMeasureSpec2);
                }
                z = true;
                if (!z) {
                    return false;
                }
                performMeasure(getRootMeasureSpec(i, layoutParams.width), getRootMeasureSpec(i2, layoutParams.height));
                return (this.mWidth == view.getMeasuredWidth() && this.mHeight == view.getMeasuredHeight()) ? false : true;
            }
        }
        z = false;
        if (!z) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void transformMatrixToGlobal(Matrix matrix) {
        matrix.preTranslate(this.mAttachInfo.mWindowLeft, this.mAttachInfo.mWindowTop);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void transformMatrixToLocal(Matrix matrix) {
        matrix.postTranslate(-this.mAttachInfo.mWindowLeft, -this.mAttachInfo.mWindowTop);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WindowInsets getWindowInsets(boolean z) {
        if (this.mLastWindowInsets == null || z) {
            this.mDispatchContentInsets.set(this.mAttachInfo.mContentInsets);
            this.mDispatchStableInsets.set(this.mAttachInfo.mStableInsets);
            this.mDispatchDisplayCutout = this.mAttachInfo.mDisplayCutout.get();
            Rect rect = this.mDispatchContentInsets;
            Rect rect2 = this.mDispatchStableInsets;
            DisplayCutout displayCutout = this.mDispatchDisplayCutout;
            if (!z && (!this.mPendingContentInsets.equals(rect) || !this.mPendingStableInsets.equals(rect2) || !this.mPendingDisplayCutout.get().equals(displayCutout))) {
                rect = this.mPendingContentInsets;
                rect2 = this.mPendingStableInsets;
                displayCutout = this.mPendingDisplayCutout.get();
            }
            DisplayCutout displayCutout2 = displayCutout;
            Rect rect3 = this.mAttachInfo.mOutsets;
            if (rect3.left > 0 || rect3.top > 0 || rect3.right > 0 || rect3.bottom > 0) {
                rect = new Rect(rect.left + rect3.left, rect.top + rect3.top, rect.right + rect3.right, rect.bottom + rect3.bottom);
            }
            this.mLastWindowInsets = new WindowInsets(ensureInsetsNonNegative(rect, "content"), null, ensureInsetsNonNegative(rect2, "stable"), this.mContext.getResources().getConfiguration().isScreenRound(), this.mAttachInfo.mAlwaysConsumeNavBar, displayCutout2);
        }
        return this.mLastWindowInsets;
    }

    private Rect ensureInsetsNonNegative(Rect rect, String str) {
        if (rect.left >= 0 && rect.top >= 0 && rect.right >= 0 && rect.bottom >= 0) {
            return rect;
        }
        Log.wtf(this.mTag, "Negative " + str + "Insets: " + rect + ", mFirst=" + this.mFirst);
        return new Rect(Math.max(0, rect.left), Math.max(0, rect.top), Math.max(0, rect.right), Math.max(0, rect.bottom));
    }

    void dispatchApplyInsets(View view) {
        WindowInsets windowInsets = getWindowInsets(true);
        if (!(this.mWindowAttributes.layoutInDisplayCutoutMode == 1)) {
            windowInsets = windowInsets.consumeDisplayCutout();
        }
        view.dispatchApplyWindowInsets(windowInsets);
    }

    private static boolean shouldUseDisplaySize(WindowManager.LayoutParams layoutParams) {
        return layoutParams.type == 2014 || layoutParams.type == 2011 || layoutParams.type == 2020;
    }

    private int dipToPx(int i) {
        return (int) ((this.mContext.getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(158:5|(1:622)(1:13)|14|(4:16|(1:18)(1:620)|(1:20)(1:619)|(154:22|23|(1:25)(1:618)|26|(3:28|(1:30)(1:616)|31)(1:617)|32|(5:34|(1:36)(1:610)|37|(1:39)|40)(2:611|(144:615|(5:43|(2:(1:46)(1:48)|47)|(1:55)|52|(1:54))|56|(1:58)|59|(1:609)(1:65)|66|(3:68|(1:70)(14:579|(1:581)(1:607)|582|(1:584)|585|(1:587)|588|(1:590)|591|(1:593)|594|(1:596)|597|(3:602|(1:604)(1:606)|605)(1:601))|71)(1:608)|72|(1:74)|75|(1:77)|78|(2:563|(6:565|(3:567|(2:569|570)(1:572)|571)|573|(1:575)|576|(1:578)))|(5:83|(1:87)|88|(1:90)(1:92)|91)|93|(2:95|(37:97|(1:99)|(1:561)(1:118)|119|(1:560)(1:123)|124|(1:559)(1:128)|129|(1:131)(1:558)|132|(77:278|(2:(1:556)(1:284)|285)(1:557)|286|(1:288)|289|290|291|(3:293|(1:295)|296)|297|299|300|(2:302|303)(1:552)|304|305|306|307|308|309|310|311|312|313|314|315|316|317|318|(1:320)(1:537)|321|322|323|324|325|326|(1:328)(1:533)|(4:330|331|332|333)(1:532)|(1:335)|(1:337)|(1:339)|(1:341)|(1:527)|(1:351)|(2:353|(4:355|356|357|(24:476|477|(3:480|481|(1:483))|479|361|(1:363)(1:475)|364|(1:366)(1:474)|(1:473)(1:369)|370|371|372|(1:(3:375|376|377)(1:469))(1:470)|378|(1:(1:381)(1:382))|383|384|(1:467)|388|(4:390|(1:392)|393|(4:(3:396|(3:398|(1:400)|401)|402)|(3:410|(1:412)|413)|406|407)(1:(6:415|(3:417|(1:419)|420)|421|422|423|424)))|429|(1:440)|441|(4:445|(1:447)(1:466)|448|(6:456|(1:458)(1:465)|459|(1:461)|(1:463)|464)))(34:359|360|361|(0)(0)|364|(0)(0)|(0)|473|370|371|372|(0)(0)|378|(0)|383|384|(1:386)|467|388|(0)|429|(2:431|440)|441|(1:443)|445|(0)(0)|448|(1:450)|456|(0)(0)|459|(0)|(0)|464)))(2:496|(8:498|(1:500)|501|(1:503)|504|(1:506)|507|(1:511))(2:512|(3:520|521|522)))|495|360|361|(0)(0)|364|(0)(0)|(0)|473|370|371|372|(0)(0)|378|(0)|383|384|(0)|467|388|(0)|429|(0)|441|(0)|445|(0)(0)|448|(0)|456|(0)(0)|459|(0)|(0)|464)(1:140)|(1:277)(1:146)|(1:276)(1:150)|(2:152|(4:154|(1:156)|157|(3:159|160|161)))|(1:165)|(2:167|(5:171|(1:173)(1:179)|174|175|176))|180|(2:182|(2:191|(1:195))(2:186|(1:190)))|(1:275)(1:199)|200|(1:273)(1:203)|(1:272)(1:207)|(1:209)(1:(1:271))|(3:260|(1:267)(1:262)|(1:264))|212|213|(2:219|(9:222|223|(1:225)|226|(1:229)|(1:(1:248)(2:249|(4:253|(2:256|254)|257|258)))(3:232|(4:236|(2:239|237)|240|241)|242)|243|244|245))|259|223|(0)|226|(1:229)|(0)|(0)(0)|243|244|245))|562|(0)|(0)|561|119|(1:121)|560|124|(1:126)|559|129|(0)(0)|132|(0)|278|(0)(0)|286|(0)|289|290|291|(0)|297|299|300|(0)(0)|304|305|306|307|308|309|310|311|312|313|314|315|316|317|318|(0)(0)|321|322|323|324|325|326|(0)(0)|(0)(0)|(0)|(0)|(0)|(0)|(1:343)|527|(0)|(0)(0)|495|360|361|(0)(0)|364|(0)(0)|(0)|473|370|371|372|(0)(0)|378|(0)|383|384|(0)|467|388|(0)|429|(0)|441|(0)|445|(0)(0)|448|(0)|456|(0)(0)|459|(0)|(0)|464|(2:142|144)|277|(1:148)|276|(0)|(0)|(0)|180|(0)|(1:197)|275|200|(0)|273|(1:205)|272|(0)(0)|(0)|260|(16:265|267|(0)|212|213|(4:215|217|219|(10:222|223|(0)|226|(0)|(0)|(0)(0)|243|244|245))|259|223|(0)|226|(0)|(0)|(0)(0)|243|244|245)|262|(0)|212|213|(0)|259|223|(0)|226|(0)|(0)|(0)(0)|243|244|245))|41|(0)|56|(0)|59|(2:61|63)|609|66|(0)(0)|72|(0)|75|(0)|78|(1:80)|563|(0)|(0)|93|(0)|562|(0)|(0)|561|119|(0)|560|124|(0)|559|129|(0)(0)|132|(0)|278|(0)(0)|286|(0)|289|290|291|(0)|297|299|300|(0)(0)|304|305|306|307|308|309|310|311|312|313|314|315|316|317|318|(0)(0)|321|322|323|324|325|326|(0)(0)|(0)(0)|(0)|(0)|(0)|(0)|(0)|527|(0)|(0)(0)|495|360|361|(0)(0)|364|(0)(0)|(0)|473|370|371|372|(0)(0)|378|(0)|383|384|(0)|467|388|(0)|429|(0)|441|(0)|445|(0)(0)|448|(0)|456|(0)(0)|459|(0)|(0)|464|(0)|277|(0)|276|(0)|(0)|(0)|180|(0)|(0)|275|200|(0)|273|(0)|272|(0)(0)|(0)|260|(0)|262|(0)|212|213|(0)|259|223|(0)|226|(0)|(0)|(0)(0)|243|244|245))|621|23|(0)(0)|26|(0)(0)|32|(0)(0)|41|(0)|56|(0)|59|(0)|609|66|(0)(0)|72|(0)|75|(0)|78|(0)|563|(0)|(0)|93|(0)|562|(0)|(0)|561|119|(0)|560|124|(0)|559|129|(0)(0)|132|(0)|278|(0)(0)|286|(0)|289|290|291|(0)|297|299|300|(0)(0)|304|305|306|307|308|309|310|311|312|313|314|315|316|317|318|(0)(0)|321|322|323|324|325|326|(0)(0)|(0)(0)|(0)|(0)|(0)|(0)|(0)|527|(0)|(0)(0)|495|360|361|(0)(0)|364|(0)(0)|(0)|473|370|371|372|(0)(0)|378|(0)|383|384|(0)|467|388|(0)|429|(0)|441|(0)|445|(0)(0)|448|(0)|456|(0)(0)|459|(0)|(0)|464|(0)|277|(0)|276|(0)|(0)|(0)|180|(0)|(0)|275|200|(0)|273|(0)|272|(0)(0)|(0)|260|(0)|262|(0)|212|213|(0)|259|223|(0)|226|(0)|(0)|(0)(0)|243|244|245) */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x05d1, code lost:
    
        r21 = r22;
        r1 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x05d7, code lost:
    
        r27 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x05da, code lost:
    
        r27 = r3;
        r26 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x05e3, code lost:
    
        r27 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x05ea, code lost:
    
        r26 = r13;
        r21 = r22;
        r1 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x0604, code lost:
    
        r25 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x05e6, code lost:
    
        r27 = r3;
        r24 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x05f1, code lost:
    
        r27 = r3;
        r1 = r6;
        r24 = r11;
        r26 = r13;
        r21 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:547:0x05fb, code lost:
    
        r27 = r3;
        r21 = r5;
        r1 = r6;
        r24 = r11;
        r26 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0609, code lost:
    
        r21 = r5;
        r1 = r6;
        r24 = r11;
        r26 = r13;
        r25 = r14;
        r0 = false;
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x062f, code lost:
    
        r27 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:553:0x0615, code lost:
    
        r21 = r5;
        r1 = r6;
        r24 = r11;
        r26 = r13;
        r25 = r14;
        r0 = false;
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x062d, code lost:
    
        r20 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:555:0x0621, code lost:
    
        r21 = r5;
        r1 = r6;
        r24 = r11;
        r26 = r13;
        r25 = r14;
        r0 = false;
        r11 = false;
        r15 = 0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0348 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x07bd  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x07ca  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x07d6  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x083a  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0848  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x08a3  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x08da  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x08e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:205:0x08f0  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x08f9  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0908 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0934  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0973  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0980 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0986 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:248:0x09b6  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x09bb  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x091e  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0913  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x08fd  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0393 A[Catch: RemoteException -> 0x0621, TryCatch #0 {RemoteException -> 0x0621, blocks: (B:291:0x038d, B:293:0x0393, B:295:0x039f, B:296:0x03a9, B:297:0x03b2), top: B:290:0x038d }] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x03c0 A[Catch: RemoteException -> 0x0615, TRY_LEAVE, TryCatch #16 {RemoteException -> 0x0615, blocks: (B:300:0x03b6, B:302:0x03c0), top: B:299:0x03b6 }] */
    /* JADX WARN: Removed duplicated region for block: B:320:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0430  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0435 A[Catch: RemoteException -> 0x05d7, TRY_LEAVE, TryCatch #18 {RemoteException -> 0x05d7, blocks: (B:326:0x042a, B:330:0x0435), top: B:325:0x042a }] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0445 A[Catch: RemoteException -> 0x05de, TryCatch #4 {RemoteException -> 0x05de, blocks: (B:333:0x043b, B:335:0x0445, B:337:0x0452, B:339:0x045f, B:341:0x046c, B:343:0x0476, B:345:0x047e, B:347:0x0482, B:351:0x04a9, B:353:0x04b4, B:496:0x0500, B:498:0x0508, B:500:0x050c, B:501:0x0511, B:503:0x051c, B:504:0x0525, B:506:0x0529, B:507:0x052e, B:509:0x0534, B:511:0x053e, B:512:0x0546, B:516:0x0552, B:518:0x0556, B:520:0x055c, B:522:0x055f, B:525:0x056a, B:527:0x048c), top: B:332:0x043b, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0452 A[Catch: RemoteException -> 0x05de, TryCatch #4 {RemoteException -> 0x05de, blocks: (B:333:0x043b, B:335:0x0445, B:337:0x0452, B:339:0x045f, B:341:0x046c, B:343:0x0476, B:345:0x047e, B:347:0x0482, B:351:0x04a9, B:353:0x04b4, B:496:0x0500, B:498:0x0508, B:500:0x050c, B:501:0x0511, B:503:0x051c, B:504:0x0525, B:506:0x0529, B:507:0x052e, B:509:0x0534, B:511:0x053e, B:512:0x0546, B:516:0x0552, B:518:0x0556, B:520:0x055c, B:522:0x055f, B:525:0x056a, B:527:0x048c), top: B:332:0x043b, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:339:0x045f A[Catch: RemoteException -> 0x05de, TryCatch #4 {RemoteException -> 0x05de, blocks: (B:333:0x043b, B:335:0x0445, B:337:0x0452, B:339:0x045f, B:341:0x046c, B:343:0x0476, B:345:0x047e, B:347:0x0482, B:351:0x04a9, B:353:0x04b4, B:496:0x0500, B:498:0x0508, B:500:0x050c, B:501:0x0511, B:503:0x051c, B:504:0x0525, B:506:0x0529, B:507:0x052e, B:509:0x0534, B:511:0x053e, B:512:0x0546, B:516:0x0552, B:518:0x0556, B:520:0x055c, B:522:0x055f, B:525:0x056a, B:527:0x048c), top: B:332:0x043b, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x046c A[Catch: RemoteException -> 0x05de, TryCatch #4 {RemoteException -> 0x05de, blocks: (B:333:0x043b, B:335:0x0445, B:337:0x0452, B:339:0x045f, B:341:0x046c, B:343:0x0476, B:345:0x047e, B:347:0x0482, B:351:0x04a9, B:353:0x04b4, B:496:0x0500, B:498:0x0508, B:500:0x050c, B:501:0x0511, B:503:0x051c, B:504:0x0525, B:506:0x0529, B:507:0x052e, B:509:0x0534, B:511:0x053e, B:512:0x0546, B:516:0x0552, B:518:0x0556, B:520:0x055c, B:522:0x055f, B:525:0x056a, B:527:0x048c), top: B:332:0x043b, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0476 A[Catch: RemoteException -> 0x05de, TryCatch #4 {RemoteException -> 0x05de, blocks: (B:333:0x043b, B:335:0x0445, B:337:0x0452, B:339:0x045f, B:341:0x046c, B:343:0x0476, B:345:0x047e, B:347:0x0482, B:351:0x04a9, B:353:0x04b4, B:496:0x0500, B:498:0x0508, B:500:0x050c, B:501:0x0511, B:503:0x051c, B:504:0x0525, B:506:0x0529, B:507:0x052e, B:509:0x0534, B:511:0x053e, B:512:0x0546, B:516:0x0552, B:518:0x0556, B:520:0x055c, B:522:0x055f, B:525:0x056a, B:527:0x048c), top: B:332:0x043b, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x04a9 A[Catch: RemoteException -> 0x05de, TryCatch #4 {RemoteException -> 0x05de, blocks: (B:333:0x043b, B:335:0x0445, B:337:0x0452, B:339:0x045f, B:341:0x046c, B:343:0x0476, B:345:0x047e, B:347:0x0482, B:351:0x04a9, B:353:0x04b4, B:496:0x0500, B:498:0x0508, B:500:0x050c, B:501:0x0511, B:503:0x051c, B:504:0x0525, B:506:0x0529, B:507:0x052e, B:509:0x0534, B:511:0x053e, B:512:0x0546, B:516:0x0552, B:518:0x0556, B:520:0x055c, B:522:0x055f, B:525:0x056a, B:527:0x048c), top: B:332:0x043b, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:353:0x04b4 A[Catch: RemoteException -> 0x05de, TRY_LEAVE, TryCatch #4 {RemoteException -> 0x05de, blocks: (B:333:0x043b, B:335:0x0445, B:337:0x0452, B:339:0x045f, B:341:0x046c, B:343:0x0476, B:345:0x047e, B:347:0x0482, B:351:0x04a9, B:353:0x04b4, B:496:0x0500, B:498:0x0508, B:500:0x050c, B:501:0x0511, B:503:0x051c, B:504:0x0525, B:506:0x0529, B:507:0x052e, B:509:0x0534, B:511:0x053e, B:512:0x0546, B:516:0x0552, B:518:0x0556, B:520:0x055c, B:522:0x055f, B:525:0x056a, B:527:0x048c), top: B:332:0x043b, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0574  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x057b  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0580 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:374:0x058a  */
    /* JADX WARN: Removed duplicated region for block: B:380:0x05ba  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0645  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x065d  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0715  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0745  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x074d  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0756  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x078e  */
    /* JADX WARN: Removed duplicated region for block: B:461:0x07a6  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x07b6  */
    /* JADX WARN: Removed duplicated region for block: B:465:0x079e  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x074f  */
    /* JADX WARN: Removed duplicated region for block: B:470:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:474:0x057d  */
    /* JADX WARN: Removed duplicated region for block: B:475:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:496:0x0500 A[Catch: RemoteException -> 0x05de, TRY_ENTER, TryCatch #4 {RemoteException -> 0x05de, blocks: (B:333:0x043b, B:335:0x0445, B:337:0x0452, B:339:0x045f, B:341:0x046c, B:343:0x0476, B:345:0x047e, B:347:0x0482, B:351:0x04a9, B:353:0x04b4, B:496:0x0500, B:498:0x0508, B:500:0x050c, B:501:0x0511, B:503:0x051c, B:504:0x0525, B:506:0x0529, B:507:0x052e, B:509:0x0534, B:511:0x053e, B:512:0x0546, B:516:0x0552, B:518:0x0556, B:520:0x055c, B:522:0x055f, B:525:0x056a, B:527:0x048c), top: B:332:0x043b, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:533:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:537:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:557:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:565:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:608:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:611:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:617:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:618:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void performTraversals() {
        boolean z;
        boolean z2;
        WindowManager.LayoutParams layoutParams;
        int width;
        int height;
        boolean z3;
        boolean z4;
        Rect rect;
        boolean z5;
        int i;
        int i2;
        boolean z6;
        int i3;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean isValid;
        Rect rect2;
        int i4;
        boolean z11;
        boolean z12;
        boolean z13;
        int i5;
        boolean z14;
        boolean z15;
        ThreadedRenderer threadedRenderer;
        int i6;
        boolean z16;
        SurfaceHolder.Callback[] callbacks;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        Rect rect3;
        boolean z23;
        boolean z24;
        boolean z25;
        boolean z26;
        boolean z27;
        boolean z28;
        boolean z29;
        boolean z30;
        boolean mayUseInputMethod;
        InputMethodManager peekInstance;
        Rect rect4;
        Rect rect5;
        Region region;
        int dipToPx;
        int dipToPx2;
        int i7;
        boolean z31;
        View view = this.mView;
        if (view == null || !this.mAdded) {
            return;
        }
        this.mIsInTraversal = true;
        this.mWillDrawSoon = true;
        WindowManager.LayoutParams layoutParams2 = this.mWindowAttributes;
        int hostVisibility = getHostVisibility();
        boolean z32 = !this.mFirst && (this.mViewVisibility != hostVisibility || this.mNewSurfaceNeeded || this.mAppVisibilityChanged);
        this.mAppVisibilityChanged = false;
        if (!this.mFirst) {
            if ((this.mViewVisibility == 0) != (hostVisibility == 0)) {
                z = true;
                WindowManager.LayoutParams layoutParams3 = null;
                if (this.mWindowAttributesChanged) {
                    z2 = false;
                } else {
                    this.mWindowAttributesChanged = false;
                    z2 = true;
                    layoutParams3 = layoutParams2;
                }
                if (this.mDisplay.getDisplayAdjustments().getCompatibilityInfo().supportsScreen() != this.mLastInCompatMode) {
                    this.mFullRedrawNeeded = true;
                    this.mLayoutRequested = true;
                    if (this.mLastInCompatMode) {
                        layoutParams2.privateFlags &= -129;
                        this.mLastInCompatMode = false;
                    } else {
                        layoutParams2.privateFlags |= 128;
                        this.mLastInCompatMode = true;
                    }
                    layoutParams = layoutParams2;
                } else {
                    layoutParams = layoutParams3;
                }
                this.mWindowAttributesChangesFlag = 0;
                Rect rect6 = this.mWinFrame;
                if (!this.mFirst) {
                    this.mFullRedrawNeeded = true;
                    this.mLayoutRequested = true;
                    Configuration configuration = this.mContext.getResources().getConfiguration();
                    if (shouldUseDisplaySize(layoutParams2)) {
                        Point point = new Point();
                        this.mDisplay.getRealSize(point);
                        width = point.x;
                        height = point.y;
                    } else {
                        width = this.mWinFrame.width();
                        height = this.mWinFrame.height();
                    }
                    this.mAttachInfo.mUse32BitDrawingCache = true;
                    this.mAttachInfo.mHasWindowFocus = false;
                    this.mAttachInfo.mWindowVisibility = hostVisibility;
                    this.mAttachInfo.mRecomputeGlobalAttributes = false;
                    this.mLastConfigurationFromResources.setTo(configuration);
                    this.mLastSystemUiVisibility = this.mAttachInfo.mSystemUiVisibility;
                    if (this.mViewLayoutDirectionInitial == 2) {
                        view.setLayoutDirection(configuration.getLayoutDirection());
                    }
                    view.dispatchAttachedToWindow(this.mAttachInfo, 0);
                    this.mAttachInfo.mTreeObserver.dispatchOnWindowAttachedChange(true);
                    dispatchApplyInsets(view);
                } else {
                    width = rect6.width();
                    height = rect6.height();
                    if (width != this.mWidth || height != this.mHeight) {
                        this.mFullRedrawNeeded = true;
                        this.mLayoutRequested = true;
                        z3 = true;
                        if (z32) {
                            this.mAttachInfo.mWindowVisibility = hostVisibility;
                            view.dispatchWindowVisibilityChanged(hostVisibility);
                            if (z) {
                                view.dispatchVisibilityAggregated(hostVisibility == 0);
                            }
                            if (hostVisibility != 0 || this.mNewSurfaceNeeded) {
                                endDragResizing();
                                destroyHardwareResources();
                            }
                            if (hostVisibility == 8) {
                                this.mHasHadWindowFocus = false;
                            }
                        }
                        if (this.mAttachInfo.mWindowVisibility != 0) {
                            view.clearAccessibilityFocus();
                        }
                        getRunQueue().executeActions(this.mAttachInfo.mHandler);
                        z4 = !this.mLayoutRequested && (!this.mStopped || this.mReportNextDraw);
                        if (z4) {
                            Resources resources = this.mView.getContext().getResources();
                            if (this.mFirst) {
                                this.mAttachInfo.mInTouchMode = !this.mAddedTouchMode;
                                ensureTouchModeLocally(this.mAddedTouchMode);
                                z31 = z3;
                                i7 = height;
                                i2 = width;
                                z6 = false;
                            } else {
                                boolean z33 = !this.mPendingContentInsets.equals(this.mAttachInfo.mContentInsets) ? true : !this.mPendingOverscanInsets.equals(this.mAttachInfo.mOverscanInsets);
                                if (!this.mPendingStableInsets.equals(this.mAttachInfo.mStableInsets)) {
                                    z33 = true;
                                }
                                if (!this.mPendingDisplayCutout.equals(this.mAttachInfo.mDisplayCutout)) {
                                    z33 = true;
                                }
                                if (!this.mPendingVisibleInsets.equals(this.mAttachInfo.mVisibleInsets)) {
                                    this.mAttachInfo.mVisibleInsets.set(this.mPendingVisibleInsets);
                                }
                                if (!this.mPendingOutsets.equals(this.mAttachInfo.mOutsets)) {
                                    z33 = true;
                                }
                                if (this.mPendingAlwaysConsumeNavBar != this.mAttachInfo.mAlwaysConsumeNavBar) {
                                    z33 = true;
                                }
                                if (layoutParams2.width == -2 || layoutParams2.height == -2) {
                                    if (shouldUseDisplaySize(layoutParams2)) {
                                        Point point2 = new Point();
                                        this.mDisplay.getRealSize(point2);
                                        dipToPx = point2.x;
                                        dipToPx2 = point2.y;
                                    } else {
                                        Configuration configuration2 = resources.getConfiguration();
                                        dipToPx = dipToPx(configuration2.screenWidthDp);
                                        dipToPx2 = dipToPx(configuration2.screenHeightDp);
                                    }
                                    i7 = dipToPx2;
                                    i2 = dipToPx;
                                    z6 = z33;
                                    z31 = true;
                                } else {
                                    i7 = height;
                                    i2 = width;
                                    z6 = z33;
                                    z31 = z3;
                                }
                            }
                            rect = rect6;
                            i = i7;
                            z5 = measureHierarchy(view, layoutParams2, resources, i2, i) | z31;
                        } else {
                            rect = rect6;
                            z5 = z3;
                            i = height;
                            i2 = width;
                            z6 = false;
                        }
                        if (collectViewAttributes()) {
                            layoutParams = layoutParams2;
                        }
                        if (this.mAttachInfo.mForceReportNewAttributes) {
                            this.mAttachInfo.mForceReportNewAttributes = false;
                            layoutParams = layoutParams2;
                        }
                        if (!this.mFirst || this.mAttachInfo.mViewVisibilityChanged) {
                            this.mAttachInfo.mViewVisibilityChanged = false;
                            i3 = this.mSoftInputMode & 240;
                            if (i3 == 0) {
                                int size = this.mAttachInfo.mScrollContainers.size();
                                int i8 = i3;
                                for (int i9 = 0; i9 < size; i9++) {
                                    if (this.mAttachInfo.mScrollContainers.get(i9).isShown()) {
                                        i8 = 16;
                                    }
                                }
                                if (i8 == 0) {
                                    i8 = 32;
                                }
                                if ((layoutParams2.softInputMode & 240) != i8) {
                                    layoutParams2.softInputMode = (layoutParams2.softInputMode & (-241)) | i8;
                                    layoutParams = layoutParams2;
                                }
                            }
                        }
                        if (layoutParams != null) {
                            if ((view.mPrivateFlags & 512) != 0 && !PixelFormat.formatHasAlpha(layoutParams.format)) {
                                layoutParams.format = -3;
                            }
                            this.mAttachInfo.mOverscanRequested = (layoutParams.flags & 33554432) != 0;
                        }
                        if (this.mApplyInsetsRequested) {
                            this.mApplyInsetsRequested = false;
                            this.mLastOverscanRequested = this.mAttachInfo.mOverscanRequested;
                            dispatchApplyInsets(view);
                            if (this.mLayoutRequested) {
                                z7 = i;
                                z5 |= measureHierarchy(view, layoutParams2, this.mView.getContext().getResources(), i2, i);
                                if (z4) {
                                    this.mLayoutRequested = false;
                                }
                                boolean z34 = ((z4 || !z5 || (this.mWidth == view.getMeasuredWidth() && this.mHeight == view.getMeasuredHeight() && ((layoutParams2.width != -2 || rect.width() >= i2 || rect.width() == this.mWidth) && (layoutParams2.height != -2 || rect.height() >= z7 || rect.height() == this.mHeight)))) ? false : true) | (!this.mDragResizing && this.mResizeMode == 0) | this.mActivityRelaunched;
                                z8 = !this.mAttachInfo.mTreeObserver.hasComputeInternalInsetsListeners() || this.mAttachInfo.mHasNonEmptyGivenInternalInsets;
                                int generationId = this.mSurface.getGenerationId();
                                z9 = hostVisibility != 0;
                                boolean z35 = this.mForceNextWindowRelayout;
                                if (!this.mFirst || z34 || z6 || z32 || layoutParams != null || this.mForceNextWindowRelayout) {
                                    Rect rect7 = rect;
                                    this.mForceNextWindowRelayout = false;
                                    if (z9) {
                                        z10 = false;
                                    } else {
                                        z10 = z8 && (this.mFirst || z32);
                                    }
                                    if (this.mSurfaceHolder != null) {
                                        this.mSurfaceHolder.mSurfaceLock.lock();
                                        this.mDrawingAllowed = true;
                                    }
                                    isValid = this.mSurface.isValid();
                                    if (this.mAttachInfo.mThreadedRenderer != null) {
                                        if (this.mAttachInfo.mThreadedRenderer.pauseSurface(this.mSurface)) {
                                            this.mDirty.set(0, 0, this.mWidth, this.mHeight);
                                        }
                                        this.mChoreographer.mFrameInfo.addFlags(1L);
                                    }
                                    i5 = relayoutWindow(layoutParams, hostVisibility, z10);
                                    if (this.mPendingMergedConfiguration.equals(this.mLastReportedMergedConfiguration)) {
                                        performConfigurationChange(this.mPendingMergedConfiguration, !this.mFirst, -1);
                                        z14 = true;
                                    } else {
                                        z14 = false;
                                    }
                                    z17 = !this.mPendingOverscanInsets.equals(this.mAttachInfo.mOverscanInsets);
                                    z18 = !this.mPendingContentInsets.equals(this.mAttachInfo.mContentInsets);
                                    z19 = !this.mPendingVisibleInsets.equals(this.mAttachInfo.mVisibleInsets);
                                    boolean z36 = z10;
                                    z20 = !this.mPendingStableInsets.equals(this.mAttachInfo.mStableInsets);
                                    z21 = !this.mPendingDisplayCutout.equals(this.mAttachInfo.mDisplayCutout);
                                    i4 = hostVisibility;
                                    boolean z37 = !this.mPendingOutsets.equals(this.mAttachInfo.mOutsets);
                                    boolean z38 = (i5 & 32) == 0;
                                    boolean z39 = z2 | z38;
                                    boolean z40 = this.mPendingAlwaysConsumeNavBar;
                                    z11 = z32;
                                    z22 = z40 == this.mAttachInfo.mAlwaysConsumeNavBar;
                                    if (z18) {
                                        z15 = z18;
                                        rect3 = z40;
                                    } else {
                                        Rect rect8 = this.mAttachInfo.mContentInsets;
                                        z15 = z18;
                                        try {
                                            rect8.set(this.mPendingContentInsets);
                                            rect3 = rect8;
                                        } catch (RemoteException unused) {
                                            z7 = z36;
                                            rect2 = rect7;
                                            z12 = false;
                                            z13 = false;
                                            this.mAttachInfo.mWindowLeft = rect2.left;
                                            this.mAttachInfo.mWindowTop = rect2.top;
                                            if (this.mWidth == rect2.width()) {
                                            }
                                            this.mWidth = rect2.width();
                                            this.mHeight = rect2.height();
                                            if (this.mSurfaceHolder != null) {
                                            }
                                            threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                                            if (threadedRenderer != null) {
                                            }
                                            if (this.mStopped) {
                                            }
                                            if (!ensureTouchModeLocally((i5 & 1) != 0)) {
                                            }
                                            int rootMeasureSpec = getRootMeasureSpec(this.mWidth, layoutParams2.width);
                                            int rootMeasureSpec2 = getRootMeasureSpec(this.mHeight, layoutParams2.height);
                                            performMeasure(rootMeasureSpec, rootMeasureSpec2);
                                            int measuredWidth = view.getMeasuredWidth();
                                            int measuredHeight = view.getMeasuredHeight();
                                            if (layoutParams2.horizontalWeight > 0.0f) {
                                            }
                                            if (layoutParams2.verticalWeight > 0.0f) {
                                            }
                                            if (z16) {
                                            }
                                            z4 = true;
                                            if (z4) {
                                            }
                                            if (z25) {
                                            }
                                            if (z25) {
                                            }
                                            if (z26) {
                                            }
                                            if (z8) {
                                            }
                                            if (this.mFirst) {
                                            }
                                            if (z11) {
                                            }
                                            if (this.mAttachInfo.mHasWindowFocus) {
                                            }
                                            if (z28) {
                                            }
                                            if (z29) {
                                            }
                                            if (!z27) {
                                            }
                                            if (!(this.mWindowAttributes != null && this.mWindowAttributes.type == 2005)) {
                                            }
                                            this.mFirst = false;
                                            this.mWillDrawSoon = false;
                                            this.mNewSurfaceNeeded = false;
                                            this.mActivityRelaunched = false;
                                            this.mViewVisibility = i4;
                                            this.mHadWindowFocus = z28;
                                            if (z28) {
                                            }
                                            z30 = true;
                                            if ((i5 & 2) != 0) {
                                            }
                                            if (!this.mAttachInfo.mTreeObserver.dispatchOnPreDraw()) {
                                            }
                                            if (z30) {
                                            }
                                            if (!z9) {
                                            }
                                            this.mIsInTraversal = false;
                                        }
                                    }
                                    if (z17) {
                                        this.mAttachInfo.mOverscanInsets.set(this.mPendingOverscanInsets);
                                        z15 = true;
                                    }
                                    if (z20) {
                                        this.mAttachInfo.mStableInsets.set(this.mPendingStableInsets);
                                        z15 = true;
                                    }
                                    if (z21) {
                                        this.mAttachInfo.mDisplayCutout.set(this.mPendingDisplayCutout);
                                        z15 = true;
                                    }
                                    if (z22) {
                                        this.mAttachInfo.mAlwaysConsumeNavBar = this.mPendingAlwaysConsumeNavBar;
                                        z15 = true;
                                    }
                                    if (!z15 || this.mLastSystemUiVisibility != this.mAttachInfo.mSystemUiVisibility || this.mApplyInsetsRequested || this.mLastOverscanRequested != this.mAttachInfo.mOverscanRequested || z37) {
                                        this.mLastSystemUiVisibility = this.mAttachInfo.mSystemUiVisibility;
                                        this.mLastOverscanRequested = this.mAttachInfo.mOverscanRequested;
                                        this.mAttachInfo.mOutsets.set(this.mPendingOutsets);
                                        this.mApplyInsetsRequested = false;
                                        dispatchApplyInsets(view);
                                    }
                                    if (z19) {
                                        this.mAttachInfo.mVisibleInsets.set(this.mPendingVisibleInsets);
                                    }
                                    if (isValid) {
                                        if (this.mSurface.isValid()) {
                                            try {
                                                this.mFullRedrawNeeded = true;
                                                this.mPreviousTransparentRegion.setEmpty();
                                            } catch (RemoteException unused2) {
                                                z7 = z36;
                                                rect2 = rect7;
                                                z12 = true;
                                                z13 = false;
                                                this.mAttachInfo.mWindowLeft = rect2.left;
                                                this.mAttachInfo.mWindowTop = rect2.top;
                                                if (this.mWidth == rect2.width()) {
                                                }
                                                this.mWidth = rect2.width();
                                                this.mHeight = rect2.height();
                                                if (this.mSurfaceHolder != null) {
                                                }
                                                threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                                                if (threadedRenderer != null) {
                                                }
                                                if (this.mStopped) {
                                                }
                                                if (!ensureTouchModeLocally((i5 & 1) != 0)) {
                                                }
                                                int rootMeasureSpec3 = getRootMeasureSpec(this.mWidth, layoutParams2.width);
                                                int rootMeasureSpec22 = getRootMeasureSpec(this.mHeight, layoutParams2.height);
                                                performMeasure(rootMeasureSpec3, rootMeasureSpec22);
                                                int measuredWidth2 = view.getMeasuredWidth();
                                                int measuredHeight2 = view.getMeasuredHeight();
                                                if (layoutParams2.horizontalWeight > 0.0f) {
                                                }
                                                if (layoutParams2.verticalWeight > 0.0f) {
                                                }
                                                if (z16) {
                                                }
                                                z4 = true;
                                                if (z4) {
                                                }
                                                if (z25) {
                                                }
                                                if (z25) {
                                                }
                                                if (z26) {
                                                }
                                                if (z8) {
                                                }
                                                if (this.mFirst) {
                                                }
                                                if (z11) {
                                                }
                                                if (this.mAttachInfo.mHasWindowFocus) {
                                                }
                                                if (z28) {
                                                }
                                                if (z29) {
                                                }
                                                if (!z27) {
                                                }
                                                if (!(this.mWindowAttributes != null && this.mWindowAttributes.type == 2005)) {
                                                }
                                                this.mFirst = false;
                                                this.mWillDrawSoon = false;
                                                this.mNewSurfaceNeeded = false;
                                                this.mActivityRelaunched = false;
                                                this.mViewVisibility = i4;
                                                this.mHadWindowFocus = z28;
                                                if (z28) {
                                                }
                                                z30 = true;
                                                if ((i5 & 2) != 0) {
                                                }
                                                if (!this.mAttachInfo.mTreeObserver.dispatchOnPreDraw()) {
                                                }
                                                if (z30) {
                                                }
                                                if (!z9) {
                                                }
                                                this.mIsInTraversal = false;
                                            }
                                            if (this.mAttachInfo.mThreadedRenderer != null) {
                                                try {
                                                    z24 = this.mAttachInfo.mThreadedRenderer.initialize(this.mSurface);
                                                    if (z24) {
                                                        try {
                                                            try {
                                                                if ((view.mPrivateFlags & 512) == 0) {
                                                                    this.mSurface.allocateBuffers();
                                                                }
                                                            } catch (Surface.OutOfResourcesException e) {
                                                                e = e;
                                                                handleOutOfResourcesException(e);
                                                                return;
                                                            }
                                                        } catch (RemoteException unused3) {
                                                            z13 = z24;
                                                            z7 = z36;
                                                            rect2 = rect7;
                                                            z12 = true;
                                                        }
                                                    }
                                                    z13 = z24;
                                                    z12 = true;
                                                    int i10 = (i5 & 16) == 0 ? 1 : 0;
                                                    z23 = i10 == 0 || ((i5 & 8) == 0);
                                                    if (this.mDragResizing != z23) {
                                                        z7 = z36;
                                                        rect3 = rect7;
                                                    } else if (z23) {
                                                        this.mResizeMode = i10 ^ 1;
                                                        z7 = z36;
                                                        rect3 = rect7;
                                                        startDragResizing(this.mPendingBackDropFrame, this.mWinFrame.equals(this.mPendingBackDropFrame), this.mPendingVisibleInsets, this.mPendingStableInsets, this.mResizeMode);
                                                    } else {
                                                        z7 = z36;
                                                        rect3 = rect7;
                                                        endDragResizing();
                                                    }
                                                    if (!this.mUseMTRenderer) {
                                                        if (z23) {
                                                            this.mCanvasOffsetX = this.mWinFrame.left;
                                                            this.mCanvasOffsetY = this.mWinFrame.top;
                                                        } else {
                                                            this.mCanvasOffsetY = 0;
                                                            this.mCanvasOffsetX = 0;
                                                        }
                                                    }
                                                    rect2 = rect3;
                                                    this.mAttachInfo.mWindowLeft = rect2.left;
                                                    this.mAttachInfo.mWindowTop = rect2.top;
                                                    if (this.mWidth == rect2.width() || this.mHeight != rect2.height()) {
                                                        this.mWidth = rect2.width();
                                                        this.mHeight = rect2.height();
                                                    }
                                                    if (this.mSurfaceHolder != null) {
                                                        if (this.mSurface.isValid()) {
                                                            this.mSurfaceHolder.mSurface = this.mSurface;
                                                        }
                                                        this.mSurfaceHolder.setSurfaceFrameSize(this.mWidth, this.mHeight);
                                                        this.mSurfaceHolder.mSurfaceLock.unlock();
                                                        if (this.mSurface.isValid()) {
                                                            if (!isValid) {
                                                                this.mSurfaceHolder.ungetCallbacks();
                                                                this.mIsCreating = true;
                                                                SurfaceHolder.Callback[] callbacks2 = this.mSurfaceHolder.getCallbacks();
                                                                if (callbacks2 != null) {
                                                                    for (SurfaceHolder.Callback callback : callbacks2) {
                                                                        callback.surfaceCreated(this.mSurfaceHolder);
                                                                    }
                                                                }
                                                                z39 = true;
                                                            }
                                                            if ((z39 || generationId != this.mSurface.getGenerationId()) && (callbacks = this.mSurfaceHolder.getCallbacks()) != null) {
                                                                for (SurfaceHolder.Callback callback2 : callbacks) {
                                                                    callback2.surfaceChanged(this.mSurfaceHolder, layoutParams2.format, this.mWidth, this.mHeight);
                                                                }
                                                            }
                                                            this.mIsCreating = false;
                                                        } else if (isValid) {
                                                            this.mSurfaceHolder.ungetCallbacks();
                                                            SurfaceHolder.Callback[] callbacks3 = this.mSurfaceHolder.getCallbacks();
                                                            if (callbacks3 != null) {
                                                                for (SurfaceHolder.Callback callback3 : callbacks3) {
                                                                    callback3.surfaceDestroyed(this.mSurfaceHolder);
                                                                }
                                                            }
                                                            this.mSurfaceHolder.mSurfaceLock.lock();
                                                            try {
                                                                this.mSurfaceHolder.mSurface = new Surface();
                                                            } finally {
                                                                this.mSurfaceHolder.mSurfaceLock.unlock();
                                                            }
                                                        }
                                                    }
                                                    threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                                                    if (threadedRenderer != null && threadedRenderer.isEnabled() && (z13 || this.mWidth != threadedRenderer.getWidth() || this.mHeight != threadedRenderer.getHeight() || this.mNeedsRendererSetup)) {
                                                        threadedRenderer.setup(this.mWidth, this.mHeight, this.mAttachInfo, this.mWindowAttributes.surfaceInsets);
                                                        this.mNeedsRendererSetup = false;
                                                    }
                                                    if (this.mStopped || this.mReportNextDraw) {
                                                        if (!ensureTouchModeLocally((i5 & 1) != 0) || this.mWidth != view.getMeasuredWidth() || this.mHeight != view.getMeasuredHeight() || z15 || z14) {
                                                            int rootMeasureSpec32 = getRootMeasureSpec(this.mWidth, layoutParams2.width);
                                                            int rootMeasureSpec222 = getRootMeasureSpec(this.mHeight, layoutParams2.height);
                                                            performMeasure(rootMeasureSpec32, rootMeasureSpec222);
                                                            int measuredWidth22 = view.getMeasuredWidth();
                                                            int measuredHeight22 = view.getMeasuredHeight();
                                                            if (layoutParams2.horizontalWeight > 0.0f) {
                                                                i6 = View.MeasureSpec.makeMeasureSpec(measuredWidth22 + ((int) ((this.mWidth - measuredWidth22) * layoutParams2.horizontalWeight)), 1073741824);
                                                                z16 = true;
                                                            } else {
                                                                i6 = rootMeasureSpec32;
                                                                z16 = false;
                                                            }
                                                            if (layoutParams2.verticalWeight > 0.0f) {
                                                                rootMeasureSpec222 = View.MeasureSpec.makeMeasureSpec(measuredHeight22 + ((int) ((this.mHeight - measuredHeight22) * layoutParams2.verticalWeight)), 1073741824);
                                                                z16 = true;
                                                            }
                                                            if (z16) {
                                                                performMeasure(i6, rootMeasureSpec222);
                                                            }
                                                            z4 = true;
                                                        }
                                                    }
                                                } catch (Surface.OutOfResourcesException e2) {
                                                    e = e2;
                                                    z24 = false;
                                                }
                                            } else {
                                                z12 = true;
                                                z13 = false;
                                                if ((i5 & 16) == 0) {
                                                }
                                                if (i10 == 0) {
                                                }
                                                if (this.mDragResizing != z23) {
                                                }
                                                if (!this.mUseMTRenderer) {
                                                }
                                                rect2 = rect3;
                                                this.mAttachInfo.mWindowLeft = rect2.left;
                                                this.mAttachInfo.mWindowTop = rect2.top;
                                                if (this.mWidth == rect2.width()) {
                                                }
                                                this.mWidth = rect2.width();
                                                this.mHeight = rect2.height();
                                                if (this.mSurfaceHolder != null) {
                                                }
                                                threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                                                if (threadedRenderer != null) {
                                                    threadedRenderer.setup(this.mWidth, this.mHeight, this.mAttachInfo, this.mWindowAttributes.surfaceInsets);
                                                    this.mNeedsRendererSetup = false;
                                                }
                                                if (this.mStopped) {
                                                }
                                                if (!ensureTouchModeLocally((i5 & 1) != 0)) {
                                                }
                                                int rootMeasureSpec322 = getRootMeasureSpec(this.mWidth, layoutParams2.width);
                                                int rootMeasureSpec2222 = getRootMeasureSpec(this.mHeight, layoutParams2.height);
                                                performMeasure(rootMeasureSpec322, rootMeasureSpec2222);
                                                int measuredWidth222 = view.getMeasuredWidth();
                                                int measuredHeight222 = view.getMeasuredHeight();
                                                if (layoutParams2.horizontalWeight > 0.0f) {
                                                }
                                                if (layoutParams2.verticalWeight > 0.0f) {
                                                }
                                                if (z16) {
                                                }
                                                z4 = true;
                                            }
                                        }
                                    } else if (!this.mSurface.isValid()) {
                                        if (this.mLastScrolledFocus != null) {
                                            this.mLastScrolledFocus.clear();
                                        }
                                        this.mCurScrollY = 0;
                                        this.mScrollY = 0;
                                        if (this.mView instanceof RootViewSurfaceTaker) {
                                            this.mView.onRootViewScrollYChanged(this.mCurScrollY);
                                        }
                                        if (this.mScroller != null) {
                                            this.mScroller.abortAnimation();
                                        }
                                        if (this.mAttachInfo.mThreadedRenderer != null && this.mAttachInfo.mThreadedRenderer.isEnabled()) {
                                            this.mAttachInfo.mThreadedRenderer.destroy();
                                        }
                                    } else if ((generationId != this.mSurface.getGenerationId() || z38 || z35) && this.mSurfaceHolder == null && this.mAttachInfo.mThreadedRenderer != null) {
                                        this.mFullRedrawNeeded = true;
                                        try {
                                            this.mAttachInfo.mThreadedRenderer.updateSurface(this.mSurface);
                                        } catch (Surface.OutOfResourcesException e3) {
                                            handleOutOfResourcesException(e3);
                                            return;
                                        }
                                    }
                                    z12 = false;
                                    z13 = false;
                                    if ((i5 & 16) == 0) {
                                    }
                                    if (i10 == 0) {
                                    }
                                    if (this.mDragResizing != z23) {
                                    }
                                    if (!this.mUseMTRenderer) {
                                    }
                                    rect2 = rect3;
                                    this.mAttachInfo.mWindowLeft = rect2.left;
                                    this.mAttachInfo.mWindowTop = rect2.top;
                                    if (this.mWidth == rect2.width()) {
                                    }
                                    this.mWidth = rect2.width();
                                    this.mHeight = rect2.height();
                                    if (this.mSurfaceHolder != null) {
                                    }
                                    threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                                    if (threadedRenderer != null) {
                                    }
                                    if (this.mStopped) {
                                    }
                                    if (!ensureTouchModeLocally((i5 & 1) != 0)) {
                                    }
                                    int rootMeasureSpec3222 = getRootMeasureSpec(this.mWidth, layoutParams2.width);
                                    int rootMeasureSpec22222 = getRootMeasureSpec(this.mHeight, layoutParams2.height);
                                    performMeasure(rootMeasureSpec3222, rootMeasureSpec22222);
                                    int measuredWidth2222 = view.getMeasuredWidth();
                                    int measuredHeight2222 = view.getMeasuredHeight();
                                    if (layoutParams2.horizontalWeight > 0.0f) {
                                    }
                                    if (layoutParams2.verticalWeight > 0.0f) {
                                    }
                                    if (z16) {
                                    }
                                    z4 = true;
                                } else {
                                    maybeHandleWindowMove(rect);
                                    i4 = hostVisibility;
                                    z11 = z32;
                                    z12 = false;
                                    i5 = 0;
                                    z7 = false;
                                }
                                z25 = !z4 && (!this.mStopped || this.mReportNextDraw);
                                z26 = !z25 || this.mAttachInfo.mRecomputeGlobalAttributes;
                                if (z25) {
                                    performLayout(layoutParams2, this.mWidth, this.mHeight);
                                    if ((view.mPrivateFlags & 512) != 0) {
                                        view.getLocationInWindow(this.mTmpLocation);
                                        this.mTransparentRegion.set(this.mTmpLocation[0], this.mTmpLocation[1], (this.mTmpLocation[0] + view.mRight) - view.mLeft, (this.mTmpLocation[1] + view.mBottom) - view.mTop);
                                        view.gatherTransparentRegion(this.mTransparentRegion);
                                        if (this.mTranslator != null) {
                                            this.mTranslator.translateRegionInWindowToScreen(this.mTransparentRegion);
                                        }
                                        if (!this.mTransparentRegion.equals(this.mPreviousTransparentRegion)) {
                                            this.mPreviousTransparentRegion.set(this.mTransparentRegion);
                                            this.mFullRedrawNeeded = true;
                                            try {
                                                this.mWindowSession.setTransparentRegion(this.mWindow, this.mTransparentRegion);
                                            } catch (RemoteException unused4) {
                                            }
                                        }
                                    }
                                }
                                if (z26) {
                                    this.mAttachInfo.mRecomputeGlobalAttributes = false;
                                    this.mAttachInfo.mTreeObserver.dispatchOnGlobalLayout();
                                }
                                if (z8) {
                                    ViewTreeObserver.InternalInsetsInfo internalInsetsInfo = this.mAttachInfo.mGivenInternalInsets;
                                    internalInsetsInfo.reset();
                                    this.mAttachInfo.mTreeObserver.dispatchOnComputeInternalInsets(internalInsetsInfo);
                                    this.mAttachInfo.mHasNonEmptyGivenInternalInsets = !internalInsetsInfo.isEmpty();
                                    if (z7 || !this.mLastGivenInsets.equals(internalInsetsInfo)) {
                                        this.mLastGivenInsets.set(internalInsetsInfo);
                                        if (this.mTranslator != null) {
                                            rect4 = this.mTranslator.getTranslatedContentInsets(internalInsetsInfo.contentInsets);
                                            rect5 = this.mTranslator.getTranslatedVisibleInsets(internalInsetsInfo.visibleInsets);
                                            region = this.mTranslator.getTranslatedTouchableArea(internalInsetsInfo.touchableRegion);
                                        } else {
                                            rect4 = internalInsetsInfo.contentInsets;
                                            rect5 = internalInsetsInfo.visibleInsets;
                                            region = internalInsetsInfo.touchableRegion;
                                        }
                                        try {
                                            this.mWindowSession.setInsets(this.mWindow, internalInsetsInfo.mTouchableInsets, rect4, rect5, region);
                                        } catch (RemoteException unused5) {
                                        }
                                    }
                                }
                                if (this.mFirst) {
                                    if (sAlwaysAssignFocus || !isInTouchMode()) {
                                        if (this.mView != null && !this.mView.hasFocus()) {
                                            this.mView.restoreDefaultFocus();
                                        }
                                    } else {
                                        View findFocus = this.mView.findFocus();
                                        if ((findFocus instanceof ViewGroup) && ((ViewGroup) findFocus).getDescendantFocusability() == 262144) {
                                            findFocus.restoreDefaultFocus();
                                        }
                                    }
                                }
                                z27 = (!z11 || this.mFirst) && z9;
                                z28 = !this.mAttachInfo.mHasWindowFocus && z9;
                                z29 = !z28 && this.mLostWindowFocus;
                                if (z29) {
                                    this.mLostWindowFocus = false;
                                } else if (!z28 && this.mHadWindowFocus) {
                                    this.mLostWindowFocus = true;
                                }
                                if (!z27 || z29) {
                                    if (!(this.mWindowAttributes != null && this.mWindowAttributes.type == 2005)) {
                                        view.sendAccessibilityEvent(32);
                                    }
                                }
                                this.mFirst = false;
                                this.mWillDrawSoon = false;
                                this.mNewSurfaceNeeded = false;
                                this.mActivityRelaunched = false;
                                this.mViewVisibility = i4;
                                this.mHadWindowFocus = z28;
                                if (z28 && !isInLocalFocusMode() && (mayUseInputMethod = WindowManager.LayoutParams.mayUseInputMethod(this.mWindowAttributes.flags)) != this.mLastWasImTarget) {
                                    this.mLastWasImTarget = mayUseInputMethod;
                                    peekInstance = InputMethodManager.peekInstance();
                                    if (peekInstance != null && mayUseInputMethod) {
                                        peekInstance.onPreWindowFocus(this.mView, z28);
                                        z30 = true;
                                        peekInstance.onPostWindowFocus(this.mView, this.mView.findFocus(), this.mWindowAttributes.softInputMode, !this.mHasHadWindowFocus, this.mWindowAttributes.flags);
                                        if ((i5 & 2) != 0) {
                                            reportNextDraw();
                                        }
                                        if (!this.mAttachInfo.mTreeObserver.dispatchOnPreDraw() && z9) {
                                            z30 = false;
                                        }
                                        if (z30 && !z12) {
                                            if (this.mPendingTransitions != null && this.mPendingTransitions.size() > 0) {
                                                for (int i11 = 0; i11 < this.mPendingTransitions.size(); i11++) {
                                                    this.mPendingTransitions.get(i11).startChangingAnimations();
                                                }
                                                this.mPendingTransitions.clear();
                                            }
                                            performDraw();
                                        } else if (!z9) {
                                            scheduleTraversals();
                                        } else if (this.mPendingTransitions != null && this.mPendingTransitions.size() > 0) {
                                            for (int i12 = 0; i12 < this.mPendingTransitions.size(); i12++) {
                                                this.mPendingTransitions.get(i12).endChangingAnimations();
                                            }
                                            this.mPendingTransitions.clear();
                                        }
                                        this.mIsInTraversal = false;
                                    }
                                }
                                z30 = true;
                                if ((i5 & 2) != 0) {
                                }
                                if (!this.mAttachInfo.mTreeObserver.dispatchOnPreDraw()) {
                                    z30 = false;
                                }
                                if (z30) {
                                }
                                if (!z9) {
                                }
                                this.mIsInTraversal = false;
                            }
                        }
                        z7 = i;
                        if (z4) {
                        }
                        boolean z342 = ((z4 || !z5 || (this.mWidth == view.getMeasuredWidth() && this.mHeight == view.getMeasuredHeight() && ((layoutParams2.width != -2 || rect.width() >= i2 || rect.width() == this.mWidth) && (layoutParams2.height != -2 || rect.height() >= z7 || rect.height() == this.mHeight)))) ? false : true) | (!this.mDragResizing && this.mResizeMode == 0) | this.mActivityRelaunched;
                        if (this.mAttachInfo.mTreeObserver.hasComputeInternalInsetsListeners()) {
                        }
                        int generationId2 = this.mSurface.getGenerationId();
                        if (hostVisibility != 0) {
                        }
                        boolean z352 = this.mForceNextWindowRelayout;
                        if (!this.mFirst) {
                        }
                        Rect rect72 = rect;
                        this.mForceNextWindowRelayout = false;
                        if (z9) {
                        }
                        if (this.mSurfaceHolder != null) {
                        }
                        isValid = this.mSurface.isValid();
                        if (this.mAttachInfo.mThreadedRenderer != null) {
                        }
                        i5 = relayoutWindow(layoutParams, hostVisibility, z10);
                        if (this.mPendingMergedConfiguration.equals(this.mLastReportedMergedConfiguration)) {
                        }
                        z17 = !this.mPendingOverscanInsets.equals(this.mAttachInfo.mOverscanInsets);
                        z18 = !this.mPendingContentInsets.equals(this.mAttachInfo.mContentInsets);
                        z19 = !this.mPendingVisibleInsets.equals(this.mAttachInfo.mVisibleInsets);
                        boolean z362 = z10;
                        z20 = !this.mPendingStableInsets.equals(this.mAttachInfo.mStableInsets);
                        z21 = !this.mPendingDisplayCutout.equals(this.mAttachInfo.mDisplayCutout);
                        i4 = hostVisibility;
                        boolean z372 = !this.mPendingOutsets.equals(this.mAttachInfo.mOutsets);
                        if ((i5 & 32) == 0) {
                        }
                        boolean z392 = z2 | z38;
                        boolean z402 = this.mPendingAlwaysConsumeNavBar;
                        z11 = z32;
                        if (z402 == this.mAttachInfo.mAlwaysConsumeNavBar) {
                        }
                        if (z18) {
                        }
                        if (z17) {
                        }
                        if (z20) {
                        }
                        if (z21) {
                        }
                        if (z22) {
                        }
                        if (!z15) {
                        }
                        this.mLastSystemUiVisibility = this.mAttachInfo.mSystemUiVisibility;
                        this.mLastOverscanRequested = this.mAttachInfo.mOverscanRequested;
                        this.mAttachInfo.mOutsets.set(this.mPendingOutsets);
                        this.mApplyInsetsRequested = false;
                        dispatchApplyInsets(view);
                        if (z19) {
                        }
                        if (isValid) {
                        }
                        z12 = false;
                        z13 = false;
                        if ((i5 & 16) == 0) {
                        }
                        if (i10 == 0) {
                        }
                        if (this.mDragResizing != z23) {
                        }
                        if (!this.mUseMTRenderer) {
                        }
                        rect2 = rect3;
                        this.mAttachInfo.mWindowLeft = rect2.left;
                        this.mAttachInfo.mWindowTop = rect2.top;
                        if (this.mWidth == rect2.width()) {
                        }
                        this.mWidth = rect2.width();
                        this.mHeight = rect2.height();
                        if (this.mSurfaceHolder != null) {
                        }
                        threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                        if (threadedRenderer != null) {
                        }
                        if (this.mStopped) {
                        }
                        if (!ensureTouchModeLocally((i5 & 1) != 0)) {
                        }
                        int rootMeasureSpec32222 = getRootMeasureSpec(this.mWidth, layoutParams2.width);
                        int rootMeasureSpec222222 = getRootMeasureSpec(this.mHeight, layoutParams2.height);
                        performMeasure(rootMeasureSpec32222, rootMeasureSpec222222);
                        int measuredWidth22222 = view.getMeasuredWidth();
                        int measuredHeight22222 = view.getMeasuredHeight();
                        if (layoutParams2.horizontalWeight > 0.0f) {
                        }
                        if (layoutParams2.verticalWeight > 0.0f) {
                        }
                        if (z16) {
                        }
                        z4 = true;
                        if (z4) {
                        }
                        if (z25) {
                        }
                        if (z25) {
                        }
                        if (z26) {
                        }
                        if (z8) {
                        }
                        if (this.mFirst) {
                        }
                        if (z11) {
                        }
                        if (this.mAttachInfo.mHasWindowFocus) {
                        }
                        if (z28) {
                        }
                        if (z29) {
                        }
                        if (!z27) {
                        }
                        if (this.mWindowAttributes != null) {
                            if (!(this.mWindowAttributes != null && this.mWindowAttributes.type == 2005)) {
                            }
                            this.mFirst = false;
                            this.mWillDrawSoon = false;
                            this.mNewSurfaceNeeded = false;
                            this.mActivityRelaunched = false;
                            this.mViewVisibility = i4;
                            this.mHadWindowFocus = z28;
                            if (z28) {
                                this.mLastWasImTarget = mayUseInputMethod;
                                peekInstance = InputMethodManager.peekInstance();
                                if (peekInstance != null) {
                                    peekInstance.onPreWindowFocus(this.mView, z28);
                                    z30 = true;
                                    peekInstance.onPostWindowFocus(this.mView, this.mView.findFocus(), this.mWindowAttributes.softInputMode, !this.mHasHadWindowFocus, this.mWindowAttributes.flags);
                                    if ((i5 & 2) != 0) {
                                    }
                                    if (!this.mAttachInfo.mTreeObserver.dispatchOnPreDraw()) {
                                    }
                                    if (z30) {
                                    }
                                    if (!z9) {
                                    }
                                    this.mIsInTraversal = false;
                                }
                            }
                            z30 = true;
                            if ((i5 & 2) != 0) {
                            }
                            if (!this.mAttachInfo.mTreeObserver.dispatchOnPreDraw()) {
                            }
                            if (z30) {
                            }
                            if (!z9) {
                            }
                            this.mIsInTraversal = false;
                        }
                        if (!(this.mWindowAttributes != null && this.mWindowAttributes.type == 2005)) {
                        }
                        this.mFirst = false;
                        this.mWillDrawSoon = false;
                        this.mNewSurfaceNeeded = false;
                        this.mActivityRelaunched = false;
                        this.mViewVisibility = i4;
                        this.mHadWindowFocus = z28;
                        if (z28) {
                        }
                        z30 = true;
                        if ((i5 & 2) != 0) {
                        }
                        if (!this.mAttachInfo.mTreeObserver.dispatchOnPreDraw()) {
                        }
                        if (z30) {
                        }
                        if (!z9) {
                        }
                        this.mIsInTraversal = false;
                    }
                }
                z3 = false;
                if (z32) {
                }
                if (this.mAttachInfo.mWindowVisibility != 0) {
                }
                getRunQueue().executeActions(this.mAttachInfo.mHandler);
                if (this.mLayoutRequested) {
                }
                if (z4) {
                }
                if (collectViewAttributes()) {
                }
                if (this.mAttachInfo.mForceReportNewAttributes) {
                }
                if (!this.mFirst) {
                }
                this.mAttachInfo.mViewVisibilityChanged = false;
                i3 = this.mSoftInputMode & 240;
                if (i3 == 0) {
                }
                if (layoutParams != null) {
                }
                if (this.mApplyInsetsRequested) {
                }
                z7 = i;
                if (z4) {
                }
                boolean z3422 = ((z4 || !z5 || (this.mWidth == view.getMeasuredWidth() && this.mHeight == view.getMeasuredHeight() && ((layoutParams2.width != -2 || rect.width() >= i2 || rect.width() == this.mWidth) && (layoutParams2.height != -2 || rect.height() >= z7 || rect.height() == this.mHeight)))) ? false : true) | (!this.mDragResizing && this.mResizeMode == 0) | this.mActivityRelaunched;
                if (this.mAttachInfo.mTreeObserver.hasComputeInternalInsetsListeners()) {
                }
                int generationId22 = this.mSurface.getGenerationId();
                if (hostVisibility != 0) {
                }
                boolean z3522 = this.mForceNextWindowRelayout;
                if (!this.mFirst) {
                }
                Rect rect722 = rect;
                this.mForceNextWindowRelayout = false;
                if (z9) {
                }
                if (this.mSurfaceHolder != null) {
                }
                isValid = this.mSurface.isValid();
                if (this.mAttachInfo.mThreadedRenderer != null) {
                }
                i5 = relayoutWindow(layoutParams, hostVisibility, z10);
                if (this.mPendingMergedConfiguration.equals(this.mLastReportedMergedConfiguration)) {
                }
                z17 = !this.mPendingOverscanInsets.equals(this.mAttachInfo.mOverscanInsets);
                z18 = !this.mPendingContentInsets.equals(this.mAttachInfo.mContentInsets);
                z19 = !this.mPendingVisibleInsets.equals(this.mAttachInfo.mVisibleInsets);
                boolean z3622 = z10;
                z20 = !this.mPendingStableInsets.equals(this.mAttachInfo.mStableInsets);
                z21 = !this.mPendingDisplayCutout.equals(this.mAttachInfo.mDisplayCutout);
                i4 = hostVisibility;
                boolean z3722 = !this.mPendingOutsets.equals(this.mAttachInfo.mOutsets);
                if ((i5 & 32) == 0) {
                }
                boolean z3922 = z2 | z38;
                boolean z4022 = this.mPendingAlwaysConsumeNavBar;
                z11 = z32;
                if (z4022 == this.mAttachInfo.mAlwaysConsumeNavBar) {
                }
                if (z18) {
                }
                if (z17) {
                }
                if (z20) {
                }
                if (z21) {
                }
                if (z22) {
                }
                if (!z15) {
                }
                this.mLastSystemUiVisibility = this.mAttachInfo.mSystemUiVisibility;
                this.mLastOverscanRequested = this.mAttachInfo.mOverscanRequested;
                this.mAttachInfo.mOutsets.set(this.mPendingOutsets);
                this.mApplyInsetsRequested = false;
                dispatchApplyInsets(view);
                if (z19) {
                }
                if (isValid) {
                }
                z12 = false;
                z13 = false;
                if ((i5 & 16) == 0) {
                }
                if (i10 == 0) {
                }
                if (this.mDragResizing != z23) {
                }
                if (!this.mUseMTRenderer) {
                }
                rect2 = rect3;
                this.mAttachInfo.mWindowLeft = rect2.left;
                this.mAttachInfo.mWindowTop = rect2.top;
                if (this.mWidth == rect2.width()) {
                }
                this.mWidth = rect2.width();
                this.mHeight = rect2.height();
                if (this.mSurfaceHolder != null) {
                }
                threadedRenderer = this.mAttachInfo.mThreadedRenderer;
                if (threadedRenderer != null) {
                }
                if (this.mStopped) {
                }
                if (!ensureTouchModeLocally((i5 & 1) != 0)) {
                }
                int rootMeasureSpec322222 = getRootMeasureSpec(this.mWidth, layoutParams2.width);
                int rootMeasureSpec2222222 = getRootMeasureSpec(this.mHeight, layoutParams2.height);
                performMeasure(rootMeasureSpec322222, rootMeasureSpec2222222);
                int measuredWidth222222 = view.getMeasuredWidth();
                int measuredHeight222222 = view.getMeasuredHeight();
                if (layoutParams2.horizontalWeight > 0.0f) {
                }
                if (layoutParams2.verticalWeight > 0.0f) {
                }
                if (z16) {
                }
                z4 = true;
                if (z4) {
                }
                if (z25) {
                }
                if (z25) {
                }
                if (z26) {
                }
                if (z8) {
                }
                if (this.mFirst) {
                }
                if (z11) {
                }
                if (this.mAttachInfo.mHasWindowFocus) {
                }
                if (z28) {
                }
                if (z29) {
                }
                if (!z27) {
                }
                if (!(this.mWindowAttributes != null && this.mWindowAttributes.type == 2005)) {
                }
                this.mFirst = false;
                this.mWillDrawSoon = false;
                this.mNewSurfaceNeeded = false;
                this.mActivityRelaunched = false;
                this.mViewVisibility = i4;
                this.mHadWindowFocus = z28;
                if (z28) {
                }
                z30 = true;
                if ((i5 & 2) != 0) {
                }
                if (!this.mAttachInfo.mTreeObserver.dispatchOnPreDraw()) {
                }
                if (z30) {
                }
                if (!z9) {
                }
                this.mIsInTraversal = false;
            }
        }
        z = false;
        WindowManager.LayoutParams layoutParams32 = null;
        if (this.mWindowAttributesChanged) {
        }
        if (this.mDisplay.getDisplayAdjustments().getCompatibilityInfo().supportsScreen() != this.mLastInCompatMode) {
        }
        this.mWindowAttributesChangesFlag = 0;
        Rect rect62 = this.mWinFrame;
        if (!this.mFirst) {
        }
        z3 = false;
        if (z32) {
        }
        if (this.mAttachInfo.mWindowVisibility != 0) {
        }
        getRunQueue().executeActions(this.mAttachInfo.mHandler);
        if (this.mLayoutRequested) {
        }
        if (z4) {
        }
        if (collectViewAttributes()) {
        }
        if (this.mAttachInfo.mForceReportNewAttributes) {
        }
        if (!this.mFirst) {
        }
        this.mAttachInfo.mViewVisibilityChanged = false;
        i3 = this.mSoftInputMode & 240;
        if (i3 == 0) {
        }
        if (layoutParams != null) {
        }
        if (this.mApplyInsetsRequested) {
        }
        z7 = i;
        if (z4) {
        }
        boolean z34222 = ((z4 || !z5 || (this.mWidth == view.getMeasuredWidth() && this.mHeight == view.getMeasuredHeight() && ((layoutParams2.width != -2 || rect.width() >= i2 || rect.width() == this.mWidth) && (layoutParams2.height != -2 || rect.height() >= z7 || rect.height() == this.mHeight)))) ? false : true) | (!this.mDragResizing && this.mResizeMode == 0) | this.mActivityRelaunched;
        if (this.mAttachInfo.mTreeObserver.hasComputeInternalInsetsListeners()) {
        }
        int generationId222 = this.mSurface.getGenerationId();
        if (hostVisibility != 0) {
        }
        boolean z35222 = this.mForceNextWindowRelayout;
        if (!this.mFirst) {
        }
        Rect rect7222 = rect;
        this.mForceNextWindowRelayout = false;
        if (z9) {
        }
        if (this.mSurfaceHolder != null) {
        }
        isValid = this.mSurface.isValid();
        if (this.mAttachInfo.mThreadedRenderer != null) {
        }
        i5 = relayoutWindow(layoutParams, hostVisibility, z10);
        if (this.mPendingMergedConfiguration.equals(this.mLastReportedMergedConfiguration)) {
        }
        z17 = !this.mPendingOverscanInsets.equals(this.mAttachInfo.mOverscanInsets);
        z18 = !this.mPendingContentInsets.equals(this.mAttachInfo.mContentInsets);
        z19 = !this.mPendingVisibleInsets.equals(this.mAttachInfo.mVisibleInsets);
        boolean z36222 = z10;
        z20 = !this.mPendingStableInsets.equals(this.mAttachInfo.mStableInsets);
        z21 = !this.mPendingDisplayCutout.equals(this.mAttachInfo.mDisplayCutout);
        i4 = hostVisibility;
        boolean z37222 = !this.mPendingOutsets.equals(this.mAttachInfo.mOutsets);
        if ((i5 & 32) == 0) {
        }
        boolean z39222 = z2 | z38;
        boolean z40222 = this.mPendingAlwaysConsumeNavBar;
        z11 = z32;
        if (z40222 == this.mAttachInfo.mAlwaysConsumeNavBar) {
        }
        if (z18) {
        }
        if (z17) {
        }
        if (z20) {
        }
        if (z21) {
        }
        if (z22) {
        }
        if (!z15) {
        }
        this.mLastSystemUiVisibility = this.mAttachInfo.mSystemUiVisibility;
        this.mLastOverscanRequested = this.mAttachInfo.mOverscanRequested;
        this.mAttachInfo.mOutsets.set(this.mPendingOutsets);
        this.mApplyInsetsRequested = false;
        dispatchApplyInsets(view);
        if (z19) {
        }
        if (isValid) {
        }
        z12 = false;
        z13 = false;
        if ((i5 & 16) == 0) {
        }
        if (i10 == 0) {
        }
        if (this.mDragResizing != z23) {
        }
        if (!this.mUseMTRenderer) {
        }
        rect2 = rect3;
        this.mAttachInfo.mWindowLeft = rect2.left;
        this.mAttachInfo.mWindowTop = rect2.top;
        if (this.mWidth == rect2.width()) {
        }
        this.mWidth = rect2.width();
        this.mHeight = rect2.height();
        if (this.mSurfaceHolder != null) {
        }
        threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
        }
        if (this.mStopped) {
        }
        if (!ensureTouchModeLocally((i5 & 1) != 0)) {
        }
        int rootMeasureSpec3222222 = getRootMeasureSpec(this.mWidth, layoutParams2.width);
        int rootMeasureSpec22222222 = getRootMeasureSpec(this.mHeight, layoutParams2.height);
        performMeasure(rootMeasureSpec3222222, rootMeasureSpec22222222);
        int measuredWidth2222222 = view.getMeasuredWidth();
        int measuredHeight2222222 = view.getMeasuredHeight();
        if (layoutParams2.horizontalWeight > 0.0f) {
        }
        if (layoutParams2.verticalWeight > 0.0f) {
        }
        if (z16) {
        }
        z4 = true;
        if (z4) {
        }
        if (z25) {
        }
        if (z25) {
        }
        if (z26) {
        }
        if (z8) {
        }
        if (this.mFirst) {
        }
        if (z11) {
        }
        if (this.mAttachInfo.mHasWindowFocus) {
        }
        if (z28) {
        }
        if (z29) {
        }
        if (!z27) {
        }
        if (!(this.mWindowAttributes != null && this.mWindowAttributes.type == 2005)) {
        }
        this.mFirst = false;
        this.mWillDrawSoon = false;
        this.mNewSurfaceNeeded = false;
        this.mActivityRelaunched = false;
        this.mViewVisibility = i4;
        this.mHadWindowFocus = z28;
        if (z28) {
        }
        z30 = true;
        if ((i5 & 2) != 0) {
        }
        if (!this.mAttachInfo.mTreeObserver.dispatchOnPreDraw()) {
        }
        if (z30) {
        }
        if (!z9) {
        }
        this.mIsInTraversal = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeHandleWindowMove(Rect rect) {
        boolean z = (this.mAttachInfo.mWindowLeft == rect.left && this.mAttachInfo.mWindowTop == rect.top) ? false : true;
        if (z) {
            if (this.mTranslator != null) {
                this.mTranslator.translateRectInScreenToAppWinFrame(rect);
            }
            this.mAttachInfo.mWindowLeft = rect.left;
            this.mAttachInfo.mWindowTop = rect.top;
        }
        if (z || this.mAttachInfo.mNeedsUpdateLightCenter) {
            if (this.mAttachInfo.mThreadedRenderer != null) {
                this.mAttachInfo.mThreadedRenderer.setLightCenter(this.mAttachInfo);
            }
            this.mAttachInfo.mNeedsUpdateLightCenter = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleWindowFocusChanged() {
        synchronized (this) {
            if (this.mWindowFocusChanged) {
                this.mWindowFocusChanged = false;
                boolean z = this.mUpcomingWindowFocus;
                boolean z2 = this.mUpcomingInTouchMode;
                if (this.mAdded) {
                    profileRendering(z);
                    if (z) {
                        ensureTouchModeLocally(z2);
                        if (this.mAttachInfo.mThreadedRenderer != null && this.mSurface.isValid()) {
                            this.mFullRedrawNeeded = true;
                            try {
                                WindowManager.LayoutParams layoutParams = this.mWindowAttributes;
                                this.mAttachInfo.mThreadedRenderer.initializeIfNeeded(this.mWidth, this.mHeight, this.mAttachInfo, this.mSurface, layoutParams != null ? layoutParams.surfaceInsets : null);
                            } catch (Surface.OutOfResourcesException e) {
                                Log.e(this.mTag, "OutOfResourcesException locking surface", e);
                                try {
                                    if (!this.mWindowSession.outOfMemory(this.mWindow)) {
                                        Slog.w(this.mTag, "No processes killed for memory; killing self");
                                        Process.killProcess(Process.myPid());
                                    }
                                } catch (RemoteException unused) {
                                }
                                this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(6), 500L);
                                return;
                            }
                        }
                    }
                    this.mAttachInfo.mHasWindowFocus = z;
                    this.mLastWasImTarget = WindowManager.LayoutParams.mayUseInputMethod(this.mWindowAttributes.flags);
                    InputMethodManager peekInstance = InputMethodManager.peekInstance();
                    if (peekInstance != null && this.mLastWasImTarget && !isInLocalFocusMode()) {
                        peekInstance.onPreWindowFocus(this.mView, z);
                    }
                    if (this.mView != null) {
                        this.mAttachInfo.mKeyDispatchState.reset();
                        this.mView.dispatchWindowFocusChanged(z);
                        this.mAttachInfo.mTreeObserver.dispatchOnWindowFocusChange(z);
                        if (this.mAttachInfo.mTooltipHost != null) {
                            this.mAttachInfo.mTooltipHost.hideTooltip();
                        }
                    }
                    if (z) {
                        if (peekInstance != null && this.mLastWasImTarget && !isInLocalFocusMode()) {
                            peekInstance.onPostWindowFocus(this.mView, this.mView.findFocus(), this.mWindowAttributes.softInputMode, !this.mHasHadWindowFocus, this.mWindowAttributes.flags);
                        }
                        this.mWindowAttributes.softInputMode &= -257;
                        ((WindowManager.LayoutParams) this.mView.getLayoutParams()).softInputMode &= -257;
                        this.mHasHadWindowFocus = true;
                        fireAccessibilityFocusEventIfHasFocusedNode();
                    } else if (this.mPointerCapture) {
                        handlePointerCaptureChanged(false);
                    }
                }
                this.mFirstInputStage.onWindowFocusChanged(z);
            }
        }
    }

    private void fireAccessibilityFocusEventIfHasFocusedNode() {
        View findFocus;
        if (AccessibilityManager.getInstance(this.mContext).isEnabled() && (findFocus = this.mView.findFocus()) != null) {
            AccessibilityNodeProvider accessibilityNodeProvider = findFocus.getAccessibilityNodeProvider();
            if (accessibilityNodeProvider == null) {
                findFocus.sendAccessibilityEvent(8);
                return;
            }
            AccessibilityNodeInfo findFocusedVirtualNode = findFocusedVirtualNode(accessibilityNodeProvider);
            if (findFocusedVirtualNode != null) {
                int virtualDescendantId = AccessibilityNodeInfo.getVirtualDescendantId(findFocusedVirtualNode.getSourceNodeId());
                AccessibilityEvent obtain = AccessibilityEvent.obtain(8);
                obtain.setSource(findFocus, virtualDescendantId);
                obtain.setPackageName(findFocusedVirtualNode.getPackageName());
                obtain.setChecked(findFocusedVirtualNode.isChecked());
                obtain.setContentDescription(findFocusedVirtualNode.getContentDescription());
                obtain.setPassword(findFocusedVirtualNode.isPassword());
                obtain.getText().add(findFocusedVirtualNode.getText());
                obtain.setEnabled(findFocusedVirtualNode.isEnabled());
                findFocus.getParent().requestSendAccessibilityEvent(findFocus, obtain);
                findFocusedVirtualNode.recycle();
            }
        }
    }

    private AccessibilityNodeInfo findFocusedVirtualNode(AccessibilityNodeProvider accessibilityNodeProvider) {
        AccessibilityNodeInfo findFocus = accessibilityNodeProvider.findFocus(1);
        if (findFocus != null) {
            return findFocus;
        }
        if (!this.mContext.isAutofillCompatibilityEnabled()) {
            return null;
        }
        AccessibilityNodeInfo createAccessibilityNodeInfo = accessibilityNodeProvider.createAccessibilityNodeInfo(-1);
        if (createAccessibilityNodeInfo.isFocused()) {
            return createAccessibilityNodeInfo;
        }
        LinkedList linkedList = new LinkedList();
        linkedList.offer(createAccessibilityNodeInfo);
        while (!linkedList.isEmpty()) {
            AccessibilityNodeInfo accessibilityNodeInfo = (AccessibilityNodeInfo) linkedList.poll();
            LongArray childNodeIds = accessibilityNodeInfo.getChildNodeIds();
            if (childNodeIds != null && childNodeIds.size() > 0) {
                int size = childNodeIds.size();
                for (int i = 0; i < size; i++) {
                    AccessibilityNodeInfo createAccessibilityNodeInfo2 = accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(childNodeIds.get(i)));
                    if (createAccessibilityNodeInfo2 != null) {
                        if (createAccessibilityNodeInfo2.isFocused()) {
                            return createAccessibilityNodeInfo2;
                        }
                        linkedList.offer(createAccessibilityNodeInfo2);
                    }
                }
                accessibilityNodeInfo.recycle();
            }
        }
        return null;
    }

    private void handleOutOfResourcesException(Surface.OutOfResourcesException outOfResourcesException) {
        Log.e(this.mTag, "OutOfResourcesException initializing HW surface", outOfResourcesException);
        try {
            if (!this.mWindowSession.outOfMemory(this.mWindow) && Process.myUid() != 1000) {
                Slog.w(this.mTag, "No processes killed for memory; killing self");
                Process.killProcess(Process.myPid());
            }
        } catch (RemoteException unused) {
        }
        this.mLayoutRequested = true;
    }

    private void performMeasure(int i, int i2) {
        if (this.mView == null) {
            return;
        }
        Trace.traceBegin(8L, "measure");
        try {
            this.mView.measure(i, i2);
        } finally {
            Trace.traceEnd(8L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInLayout() {
        return this.mInLayout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean requestLayoutDuringLayout(View view) {
        if (view.mParent == null || view.mAttachInfo == null) {
            return true;
        }
        if (!this.mLayoutRequesters.contains(view)) {
            this.mLayoutRequesters.add(view);
        }
        return !this.mHandlingLayoutInLayoutRequest;
    }

    private void performLayout(WindowManager.LayoutParams layoutParams, int i, int i2) {
        ArrayList<View> validLayoutRequesters;
        this.mLayoutRequested = false;
        this.mScrollMayChange = true;
        this.mInLayout = true;
        View view = this.mView;
        if (view == null) {
            return;
        }
        Trace.traceBegin(8L, "layout");
        try {
            view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
            this.mInLayout = false;
            if (this.mLayoutRequesters.size() > 0 && (validLayoutRequesters = getValidLayoutRequesters(this.mLayoutRequesters, false)) != null) {
                this.mHandlingLayoutInLayoutRequest = true;
                int size = validLayoutRequesters.size();
                for (int i3 = 0; i3 < size; i3++) {
                    View view2 = validLayoutRequesters.get(i3);
                    Log.w("View", "requestLayout() improperly called by " + view2 + " during layout: running second layout pass");
                    view2.requestLayout();
                }
                measureHierarchy(view, layoutParams, this.mView.getContext().getResources(), i, i2);
                this.mInLayout = true;
                view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
                this.mHandlingLayoutInLayoutRequest = false;
                final ArrayList<View> validLayoutRequesters2 = getValidLayoutRequesters(this.mLayoutRequesters, true);
                if (validLayoutRequesters2 != null) {
                    getRunQueue().post(new Runnable() { // from class: android.view.ViewRootImpl.2
                        @Override // java.lang.Runnable
                        public void run() {
                            int size2 = validLayoutRequesters2.size();
                            for (int i4 = 0; i4 < size2; i4++) {
                                View view3 = (View) validLayoutRequesters2.get(i4);
                                Log.w("View", "requestLayout() improperly called by " + view3 + " during second layout pass: posting in next frame");
                                view3.requestLayout();
                            }
                        }
                    });
                }
            }
            Trace.traceEnd(8L);
            this.mInLayout = false;
        } catch (Throwable th) {
            Trace.traceEnd(8L);
            throw th;
        }
    }

    private ArrayList<View> getValidLayoutRequesters(ArrayList<View> arrayList, boolean z) {
        boolean z2;
        int size = arrayList.size();
        ArrayList<View> arrayList2 = null;
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            if (view != null && view.mAttachInfo != null && view.mParent != null && (z || (view.mPrivateFlags & 4096) == 4096)) {
                View view2 = view;
                while (true) {
                    if (view2 == null) {
                        z2 = false;
                        break;
                    }
                    if ((view2.mViewFlags & 12) == 8) {
                        z2 = true;
                        break;
                    }
                    view2 = view2.mParent instanceof View ? (View) view2.mParent : null;
                }
                if (!z2) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    arrayList2.add(view);
                }
            }
        }
        if (!z) {
            for (int i2 = 0; i2 < size; i2++) {
                View view3 = arrayList.get(i2);
                while (view3 != null && (view3.mPrivateFlags & 4096) != 0) {
                    view3.mPrivateFlags &= -4097;
                    view3 = view3.mParent instanceof View ? (View) view3.mParent : null;
                }
            }
        }
        arrayList.clear();
        return arrayList2;
    }

    @Override // android.view.ViewParent
    public void requestTransparentRegion(View view) {
        checkThread();
        if (this.mView == view) {
            this.mView.mPrivateFlags |= 512;
            this.mWindowAttributesChanged = true;
            this.mWindowAttributesChangesFlag = 0;
            requestLayout();
        }
    }

    private static int getRootMeasureSpec(int i, int i2) {
        switch (i2) {
            case -2:
                return View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE);
            case -1:
                return View.MeasureSpec.makeMeasureSpec(i, 1073741824);
            default:
                return View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
        }
    }

    @Override // android.view.ThreadedRenderer.DrawCallbacks
    public void onPreDraw(DisplayListCanvas displayListCanvas) {
        if (this.mCurScrollY != 0 && this.mHardwareYOffset != 0 && this.mAttachInfo.mThreadedRenderer.isOpaque()) {
            displayListCanvas.drawColor(-16777216);
        }
        displayListCanvas.translate(-this.mHardwareXOffset, -this.mHardwareYOffset);
    }

    @Override // android.view.ThreadedRenderer.DrawCallbacks
    public void onPostDraw(DisplayListCanvas displayListCanvas) {
        drawAccessibilityFocusedDrawableIfNeeded(displayListCanvas);
        if (this.mUseMTRenderer) {
            for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
                this.mWindowCallbacks.get(size).onPostDraw(displayListCanvas);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void outputDisplayList(View view) {
        view.mRenderNode.output();
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.serializeDisplayListTree();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void profileRendering(boolean z) {
        if (this.mProfileRendering) {
            this.mRenderProfilingEnabled = z;
            if (this.mRenderProfiler != null) {
                this.mChoreographer.removeFrameCallback(this.mRenderProfiler);
            }
            if (this.mRenderProfilingEnabled) {
                if (this.mRenderProfiler == null) {
                    this.mRenderProfiler = new Choreographer.FrameCallback() { // from class: android.view.ViewRootImpl.3
                        @Override // android.view.Choreographer.FrameCallback
                        public void doFrame(long j) {
                            ViewRootImpl.this.mDirty.set(0, 0, ViewRootImpl.this.mWidth, ViewRootImpl.this.mHeight);
                            ViewRootImpl.this.scheduleTraversals();
                            if (ViewRootImpl.this.mRenderProfilingEnabled) {
                                ViewRootImpl.this.mChoreographer.postFrameCallback(ViewRootImpl.this.mRenderProfiler);
                            }
                        }
                    };
                }
                this.mChoreographer.postFrameCallback(this.mRenderProfiler);
                return;
            }
            this.mRenderProfiler = null;
        }
    }

    private void trackFPS() {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.mFpsStartTime < 0) {
            this.mFpsPrevTime = currentTimeMillis;
            this.mFpsStartTime = currentTimeMillis;
            this.mFpsNumFrames = 0;
            return;
        }
        this.mFpsNumFrames++;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        long j = currentTimeMillis - this.mFpsPrevTime;
        long j2 = currentTimeMillis - this.mFpsStartTime;
        Log.v(this.mTag, "0x" + hexString + "\tFrame time:\t" + j);
        this.mFpsPrevTime = currentTimeMillis;
        if (j2 > 1000) {
            String str = this.mTag;
            Log.v(str, "0x" + hexString + "\tFPS:\t" + ((this.mFpsNumFrames * 1000.0f) / ((float) j2)));
            this.mFpsStartTime = currentTimeMillis;
            this.mFpsNumFrames = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void drawPending() {
        this.mDrawsNeededToReport++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void pendingDrawFinished() {
        if (this.mDrawsNeededToReport == 0) {
            throw new RuntimeException("Unbalanced drawPending/pendingDrawFinished calls");
        }
        this.mDrawsNeededToReport--;
        if (this.mDrawsNeededToReport == 0) {
            reportDrawFinished();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postDrawFinished() {
        this.mHandler.sendEmptyMessage(29);
    }

    private void reportDrawFinished() {
        try {
            this.mDrawsNeededToReport = 0;
            this.mWindowSession.finishDrawing(this.mWindow);
        } catch (RemoteException unused) {
        }
    }

    private void performDraw() {
        boolean z = true;
        if ((this.mAttachInfo.mDisplayState != 1 || this.mReportNextDraw) && this.mView != null) {
            boolean z2 = this.mFullRedrawNeeded || this.mReportNextDraw;
            this.mFullRedrawNeeded = false;
            this.mIsDrawing = true;
            Trace.traceBegin(8L, "draw");
            if (this.mReportNextDraw && this.mAttachInfo.mThreadedRenderer != null && this.mAttachInfo.mThreadedRenderer.isEnabled()) {
                this.mAttachInfo.mThreadedRenderer.setFrameCompleteCallback(new ThreadedRenderer.FrameCompleteCallback() { // from class: android.view.-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM
                    @Override // android.view.ThreadedRenderer.FrameCompleteCallback
                    public final void onFrameComplete(long j) {
                        ViewRootImpl.this.pendingDrawFinished();
                    }
                });
            } else {
                z = false;
            }
            try {
                boolean draw = draw(z2);
                if (z && !draw) {
                    this.mAttachInfo.mThreadedRenderer.setFrameCompleteCallback(null);
                    z = false;
                }
                this.mIsDrawing = false;
                Trace.traceEnd(8L);
                if (this.mAttachInfo.mPendingAnimatingRenderNodes != null) {
                    int size = this.mAttachInfo.mPendingAnimatingRenderNodes.size();
                    for (int i = 0; i < size; i++) {
                        this.mAttachInfo.mPendingAnimatingRenderNodes.get(i).endAllAnimators();
                    }
                    this.mAttachInfo.mPendingAnimatingRenderNodes.clear();
                }
                if (this.mReportNextDraw) {
                    this.mReportNextDraw = false;
                    if (this.mWindowDrawCountDown != null) {
                        try {
                            this.mWindowDrawCountDown.await();
                        } catch (InterruptedException unused) {
                            Log.e(this.mTag, "Window redraw count down interrupted!");
                        }
                        this.mWindowDrawCountDown = null;
                    }
                    if (this.mAttachInfo.mThreadedRenderer != null) {
                        this.mAttachInfo.mThreadedRenderer.setStopped(this.mStopped);
                    }
                    if (this.mSurfaceHolder != null && this.mSurface.isValid()) {
                        new SurfaceCallbackHelper(new Runnable() { // from class: android.view.-$$Lambda$ViewRootImpl$dznxCZGM2R1fsBljsJKomLjBRoM
                            @Override // java.lang.Runnable
                            public final void run() {
                                ViewRootImpl.this.postDrawFinished();
                            }
                        }).dispatchSurfaceRedrawNeededAsync(this.mSurfaceHolder, this.mSurfaceHolder.getCallbacks());
                    } else {
                        if (z) {
                            return;
                        }
                        if (this.mAttachInfo.mThreadedRenderer != null) {
                            this.mAttachInfo.mThreadedRenderer.fence();
                        }
                        pendingDrawFinished();
                    }
                }
            } catch (Throwable th) {
                this.mIsDrawing = false;
                Trace.traceEnd(8L);
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01ba A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean draw(boolean z) {
        int i;
        boolean z2;
        boolean z3;
        Surface surface = this.mSurface;
        boolean z4 = false;
        if (!surface.isValid()) {
            return false;
        }
        if (!sFirstDrawComplete) {
            synchronized (sFirstDrawHandlers) {
                sFirstDrawComplete = true;
                int size = sFirstDrawHandlers.size();
                for (int i2 = 0; i2 < size; i2++) {
                    this.mHandler.post(sFirstDrawHandlers.get(i2));
                }
            }
        }
        scrollToRectOrFocus(null, false);
        if (this.mAttachInfo.mViewScrollChanged) {
            this.mAttachInfo.mViewScrollChanged = false;
            this.mAttachInfo.mTreeObserver.dispatchOnScrollChanged();
        }
        boolean z5 = this.mScroller != null && this.mScroller.computeScrollOffset();
        if (z5) {
            i = this.mScroller.getCurrY();
        } else {
            i = this.mScrollY;
        }
        if (this.mCurScrollY != i) {
            this.mCurScrollY = i;
            if (this.mView instanceof RootViewSurfaceTaker) {
                this.mView.onRootViewScrollYChanged(this.mCurScrollY);
            }
            z2 = true;
        } else {
            z2 = z;
        }
        float f = this.mAttachInfo.mApplicationScale;
        boolean z6 = this.mAttachInfo.mScalingRequired;
        Rect rect = this.mDirty;
        if (this.mSurfaceHolder != null) {
            rect.setEmpty();
            if (z5 && this.mScroller != null) {
                this.mScroller.abortAnimation();
            }
            return false;
        }
        if (z2) {
            this.mAttachInfo.mIgnoreDirtyState = true;
            rect.set(0, 0, (int) ((this.mWidth * f) + 0.5f), (int) ((this.mHeight * f) + 0.5f));
        }
        this.mAttachInfo.mTreeObserver.dispatchOnDraw();
        int i3 = -this.mCanvasOffsetX;
        int i4 = (-this.mCanvasOffsetY) + i;
        WindowManager.LayoutParams layoutParams = this.mWindowAttributes;
        Rect rect2 = layoutParams != null ? layoutParams.surfaceInsets : null;
        if (rect2 != null) {
            i3 -= rect2.left;
            i4 -= rect2.top;
            rect.offset(rect2.left, rect2.right);
        }
        int i5 = i4;
        int i6 = i3;
        Drawable drawable = this.mAttachInfo.mAccessibilityFocusDrawable;
        if (drawable != null) {
            Rect rect3 = this.mAttachInfo.mTmpInvalRect;
            if (!getAccessibilityFocusedRect(rect3)) {
                rect3.setEmpty();
            }
            if (!rect3.equals(drawable.getBounds())) {
                z3 = true;
                this.mAttachInfo.mDrawingTime = this.mChoreographer.getFrameTimeNanos() / TimeUtils.NANOS_PER_MS;
                if (rect.isEmpty() || this.mIsAnimating || z3) {
                    if (this.mAttachInfo.mThreadedRenderer == null && this.mAttachInfo.mThreadedRenderer.isEnabled()) {
                        boolean z7 = z3 || this.mInvalidateRootRequested;
                        this.mInvalidateRootRequested = false;
                        this.mIsAnimating = false;
                        if (this.mHardwareYOffset != i5 || this.mHardwareXOffset != i6) {
                            this.mHardwareYOffset = i5;
                            this.mHardwareXOffset = i6;
                            z7 = true;
                        }
                        if (z7) {
                            this.mAttachInfo.mThreadedRenderer.invalidateRoot();
                        }
                        rect.setEmpty();
                        boolean updateContentDrawBounds = updateContentDrawBounds();
                        if (this.mReportNextDraw) {
                            this.mAttachInfo.mThreadedRenderer.setStopped(false);
                        }
                        if (updateContentDrawBounds) {
                            requestDrawWindow();
                        }
                        ThreadedRenderer.FrameDrawingCallback frameDrawingCallback = this.mNextRtFrameCallback;
                        this.mNextRtFrameCallback = null;
                        this.mAttachInfo.mThreadedRenderer.draw(this.mView, this.mAttachInfo, this, frameDrawingCallback);
                        z4 = true;
                    } else {
                        if (this.mAttachInfo.mThreadedRenderer == null && !this.mAttachInfo.mThreadedRenderer.isEnabled() && this.mAttachInfo.mThreadedRenderer.isRequested() && this.mSurface.isValid()) {
                            try {
                                this.mAttachInfo.mThreadedRenderer.initializeIfNeeded(this.mWidth, this.mHeight, this.mAttachInfo, this.mSurface, rect2);
                                this.mFullRedrawNeeded = true;
                                scheduleTraversals();
                                return false;
                            } catch (Surface.OutOfResourcesException e) {
                                handleOutOfResourcesException(e);
                                return false;
                            }
                        }
                        if (!drawSoftware(surface, this.mAttachInfo, i6, i5, z6, rect, rect2)) {
                            return false;
                        }
                    }
                }
                if (z5) {
                    this.mFullRedrawNeeded = true;
                    scheduleTraversals();
                }
                return z4;
            }
        }
        z3 = false;
        this.mAttachInfo.mDrawingTime = this.mChoreographer.getFrameTimeNanos() / TimeUtils.NANOS_PER_MS;
        if (rect.isEmpty()) {
        }
        if (this.mAttachInfo.mThreadedRenderer == null) {
        }
        if (this.mAttachInfo.mThreadedRenderer == null) {
        }
        if (!drawSoftware(surface, this.mAttachInfo, i6, i5, z6, rect, rect2)) {
        }
        if (z5) {
        }
        return z4;
    }

    private boolean drawSoftware(Surface surface, View.AttachInfo attachInfo, int i, int i2, boolean z, Rect rect, Rect rect2) {
        int i3;
        int i4;
        if (rect2 != null) {
            i3 = rect2.left + i;
            i4 = rect2.top + i2;
        } else {
            i3 = i;
            i4 = i2;
        }
        try {
            rect.offset(-i3, -i4);
            int i5 = rect.left;
            int i6 = rect.top;
            int i7 = rect.right;
            int i8 = rect.bottom;
            Canvas lockCanvas = this.mSurface.lockCanvas(rect);
            if (i5 != rect.left || i6 != rect.top || i7 != rect.right || i8 != rect.bottom) {
                attachInfo.mIgnoreDirtyState = true;
            }
            lockCanvas.setDensity(this.mDensity);
            try {
                try {
                    if (!lockCanvas.isOpaque() || i2 != 0 || i != 0) {
                        lockCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
                    }
                    rect.setEmpty();
                    this.mIsAnimating = false;
                    this.mView.mPrivateFlags |= 32;
                    try {
                        lockCanvas.translate(-i, -i2);
                        if (this.mTranslator != null) {
                            this.mTranslator.translateCanvas(lockCanvas);
                        }
                        lockCanvas.setScreenDensity(z ? this.mNoncompatDensity : 0);
                        attachInfo.mSetIgnoreDirtyState = false;
                        this.mView.draw(lockCanvas);
                        drawAccessibilityFocusedDrawableIfNeeded(lockCanvas);
                        return true;
                    } finally {
                        if (!attachInfo.mSetIgnoreDirtyState) {
                            attachInfo.mIgnoreDirtyState = false;
                        }
                    }
                } finally {
                    surface.unlockCanvasAndPost(lockCanvas);
                }
            } catch (IllegalArgumentException e) {
                Log.e(this.mTag, "Could not unlock surface", e);
                this.mLayoutRequested = true;
                return false;
            }
        } catch (Surface.OutOfResourcesException e2) {
            handleOutOfResourcesException(e2);
            return false;
        } catch (IllegalArgumentException e3) {
            Log.e(this.mTag, "Could not lock surface", e3);
            this.mLayoutRequested = true;
            return false;
        } finally {
            rect.offset(i3, i4);
        }
    }

    private void drawAccessibilityFocusedDrawableIfNeeded(Canvas canvas) {
        Rect rect = this.mAttachInfo.mTmpInvalRect;
        if (getAccessibilityFocusedRect(rect)) {
            Drawable accessibilityFocusedDrawable = getAccessibilityFocusedDrawable();
            if (accessibilityFocusedDrawable != null) {
                accessibilityFocusedDrawable.setBounds(rect);
                accessibilityFocusedDrawable.draw(canvas);
                return;
            }
            return;
        }
        if (this.mAttachInfo.mAccessibilityFocusDrawable != null) {
            this.mAttachInfo.mAccessibilityFocusDrawable.setBounds(0, 0, 0, 0);
        }
    }

    private boolean getAccessibilityFocusedRect(Rect rect) {
        View view;
        AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(this.mView.mContext);
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (view = this.mAccessibilityFocusedHost) == null || view.mAttachInfo == null) {
            return false;
        }
        if (view.getAccessibilityNodeProvider() == null) {
            view.getBoundsOnScreen(rect, true);
        } else {
            if (this.mAccessibilityFocusedVirtualView == null) {
                return false;
            }
            this.mAccessibilityFocusedVirtualView.getBoundsInScreen(rect);
        }
        View.AttachInfo attachInfo = this.mAttachInfo;
        rect.offset(0, attachInfo.mViewRootImpl.mScrollY);
        rect.offset(-attachInfo.mWindowLeft, -attachInfo.mWindowTop);
        if (!rect.intersect(0, 0, attachInfo.mViewRootImpl.mWidth, attachInfo.mViewRootImpl.mHeight)) {
            rect.setEmpty();
        }
        return !rect.isEmpty();
    }

    private Drawable getAccessibilityFocusedDrawable() {
        if (this.mAttachInfo.mAccessibilityFocusDrawable == null) {
            TypedValue typedValue = new TypedValue();
            if (this.mView.mContext.getTheme().resolveAttribute(R.bool.config_perDisplayFocusEnabled, typedValue, true)) {
                this.mAttachInfo.mAccessibilityFocusDrawable = this.mView.mContext.getDrawable(typedValue.resourceId);
            }
        }
        return this.mAttachInfo.mAccessibilityFocusDrawable;
    }

    public void requestInvalidateRootRenderNode() {
        this.mInvalidateRootRequested = true;
    }

    boolean scrollToRectOrFocus(Rect rect, boolean z) {
        int height;
        boolean z2;
        Rect rect2 = this.mAttachInfo.mContentInsets;
        Rect rect3 = this.mAttachInfo.mVisibleInsets;
        if (rect3.left > rect2.left || rect3.top > rect2.top || rect3.right > rect2.right || rect3.bottom > rect2.bottom) {
            int i = this.mScrollY;
            View findFocus = this.mView.findFocus();
            if (findFocus == null) {
                return false;
            }
            View view = this.mLastScrolledFocus != null ? this.mLastScrolledFocus.get() : null;
            if (findFocus != view) {
                rect = null;
            }
            if (findFocus != view || this.mScrollMayChange || rect != null) {
                this.mLastScrolledFocus = new WeakReference<>(findFocus);
                this.mScrollMayChange = false;
                if (findFocus.getGlobalVisibleRect(this.mVisRect, null)) {
                    if (rect == null) {
                        findFocus.getFocusedRect(this.mTempRect);
                        if (this.mView instanceof ViewGroup) {
                            ((ViewGroup) this.mView).offsetDescendantRectToMyCoords(findFocus, this.mTempRect);
                        }
                    } else {
                        this.mTempRect.set(rect);
                    }
                    if (this.mTempRect.intersect(this.mVisRect)) {
                        if (this.mTempRect.height() > (this.mView.getHeight() - rect3.top) - rect3.bottom) {
                            height = i;
                        } else if (this.mTempRect.top < rect3.top) {
                            height = this.mTempRect.top - rect3.top;
                        } else {
                            height = this.mTempRect.bottom > this.mView.getHeight() - rect3.bottom ? this.mTempRect.bottom - (this.mView.getHeight() - rect3.bottom) : 0;
                        }
                        z2 = true;
                    }
                }
            }
            height = i;
            z2 = false;
        } else {
            height = 0;
            z2 = false;
        }
        if (height != this.mScrollY) {
            if (!z) {
                if (this.mScroller == null) {
                    this.mScroller = new Scroller(this.mView.getContext());
                }
                this.mScroller.startScroll(0, this.mScrollY, 0, height - this.mScrollY);
            } else if (this.mScroller != null) {
                this.mScroller.abortAnimation();
            }
            this.mScrollY = height;
        }
        return z2;
    }

    public View getAccessibilityFocusedHost() {
        return this.mAccessibilityFocusedHost;
    }

    public AccessibilityNodeInfo getAccessibilityFocusedVirtualView() {
        return this.mAccessibilityFocusedVirtualView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAccessibilityFocus(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        if (this.mAccessibilityFocusedVirtualView != null) {
            AccessibilityNodeInfo accessibilityNodeInfo2 = this.mAccessibilityFocusedVirtualView;
            View view2 = this.mAccessibilityFocusedHost;
            this.mAccessibilityFocusedHost = null;
            this.mAccessibilityFocusedVirtualView = null;
            view2.clearAccessibilityFocusNoCallbacks(64);
            AccessibilityNodeProvider accessibilityNodeProvider = view2.getAccessibilityNodeProvider();
            if (accessibilityNodeProvider != null) {
                accessibilityNodeInfo2.getBoundsInParent(this.mTempRect);
                view2.invalidate(this.mTempRect);
                accessibilityNodeProvider.performAction(AccessibilityNodeInfo.getVirtualDescendantId(accessibilityNodeInfo2.getSourceNodeId()), 128, null);
            }
            accessibilityNodeInfo2.recycle();
        }
        if (this.mAccessibilityFocusedHost != null && this.mAccessibilityFocusedHost != view) {
            this.mAccessibilityFocusedHost.clearAccessibilityFocusNoCallbacks(64);
        }
        this.mAccessibilityFocusedHost = view;
        this.mAccessibilityFocusedVirtualView = accessibilityNodeInfo;
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.invalidateRoot();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasPointerCapture() {
        return this.mPointerCapture;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void requestPointerCapture(boolean z) {
        if (this.mPointerCapture == z) {
            return;
        }
        InputManager.getInstance().requestPointerCapture(this.mAttachInfo.mWindowToken, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePointerCaptureChanged(boolean z) {
        if (this.mPointerCapture == z) {
            return;
        }
        this.mPointerCapture = z;
        if (this.mView != null) {
            this.mView.dispatchPointerCaptureChanged(z);
        }
    }

    @Override // android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        checkThread();
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public void clearChildFocus(View view) {
        checkThread();
        scheduleTraversals();
    }

    @Override // android.view.ViewParent
    public void focusableViewAvailable(View view) {
        checkThread();
        if (this.mView != null) {
            if (!this.mView.hasFocus()) {
                if (sAlwaysAssignFocus || !this.mAttachInfo.mInTouchMode) {
                    view.requestFocus();
                    return;
                }
                return;
            }
            View findFocus = this.mView.findFocus();
            if ((findFocus instanceof ViewGroup) && ((ViewGroup) findFocus).getDescendantFocusability() == 262144 && isViewDescendantOf(view, findFocus)) {
                view.requestFocus();
            }
        }
    }

    @Override // android.view.ViewParent
    public void recomputeViewAttributes(View view) {
        checkThread();
        if (this.mView == view) {
            this.mAttachInfo.mRecomputeGlobalAttributes = true;
            if (this.mWillDrawSoon) {
                return;
            }
            scheduleTraversals();
        }
    }

    void dispatchDetachedFromWindow() {
        this.mFirstInputStage.onDetachedFromWindow();
        if (this.mView != null && this.mView.mAttachInfo != null) {
            this.mAttachInfo.mTreeObserver.dispatchOnWindowAttachedChange(false);
            this.mView.dispatchDetachedFromWindow();
        }
        this.mAccessibilityInteractionConnectionManager.ensureNoConnection();
        this.mAccessibilityManager.removeAccessibilityStateChangeListener(this.mAccessibilityInteractionConnectionManager);
        this.mAccessibilityManager.removeHighTextContrastStateChangeListener(this.mHighContrastTextManager);
        removeSendWindowContentChangedCallback();
        destroyHardwareRenderer();
        setAccessibilityFocus(null, null);
        this.mView.assignParent(null);
        this.mView = null;
        this.mAttachInfo.mRootView = null;
        this.mSurface.release();
        if (this.mInputQueueCallback != null && this.mInputQueue != null) {
            this.mInputQueueCallback.onInputQueueDestroyed(this.mInputQueue);
            this.mInputQueue.dispose();
            this.mInputQueueCallback = null;
            this.mInputQueue = null;
        }
        if (this.mInputEventReceiver != null) {
            this.mInputEventReceiver.dispose();
            this.mInputEventReceiver = null;
        }
        try {
            this.mWindowSession.remove(this.mWindow);
        } catch (RemoteException unused) {
        }
        if (this.mInputChannel != null) {
            this.mInputChannel.dispose();
            this.mInputChannel = null;
        }
        this.mDisplayManager.unregisterDisplayListener(this.mDisplayListener);
        unscheduleTraversals();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performConfigurationChange(MergedConfiguration mergedConfiguration, boolean z, int i) {
        if (mergedConfiguration == null) {
            throw new IllegalArgumentException("No merged config provided.");
        }
        Configuration globalConfiguration = mergedConfiguration.getGlobalConfiguration();
        Configuration overrideConfiguration = mergedConfiguration.getOverrideConfiguration();
        CompatibilityInfo compatibilityInfo = this.mDisplay.getDisplayAdjustments().getCompatibilityInfo();
        if (!compatibilityInfo.equals(CompatibilityInfo.DEFAULT_COMPATIBILITY_INFO)) {
            Configuration configuration = new Configuration(globalConfiguration);
            compatibilityInfo.applyToConfiguration(this.mNoncompatDensity, configuration);
            globalConfiguration = configuration;
        }
        synchronized (sConfigCallbacks) {
            for (int size = sConfigCallbacks.size() - 1; size >= 0; size--) {
                sConfigCallbacks.get(size).onConfigurationChanged(globalConfiguration);
            }
        }
        this.mLastReportedMergedConfiguration.setConfiguration(globalConfiguration, overrideConfiguration);
        this.mForceNextConfigUpdate = z;
        if (this.mActivityConfigCallback != null) {
            this.mActivityConfigCallback.onConfigurationChanged(overrideConfiguration, i);
        } else {
            updateConfiguration(i);
        }
        this.mForceNextConfigUpdate = false;
    }

    public void updateConfiguration(int i) {
        if (this.mView == null) {
            return;
        }
        Resources resources = this.mView.getResources();
        Configuration configuration = resources.getConfiguration();
        if (i != -1) {
            onMovedToDisplay(i, configuration);
        }
        if (this.mForceNextConfigUpdate || this.mLastConfigurationFromResources.diff(configuration) != 0) {
            this.mDisplay = ResourcesManager.getInstance().getAdjustedDisplay(this.mDisplay.getDisplayId(), resources);
            int layoutDirection = this.mLastConfigurationFromResources.getLayoutDirection();
            int layoutDirection2 = configuration.getLayoutDirection();
            this.mLastConfigurationFromResources.setTo(configuration);
            if (layoutDirection != layoutDirection2 && this.mViewLayoutDirectionInitial == 2) {
                this.mView.setLayoutDirection(layoutDirection2);
            }
            this.mView.dispatchConfigurationChanged(configuration);
            this.mForceNextWindowRelayout = true;
            requestLayout();
        }
    }

    public static boolean isViewDescendantOf(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && isViewDescendantOf((View) parent, view2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void forceLayout(View view) {
        view.forceLayout();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                forceLayout(viewGroup.getChildAt(i));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class ViewRootHandler extends Handler {
        ViewRootHandler() {
        }

        @Override // android.os.Handler
        public String getMessageName(Message message) {
            switch (message.what) {
                case 1:
                    return "MSG_INVALIDATE";
                case 2:
                    return "MSG_INVALIDATE_RECT";
                case 3:
                    return "MSG_DIE";
                case 4:
                    return "MSG_RESIZED";
                case 5:
                    return "MSG_RESIZED_REPORT";
                case 6:
                    return "MSG_WINDOW_FOCUS_CHANGED";
                case 7:
                    return "MSG_DISPATCH_INPUT_EVENT";
                case 8:
                    return "MSG_DISPATCH_APP_VISIBILITY";
                case 9:
                    return "MSG_DISPATCH_GET_NEW_SURFACE";
                case 10:
                case 20:
                case 22:
                case 26:
                default:
                    return super.getMessageName(message);
                case 11:
                    return "MSG_DISPATCH_KEY_FROM_IME";
                case 12:
                    return "MSG_DISPATCH_KEY_FROM_AUTOFILL";
                case 13:
                    return "MSG_CHECK_FOCUS";
                case 14:
                    return "MSG_CLOSE_SYSTEM_DIALOGS";
                case 15:
                    return "MSG_DISPATCH_DRAG_EVENT";
                case 16:
                    return "MSG_DISPATCH_DRAG_LOCATION_EVENT";
                case 17:
                    return "MSG_DISPATCH_SYSTEM_UI_VISIBILITY";
                case 18:
                    return "MSG_UPDATE_CONFIGURATION";
                case 19:
                    return "MSG_PROCESS_INPUT_EVENTS";
                case 21:
                    return "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST";
                case 23:
                    return "MSG_WINDOW_MOVED";
                case 24:
                    return "MSG_SYNTHESIZE_INPUT_EVENT";
                case 25:
                    return "MSG_DISPATCH_WINDOW_SHOWN";
                case 27:
                    return "MSG_UPDATE_POINTER_ICON";
                case 28:
                    return "MSG_POINTER_CAPTURE_CHANGED";
                case 29:
                    return "MSG_DRAW_FINISHED";
            }
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j) {
            if (message.what == 26 && message.obj == null) {
                throw new NullPointerException("Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:");
            }
            return super.sendMessageAtTime(message, j);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ((View) message.obj).invalidate();
                    return;
                case 2:
                    View.AttachInfo.InvalidateInfo invalidateInfo = (View.AttachInfo.InvalidateInfo) message.obj;
                    invalidateInfo.target.invalidate(invalidateInfo.left, invalidateInfo.top, invalidateInfo.right, invalidateInfo.bottom);
                    invalidateInfo.recycle();
                    return;
                case 3:
                    ViewRootImpl.this.doDie();
                    return;
                case 4:
                    SomeArgs someArgs = (SomeArgs) message.obj;
                    if (ViewRootImpl.this.mWinFrame.equals(someArgs.arg1) && ViewRootImpl.this.mPendingOverscanInsets.equals(someArgs.arg5) && ViewRootImpl.this.mPendingContentInsets.equals(someArgs.arg2) && ViewRootImpl.this.mPendingStableInsets.equals(someArgs.arg6) && ViewRootImpl.this.mPendingDisplayCutout.get().equals(someArgs.arg9) && ViewRootImpl.this.mPendingVisibleInsets.equals(someArgs.arg3) && ViewRootImpl.this.mPendingOutsets.equals(someArgs.arg7) && ViewRootImpl.this.mPendingBackDropFrame.equals(someArgs.arg8) && someArgs.arg4 == null && someArgs.argi1 == 0 && ViewRootImpl.this.mDisplay.getDisplayId() == someArgs.argi3) {
                        return;
                    }
                    break;
                case 5:
                    break;
                case 6:
                    ViewRootImpl.this.handleWindowFocusChanged();
                    return;
                case 7:
                    SomeArgs someArgs2 = (SomeArgs) message.obj;
                    ViewRootImpl.this.enqueueInputEvent((InputEvent) someArgs2.arg1, (InputEventReceiver) someArgs2.arg2, 0, true);
                    someArgs2.recycle();
                    return;
                case 8:
                    ViewRootImpl.this.handleAppVisibility(message.arg1 != 0);
                    return;
                case 9:
                    ViewRootImpl.this.handleGetNewSurface();
                    return;
                case 10:
                case 20:
                default:
                    return;
                case 11:
                    KeyEvent keyEvent = (KeyEvent) message.obj;
                    if ((keyEvent.getFlags() & 8) != 0) {
                        keyEvent = KeyEvent.changeFlags(keyEvent, keyEvent.getFlags() & (-9));
                    }
                    ViewRootImpl.this.enqueueInputEvent(keyEvent, null, 1, true);
                    return;
                case 12:
                    ViewRootImpl.this.enqueueInputEvent((KeyEvent) message.obj, null, 0, true);
                    return;
                case 13:
                    InputMethodManager peekInstance = InputMethodManager.peekInstance();
                    if (peekInstance != null) {
                        peekInstance.checkFocus();
                        return;
                    }
                    return;
                case 14:
                    if (ViewRootImpl.this.mView != null) {
                        ViewRootImpl.this.mView.onCloseSystemDialogs((String) message.obj);
                        return;
                    }
                    return;
                case 15:
                case 16:
                    DragEvent dragEvent = (DragEvent) message.obj;
                    dragEvent.mLocalState = ViewRootImpl.this.mLocalDragState;
                    ViewRootImpl.this.handleDragEvent(dragEvent);
                    return;
                case 17:
                    ViewRootImpl.this.handleDispatchSystemUiVisibilityChanged((SystemUiVisibilityInfo) message.obj);
                    return;
                case 18:
                    Configuration configuration = (Configuration) message.obj;
                    if (configuration.isOtherSeqNewer(ViewRootImpl.this.mLastReportedMergedConfiguration.getMergedConfiguration())) {
                        configuration = ViewRootImpl.this.mLastReportedMergedConfiguration.getGlobalConfiguration();
                    }
                    ViewRootImpl.this.mPendingMergedConfiguration.setConfiguration(configuration, ViewRootImpl.this.mLastReportedMergedConfiguration.getOverrideConfiguration());
                    ViewRootImpl.this.performConfigurationChange(ViewRootImpl.this.mPendingMergedConfiguration, false, -1);
                    return;
                case 19:
                    ViewRootImpl.this.mProcessInputEventsScheduled = false;
                    ViewRootImpl.this.doProcessInputEvents();
                    return;
                case 21:
                    ViewRootImpl.this.setAccessibilityFocus(null, null);
                    return;
                case 22:
                    if (ViewRootImpl.this.mView != null) {
                        ViewRootImpl.this.invalidateWorld(ViewRootImpl.this.mView);
                        return;
                    }
                    return;
                case 23:
                    if (ViewRootImpl.this.mAdded) {
                        int width = ViewRootImpl.this.mWinFrame.width();
                        int height = ViewRootImpl.this.mWinFrame.height();
                        int i = message.arg1;
                        int i2 = message.arg2;
                        ViewRootImpl.this.mWinFrame.left = i;
                        ViewRootImpl.this.mWinFrame.right = i + width;
                        ViewRootImpl.this.mWinFrame.top = i2;
                        ViewRootImpl.this.mWinFrame.bottom = i2 + height;
                        ViewRootImpl.this.mPendingBackDropFrame.set(ViewRootImpl.this.mWinFrame);
                        ViewRootImpl.this.maybeHandleWindowMove(ViewRootImpl.this.mWinFrame);
                        return;
                    }
                    return;
                case 24:
                    ViewRootImpl.this.enqueueInputEvent((InputEvent) message.obj, null, 32, true);
                    return;
                case 25:
                    ViewRootImpl.this.handleDispatchWindowShown();
                    return;
                case 26:
                    ViewRootImpl.this.handleRequestKeyboardShortcuts((IResultReceiver) message.obj, message.arg1);
                    return;
                case 27:
                    ViewRootImpl.this.resetPointerIcon((MotionEvent) message.obj);
                    return;
                case 28:
                    ViewRootImpl.this.handlePointerCaptureChanged(message.arg1 != 0);
                    return;
                case 29:
                    ViewRootImpl.this.pendingDrawFinished();
                    return;
            }
            if (ViewRootImpl.this.mAdded) {
                SomeArgs someArgs3 = (SomeArgs) message.obj;
                int i3 = someArgs3.argi3;
                MergedConfiguration mergedConfiguration = (MergedConfiguration) someArgs3.arg4;
                boolean z = ViewRootImpl.this.mDisplay.getDisplayId() != i3;
                if (!ViewRootImpl.this.mLastReportedMergedConfiguration.equals(mergedConfiguration)) {
                    ViewRootImpl.this.performConfigurationChange(mergedConfiguration, false, z ? i3 : -1);
                } else if (z) {
                    ViewRootImpl.this.onMovedToDisplay(i3, ViewRootImpl.this.mLastConfigurationFromResources);
                }
                boolean z2 = (ViewRootImpl.this.mWinFrame.equals(someArgs3.arg1) && ViewRootImpl.this.mPendingOverscanInsets.equals(someArgs3.arg5) && ViewRootImpl.this.mPendingContentInsets.equals(someArgs3.arg2) && ViewRootImpl.this.mPendingStableInsets.equals(someArgs3.arg6) && ViewRootImpl.this.mPendingDisplayCutout.get().equals(someArgs3.arg9) && ViewRootImpl.this.mPendingVisibleInsets.equals(someArgs3.arg3) && ViewRootImpl.this.mPendingOutsets.equals(someArgs3.arg7)) ? false : true;
                ViewRootImpl.this.mWinFrame.set((Rect) someArgs3.arg1);
                ViewRootImpl.this.mPendingOverscanInsets.set((Rect) someArgs3.arg5);
                ViewRootImpl.this.mPendingContentInsets.set((Rect) someArgs3.arg2);
                ViewRootImpl.this.mPendingStableInsets.set((Rect) someArgs3.arg6);
                ViewRootImpl.this.mPendingDisplayCutout.set((DisplayCutout) someArgs3.arg9);
                ViewRootImpl.this.mPendingVisibleInsets.set((Rect) someArgs3.arg3);
                ViewRootImpl.this.mPendingOutsets.set((Rect) someArgs3.arg7);
                ViewRootImpl.this.mPendingBackDropFrame.set((Rect) someArgs3.arg8);
                ViewRootImpl.this.mForceNextWindowRelayout = someArgs3.argi1 != 0;
                ViewRootImpl.this.mPendingAlwaysConsumeNavBar = someArgs3.argi2 != 0;
                someArgs3.recycle();
                if (message.what == 5) {
                    ViewRootImpl.this.reportNextDraw();
                }
                if (ViewRootImpl.this.mView != null && z2) {
                    ViewRootImpl.forceLayout(ViewRootImpl.this.mView);
                }
                ViewRootImpl.this.requestLayout();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean ensureTouchMode(boolean z) {
        if (this.mAttachInfo.mInTouchMode == z) {
            return false;
        }
        try {
            this.mWindowSession.setInTouchMode(z);
            return ensureTouchModeLocally(z);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    private boolean ensureTouchModeLocally(boolean z) {
        if (this.mAttachInfo.mInTouchMode == z) {
            return false;
        }
        this.mAttachInfo.mInTouchMode = z;
        this.mAttachInfo.mTreeObserver.dispatchOnTouchModeChanged(z);
        return z ? enterTouchMode() : leaveTouchMode();
    }

    private boolean enterTouchMode() {
        View findFocus;
        if (this.mView == null || !this.mView.hasFocus() || (findFocus = this.mView.findFocus()) == null || findFocus.isFocusableInTouchMode()) {
            return false;
        }
        ViewGroup findAncestorToTakeFocusInTouchMode = findAncestorToTakeFocusInTouchMode(findFocus);
        if (findAncestorToTakeFocusInTouchMode != null) {
            return findAncestorToTakeFocusInTouchMode.requestFocus();
        }
        findFocus.clearFocusInternal(null, true, false);
        return true;
    }

    private static ViewGroup findAncestorToTakeFocusInTouchMode(View view) {
        ViewParent parent = view.getParent();
        while (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.getDescendantFocusability() == 262144 && viewGroup.isFocusableInTouchMode()) {
                return viewGroup;
            }
            if (viewGroup.isRootNamespace()) {
                return null;
            }
            parent = viewGroup.getParent();
        }
        return null;
    }

    private boolean leaveTouchMode() {
        if (this.mView == null) {
            return false;
        }
        if (this.mView.hasFocus()) {
            View findFocus = this.mView.findFocus();
            if (!(findFocus instanceof ViewGroup) || ((ViewGroup) findFocus).getDescendantFocusability() != 262144) {
                return false;
            }
        }
        return this.mView.restoreDefaultFocus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public abstract class InputStage {
        protected static final int FINISH_HANDLED = 1;
        protected static final int FINISH_NOT_HANDLED = 2;
        protected static final int FORWARD = 0;
        private final InputStage mNext;

        protected int onProcess(QueuedInputEvent queuedInputEvent) {
            return 0;
        }

        public InputStage(InputStage inputStage) {
            this.mNext = inputStage;
        }

        public final void deliver(QueuedInputEvent queuedInputEvent) {
            if ((queuedInputEvent.mFlags & 4) != 0) {
                forward(queuedInputEvent);
            } else if (shouldDropInputEvent(queuedInputEvent)) {
                finish(queuedInputEvent, false);
            } else {
                apply(queuedInputEvent, onProcess(queuedInputEvent));
            }
        }

        protected void finish(QueuedInputEvent queuedInputEvent, boolean z) {
            queuedInputEvent.mFlags |= 4;
            if (z) {
                queuedInputEvent.mFlags |= 8;
            }
            forward(queuedInputEvent);
        }

        protected void forward(QueuedInputEvent queuedInputEvent) {
            onDeliverToNext(queuedInputEvent);
        }

        protected void apply(QueuedInputEvent queuedInputEvent, int i) {
            if (i == 0) {
                forward(queuedInputEvent);
                return;
            }
            if (i == 1) {
                finish(queuedInputEvent, true);
            } else {
                if (i == 2) {
                    finish(queuedInputEvent, false);
                    return;
                }
                throw new IllegalArgumentException("Invalid result: " + i);
            }
        }

        protected void onDeliverToNext(QueuedInputEvent queuedInputEvent) {
            if (this.mNext == null) {
                ViewRootImpl.this.finishInputEvent(queuedInputEvent);
            } else {
                this.mNext.deliver(queuedInputEvent);
            }
        }

        protected void onWindowFocusChanged(boolean z) {
            if (this.mNext != null) {
                this.mNext.onWindowFocusChanged(z);
            }
        }

        protected void onDetachedFromWindow() {
            if (this.mNext != null) {
                this.mNext.onDetachedFromWindow();
            }
        }

        protected boolean shouldDropInputEvent(QueuedInputEvent queuedInputEvent) {
            if (ViewRootImpl.this.mView == null || !ViewRootImpl.this.mAdded) {
                Slog.w(ViewRootImpl.this.mTag, "Dropping event due to root view being removed: " + queuedInputEvent.mEvent);
                return true;
            }
            if ((ViewRootImpl.this.mAttachInfo.mHasWindowFocus || queuedInputEvent.mEvent.isFromSource(2) || ViewRootImpl.this.isAutofillUiShowing()) && !ViewRootImpl.this.mStopped && ((!ViewRootImpl.this.mIsAmbientMode || queuedInputEvent.mEvent.isFromSource(1)) && (!ViewRootImpl.this.mPausedForTransition || isBack(queuedInputEvent.mEvent)))) {
                return false;
            }
            if (!ViewRootImpl.isTerminalInputEvent(queuedInputEvent.mEvent)) {
                Slog.w(ViewRootImpl.this.mTag, "Dropping event due to no window focus: " + queuedInputEvent.mEvent);
                return true;
            }
            queuedInputEvent.mEvent.cancel();
            Slog.w(ViewRootImpl.this.mTag, "Cancelling event due to no window focus: " + queuedInputEvent.mEvent);
            return false;
        }

        void dump(String str, PrintWriter printWriter) {
            if (this.mNext != null) {
                this.mNext.dump(str, printWriter);
            }
        }

        private boolean isBack(InputEvent inputEvent) {
            return (inputEvent instanceof KeyEvent) && ((KeyEvent) inputEvent).getKeyCode() == 4;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    abstract class AsyncInputStage extends InputStage {
        protected static final int DEFER = 3;
        private QueuedInputEvent mQueueHead;
        private int mQueueLength;
        private QueuedInputEvent mQueueTail;
        private final String mTraceCounter;

        public AsyncInputStage(InputStage inputStage, String str) {
            super(inputStage);
            this.mTraceCounter = str;
        }

        protected void defer(QueuedInputEvent queuedInputEvent) {
            queuedInputEvent.mFlags |= 2;
            enqueue(queuedInputEvent);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void forward(QueuedInputEvent queuedInputEvent) {
            QueuedInputEvent queuedInputEvent2;
            queuedInputEvent.mFlags &= -3;
            QueuedInputEvent queuedInputEvent3 = this.mQueueHead;
            if (queuedInputEvent3 == null) {
                super.forward(queuedInputEvent);
                return;
            }
            int deviceId = queuedInputEvent.mEvent.getDeviceId();
            QueuedInputEvent queuedInputEvent4 = null;
            boolean z = false;
            while (true) {
                queuedInputEvent2 = queuedInputEvent4;
                queuedInputEvent4 = queuedInputEvent3;
                if (queuedInputEvent4 == null || queuedInputEvent4 == queuedInputEvent) {
                    break;
                }
                if (!z && deviceId == queuedInputEvent4.mEvent.getDeviceId()) {
                    z = true;
                }
                queuedInputEvent3 = queuedInputEvent4.mNext;
            }
            if (z) {
                if (queuedInputEvent4 == null) {
                    enqueue(queuedInputEvent);
                    return;
                }
                return;
            }
            if (queuedInputEvent4 != null) {
                queuedInputEvent4 = queuedInputEvent4.mNext;
                dequeue(queuedInputEvent, queuedInputEvent2);
            }
            super.forward(queuedInputEvent);
            QueuedInputEvent queuedInputEvent5 = queuedInputEvent2;
            while (true) {
                QueuedInputEvent queuedInputEvent6 = queuedInputEvent4;
                while (queuedInputEvent6 != null) {
                    if (deviceId == queuedInputEvent6.mEvent.getDeviceId()) {
                        if ((queuedInputEvent6.mFlags & 2) != 0) {
                            return;
                        }
                        queuedInputEvent4 = queuedInputEvent6.mNext;
                        dequeue(queuedInputEvent6, queuedInputEvent5);
                        super.forward(queuedInputEvent6);
                    } else {
                        QueuedInputEvent queuedInputEvent7 = queuedInputEvent6;
                        queuedInputEvent6 = queuedInputEvent6.mNext;
                        queuedInputEvent5 = queuedInputEvent7;
                    }
                }
                return;
            }
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void apply(QueuedInputEvent queuedInputEvent, int i) {
            if (i == 3) {
                defer(queuedInputEvent);
            } else {
                super.apply(queuedInputEvent, i);
            }
        }

        private void enqueue(QueuedInputEvent queuedInputEvent) {
            if (this.mQueueTail == null) {
                this.mQueueHead = queuedInputEvent;
                this.mQueueTail = queuedInputEvent;
            } else {
                this.mQueueTail.mNext = queuedInputEvent;
                this.mQueueTail = queuedInputEvent;
            }
            this.mQueueLength++;
            Trace.traceCounter(4L, this.mTraceCounter, this.mQueueLength);
        }

        private void dequeue(QueuedInputEvent queuedInputEvent, QueuedInputEvent queuedInputEvent2) {
            if (queuedInputEvent2 == null) {
                this.mQueueHead = queuedInputEvent.mNext;
            } else {
                queuedInputEvent2.mNext = queuedInputEvent.mNext;
            }
            if (this.mQueueTail == queuedInputEvent) {
                this.mQueueTail = queuedInputEvent2;
            }
            queuedInputEvent.mNext = null;
            this.mQueueLength--;
            Trace.traceCounter(4L, this.mTraceCounter, this.mQueueLength);
        }

        @Override // android.view.ViewRootImpl.InputStage
        void dump(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print(getClass().getName());
            printWriter.print(": mQueueLength=");
            printWriter.println(this.mQueueLength);
            super.dump(str, printWriter);
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class NativePreImeInputStage extends AsyncInputStage implements InputQueue.FinishedInputEventCallback {
        public NativePreImeInputStage(InputStage inputStage, String str) {
            super(inputStage, str);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent queuedInputEvent) {
            if (ViewRootImpl.this.mInputQueue == null || !(queuedInputEvent.mEvent instanceof KeyEvent)) {
                return 0;
            }
            ViewRootImpl.this.mInputQueue.sendInputEvent(queuedInputEvent.mEvent, queuedInputEvent, true, this);
            return 3;
        }

        @Override // android.view.InputQueue.FinishedInputEventCallback
        public void onFinishedInputEvent(Object obj, boolean z) {
            QueuedInputEvent queuedInputEvent = (QueuedInputEvent) obj;
            if (z) {
                finish(queuedInputEvent, true);
            } else {
                forward(queuedInputEvent);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class ViewPreImeInputStage extends InputStage {
        public ViewPreImeInputStage(InputStage inputStage) {
            super(inputStage);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent queuedInputEvent) {
            if (queuedInputEvent.mEvent instanceof KeyEvent) {
                return processKeyEvent(queuedInputEvent);
            }
            return 0;
        }

        private int processKeyEvent(QueuedInputEvent queuedInputEvent) {
            return ViewRootImpl.this.mView.dispatchKeyEventPreIme((KeyEvent) queuedInputEvent.mEvent) ? 1 : 0;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class ImeInputStage extends AsyncInputStage implements InputMethodManager.FinishedInputEventCallback {
        public ImeInputStage(InputStage inputStage, String str) {
            super(inputStage, str);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent queuedInputEvent) {
            InputMethodManager peekInstance;
            if (!ViewRootImpl.this.mLastWasImTarget || ViewRootImpl.this.isInLocalFocusMode() || (peekInstance = InputMethodManager.peekInstance()) == null) {
                return 0;
            }
            int dispatchInputEvent = peekInstance.dispatchInputEvent(queuedInputEvent.mEvent, queuedInputEvent, this, ViewRootImpl.this.mHandler);
            if (dispatchInputEvent == 1) {
                return 1;
            }
            return dispatchInputEvent == 0 ? 0 : 3;
        }

        @Override // android.view.inputmethod.InputMethodManager.FinishedInputEventCallback
        public void onFinishedInputEvent(Object obj, boolean z) {
            QueuedInputEvent queuedInputEvent = (QueuedInputEvent) obj;
            if (z) {
                finish(queuedInputEvent, true);
            } else {
                forward(queuedInputEvent);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class EarlyPostImeInputStage extends InputStage {
        public EarlyPostImeInputStage(InputStage inputStage) {
            super(inputStage);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent queuedInputEvent) {
            if (queuedInputEvent.mEvent instanceof KeyEvent) {
                return processKeyEvent(queuedInputEvent);
            }
            if ((queuedInputEvent.mEvent.getSource() & 2) != 0) {
                return processPointerEvent(queuedInputEvent);
            }
            return 0;
        }

        private int processKeyEvent(QueuedInputEvent queuedInputEvent) {
            KeyEvent keyEvent = (KeyEvent) queuedInputEvent.mEvent;
            if (ViewRootImpl.this.mAttachInfo.mTooltipHost != null) {
                ViewRootImpl.this.mAttachInfo.mTooltipHost.handleTooltipKey(keyEvent);
            }
            if (ViewRootImpl.this.checkForLeavingTouchModeAndConsume(keyEvent)) {
                return 1;
            }
            ViewRootImpl.this.mFallbackEventHandler.preDispatchKeyEvent(keyEvent);
            return 0;
        }

        private int processPointerEvent(QueuedInputEvent queuedInputEvent) {
            AutofillManager autofillManager;
            MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
            if (ViewRootImpl.this.mTranslator != null) {
                ViewRootImpl.this.mTranslator.translateEventInScreenToAppWindow(motionEvent);
            }
            int action = motionEvent.getAction();
            if (action == 0 || action == 8) {
                ViewRootImpl.this.ensureTouchMode(motionEvent.isFromSource(InputDevice.SOURCE_TOUCHSCREEN));
            }
            if (action == 0 && (autofillManager = ViewRootImpl.this.getAutofillManager()) != null) {
                autofillManager.requestHideFillUi();
            }
            if (action == 0 && ViewRootImpl.this.mAttachInfo.mTooltipHost != null) {
                ViewRootImpl.this.mAttachInfo.mTooltipHost.hideTooltip();
            }
            if (ViewRootImpl.this.mCurScrollY != 0) {
                motionEvent.offsetLocation(0.0f, ViewRootImpl.this.mCurScrollY);
            }
            if (!motionEvent.isTouchEvent()) {
                return 0;
            }
            ViewRootImpl.this.mLastTouchPoint.x = motionEvent.getRawX();
            ViewRootImpl.this.mLastTouchPoint.y = motionEvent.getRawY();
            ViewRootImpl.this.mLastTouchSource = motionEvent.getSource();
            return 0;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class NativePostImeInputStage extends AsyncInputStage implements InputQueue.FinishedInputEventCallback {
        public NativePostImeInputStage(InputStage inputStage, String str) {
            super(inputStage, str);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent queuedInputEvent) {
            if (ViewRootImpl.this.mInputQueue == null) {
                return 0;
            }
            ViewRootImpl.this.mInputQueue.sendInputEvent(queuedInputEvent.mEvent, queuedInputEvent, false, this);
            return 3;
        }

        @Override // android.view.InputQueue.FinishedInputEventCallback
        public void onFinishedInputEvent(Object obj, boolean z) {
            QueuedInputEvent queuedInputEvent = (QueuedInputEvent) obj;
            if (z) {
                finish(queuedInputEvent, true);
            } else {
                forward(queuedInputEvent);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class ViewPostImeInputStage extends InputStage {
        public ViewPostImeInputStage(InputStage inputStage) {
            super(inputStage);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent queuedInputEvent) {
            if (queuedInputEvent.mEvent instanceof KeyEvent) {
                return processKeyEvent(queuedInputEvent);
            }
            int source = queuedInputEvent.mEvent.getSource();
            if ((source & 2) != 0) {
                return processPointerEvent(queuedInputEvent);
            }
            if ((source & 4) != 0) {
                return processTrackballEvent(queuedInputEvent);
            }
            return processGenericMotionEvent(queuedInputEvent);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onDeliverToNext(QueuedInputEvent queuedInputEvent) {
            if (ViewRootImpl.this.mUnbufferedInputDispatch && (queuedInputEvent.mEvent instanceof MotionEvent) && ((MotionEvent) queuedInputEvent.mEvent).isTouchEvent() && ViewRootImpl.isTerminalInputEvent(queuedInputEvent.mEvent)) {
                ViewRootImpl.this.mUnbufferedInputDispatch = false;
                ViewRootImpl.this.scheduleConsumeBatchedInput();
            }
            super.onDeliverToNext(queuedInputEvent);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private boolean performFocusNavigation(KeyEvent keyEvent) {
            int i;
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                switch (keyCode) {
                    case 19:
                        if (keyEvent.hasNoModifiers()) {
                            i = 33;
                            break;
                        }
                        i = 0;
                        break;
                    case 20:
                        if (keyEvent.hasNoModifiers()) {
                            i = 130;
                            break;
                        }
                        i = 0;
                        break;
                    case 21:
                        if (keyEvent.hasNoModifiers()) {
                            i = 17;
                            break;
                        }
                        i = 0;
                        break;
                    case 22:
                        if (keyEvent.hasNoModifiers()) {
                            i = 66;
                            break;
                        }
                        i = 0;
                        break;
                    default:
                        i = 0;
                        break;
                }
            } else if (keyEvent.hasNoModifiers()) {
                i = 2;
            } else {
                if (keyEvent.hasModifiers(1)) {
                    i = 1;
                }
                i = 0;
            }
            if (i != 0) {
                View findFocus = ViewRootImpl.this.mView.findFocus();
                if (findFocus != null) {
                    View focusSearch = findFocus.focusSearch(i);
                    if (focusSearch != null && focusSearch != findFocus) {
                        findFocus.getFocusedRect(ViewRootImpl.this.mTempRect);
                        if (ViewRootImpl.this.mView instanceof ViewGroup) {
                            ((ViewGroup) ViewRootImpl.this.mView).offsetDescendantRectToMyCoords(findFocus, ViewRootImpl.this.mTempRect);
                            ((ViewGroup) ViewRootImpl.this.mView).offsetRectIntoDescendantCoords(focusSearch, ViewRootImpl.this.mTempRect);
                        }
                        if (focusSearch.requestFocus(i, ViewRootImpl.this.mTempRect)) {
                            ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
                            return true;
                        }
                    }
                    if (ViewRootImpl.this.mView.dispatchUnhandledMove(findFocus, i)) {
                        return true;
                    }
                } else if (ViewRootImpl.this.mView.restoreDefaultFocus()) {
                    return true;
                }
            }
            return false;
        }

        private boolean performKeyboardGroupNavigation(int i) {
            View keyboardNavigationClusterSearch;
            View findFocus = ViewRootImpl.this.mView.findFocus();
            if (findFocus == null && ViewRootImpl.this.mView.restoreDefaultFocus()) {
                return true;
            }
            if (findFocus == null) {
                keyboardNavigationClusterSearch = ViewRootImpl.this.keyboardNavigationClusterSearch(null, i);
            } else {
                keyboardNavigationClusterSearch = findFocus.keyboardNavigationClusterSearch(null, i);
            }
            int i2 = (i == 2 || i == 1) ? 130 : i;
            if (keyboardNavigationClusterSearch != null && keyboardNavigationClusterSearch.isRootNamespace()) {
                if (keyboardNavigationClusterSearch.restoreFocusNotInCluster()) {
                    ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
                    return true;
                }
                keyboardNavigationClusterSearch = ViewRootImpl.this.keyboardNavigationClusterSearch(null, i);
            }
            if (keyboardNavigationClusterSearch == null || !keyboardNavigationClusterSearch.restoreFocusInCluster(i2)) {
                return false;
            }
            ViewRootImpl.this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x008f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00a1 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00a2  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int processKeyEvent(QueuedInputEvent queuedInputEvent) {
            int i;
            KeyEvent keyEvent = (KeyEvent) queuedInputEvent.mEvent;
            if (ViewRootImpl.this.mUnhandledKeyManager.preViewDispatch(keyEvent) || ViewRootImpl.this.mView.dispatchKeyEvent(keyEvent)) {
                return 1;
            }
            if (shouldDropInputEvent(queuedInputEvent)) {
                return 2;
            }
            if (ViewRootImpl.this.mUnhandledKeyManager.dispatch(ViewRootImpl.this.mView, keyEvent)) {
                return 1;
            }
            if (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 61) {
                if (KeyEvent.metaStateHasModifiers(keyEvent.getMetaState(), 65536)) {
                    i = 2;
                } else if (KeyEvent.metaStateHasModifiers(keyEvent.getMetaState(), 65537)) {
                    i = 1;
                }
                if (keyEvent.getAction() == 0 && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && i == 0) {
                    if (!ViewRootImpl.this.mView.dispatchKeyShortcutEvent(keyEvent)) {
                        return 1;
                    }
                    if (shouldDropInputEvent(queuedInputEvent)) {
                        return 2;
                    }
                }
                if (!ViewRootImpl.this.mFallbackEventHandler.dispatchKeyEvent(keyEvent)) {
                    return 1;
                }
                if (shouldDropInputEvent(queuedInputEvent)) {
                    return 2;
                }
                if (keyEvent.getAction() == 0) {
                    if (i != 0) {
                        if (performKeyboardGroupNavigation(i)) {
                            return 1;
                        }
                    } else if (performFocusNavigation(keyEvent)) {
                        return 1;
                    }
                }
                return 0;
            }
            i = 0;
            if (keyEvent.getAction() == 0) {
                if (!ViewRootImpl.this.mView.dispatchKeyShortcutEvent(keyEvent)) {
                }
            }
            if (!ViewRootImpl.this.mFallbackEventHandler.dispatchKeyEvent(keyEvent)) {
            }
        }

        private int processPointerEvent(QueuedInputEvent queuedInputEvent) {
            MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
            ViewRootImpl.this.mAttachInfo.mUnbufferedDispatchRequested = false;
            ViewRootImpl.this.mAttachInfo.mHandlingPointerEvent = true;
            boolean dispatchPointerEvent = ViewRootImpl.this.mView.dispatchPointerEvent(motionEvent);
            maybeUpdatePointerIcon(motionEvent);
            ViewRootImpl.this.maybeUpdateTooltip(motionEvent);
            ViewRootImpl.this.mAttachInfo.mHandlingPointerEvent = false;
            if (ViewRootImpl.this.mAttachInfo.mUnbufferedDispatchRequested && !ViewRootImpl.this.mUnbufferedInputDispatch) {
                ViewRootImpl.this.mUnbufferedInputDispatch = true;
                if (ViewRootImpl.this.mConsumeBatchedInputScheduled) {
                    ViewRootImpl.this.scheduleConsumeBatchedInputImmediately();
                }
            }
            return dispatchPointerEvent ? 1 : 0;
        }

        private void maybeUpdatePointerIcon(MotionEvent motionEvent) {
            if (motionEvent.getPointerCount() == 1 && motionEvent.isFromSource(InputDevice.SOURCE_MOUSE)) {
                if (motionEvent.getActionMasked() == 9 || motionEvent.getActionMasked() == 10) {
                    ViewRootImpl.this.mPointerIconType = 1;
                }
                if (motionEvent.getActionMasked() == 10 || ViewRootImpl.this.updatePointerIcon(motionEvent) || motionEvent.getActionMasked() != 7) {
                    return;
                }
                ViewRootImpl.this.mPointerIconType = 1;
            }
        }

        private int processTrackballEvent(QueuedInputEvent queuedInputEvent) {
            MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
            return ((!motionEvent.isFromSource(InputDevice.SOURCE_MOUSE_RELATIVE) || (ViewRootImpl.this.hasPointerCapture() && !ViewRootImpl.this.mView.dispatchCapturedPointerEvent(motionEvent))) && !ViewRootImpl.this.mView.dispatchTrackballEvent(motionEvent)) ? 0 : 1;
        }

        private int processGenericMotionEvent(QueuedInputEvent queuedInputEvent) {
            return ViewRootImpl.this.mView.dispatchGenericMotionEvent((MotionEvent) queuedInputEvent.mEvent) ? 1 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetPointerIcon(MotionEvent motionEvent) {
        this.mPointerIconType = 1;
        updatePointerIcon(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updatePointerIcon(MotionEvent motionEvent) {
        float x = motionEvent.getX(0);
        float y = motionEvent.getY(0);
        if (this.mView == null) {
            Slog.d(this.mTag, "updatePointerIcon called after view was removed");
            return false;
        }
        if (x < 0.0f || x >= this.mView.getWidth() || y < 0.0f || y >= this.mView.getHeight()) {
            Slog.d(this.mTag, "updatePointerIcon called with position out of bounds");
            return false;
        }
        PointerIcon onResolvePointerIcon = this.mView.onResolvePointerIcon(motionEvent, 0);
        int type = onResolvePointerIcon != null ? onResolvePointerIcon.getType() : 1000;
        if (this.mPointerIconType != type) {
            this.mPointerIconType = type;
            this.mCustomPointerIcon = null;
            if (this.mPointerIconType != -1) {
                InputManager.getInstance().setPointerIconType(type);
                return true;
            }
        }
        if (this.mPointerIconType == -1 && !onResolvePointerIcon.equals(this.mCustomPointerIcon)) {
            this.mCustomPointerIcon = onResolvePointerIcon;
            InputManager.getInstance().setCustomPointerIcon(this.mCustomPointerIcon);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeUpdateTooltip(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() != 1) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9 || actionMasked == 7 || actionMasked == 10) {
            AccessibilityManager accessibilityManager = AccessibilityManager.getInstance(this.mContext);
            if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
                return;
            }
            if (this.mView == null) {
                Slog.d(this.mTag, "maybeUpdateTooltip called after view was removed");
            } else {
                this.mView.dispatchTooltipHoverEvent(motionEvent);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class SyntheticInputStage extends InputStage {
        private final SyntheticJoystickHandler mJoystick;
        private final SyntheticKeyboardHandler mKeyboard;
        private final SyntheticTouchNavigationHandler mTouchNavigation;
        private final SyntheticTrackballHandler mTrackball;

        public SyntheticInputStage() {
            super(null);
            this.mTrackball = new SyntheticTrackballHandler();
            this.mJoystick = new SyntheticJoystickHandler();
            this.mTouchNavigation = new SyntheticTouchNavigationHandler();
            this.mKeyboard = new SyntheticKeyboardHandler();
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected int onProcess(QueuedInputEvent queuedInputEvent) {
            queuedInputEvent.mFlags |= 16;
            if (queuedInputEvent.mEvent instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
                int source = motionEvent.getSource();
                if ((source & 4) != 0) {
                    this.mTrackball.process(motionEvent);
                    return 1;
                }
                if ((source & 16) != 0) {
                    this.mJoystick.process(motionEvent);
                    return 1;
                }
                if ((source & 2097152) != 2097152) {
                    return 0;
                }
                this.mTouchNavigation.process(motionEvent);
                return 1;
            }
            if ((queuedInputEvent.mFlags & 32) == 0) {
                return 0;
            }
            this.mKeyboard.process((KeyEvent) queuedInputEvent.mEvent);
            return 1;
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onDeliverToNext(QueuedInputEvent queuedInputEvent) {
            if ((queuedInputEvent.mFlags & 16) == 0 && (queuedInputEvent.mEvent instanceof MotionEvent)) {
                MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
                int source = motionEvent.getSource();
                if ((source & 4) != 0) {
                    this.mTrackball.cancel();
                } else if ((source & 16) != 0) {
                    this.mJoystick.cancel();
                } else if ((source & 2097152) == 2097152) {
                    this.mTouchNavigation.cancel(motionEvent);
                }
            }
            super.onDeliverToNext(queuedInputEvent);
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onWindowFocusChanged(boolean z) {
            if (z) {
                return;
            }
            this.mJoystick.cancel();
        }

        @Override // android.view.ViewRootImpl.InputStage
        protected void onDetachedFromWindow() {
            this.mJoystick.cancel();
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class SyntheticTrackballHandler {
        private long mLastTime;
        private final TrackballAxis mX = new TrackballAxis();
        private final TrackballAxis mY = new TrackballAxis();

        SyntheticTrackballHandler() {
        }

        public void process(MotionEvent motionEvent) {
            int i;
            long j;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            long uptimeMillis = SystemClock.uptimeMillis();
            if (this.mLastTime + 250 < uptimeMillis) {
                this.mX.reset(0);
                this.mY.reset(0);
                this.mLastTime = uptimeMillis;
            }
            int action = motionEvent.getAction();
            int metaState = motionEvent.getMetaState();
            switch (action) {
                case 0:
                    i = 0;
                    this.mX.reset(2);
                    this.mY.reset(2);
                    j = uptimeMillis;
                    i2 = 2;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(uptimeMillis, uptimeMillis, 0, 23, 0, metaState, -1, 0, 1024, 257));
                    break;
                case 1:
                    this.mX.reset(2);
                    this.mY.reset(2);
                    i = 0;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(uptimeMillis, uptimeMillis, 1, 23, 0, metaState, -1, 0, 1024, 257));
                    j = uptimeMillis;
                    i2 = 2;
                    break;
                default:
                    i = 0;
                    j = uptimeMillis;
                    i2 = 2;
                    break;
            }
            float collect = this.mX.collect(motionEvent.getX(), motionEvent.getEventTime(), "X");
            float collect2 = this.mY.collect(motionEvent.getY(), motionEvent.getEventTime(), "Y");
            float f = 1.0f;
            if (collect > collect2) {
                i3 = this.mX.generate();
                if (i3 != 0) {
                    i5 = i3 > 0 ? 22 : 21;
                    f = this.mX.acceleration;
                    this.mY.reset(i2);
                    i4 = i5;
                }
                i4 = i;
            } else if (collect2 > 0.0f) {
                i3 = this.mY.generate();
                if (i3 != 0) {
                    i5 = i3 > 0 ? 20 : 19;
                    f = this.mY.acceleration;
                    this.mX.reset(i2);
                    i4 = i5;
                }
                i4 = i;
            } else {
                i3 = i;
                i4 = i3;
            }
            if (i4 != 0) {
                if (i3 < 0) {
                    i3 = -i3;
                }
                int i7 = (int) (i3 * f);
                if (i7 > i3) {
                    int i8 = i3 - 1;
                    i6 = i8;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(j, j, 2, i4, i7 - i8, metaState, -1, 0, 1024, 257));
                } else {
                    i6 = i3;
                }
                long j2 = j;
                while (i6 > 0) {
                    i6--;
                    j2 = SystemClock.uptimeMillis();
                    int i9 = i4;
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(j2, j2, 0, i9, 0, metaState, -1, 0, 1024, 257));
                    ViewRootImpl.this.enqueueInputEvent(new KeyEvent(j2, j2, 1, i9, 0, metaState, -1, 0, 1024, 257));
                }
                this.mLastTime = j2;
            }
        }

        public void cancel() {
            this.mLastTime = -2147483648L;
            if (ViewRootImpl.this.mView == null || !ViewRootImpl.this.mAdded) {
                return;
            }
            ViewRootImpl.this.ensureTouchMode(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class TrackballAxis {
        static final float ACCEL_MOVE_SCALING_FACTOR = 0.025f;
        static final long FAST_MOVE_TIME = 150;
        static final float FIRST_MOVEMENT_THRESHOLD = 0.5f;
        static final float MAX_ACCELERATION = 20.0f;
        static final float SECOND_CUMULATIVE_MOVEMENT_THRESHOLD = 2.0f;
        static final float SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD = 1.0f;
        int dir;
        int nonAccelMovement;
        float position;
        int step;
        float acceleration = 1.0f;
        long lastMoveTime = 0;

        TrackballAxis() {
        }

        void reset(int i) {
            this.position = 0.0f;
            this.acceleration = 1.0f;
            this.lastMoveTime = 0L;
            this.step = i;
            this.dir = 0;
        }

        float collect(float f, long j, String str) {
            long j2;
            if (f > 0.0f) {
                j2 = 150.0f * f;
                if (this.dir < 0) {
                    this.position = 0.0f;
                    this.step = 0;
                    this.acceleration = 1.0f;
                    this.lastMoveTime = 0L;
                }
                this.dir = 1;
            } else if (f < 0.0f) {
                j2 = (-f) * 150.0f;
                if (this.dir > 0) {
                    this.position = 0.0f;
                    this.step = 0;
                    this.acceleration = 1.0f;
                    this.lastMoveTime = 0L;
                }
                this.dir = -1;
            } else {
                j2 = 0;
            }
            if (j2 > 0) {
                long j3 = j - this.lastMoveTime;
                this.lastMoveTime = j;
                float f2 = this.acceleration;
                if (j3 < j2) {
                    float f3 = ((float) (j2 - j3)) * ACCEL_MOVE_SCALING_FACTOR;
                    if (f3 > 1.0f) {
                        f2 *= f3;
                    }
                    if (f2 >= MAX_ACCELERATION) {
                        f2 = 20.0f;
                    }
                    this.acceleration = f2;
                } else {
                    float f4 = ((float) (j3 - j2)) * ACCEL_MOVE_SCALING_FACTOR;
                    if (f4 > 1.0f) {
                        f2 /= f4;
                    }
                    if (f2 <= 1.0f) {
                        f2 = 1.0f;
                    }
                    this.acceleration = f2;
                }
            }
            this.position += f;
            return Math.abs(this.position);
        }

        int generate() {
            int i = 0;
            this.nonAccelMovement = 0;
            while (true) {
                int i2 = this.position >= 0.0f ? 1 : -1;
                switch (this.step) {
                    case 0:
                        if (Math.abs(this.position) >= FIRST_MOVEMENT_THRESHOLD) {
                            i += i2;
                            this.nonAccelMovement += i2;
                            this.step = 1;
                            break;
                        } else {
                            return i;
                        }
                    case 1:
                        if (Math.abs(this.position) >= SECOND_CUMULATIVE_MOVEMENT_THRESHOLD) {
                            i += i2;
                            this.nonAccelMovement += i2;
                            this.position -= i2 * SECOND_CUMULATIVE_MOVEMENT_THRESHOLD;
                            this.step = 2;
                            break;
                        } else {
                            return i;
                        }
                    default:
                        if (Math.abs(this.position) >= 1.0f) {
                            i += i2;
                            this.position -= i2 * 1.0f;
                            float f = this.acceleration * 1.1f;
                            if (f >= MAX_ACCELERATION) {
                                f = this.acceleration;
                            }
                            this.acceleration = f;
                            break;
                        } else {
                            return i;
                        }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class SyntheticJoystickHandler extends Handler {
        private static final int MSG_ENQUEUE_X_AXIS_KEY_REPEAT = 1;
        private static final int MSG_ENQUEUE_Y_AXIS_KEY_REPEAT = 2;
        private final SparseArray<KeyEvent> mDeviceKeyEvents;
        private final JoystickAxesState mJoystickAxesState;

        public SyntheticJoystickHandler() {
            super(true);
            this.mJoystickAxesState = new JoystickAxesState();
            this.mDeviceKeyEvents = new SparseArray<>();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                case 2:
                    if (ViewRootImpl.this.mAttachInfo.mHasWindowFocus) {
                        KeyEvent keyEvent = (KeyEvent) message.obj;
                        KeyEvent changeTimeRepeat = KeyEvent.changeTimeRepeat(keyEvent, SystemClock.uptimeMillis(), keyEvent.getRepeatCount() + 1);
                        ViewRootImpl.this.enqueueInputEvent(changeTimeRepeat);
                        Message obtainMessage = obtainMessage(message.what, changeTimeRepeat);
                        obtainMessage.setAsynchronous(true);
                        sendMessageDelayed(obtainMessage, ViewConfiguration.getKeyRepeatDelay());
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        public void process(MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                case 2:
                    update(motionEvent);
                    return;
                case 3:
                    cancel();
                    return;
                default:
                    Log.w(ViewRootImpl.this.mTag, "Unexpected action: " + motionEvent.getActionMasked());
                    return;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() {
            removeMessages(1);
            removeMessages(2);
            for (int i = 0; i < this.mDeviceKeyEvents.size(); i++) {
                KeyEvent valueAt = this.mDeviceKeyEvents.valueAt(i);
                if (valueAt != null) {
                    ViewRootImpl.this.enqueueInputEvent(KeyEvent.changeTimeRepeat(valueAt, SystemClock.uptimeMillis(), 0));
                }
            }
            this.mDeviceKeyEvents.clear();
            this.mJoystickAxesState.resetState();
        }

        private void update(MotionEvent motionEvent) {
            int historySize = motionEvent.getHistorySize();
            for (int i = 0; i < historySize; i++) {
                long historicalEventTime = motionEvent.getHistoricalEventTime(i);
                this.mJoystickAxesState.updateStateForAxis(motionEvent, historicalEventTime, 0, motionEvent.getHistoricalAxisValue(0, 0, i));
                this.mJoystickAxesState.updateStateForAxis(motionEvent, historicalEventTime, 1, motionEvent.getHistoricalAxisValue(1, 0, i));
                this.mJoystickAxesState.updateStateForAxis(motionEvent, historicalEventTime, 15, motionEvent.getHistoricalAxisValue(15, 0, i));
                this.mJoystickAxesState.updateStateForAxis(motionEvent, historicalEventTime, 16, motionEvent.getHistoricalAxisValue(16, 0, i));
            }
            long eventTime = motionEvent.getEventTime();
            this.mJoystickAxesState.updateStateForAxis(motionEvent, eventTime, 0, motionEvent.getAxisValue(0));
            this.mJoystickAxesState.updateStateForAxis(motionEvent, eventTime, 1, motionEvent.getAxisValue(1));
            this.mJoystickAxesState.updateStateForAxis(motionEvent, eventTime, 15, motionEvent.getAxisValue(15));
            this.mJoystickAxesState.updateStateForAxis(motionEvent, eventTime, 16, motionEvent.getAxisValue(16));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: /home/user/work/dex/classes2.dex */
        public final class JoystickAxesState {
            private static final int STATE_DOWN_OR_RIGHT = 1;
            private static final int STATE_NEUTRAL = 0;
            private static final int STATE_UP_OR_LEFT = -1;
            final int[] mAxisStatesHat = {0, 0};
            final int[] mAxisStatesStick = {0, 0};

            private boolean isXAxis(int i) {
                return i == 0 || i == 15;
            }

            private boolean isYAxis(int i) {
                return i == 1 || i == 16;
            }

            private int joystickAxisValueToState(float f) {
                if (f >= 0.5f) {
                    return 1;
                }
                return f <= -0.5f ? -1 : 0;
            }

            JoystickAxesState() {
            }

            void resetState() {
                this.mAxisStatesHat[0] = 0;
                this.mAxisStatesHat[1] = 0;
                this.mAxisStatesStick[0] = 0;
                this.mAxisStatesStick[1] = 0;
            }

            void updateStateForAxis(MotionEvent motionEvent, long j, int i, float f) {
                int i2;
                char c;
                int i3;
                int joystickAxisAndStateToKeycode;
                int i4 = 1;
                if (isXAxis(i)) {
                    c = 0;
                    i2 = 1;
                } else {
                    if (!isYAxis(i)) {
                        Log.e(ViewRootImpl.this.mTag, "Unexpected axis " + i + " in updateStateForAxis!");
                        return;
                    }
                    i2 = 2;
                    c = 1;
                }
                int joystickAxisValueToState = joystickAxisValueToState(f);
                if (i == 0 || i == 1) {
                    i3 = this.mAxisStatesStick[c];
                } else {
                    i3 = this.mAxisStatesHat[c];
                }
                if (i3 == joystickAxisValueToState) {
                    return;
                }
                int metaState = motionEvent.getMetaState();
                int deviceId = motionEvent.getDeviceId();
                int source = motionEvent.getSource();
                if (i3 == 1 || i3 == -1) {
                    int joystickAxisAndStateToKeycode2 = joystickAxisAndStateToKeycode(i, i3);
                    if (joystickAxisAndStateToKeycode2 != 0) {
                        ViewRootImpl.this.enqueueInputEvent(new KeyEvent(j, j, 1, joystickAxisAndStateToKeycode2, 0, metaState, deviceId, 0, 1024, source));
                        deviceId = deviceId;
                        SyntheticJoystickHandler.this.mDeviceKeyEvents.put(deviceId, null);
                    }
                    SyntheticJoystickHandler.this.removeMessages(i2);
                    i4 = 1;
                }
                if ((joystickAxisValueToState == i4 || joystickAxisValueToState == -1) && (joystickAxisAndStateToKeycode = joystickAxisAndStateToKeycode(i, joystickAxisValueToState)) != 0) {
                    int i5 = deviceId;
                    KeyEvent keyEvent = new KeyEvent(j, j, 0, joystickAxisAndStateToKeycode, 0, metaState, i5, 0, 1024, source);
                    ViewRootImpl.this.enqueueInputEvent(keyEvent);
                    Message obtainMessage = SyntheticJoystickHandler.this.obtainMessage(i2, keyEvent);
                    obtainMessage.setAsynchronous(true);
                    SyntheticJoystickHandler.this.sendMessageDelayed(obtainMessage, ViewConfiguration.getKeyRepeatTimeout());
                    SyntheticJoystickHandler.this.mDeviceKeyEvents.put(i5, new KeyEvent(j, j, 1, joystickAxisAndStateToKeycode, 0, metaState, i5, 0, 1056, source));
                }
                if (i == 0 || i == 1) {
                    this.mAxisStatesStick[c] = joystickAxisValueToState;
                } else {
                    this.mAxisStatesHat[c] = joystickAxisValueToState;
                }
            }

            private int joystickAxisAndStateToKeycode(int i, int i2) {
                if (isXAxis(i) && i2 == -1) {
                    return 21;
                }
                if (isXAxis(i) && i2 == 1) {
                    return 22;
                }
                if (isYAxis(i) && i2 == -1) {
                    return 19;
                }
                if (isYAxis(i) && i2 == 1) {
                    return 20;
                }
                Log.e(ViewRootImpl.this.mTag, "Unknown axis " + i + " or direction " + i2);
                return 0;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class SyntheticTouchNavigationHandler extends Handler {
        private static final float DEFAULT_HEIGHT_MILLIMETERS = 48.0f;
        private static final float DEFAULT_WIDTH_MILLIMETERS = 48.0f;
        private static final float FLING_TICK_DECAY = 0.8f;
        private static final boolean LOCAL_DEBUG = false;
        private static final String LOCAL_TAG = "SyntheticTouchNavigationHandler";
        private static final float MAX_FLING_VELOCITY_TICKS_PER_SECOND = 20.0f;
        private static final float MIN_FLING_VELOCITY_TICKS_PER_SECOND = 6.0f;
        private static final int TICK_DISTANCE_MILLIMETERS = 12;
        private float mAccumulatedX;
        private float mAccumulatedY;
        private int mActivePointerId;
        private float mConfigMaxFlingVelocity;
        private float mConfigMinFlingVelocity;
        private float mConfigTickDistance;
        private boolean mConsumedMovement;
        private int mCurrentDeviceId;
        private boolean mCurrentDeviceSupported;
        private int mCurrentSource;
        private final Runnable mFlingRunnable;
        private float mFlingVelocity;
        private boolean mFlinging;
        private float mLastX;
        private float mLastY;
        private int mPendingKeyCode;
        private long mPendingKeyDownTime;
        private int mPendingKeyMetaState;
        private int mPendingKeyRepeatCount;
        private float mStartX;
        private float mStartY;
        private VelocityTracker mVelocityTracker;

        static /* synthetic */ float access$2932(SyntheticTouchNavigationHandler syntheticTouchNavigationHandler, float f) {
            float f2 = syntheticTouchNavigationHandler.mFlingVelocity * f;
            syntheticTouchNavigationHandler.mFlingVelocity = f2;
            return f2;
        }

        public SyntheticTouchNavigationHandler() {
            super(true);
            this.mCurrentDeviceId = -1;
            this.mActivePointerId = -1;
            this.mPendingKeyCode = 0;
            this.mFlingRunnable = new Runnable() { // from class: android.view.ViewRootImpl.SyntheticTouchNavigationHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    SyntheticTouchNavigationHandler.this.sendKeyDownOrRepeat(uptimeMillis, SyntheticTouchNavigationHandler.this.mPendingKeyCode, SyntheticTouchNavigationHandler.this.mPendingKeyMetaState);
                    SyntheticTouchNavigationHandler.access$2932(SyntheticTouchNavigationHandler.this, SyntheticTouchNavigationHandler.FLING_TICK_DECAY);
                    if (SyntheticTouchNavigationHandler.this.postFling(uptimeMillis)) {
                        return;
                    }
                    SyntheticTouchNavigationHandler.this.mFlinging = false;
                    SyntheticTouchNavigationHandler.this.finishKeys(uptimeMillis);
                }
            };
        }

        public void process(MotionEvent motionEvent) {
            long eventTime = motionEvent.getEventTime();
            int deviceId = motionEvent.getDeviceId();
            int source = motionEvent.getSource();
            if (this.mCurrentDeviceId != deviceId || this.mCurrentSource != source) {
                finishKeys(eventTime);
                finishTracking(eventTime);
                this.mCurrentDeviceId = deviceId;
                this.mCurrentSource = source;
                this.mCurrentDeviceSupported = false;
                InputDevice device = motionEvent.getDevice();
                if (device != null) {
                    InputDevice.MotionRange motionRange = device.getMotionRange(0);
                    InputDevice.MotionRange motionRange2 = device.getMotionRange(1);
                    if (motionRange != null && motionRange2 != null) {
                        this.mCurrentDeviceSupported = true;
                        float resolution = motionRange.getResolution();
                        if (resolution <= 0.0f) {
                            resolution = motionRange.getRange() / 48.0f;
                        }
                        float resolution2 = motionRange2.getResolution();
                        if (resolution2 <= 0.0f) {
                            resolution2 = motionRange2.getRange() / 48.0f;
                        }
                        this.mConfigTickDistance = (resolution + resolution2) * 0.5f * 12.0f;
                        this.mConfigMinFlingVelocity = this.mConfigTickDistance * MIN_FLING_VELOCITY_TICKS_PER_SECOND;
                        this.mConfigMaxFlingVelocity = this.mConfigTickDistance * MAX_FLING_VELOCITY_TICKS_PER_SECOND;
                    }
                }
            }
            if (this.mCurrentDeviceSupported) {
                int actionMasked = motionEvent.getActionMasked();
                switch (actionMasked) {
                    case 0:
                        boolean z = this.mFlinging;
                        finishKeys(eventTime);
                        finishTracking(eventTime);
                        this.mActivePointerId = motionEvent.getPointerId(0);
                        this.mVelocityTracker = VelocityTracker.obtain();
                        this.mVelocityTracker.addMovement(motionEvent);
                        this.mStartX = motionEvent.getX();
                        this.mStartY = motionEvent.getY();
                        this.mLastX = this.mStartX;
                        this.mLastY = this.mStartY;
                        this.mAccumulatedX = 0.0f;
                        this.mAccumulatedY = 0.0f;
                        this.mConsumedMovement = z;
                        return;
                    case 1:
                    case 2:
                        if (this.mActivePointerId < 0) {
                            return;
                        }
                        int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                        if (findPointerIndex < 0) {
                            finishKeys(eventTime);
                            finishTracking(eventTime);
                            return;
                        }
                        this.mVelocityTracker.addMovement(motionEvent);
                        float x = motionEvent.getX(findPointerIndex);
                        float y = motionEvent.getY(findPointerIndex);
                        this.mAccumulatedX += x - this.mLastX;
                        this.mAccumulatedY += y - this.mLastY;
                        this.mLastX = x;
                        this.mLastY = y;
                        consumeAccumulatedMovement(eventTime, motionEvent.getMetaState());
                        if (actionMasked == 1) {
                            if (this.mConsumedMovement && this.mPendingKeyCode != 0) {
                                this.mVelocityTracker.computeCurrentVelocity(1000, this.mConfigMaxFlingVelocity);
                                if (!startFling(eventTime, this.mVelocityTracker.getXVelocity(this.mActivePointerId), this.mVelocityTracker.getYVelocity(this.mActivePointerId))) {
                                    finishKeys(eventTime);
                                }
                            }
                            finishTracking(eventTime);
                            return;
                        }
                        return;
                    case 3:
                        finishKeys(eventTime);
                        finishTracking(eventTime);
                        return;
                    default:
                        return;
                }
            }
        }

        public void cancel(MotionEvent motionEvent) {
            if (this.mCurrentDeviceId == motionEvent.getDeviceId() && this.mCurrentSource == motionEvent.getSource()) {
                long eventTime = motionEvent.getEventTime();
                finishKeys(eventTime);
                finishTracking(eventTime);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void finishKeys(long j) {
            cancelFling();
            sendKeyUp(j);
        }

        private void finishTracking(long j) {
            if (this.mActivePointerId >= 0) {
                this.mActivePointerId = -1;
                this.mVelocityTracker.recycle();
                this.mVelocityTracker = null;
            }
        }

        private void consumeAccumulatedMovement(long j, int i) {
            float abs = Math.abs(this.mAccumulatedX);
            float abs2 = Math.abs(this.mAccumulatedY);
            if (abs >= abs2) {
                if (abs >= this.mConfigTickDistance) {
                    this.mAccumulatedX = consumeAccumulatedMovement(j, i, this.mAccumulatedX, 21, 22);
                    this.mAccumulatedY = 0.0f;
                    this.mConsumedMovement = true;
                    return;
                }
                return;
            }
            if (abs2 >= this.mConfigTickDistance) {
                this.mAccumulatedY = consumeAccumulatedMovement(j, i, this.mAccumulatedY, 19, 20);
                this.mAccumulatedX = 0.0f;
                this.mConsumedMovement = true;
            }
        }

        private float consumeAccumulatedMovement(long j, int i, float f, int i2, int i3) {
            while (f <= (-this.mConfigTickDistance)) {
                sendKeyDownOrRepeat(j, i2, i);
                f += this.mConfigTickDistance;
            }
            while (f >= this.mConfigTickDistance) {
                sendKeyDownOrRepeat(j, i3, i);
                f -= this.mConfigTickDistance;
            }
            return f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendKeyDownOrRepeat(long j, int i, int i2) {
            if (this.mPendingKeyCode != i) {
                sendKeyUp(j);
                this.mPendingKeyDownTime = j;
                this.mPendingKeyCode = i;
                this.mPendingKeyRepeatCount = 0;
            } else {
                this.mPendingKeyRepeatCount++;
            }
            this.mPendingKeyMetaState = i2;
            ViewRootImpl.this.enqueueInputEvent(new KeyEvent(this.mPendingKeyDownTime, j, 0, this.mPendingKeyCode, this.mPendingKeyRepeatCount, this.mPendingKeyMetaState, this.mCurrentDeviceId, 1024, this.mCurrentSource));
        }

        private void sendKeyUp(long j) {
            if (this.mPendingKeyCode != 0) {
                ViewRootImpl.this.enqueueInputEvent(new KeyEvent(this.mPendingKeyDownTime, j, 1, this.mPendingKeyCode, 0, this.mPendingKeyMetaState, this.mCurrentDeviceId, 0, 1024, this.mCurrentSource));
                this.mPendingKeyCode = 0;
            }
        }

        private boolean startFling(long j, float f, float f2) {
            switch (this.mPendingKeyCode) {
                case 19:
                    float f3 = -f2;
                    if (f3 >= this.mConfigMinFlingVelocity && Math.abs(f) < this.mConfigMinFlingVelocity) {
                        this.mFlingVelocity = f3;
                        break;
                    } else {
                        return false;
                    }
                case 20:
                    if (f2 >= this.mConfigMinFlingVelocity && Math.abs(f) < this.mConfigMinFlingVelocity) {
                        this.mFlingVelocity = f2;
                        break;
                    } else {
                        return false;
                    }
                case 21:
                    float f4 = -f;
                    if (f4 >= this.mConfigMinFlingVelocity && Math.abs(f2) < this.mConfigMinFlingVelocity) {
                        this.mFlingVelocity = f4;
                        break;
                    } else {
                        return false;
                    }
                    break;
                case 22:
                    if (f >= this.mConfigMinFlingVelocity && Math.abs(f2) < this.mConfigMinFlingVelocity) {
                        this.mFlingVelocity = f;
                        break;
                    } else {
                        return false;
                    }
            }
            this.mFlinging = postFling(j);
            return this.mFlinging;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean postFling(long j) {
            if (this.mFlingVelocity < this.mConfigMinFlingVelocity) {
                return false;
            }
            postAtTime(this.mFlingRunnable, j + ((this.mConfigTickDistance / this.mFlingVelocity) * 1000.0f));
            return true;
        }

        private void cancelFling() {
            if (this.mFlinging) {
                removeCallbacks(this.mFlingRunnable);
                this.mFlinging = false;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    final class SyntheticKeyboardHandler {
        SyntheticKeyboardHandler() {
        }

        public void process(KeyEvent keyEvent) {
            KeyCharacterMap.FallbackAction fallbackAction;
            if ((keyEvent.getFlags() & 1024) == 0 && (fallbackAction = keyEvent.getKeyCharacterMap().getFallbackAction(keyEvent.getKeyCode(), keyEvent.getMetaState())) != null) {
                KeyEvent obtain = KeyEvent.obtain(keyEvent.getDownTime(), keyEvent.getEventTime(), keyEvent.getAction(), fallbackAction.keyCode, keyEvent.getRepeatCount(), fallbackAction.metaState, keyEvent.getDeviceId(), keyEvent.getScanCode(), keyEvent.getFlags() | 1024, keyEvent.getSource(), null);
                fallbackAction.recycle();
                ViewRootImpl.this.enqueueInputEvent(obtain);
            }
        }
    }

    private static boolean isNavigationKey(KeyEvent keyEvent) {
        switch (keyEvent.getKeyCode()) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 61:
            case 62:
            case 66:
            case 92:
            case 93:
            case 122:
            case 123:
                return true;
            default:
                return false;
        }
    }

    private static boolean isTypingKey(KeyEvent keyEvent) {
        return keyEvent.getUnicodeChar() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkForLeavingTouchModeAndConsume(KeyEvent keyEvent) {
        if (!this.mAttachInfo.mInTouchMode) {
            return false;
        }
        int action = keyEvent.getAction();
        if ((action != 0 && action != 2) || (keyEvent.getFlags() & 4) != 0) {
            return false;
        }
        if (isNavigationKey(keyEvent)) {
            return ensureTouchMode(false);
        }
        if (!isTypingKey(keyEvent)) {
            return false;
        }
        ensureTouchMode(false);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLocalDragState(Object obj) {
        this.mLocalDragState = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDragEvent(DragEvent dragEvent) {
        if (this.mView != null && this.mAdded) {
            int i = dragEvent.mAction;
            if (i == 1) {
                this.mCurrentDragView = null;
                this.mDragDescription = dragEvent.mClipDescription;
            } else {
                if (i == 4) {
                    this.mDragDescription = null;
                }
                dragEvent.mClipDescription = this.mDragDescription;
            }
            if (i == 6) {
                if (View.sCascadedDragDrop) {
                    this.mView.dispatchDragEnterExitInPreN(dragEvent);
                }
                setDragFocus(null, dragEvent);
            } else {
                if (i == 2 || i == 3) {
                    this.mDragPoint.set(dragEvent.mX, dragEvent.mY);
                    if (this.mTranslator != null) {
                        this.mTranslator.translatePointInScreenToAppWindow(this.mDragPoint);
                    }
                    if (this.mCurScrollY != 0) {
                        this.mDragPoint.offset(0.0f, this.mCurScrollY);
                    }
                    dragEvent.mX = this.mDragPoint.x;
                    dragEvent.mY = this.mDragPoint.y;
                }
                View view = this.mCurrentDragView;
                if (i == 3 && dragEvent.mClipData != null) {
                    dragEvent.mClipData.prepareToEnterProcess();
                }
                boolean dispatchDragEvent = this.mView.dispatchDragEvent(dragEvent);
                if (i == 2 && !dragEvent.mEventHandlerWasCalled) {
                    setDragFocus(null, dragEvent);
                }
                if (view != this.mCurrentDragView) {
                    if (view != null) {
                        try {
                            this.mWindowSession.dragRecipientExited(this.mWindow);
                        } catch (RemoteException unused) {
                            Slog.e(this.mTag, "Unable to note drag target change");
                        }
                    }
                    if (this.mCurrentDragView != null) {
                        this.mWindowSession.dragRecipientEntered(this.mWindow);
                    }
                }
                if (i == 3) {
                    try {
                        Log.i(this.mTag, "Reporting drop result: " + dispatchDragEvent);
                        this.mWindowSession.reportDropResult(this.mWindow, dispatchDragEvent);
                    } catch (RemoteException unused2) {
                        Log.e(this.mTag, "Unable to report drop result");
                    }
                }
                if (i == 4) {
                    this.mCurrentDragView = null;
                    setLocalDragState(null);
                    this.mAttachInfo.mDragToken = null;
                    if (this.mAttachInfo.mDragSurface != null) {
                        this.mAttachInfo.mDragSurface.release();
                        this.mAttachInfo.mDragSurface = null;
                    }
                }
            }
        }
        dragEvent.recycle();
    }

    public void handleDispatchSystemUiVisibilityChanged(SystemUiVisibilityInfo systemUiVisibilityInfo) {
        if (this.mSeq != systemUiVisibilityInfo.seq) {
            this.mSeq = systemUiVisibilityInfo.seq;
            this.mAttachInfo.mForceReportNewAttributes = true;
            scheduleTraversals();
        }
        if (this.mView == null) {
            return;
        }
        if (systemUiVisibilityInfo.localChanges != 0) {
            this.mView.updateLocalSystemUiVisibility(systemUiVisibilityInfo.localValue, systemUiVisibilityInfo.localChanges);
        }
        int i = systemUiVisibilityInfo.globalVisibility & 7;
        if (i != this.mAttachInfo.mGlobalSystemUiVisibility) {
            this.mAttachInfo.mGlobalSystemUiVisibility = i;
            this.mView.dispatchSystemUiVisibilityChanged(i);
        }
    }

    public void onWindowTitleChanged() {
        this.mAttachInfo.mForceReportNewAttributes = true;
    }

    public void handleDispatchWindowShown() {
        this.mAttachInfo.mTreeObserver.dispatchOnWindowShown();
    }

    public void handleRequestKeyboardShortcuts(IResultReceiver iResultReceiver, int i) {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        if (this.mView != null) {
            this.mView.requestKeyboardShortcuts(arrayList, i);
        }
        bundle.putParcelableArrayList(WindowManager.PARCEL_KEY_SHORTCUTS_ARRAY, arrayList);
        try {
            iResultReceiver.send(0, bundle);
        } catch (RemoteException unused) {
        }
    }

    public void getLastTouchPoint(Point point) {
        point.x = (int) this.mLastTouchPoint.x;
        point.y = (int) this.mLastTouchPoint.y;
    }

    public int getLastTouchSource() {
        return this.mLastTouchSource;
    }

    public void setDragFocus(View view, DragEvent dragEvent) {
        if (this.mCurrentDragView != view && !View.sCascadedDragDrop) {
            float f = dragEvent.mX;
            float f2 = dragEvent.mY;
            int i = dragEvent.mAction;
            ClipData clipData = dragEvent.mClipData;
            dragEvent.mX = 0.0f;
            dragEvent.mY = 0.0f;
            dragEvent.mClipData = null;
            if (this.mCurrentDragView != null) {
                dragEvent.mAction = 6;
                this.mCurrentDragView.callDragEventHandler(dragEvent);
            }
            if (view != null) {
                dragEvent.mAction = 5;
                view.callDragEventHandler(dragEvent);
            }
            dragEvent.mAction = i;
            dragEvent.mX = f;
            dragEvent.mY = f2;
            dragEvent.mClipData = clipData;
        }
        this.mCurrentDragView = view;
    }

    private AudioManager getAudioManager() {
        if (this.mView == null) {
            throw new IllegalStateException("getAudioManager called when there is no mView");
        }
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) this.mView.getContext().getSystemService("audio");
        }
        return this.mAudioManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AutofillManager getAutofillManager() {
        if (!(this.mView instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) this.mView;
        if (viewGroup.getChildCount() > 0) {
            return (AutofillManager) viewGroup.getChildAt(0).getContext().getSystemService(AutofillManager.class);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAutofillUiShowing() {
        AutofillManager autofillManager = getAutofillManager();
        if (autofillManager == null) {
            return false;
        }
        return autofillManager.isAutofillUiShowing();
    }

    public AccessibilityInteractionController getAccessibilityInteractionController() {
        if (this.mView == null) {
            throw new IllegalStateException("getAccessibilityInteractionController called when there is no mView");
        }
        if (this.mAccessibilityInteractionController == null) {
            this.mAccessibilityInteractionController = new AccessibilityInteractionController(this);
        }
        return this.mAccessibilityInteractionController;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private int relayoutWindow(WindowManager.LayoutParams layoutParams, int i, boolean z) throws RemoteException {
        Object[] objArr;
        float f = this.mAttachInfo.mApplicationScale;
        if (layoutParams == null || this.mTranslator == null) {
            objArr = false;
        } else {
            layoutParams.backup();
            this.mTranslator.translateWindowLayout(layoutParams);
            objArr = true;
        }
        if (layoutParams != null && this.mOrigWindowType != layoutParams.type && this.mTargetSdkVersion < 14) {
            Slog.w(this.mTag, "Window type can not be changed after the window is added; ignoring change of " + this.mView);
            layoutParams.type = this.mOrigWindowType;
        }
        int relayout = this.mWindowSession.relayout(this.mWindow, this.mSeq, layoutParams, (int) ((this.mView.getMeasuredWidth() * f) + 0.5f), (int) ((this.mView.getMeasuredHeight() * f) + 0.5f), i, z ? 1 : 0, this.mSurface.isValid() ? this.mSurface.getNextFrameNumber() : -1L, this.mWinFrame, this.mPendingOverscanInsets, this.mPendingContentInsets, this.mPendingVisibleInsets, this.mPendingStableInsets, this.mPendingOutsets, this.mPendingBackDropFrame, this.mPendingDisplayCutout, this.mPendingMergedConfiguration, this.mSurface);
        this.mPendingAlwaysConsumeNavBar = (relayout & 64) != 0;
        if (objArr != false) {
            layoutParams.restore();
        }
        if (this.mTranslator != null) {
            this.mTranslator.translateRectInScreenToAppWinFrame(this.mWinFrame);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingOverscanInsets);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingContentInsets);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingVisibleInsets);
            this.mTranslator.translateRectInScreenToAppWindow(this.mPendingStableInsets);
        }
        return relayout;
    }

    @Override // android.view.View.AttachInfo.Callbacks
    public void playSoundEffect(int i) {
        checkThread();
        try {
            AudioManager audioManager = getAudioManager();
            switch (i) {
                case 0:
                    audioManager.playSoundEffect(0);
                    return;
                case 1:
                    audioManager.playSoundEffect(3);
                    return;
                case 2:
                    audioManager.playSoundEffect(1);
                    return;
                case 3:
                    audioManager.playSoundEffect(4);
                    return;
                case 4:
                    audioManager.playSoundEffect(2);
                    return;
                default:
                    throw new IllegalArgumentException("unknown effect id " + i + " not defined in " + SoundEffectConstants.class.getCanonicalName());
            }
        } catch (IllegalStateException e) {
            Log.e(this.mTag, "FATAL EXCEPTION when attempting to play sound effect: " + e);
            e.printStackTrace();
        }
    }

    @Override // android.view.View.AttachInfo.Callbacks
    public boolean performHapticFeedback(int i, boolean z) {
        try {
            return this.mWindowSession.performHapticFeedback(this.mWindow, i, z);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.ViewParent
    public View focusSearch(View view, int i) {
        checkThread();
        if (this.mView instanceof ViewGroup) {
            return FocusFinder.getInstance().findNextFocus((ViewGroup) this.mView, view, i);
        }
        return null;
    }

    @Override // android.view.ViewParent
    public View keyboardNavigationClusterSearch(View view, int i) {
        checkThread();
        return FocusFinder.getInstance().findNextKeyboardNavigationCluster(this.mView, view, i);
    }

    public void debug() {
        this.mView.debug();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "  ";
        printWriter.print(str);
        printWriter.println("ViewRoot:");
        printWriter.print(str2);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoved=");
        printWriter.println(this.mRemoved);
        printWriter.print(str2);
        printWriter.print("mConsumeBatchedInputScheduled=");
        printWriter.println(this.mConsumeBatchedInputScheduled);
        printWriter.print(str2);
        printWriter.print("mConsumeBatchedInputImmediatelyScheduled=");
        printWriter.println(this.mConsumeBatchedInputImmediatelyScheduled);
        printWriter.print(str2);
        printWriter.print("mPendingInputEventCount=");
        printWriter.println(this.mPendingInputEventCount);
        printWriter.print(str2);
        printWriter.print("mProcessInputEventsScheduled=");
        printWriter.println(this.mProcessInputEventsScheduled);
        printWriter.print(str2);
        printWriter.print("mTraversalScheduled=");
        printWriter.print(this.mTraversalScheduled);
        printWriter.print(str2);
        printWriter.print("mIsAmbientMode=");
        printWriter.print(this.mIsAmbientMode);
        if (this.mTraversalScheduled) {
            printWriter.print(" (barrier=");
            printWriter.print(this.mTraversalBarrier);
            printWriter.println(")");
        } else {
            printWriter.println();
        }
        this.mFirstInputStage.dump(str2, printWriter);
        this.mChoreographer.dump(str, printWriter);
        printWriter.print(str);
        printWriter.println("View Hierarchy:");
        dumpViewHierarchy(str2, printWriter, this.mView);
    }

    private void dumpViewHierarchy(String str, PrintWriter printWriter, View view) {
        ViewGroup viewGroup;
        int childCount;
        printWriter.print(str);
        if (view == null) {
            printWriter.println("null");
            return;
        }
        printWriter.println(view.toString());
        if ((view instanceof ViewGroup) && (childCount = (viewGroup = (ViewGroup) view).getChildCount()) > 0) {
            String str2 = str + "  ";
            for (int i = 0; i < childCount; i++) {
                dumpViewHierarchy(str2, printWriter, viewGroup.getChildAt(i));
            }
        }
    }

    public void dumpGfxInfo(int[] iArr) {
        iArr[1] = 0;
        iArr[0] = 0;
        if (this.mView != null) {
            getGfxInfo(this.mView, iArr);
        }
    }

    private static void getGfxInfo(View view, int[] iArr) {
        RenderNode renderNode = view.mRenderNode;
        iArr[0] = iArr[0] + 1;
        if (renderNode != null) {
            iArr[1] = iArr[1] + renderNode.getDebugSize();
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                getGfxInfo(viewGroup.getChildAt(i), iArr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean die(boolean z) {
        if (z && !this.mIsInTraversal) {
            doDie();
            return false;
        }
        if (!this.mIsDrawing) {
            destroyHardwareRenderer();
        } else {
            Log.e(this.mTag, "Attempting to destroy the window while drawing!\n  window=" + this + ", title=" + ((Object) this.mWindowAttributes.getTitle()));
        }
        this.mHandler.sendEmptyMessage(3);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void doDie() {
        checkThread();
        synchronized (this) {
            if (this.mRemoved) {
                return;
            }
            boolean z = true;
            this.mRemoved = true;
            if (this.mAdded) {
                dispatchDetachedFromWindow();
            }
            if (this.mAdded && !this.mFirst) {
                destroyHardwareRenderer();
                if (this.mView != null) {
                    int visibility = this.mView.getVisibility();
                    if (this.mViewVisibility == visibility) {
                        z = false;
                    }
                    if (this.mWindowAttributesChanged || z) {
                        try {
                            if ((relayoutWindow(this.mWindowAttributes, visibility, false) & 2) != 0) {
                                this.mWindowSession.finishDrawing(this.mWindow);
                            }
                        } catch (RemoteException unused) {
                        }
                    }
                    this.mSurface.release();
                }
            }
            this.mAdded = false;
            WindowManagerGlobal.getInstance().doRemoveView(this);
        }
    }

    public void requestUpdateConfiguration(Configuration configuration) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(18, configuration));
    }

    public void loadSystemProperties() {
        this.mHandler.post(new Runnable() { // from class: android.view.ViewRootImpl.4
            @Override // java.lang.Runnable
            public void run() {
                ViewRootImpl.this.mProfileRendering = SystemProperties.getBoolean(ViewRootImpl.PROPERTY_PROFILE_RENDERING, false);
                ViewRootImpl.this.profileRendering(ViewRootImpl.this.mAttachInfo.mHasWindowFocus);
                if (ViewRootImpl.this.mAttachInfo.mThreadedRenderer != null && ViewRootImpl.this.mAttachInfo.mThreadedRenderer.loadSystemProperties()) {
                    ViewRootImpl.this.invalidate();
                }
                boolean z = SystemProperties.getBoolean(View.DEBUG_LAYOUT_PROPERTY, false);
                if (z != ViewRootImpl.this.mAttachInfo.mDebugLayout) {
                    ViewRootImpl.this.mAttachInfo.mDebugLayout = z;
                    if (ViewRootImpl.this.mHandler.hasMessages(22)) {
                        return;
                    }
                    ViewRootImpl.this.mHandler.sendEmptyMessageDelayed(22, 200L);
                }
            }
        });
    }

    private void destroyHardwareRenderer() {
        ThreadedRenderer threadedRenderer = this.mAttachInfo.mThreadedRenderer;
        if (threadedRenderer != null) {
            if (this.mView != null) {
                threadedRenderer.destroyHardwareResources(this.mView);
            }
            threadedRenderer.destroy();
            threadedRenderer.setRequested(false);
            this.mAttachInfo.mThreadedRenderer = null;
            this.mAttachInfo.mHardwareAccelerated = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchResized(Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6, boolean z, MergedConfiguration mergedConfiguration, Rect rect7, boolean z2, boolean z3, int i, DisplayCutout.ParcelableWrapper parcelableWrapper) {
        Rect rect8 = rect2;
        Rect rect9 = rect3;
        Rect rect10 = rect4;
        Rect rect11 = rect5;
        MergedConfiguration mergedConfiguration2 = mergedConfiguration;
        Rect rect12 = rect7;
        if (this.mDragResizing && this.mUseMTRenderer) {
            boolean equals = rect.equals(rect12);
            synchronized (this.mWindowCallbacks) {
                for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
                    this.mWindowCallbacks.get(size).onWindowSizeIsChanging(rect12, equals, rect10, rect11);
                }
            }
        }
        Message obtainMessage = this.mHandler.obtainMessage(z ? 5 : 4);
        if (this.mTranslator != null) {
            this.mTranslator.translateRectInScreenToAppWindow(rect);
            this.mTranslator.translateRectInScreenToAppWindow(rect2);
            this.mTranslator.translateRectInScreenToAppWindow(rect9);
            this.mTranslator.translateRectInScreenToAppWindow(rect10);
        }
        SomeArgs obtain = SomeArgs.obtain();
        boolean z4 = Binder.getCallingPid() == Process.myPid();
        obtain.arg1 = z4 ? new Rect(rect) : rect;
        if (z4) {
            rect9 = new Rect(rect9);
        }
        obtain.arg2 = rect9;
        if (z4) {
            rect10 = new Rect(rect10);
        }
        obtain.arg3 = rect10;
        if (z4 && mergedConfiguration2 != null) {
            mergedConfiguration2 = new MergedConfiguration(mergedConfiguration2);
        }
        obtain.arg4 = mergedConfiguration2;
        if (z4) {
            rect8 = new Rect(rect2);
        }
        obtain.arg5 = rect8;
        if (z4) {
            rect11 = new Rect(rect11);
        }
        obtain.arg6 = rect11;
        obtain.arg7 = z4 ? new Rect(rect6) : rect6;
        if (z4) {
            rect12 = new Rect(rect12);
        }
        obtain.arg8 = rect12;
        obtain.arg9 = parcelableWrapper.get();
        obtain.argi1 = z2 ? 1 : 0;
        obtain.argi2 = z3 ? 1 : 0;
        obtain.argi3 = i;
        obtainMessage.obj = obtain;
        this.mHandler.sendMessage(obtainMessage);
    }

    public void dispatchMoved(int i, int i2) {
        if (this.mTranslator != null) {
            this.mTranslator.translatePointInScreenToAppWindow(new PointF(i, i2));
            i = (int) (r0.x + 0.5d);
            i2 = (int) (r0.y + 0.5d);
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(23, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class QueuedInputEvent {
        public static final int FLAG_DEFERRED = 2;
        public static final int FLAG_DELIVER_POST_IME = 1;
        public static final int FLAG_FINISHED = 4;
        public static final int FLAG_FINISHED_HANDLED = 8;
        public static final int FLAG_RESYNTHESIZED = 16;
        public static final int FLAG_UNHANDLED = 32;
        public InputEvent mEvent;
        public int mFlags;
        public QueuedInputEvent mNext;
        public InputEventReceiver mReceiver;

        private QueuedInputEvent() {
        }

        public boolean shouldSkipIme() {
            if ((this.mFlags & 1) != 0) {
                return true;
            }
            return (this.mEvent instanceof MotionEvent) && (this.mEvent.isFromSource(2) || this.mEvent.isFromSource(4194304));
        }

        public boolean shouldSendToSynthesizer() {
            return (this.mFlags & 32) != 0;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("QueuedInputEvent{flags=");
            if (!flagToString("UNHANDLED", 32, flagToString("RESYNTHESIZED", 16, flagToString("FINISHED_HANDLED", 8, flagToString("FINISHED", 4, flagToString("DEFERRED", 2, flagToString("DELIVER_POST_IME", 1, false, sb), sb), sb), sb), sb), sb)) {
                sb.append("0");
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(", hasNextQueuedEvent=");
            sb2.append(this.mEvent != null ? "true" : "false");
            sb.append(sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(", hasInputEventReceiver=");
            sb3.append(this.mReceiver != null ? "true" : "false");
            sb.append(sb3.toString());
            sb.append(", mEvent=" + this.mEvent + "}");
            return sb.toString();
        }

        private boolean flagToString(String str, int i, boolean z, StringBuilder sb) {
            if ((this.mFlags & i) == 0) {
                return z;
            }
            if (z) {
                sb.append("|");
            }
            sb.append(str);
            return true;
        }
    }

    private QueuedInputEvent obtainQueuedInputEvent(InputEvent inputEvent, InputEventReceiver inputEventReceiver, int i) {
        QueuedInputEvent queuedInputEvent = this.mQueuedInputEventPool;
        if (queuedInputEvent != null) {
            this.mQueuedInputEventPoolSize--;
            this.mQueuedInputEventPool = queuedInputEvent.mNext;
            queuedInputEvent.mNext = null;
        } else {
            queuedInputEvent = new QueuedInputEvent();
        }
        queuedInputEvent.mEvent = inputEvent;
        queuedInputEvent.mReceiver = inputEventReceiver;
        queuedInputEvent.mFlags = i;
        return queuedInputEvent;
    }

    private void recycleQueuedInputEvent(QueuedInputEvent queuedInputEvent) {
        queuedInputEvent.mEvent = null;
        queuedInputEvent.mReceiver = null;
        if (this.mQueuedInputEventPoolSize < 10) {
            this.mQueuedInputEventPoolSize++;
            queuedInputEvent.mNext = this.mQueuedInputEventPool;
            this.mQueuedInputEventPool = queuedInputEvent;
        }
    }

    void enqueueInputEvent(InputEvent inputEvent) {
        enqueueInputEvent(inputEvent, null, 0, false);
    }

    void enqueueInputEvent(InputEvent inputEvent, InputEventReceiver inputEventReceiver, int i, boolean z) {
        adjustInputEventForCompatibility(inputEvent);
        QueuedInputEvent obtainQueuedInputEvent = obtainQueuedInputEvent(inputEvent, inputEventReceiver, i);
        QueuedInputEvent queuedInputEvent = this.mPendingInputEventTail;
        if (queuedInputEvent == null) {
            this.mPendingInputEventHead = obtainQueuedInputEvent;
            this.mPendingInputEventTail = obtainQueuedInputEvent;
        } else {
            queuedInputEvent.mNext = obtainQueuedInputEvent;
            this.mPendingInputEventTail = obtainQueuedInputEvent;
        }
        this.mPendingInputEventCount++;
        Trace.traceCounter(4L, this.mPendingInputEventQueueLengthCounterName, this.mPendingInputEventCount);
        if (z) {
            doProcessInputEvents();
        } else {
            scheduleProcessInputEvents();
        }
    }

    private void scheduleProcessInputEvents() {
        if (this.mProcessInputEventsScheduled) {
            return;
        }
        this.mProcessInputEventsScheduled = true;
        Message obtainMessage = this.mHandler.obtainMessage(19);
        obtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(obtainMessage);
    }

    void doProcessInputEvents() {
        long j;
        while (this.mPendingInputEventHead != null) {
            QueuedInputEvent queuedInputEvent = this.mPendingInputEventHead;
            this.mPendingInputEventHead = queuedInputEvent.mNext;
            if (this.mPendingInputEventHead == null) {
                this.mPendingInputEventTail = null;
            }
            queuedInputEvent.mNext = null;
            this.mPendingInputEventCount--;
            Trace.traceCounter(4L, this.mPendingInputEventQueueLengthCounterName, this.mPendingInputEventCount);
            long eventTimeNano = queuedInputEvent.mEvent.getEventTimeNano();
            if (queuedInputEvent.mEvent instanceof MotionEvent) {
                MotionEvent motionEvent = (MotionEvent) queuedInputEvent.mEvent;
                if (motionEvent.getHistorySize() > 0) {
                    j = motionEvent.getHistoricalEventTimeNano(0);
                    this.mChoreographer.mFrameInfo.updateInputEventTime(eventTimeNano, j);
                    deliverInputEvent(queuedInputEvent);
                }
            }
            j = eventTimeNano;
            this.mChoreographer.mFrameInfo.updateInputEventTime(eventTimeNano, j);
            deliverInputEvent(queuedInputEvent);
        }
        if (this.mProcessInputEventsScheduled) {
            this.mProcessInputEventsScheduled = false;
            this.mHandler.removeMessages(19);
        }
    }

    private void deliverInputEvent(QueuedInputEvent queuedInputEvent) {
        InputStage inputStage;
        Trace.asyncTraceBegin(8L, "deliverInputEvent", queuedInputEvent.mEvent.getSequenceNumber());
        if (this.mInputEventConsistencyVerifier != null) {
            this.mInputEventConsistencyVerifier.onInputEvent(queuedInputEvent.mEvent, 0);
        }
        if (queuedInputEvent.shouldSendToSynthesizer()) {
            inputStage = this.mSyntheticInputStage;
        } else {
            inputStage = queuedInputEvent.shouldSkipIme() ? this.mFirstPostImeInputStage : this.mFirstInputStage;
        }
        if (queuedInputEvent.mEvent instanceof KeyEvent) {
            this.mUnhandledKeyManager.preDispatch((KeyEvent) queuedInputEvent.mEvent);
        }
        if (inputStage != null) {
            handleWindowFocusChanged();
            inputStage.deliver(queuedInputEvent);
        } else {
            finishInputEvent(queuedInputEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishInputEvent(QueuedInputEvent queuedInputEvent) {
        Trace.asyncTraceEnd(8L, "deliverInputEvent", queuedInputEvent.mEvent.getSequenceNumber());
        if (queuedInputEvent.mReceiver != null) {
            queuedInputEvent.mReceiver.finishInputEvent(queuedInputEvent.mEvent, (queuedInputEvent.mFlags & 8) != 0);
        } else {
            queuedInputEvent.mEvent.recycleIfNeededAfterDispatch();
        }
        recycleQueuedInputEvent(queuedInputEvent);
    }

    private void adjustInputEventForCompatibility(InputEvent inputEvent) {
        if (this.mTargetSdkVersion >= 23 || !(inputEvent instanceof MotionEvent)) {
            return;
        }
        MotionEvent motionEvent = (MotionEvent) inputEvent;
        int buttonState = motionEvent.getButtonState();
        int i = (buttonState & 96) >> 4;
        if (i != 0) {
            motionEvent.setButtonState(buttonState | i);
        }
    }

    static boolean isTerminalInputEvent(InputEvent inputEvent) {
        if (inputEvent instanceof KeyEvent) {
            return ((KeyEvent) inputEvent).getAction() == 1;
        }
        int action = ((MotionEvent) inputEvent).getAction();
        return action == 1 || action == 3 || action == 10;
    }

    void scheduleConsumeBatchedInput() {
        if (this.mConsumeBatchedInputScheduled) {
            return;
        }
        this.mConsumeBatchedInputScheduled = true;
        this.mChoreographer.postCallback(0, this.mConsumedBatchedInputRunnable, null);
    }

    void unscheduleConsumeBatchedInput() {
        if (this.mConsumeBatchedInputScheduled) {
            this.mConsumeBatchedInputScheduled = false;
            this.mChoreographer.removeCallbacks(0, this.mConsumedBatchedInputRunnable, null);
        }
    }

    void scheduleConsumeBatchedInputImmediately() {
        if (this.mConsumeBatchedInputImmediatelyScheduled) {
            return;
        }
        unscheduleConsumeBatchedInput();
        this.mConsumeBatchedInputImmediatelyScheduled = true;
        this.mHandler.post(this.mConsumeBatchedInputImmediatelyRunnable);
    }

    void doConsumeBatchedInput(long j) {
        if (this.mConsumeBatchedInputScheduled) {
            this.mConsumeBatchedInputScheduled = false;
            if (this.mInputEventReceiver != null && this.mInputEventReceiver.consumeBatchedInputEvents(j) && j != -1) {
                scheduleConsumeBatchedInput();
            }
            doProcessInputEvents();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class TraversalRunnable implements Runnable {
        TraversalRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.doTraversal();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class WindowInputEventReceiver extends InputEventReceiver {
        public WindowInputEventReceiver(InputChannel inputChannel, Looper looper) {
            super(inputChannel, looper);
        }

        @Override // android.view.InputEventReceiver
        public void onInputEvent(InputEvent inputEvent, int i) {
            ViewRootImpl.this.enqueueInputEvent(inputEvent, this, 0, true);
        }

        @Override // android.view.InputEventReceiver
        public void onBatchedInputEventPending() {
            if (ViewRootImpl.this.mUnbufferedInputDispatch) {
                super.onBatchedInputEventPending();
            } else {
                ViewRootImpl.this.scheduleConsumeBatchedInput();
            }
        }

        @Override // android.view.InputEventReceiver
        public void dispose() {
            ViewRootImpl.this.unscheduleConsumeBatchedInput();
            super.dispose();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class ConsumeBatchedInputRunnable implements Runnable {
        ConsumeBatchedInputRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.doConsumeBatchedInput(ViewRootImpl.this.mChoreographer.getFrameTimeNanos());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class ConsumeBatchedInputImmediatelyRunnable implements Runnable {
        ConsumeBatchedInputImmediatelyRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewRootImpl.this.doConsumeBatchedInput(-1L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class InvalidateOnAnimationRunnable implements Runnable {
        private boolean mPosted;
        private View.AttachInfo.InvalidateInfo[] mTempViewRects;
        private View[] mTempViews;
        private final ArrayList<View> mViews = new ArrayList<>();
        private final ArrayList<View.AttachInfo.InvalidateInfo> mViewRects = new ArrayList<>();

        InvalidateOnAnimationRunnable() {
        }

        public void addView(View view) {
            synchronized (this) {
                this.mViews.add(view);
                postIfNeededLocked();
            }
        }

        public void addViewRect(View.AttachInfo.InvalidateInfo invalidateInfo) {
            synchronized (this) {
                this.mViewRects.add(invalidateInfo);
                postIfNeededLocked();
            }
        }

        public void removeView(View view) {
            synchronized (this) {
                this.mViews.remove(view);
                int size = this.mViewRects.size();
                while (true) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    View.AttachInfo.InvalidateInfo invalidateInfo = this.mViewRects.get(i);
                    if (invalidateInfo.target == view) {
                        this.mViewRects.remove(i);
                        invalidateInfo.recycle();
                    }
                    size = i;
                }
                if (this.mPosted && this.mViews.isEmpty() && this.mViewRects.isEmpty()) {
                    ViewRootImpl.this.mChoreographer.removeCallbacks(1, this, null);
                    this.mPosted = false;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            int size;
            int size2;
            synchronized (this) {
                this.mPosted = false;
                size = this.mViews.size();
                if (size != 0) {
                    this.mTempViews = (View[]) this.mViews.toArray(this.mTempViews != null ? this.mTempViews : new View[size]);
                    this.mViews.clear();
                }
                size2 = this.mViewRects.size();
                if (size2 != 0) {
                    this.mTempViewRects = (View.AttachInfo.InvalidateInfo[]) this.mViewRects.toArray(this.mTempViewRects != null ? this.mTempViewRects : new View.AttachInfo.InvalidateInfo[size2]);
                    this.mViewRects.clear();
                }
            }
            for (int i2 = 0; i2 < size; i2++) {
                this.mTempViews[i2].invalidate();
                this.mTempViews[i2] = null;
            }
            for (i = 0; i < size2; i++) {
                View.AttachInfo.InvalidateInfo invalidateInfo = this.mTempViewRects[i];
                invalidateInfo.target.invalidate(invalidateInfo.left, invalidateInfo.top, invalidateInfo.right, invalidateInfo.bottom);
                invalidateInfo.recycle();
            }
        }

        private void postIfNeededLocked() {
            if (this.mPosted) {
                return;
            }
            ViewRootImpl.this.mChoreographer.postCallback(1, this, null);
            this.mPosted = true;
        }
    }

    public void dispatchInvalidateDelayed(View view, long j) {
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(1, view), j);
    }

    public void dispatchInvalidateRectDelayed(View.AttachInfo.InvalidateInfo invalidateInfo, long j) {
        this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(2, invalidateInfo), j);
    }

    public void dispatchInvalidateOnAnimation(View view) {
        this.mInvalidateOnAnimationRunnable.addView(view);
    }

    public void dispatchInvalidateRectOnAnimation(View.AttachInfo.InvalidateInfo invalidateInfo) {
        this.mInvalidateOnAnimationRunnable.addViewRect(invalidateInfo);
    }

    public void cancelInvalidate(View view) {
        this.mHandler.removeMessages(1, view);
        this.mHandler.removeMessages(2, view);
        this.mInvalidateOnAnimationRunnable.removeView(view);
    }

    public void dispatchInputEvent(InputEvent inputEvent) {
        dispatchInputEvent(inputEvent, null);
    }

    public void dispatchInputEvent(InputEvent inputEvent, InputEventReceiver inputEventReceiver) {
        SomeArgs obtain = SomeArgs.obtain();
        obtain.arg1 = inputEvent;
        obtain.arg2 = inputEventReceiver;
        Message obtainMessage = this.mHandler.obtainMessage(7, obtain);
        obtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(obtainMessage);
    }

    public void synthesizeInputEvent(InputEvent inputEvent) {
        Message obtainMessage = this.mHandler.obtainMessage(24, inputEvent);
        obtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(obtainMessage);
    }

    public void dispatchKeyFromIme(KeyEvent keyEvent) {
        Message obtainMessage = this.mHandler.obtainMessage(11, keyEvent);
        obtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(obtainMessage);
    }

    public void dispatchKeyFromAutofill(KeyEvent keyEvent) {
        Message obtainMessage = this.mHandler.obtainMessage(12, keyEvent);
        obtainMessage.setAsynchronous(true);
        this.mHandler.sendMessage(obtainMessage);
    }

    public void dispatchUnhandledInputEvent(InputEvent inputEvent) {
        if (inputEvent instanceof MotionEvent) {
            inputEvent = MotionEvent.obtain((MotionEvent) inputEvent);
        }
        synthesizeInputEvent(inputEvent);
    }

    public void dispatchAppVisibility(boolean z) {
        Message obtainMessage = this.mHandler.obtainMessage(8);
        obtainMessage.arg1 = z ? 1 : 0;
        this.mHandler.sendMessage(obtainMessage);
    }

    public void dispatchGetNewSurface() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(9));
    }

    public void windowFocusChanged(boolean z, boolean z2) {
        synchronized (this) {
            this.mWindowFocusChanged = true;
            this.mUpcomingWindowFocus = z;
            this.mUpcomingInTouchMode = z2;
        }
        Message obtain = Message.obtain();
        obtain.what = 6;
        this.mHandler.sendMessage(obtain);
    }

    public void dispatchWindowShown() {
        this.mHandler.sendEmptyMessage(25);
    }

    public void dispatchCloseSystemDialogs(String str) {
        Message obtain = Message.obtain();
        obtain.what = 14;
        obtain.obj = str;
        this.mHandler.sendMessage(obtain);
    }

    public void dispatchDragEvent(DragEvent dragEvent) {
        int i;
        if (dragEvent.getAction() == 2) {
            i = 16;
            this.mHandler.removeMessages(16);
        } else {
            i = 15;
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(i, dragEvent));
    }

    public void updatePointerIcon(float f, float f2) {
        this.mHandler.removeMessages(27);
        this.mHandler.sendMessage(this.mHandler.obtainMessage(27, MotionEvent.obtain(0L, SystemClock.uptimeMillis(), 7, f, f2, 0)));
    }

    public void dispatchSystemUiVisibilityChanged(int i, int i2, int i3, int i4) {
        SystemUiVisibilityInfo systemUiVisibilityInfo = new SystemUiVisibilityInfo();
        systemUiVisibilityInfo.seq = i;
        systemUiVisibilityInfo.globalVisibility = i2;
        systemUiVisibilityInfo.localValue = i3;
        systemUiVisibilityInfo.localChanges = i4;
        this.mHandler.sendMessage(this.mHandler.obtainMessage(17, systemUiVisibilityInfo));
    }

    public void dispatchCheckFocus() {
        if (this.mHandler.hasMessages(13)) {
            return;
        }
        this.mHandler.sendEmptyMessage(13);
    }

    public void dispatchRequestKeyboardShortcuts(IResultReceiver iResultReceiver, int i) {
        this.mHandler.obtainMessage(26, i, 0, iResultReceiver).sendToTarget();
    }

    public void dispatchPointerCaptureChanged(boolean z) {
        this.mHandler.removeMessages(28);
        Message obtainMessage = this.mHandler.obtainMessage(28);
        obtainMessage.arg1 = z ? 1 : 0;
        this.mHandler.sendMessage(obtainMessage);
    }

    private void postSendWindowContentChangedCallback(View view, int i) {
        if (this.mSendWindowContentChangedAccessibilityEvent == null) {
            this.mSendWindowContentChangedAccessibilityEvent = new SendWindowContentChangedAccessibilityEvent();
        }
        this.mSendWindowContentChangedAccessibilityEvent.runOrPost(view, i);
    }

    private void removeSendWindowContentChangedCallback() {
        if (this.mSendWindowContentChangedAccessibilityEvent != null) {
            this.mHandler.removeCallbacks(this.mSendWindowContentChangedAccessibilityEvent);
        }
    }

    @Override // android.view.ViewParent
    public boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        AccessibilityNodeProvider accessibilityNodeProvider;
        if (this.mView == null || this.mStopped || this.mPausedForTransition) {
            return false;
        }
        if (accessibilityEvent.getEventType() != 2048 && this.mSendWindowContentChangedAccessibilityEvent != null && this.mSendWindowContentChangedAccessibilityEvent.mSource != null) {
            this.mSendWindowContentChangedAccessibilityEvent.removeCallbacksAndRun();
        }
        int eventType = accessibilityEvent.getEventType();
        if (eventType == 2048) {
            handleWindowContentChangedEvent(accessibilityEvent);
        } else if (eventType == 32768) {
            long sourceNodeId = accessibilityEvent.getSourceNodeId();
            View findViewByAccessibilityId = this.mView.findViewByAccessibilityId(AccessibilityNodeInfo.getAccessibilityViewId(sourceNodeId));
            if (findViewByAccessibilityId != null && (accessibilityNodeProvider = findViewByAccessibilityId.getAccessibilityNodeProvider()) != null) {
                setAccessibilityFocus(findViewByAccessibilityId, accessibilityNodeProvider.createAccessibilityNodeInfo(AccessibilityNodeInfo.getVirtualDescendantId(sourceNodeId)));
            }
        } else if (eventType == 65536) {
            View findViewByAccessibilityId2 = this.mView.findViewByAccessibilityId(AccessibilityNodeInfo.getAccessibilityViewId(accessibilityEvent.getSourceNodeId()));
            if (findViewByAccessibilityId2 != null && findViewByAccessibilityId2.getAccessibilityNodeProvider() != null) {
                setAccessibilityFocus(null, null);
            }
        }
        this.mAccessibilityManager.sendAccessibilityEvent(accessibilityEvent);
        return true;
    }

    private void handleWindowContentChangedEvent(AccessibilityEvent accessibilityEvent) {
        View view = this.mAccessibilityFocusedHost;
        if (view == null || this.mAccessibilityFocusedVirtualView == null) {
            return;
        }
        AccessibilityNodeProvider accessibilityNodeProvider = view.getAccessibilityNodeProvider();
        if (accessibilityNodeProvider == null) {
            this.mAccessibilityFocusedHost = null;
            this.mAccessibilityFocusedVirtualView = null;
            view.clearAccessibilityFocusNoCallbacks(0);
            return;
        }
        int contentChangeTypes = accessibilityEvent.getContentChangeTypes();
        if ((contentChangeTypes & 1) != 0 || contentChangeTypes == 0) {
            int accessibilityViewId = AccessibilityNodeInfo.getAccessibilityViewId(accessibilityEvent.getSourceNodeId());
            View view2 = this.mAccessibilityFocusedHost;
            boolean z = false;
            while (view2 != null && !z) {
                if (accessibilityViewId == view2.getAccessibilityViewId()) {
                    z = true;
                } else {
                    Object parent = view2.getParent();
                    view2 = parent instanceof View ? (View) parent : null;
                }
            }
            if (z) {
                int virtualDescendantId = AccessibilityNodeInfo.getVirtualDescendantId(this.mAccessibilityFocusedVirtualView.getSourceNodeId());
                Rect rect = this.mTempRect;
                this.mAccessibilityFocusedVirtualView.getBoundsInScreen(rect);
                this.mAccessibilityFocusedVirtualView = accessibilityNodeProvider.createAccessibilityNodeInfo(virtualDescendantId);
                if (this.mAccessibilityFocusedVirtualView == null) {
                    this.mAccessibilityFocusedHost = null;
                    view.clearAccessibilityFocusNoCallbacks(0);
                    accessibilityNodeProvider.performAction(virtualDescendantId, AccessibilityNodeInfo.AccessibilityAction.ACTION_CLEAR_ACCESSIBILITY_FOCUS.getId(), null);
                    invalidateRectOnScreen(rect);
                    return;
                }
                Rect boundsInScreen = this.mAccessibilityFocusedVirtualView.getBoundsInScreen();
                if (rect.equals(boundsInScreen)) {
                    return;
                }
                rect.union(boundsInScreen);
                invalidateRectOnScreen(rect);
            }
        }
    }

    @Override // android.view.ViewParent
    public void notifySubtreeAccessibilityStateChanged(View view, View view2, int i) {
        postSendWindowContentChangedCallback((View) Preconditions.checkNotNull(view2), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View getCommonPredecessor(View view, View view2) {
        if (this.mTempHashSet == null) {
            this.mTempHashSet = new HashSet<>();
        }
        HashSet<View> hashSet = this.mTempHashSet;
        hashSet.clear();
        while (view != null) {
            hashSet.add(view);
            Object obj = view.mParent;
            view = obj instanceof View ? (View) obj : null;
        }
        while (view2 != null) {
            if (hashSet.contains(view2)) {
                hashSet.clear();
                return view2;
            }
            Object obj2 = view2.mParent;
            view2 = obj2 instanceof View ? (View) obj2 : null;
        }
        hashSet.clear();
        return null;
    }

    void checkThread() {
        if (this.mThread != Thread.currentThread()) {
            throw new CalledFromWrongThreadException("Only the original thread that created a view hierarchy can touch its views.");
        }
    }

    @Override // android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        if (rect == null) {
            return scrollToRectOrFocus(null, z);
        }
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        boolean scrollToRectOrFocus = scrollToRectOrFocus(rect, z);
        this.mTempRect.set(rect);
        this.mTempRect.offset(0, -this.mCurScrollY);
        this.mTempRect.offset(this.mAttachInfo.mWindowLeft, this.mAttachInfo.mWindowTop);
        try {
            this.mWindowSession.onRectangleOnScreenRequested(this.mWindow, this.mTempRect);
        } catch (RemoteException unused) {
        }
        return scrollToRectOrFocus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportNextDraw() {
        if (!this.mReportNextDraw) {
            drawPending();
        }
        this.mReportNextDraw = true;
    }

    public void setReportNextDraw() {
        reportNextDraw();
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void changeCanvasOpacity(boolean z) {
        Log.d(this.mTag, "changeCanvasOpacity: opaque=" + z);
        if (this.mAttachInfo.mThreadedRenderer != null) {
            this.mAttachInfo.mThreadedRenderer.setOpaque(z);
        }
    }

    public boolean dispatchUnhandledKeyEvent(KeyEvent keyEvent) {
        return this.mUnhandledKeyManager.dispatch(this.mView, keyEvent);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    class TakenSurfaceHolder extends BaseSurfaceHolder {
        public void onRelayoutContainer() {
        }

        TakenSurfaceHolder() {
        }

        public boolean onAllowLockCanvas() {
            return ViewRootImpl.this.mDrawingAllowed;
        }

        public void setFormat(int i) {
            ViewRootImpl.this.mView.setSurfaceFormat(i);
        }

        public void setType(int i) {
            ViewRootImpl.this.mView.setSurfaceType(i);
        }

        public void onUpdateSurface() {
            throw new IllegalStateException("Shouldn't be here");
        }

        public boolean isCreating() {
            return ViewRootImpl.this.mIsCreating;
        }

        public void setFixedSize(int i, int i2) {
            throw new UnsupportedOperationException("Currently only support sizing from layout");
        }

        public void setKeepScreenOn(boolean z) {
            ViewRootImpl.this.mView.setSurfaceKeepScreenOn(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class W extends IWindow.Stub {
        private final WeakReference<ViewRootImpl> mViewAncestor;
        private final IWindowSession mWindowSession;

        W(ViewRootImpl viewRootImpl) {
            this.mViewAncestor = new WeakReference<>(viewRootImpl);
            this.mWindowSession = viewRootImpl.mWindowSession;
        }

        @Override // android.view.IWindow
        public void resized(Rect rect, Rect rect2, Rect rect3, Rect rect4, Rect rect5, Rect rect6, boolean z, MergedConfiguration mergedConfiguration, Rect rect7, boolean z2, boolean z3, int i, DisplayCutout.ParcelableWrapper parcelableWrapper) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchResized(rect, rect2, rect3, rect4, rect5, rect6, z, mergedConfiguration, rect7, z2, z3, i, parcelableWrapper);
            }
        }

        @Override // android.view.IWindow
        public void moved(int i, int i2) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchMoved(i, i2);
            }
        }

        @Override // android.view.IWindow
        public void dispatchAppVisibility(boolean z) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchAppVisibility(z);
            }
        }

        @Override // android.view.IWindow
        public void dispatchGetNewSurface() {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchGetNewSurface();
            }
        }

        @Override // android.view.IWindow
        public void windowFocusChanged(boolean z, boolean z2) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.windowFocusChanged(z, z2);
            }
        }

        private static int checkCallingPermission(String str) {
            try {
                return ActivityManager.getService().checkPermission(str, Binder.getCallingPid(), Binder.getCallingUid());
            } catch (RemoteException unused) {
                return -1;
            }
        }

        @Override // android.view.IWindow
        public void executeCommand(String str, String str2, ParcelFileDescriptor parcelFileDescriptor) {
            View view;
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl == null || (view = viewRootImpl.mView) == null) {
                return;
            }
            if (checkCallingPermission("android.permission.DUMP") != 0) {
                throw new SecurityException("Insufficient permissions to invoke executeCommand() from pid=" + Binder.getCallingPid() + ", uid=" + Binder.getCallingUid());
            }
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream2 = null;
            try {
                try {
                    try {
                        autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                ViewDebug.dispatchCommand(view, str, str2, autoCloseOutputStream);
                autoCloseOutputStream.close();
            } catch (IOException e3) {
                e = e3;
                autoCloseOutputStream2 = autoCloseOutputStream;
                e.printStackTrace();
                if (autoCloseOutputStream2 != null) {
                    autoCloseOutputStream2.close();
                }
            } catch (Throwable th2) {
                th = th2;
                autoCloseOutputStream2 = autoCloseOutputStream;
                if (autoCloseOutputStream2 != null) {
                    try {
                        autoCloseOutputStream2.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                throw th;
            }
        }

        @Override // android.view.IWindow
        public void closeSystemDialogs(String str) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchCloseSystemDialogs(str);
            }
        }

        @Override // android.view.IWindow
        public void dispatchWallpaperOffsets(float f, float f2, float f3, float f4, boolean z) {
            if (z) {
                try {
                    this.mWindowSession.wallpaperOffsetsComplete(asBinder());
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.IWindow
        public void dispatchWallpaperCommand(String str, int i, int i2, int i3, Bundle bundle, boolean z) {
            if (z) {
                try {
                    this.mWindowSession.wallpaperCommandComplete(asBinder(), null);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.IWindow
        public void dispatchDragEvent(DragEvent dragEvent) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchDragEvent(dragEvent);
            }
        }

        @Override // android.view.IWindow
        public void updatePointerIcon(float f, float f2) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.updatePointerIcon(f, f2);
            }
        }

        @Override // android.view.IWindow
        public void dispatchSystemUiVisibilityChanged(int i, int i2, int i3, int i4) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchSystemUiVisibilityChanged(i, i2, i3, i4);
            }
        }

        @Override // android.view.IWindow
        public void dispatchWindowShown() {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchWindowShown();
            }
        }

        @Override // android.view.IWindow
        public void requestAppKeyboardShortcuts(IResultReceiver iResultReceiver, int i) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchRequestKeyboardShortcuts(iResultReceiver, i);
            }
        }

        @Override // android.view.IWindow
        public void dispatchPointerCaptureChanged(boolean z) {
            ViewRootImpl viewRootImpl = this.mViewAncestor.get();
            if (viewRootImpl != null) {
                viewRootImpl.dispatchPointerCaptureChanged(z);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class CalledFromWrongThreadException extends AndroidRuntimeException {
        public CalledFromWrongThreadException(String str) {
            super(str);
        }
    }

    static HandlerActionQueue getRunQueue() {
        HandlerActionQueue handlerActionQueue = sRunQueues.get();
        if (handlerActionQueue != null) {
            return handlerActionQueue;
        }
        HandlerActionQueue handlerActionQueue2 = new HandlerActionQueue();
        sRunQueues.set(handlerActionQueue2);
        return handlerActionQueue2;
    }

    private void startDragResizing(Rect rect, boolean z, Rect rect2, Rect rect3, int i) {
        if (this.mDragResizing) {
            return;
        }
        this.mDragResizing = true;
        if (this.mUseMTRenderer) {
            for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
                this.mWindowCallbacks.get(size).onWindowDragResizeStart(rect, z, rect2, rect3, i);
            }
        }
        this.mFullRedrawNeeded = true;
    }

    private void endDragResizing() {
        if (this.mDragResizing) {
            this.mDragResizing = false;
            if (this.mUseMTRenderer) {
                for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
                    this.mWindowCallbacks.get(size).onWindowDragResizeEnd();
                }
            }
            this.mFullRedrawNeeded = true;
        }
    }

    private boolean updateContentDrawBounds() {
        boolean z;
        if (this.mUseMTRenderer) {
            z = false;
            for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
                z |= this.mWindowCallbacks.get(size).onContentDrawn(this.mWindowAttributes.surfaceInsets.left, this.mWindowAttributes.surfaceInsets.top, this.mWidth, this.mHeight);
            }
        } else {
            z = false;
        }
        return z | (this.mDragResizing && this.mReportNextDraw);
    }

    private void requestDrawWindow() {
        if (this.mUseMTRenderer) {
            this.mWindowDrawCountDown = new CountDownLatch(this.mWindowCallbacks.size());
            for (int size = this.mWindowCallbacks.size() - 1; size >= 0; size--) {
                this.mWindowCallbacks.get(size).onRequestDraw(this.mReportNextDraw);
            }
        }
    }

    public void reportActivityRelaunched() {
        this.mActivityRelaunched = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class AccessibilityInteractionConnectionManager implements AccessibilityManager.AccessibilityStateChangeListener {
        AccessibilityInteractionConnectionManager() {
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public void onAccessibilityStateChanged(boolean z) {
            if (z) {
                ensureConnection();
                if (!ViewRootImpl.this.mAttachInfo.mHasWindowFocus || ViewRootImpl.this.mView == null) {
                    return;
                }
                ViewRootImpl.this.mView.sendAccessibilityEvent(32);
                View findFocus = ViewRootImpl.this.mView.findFocus();
                if (findFocus == null || findFocus == ViewRootImpl.this.mView) {
                    return;
                }
                findFocus.sendAccessibilityEvent(8);
                return;
            }
            ensureNoConnection();
            ViewRootImpl.this.mHandler.obtainMessage(21).sendToTarget();
        }

        public void ensureConnection() {
            if (ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId != -1) {
                return;
            }
            ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId = ViewRootImpl.this.mAccessibilityManager.addAccessibilityInteractionConnection(ViewRootImpl.this.mWindow, ViewRootImpl.this.mContext.getPackageName(), new AccessibilityInteractionConnection(ViewRootImpl.this));
        }

        public void ensureNoConnection() {
            if (ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId != -1) {
                ViewRootImpl.this.mAttachInfo.mAccessibilityWindowId = -1;
                ViewRootImpl.this.mAccessibilityManager.removeAccessibilityInteractionConnection(ViewRootImpl.this.mWindow);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public final class HighContrastTextManager implements AccessibilityManager.HighTextContrastChangeListener {
        HighContrastTextManager() {
            ThreadedRenderer.setHighContrastText(ViewRootImpl.this.mAccessibilityManager.isHighTextContrastEnabled());
        }

        @Override // android.view.accessibility.AccessibilityManager.HighTextContrastChangeListener
        public void onHighTextContrastStateChanged(boolean z) {
            ThreadedRenderer.setHighContrastText(z);
            ViewRootImpl.this.destroyHardwareResources();
            ViewRootImpl.this.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class AccessibilityInteractionConnection extends IAccessibilityInteractionConnection.Stub {
        private final WeakReference<ViewRootImpl> mViewRootImpl;

        AccessibilityInteractionConnection(ViewRootImpl viewRootImpl) {
            this.mViewRootImpl = new WeakReference<>(viewRootImpl);
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfoByAccessibilityId(long j, Region region, int i, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i2, int i3, long j2, MagnificationSpec magnificationSpec, Bundle bundle) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfoByAccessibilityIdClientThread(j, region, i, iAccessibilityInteractionConnectionCallback, i2, i3, j2, magnificationSpec, bundle);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(null, i);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void performAccessibilityAction(long j, int i, Bundle bundle, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j2) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().performAccessibilityActionClientThread(j, i, bundle, i2, iAccessibilityInteractionConnectionCallback, i3, i4, j2);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setPerformAccessibilityActionResult(false, i2);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByViewId(long j, String str, Region region, int i, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i2, int i3, long j2, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByViewIdClientThread(j, str, region, i, iAccessibilityInteractionConnectionCallback, i2, i3, j2, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findAccessibilityNodeInfosByText(long j, String str, Region region, int i, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i2, int i3, long j2, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findAccessibilityNodeInfosByTextClientThread(j, str, region, i, iAccessibilityInteractionConnectionCallback, i2, i3, j2, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfosResult(null, i);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void findFocus(long j, int i, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j2, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().findFocusClientThread(j, i, region, i2, iAccessibilityInteractionConnectionCallback, i3, i4, j2, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i2);
                } catch (RemoteException unused) {
                }
            }
        }

        @Override // android.view.accessibility.IAccessibilityInteractionConnection
        public void focusSearch(long j, int i, Region region, int i2, IAccessibilityInteractionConnectionCallback iAccessibilityInteractionConnectionCallback, int i3, int i4, long j2, MagnificationSpec magnificationSpec) {
            ViewRootImpl viewRootImpl = this.mViewRootImpl.get();
            if (viewRootImpl != null && viewRootImpl.mView != null) {
                viewRootImpl.getAccessibilityInteractionController().focusSearchClientThread(j, i, region, i2, iAccessibilityInteractionConnectionCallback, i3, i4, j2, magnificationSpec);
            } else {
                try {
                    iAccessibilityInteractionConnectionCallback.setFindAccessibilityNodeInfoResult(null, i2);
                } catch (RemoteException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class SendWindowContentChangedAccessibilityEvent implements Runnable {
        private int mChangeTypes;
        public long mLastEventTimeMillis;
        public StackTraceElement[] mOrigin;
        public View mSource;

        private SendWindowContentChangedAccessibilityEvent() {
            this.mChangeTypes = 0;
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = this.mSource;
            this.mSource = null;
            if (view == null) {
                Log.e(ViewRootImpl.TAG, "Accessibility content change has no source");
                return;
            }
            if (AccessibilityManager.getInstance(ViewRootImpl.this.mContext).isEnabled()) {
                this.mLastEventTimeMillis = SystemClock.uptimeMillis();
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(2048);
                obtain.setContentChangeTypes(this.mChangeTypes);
                view.sendAccessibilityEventUnchecked(obtain);
            } else {
                this.mLastEventTimeMillis = 0L;
            }
            view.resetSubtreeAccessibilityStateChanged();
            this.mChangeTypes = 0;
        }

        public void runOrPost(View view, int i) {
            if (ViewRootImpl.this.mHandler.getLooper() != Looper.myLooper()) {
                Log.e(ViewRootImpl.TAG, "Accessibility content change on non-UI thread. Future Android versions will throw an exception.", new CalledFromWrongThreadException("Only the original thread that created a view hierarchy can touch its views."));
                ViewRootImpl.this.mHandler.removeCallbacks(this);
                if (this.mSource != null) {
                    run();
                }
            }
            if (this.mSource != null) {
                View commonPredecessor = ViewRootImpl.this.getCommonPredecessor(this.mSource, view);
                if (commonPredecessor != null) {
                    commonPredecessor = commonPredecessor.getSelfOrParentImportantForA11y();
                }
                if (commonPredecessor != null) {
                    view = commonPredecessor;
                }
                this.mSource = view;
                this.mChangeTypes |= i;
                return;
            }
            this.mSource = view;
            this.mChangeTypes = i;
            long uptimeMillis = SystemClock.uptimeMillis() - this.mLastEventTimeMillis;
            long sendRecurringAccessibilityEventsInterval = ViewConfiguration.getSendRecurringAccessibilityEventsInterval();
            if (uptimeMillis >= sendRecurringAccessibilityEventsInterval) {
                removeCallbacksAndRun();
            } else {
                ViewRootImpl.this.mHandler.postDelayed(this, sendRecurringAccessibilityEventsInterval - uptimeMillis);
            }
        }

        public void removeCallbacksAndRun() {
            ViewRootImpl.this.mHandler.removeCallbacks(this);
            run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class UnhandledKeyManager {
        private final SparseArray<WeakReference<View>> mCapturedKeys;
        private WeakReference<View> mCurrentReceiver;
        private boolean mDispatched;

        private UnhandledKeyManager() {
            this.mDispatched = true;
            this.mCapturedKeys = new SparseArray<>();
            this.mCurrentReceiver = null;
        }

        boolean dispatch(View view, KeyEvent keyEvent) {
            if (this.mDispatched) {
                return false;
            }
            try {
                Trace.traceBegin(8L, "UnhandledKeyEvent dispatch");
                this.mDispatched = true;
                View dispatchUnhandledKeyEvent = view.dispatchUnhandledKeyEvent(keyEvent);
                if (keyEvent.getAction() == 0) {
                    int keyCode = keyEvent.getKeyCode();
                    if (dispatchUnhandledKeyEvent != null && !KeyEvent.isModifierKey(keyCode)) {
                        this.mCapturedKeys.put(keyCode, new WeakReference<>(dispatchUnhandledKeyEvent));
                    }
                }
                return dispatchUnhandledKeyEvent != null;
            } finally {
                Trace.traceEnd(8L);
            }
        }

        void preDispatch(KeyEvent keyEvent) {
            int indexOfKey;
            this.mCurrentReceiver = null;
            if (keyEvent.getAction() != 1 || (indexOfKey = this.mCapturedKeys.indexOfKey(keyEvent.getKeyCode())) < 0) {
                return;
            }
            this.mCurrentReceiver = this.mCapturedKeys.valueAt(indexOfKey);
            this.mCapturedKeys.removeAt(indexOfKey);
        }

        boolean preViewDispatch(KeyEvent keyEvent) {
            this.mDispatched = false;
            if (this.mCurrentReceiver == null) {
                this.mCurrentReceiver = this.mCapturedKeys.get(keyEvent.getKeyCode());
            }
            if (this.mCurrentReceiver == null) {
                return false;
            }
            View view = this.mCurrentReceiver.get();
            if (keyEvent.getAction() == 1) {
                this.mCurrentReceiver = null;
            }
            if (view != null && view.isAttachedToWindow()) {
                view.onUnhandledKeyEvent(keyEvent);
            }
            return true;
        }
    }
}
