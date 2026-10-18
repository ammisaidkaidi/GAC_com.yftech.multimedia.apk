package android.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.IBinder;
import android.transition.Transition;
import android.transition.TransitionInflater;
import android.transition.TransitionListenerAdapter;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import java.lang.ref.WeakReference;
import java.util.List;

/* loaded from: /home/user/work/dex/classes2.dex */
public class PopupWindow {
    private static final int[] ABOVE_ANCHOR_STATE_SET = {R.attr.state_above_anchor};
    private static final int ANIMATION_STYLE_DEFAULT = -1;
    private static final int DEFAULT_ANCHORED_GRAVITY = 8388659;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    private boolean mAboveAnchor;
    private Drawable mAboveAnchorBackgroundDrawable;
    private boolean mAllowScrollingAnchorParent;
    private WeakReference<View> mAnchor;
    private WeakReference<View> mAnchorRoot;
    private int mAnchorXoff;
    private int mAnchorYoff;
    private int mAnchoredGravity;
    private int mAnimationStyle;
    private boolean mAttachedInDecor;
    private boolean mAttachedInDecorSet;
    private Drawable mBackground;
    private View mBackgroundView;
    private Drawable mBelowAnchorBackgroundDrawable;
    private boolean mClipToScreen;
    private boolean mClippingEnabled;
    private View mContentView;
    private Context mContext;
    private PopupDecorView mDecorView;
    private float mElevation;
    private Transition mEnterTransition;
    private Rect mEpicenterBounds;
    private Transition mExitTransition;
    private boolean mFocusable;
    private int mGravity;
    private int mHeight;
    private int mHeightMode;
    private boolean mIgnoreCheekPress;
    private int mInputMethodMode;
    private boolean mIsAnchorRootAttached;
    private boolean mIsDropdown;
    private boolean mIsShowing;
    private boolean mIsTransitioningToDismiss;
    private int mLastHeight;
    private int mLastWidth;
    private boolean mLayoutInScreen;
    private boolean mLayoutInsetDecor;
    private boolean mNotTouchModal;
    private final View.OnAttachStateChangeListener mOnAnchorDetachedListener;
    private final View.OnAttachStateChangeListener mOnAnchorRootDetachedListener;
    private OnDismissListener mOnDismissListener;
    private final View.OnLayoutChangeListener mOnLayoutChangeListener;
    private final ViewTreeObserver.OnScrollChangedListener mOnScrollChangedListener;
    private boolean mOutsideTouchable;
    private boolean mOverlapAnchor;
    private WeakReference<View> mParentRootView;
    private boolean mPopupViewInitialLayoutDirectionInherited;
    private int mSoftInputMode;
    private int mSplitTouchEnabled;
    private final Rect mTempRect;
    private final int[] mTmpAppLocation;
    private final int[] mTmpDrawingLocation;
    private final int[] mTmpScreenLocation;
    private View.OnTouchListener mTouchInterceptor;
    private boolean mTouchable;
    private int mWidth;
    private int mWidthMode;
    private int mWindowLayoutType;
    private WindowManager mWindowManager;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface OnDismissListener {
        void onDismiss();
    }

    public PopupWindow(Context context) {
        this(context, (AttributeSet) null);
    }

    public PopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.popupWindowStyle);
    }

    public PopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public PopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        Transition mo6clone;
        this.mTmpDrawingLocation = new int[2];
        this.mTmpScreenLocation = new int[2];
        this.mTmpAppLocation = new int[2];
        this.mTempRect = new Rect();
        this.mInputMethodMode = 0;
        this.mSoftInputMode = 1;
        this.mTouchable = true;
        this.mOutsideTouchable = false;
        this.mClippingEnabled = true;
        this.mSplitTouchEnabled = -1;
        this.mAllowScrollingAnchorParent = true;
        this.mLayoutInsetDecor = false;
        this.mAttachedInDecor = true;
        this.mAttachedInDecorSet = false;
        this.mWidth = -2;
        this.mHeight = -2;
        this.mWindowLayoutType = 1000;
        this.mIgnoreCheekPress = false;
        this.mAnimationStyle = -1;
        this.mGravity = 0;
        this.mOnAnchorDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                PopupWindow.this.alignToAnchor();
            }
        };
        this.mOnAnchorRootDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                PopupWindow.this.mIsAnchorRootAttached = false;
            }
        };
        this.mOnScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.widget.-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                PopupWindow.this.alignToAnchor();
            }
        };
        this.mOnLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: android.widget.-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                PopupWindow.this.alignToAnchor();
            }
        };
        this.mContext = context;
        this.mWindowManager = (WindowManager) context.getSystemService("window");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.PopupWindow, i, i2);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        this.mElevation = obtainStyledAttributes.getDimension(3, 0.0f);
        this.mOverlapAnchor = obtainStyledAttributes.getBoolean(2, false);
        if (obtainStyledAttributes.hasValueOrEmpty(1)) {
            int resourceId = obtainStyledAttributes.getResourceId(1, 0);
            if (resourceId == 16974588) {
                this.mAnimationStyle = -1;
            } else {
                this.mAnimationStyle = resourceId;
            }
        } else {
            this.mAnimationStyle = -1;
        }
        Transition transition = getTransition(obtainStyledAttributes.getResourceId(4, 0));
        if (obtainStyledAttributes.hasValueOrEmpty(5)) {
            mo6clone = getTransition(obtainStyledAttributes.getResourceId(5, 0));
        } else {
            mo6clone = transition == null ? null : transition.mo6clone();
        }
        obtainStyledAttributes.recycle();
        setEnterTransition(transition);
        setExitTransition(mo6clone);
        setBackgroundDrawable(drawable);
    }

    public PopupWindow() {
        this((View) null, 0, 0);
    }

    public PopupWindow(View view) {
        this(view, 0, 0);
    }

    public PopupWindow(int i, int i2) {
        this((View) null, i, i2);
    }

    public PopupWindow(View view, int i, int i2) {
        this(view, i, i2, false);
    }

    public PopupWindow(View view, int i, int i2, boolean z) {
        this.mTmpDrawingLocation = new int[2];
        this.mTmpScreenLocation = new int[2];
        this.mTmpAppLocation = new int[2];
        this.mTempRect = new Rect();
        this.mInputMethodMode = 0;
        this.mSoftInputMode = 1;
        this.mTouchable = true;
        this.mOutsideTouchable = false;
        this.mClippingEnabled = true;
        this.mSplitTouchEnabled = -1;
        this.mAllowScrollingAnchorParent = true;
        this.mLayoutInsetDecor = false;
        this.mAttachedInDecor = true;
        this.mAttachedInDecorSet = false;
        this.mWidth = -2;
        this.mHeight = -2;
        this.mWindowLayoutType = 1000;
        this.mIgnoreCheekPress = false;
        this.mAnimationStyle = -1;
        this.mGravity = 0;
        this.mOnAnchorDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                PopupWindow.this.alignToAnchor();
            }
        };
        this.mOnAnchorRootDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.2
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                PopupWindow.this.mIsAnchorRootAttached = false;
            }
        };
        this.mOnScrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: android.widget.-$$Lambda$PopupWindow$nV1HS3Nc6Ck5JRIbIHe3mkyHWzc
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                PopupWindow.this.alignToAnchor();
            }
        };
        this.mOnLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: android.widget.-$$Lambda$PopupWindow$8Gc2stI5cSJZbuKX7X4Qr_vU2nI
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                PopupWindow.this.alignToAnchor();
            }
        };
        if (view != null) {
            this.mContext = view.getContext();
            this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        }
        setContentView(view);
        setWidth(i);
        setHeight(i2);
        setFocusable(z);
    }

    public void setEnterTransition(Transition transition) {
        this.mEnterTransition = transition;
    }

    public Transition getEnterTransition() {
        return this.mEnterTransition;
    }

    public void setExitTransition(Transition transition) {
        this.mExitTransition = transition;
    }

    public Transition getExitTransition() {
        return this.mExitTransition;
    }

    public void setEpicenterBounds(Rect rect) {
        this.mEpicenterBounds = rect;
    }

    private Transition getTransition(int i) {
        Transition inflateTransition;
        if (i == 0 || i == 17760256 || (inflateTransition = TransitionInflater.from(this.mContext).inflateTransition(i)) == null) {
            return null;
        }
        if ((inflateTransition instanceof TransitionSet) && ((TransitionSet) inflateTransition).getTransitionCount() == 0) {
            return null;
        }
        return inflateTransition;
    }

    public Drawable getBackground() {
        return this.mBackground;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.mBackground = drawable;
        if (this.mBackground instanceof StateListDrawable) {
            StateListDrawable stateListDrawable = (StateListDrawable) this.mBackground;
            int stateDrawableIndex = stateListDrawable.getStateDrawableIndex(ABOVE_ANCHOR_STATE_SET);
            int stateCount = stateListDrawable.getStateCount();
            int i = 0;
            while (true) {
                if (i >= stateCount) {
                    i = -1;
                    break;
                } else if (i != stateDrawableIndex) {
                    break;
                } else {
                    i++;
                }
            }
            if (stateDrawableIndex != -1 && i != -1) {
                this.mAboveAnchorBackgroundDrawable = stateListDrawable.getStateDrawable(stateDrawableIndex);
                this.mBelowAnchorBackgroundDrawable = stateListDrawable.getStateDrawable(i);
            } else {
                this.mBelowAnchorBackgroundDrawable = null;
                this.mAboveAnchorBackgroundDrawable = null;
            }
        }
    }

    public float getElevation() {
        return this.mElevation;
    }

    public void setElevation(float f) {
        this.mElevation = f;
    }

    public int getAnimationStyle() {
        return this.mAnimationStyle;
    }

    public void setIgnoreCheekPress() {
        this.mIgnoreCheekPress = true;
    }

    public void setAnimationStyle(int i) {
        this.mAnimationStyle = i;
    }

    public View getContentView() {
        return this.mContentView;
    }

    public void setContentView(View view) {
        if (isShowing()) {
            return;
        }
        this.mContentView = view;
        if (this.mContext == null && this.mContentView != null) {
            this.mContext = this.mContentView.getContext();
        }
        if (this.mWindowManager == null && this.mContentView != null) {
            this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        }
        if (this.mContext == null || this.mAttachedInDecorSet) {
            return;
        }
        setAttachedInDecor(this.mContext.getApplicationInfo().targetSdkVersion >= 22);
    }

    public void setTouchInterceptor(View.OnTouchListener onTouchListener) {
        this.mTouchInterceptor = onTouchListener;
    }

    public boolean isFocusable() {
        return this.mFocusable;
    }

    public void setFocusable(boolean z) {
        this.mFocusable = z;
    }

    public int getInputMethodMode() {
        return this.mInputMethodMode;
    }

    public void setInputMethodMode(int i) {
        this.mInputMethodMode = i;
    }

    public void setSoftInputMode(int i) {
        this.mSoftInputMode = i;
    }

    public int getSoftInputMode() {
        return this.mSoftInputMode;
    }

    public boolean isTouchable() {
        return this.mTouchable;
    }

    public void setTouchable(boolean z) {
        this.mTouchable = z;
    }

    public boolean isOutsideTouchable() {
        return this.mOutsideTouchable;
    }

    public void setOutsideTouchable(boolean z) {
        this.mOutsideTouchable = z;
    }

    public boolean isClippingEnabled() {
        return this.mClippingEnabled;
    }

    public void setClippingEnabled(boolean z) {
        this.mClippingEnabled = z;
    }

    public void setClipToScreenEnabled(boolean z) {
        this.mClipToScreen = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAllowScrollingAnchorParent(boolean z) {
        this.mAllowScrollingAnchorParent = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean getAllowScrollingAnchorParent() {
        return this.mAllowScrollingAnchorParent;
    }

    public boolean isSplitTouchEnabled() {
        return (this.mSplitTouchEnabled >= 0 || this.mContext == null) ? this.mSplitTouchEnabled == 1 : this.mContext.getApplicationInfo().targetSdkVersion >= 11;
    }

    public void setSplitTouchEnabled(boolean z) {
        this.mSplitTouchEnabled = z ? 1 : 0;
    }

    public boolean isLayoutInScreenEnabled() {
        return this.mLayoutInScreen;
    }

    public void setLayoutInScreenEnabled(boolean z) {
        this.mLayoutInScreen = z;
    }

    public boolean isAttachedInDecor() {
        return this.mAttachedInDecor;
    }

    public void setAttachedInDecor(boolean z) {
        this.mAttachedInDecor = z;
        this.mAttachedInDecorSet = true;
    }

    public void setLayoutInsetDecor(boolean z) {
        this.mLayoutInsetDecor = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isLayoutInsetDecor() {
        return this.mLayoutInsetDecor;
    }

    public void setWindowLayoutType(int i) {
        this.mWindowLayoutType = i;
    }

    public int getWindowLayoutType() {
        return this.mWindowLayoutType;
    }

    public void setTouchModal(boolean z) {
        this.mNotTouchModal = !z;
    }

    @Deprecated
    public void setWindowLayoutMode(int i, int i2) {
        this.mWidthMode = i;
        this.mHeightMode = i2;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public void setHeight(int i) {
        this.mHeight = i;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void setWidth(int i) {
        this.mWidth = i;
    }

    public void setOverlapAnchor(boolean z) {
        this.mOverlapAnchor = z;
    }

    public boolean getOverlapAnchor() {
        return this.mOverlapAnchor;
    }

    public boolean isShowing() {
        return this.mIsShowing;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setShowing(boolean z) {
        this.mIsShowing = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setDropDown(boolean z) {
        this.mIsDropdown = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setTransitioningToDismiss(boolean z) {
        this.mIsTransitioningToDismiss = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean isTransitioningToDismiss() {
        return this.mIsTransitioningToDismiss;
    }

    public void showAtLocation(View view, int i, int i2, int i3) {
        this.mParentRootView = new WeakReference<>(view.getRootView());
        showAtLocation(view.getWindowToken(), i, i2, i3);
    }

    public void showAtLocation(IBinder iBinder, int i, int i2, int i3) {
        if (isShowing() || this.mContentView == null) {
            return;
        }
        TransitionManager.endTransitions(this.mDecorView);
        detachFromAnchor();
        this.mIsShowing = true;
        this.mIsDropdown = false;
        this.mGravity = i;
        WindowManager.LayoutParams createPopupLayoutParams = createPopupLayoutParams(iBinder);
        preparePopup(createPopupLayoutParams);
        createPopupLayoutParams.x = i2;
        createPopupLayoutParams.y = i3;
        invokePopup(createPopupLayoutParams);
    }

    public void showAsDropDown(View view) {
        showAsDropDown(view, 0, 0);
    }

    public void showAsDropDown(View view, int i, int i2) {
        showAsDropDown(view, i, i2, DEFAULT_ANCHORED_GRAVITY);
    }

    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (isShowing() || !hasContentView()) {
            return;
        }
        TransitionManager.endTransitions(this.mDecorView);
        attachToAnchor(view, i, i2, i3);
        this.mIsShowing = true;
        this.mIsDropdown = true;
        WindowManager.LayoutParams createPopupLayoutParams = createPopupLayoutParams(view.getApplicationWindowToken());
        preparePopup(createPopupLayoutParams);
        updateAboveAnchor(findDropDownPosition(view, createPopupLayoutParams, i, i2, createPopupLayoutParams.width, createPopupLayoutParams.height, i3, this.mAllowScrollingAnchorParent));
        createPopupLayoutParams.accessibilityIdOfAnchor = view != null ? view.getAccessibilityViewId() : -1L;
        invokePopup(createPopupLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void updateAboveAnchor(boolean z) {
        if (z != this.mAboveAnchor) {
            this.mAboveAnchor = z;
            if (this.mBackground == null || this.mBackgroundView == null) {
                return;
            }
            if (this.mAboveAnchorBackgroundDrawable != null) {
                if (this.mAboveAnchor) {
                    this.mBackgroundView.setBackground(this.mAboveAnchorBackgroundDrawable);
                    return;
                } else {
                    this.mBackgroundView.setBackground(this.mBelowAnchorBackgroundDrawable);
                    return;
                }
            }
            this.mBackgroundView.refreshDrawableState();
        }
    }

    public boolean isAboveAnchor() {
        return this.mAboveAnchor;
    }

    private void preparePopup(WindowManager.LayoutParams layoutParams) {
        if (this.mContentView == null || this.mContext == null || this.mWindowManager == null) {
            throw new IllegalStateException("You must specify a valid content view by calling setContentView() before attempting to show the popup.");
        }
        if (layoutParams.accessibilityTitle == null) {
            layoutParams.accessibilityTitle = this.mContext.getString(R.string.notification_reply_button_accessibility);
        }
        if (this.mDecorView != null) {
            this.mDecorView.cancelTransitions();
        }
        if (this.mBackground != null) {
            this.mBackgroundView = createBackgroundView(this.mContentView);
            this.mBackgroundView.setBackground(this.mBackground);
        } else {
            this.mBackgroundView = this.mContentView;
        }
        this.mDecorView = createDecorView(this.mBackgroundView);
        this.mDecorView.setIsRootNamespace(true);
        this.mBackgroundView.setElevation(this.mElevation);
        layoutParams.setSurfaceInsets(this.mBackgroundView, true, true);
        this.mPopupViewInitialLayoutDirectionInherited = this.mContentView.getRawLayoutDirection() == 2;
    }

    private PopupBackgroundView createBackgroundView(View view) {
        ViewGroup.LayoutParams layoutParams = this.mContentView.getLayoutParams();
        int i = (layoutParams == null || layoutParams.height != -2) ? -1 : -2;
        PopupBackgroundView popupBackgroundView = new PopupBackgroundView(this.mContext);
        popupBackgroundView.addView(view, new FrameLayout.LayoutParams(-1, i));
        return popupBackgroundView;
    }

    private PopupDecorView createDecorView(View view) {
        ViewGroup.LayoutParams layoutParams = this.mContentView.getLayoutParams();
        int i = (layoutParams == null || layoutParams.height != -2) ? -1 : -2;
        PopupDecorView popupDecorView = new PopupDecorView(this.mContext);
        popupDecorView.addView(view, -1, i);
        popupDecorView.setClipChildren(false);
        popupDecorView.setClipToPadding(false);
        return popupDecorView;
    }

    private void invokePopup(WindowManager.LayoutParams layoutParams) {
        if (this.mContext != null) {
            layoutParams.packageName = this.mContext.getPackageName();
        }
        PopupDecorView popupDecorView = this.mDecorView;
        popupDecorView.setFitsSystemWindows(this.mLayoutInsetDecor);
        setLayoutDirectionFromAnchor();
        this.mWindowManager.addView(popupDecorView, layoutParams);
        if (this.mEnterTransition != null) {
            popupDecorView.requestEnterTransition(this.mEnterTransition);
        }
    }

    private void setLayoutDirectionFromAnchor() {
        View view;
        if (this.mAnchor == null || (view = this.mAnchor.get()) == null || !this.mPopupViewInitialLayoutDirectionInherited) {
            return;
        }
        this.mDecorView.setLayoutDirection(view.getLayoutDirection());
    }

    private int computeGravity() {
        int i = this.mGravity == 0 ? DEFAULT_ANCHORED_GRAVITY : this.mGravity;
        return this.mIsDropdown ? (this.mClipToScreen || this.mClippingEnabled) ? i | 268435456 : i : i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final WindowManager.LayoutParams createPopupLayoutParams(IBinder iBinder) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = computeGravity();
        layoutParams.flags = computeFlags(layoutParams.flags);
        layoutParams.type = this.mWindowLayoutType;
        layoutParams.token = iBinder;
        layoutParams.softInputMode = this.mSoftInputMode;
        layoutParams.windowAnimations = computeAnimationResource();
        if (this.mBackground != null) {
            layoutParams.format = this.mBackground.getOpacity();
        } else {
            layoutParams.format = -3;
        }
        if (this.mHeightMode < 0) {
            int i = this.mHeightMode;
            this.mLastHeight = i;
            layoutParams.height = i;
        } else {
            int i2 = this.mHeight;
            this.mLastHeight = i2;
            layoutParams.height = i2;
        }
        if (this.mWidthMode < 0) {
            int i3 = this.mWidthMode;
            this.mLastWidth = i3;
            layoutParams.width = i3;
        } else {
            int i4 = this.mWidth;
            this.mLastWidth = i4;
            layoutParams.width = i4;
        }
        layoutParams.privateFlags = 98304;
        layoutParams.setTitle("PopupWindow:" + Integer.toHexString(hashCode()));
        return layoutParams;
    }

    private int computeFlags(int i) {
        int i2 = i & (-8815129);
        if (this.mIgnoreCheekPress) {
            i2 |= 32768;
        }
        if (!this.mFocusable) {
            i2 |= 8;
            if (this.mInputMethodMode == 1) {
                i2 |= 131072;
            }
        } else if (this.mInputMethodMode == 2) {
            i2 |= 131072;
        }
        if (!this.mTouchable) {
            i2 |= 16;
        }
        if (this.mOutsideTouchable) {
            i2 |= 262144;
        }
        if (!this.mClippingEnabled || this.mClipToScreen) {
            i2 |= 512;
        }
        if (isSplitTouchEnabled()) {
            i2 |= 8388608;
        }
        if (this.mLayoutInScreen) {
            i2 |= 256;
        }
        if (this.mLayoutInsetDecor) {
            i2 |= 65536;
        }
        if (this.mNotTouchModal) {
            i2 |= 32;
        }
        return this.mAttachedInDecor ? i2 | 1073741824 : i2;
    }

    private int computeAnimationResource() {
        if (this.mAnimationStyle == -1) {
            if (this.mIsDropdown) {
                return this.mAboveAnchor ? R.style.AlertDialog.Material : R.style.AlertDialog.Leanback.Light;
            }
            return 0;
        }
        return this.mAnimationStyle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r13v4 */
    public boolean findDropDownPosition(View view, WindowManager.LayoutParams layoutParams, int i, int i2, int i3, int i4, int i5, boolean z) {
        char c;
        ?? r13;
        int height = view.getHeight();
        int width = view.getWidth();
        int i6 = this.mOverlapAnchor ? i2 - height : i2;
        int[] iArr = this.mTmpAppLocation;
        View appRootView = getAppRootView(view);
        appRootView.getLocationOnScreen(iArr);
        int[] iArr2 = this.mTmpScreenLocation;
        view.getLocationOnScreen(iArr2);
        int[] iArr3 = this.mTmpDrawingLocation;
        iArr3[0] = iArr2[0] - iArr[0];
        iArr3[1] = iArr2[1] - iArr[1];
        layoutParams.x = iArr3[0] + i;
        layoutParams.y = iArr3[1] + height + i6;
        Rect rect = new Rect();
        appRootView.getWindowVisibleDisplayFrame(rect);
        int i7 = i3;
        if (i7 == -1) {
            i7 = rect.right - rect.left;
        }
        int i8 = i7;
        int i9 = i4 == -1 ? rect.bottom - rect.top : i4;
        layoutParams.gravity = computeGravity();
        layoutParams.width = i8;
        layoutParams.height = i9;
        int absoluteGravity = Gravity.getAbsoluteGravity(i5, view.getLayoutDirection()) & 7;
        if (absoluteGravity == 5) {
            layoutParams.x -= i8 - width;
        }
        int i10 = i9;
        boolean tryFitVertical = tryFitVertical(layoutParams, i6, i9, height, iArr3[1], iArr2[1], rect.top, rect.bottom, false);
        boolean tryFitHorizontal = tryFitHorizontal(layoutParams, i, i8, width, iArr3[0], iArr2[0], rect.left, rect.right, false);
        if (tryFitVertical && tryFitHorizontal) {
            r13 = 1;
        } else {
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            Rect rect2 = new Rect(scrollX, scrollY, scrollX + i8 + i, scrollY + i10 + height + i6);
            if (z) {
                c = 1;
                if (view.requestRectangleOnScreen(rect2, true)) {
                    view.getLocationOnScreen(iArr2);
                    iArr3[0] = iArr2[0] - iArr[0];
                    iArr3[1] = iArr2[1] - iArr[1];
                    layoutParams.x = iArr3[0] + i;
                    layoutParams.y = iArr3[1] + height + i6;
                    if (absoluteGravity == 5) {
                        layoutParams.x -= i8 - width;
                    }
                }
            } else {
                c = 1;
            }
            r13 = c;
            tryFitVertical(layoutParams, i6, i10, height, iArr3[c], iArr2[c], rect.top, rect.bottom, this.mClipToScreen);
            tryFitHorizontal(layoutParams, i, i8, width, iArr3[0], iArr2[0], rect.left, rect.right, this.mClipToScreen);
        }
        if (layoutParams.y < iArr3[r13]) {
            return r13;
        }
        return false;
    }

    private boolean tryFitVertical(WindowManager.LayoutParams layoutParams, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        int i8 = layoutParams.y + (i5 - i4);
        int i9 = i7 - i8;
        if (i8 >= 0 && i2 <= i9) {
            return true;
        }
        if (i2 > (i8 - i3) - i6) {
            return positionInDisplayVertical(layoutParams, i2, i4, i5, i6, i7, z);
        }
        layoutParams.y = (i4 - i2) + (this.mOverlapAnchor ? i + i3 : i);
        return true;
    }

    private boolean positionInDisplayVertical(WindowManager.LayoutParams layoutParams, int i, int i2, int i3, int i4, int i5, boolean z) {
        boolean z2;
        int i6 = i3 - i2;
        layoutParams.y += i6;
        layoutParams.height = i;
        int i7 = layoutParams.y + i;
        if (i7 > i5) {
            layoutParams.y -= i7 - i5;
        }
        if (layoutParams.y < i4) {
            layoutParams.y = i4;
            int i8 = i5 - i4;
            if (z && i > i8) {
                layoutParams.height = i8;
            } else {
                z2 = false;
                layoutParams.y -= i6;
                return z2;
            }
        }
        z2 = true;
        layoutParams.y -= i6;
        return z2;
    }

    private boolean tryFitHorizontal(WindowManager.LayoutParams layoutParams, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        int i8 = layoutParams.x + (i5 - i4);
        int i9 = i7 - i8;
        if (i8 >= 0 && i2 <= i9) {
            return true;
        }
        return positionInDisplayHorizontal(layoutParams, i2, i4, i5, i6, i7, z);
    }

    private boolean positionInDisplayHorizontal(WindowManager.LayoutParams layoutParams, int i, int i2, int i3, int i4, int i5, boolean z) {
        boolean z2;
        int i6 = i3 - i2;
        layoutParams.x += i6;
        int i7 = layoutParams.x + i;
        if (i7 > i5) {
            layoutParams.x -= i7 - i5;
        }
        if (layoutParams.x < i4) {
            layoutParams.x = i4;
            int i8 = i5 - i4;
            if (z && i > i8) {
                layoutParams.width = i8;
            } else {
                z2 = false;
                layoutParams.x -= i6;
                return z2;
            }
        }
        z2 = true;
        layoutParams.x -= i6;
        return z2;
    }

    public int getMaxAvailableHeight(View view) {
        return getMaxAvailableHeight(view, 0);
    }

    public int getMaxAvailableHeight(View view, int i) {
        return getMaxAvailableHeight(view, i, false);
    }

    public int getMaxAvailableHeight(View view, int i, boolean z) {
        Rect rect;
        int height;
        Rect rect2 = new Rect();
        getAppRootView(view).getWindowVisibleDisplayFrame(rect2);
        if (z) {
            rect = new Rect();
            view.getWindowDisplayFrame(rect);
            rect.top = rect2.top;
            rect.right = rect2.right;
            rect.left = rect2.left;
        } else {
            rect = rect2;
        }
        int[] iArr = this.mTmpDrawingLocation;
        view.getLocationOnScreen(iArr);
        int i2 = rect.bottom;
        if (this.mOverlapAnchor) {
            height = (i2 - iArr[1]) - i;
        } else {
            height = (i2 - (iArr[1] + view.getHeight())) - i;
        }
        int max = Math.max(height, (iArr[1] - rect.top) + i);
        if (this.mBackground == null) {
            return max;
        }
        this.mBackground.getPadding(this.mTempRect);
        return max - (this.mTempRect.top + this.mTempRect.bottom);
    }

    public void dismiss() {
        if (!isShowing() || isTransitioningToDismiss()) {
            return;
        }
        final PopupDecorView popupDecorView = this.mDecorView;
        final View view = this.mContentView;
        ViewParent parent = view.getParent();
        final ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        popupDecorView.cancelTransitions();
        this.mIsShowing = false;
        this.mIsTransitioningToDismiss = true;
        Transition transition = this.mExitTransition;
        if (transition != null && popupDecorView.isLaidOut() && (this.mIsAnchorRootAttached || this.mAnchorRoot == null)) {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) popupDecorView.getLayoutParams();
            layoutParams.flags |= 16;
            layoutParams.flags |= 8;
            layoutParams.flags &= -131073;
            this.mWindowManager.updateViewLayout(popupDecorView, layoutParams);
            popupDecorView.startExitTransition(transition, this.mAnchorRoot != null ? this.mAnchorRoot.get() : null, getTransitionEpicenter(), new TransitionListenerAdapter() { // from class: android.widget.PopupWindow.3
                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition2) {
                    PopupWindow.this.dismissImmediate(popupDecorView, viewGroup, view);
                }
            });
        } else {
            dismissImmediate(popupDecorView, viewGroup, view);
        }
        detachFromAnchor();
        if (this.mOnDismissListener != null) {
            this.mOnDismissListener.onDismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Rect getTransitionEpicenter() {
        View view = this.mAnchor != null ? this.mAnchor.get() : null;
        PopupDecorView popupDecorView = this.mDecorView;
        if (view == null || popupDecorView == null) {
            return null;
        }
        int[] locationOnScreen = view.getLocationOnScreen();
        int[] locationOnScreen2 = this.mDecorView.getLocationOnScreen();
        Rect rect = new Rect(0, 0, view.getWidth(), view.getHeight());
        rect.offset(locationOnScreen[0] - locationOnScreen2[0], locationOnScreen[1] - locationOnScreen2[1]);
        if (this.mEpicenterBounds != null) {
            int i = rect.left;
            int i2 = rect.top;
            rect.set(this.mEpicenterBounds);
            rect.offset(i, i2);
        }
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissImmediate(View view, ViewGroup viewGroup, View view2) {
        if (view.getParent() != null) {
            this.mWindowManager.removeViewImmediate(view);
        }
        if (viewGroup != null) {
            viewGroup.removeView(view2);
        }
        this.mDecorView = null;
        this.mBackgroundView = null;
        this.mIsTransitioningToDismiss = false;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final OnDismissListener getOnDismissListener() {
        return this.mOnDismissListener;
    }

    public void update() {
        if (isShowing() && hasContentView()) {
            WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
            boolean z = false;
            int computeAnimationResource = computeAnimationResource();
            if (computeAnimationResource != decorViewLayoutParams.windowAnimations) {
                decorViewLayoutParams.windowAnimations = computeAnimationResource;
                z = true;
            }
            int computeFlags = computeFlags(decorViewLayoutParams.flags);
            if (computeFlags != decorViewLayoutParams.flags) {
                decorViewLayoutParams.flags = computeFlags;
                z = true;
            }
            int computeGravity = computeGravity();
            if (computeGravity != decorViewLayoutParams.gravity) {
                decorViewLayoutParams.gravity = computeGravity;
                z = true;
            }
            if (z) {
                update(this.mAnchor != null ? this.mAnchor.get() : null, decorViewLayoutParams);
            }
        }
    }

    protected void update(View view, WindowManager.LayoutParams layoutParams) {
        setLayoutDirectionFromAnchor();
        this.mWindowManager.updateViewLayout(this.mDecorView, layoutParams);
    }

    public void update(int i, int i2) {
        WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
        update(decorViewLayoutParams.x, decorViewLayoutParams.y, i, i2, false);
    }

    public void update(int i, int i2, int i3, int i4) {
        update(i, i2, i3, i4, false);
    }

    public void update(int i, int i2, int i3, int i4, boolean z) {
        if (i3 >= 0) {
            this.mLastWidth = i3;
            setWidth(i3);
        }
        if (i4 >= 0) {
            this.mLastHeight = i4;
            setHeight(i4);
        }
        if (isShowing() && hasContentView()) {
            WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
            int i5 = this.mWidthMode < 0 ? this.mWidthMode : this.mLastWidth;
            int i6 = -1;
            if (i3 != -1 && decorViewLayoutParams.width != i5) {
                this.mLastWidth = i5;
                decorViewLayoutParams.width = i5;
                z = true;
            }
            int i7 = this.mHeightMode < 0 ? this.mHeightMode : this.mLastHeight;
            if (i4 != -1 && decorViewLayoutParams.height != i7) {
                this.mLastHeight = i7;
                decorViewLayoutParams.height = i7;
                z = true;
            }
            if (decorViewLayoutParams.x != i) {
                decorViewLayoutParams.x = i;
                z = true;
            }
            if (decorViewLayoutParams.y != i2) {
                decorViewLayoutParams.y = i2;
                z = true;
            }
            int computeAnimationResource = computeAnimationResource();
            if (computeAnimationResource != decorViewLayoutParams.windowAnimations) {
                decorViewLayoutParams.windowAnimations = computeAnimationResource;
                z = true;
            }
            int computeFlags = computeFlags(decorViewLayoutParams.flags);
            if (computeFlags != decorViewLayoutParams.flags) {
                decorViewLayoutParams.flags = computeFlags;
                z = true;
            }
            int computeGravity = computeGravity();
            if (computeGravity != decorViewLayoutParams.gravity) {
                decorViewLayoutParams.gravity = computeGravity;
                z = true;
            }
            View view = null;
            if (this.mAnchor != null && this.mAnchor.get() != null) {
                view = this.mAnchor.get();
                i6 = view.getAccessibilityViewId();
            }
            long j = i6;
            if (j != decorViewLayoutParams.accessibilityIdOfAnchor) {
                decorViewLayoutParams.accessibilityIdOfAnchor = j;
                z = true;
            }
            if (z) {
                update(view, decorViewLayoutParams);
            }
        }
    }

    protected boolean hasContentView() {
        return this.mContentView != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasDecorView() {
        return this.mDecorView != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WindowManager.LayoutParams getDecorViewLayoutParams() {
        return (WindowManager.LayoutParams) this.mDecorView.getLayoutParams();
    }

    public void update(View view, int i, int i2) {
        update(view, false, 0, 0, i, i2);
    }

    public void update(View view, int i, int i2, int i3, int i4) {
        update(view, true, i, i2, i3, i4);
    }

    private void update(View view, boolean z, int i, int i2, int i3, int i4) {
        if (isShowing() && hasContentView()) {
            WeakReference<View> weakReference = this.mAnchor;
            int i5 = this.mAnchoredGravity;
            boolean z2 = z && !(this.mAnchorXoff == i && this.mAnchorYoff == i2);
            if (weakReference == null || weakReference.get() != view || (z2 && !this.mIsDropdown)) {
                attachToAnchor(view, i, i2, i5);
            } else if (z2) {
                this.mAnchorXoff = i;
                this.mAnchorYoff = i2;
            }
            WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
            int i6 = decorViewLayoutParams.gravity;
            int i7 = decorViewLayoutParams.width;
            int i8 = decorViewLayoutParams.height;
            int i9 = decorViewLayoutParams.x;
            int i10 = decorViewLayoutParams.y;
            int i11 = i3 < 0 ? this.mWidth : i3;
            int i12 = i4 < 0 ? this.mHeight : i4;
            updateAboveAnchor(findDropDownPosition(view, decorViewLayoutParams, this.mAnchorXoff, this.mAnchorYoff, i11, i12, i5, this.mAllowScrollingAnchorParent));
            boolean z3 = (i6 == decorViewLayoutParams.gravity && i9 == decorViewLayoutParams.x && i10 == decorViewLayoutParams.y && i7 == decorViewLayoutParams.width && i8 == decorViewLayoutParams.height) ? false : true;
            if (i11 >= 0) {
                i11 = decorViewLayoutParams.width;
            }
            update(decorViewLayoutParams.x, decorViewLayoutParams.y, i11, i12 < 0 ? i12 : decorViewLayoutParams.height, z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void detachFromAnchor() {
        View anchor = getAnchor();
        if (anchor != null) {
            anchor.getViewTreeObserver().removeOnScrollChangedListener(this.mOnScrollChangedListener);
            anchor.removeOnAttachStateChangeListener(this.mOnAnchorDetachedListener);
        }
        View view = this.mAnchorRoot != null ? this.mAnchorRoot.get() : null;
        if (view != null) {
            view.removeOnAttachStateChangeListener(this.mOnAnchorRootDetachedListener);
            view.removeOnLayoutChangeListener(this.mOnLayoutChangeListener);
        }
        this.mAnchor = null;
        this.mAnchorRoot = null;
        this.mIsAnchorRootAttached = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void attachToAnchor(View view, int i, int i2, int i3) {
        detachFromAnchor();
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver != null) {
            viewTreeObserver.addOnScrollChangedListener(this.mOnScrollChangedListener);
        }
        view.addOnAttachStateChangeListener(this.mOnAnchorDetachedListener);
        View rootView = view.getRootView();
        rootView.addOnAttachStateChangeListener(this.mOnAnchorRootDetachedListener);
        rootView.addOnLayoutChangeListener(this.mOnLayoutChangeListener);
        this.mAnchor = new WeakReference<>(view);
        this.mAnchorRoot = new WeakReference<>(rootView);
        this.mIsAnchorRootAttached = rootView.isAttachedToWindow();
        this.mParentRootView = this.mAnchorRoot;
        this.mAnchorXoff = i;
        this.mAnchorYoff = i2;
        this.mAnchoredGravity = i3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View getAnchor() {
        if (this.mAnchor != null) {
            return this.mAnchor.get();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void alignToAnchor() {
        View view = this.mAnchor != null ? this.mAnchor.get() : null;
        if (view != null && view.isAttachedToWindow() && hasDecorView()) {
            WindowManager.LayoutParams decorViewLayoutParams = getDecorViewLayoutParams();
            updateAboveAnchor(findDropDownPosition(view, decorViewLayoutParams, this.mAnchorXoff, this.mAnchorYoff, decorViewLayoutParams.width, decorViewLayoutParams.height, this.mAnchoredGravity, false));
            update(decorViewLayoutParams.x, decorViewLayoutParams.y, -1, -1, true);
        }
    }

    private View getAppRootView(View view) {
        View windowView = WindowManagerGlobal.getInstance().getWindowView(view.getApplicationWindowToken());
        return windowView != null ? windowView : view.getRootView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class PopupDecorView extends FrameLayout {
        private Runnable mCleanupAfterExit;
        private final View.OnAttachStateChangeListener mOnAnchorRootDetachedListener;

        public PopupDecorView(Context context) {
            super(context);
            this.mOnAnchorRootDetachedListener = new View.OnAttachStateChangeListener() { // from class: android.widget.PopupWindow.PopupDecorView.4
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view) {
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view) {
                    view.removeOnAttachStateChangeListener(this);
                    if (PopupDecorView.this.isAttachedToWindow()) {
                        TransitionManager.endTransitions(PopupDecorView.this);
                    }
                }
            };
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            KeyEvent.DispatcherState keyDispatcherState;
            if (keyEvent.getKeyCode() == 4) {
                if (getKeyDispatcherState() == null) {
                    return super.dispatchKeyEvent(keyEvent);
                }
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1 && (keyDispatcherState = getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent) && !keyEvent.isCanceled()) {
                    PopupWindow.this.dismiss();
                    return true;
                }
                return super.dispatchKeyEvent(keyEvent);
            }
            return super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (PopupWindow.this.mTouchInterceptor == null || !PopupWindow.this.mTouchInterceptor.onTouch(this, motionEvent)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            return true;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (motionEvent.getAction() == 0 && (x < 0 || x >= getWidth() || y < 0 || y >= getHeight())) {
                PopupWindow.this.dismiss();
                return true;
            }
            if (motionEvent.getAction() == 4) {
                PopupWindow.this.dismiss();
                return true;
            }
            return super.onTouchEvent(motionEvent);
        }

        public void requestEnterTransition(Transition transition) {
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver == null || transition == null) {
                return;
            }
            final Transition mo6clone = transition.mo6clone();
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: android.widget.PopupWindow.PopupDecorView.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    ViewTreeObserver viewTreeObserver2 = PopupDecorView.this.getViewTreeObserver();
                    if (viewTreeObserver2 != null) {
                        viewTreeObserver2.removeOnGlobalLayoutListener(this);
                    }
                    final Rect transitionEpicenter = PopupWindow.this.getTransitionEpicenter();
                    mo6clone.setEpicenterCallback(new Transition.EpicenterCallback() { // from class: android.widget.PopupWindow.PopupDecorView.1.1
                        @Override // android.transition.Transition.EpicenterCallback
                        public Rect onGetEpicenter(Transition transition2) {
                            return transitionEpicenter;
                        }
                    });
                    PopupDecorView.this.startEnterTransition(mo6clone);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void startEnterTransition(Transition transition) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                transition.addTarget(childAt);
                childAt.setTransitionVisibility(4);
            }
            TransitionManager.beginDelayedTransition(this, transition);
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).setTransitionVisibility(0);
            }
        }

        public void startExitTransition(final Transition transition, final View view, final Rect rect, final Transition.TransitionListener transitionListener) {
            if (transition == null) {
                return;
            }
            if (view != null) {
                view.addOnAttachStateChangeListener(this.mOnAnchorRootDetachedListener);
            }
            this.mCleanupAfterExit = new Runnable() { // from class: android.widget.-$$Lambda$PopupWindow$PopupDecorView$T99WKEnQefOCXbbKvW95WY38p_I
                @Override // java.lang.Runnable
                public final void run() {
                    PopupWindow.PopupDecorView.lambda$startExitTransition$0(PopupWindow.PopupDecorView.this, transitionListener, transition, view);
                }
            };
            Transition mo6clone = transition.mo6clone();
            mo6clone.addListener(new TransitionListenerAdapter() { // from class: android.widget.PopupWindow.PopupDecorView.2
                @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition2) {
                    transition2.removeListener(this);
                    if (PopupDecorView.this.mCleanupAfterExit != null) {
                        PopupDecorView.this.mCleanupAfterExit.run();
                    }
                }
            });
            mo6clone.setEpicenterCallback(new Transition.EpicenterCallback() { // from class: android.widget.PopupWindow.PopupDecorView.3
                @Override // android.transition.Transition.EpicenterCallback
                public Rect onGetEpicenter(Transition transition2) {
                    return rect;
                }
            });
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                mo6clone.addTarget(getChildAt(i));
            }
            TransitionManager.beginDelayedTransition(this, mo6clone);
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).setVisibility(4);
            }
        }

        public static /* synthetic */ void lambda$startExitTransition$0(PopupDecorView popupDecorView, Transition.TransitionListener transitionListener, Transition transition, View view) {
            transitionListener.onTransitionEnd(transition);
            if (view != null) {
                view.removeOnAttachStateChangeListener(popupDecorView.mOnAnchorRootDetachedListener);
            }
            popupDecorView.mCleanupAfterExit = null;
        }

        public void cancelTransitions() {
            TransitionManager.endTransitions(this);
            if (this.mCleanupAfterExit != null) {
                this.mCleanupAfterExit.run();
            }
        }

        @Override // android.view.View
        public void requestKeyboardShortcuts(List<KeyboardShortcutGroup> list, int i) {
            View view;
            if (PopupWindow.this.mParentRootView == null || (view = (View) PopupWindow.this.mParentRootView.get()) == null) {
                return;
            }
            view.requestKeyboardShortcuts(list, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class PopupBackgroundView extends FrameLayout {
        public PopupBackgroundView(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.ViewGroup, android.view.View
        public int[] onCreateDrawableState(int i) {
            if (PopupWindow.this.mAboveAnchor) {
                int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
                View.mergeDrawableStates(onCreateDrawableState, PopupWindow.ABOVE_ANCHOR_STATE_SET);
                return onCreateDrawableState;
            }
            return super.onCreateDrawableState(i);
        }
    }
}
