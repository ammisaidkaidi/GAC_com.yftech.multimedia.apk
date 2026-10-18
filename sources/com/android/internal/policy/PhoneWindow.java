package com.android.internal.policy;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.SearchManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionInflater;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.AndroidRuntimeException;
import android.util.EventLog;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.IRotationWatcher;
import android.view.IWindowManager;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.InputQueue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewRootImpl;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.internal.R;
import com.android.internal.os.PowerProfile;
import com.android.internal.view.menu.ContextMenuBuilder;
import com.android.internal.view.menu.IconMenuPresenter;
import com.android.internal.view.menu.ListMenuPresenter;
import com.android.internal.view.menu.MenuBuilder;
import com.android.internal.view.menu.MenuDialogHelper;
import com.android.internal.view.menu.MenuHelper;
import com.android.internal.view.menu.MenuPresenter;
import com.android.internal.view.menu.MenuView;
import com.android.internal.widget.DecorContentParent;
import com.android.internal.widget.SwipeDismissLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PhoneWindow extends Window implements MenuBuilder.Callback {
    private static final String ACTION_BAR_TAG = "android:ActionBar";
    private static final int CUSTOM_TITLE_COMPATIBLE_FEATURES = 13505;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_BACKGROUND_FADE_DURATION_MS = 300;
    static final int FLAG_RESOURCE_SET_ICON = 1;
    static final int FLAG_RESOURCE_SET_ICON_FALLBACK = 4;
    static final int FLAG_RESOURCE_SET_LOGO = 2;
    private static final String FOCUSED_ID_TAG = "android:focusedViewId";
    private static final String PANELS_TAG = "android:Panels";
    private static final String TAG = "PhoneWindow";
    private static final String VIEWS_TAG = "android:views";
    private ActionMenuPresenterCallback mActionMenuPresenterCallback;
    private ViewRootImpl.ActivityConfigCallback mActivityConfigCallback;
    private Boolean mAllowEnterTransitionOverlap;
    private Boolean mAllowReturnTransitionOverlap;
    private boolean mAlwaysReadCloseOnTouchAttr;
    private AudioManager mAudioManager;
    private Drawable mBackgroundDrawable;
    private long mBackgroundFadeDurationMillis;
    int mBackgroundFallbackResource;
    int mBackgroundResource;
    private ProgressBar mCircularProgressBar;
    private boolean mClipToOutline;
    private boolean mClosingActionMenu;
    ViewGroup mContentParent;
    private boolean mContentParentExplicitlySet;
    private Scene mContentScene;
    ContextMenuBuilder mContextMenu;
    final PhoneWindowMenuCallback mContextMenuCallback;
    MenuHelper mContextMenuHelper;
    private DecorView mDecor;
    private int mDecorCaptionShade;
    DecorContentParent mDecorContentParent;
    private DrawableFeatureState[] mDrawables;
    private float mElevation;
    private Transition mEnterTransition;
    private Transition mExitTransition;
    TypedValue mFixedHeightMajor;
    TypedValue mFixedHeightMinor;
    TypedValue mFixedWidthMajor;
    TypedValue mFixedWidthMinor;
    private boolean mForceDecorInstall;
    private boolean mForcedNavigationBarColor;
    private boolean mForcedStatusBarColor;
    private int mFrameResource;
    private ProgressBar mHorizontalProgressBar;
    int mIconRes;
    private int mInvalidatePanelMenuFeatures;
    private boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable;
    boolean mIsFloating;
    private boolean mIsStartingWindow;
    private boolean mIsTranslucent;
    private KeyguardManager mKeyguardManager;
    private LayoutInflater mLayoutInflater;
    private ImageView mLeftIconView;
    private boolean mLoadElevation;
    int mLogoRes;
    private MediaController mMediaController;
    private MediaSessionManager mMediaSessionManager;
    final TypedValue mMinWidthMajor;
    final TypedValue mMinWidthMinor;
    int mNavigationBarColor;
    int mNavigationBarDividerColor;
    int mPanelChordingKey;
    private PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private PanelFeatureState[] mPanels;
    PanelFeatureState mPreparedPanel;
    private Transition mReenterTransition;
    int mResourcesSetFlags;
    private Transition mReturnTransition;
    private ImageView mRightIconView;
    private Transition mSharedElementEnterTransition;
    private Transition mSharedElementExitTransition;
    private Transition mSharedElementReenterTransition;
    private Transition mSharedElementReturnTransition;
    private Boolean mSharedElementsUseOverlay;
    int mStatusBarColor;
    private boolean mSupportsPictureInPicture;
    InputQueue.Callback mTakeInputQueueCallback;
    SurfaceHolder.Callback2 mTakeSurfaceCallback;
    private int mTextColor;
    private int mTheme;
    private CharSequence mTitle;
    private int mTitleColor;
    private TextView mTitleView;
    private TransitionManager mTransitionManager;
    private int mUiOptions;
    private boolean mUseDecorContext;
    private int mVolumeControlStreamType;
    private static final Transition USE_DEFAULT_TRANSITION = new TransitionSet();
    static final RotationWatcher sRotationWatcher = new RotationWatcher();

    @Override // android.view.Window
    protected void onActive() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class WindowManagerHolder {
        static final IWindowManager sWindowManager = IWindowManager.Stub.asInterface(ServiceManager.getService("window"));

        WindowManagerHolder() {
        }
    }

    public PhoneWindow(Context context) {
        super(context);
        this.mContextMenuCallback = new PhoneWindowMenuCallback(this);
        this.mMinWidthMajor = new TypedValue();
        this.mMinWidthMinor = new TypedValue();
        this.mForceDecorInstall = false;
        this.mContentParentExplicitlySet = false;
        this.mBackgroundResource = 0;
        this.mBackgroundFallbackResource = 0;
        this.mLoadElevation = true;
        this.mFrameResource = 0;
        this.mTextColor = 0;
        this.mStatusBarColor = 0;
        this.mNavigationBarColor = 0;
        this.mNavigationBarDividerColor = 0;
        this.mForcedStatusBarColor = false;
        this.mForcedNavigationBarColor = false;
        this.mTitle = null;
        this.mTitleColor = 0;
        this.mAlwaysReadCloseOnTouchAttr = false;
        this.mVolumeControlStreamType = Integer.MIN_VALUE;
        this.mUiOptions = 0;
        this.mInvalidatePanelMenuRunnable = new Runnable() { // from class: com.android.internal.policy.PhoneWindow.1
            @Override // java.lang.Runnable
            public void run() {
                for (int i = 0; i <= 13; i++) {
                    if ((PhoneWindow.this.mInvalidatePanelMenuFeatures & (1 << i)) != 0) {
                        PhoneWindow.this.doInvalidatePanelMenu(i);
                    }
                }
                PhoneWindow.this.mInvalidatePanelMenuPosted = false;
                PhoneWindow.this.mInvalidatePanelMenuFeatures = 0;
            }
        };
        this.mEnterTransition = null;
        this.mReturnTransition = USE_DEFAULT_TRANSITION;
        this.mExitTransition = null;
        this.mReenterTransition = USE_DEFAULT_TRANSITION;
        this.mSharedElementEnterTransition = null;
        this.mSharedElementReturnTransition = USE_DEFAULT_TRANSITION;
        this.mSharedElementExitTransition = null;
        this.mSharedElementReenterTransition = USE_DEFAULT_TRANSITION;
        this.mBackgroundFadeDurationMillis = -1L;
        this.mTheme = -1;
        this.mDecorCaptionShade = 0;
        this.mUseDecorContext = false;
        this.mLayoutInflater = LayoutInflater.from(context);
    }

    public PhoneWindow(Context context, Window window, ViewRootImpl.ActivityConfigCallback activityConfigCallback) {
        this(context);
        boolean z = true;
        this.mUseDecorContext = true;
        if (window != null) {
            this.mDecor = (DecorView) window.getDecorView();
            this.mElevation = window.getElevation();
            this.mLoadElevation = false;
            this.mForceDecorInstall = true;
            getAttributes().token = window.getAttributes().token;
        }
        if (!(Settings.Global.getInt(context.getContentResolver(), "force_resizable_activities", 0) != 0) && !context.getPackageManager().hasSystemFeature("android.software.picture_in_picture")) {
            z = false;
        }
        this.mSupportsPictureInPicture = z;
        this.mActivityConfigCallback = activityConfigCallback;
    }

    @Override // android.view.Window
    public final void setContainer(Window window) {
        super.setContainer(window);
    }

    @Override // android.view.Window
    public boolean requestFeature(int i) {
        if (this.mContentParentExplicitlySet) {
            throw new AndroidRuntimeException("requestFeature() must be called before adding content");
        }
        int features = getFeatures();
        int i2 = (1 << i) | features;
        if ((i2 & 128) != 0 && (i2 & (-13506)) != 0) {
            throw new AndroidRuntimeException("You cannot combine custom titles with other title features");
        }
        if ((features & 2) != 0 && i == 8) {
            return false;
        }
        int i3 = features & 256;
        if (i3 != 0 && i == 1) {
            removeFeature(8);
        }
        if (i3 != 0 && i == 11) {
            throw new AndroidRuntimeException("You cannot combine swipe dismissal and the action bar.");
        }
        if ((features & 2048) != 0 && i == 8) {
            throw new AndroidRuntimeException("You cannot combine swipe dismissal and the action bar.");
        }
        if (i == 5 && getContext().getPackageManager().hasSystemFeature("android.hardware.type.watch")) {
            throw new AndroidRuntimeException("You cannot use indeterminate progress on a watch.");
        }
        return super.requestFeature(i);
    }

    @Override // android.view.Window
    public void setUiOptions(int i) {
        this.mUiOptions = i;
    }

    @Override // android.view.Window
    public void setUiOptions(int i, int i2) {
        this.mUiOptions = (i & i2) | (this.mUiOptions & (~i2));
    }

    @Override // android.view.Window
    public TransitionManager getTransitionManager() {
        return this.mTransitionManager;
    }

    @Override // android.view.Window
    public void setTransitionManager(TransitionManager transitionManager) {
        this.mTransitionManager = transitionManager;
    }

    @Override // android.view.Window
    public Scene getContentScene() {
        return this.mContentScene;
    }

    @Override // android.view.Window
    public void setContentView(int i) {
        if (this.mContentParent == null) {
            installDecor();
        } else if (!hasFeature(12)) {
            this.mContentParent.removeAllViews();
        }
        if (hasFeature(12)) {
            transitionTo(Scene.getSceneForLayout(this.mContentParent, i, getContext()));
        } else {
            this.mLayoutInflater.inflate(i, this.mContentParent);
        }
        this.mContentParent.requestApplyInsets();
        Window.Callback callback = getCallback();
        if (callback != null && !isDestroyed()) {
            callback.onContentChanged();
        }
        this.mContentParentExplicitlySet = true;
    }

    @Override // android.view.Window
    public void setContentView(View view) {
        setContentView(view, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // android.view.Window
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        if (this.mContentParent == null) {
            installDecor();
        } else if (!hasFeature(12)) {
            this.mContentParent.removeAllViews();
        }
        if (hasFeature(12)) {
            view.setLayoutParams(layoutParams);
            transitionTo(new Scene(this.mContentParent, view));
        } else {
            this.mContentParent.addView(view, layoutParams);
        }
        this.mContentParent.requestApplyInsets();
        Window.Callback callback = getCallback();
        if (callback != null && !isDestroyed()) {
            callback.onContentChanged();
        }
        this.mContentParentExplicitlySet = true;
    }

    @Override // android.view.Window
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        if (this.mContentParent == null) {
            installDecor();
        }
        if (hasFeature(12)) {
            Log.v(TAG, "addContentView does not support content transitions");
        }
        this.mContentParent.addView(view, layoutParams);
        this.mContentParent.requestApplyInsets();
        Window.Callback callback = getCallback();
        if (callback == null || isDestroyed()) {
            return;
        }
        callback.onContentChanged();
    }

    public void clearContentView() {
        if (this.mDecor != null) {
            this.mDecor.clearContentView();
        }
    }

    private void transitionTo(Scene scene) {
        if (this.mContentScene == null) {
            scene.enter();
        } else {
            this.mTransitionManager.transitionTo(scene);
        }
        this.mContentScene = scene;
    }

    @Override // android.view.Window
    public View getCurrentFocus() {
        if (this.mDecor != null) {
            return this.mDecor.findFocus();
        }
        return null;
    }

    @Override // android.view.Window
    public void takeSurface(SurfaceHolder.Callback2 callback2) {
        this.mTakeSurfaceCallback = callback2;
    }

    @Override // android.view.Window
    public void takeInputQueue(InputQueue.Callback callback) {
        this.mTakeInputQueueCallback = callback;
    }

    @Override // android.view.Window
    public boolean isFloating() {
        return this.mIsFloating;
    }

    public boolean isTranslucent() {
        return this.mIsTranslucent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isShowingWallpaper() {
        return (getAttributes().flags & 1048576) != 0;
    }

    @Override // android.view.Window
    public LayoutInflater getLayoutInflater() {
        return this.mLayoutInflater;
    }

    @Override // android.view.Window
    public void setTitle(CharSequence charSequence) {
        setTitle(charSequence, true);
    }

    public void setTitle(CharSequence charSequence, boolean z) {
        ViewRootImpl viewRootImpl;
        if (this.mTitleView != null) {
            this.mTitleView.setText(charSequence);
        } else if (this.mDecorContentParent != null) {
            this.mDecorContentParent.setWindowTitle(charSequence);
        }
        this.mTitle = charSequence;
        if (z) {
            WindowManager.LayoutParams attributes = getAttributes();
            if (TextUtils.equals(charSequence, attributes.accessibilityTitle)) {
                return;
            }
            attributes.accessibilityTitle = TextUtils.stringOrSpannedString(charSequence);
            if (this.mDecor != null && (viewRootImpl = this.mDecor.getViewRootImpl()) != null) {
                viewRootImpl.onWindowTitleChanged();
            }
            dispatchWindowAttributesChanged(getAttributes());
        }
    }

    @Override // android.view.Window
    @Deprecated
    public void setTitleColor(int i) {
        if (this.mTitleView != null) {
            this.mTitleView.setTextColor(i);
        }
        this.mTitleColor = i;
    }

    public final boolean preparePanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        if (isDestroyed()) {
            return false;
        }
        if (panelFeatureState.isPrepared) {
            return true;
        }
        if (this.mPreparedPanel != null && this.mPreparedPanel != panelFeatureState) {
            closePanel(this.mPreparedPanel, false);
        }
        Window.Callback callback = getCallback();
        if (callback != null) {
            panelFeatureState.createdPanelView = callback.onCreatePanelView(panelFeatureState.featureId);
        }
        boolean z = panelFeatureState.featureId == 0 || panelFeatureState.featureId == 8;
        if (z && this.mDecorContentParent != null) {
            this.mDecorContentParent.setMenuPrepared();
        }
        if (panelFeatureState.createdPanelView == null) {
            if (panelFeatureState.menu == null || panelFeatureState.refreshMenuContent) {
                if (panelFeatureState.menu == null && (!initializePanelMenu(panelFeatureState) || panelFeatureState.menu == null)) {
                    return false;
                }
                if (z && this.mDecorContentParent != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
                    }
                    this.mDecorContentParent.setMenu(panelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.stopDispatchingItemsChanged();
                if (callback == null || !callback.onCreatePanelMenu(panelFeatureState.featureId, panelFeatureState.menu)) {
                    panelFeatureState.setMenu(null);
                    if (z && this.mDecorContentParent != null) {
                        this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                    }
                    return false;
                }
                panelFeatureState.refreshMenuContent = false;
            }
            panelFeatureState.menu.stopDispatchingItemsChanged();
            if (panelFeatureState.frozenActionViewState != null) {
                panelFeatureState.menu.restoreActionViewStates(panelFeatureState.frozenActionViewState);
                panelFeatureState.frozenActionViewState = null;
            }
            if (!callback.onPreparePanel(panelFeatureState.featureId, panelFeatureState.createdPanelView, panelFeatureState.menu)) {
                if (z && this.mDecorContentParent != null) {
                    this.mDecorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.startDispatchingItemsChanged();
                return false;
            }
            panelFeatureState.qwertyMode = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.menu.setQwertyMode(panelFeatureState.qwertyMode);
            panelFeatureState.menu.startDispatchingItemsChanged();
        }
        panelFeatureState.isPrepared = true;
        panelFeatureState.isHandled = false;
        this.mPreparedPanel = panelFeatureState;
        return true;
    }

    @Override // android.view.Window
    public void onConfigurationChanged(Configuration configuration) {
        PanelFeatureState panelState;
        if (this.mDecorContentParent != null || (panelState = getPanelState(0, false)) == null || panelState.menu == null) {
            return;
        }
        if (panelState.isOpen) {
            Bundle bundle = new Bundle();
            if (panelState.iconMenuPresenter != null) {
                panelState.iconMenuPresenter.saveHierarchyState(bundle);
            }
            if (panelState.listMenuPresenter != null) {
                panelState.listMenuPresenter.saveHierarchyState(bundle);
            }
            clearMenuViews(panelState);
            reopenMenu(false);
            if (panelState.iconMenuPresenter != null) {
                panelState.iconMenuPresenter.restoreHierarchyState(bundle);
            }
            if (panelState.listMenuPresenter != null) {
                panelState.listMenuPresenter.restoreHierarchyState(bundle);
                return;
            }
            return;
        }
        clearMenuViews(panelState);
    }

    public void onMultiWindowModeChanged() {
        if (this.mDecor != null) {
            this.mDecor.onConfigurationChanged(getContext().getResources().getConfiguration());
        }
    }

    public void onPictureInPictureModeChanged(boolean z) {
        if (this.mDecor != null) {
            this.mDecor.updatePictureInPictureOutlineProvider(z);
        }
    }

    public void reportActivityRelaunched() {
        if (this.mDecor == null || this.mDecor.getViewRootImpl() == null) {
            return;
        }
        this.mDecor.getViewRootImpl().reportActivityRelaunched();
    }

    private static void clearMenuViews(PanelFeatureState panelFeatureState) {
        panelFeatureState.createdPanelView = null;
        panelFeatureState.refreshDecorView = true;
        panelFeatureState.clearMenuPresenters();
    }

    @Override // android.view.Window
    public final void openPanel(int i, KeyEvent keyEvent) {
        if (i == 0 && this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && !ViewConfiguration.get(getContext()).hasPermanentMenuKey()) {
            this.mDecorContentParent.showOverflowMenu();
        } else {
            openPanel(getPanelState(i, true), keyEvent);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void openPanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i;
        int i2;
        ViewGroup.LayoutParams layoutParams;
        if (panelFeatureState.isOpen || isDestroyed()) {
            return;
        }
        if (panelFeatureState.featureId == 0) {
            Context context = getContext();
            boolean z = (context.getResources().getConfiguration().screenLayout & 15) == 4;
            boolean z2 = context.getApplicationInfo().targetSdkVersion >= 11;
            if (z && z2) {
                return;
            }
        }
        Window.Callback callback = getCallback();
        if (callback != null && !callback.onMenuOpened(panelFeatureState.featureId, panelFeatureState.menu)) {
            closePanel(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = getWindowManager();
        if (windowManager != null && preparePanel(panelFeatureState, keyEvent)) {
            int i3 = -1;
            if (panelFeatureState.decorView == null || panelFeatureState.refreshDecorView) {
                if (panelFeatureState.decorView == null) {
                    if (!initializePanelDecor(panelFeatureState) || panelFeatureState.decorView == null) {
                        return;
                    }
                } else if (panelFeatureState.refreshDecorView && panelFeatureState.decorView.getChildCount() > 0) {
                    panelFeatureState.decorView.removeAllViews();
                }
                if (!initializePanelContent(panelFeatureState) || !panelFeatureState.hasPanelItems()) {
                    return;
                }
                ViewGroup.LayoutParams layoutParams2 = panelFeatureState.shownPanelView.getLayoutParams();
                if (layoutParams2 == null) {
                    layoutParams2 = new ViewGroup.LayoutParams(-2, -2);
                }
                if (layoutParams2.width == -1) {
                    i = panelFeatureState.fullBackground;
                } else {
                    i3 = -2;
                    i = panelFeatureState.background;
                }
                panelFeatureState.decorView.setWindowBackground(getContext().getDrawable(i));
                ViewParent parent = panelFeatureState.shownPanelView.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(panelFeatureState.shownPanelView);
                }
                panelFeatureState.decorView.addView(panelFeatureState.shownPanelView, layoutParams2);
                if (!panelFeatureState.shownPanelView.hasFocus()) {
                    panelFeatureState.shownPanelView.requestFocus();
                }
            } else if (panelFeatureState.isInListMode() && (panelFeatureState.createdPanelView == null || (layoutParams = panelFeatureState.createdPanelView.getLayoutParams()) == null || layoutParams.width != -1)) {
                i2 = -2;
                panelFeatureState.isHandled = false;
                WindowManager.LayoutParams layoutParams3 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.x, panelFeatureState.y, 1003, 8519680, panelFeatureState.decorView.mDefaultOpacity);
                if (!panelFeatureState.isCompact) {
                    layoutParams3.gravity = getOptionsPanelGravity();
                    sRotationWatcher.addWindow(this);
                } else {
                    layoutParams3.gravity = panelFeatureState.gravity;
                }
                layoutParams3.windowAnimations = panelFeatureState.windowAnimations;
                windowManager.addView(panelFeatureState.decorView, layoutParams3);
                panelFeatureState.isOpen = true;
            }
            i2 = i3;
            panelFeatureState.isHandled = false;
            WindowManager.LayoutParams layoutParams32 = new WindowManager.LayoutParams(i2, -2, panelFeatureState.x, panelFeatureState.y, 1003, 8519680, panelFeatureState.decorView.mDefaultOpacity);
            if (!panelFeatureState.isCompact) {
            }
            layoutParams32.windowAnimations = panelFeatureState.windowAnimations;
            windowManager.addView(panelFeatureState.decorView, layoutParams32);
            panelFeatureState.isOpen = true;
        }
    }

    @Override // android.view.Window
    public final void closePanel(int i) {
        if (i == 0 && this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && !ViewConfiguration.get(getContext()).hasPermanentMenuKey()) {
            this.mDecorContentParent.hideOverflowMenu();
        } else if (i == 6) {
            closeContextMenu();
        } else {
            closePanel(getPanelState(i, true), true);
        }
    }

    public final void closePanel(PanelFeatureState panelFeatureState, boolean z) {
        if (z && panelFeatureState.featureId == 0 && this.mDecorContentParent != null && this.mDecorContentParent.isOverflowMenuShowing()) {
            checkCloseActionMenu(panelFeatureState.menu);
            return;
        }
        WindowManager windowManager = getWindowManager();
        if (windowManager != null && panelFeatureState.isOpen) {
            if (panelFeatureState.decorView != null) {
                windowManager.removeView(panelFeatureState.decorView);
                if (panelFeatureState.isCompact) {
                    sRotationWatcher.removeWindow(this);
                }
            }
            if (z) {
                callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, null);
            }
        }
        panelFeatureState.isPrepared = false;
        panelFeatureState.isHandled = false;
        panelFeatureState.isOpen = false;
        panelFeatureState.shownPanelView = null;
        if (panelFeatureState.isInExpandedMode) {
            panelFeatureState.refreshDecorView = true;
            panelFeatureState.isInExpandedMode = false;
        }
        if (this.mPreparedPanel == panelFeatureState) {
            this.mPreparedPanel = null;
            this.mPanelChordingKey = 0;
        }
    }

    void checkCloseActionMenu(Menu menu) {
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        this.mDecorContentParent.dismissPopups();
        Window.Callback callback = getCallback();
        if (callback != null && !isDestroyed()) {
            callback.onPanelClosed(8, menu);
        }
        this.mClosingActionMenu = false;
    }

    @Override // android.view.Window
    public final void togglePanel(int i, KeyEvent keyEvent) {
        PanelFeatureState panelState = getPanelState(i, true);
        if (panelState.isOpen) {
            closePanel(panelState, true);
        } else {
            openPanel(panelState, keyEvent);
        }
    }

    @Override // android.view.Window
    public void invalidatePanelMenu(int i) {
        this.mInvalidatePanelMenuFeatures = (1 << i) | this.mInvalidatePanelMenuFeatures;
        if (this.mInvalidatePanelMenuPosted || this.mDecor == null) {
            return;
        }
        this.mDecor.postOnAnimation(this.mInvalidatePanelMenuRunnable);
        this.mInvalidatePanelMenuPosted = true;
    }

    void doPendingInvalidatePanelMenu() {
        if (this.mInvalidatePanelMenuPosted) {
            this.mDecor.removeCallbacks(this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuRunnable.run();
        }
    }

    void doInvalidatePanelMenu(int i) {
        PanelFeatureState panelState;
        PanelFeatureState panelState2 = getPanelState(i, false);
        if (panelState2 == null) {
            return;
        }
        if (panelState2.menu != null) {
            Bundle bundle = new Bundle();
            panelState2.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState2.frozenActionViewState = bundle;
            }
            panelState2.menu.stopDispatchingItemsChanged();
            panelState2.menu.clear();
        }
        panelState2.refreshMenuContent = true;
        panelState2.refreshDecorView = true;
        if ((i != 8 && i != 0) || this.mDecorContentParent == null || (panelState = getPanelState(0, false)) == null) {
            return;
        }
        panelState.isPrepared = false;
        preparePanel(panelState, null);
    }

    public final boolean onKeyDownPanel(int i, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getRepeatCount() == 0) {
            this.mPanelChordingKey = keyCode;
            PanelFeatureState panelState = getPanelState(i, false);
            if (panelState != null && !panelState.isOpen) {
                return preparePanel(panelState, keyEvent);
            }
        }
        return false;
    }

    public final void onKeyUpPanel(int i, KeyEvent keyEvent) {
        boolean z;
        boolean z2;
        if (this.mPanelChordingKey != 0) {
            this.mPanelChordingKey = 0;
            PanelFeatureState panelState = getPanelState(i, false);
            if (keyEvent.isCanceled()) {
                return;
            }
            if ((this.mDecor == null || this.mDecor.mPrimaryActionMode == null) && panelState != null) {
                if (i == 0 && this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && !ViewConfiguration.get(getContext()).hasPermanentMenuKey()) {
                    if (!this.mDecorContentParent.isOverflowMenuShowing()) {
                        if (!isDestroyed() && preparePanel(panelState, keyEvent)) {
                            z = this.mDecorContentParent.showOverflowMenu();
                        }
                        z = false;
                    } else {
                        z = this.mDecorContentParent.hideOverflowMenu();
                    }
                } else if (panelState.isOpen || panelState.isHandled) {
                    z = panelState.isOpen;
                    closePanel(panelState, true);
                } else {
                    if (panelState.isPrepared) {
                        if (panelState.refreshMenuContent) {
                            panelState.isPrepared = false;
                            z2 = preparePanel(panelState, keyEvent);
                        } else {
                            z2 = true;
                        }
                        if (z2) {
                            EventLog.writeEvent(50001, 0);
                            openPanel(panelState, keyEvent);
                            z = true;
                        }
                    }
                    z = false;
                }
                if (z) {
                    AudioManager audioManager = (AudioManager) getContext().getSystemService(PowerProfile.POWER_AUDIO);
                    if (audioManager != null) {
                        audioManager.playSoundEffect(0);
                    } else {
                        Log.w(TAG, "Couldn't get audio manager");
                    }
                }
            }
        }
    }

    @Override // android.view.Window
    public final void closeAllPanels() {
        if (getWindowManager() == null) {
            return;
        }
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null) {
                closePanel(panelFeatureState, true);
            }
        }
        closeContextMenu();
    }

    private synchronized void closeContextMenu() {
        if (this.mContextMenu != null) {
            this.mContextMenu.close();
            dismissContextMenu();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void dismissContextMenu() {
        this.mContextMenu = null;
        if (this.mContextMenuHelper != null) {
            this.mContextMenuHelper.dismiss();
            this.mContextMenuHelper = null;
        }
    }

    @Override // android.view.Window
    public boolean performPanelShortcut(int i, int i2, KeyEvent keyEvent, int i3) {
        return performPanelShortcut(getPanelState(i, false), i2, keyEvent, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean performPanelShortcut(PanelFeatureState panelFeatureState, int i, KeyEvent keyEvent, int i2) {
        boolean z = false;
        if (keyEvent.isSystem() || panelFeatureState == null) {
            return false;
        }
        if ((panelFeatureState.isPrepared || preparePanel(panelFeatureState, keyEvent)) && panelFeatureState.menu != null) {
            z = panelFeatureState.menu.performShortcut(i, keyEvent, i2);
        }
        if (z) {
            panelFeatureState.isHandled = true;
            if ((i2 & 1) == 0 && this.mDecorContentParent == null) {
                closePanel(panelFeatureState, true);
            }
        }
        return z;
    }

    @Override // android.view.Window
    public boolean performPanelIdentifierAction(int i, int i2, int i3) {
        PanelFeatureState panelState = getPanelState(i, true);
        if (!preparePanel(panelState, new KeyEvent(0, 82)) || panelState.menu == null) {
            return false;
        }
        boolean performIdentifierAction = panelState.menu.performIdentifierAction(i2, i3);
        if (this.mDecorContentParent == null) {
            closePanel(panelState, true);
        }
        return performIdentifierAction;
    }

    public PanelFeatureState findMenuPanel(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i = 0; i < length; i++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i];
            if (panelFeatureState != null && panelFeatureState.menu == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    @Override // com.android.internal.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        PanelFeatureState findMenuPanel;
        Window.Callback callback = getCallback();
        if (callback == null || isDestroyed() || (findMenuPanel = findMenuPanel(menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return callback.onMenuItemSelected(findMenuPanel.featureId, menuItem);
    }

    @Override // com.android.internal.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        reopenMenu(true);
    }

    private void reopenMenu(boolean z) {
        boolean z2;
        if (this.mDecorContentParent != null && this.mDecorContentParent.canShowOverflowMenu() && (!ViewConfiguration.get(getContext()).hasPermanentMenuKey() || this.mDecorContentParent.isOverflowMenuShowPending())) {
            Window.Callback callback = getCallback();
            if (!this.mDecorContentParent.isOverflowMenuShowing() || !z) {
                if (callback == null || isDestroyed()) {
                    return;
                }
                if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 1) != 0) {
                    this.mDecor.removeCallbacks(this.mInvalidatePanelMenuRunnable);
                    this.mInvalidatePanelMenuRunnable.run();
                }
                PanelFeatureState panelState = getPanelState(0, false);
                if (panelState == null || panelState.menu == null || panelState.refreshMenuContent || !callback.onPreparePanel(0, panelState.createdPanelView, panelState.menu)) {
                    return;
                }
                callback.onMenuOpened(8, panelState.menu);
                this.mDecorContentParent.showOverflowMenu();
                return;
            }
            this.mDecorContentParent.hideOverflowMenu();
            PanelFeatureState panelState2 = getPanelState(0, false);
            if (panelState2 == null || callback == null || isDestroyed()) {
                return;
            }
            callback.onPanelClosed(8, panelState2.menu);
            return;
        }
        PanelFeatureState panelState3 = getPanelState(0, false);
        if (panelState3 == null) {
            return;
        }
        if (z) {
            z2 = !panelState3.isInExpandedMode;
        } else {
            z2 = panelState3.isInExpandedMode;
        }
        panelState3.refreshDecorView = true;
        closePanel(panelState3, false);
        panelState3.isInExpandedMode = z2;
        openPanel(panelState3, (KeyEvent) null);
    }

    protected boolean initializePanelMenu(PanelFeatureState panelFeatureState) {
        Context context = getContext();
        if ((panelFeatureState.featureId == 0 || panelFeatureState.featureId == 8) && this.mDecorContentParent != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(16843825, typedValue, true);
            Resources.Theme theme2 = null;
            if (typedValue.resourceId != 0) {
                theme2 = context.getResources().newTheme();
                theme2.setTo(theme);
                theme2.applyStyle(typedValue.resourceId, true);
                theme2.resolveAttribute(16843671, typedValue, true);
            } else {
                theme.resolveAttribute(16843671, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (theme2 == null) {
                    theme2 = context.getResources().newTheme();
                    theme2.setTo(theme);
                }
                theme2.applyStyle(typedValue.resourceId, true);
            }
            if (theme2 != null) {
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(theme2);
                context = contextThemeWrapper;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.setCallback(this);
        panelFeatureState.setMenu(menuBuilder);
        return true;
    }

    protected boolean initializePanelDecor(PanelFeatureState panelFeatureState) {
        panelFeatureState.decorView = generateDecor(panelFeatureState.featureId);
        panelFeatureState.gravity = 81;
        panelFeatureState.setStyle(getContext());
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.Window, 0, panelFeatureState.listPresenterTheme);
        float dimension = obtainStyledAttributes.getDimension(38, 0.0f);
        if (dimension != 0.0f) {
            panelFeatureState.decorView.setElevation(dimension);
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    private int getOptionsPanelGravity() {
        try {
            return WindowManagerHolder.sWindowManager.getPreferredOptionsPanelGravity();
        } catch (RemoteException e) {
            Log.e(TAG, "Couldn't getOptionsPanelGravity; using default", e);
            return 81;
        }
    }

    void onOptionsPanelRotationChanged() {
        PanelFeatureState panelState = getPanelState(0, false);
        if (panelState == null) {
            return;
        }
        WindowManager.LayoutParams layoutParams = panelState.decorView != null ? (WindowManager.LayoutParams) panelState.decorView.getLayoutParams() : null;
        if (layoutParams != null) {
            layoutParams.gravity = getOptionsPanelGravity();
            WindowManager windowManager = getWindowManager();
            if (windowManager != null) {
                windowManager.updateViewLayout(panelState.decorView, layoutParams);
            }
        }
    }

    protected boolean initializePanelContent(PanelFeatureState panelFeatureState) {
        MenuView iconMenuView;
        if (panelFeatureState.createdPanelView != null) {
            panelFeatureState.shownPanelView = panelFeatureState.createdPanelView;
            return true;
        }
        if (panelFeatureState.menu == null) {
            return false;
        }
        if (this.mPanelMenuPresenterCallback == null) {
            this.mPanelMenuPresenterCallback = new PanelMenuPresenterCallback();
        }
        if (panelFeatureState.isInListMode()) {
            iconMenuView = panelFeatureState.getListMenuView(getContext(), this.mPanelMenuPresenterCallback);
        } else {
            iconMenuView = panelFeatureState.getIconMenuView(getContext(), this.mPanelMenuPresenterCallback);
        }
        panelFeatureState.shownPanelView = (View) iconMenuView;
        if (panelFeatureState.shownPanelView == null) {
            return false;
        }
        int windowAnimations = iconMenuView.getWindowAnimations();
        if (windowAnimations != 0) {
            panelFeatureState.windowAnimations = windowAnimations;
        }
        return true;
    }

    @Override // android.view.Window
    public boolean performContextMenuIdentifierAction(int i, int i2) {
        if (this.mContextMenu != null) {
            return this.mContextMenu.performIdentifierAction(i, i2);
        }
        return false;
    }

    @Override // android.view.Window
    public final void setElevation(float f) {
        this.mElevation = f;
        WindowManager.LayoutParams attributes = getAttributes();
        if (this.mDecor != null) {
            this.mDecor.setElevation(f);
            attributes.setSurfaceInsets(this.mDecor, true, false);
        }
        dispatchWindowAttributesChanged(attributes);
    }

    public float getElevation() {
        return this.mElevation;
    }

    @Override // android.view.Window
    public final void setClipToOutline(boolean z) {
        this.mClipToOutline = z;
        if (this.mDecor != null) {
            this.mDecor.setClipToOutline(z);
        }
    }

    @Override // android.view.Window
    public final void setBackgroundDrawable(Drawable drawable) {
        if (drawable == this.mBackgroundDrawable && this.mBackgroundResource == 0) {
            return;
        }
        this.mBackgroundResource = 0;
        this.mBackgroundDrawable = drawable;
        if (this.mDecor != null) {
            this.mDecor.setWindowBackground(drawable);
        }
        if (this.mBackgroundFallbackResource != 0) {
            this.mDecor.setBackgroundFallback(drawable == null ? this.mBackgroundFallbackResource : 0);
        }
    }

    @Override // android.view.Window
    public final void setFeatureDrawableResource(int i, int i2) {
        if (i2 != 0) {
            DrawableFeatureState drawableState = getDrawableState(i, true);
            if (drawableState.resid != i2) {
                drawableState.resid = i2;
                drawableState.uri = null;
                drawableState.local = getContext().getDrawable(i2);
                updateDrawable(i, drawableState, false);
                return;
            }
            return;
        }
        setFeatureDrawable(i, null);
    }

    @Override // android.view.Window
    public final void setFeatureDrawableUri(int i, Uri uri) {
        if (uri != null) {
            DrawableFeatureState drawableState = getDrawableState(i, true);
            if (drawableState.uri == null || !drawableState.uri.equals(uri)) {
                drawableState.resid = 0;
                drawableState.uri = uri;
                drawableState.local = loadImageURI(uri);
                updateDrawable(i, drawableState, false);
                return;
            }
            return;
        }
        setFeatureDrawable(i, null);
    }

    @Override // android.view.Window
    public final void setFeatureDrawable(int i, Drawable drawable) {
        DrawableFeatureState drawableState = getDrawableState(i, true);
        drawableState.resid = 0;
        drawableState.uri = null;
        if (drawableState.local != drawable) {
            drawableState.local = drawable;
            updateDrawable(i, drawableState, false);
        }
    }

    @Override // android.view.Window
    public void setFeatureDrawableAlpha(int i, int i2) {
        DrawableFeatureState drawableState = getDrawableState(i, true);
        if (drawableState.alpha != i2) {
            drawableState.alpha = i2;
            updateDrawable(i, drawableState, false);
        }
    }

    protected final void setFeatureDefaultDrawable(int i, Drawable drawable) {
        DrawableFeatureState drawableState = getDrawableState(i, true);
        if (drawableState.def != drawable) {
            drawableState.def = drawable;
            updateDrawable(i, drawableState, false);
        }
    }

    @Override // android.view.Window
    public final void setFeatureInt(int i, int i2) {
        updateInt(i, i2, false);
    }

    protected final void updateDrawable(int i, boolean z) {
        DrawableFeatureState drawableState = getDrawableState(i, false);
        if (drawableState != null) {
            updateDrawable(i, drawableState, z);
        }
    }

    protected void onDrawableChanged(int i, Drawable drawable, int i2) {
        ImageView rightIconView;
        if (i == 3) {
            rightIconView = getLeftIconView();
        } else if (i != 4) {
            return;
        } else {
            rightIconView = getRightIconView();
        }
        if (drawable != null) {
            drawable.setAlpha(i2);
            rightIconView.setImageDrawable(drawable);
            rightIconView.setVisibility(0);
            return;
        }
        rightIconView.setVisibility(8);
    }

    protected void onIntChanged(int i, int i2) {
        FrameLayout frameLayout;
        if (i == 2 || i == 5) {
            updateProgressBars(i2);
        } else {
            if (i != 7 || (frameLayout = (FrameLayout) findViewById(16909415)) == null) {
                return;
            }
            this.mLayoutInflater.inflate(i2, frameLayout);
        }
    }

    private void updateProgressBars(int i) {
        ProgressBar circularProgressBar = getCircularProgressBar(true);
        ProgressBar horizontalProgressBar = getHorizontalProgressBar(true);
        int localFeatures = getLocalFeatures();
        if (i == -1) {
            if ((localFeatures & 4) != 0) {
                if (horizontalProgressBar != null) {
                    horizontalProgressBar.setVisibility((horizontalProgressBar.isIndeterminate() || horizontalProgressBar.getProgress() < 10000) ? 0 : 4);
                } else {
                    Log.e(TAG, "Horizontal progress bar not located in current window decor");
                }
            }
            if ((localFeatures & 32) != 0) {
                if (circularProgressBar != null) {
                    circularProgressBar.setVisibility(0);
                    return;
                } else {
                    Log.e(TAG, "Circular progress bar not located in current window decor");
                    return;
                }
            }
            return;
        }
        if (i == -2) {
            if ((localFeatures & 4) != 0) {
                if (horizontalProgressBar != null) {
                    horizontalProgressBar.setVisibility(8);
                } else {
                    Log.e(TAG, "Horizontal progress bar not located in current window decor");
                }
            }
            if ((localFeatures & 32) != 0) {
                if (circularProgressBar != null) {
                    circularProgressBar.setVisibility(8);
                    return;
                } else {
                    Log.e(TAG, "Circular progress bar not located in current window decor");
                    return;
                }
            }
            return;
        }
        if (i == -3) {
            if (horizontalProgressBar != null) {
                horizontalProgressBar.setIndeterminate(true);
                return;
            } else {
                Log.e(TAG, "Horizontal progress bar not located in current window decor");
                return;
            }
        }
        if (i == -4) {
            if (horizontalProgressBar != null) {
                horizontalProgressBar.setIndeterminate(false);
                return;
            } else {
                Log.e(TAG, "Horizontal progress bar not located in current window decor");
                return;
            }
        }
        if (i < 0 || i > 10000) {
            if (20000 > i || i > 30000) {
                return;
            }
            if (horizontalProgressBar != null) {
                horizontalProgressBar.setSecondaryProgress(i - 20000);
            } else {
                Log.e(TAG, "Horizontal progress bar not located in current window decor");
            }
            showProgressBars(horizontalProgressBar, circularProgressBar);
            return;
        }
        if (horizontalProgressBar != null) {
            horizontalProgressBar.setProgress(i + 0);
        } else {
            Log.e(TAG, "Horizontal progress bar not located in current window decor");
        }
        if (i < 10000) {
            showProgressBars(horizontalProgressBar, circularProgressBar);
        } else {
            hideProgressBars(horizontalProgressBar, circularProgressBar);
        }
    }

    private void showProgressBars(ProgressBar progressBar, ProgressBar progressBar2) {
        int localFeatures = getLocalFeatures();
        if ((localFeatures & 32) != 0 && progressBar2 != null && progressBar2.getVisibility() == 4) {
            progressBar2.setVisibility(0);
        }
        if ((localFeatures & 4) == 0 || progressBar == null || progressBar.getProgress() >= 10000) {
            return;
        }
        progressBar.setVisibility(0);
    }

    private void hideProgressBars(ProgressBar progressBar, ProgressBar progressBar2) {
        int localFeatures = getLocalFeatures();
        Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), 17432577);
        loadAnimation.setDuration(1000L);
        if ((localFeatures & 32) != 0 && progressBar2 != null && progressBar2.getVisibility() == 0) {
            progressBar2.startAnimation(loadAnimation);
            progressBar2.setVisibility(4);
        }
        if ((localFeatures & 4) == 0 || progressBar == null || progressBar.getVisibility() != 0) {
            return;
        }
        progressBar.startAnimation(loadAnimation);
        progressBar.setVisibility(4);
    }

    @Override // android.view.Window
    public void setIcon(int i) {
        this.mIconRes = i;
        this.mResourcesSetFlags |= 1;
        this.mResourcesSetFlags &= -5;
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.setIcon(i);
        }
    }

    public void setDefaultIcon(int i) {
        if ((this.mResourcesSetFlags & 1) != 0) {
            return;
        }
        this.mIconRes = i;
        if (this.mDecorContentParent != null) {
            if (this.mDecorContentParent.hasIcon() && (this.mResourcesSetFlags & 4) == 0) {
                return;
            }
            if (i != 0) {
                this.mDecorContentParent.setIcon(i);
                this.mResourcesSetFlags &= -5;
            } else {
                this.mDecorContentParent.setIcon(getContext().getPackageManager().getDefaultActivityIcon());
                this.mResourcesSetFlags |= 4;
            }
        }
    }

    @Override // android.view.Window
    public void setLogo(int i) {
        this.mLogoRes = i;
        this.mResourcesSetFlags |= 2;
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.setLogo(i);
        }
    }

    public void setDefaultLogo(int i) {
        if ((this.mResourcesSetFlags & 2) != 0) {
            return;
        }
        this.mLogoRes = i;
        if (this.mDecorContentParent == null || this.mDecorContentParent.hasLogo()) {
            return;
        }
        this.mDecorContentParent.setLogo(i);
    }

    @Override // android.view.Window
    public void setLocalFocus(boolean z, boolean z2) {
        getViewRootImpl().windowFocusChanged(z, z2);
    }

    @Override // android.view.Window
    public void injectInputEvent(InputEvent inputEvent) {
        getViewRootImpl().dispatchInputEvent(inputEvent);
    }

    private ViewRootImpl getViewRootImpl() {
        ViewRootImpl viewRootImpl;
        if (this.mDecor == null || (viewRootImpl = this.mDecor.getViewRootImpl()) == null) {
            throw new IllegalStateException("view not added");
        }
        return viewRootImpl;
    }

    @Override // android.view.Window
    public void takeKeyEvents(boolean z) {
        this.mDecor.setFocusable(z);
    }

    @Override // android.view.Window
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return this.mDecor.superDispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window
    public boolean superDispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.mDecor.superDispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.Window
    public boolean superDispatchTouchEvent(MotionEvent motionEvent) {
        return this.mDecor.superDispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window
    public boolean superDispatchTrackballEvent(MotionEvent motionEvent) {
        return this.mDecor.superDispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window
    public boolean superDispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.mDecor.superDispatchGenericMotionEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0021. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0024. Please report as an issue. */
    public boolean onKeyDown(int i, int i2, KeyEvent keyEvent) {
        KeyEvent.DispatcherState keyDispatcherState = this.mDecor != null ? this.mDecor.getKeyDispatcherState() : null;
        if (i2 != 4) {
            if (i2 != 79) {
                if (i2 == 82) {
                    if (i < 0) {
                        i = 0;
                    }
                    onKeyDownPanel(i, keyEvent);
                    return true;
                }
                if (i2 != 130) {
                    if (i2 != 164) {
                        switch (i2) {
                            case 24:
                            case 25:
                                break;
                            default:
                                switch (i2) {
                                    default:
                                        switch (i2) {
                                        }
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                    case 91:
                                        return this.mMediaController == null && this.mMediaController.dispatchMediaButtonEventAsSystemService(keyEvent);
                                }
                        }
                    }
                    if (this.mMediaController != null) {
                        this.mMediaController.dispatchVolumeButtonEventAsSystemService(keyEvent);
                    } else {
                        getMediaSessionManager().dispatchVolumeKeyEventAsSystemService(keyEvent, this.mVolumeControlStreamType);
                    }
                    return true;
                }
            }
            if (this.mMediaController == null) {
            }
        }
        if (keyEvent.getRepeatCount() <= 0 && i >= 0) {
            if (keyDispatcherState != null) {
                keyDispatcherState.startTracking(keyEvent, this);
            }
            return true;
        }
        return false;
    }

    private KeyguardManager getKeyguardManager() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = (KeyguardManager) getContext().getSystemService("keyguard");
        }
        return this.mKeyguardManager;
    }

    AudioManager getAudioManager() {
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) getContext().getSystemService(PowerProfile.POWER_AUDIO);
        }
        return this.mAudioManager;
    }

    private MediaSessionManager getMediaSessionManager() {
        if (this.mMediaSessionManager == null) {
            this.mMediaSessionManager = (MediaSessionManager) getContext().getSystemService("media_session");
        }
        return this.mMediaSessionManager;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x002a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:19:0x002d. Please report as an issue. */
    public boolean onKeyUp(int i, int i2, KeyEvent keyEvent) {
        PanelFeatureState panelState;
        KeyEvent.DispatcherState keyDispatcherState = this.mDecor != null ? this.mDecor.getKeyDispatcherState() : null;
        if (keyDispatcherState != null) {
            keyDispatcherState.handleUpEvent(keyEvent);
        }
        if (i2 != 4) {
            if (i2 != 79) {
                if (i2 == 82) {
                    if (i < 0) {
                        i = 0;
                    }
                    onKeyUpPanel(i, keyEvent);
                    return true;
                }
                if (i2 != 130) {
                    if (i2 == 164) {
                        getMediaSessionManager().dispatchVolumeKeyEventAsSystemService(keyEvent, Integer.MIN_VALUE);
                        return true;
                    }
                    if (i2 != 171) {
                        switch (i2) {
                            case 24:
                            case 25:
                                if (this.mMediaController != null) {
                                    this.mMediaController.dispatchVolumeButtonEventAsSystemService(keyEvent);
                                } else {
                                    getMediaSessionManager().dispatchVolumeKeyEventAsSystemService(keyEvent, this.mVolumeControlStreamType);
                                }
                                return true;
                            default:
                                switch (i2) {
                                    case 84:
                                        if (!isNotInstantAppAndKeyguardRestricted() && (getContext().getResources().getConfiguration().uiMode & 15) != 6) {
                                            if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                                                launchDefaultSearch(keyEvent);
                                            }
                                            return true;
                                        }
                                        break;
                                    default:
                                        switch (i2) {
                                        }
                                    case 85:
                                    case 86:
                                    case 87:
                                    case 88:
                                    case 89:
                                    case 90:
                                    case 91:
                                        return this.mMediaController == null && this.mMediaController.dispatchMediaButtonEventAsSystemService(keyEvent);
                                }
                        }
                    } else {
                        if (this.mSupportsPictureInPicture && !keyEvent.isCanceled()) {
                            getWindowControllerCallback().enterPictureInPictureModeIfPossible();
                        }
                        return true;
                    }
                }
            }
            if (this.mMediaController == null) {
            }
        }
        if (i >= 0 && keyEvent.isTracking() && !keyEvent.isCanceled()) {
            if (i == 0 && (panelState = getPanelState(i, false)) != null && panelState.isInExpandedMode) {
                reopenMenu(true);
                return true;
            }
            closePanel(i);
            return true;
        }
        return false;
    }

    private boolean isNotInstantAppAndKeyguardRestricted() {
        return !getContext().getPackageManager().isInstantApp() && getKeyguardManager().inKeyguardRestrictedInputMode();
    }

    @Override // android.view.Window
    public final View getDecorView() {
        if (this.mDecor == null || this.mForceDecorInstall) {
            installDecor();
        }
        return this.mDecor;
    }

    @Override // android.view.Window
    public final View peekDecorView() {
        return this.mDecor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onViewRootImplSet(ViewRootImpl viewRootImpl) {
        viewRootImpl.setActivityConfigCallback(this.mActivityConfigCallback);
    }

    @Override // android.view.Window
    public Bundle saveHierarchyState() {
        Bundle bundle = new Bundle();
        if (this.mContentParent == null) {
            return bundle;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.mContentParent.saveHierarchyState(sparseArray);
        bundle.putSparseParcelableArray(VIEWS_TAG, sparseArray);
        View findFocus = this.mContentParent.findFocus();
        if (findFocus != null && findFocus.getId() != -1) {
            bundle.putInt(FOCUSED_ID_TAG, findFocus.getId());
        }
        SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
        savePanelState(sparseArray2);
        if (sparseArray2.size() > 0) {
            bundle.putSparseParcelableArray(PANELS_TAG, sparseArray2);
        }
        if (this.mDecorContentParent != null) {
            SparseArray<Parcelable> sparseArray3 = new SparseArray<>();
            this.mDecorContentParent.saveToolbarHierarchyState(sparseArray3);
            bundle.putSparseParcelableArray(ACTION_BAR_TAG, sparseArray3);
        }
        return bundle;
    }

    @Override // android.view.Window
    public void restoreHierarchyState(Bundle bundle) {
        if (this.mContentParent == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(VIEWS_TAG);
        if (sparseParcelableArray != null) {
            this.mContentParent.restoreHierarchyState(sparseParcelableArray);
        }
        int i = bundle.getInt(FOCUSED_ID_TAG, -1);
        if (i != -1) {
            View findViewById = this.mContentParent.findViewById(i);
            if (findViewById != null) {
                findViewById.requestFocus();
            } else {
                Log.w(TAG, "Previously focused view reported id " + i + " during save, but can't be found during restore.");
            }
        }
        SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray(PANELS_TAG);
        if (sparseParcelableArray2 != null) {
            restorePanelState(sparseParcelableArray2);
        }
        if (this.mDecorContentParent != null) {
            SparseArray<Parcelable> sparseParcelableArray3 = bundle.getSparseParcelableArray(ACTION_BAR_TAG);
            if (sparseParcelableArray3 != null) {
                doPendingInvalidatePanelMenu();
                this.mDecorContentParent.restoreToolbarHierarchyState(sparseParcelableArray3);
            } else {
                Log.w(TAG, "Missing saved instance states for action bar views! State will not be restored.");
            }
        }
    }

    private void savePanelState(SparseArray<Parcelable> sparseArray) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null) {
            return;
        }
        for (int length = panelFeatureStateArr.length - 1; length >= 0; length--) {
            if (panelFeatureStateArr[length] != null) {
                sparseArray.put(length, panelFeatureStateArr[length].onSaveInstanceState());
            }
        }
    }

    private void restorePanelState(SparseArray<Parcelable> sparseArray) {
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            int keyAt = sparseArray.keyAt(size);
            PanelFeatureState panelState = getPanelState(keyAt, false);
            if (panelState != null) {
                panelState.onRestoreInstanceState(sparseArray.get(keyAt));
                invalidatePanelMenu(keyAt);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void openPanelsAfterRestore() {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null) {
            return;
        }
        for (int length = panelFeatureStateArr.length - 1; length >= 0; length--) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[length];
            if (panelFeatureState != null) {
                panelFeatureState.applyFrozenState();
                if (!panelFeatureState.isOpen && panelFeatureState.wasLastOpen) {
                    panelFeatureState.isInExpandedMode = panelFeatureState.wasLastExpanded;
                    openPanel(panelFeatureState, (KeyEvent) null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        private PanelMenuPresenterCallback() {
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            boolean z2 = rootMenu != menuBuilder;
            PhoneWindow phoneWindow = PhoneWindow.this;
            if (z2) {
                menuBuilder = rootMenu;
            }
            PanelFeatureState findMenuPanel = phoneWindow.findMenuPanel(menuBuilder);
            if (findMenuPanel != null) {
                if (z2) {
                    PhoneWindow.this.callOnPanelClosed(findMenuPanel.featureId, findMenuPanel, rootMenu);
                    PhoneWindow.this.closePanel(findMenuPanel, true);
                } else {
                    PhoneWindow.this.closePanel(findMenuPanel, z);
                }
            }
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback;
            if (menuBuilder != null || !PhoneWindow.this.hasFeature(8) || (callback = PhoneWindow.this.getCallback()) == null || PhoneWindow.this.isDestroyed()) {
                return true;
            }
            callback.onMenuOpened(8, menuBuilder);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        private ActionMenuPresenterCallback() {
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback = PhoneWindow.this.getCallback();
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(8, menuBuilder);
            return true;
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            PhoneWindow.this.checkCloseActionMenu(menuBuilder);
        }
    }

    protected DecorView generateDecor(int i) {
        Context context;
        if (this.mUseDecorContext) {
            Context applicationContext = getContext().getApplicationContext();
            if (applicationContext == null) {
                context = getContext();
            } else {
                DecorContext decorContext = new DecorContext(applicationContext, getContext());
                if (this.mTheme != -1) {
                    decorContext.setTheme(this.mTheme);
                }
                context = decorContext;
            }
        } else {
            context = getContext();
        }
        return new DecorView(context, i, this, getAttributes());
    }

    protected ViewGroup generateLayout(DecorView decorView) {
        int i;
        Drawable drawable;
        ProgressBar circularProgressBar;
        TypedArray windowStyle = getWindowStyle();
        this.mIsFloating = windowStyle.getBoolean(4, false);
        int i2 = (~getForcedWindowFlags()) & 65792;
        if (this.mIsFloating) {
            setLayout(-2, -2);
            setFlags(0, i2);
        } else {
            setFlags(65792, i2);
        }
        if (windowStyle.getBoolean(3, false)) {
            requestFeature(1);
        } else if (windowStyle.getBoolean(15, false)) {
            requestFeature(8);
        }
        if (windowStyle.getBoolean(17, false)) {
            requestFeature(9);
        }
        if (windowStyle.getBoolean(16, false)) {
            requestFeature(10);
        }
        if (windowStyle.getBoolean(25, false)) {
            requestFeature(11);
        }
        if (windowStyle.getBoolean(9, false)) {
            setFlags(1024, (~getForcedWindowFlags()) & 1024);
        }
        if (windowStyle.getBoolean(23, false)) {
            setFlags(67108864, (~getForcedWindowFlags()) & 67108864);
        }
        if (windowStyle.getBoolean(24, false)) {
            setFlags(134217728, (~getForcedWindowFlags()) & 134217728);
        }
        if (windowStyle.getBoolean(22, false)) {
            setFlags(33554432, (~getForcedWindowFlags()) & 33554432);
        }
        if (windowStyle.getBoolean(14, false)) {
            setFlags(1048576, 1048576 & (~getForcedWindowFlags()));
        }
        if (windowStyle.getBoolean(18, getContext().getApplicationInfo().targetSdkVersion >= 11)) {
            setFlags(8388608, 8388608 & (~getForcedWindowFlags()));
        }
        windowStyle.getValue(19, this.mMinWidthMajor);
        windowStyle.getValue(20, this.mMinWidthMinor);
        if (windowStyle.hasValue(55)) {
            if (this.mFixedWidthMajor == null) {
                this.mFixedWidthMajor = new TypedValue();
            }
            windowStyle.getValue(55, this.mFixedWidthMajor);
        }
        if (windowStyle.hasValue(56)) {
            if (this.mFixedWidthMinor == null) {
                this.mFixedWidthMinor = new TypedValue();
            }
            windowStyle.getValue(56, this.mFixedWidthMinor);
        }
        if (windowStyle.hasValue(53)) {
            if (this.mFixedHeightMajor == null) {
                this.mFixedHeightMajor = new TypedValue();
            }
            windowStyle.getValue(53, this.mFixedHeightMajor);
        }
        if (windowStyle.hasValue(54)) {
            if (this.mFixedHeightMinor == null) {
                this.mFixedHeightMinor = new TypedValue();
            }
            windowStyle.getValue(54, this.mFixedHeightMinor);
        }
        if (windowStyle.getBoolean(26, false)) {
            requestFeature(12);
        }
        if (windowStyle.getBoolean(45, false)) {
            requestFeature(13);
        }
        this.mIsTranslucent = windowStyle.getBoolean(5, false);
        Context context = getContext();
        int i3 = context.getApplicationInfo().targetSdkVersion;
        boolean z = i3 < 11;
        boolean z2 = i3 < 14;
        boolean z3 = i3 < 21;
        boolean z4 = context.getResources().getBoolean(17957109);
        boolean z5 = !hasFeature(8) || hasFeature(1);
        if (z || (z2 && z4 && z5)) {
            setNeedsMenuKey(1);
        } else {
            setNeedsMenuKey(2);
        }
        if (!this.mForcedStatusBarColor) {
            this.mStatusBarColor = windowStyle.getColor(35, -16777216);
        }
        if (!this.mForcedNavigationBarColor) {
            this.mNavigationBarColor = windowStyle.getColor(36, -16777216);
            this.mNavigationBarDividerColor = windowStyle.getColor(50, 0);
        }
        WindowManager.LayoutParams attributes = getAttributes();
        if (!this.mIsFloating) {
            if (!z3 && windowStyle.getBoolean(34, false)) {
                setFlags(Integer.MIN_VALUE, Integer.MIN_VALUE & (~getForcedWindowFlags()));
            }
            if (this.mDecor.mForceWindowDrawsStatusBarBackground) {
                attributes.privateFlags |= 131072;
            }
        }
        if (windowStyle.getBoolean(46, false)) {
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
        }
        if (windowStyle.getBoolean(49, false)) {
            decorView.setSystemUiVisibility(16 | decorView.getSystemUiVisibility());
        }
        if (windowStyle.hasValue(51)) {
            int i4 = windowStyle.getInt(51, -1);
            if (i4 < 0 || i4 > 2) {
                throw new UnsupportedOperationException("Unknown windowLayoutInDisplayCutoutMode: " + windowStyle.getString(51));
            }
            attributes.layoutInDisplayCutoutMode = i4;
        }
        if ((this.mAlwaysReadCloseOnTouchAttr || getContext().getApplicationInfo().targetSdkVersion >= 11) && windowStyle.getBoolean(21, false)) {
            setCloseOnTouchOutsideIfNotSet(true);
        }
        if (!hasSoftInputMode()) {
            attributes.softInputMode = windowStyle.getInt(13, attributes.softInputMode);
        }
        if (windowStyle.getBoolean(11, this.mIsFloating)) {
            if ((getForcedWindowFlags() & 2) == 0) {
                attributes.flags |= 2;
            }
            if (!haveDimAmount()) {
                attributes.dimAmount = windowStyle.getFloat(0, 0.5f);
            }
        }
        if (attributes.windowAnimations == 0) {
            attributes.windowAnimations = windowStyle.getResourceId(8, 0);
        }
        if (getContainer() == null) {
            if (this.mBackgroundDrawable == null) {
                if (this.mBackgroundResource == 0) {
                    this.mBackgroundResource = windowStyle.getResourceId(1, 0);
                }
                if (this.mFrameResource == 0) {
                    this.mFrameResource = windowStyle.getResourceId(2, 0);
                }
                this.mBackgroundFallbackResource = windowStyle.getResourceId(47, 0);
            }
            if (this.mLoadElevation) {
                this.mElevation = windowStyle.getDimension(38, 0.0f);
            }
            this.mClipToOutline = windowStyle.getBoolean(39, false);
            this.mTextColor = windowStyle.getColor(7, 0);
        }
        int localFeatures = getLocalFeatures();
        int i5 = localFeatures & 2048;
        if (i5 != 0) {
            i = 17367262;
            setCloseOnSwipeEnabled(true);
        } else if ((localFeatures & 24) != 0) {
            if (this.mIsFloating) {
                TypedValue typedValue = new TypedValue();
                getContext().getTheme().resolveAttribute(17891366, typedValue, true);
                i = typedValue.resourceId;
            } else {
                i = 17367264;
            }
            removeFeature(8);
        } else if ((localFeatures & 36) != 0 && (localFeatures & 256) == 0) {
            i = 17367259;
        } else if ((localFeatures & 128) != 0) {
            if (this.mIsFloating) {
                TypedValue typedValue2 = new TypedValue();
                getContext().getTheme().resolveAttribute(17891363, typedValue2, true);
                i = typedValue2.resourceId;
            } else {
                i = 17367258;
            }
            removeFeature(8);
        } else if ((localFeatures & 2) != 0) {
            i = (localFeatures & 1024) != 0 ? 17367261 : 17367260;
        } else if (this.mIsFloating) {
            TypedValue typedValue3 = new TypedValue();
            getContext().getTheme().resolveAttribute(17891365, typedValue3, true);
            i = typedValue3.resourceId;
        } else {
            i = (localFeatures & 256) != 0 ? windowStyle.getResourceId(52, 17367257) : 17367263;
        }
        this.mDecor.startChanging();
        this.mDecor.onResourcesLoaded(this.mLayoutInflater, i);
        ViewGroup viewGroup = (ViewGroup) findViewById(16908290);
        if (viewGroup == null) {
            throw new RuntimeException("Window couldn't find content container view");
        }
        if ((localFeatures & 32) != 0 && (circularProgressBar = getCircularProgressBar(false)) != null) {
            circularProgressBar.setIndeterminate(true);
        }
        if (i5 != 0) {
            registerSwipeCallbacks(viewGroup);
        }
        if (getContainer() == null) {
            if (this.mBackgroundResource != 0) {
                drawable = getContext().getDrawable(this.mBackgroundResource);
            } else {
                drawable = this.mBackgroundDrawable;
            }
            this.mDecor.setWindowBackground(drawable);
            this.mDecor.setWindowFrame(this.mFrameResource != 0 ? getContext().getDrawable(this.mFrameResource) : null);
            this.mDecor.setElevation(this.mElevation);
            this.mDecor.setClipToOutline(this.mClipToOutline);
            if (this.mTitle != null) {
                setTitle(this.mTitle);
            }
            if (this.mTitleColor == 0) {
                this.mTitleColor = this.mTextColor;
            }
            setTitleColor(this.mTitleColor);
        }
        this.mDecor.finishChanging();
        return viewGroup;
    }

    public void alwaysReadCloseOnTouchAttr() {
        this.mAlwaysReadCloseOnTouchAttr = true;
    }

    private void installDecor() {
        this.mForceDecorInstall = false;
        if (this.mDecor == null) {
            this.mDecor = generateDecor(-1);
            this.mDecor.setDescendantFocusability(262144);
            this.mDecor.setIsRootNamespace(true);
            if (!this.mInvalidatePanelMenuPosted && this.mInvalidatePanelMenuFeatures != 0) {
                this.mDecor.postOnAnimation(this.mInvalidatePanelMenuRunnable);
            }
        } else {
            this.mDecor.setWindow(this);
        }
        if (this.mContentParent == null) {
            this.mContentParent = generateLayout(this.mDecor);
            this.mDecor.makeOptionalFitsSystemWindows();
            DecorContentParent decorContentParent = (DecorContentParent) this.mDecor.findViewById(16908835);
            if (decorContentParent != null) {
                this.mDecorContentParent = decorContentParent;
                this.mDecorContentParent.setWindowCallback(getCallback());
                if (this.mDecorContentParent.getTitle() == null) {
                    this.mDecorContentParent.setWindowTitle(this.mTitle);
                }
                int localFeatures = getLocalFeatures();
                for (int i = 0; i < 13; i++) {
                    if (((1 << i) & localFeatures) != 0) {
                        this.mDecorContentParent.initFeature(i);
                    }
                }
                this.mDecorContentParent.setUiOptions(this.mUiOptions);
                if ((this.mResourcesSetFlags & 1) != 0 || (this.mIconRes != 0 && !this.mDecorContentParent.hasIcon())) {
                    this.mDecorContentParent.setIcon(this.mIconRes);
                } else if ((this.mResourcesSetFlags & 1) == 0 && this.mIconRes == 0 && !this.mDecorContentParent.hasIcon()) {
                    this.mDecorContentParent.setIcon(getContext().getPackageManager().getDefaultActivityIcon());
                    this.mResourcesSetFlags |= 4;
                }
                if ((this.mResourcesSetFlags & 2) != 0 || (this.mLogoRes != 0 && !this.mDecorContentParent.hasLogo())) {
                    this.mDecorContentParent.setLogo(this.mLogoRes);
                }
                PanelFeatureState panelState = getPanelState(0, false);
                if (!isDestroyed() && ((panelState == null || panelState.menu == null) && !this.mIsStartingWindow)) {
                    invalidatePanelMenu(8);
                }
            } else {
                this.mTitleView = (TextView) findViewById(16908310);
                if (this.mTitleView != null) {
                    if ((getLocalFeatures() & 2) != 0) {
                        View findViewById = findViewById(16909415);
                        if (findViewById != null) {
                            findViewById.setVisibility(8);
                        } else {
                            this.mTitleView.setVisibility(8);
                        }
                        this.mContentParent.setForeground(null);
                    } else {
                        this.mTitleView.setText(this.mTitle);
                    }
                }
            }
            if (this.mDecor.getBackground() == null && this.mBackgroundFallbackResource != 0) {
                this.mDecor.setBackgroundFallback(this.mBackgroundFallbackResource);
            }
            if (hasFeature(13)) {
                if (this.mTransitionManager == null) {
                    int resourceId = getWindowStyle().getResourceId(27, 0);
                    if (resourceId != 0) {
                        this.mTransitionManager = TransitionInflater.from(getContext()).inflateTransitionManager(resourceId, this.mContentParent);
                    } else {
                        this.mTransitionManager = new TransitionManager();
                    }
                }
                this.mEnterTransition = getTransition(this.mEnterTransition, null, 28);
                this.mReturnTransition = getTransition(this.mReturnTransition, USE_DEFAULT_TRANSITION, 40);
                this.mExitTransition = getTransition(this.mExitTransition, null, 29);
                this.mReenterTransition = getTransition(this.mReenterTransition, USE_DEFAULT_TRANSITION, 41);
                this.mSharedElementEnterTransition = getTransition(this.mSharedElementEnterTransition, null, 30);
                this.mSharedElementReturnTransition = getTransition(this.mSharedElementReturnTransition, USE_DEFAULT_TRANSITION, 42);
                this.mSharedElementExitTransition = getTransition(this.mSharedElementExitTransition, null, 31);
                this.mSharedElementReenterTransition = getTransition(this.mSharedElementReenterTransition, USE_DEFAULT_TRANSITION, 43);
                if (this.mAllowEnterTransitionOverlap == null) {
                    this.mAllowEnterTransitionOverlap = Boolean.valueOf(getWindowStyle().getBoolean(33, true));
                }
                if (this.mAllowReturnTransitionOverlap == null) {
                    this.mAllowReturnTransitionOverlap = Boolean.valueOf(getWindowStyle().getBoolean(32, true));
                }
                if (this.mBackgroundFadeDurationMillis < 0) {
                    this.mBackgroundFadeDurationMillis = getWindowStyle().getInteger(37, 300);
                }
                if (this.mSharedElementsUseOverlay == null) {
                    this.mSharedElementsUseOverlay = Boolean.valueOf(getWindowStyle().getBoolean(44, true));
                }
            }
        }
    }

    private Transition getTransition(Transition transition, Transition transition2, int i) {
        if (transition != transition2) {
            return transition;
        }
        int resourceId = getWindowStyle().getResourceId(i, -1);
        if (resourceId == -1 || resourceId == 17760256) {
            return transition2;
        }
        Transition inflateTransition = TransitionInflater.from(getContext()).inflateTransition(resourceId);
        if ((inflateTransition instanceof TransitionSet) && ((TransitionSet) inflateTransition).getTransitionCount() == 0) {
            return null;
        }
        return inflateTransition;
    }

    private Drawable loadImageURI(Uri uri) {
        try {
            return Drawable.createFromStream(getContext().getContentResolver().openInputStream(uri), null);
        } catch (Exception unused) {
            Log.w(TAG, "Unable to open content: " + uri);
            return null;
        }
    }

    private DrawableFeatureState getDrawableState(int i, boolean z) {
        if ((getFeatures() & (1 << i)) == 0) {
            if (z) {
                throw new RuntimeException("The feature has not been requested");
            }
            return null;
        }
        DrawableFeatureState[] drawableFeatureStateArr = this.mDrawables;
        if (drawableFeatureStateArr == null || drawableFeatureStateArr.length <= i) {
            DrawableFeatureState[] drawableFeatureStateArr2 = new DrawableFeatureState[i + 1];
            if (drawableFeatureStateArr != null) {
                System.arraycopy(drawableFeatureStateArr, 0, drawableFeatureStateArr2, 0, drawableFeatureStateArr.length);
            }
            this.mDrawables = drawableFeatureStateArr2;
            drawableFeatureStateArr = drawableFeatureStateArr2;
        }
        DrawableFeatureState drawableFeatureState = drawableFeatureStateArr[i];
        if (drawableFeatureState != null) {
            return drawableFeatureState;
        }
        DrawableFeatureState drawableFeatureState2 = new DrawableFeatureState(i);
        drawableFeatureStateArr[i] = drawableFeatureState2;
        return drawableFeatureState2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PanelFeatureState getPanelState(int i, boolean z) {
        return getPanelState(i, z, null);
    }

    private PanelFeatureState getPanelState(int i, boolean z, PanelFeatureState panelFeatureState) {
        if ((getFeatures() & (1 << i)) == 0) {
            if (z) {
                throw new RuntimeException("The feature has not been requested");
            }
            return null;
        }
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.mPanels = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState2 = panelFeatureStateArr[i];
        if (panelFeatureState2 == null) {
            if (panelFeatureState == null) {
                panelFeatureState = new PanelFeatureState(i);
            }
            panelFeatureState2 = panelFeatureState;
            panelFeatureStateArr[i] = panelFeatureState2;
        }
        return panelFeatureState2;
    }

    @Override // android.view.Window
    public final void setChildDrawable(int i, Drawable drawable) {
        DrawableFeatureState drawableState = getDrawableState(i, true);
        drawableState.child = drawable;
        updateDrawable(i, drawableState, false);
    }

    @Override // android.view.Window
    public final void setChildInt(int i, int i2) {
        updateInt(i, i2, false);
    }

    @Override // android.view.Window
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        PanelFeatureState panelState = getPanelState(0, false);
        return (panelState == null || panelState.menu == null || !panelState.menu.isShortcutKey(i, keyEvent)) ? false : true;
    }

    private void updateDrawable(int i, DrawableFeatureState drawableFeatureState, boolean z) {
        if (this.mContentParent == null) {
            return;
        }
        int i2 = 1 << i;
        if ((getFeatures() & i2) != 0 || z) {
            Drawable drawable = null;
            if (drawableFeatureState != null) {
                drawable = drawableFeatureState.child;
                if (drawable == null) {
                    drawable = drawableFeatureState.local;
                }
                if (drawable == null) {
                    drawable = drawableFeatureState.def;
                }
            }
            if ((i2 & getLocalFeatures()) == 0) {
                if (getContainer() != null) {
                    if (isActive() || z) {
                        getContainer().setChildDrawable(i, drawable);
                        return;
                    }
                    return;
                }
                return;
            }
            if (drawableFeatureState != null) {
                if (drawableFeatureState.cur == drawable && drawableFeatureState.curAlpha == drawableFeatureState.alpha) {
                    return;
                }
                drawableFeatureState.cur = drawable;
                drawableFeatureState.curAlpha = drawableFeatureState.alpha;
                onDrawableChanged(i, drawable, drawableFeatureState.alpha);
            }
        }
    }

    private void updateInt(int i, int i2, boolean z) {
        if (this.mContentParent == null) {
            return;
        }
        int i3 = 1 << i;
        if ((getFeatures() & i3) != 0 || z) {
            if ((getLocalFeatures() & i3) == 0) {
                if (getContainer() != null) {
                    getContainer().setChildInt(i, i2);
                    return;
                }
                return;
            }
            onIntChanged(i, i2);
        }
    }

    private ImageView getLeftIconView() {
        if (this.mLeftIconView != null) {
            return this.mLeftIconView;
        }
        if (this.mContentParent == null) {
            installDecor();
        }
        ImageView imageView = (ImageView) findViewById(16909024);
        this.mLeftIconView = imageView;
        return imageView;
    }

    protected void dispatchWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        super.dispatchWindowAttributesChanged(layoutParams);
        if (this.mDecor != null) {
            this.mDecor.updateColorViews(null, true);
        }
    }

    private ProgressBar getCircularProgressBar(boolean z) {
        if (this.mCircularProgressBar != null) {
            return this.mCircularProgressBar;
        }
        if (this.mContentParent == null && z) {
            installDecor();
        }
        this.mCircularProgressBar = (ProgressBar) findViewById(16909205);
        if (this.mCircularProgressBar != null) {
            this.mCircularProgressBar.setVisibility(4);
        }
        return this.mCircularProgressBar;
    }

    private ProgressBar getHorizontalProgressBar(boolean z) {
        if (this.mHorizontalProgressBar != null) {
            return this.mHorizontalProgressBar;
        }
        if (this.mContentParent == null && z) {
            installDecor();
        }
        this.mHorizontalProgressBar = (ProgressBar) findViewById(16909206);
        if (this.mHorizontalProgressBar != null) {
            this.mHorizontalProgressBar.setVisibility(4);
        }
        return this.mHorizontalProgressBar;
    }

    private ImageView getRightIconView() {
        if (this.mRightIconView != null) {
            return this.mRightIconView;
        }
        if (this.mContentParent == null) {
            installDecor();
        }
        ImageView imageView = (ImageView) findViewById(16909239);
        this.mRightIconView = imageView;
        return imageView;
    }

    private void registerSwipeCallbacks(ViewGroup viewGroup) {
        if (!(viewGroup instanceof SwipeDismissLayout)) {
            Log.w(TAG, "contentParent is not a SwipeDismissLayout: " + viewGroup);
            return;
        }
        SwipeDismissLayout swipeDismissLayout = (SwipeDismissLayout) viewGroup;
        swipeDismissLayout.setOnDismissedListener(new SwipeDismissLayout.OnDismissedListener() { // from class: com.android.internal.policy.PhoneWindow.2
            @Override // com.android.internal.widget.SwipeDismissLayout.OnDismissedListener
            public void onDismissed(SwipeDismissLayout swipeDismissLayout2) {
                PhoneWindow.this.dispatchOnWindowSwipeDismissed();
                PhoneWindow.this.dispatchOnWindowDismissed(false, true);
            }
        });
        swipeDismissLayout.setOnSwipeProgressChangedListener(new SwipeDismissLayout.OnSwipeProgressChangedListener() { // from class: com.android.internal.policy.PhoneWindow.3
            @Override // com.android.internal.widget.SwipeDismissLayout.OnSwipeProgressChangedListener
            public void onSwipeProgressChanged(SwipeDismissLayout swipeDismissLayout2, float f, float f2) {
                WindowManager.LayoutParams attributes = PhoneWindow.this.getAttributes();
                attributes.x = (int) f2;
                attributes.alpha = f;
                PhoneWindow.this.setAttributes(attributes);
                PhoneWindow.this.setFlags(attributes.x == 0 ? 1024 : 512, 1536);
            }

            @Override // com.android.internal.widget.SwipeDismissLayout.OnSwipeProgressChangedListener
            public void onSwipeCancelled(SwipeDismissLayout swipeDismissLayout2) {
                WindowManager.LayoutParams attributes = PhoneWindow.this.getAttributes();
                if (attributes.x == 0 && attributes.alpha == 1.0f) {
                    return;
                }
                attributes.x = 0;
                attributes.alpha = 1.0f;
                PhoneWindow.this.setAttributes(attributes);
                PhoneWindow.this.setFlags(1024, 1536);
            }
        });
    }

    public void setCloseOnSwipeEnabled(boolean z) {
        if (hasFeature(11) && (this.mContentParent instanceof SwipeDismissLayout)) {
            ((SwipeDismissLayout) this.mContentParent).setDismissable(z);
        }
        super.setCloseOnSwipeEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callOnPanelClosed(int i, PanelFeatureState panelFeatureState, Menu menu) {
        Window.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        if (menu == null) {
            if (panelFeatureState == null && i >= 0 && i < this.mPanels.length) {
                panelFeatureState = this.mPanels[i];
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.menu;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.isOpen) && !isDestroyed()) {
            callback.onPanelClosed(i, menu);
        }
    }

    private boolean isTvUserSetupComplete() {
        return (Settings.Secure.getInt(getContext().getContentResolver(), "user_setup_complete", 0) != 0) & (Settings.Secure.getInt(getContext().getContentResolver(), "tv_user_setup_complete", 0) != 0);
    }

    private boolean launchDefaultSearch(KeyEvent keyEvent) {
        boolean z = false;
        if (getContext().getPackageManager().hasSystemFeature("android.software.leanback") && !isTvUserSetupComplete()) {
            return false;
        }
        Window.Callback callback = getCallback();
        if (callback != null && !isDestroyed()) {
            sendCloseSystemWindows("search");
            int deviceId = keyEvent.getDeviceId();
            try {
                z = callback.onSearchRequested(deviceId != 0 ? new SearchEvent(InputDevice.getDevice(deviceId)) : null);
            } catch (AbstractMethodError e) {
                Log.e(TAG, "WindowCallback " + callback.getClass().getName() + " does not implement method onSearchRequested(SearchEvent); fa", e);
                z = callback.onSearchRequested();
            }
        }
        if (z || (getContext().getResources().getConfiguration().uiMode & 15) != 4) {
            return z;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("android.intent.extra.ASSIST_INPUT_DEVICE_ID", keyEvent.getDeviceId());
        return ((SearchManager) getContext().getSystemService("search")).launchLegacyAssist(null, getContext().getUserId(), bundle);
    }

    @Override // android.view.Window
    public void setVolumeControlStream(int i) {
        this.mVolumeControlStreamType = i;
    }

    @Override // android.view.Window
    public int getVolumeControlStream() {
        return this.mVolumeControlStreamType;
    }

    @Override // android.view.Window
    public void setMediaController(MediaController mediaController) {
        this.mMediaController = mediaController;
    }

    @Override // android.view.Window
    public MediaController getMediaController() {
        return this.mMediaController;
    }

    @Override // android.view.Window
    public void setEnterTransition(Transition transition) {
        this.mEnterTransition = transition;
    }

    @Override // android.view.Window
    public void setReturnTransition(Transition transition) {
        this.mReturnTransition = transition;
    }

    @Override // android.view.Window
    public void setExitTransition(Transition transition) {
        this.mExitTransition = transition;
    }

    @Override // android.view.Window
    public void setReenterTransition(Transition transition) {
        this.mReenterTransition = transition;
    }

    @Override // android.view.Window
    public void setSharedElementEnterTransition(Transition transition) {
        this.mSharedElementEnterTransition = transition;
    }

    @Override // android.view.Window
    public void setSharedElementReturnTransition(Transition transition) {
        this.mSharedElementReturnTransition = transition;
    }

    @Override // android.view.Window
    public void setSharedElementExitTransition(Transition transition) {
        this.mSharedElementExitTransition = transition;
    }

    @Override // android.view.Window
    public void setSharedElementReenterTransition(Transition transition) {
        this.mSharedElementReenterTransition = transition;
    }

    @Override // android.view.Window
    public Transition getEnterTransition() {
        return this.mEnterTransition;
    }

    @Override // android.view.Window
    public Transition getReturnTransition() {
        return this.mReturnTransition == USE_DEFAULT_TRANSITION ? getEnterTransition() : this.mReturnTransition;
    }

    @Override // android.view.Window
    public Transition getExitTransition() {
        return this.mExitTransition;
    }

    @Override // android.view.Window
    public Transition getReenterTransition() {
        return this.mReenterTransition == USE_DEFAULT_TRANSITION ? getExitTransition() : this.mReenterTransition;
    }

    @Override // android.view.Window
    public Transition getSharedElementEnterTransition() {
        return this.mSharedElementEnterTransition;
    }

    @Override // android.view.Window
    public Transition getSharedElementReturnTransition() {
        return this.mSharedElementReturnTransition == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : this.mSharedElementReturnTransition;
    }

    @Override // android.view.Window
    public Transition getSharedElementExitTransition() {
        return this.mSharedElementExitTransition;
    }

    @Override // android.view.Window
    public Transition getSharedElementReenterTransition() {
        return this.mSharedElementReenterTransition == USE_DEFAULT_TRANSITION ? getSharedElementExitTransition() : this.mSharedElementReenterTransition;
    }

    @Override // android.view.Window
    public void setAllowEnterTransitionOverlap(boolean z) {
        this.mAllowEnterTransitionOverlap = Boolean.valueOf(z);
    }

    @Override // android.view.Window
    public boolean getAllowEnterTransitionOverlap() {
        if (this.mAllowEnterTransitionOverlap == null) {
            return true;
        }
        return this.mAllowEnterTransitionOverlap.booleanValue();
    }

    @Override // android.view.Window
    public void setAllowReturnTransitionOverlap(boolean z) {
        this.mAllowReturnTransitionOverlap = Boolean.valueOf(z);
    }

    @Override // android.view.Window
    public boolean getAllowReturnTransitionOverlap() {
        if (this.mAllowReturnTransitionOverlap == null) {
            return true;
        }
        return this.mAllowReturnTransitionOverlap.booleanValue();
    }

    @Override // android.view.Window
    public long getTransitionBackgroundFadeDuration() {
        if (this.mBackgroundFadeDurationMillis < 0) {
            return 300L;
        }
        return this.mBackgroundFadeDurationMillis;
    }

    @Override // android.view.Window
    public void setTransitionBackgroundFadeDuration(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("negative durations are not allowed");
        }
        this.mBackgroundFadeDurationMillis = j;
    }

    @Override // android.view.Window
    public void setSharedElementsUseOverlay(boolean z) {
        this.mSharedElementsUseOverlay = Boolean.valueOf(z);
    }

    @Override // android.view.Window
    public boolean getSharedElementsUseOverlay() {
        if (this.mSharedElementsUseOverlay == null) {
            return true;
        }
        return this.mSharedElementsUseOverlay.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class DrawableFeatureState {
        Drawable child;
        Drawable cur;
        Drawable def;
        final int featureId;
        Drawable local;
        int resid;
        Uri uri;
        int alpha = 255;
        int curAlpha = 255;

        DrawableFeatureState(int i) {
            this.featureId = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class PanelFeatureState {
        int background;
        View createdPanelView;
        DecorView decorView;
        int featureId;
        Bundle frozenActionViewState;
        Bundle frozenMenuState;
        int fullBackground;
        int gravity;
        IconMenuPresenter iconMenuPresenter;
        boolean isCompact;
        boolean isHandled;
        boolean isInExpandedMode;
        boolean isOpen;
        boolean isPrepared;
        ListMenuPresenter listMenuPresenter;
        int listPresenterTheme;
        MenuBuilder menu;
        public boolean qwertyMode;
        boolean refreshDecorView = false;
        boolean refreshMenuContent;
        View shownPanelView;
        boolean wasLastExpanded;
        boolean wasLastOpen;
        int windowAnimations;
        int x;
        int y;

        PanelFeatureState(int i) {
            this.featureId = i;
        }

        public boolean isInListMode() {
            return this.isInExpandedMode || this.isCompact;
        }

        public boolean hasPanelItems() {
            if (this.shownPanelView == null) {
                return false;
            }
            if (this.createdPanelView != null) {
                return true;
            }
            return (this.isCompact || this.isInExpandedMode) ? this.listMenuPresenter.getAdapter().getCount() > 0 : ((ViewGroup) this.shownPanelView).getChildCount() > 0;
        }

        public void clearMenuPresenters() {
            if (this.menu != null) {
                this.menu.removeMenuPresenter(this.iconMenuPresenter);
                this.menu.removeMenuPresenter(this.listMenuPresenter);
            }
            this.iconMenuPresenter = null;
            this.listMenuPresenter = null;
        }

        void setStyle(Context context) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.styleable.Theme);
            this.background = obtainStyledAttributes.getResourceId(46, 0);
            this.fullBackground = obtainStyledAttributes.getResourceId(47, 0);
            this.windowAnimations = obtainStyledAttributes.getResourceId(93, 0);
            this.isCompact = obtainStyledAttributes.getBoolean(309, false);
            this.listPresenterTheme = obtainStyledAttributes.getResourceId(310, 16974819);
            obtainStyledAttributes.recycle();
        }

        void setMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == this.menu) {
                return;
            }
            if (this.menu != null) {
                this.menu.removeMenuPresenter(this.iconMenuPresenter);
                this.menu.removeMenuPresenter(this.listMenuPresenter);
            }
            this.menu = menuBuilder;
            if (menuBuilder != null) {
                if (this.iconMenuPresenter != null) {
                    menuBuilder.addMenuPresenter(this.iconMenuPresenter);
                }
                if (this.listMenuPresenter != null) {
                    menuBuilder.addMenuPresenter(this.listMenuPresenter);
                }
            }
        }

        MenuView getListMenuView(Context context, MenuPresenter.Callback callback) {
            if (this.menu == null) {
                return null;
            }
            if (!this.isCompact) {
                getIconMenuView(context, callback);
            }
            if (this.listMenuPresenter == null) {
                this.listMenuPresenter = new ListMenuPresenter(17367170, this.listPresenterTheme);
                this.listMenuPresenter.setCallback(callback);
                this.listMenuPresenter.setId(16909033);
                this.menu.addMenuPresenter(this.listMenuPresenter);
            }
            if (this.iconMenuPresenter != null) {
                this.listMenuPresenter.setItemIndexOffset(this.iconMenuPresenter.getNumActualItemsShown());
            }
            return this.listMenuPresenter.getMenuView(this.decorView);
        }

        MenuView getIconMenuView(Context context, MenuPresenter.Callback callback) {
            if (this.menu == null) {
                return null;
            }
            if (this.iconMenuPresenter == null) {
                this.iconMenuPresenter = new IconMenuPresenter(context);
                this.iconMenuPresenter.setCallback(callback);
                this.iconMenuPresenter.setId(16908957);
                this.menu.addMenuPresenter(this.iconMenuPresenter);
            }
            return this.iconMenuPresenter.getMenuView(this.decorView);
        }

        Parcelable onSaveInstanceState() {
            SavedState savedState = new SavedState();
            savedState.featureId = this.featureId;
            savedState.isOpen = this.isOpen;
            savedState.isInExpandedMode = this.isInExpandedMode;
            if (this.menu != null) {
                savedState.menuState = new Bundle();
                this.menu.savePresenterStates(savedState.menuState);
            }
            return savedState;
        }

        void onRestoreInstanceState(Parcelable parcelable) {
            SavedState savedState = (SavedState) parcelable;
            this.featureId = savedState.featureId;
            this.wasLastOpen = savedState.isOpen;
            this.wasLastExpanded = savedState.isInExpandedMode;
            this.frozenMenuState = savedState.menuState;
            this.createdPanelView = null;
            this.shownPanelView = null;
            this.decorView = null;
        }

        void applyFrozenState() {
            if (this.menu == null || this.frozenMenuState == null) {
                return;
            }
            this.menu.restorePresenterStates(this.frozenMenuState);
            this.frozenMenuState = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes3.dex */
        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.internal.policy.PhoneWindow.PanelFeatureState.SavedState.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
            int featureId;
            boolean isInExpandedMode;
            boolean isOpen;
            Bundle menuState;

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            private SavedState() {
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                parcel.writeInt(this.isInExpandedMode ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static SavedState readFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                savedState.isOpen = parcel.readInt() == 1;
                savedState.isInExpandedMode = parcel.readInt() == 1;
                if (savedState.isOpen) {
                    savedState.menuState = parcel.readBundle();
                }
                return savedState;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class RotationWatcher extends IRotationWatcher.Stub {
        private Handler mHandler;
        private boolean mIsWatching;
        private final Runnable mRotationChanged = new Runnable() { // from class: com.android.internal.policy.PhoneWindow.RotationWatcher.1
            @Override // java.lang.Runnable
            public void run() {
                RotationWatcher.this.dispatchRotationChanged();
            }
        };
        private final ArrayList<WeakReference<PhoneWindow>> mWindows = new ArrayList<>();

        RotationWatcher() {
        }

        public void onRotationChanged(int i) throws RemoteException {
            this.mHandler.post(this.mRotationChanged);
        }

        public void addWindow(PhoneWindow phoneWindow) {
            synchronized (this.mWindows) {
                if (!this.mIsWatching) {
                    try {
                        WindowManagerHolder.sWindowManager.watchRotation(this, phoneWindow.getContext().getDisplay().getDisplayId());
                        this.mHandler = new Handler();
                        this.mIsWatching = true;
                    } catch (RemoteException e) {
                        Log.e(PhoneWindow.TAG, "Couldn't start watching for device rotation", e);
                    }
                }
                this.mWindows.add(new WeakReference<>(phoneWindow));
            }
        }

        public void removeWindow(PhoneWindow phoneWindow) {
            synchronized (this.mWindows) {
                int i = 0;
                while (i < this.mWindows.size()) {
                    PhoneWindow phoneWindow2 = this.mWindows.get(i).get();
                    if (phoneWindow2 != null && phoneWindow2 != phoneWindow) {
                        i++;
                    }
                    this.mWindows.remove(i);
                }
            }
        }

        void dispatchRotationChanged() {
            synchronized (this.mWindows) {
                int i = 0;
                while (i < this.mWindows.size()) {
                    PhoneWindow phoneWindow = this.mWindows.get(i).get();
                    if (phoneWindow != null) {
                        phoneWindow.onOptionsPanelRotationChanged();
                        i++;
                    } else {
                        this.mWindows.remove(i);
                    }
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class PhoneWindowMenuCallback implements MenuBuilder.Callback, MenuPresenter.Callback {
        private static final int FEATURE_ID = 6;
        private boolean mShowDialogForSubmenu;
        private MenuDialogHelper mSubMenuHelper;
        private final PhoneWindow mWindow;

        @Override // com.android.internal.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }

        public PhoneWindowMenuCallback(PhoneWindow phoneWindow) {
            this.mWindow = phoneWindow;
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder.getRootMenu() != menuBuilder) {
                onCloseSubMenu(menuBuilder);
            }
            if (z) {
                Window.Callback callback = this.mWindow.getCallback();
                if (callback != null && !this.mWindow.isDestroyed()) {
                    callback.onPanelClosed(6, menuBuilder);
                }
                if (menuBuilder == this.mWindow.mContextMenu) {
                    this.mWindow.dismissContextMenu();
                }
                if (this.mSubMenuHelper != null) {
                    this.mSubMenuHelper.dismiss();
                    this.mSubMenuHelper = null;
                }
            }
        }

        private void onCloseSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback = this.mWindow.getCallback();
            if (callback == null || this.mWindow.isDestroyed()) {
                return;
            }
            callback.onPanelClosed(6, menuBuilder.getRootMenu());
        }

        @Override // com.android.internal.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            Window.Callback callback = this.mWindow.getCallback();
            return (callback == null || this.mWindow.isDestroyed() || !callback.onMenuItemSelected(6, menuItem)) ? false : true;
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            menuBuilder.setCallback(this);
            if (!this.mShowDialogForSubmenu) {
                return false;
            }
            this.mSubMenuHelper = new MenuDialogHelper(menuBuilder);
            this.mSubMenuHelper.show(null);
            return true;
        }

        public void setShowDialogForSubmenu(boolean z) {
            this.mShowDialogForSubmenu = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getLocalFeaturesPrivate() {
        return super.getLocalFeatures();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.Window
    public void setDefaultWindowFormat(int i) {
        super.setDefaultWindowFormat(i);
    }

    void sendCloseSystemWindows() {
        sendCloseSystemWindows(getContext(), null);
    }

    void sendCloseSystemWindows(String str) {
        sendCloseSystemWindows(getContext(), str);
    }

    public static void sendCloseSystemWindows(Context context, String str) {
        if (ActivityManager.isSystemReady()) {
            try {
                ActivityManager.getService().closeSystemDialogs(str);
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.view.Window
    public int getStatusBarColor() {
        return this.mStatusBarColor;
    }

    @Override // android.view.Window
    public void setStatusBarColor(int i) {
        this.mStatusBarColor = i;
        this.mForcedStatusBarColor = true;
        if (this.mDecor != null) {
            this.mDecor.updateColorViews(null, false);
        }
    }

    @Override // android.view.Window
    public int getNavigationBarColor() {
        return this.mNavigationBarColor;
    }

    @Override // android.view.Window
    public void setNavigationBarColor(int i) {
        this.mNavigationBarColor = i;
        this.mForcedNavigationBarColor = true;
        if (this.mDecor != null) {
            this.mDecor.updateColorViews(null, false);
        }
    }

    @Override // android.view.Window
    public void setNavigationBarDividerColor(int i) {
        this.mNavigationBarDividerColor = i;
        if (this.mDecor != null) {
            this.mDecor.updateColorViews(null, false);
        }
    }

    @Override // android.view.Window
    public int getNavigationBarDividerColor() {
        return this.mNavigationBarDividerColor;
    }

    public void setIsStartingWindow(boolean z) {
        this.mIsStartingWindow = z;
    }

    public void setTheme(int i) {
        this.mTheme = i;
        if (this.mDecor != null) {
            Context context = this.mDecor.getContext();
            if (context instanceof DecorContext) {
                context.setTheme(i);
            }
        }
    }

    @Override // android.view.Window
    public void setResizingCaptionDrawable(Drawable drawable) {
        this.mDecor.setUserCaptionBackgroundDrawable(drawable);
    }

    @Override // android.view.Window
    public void setDecorCaptionShade(int i) {
        this.mDecorCaptionShade = i;
        if (this.mDecor != null) {
            this.mDecor.updateDecorCaptionShade();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getDecorCaptionShade() {
        return this.mDecorCaptionShade;
    }

    @Override // android.view.Window
    public void setAttributes(WindowManager.LayoutParams layoutParams) {
        super.setAttributes(layoutParams);
        if (this.mDecor != null) {
            this.mDecor.updateLogTag(layoutParams);
        }
    }
}
