package android.view;

import android.animation.LayoutTransition;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.security.keystore.KeyProperties;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Pools;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LayoutAnimationController;
import android.view.animation.Transformation;
import android.view.autofill.Helper;
import com.android.internal.R;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class ViewGroup extends View implements ViewParent, ViewManager {
    private static final int ARRAY_CAPACITY_INCREMENT = 12;
    private static final int ARRAY_INITIAL_CAPACITY = 12;
    private static final int CHILD_LEFT_INDEX = 0;
    private static final int CHILD_TOP_INDEX = 1;
    protected static final int CLIP_TO_PADDING_MASK = 34;
    private static final boolean DBG = false;
    private static final int FLAG_ADD_STATES_FROM_CHILDREN = 8192;

    @Deprecated
    private static final int FLAG_ALWAYS_DRAWN_WITH_CACHE = 16384;

    @Deprecated
    private static final int FLAG_ANIMATION_CACHE = 64;
    static final int FLAG_ANIMATION_DONE = 16;

    @Deprecated
    private static final int FLAG_CHILDREN_DRAWN_WITH_CACHE = 32768;
    static final int FLAG_CLEAR_TRANSFORMATION = 256;
    static final int FLAG_CLIP_CHILDREN = 1;
    private static final int FLAG_CLIP_TO_PADDING = 2;
    protected static final int FLAG_DISALLOW_INTERCEPT = 524288;
    static final int FLAG_INVALIDATE_REQUIRED = 4;
    static final int FLAG_IS_TRANSITION_GROUP = 16777216;
    static final int FLAG_IS_TRANSITION_GROUP_SET = 33554432;
    private static final int FLAG_LAYOUT_MODE_WAS_EXPLICITLY_SET = 8388608;
    private static final int FLAG_MASK_FOCUSABILITY = 393216;
    private static final int FLAG_NOTIFY_ANIMATION_LISTENER = 512;
    private static final int FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE = 65536;
    static final int FLAG_OPTIMIZE_INVALIDATE = 128;
    private static final int FLAG_PADDING_NOT_NULL = 32;
    private static final int FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW = 4194304;
    private static final int FLAG_RUN_ANIMATION = 8;
    private static final int FLAG_SHOW_CONTEXT_MENU_WITH_COORDS = 536870912;
    private static final int FLAG_SPLIT_MOTION_EVENTS = 2097152;
    private static final int FLAG_START_ACTION_MODE_FOR_CHILD_IS_NOT_TYPED = 268435456;
    private static final int FLAG_START_ACTION_MODE_FOR_CHILD_IS_TYPED = 134217728;
    protected static final int FLAG_SUPPORT_STATIC_TRANSFORMATIONS = 2048;
    static final int FLAG_TOUCHSCREEN_BLOCKS_FOCUS = 67108864;
    protected static final int FLAG_USE_CHILD_DRAWING_ORDER = 1024;
    public static final int FOCUS_AFTER_DESCENDANTS = 262144;
    public static final int FOCUS_BEFORE_DESCENDANTS = 131072;
    public static final int FOCUS_BLOCK_DESCENDANTS = 393216;
    public static final int LAYOUT_MODE_CLIP_BOUNDS = 0;
    public static final int LAYOUT_MODE_OPTICAL_BOUNDS = 1;
    private static final int LAYOUT_MODE_UNDEFINED = -1;

    @Deprecated
    public static final int PERSISTENT_ALL_CACHES = 3;

    @Deprecated
    public static final int PERSISTENT_ANIMATION_CACHE = 1;

    @Deprecated
    public static final int PERSISTENT_NO_CACHE = 0;

    @Deprecated
    public static final int PERSISTENT_SCROLLING_CACHE = 2;
    private static final String TAG = "ViewGroup";
    private static float[] sDebugLines;
    private Animation.AnimationListener mAnimationListener;
    Paint mCachePaint;

    @ViewDebug.ExportedProperty(category = "layout")
    private int mChildCountWithTransientState;
    private Transformation mChildTransformation;
    int mChildUnhandledKeyListeners;
    private View[] mChildren;
    private int mChildrenCount;
    private HashSet<View> mChildrenInterestedInDrag;
    private View mCurrentDragChild;
    private DragEvent mCurrentDragStartEvent;
    private View mDefaultFocus;
    protected ArrayList<View> mDisappearingChildren;
    private HoverTarget mFirstHoverTarget;
    private TouchTarget mFirstTouchTarget;
    private View mFocused;
    View mFocusedInCluster;

    @ViewDebug.ExportedProperty(flagMapping = {@ViewDebug.FlagToString(equals = 1, mask = 1, name = "CLIP_CHILDREN"), @ViewDebug.FlagToString(equals = 2, mask = 2, name = "CLIP_TO_PADDING"), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "PADDING_NOT_NULL")}, formatToHexString = true)
    protected int mGroupFlags;
    private boolean mHoveredSelf;
    RectF mInvalidateRegion;
    Transformation mInvalidationTransformation;
    private boolean mIsInterestedInDrag;

    @ViewDebug.ExportedProperty(category = "events")
    private int mLastTouchDownIndex;

    @ViewDebug.ExportedProperty(category = "events")
    private long mLastTouchDownTime;

    @ViewDebug.ExportedProperty(category = "events")
    private float mLastTouchDownX;

    @ViewDebug.ExportedProperty(category = "events")
    private float mLastTouchDownY;
    private LayoutAnimationController mLayoutAnimationController;
    private boolean mLayoutCalledWhileSuppressed;
    private int mLayoutMode;
    private LayoutTransition.TransitionListener mLayoutTransitionListener;
    private PointF mLocalPoint;
    private int mNestedScrollAxes;
    protected OnHierarchyChangeListener mOnHierarchyChangeListener;
    protected int mPersistentDrawingCache;
    private ArrayList<View> mPreSortedChildren;
    boolean mSuppressLayout;
    private float[] mTempPoint;
    private View mTooltipHoverTarget;
    private boolean mTooltipHoveredSelf;
    private List<Integer> mTransientIndices;
    private List<View> mTransientViews;
    private LayoutTransition mTransition;
    private ArrayList<View> mTransitioningViews;
    private ArrayList<View> mVisibilityChangingChildren;
    private static final int[] DESCENDANT_FOCUSABILITY_FLAGS = {131072, 262144, 393216};
    public static int LAYOUT_MODE_DEFAULT = 0;
    private static final ActionMode SENTINEL_ACTION_MODE = new ActionMode() { // from class: android.view.ViewGroup.1
        @Override // android.view.ActionMode
        public void finish() {
        }

        @Override // android.view.ActionMode
        public View getCustomView() {
            return null;
        }

        @Override // android.view.ActionMode
        public Menu getMenu() {
            return null;
        }

        @Override // android.view.ActionMode
        public MenuInflater getMenuInflater() {
            return null;
        }

        @Override // android.view.ActionMode
        public CharSequence getSubtitle() {
            return null;
        }

        @Override // android.view.ActionMode
        public CharSequence getTitle() {
            return null;
        }

        @Override // android.view.ActionMode
        public void invalidate() {
        }

        @Override // android.view.ActionMode
        public void setCustomView(View view) {
        }

        @Override // android.view.ActionMode
        public void setSubtitle(int i) {
        }

        @Override // android.view.ActionMode
        public void setSubtitle(CharSequence charSequence) {
        }

        @Override // android.view.ActionMode
        public void setTitle(int i) {
        }

        @Override // android.view.ActionMode
        public void setTitle(CharSequence charSequence) {
        }
    };

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface OnHierarchyChangeListener {
        void onChildViewAdded(View view, View view2);

        void onChildViewRemoved(View view, View view2);
    }

    private static int sign(int i) {
        return i >= 0 ? 1 : -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean checkLayoutParams(LayoutParams layoutParams) {
        return layoutParams != null;
    }

    protected LayoutParams generateLayoutParams(LayoutParams layoutParams) {
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getChildDrawingOrder(int i, int i2) {
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getChildStaticTransformation(View view, Transformation transformation) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public abstract void onLayout(boolean z, int i, int i2, int i3, int i4);

    @Override // android.view.ViewParent
    public boolean onNestedPrePerformAccessibilityAction(View view, int i, Bundle bundle) {
        return false;
    }

    public boolean onRequestSendAccessibilityEventInternal(View view, AccessibilityEvent accessibilityEvent) {
        return true;
    }

    @Override // android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return false;
    }

    public void onViewAdded(View view) {
    }

    public void onViewRemoved(View view) {
    }

    @Override // android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return false;
    }

    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public ViewGroup(Context context) {
        this(context, null);
    }

    public ViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ViewGroup(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ViewGroup(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mLastTouchDownIndex = -1;
        this.mLayoutMode = -1;
        this.mSuppressLayout = false;
        this.mLayoutCalledWhileSuppressed = false;
        this.mChildCountWithTransientState = 0;
        this.mTransientIndices = null;
        this.mTransientViews = null;
        this.mChildUnhandledKeyListeners = 0;
        this.mLayoutTransitionListener = new LayoutTransition.TransitionListener() { // from class: android.view.ViewGroup.4
            @Override // android.animation.LayoutTransition.TransitionListener
            public void startTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i3) {
                if (i3 == 3) {
                    ViewGroup.this.startViewTransition(view);
                }
            }

            @Override // android.animation.LayoutTransition.TransitionListener
            public void endTransition(LayoutTransition layoutTransition, ViewGroup viewGroup, View view, int i3) {
                if (ViewGroup.this.mLayoutCalledWhileSuppressed && !layoutTransition.isChangingLayout()) {
                    ViewGroup.this.requestLayout();
                    ViewGroup.this.mLayoutCalledWhileSuppressed = false;
                }
                if (i3 != 3 || ViewGroup.this.mTransitioningViews == null) {
                    return;
                }
                ViewGroup.this.endViewTransition(view);
            }
        };
        initViewGroup();
        initFromAttributes(context, attributeSet, i, i2);
    }

    private void initViewGroup() {
        if (!debugDraw()) {
            setFlags(128, 128);
        }
        this.mGroupFlags |= 1;
        this.mGroupFlags |= 2;
        this.mGroupFlags |= 16;
        this.mGroupFlags |= 64;
        this.mGroupFlags |= 16384;
        if (this.mContext.getApplicationInfo().targetSdkVersion >= 11) {
            this.mGroupFlags |= 2097152;
        }
        setDescendantFocusability(131072);
        this.mChildren = new View[12];
        this.mChildrenCount = 0;
        this.mPersistentDrawingCache = 2;
    }

    private void initFromAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewGroup, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            switch (index) {
                case 0:
                    setClipChildren(obtainStyledAttributes.getBoolean(index, true));
                    break;
                case 1:
                    setClipToPadding(obtainStyledAttributes.getBoolean(index, true));
                    break;
                case 2:
                    int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId > 0) {
                        setLayoutAnimation(AnimationUtils.loadLayoutAnimation(this.mContext, resourceId));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    setAnimationCacheEnabled(obtainStyledAttributes.getBoolean(index, true));
                    break;
                case 4:
                    setPersistentDrawingCache(obtainStyledAttributes.getInt(index, 2));
                    break;
                case 5:
                    setAlwaysDrawnWithCacheEnabled(obtainStyledAttributes.getBoolean(index, true));
                    break;
                case 6:
                    setAddStatesFromChildren(obtainStyledAttributes.getBoolean(index, false));
                    break;
                case 7:
                    setDescendantFocusability(DESCENDANT_FOCUSABILITY_FLAGS[obtainStyledAttributes.getInt(index, 0)]);
                    break;
                case 8:
                    setMotionEventSplittingEnabled(obtainStyledAttributes.getBoolean(index, false));
                    break;
                case 9:
                    if (obtainStyledAttributes.getBoolean(index, false)) {
                        setLayoutTransition(new LayoutTransition());
                        break;
                    } else {
                        break;
                    }
                case 10:
                    setLayoutMode(obtainStyledAttributes.getInt(index, -1));
                    break;
                case 11:
                    setTransitionGroup(obtainStyledAttributes.getBoolean(index, false));
                    break;
                case 12:
                    setTouchscreenBlocksFocus(obtainStyledAttributes.getBoolean(index, false));
                    break;
            }
        }
        obtainStyledAttributes.recycle();
    }

    @ViewDebug.ExportedProperty(category = "focus", mapping = {@ViewDebug.IntToString(from = 131072, to = "FOCUS_BEFORE_DESCENDANTS"), @ViewDebug.IntToString(from = 262144, to = "FOCUS_AFTER_DESCENDANTS"), @ViewDebug.IntToString(from = 393216, to = "FOCUS_BLOCK_DESCENDANTS")})
    public int getDescendantFocusability() {
        return this.mGroupFlags & 393216;
    }

    public void setDescendantFocusability(int i) {
        if (i != 131072 && i != 262144 && i != 393216) {
            throw new IllegalArgumentException("must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS");
        }
        this.mGroupFlags &= -393217;
        this.mGroupFlags = (i & 393216) | this.mGroupFlags;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void handleFocusGainInternal(int i, Rect rect) {
        if (this.mFocused != null) {
            this.mFocused.unFocus(this);
            this.mFocused = null;
            this.mFocusedInCluster = null;
        }
        super.handleFocusGainInternal(i, rect);
    }

    @Override // android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        super.unFocus(view2);
        if (this.mFocused != view) {
            if (this.mFocused != null) {
                this.mFocused.unFocus(view2);
            }
            this.mFocused = view;
        }
        if (this.mParent != null) {
            this.mParent.requestChildFocus(this, view2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDefaultFocus(View view) {
        if (this.mDefaultFocus == null || !this.mDefaultFocus.isFocusedByDefault()) {
            this.mDefaultFocus = view;
            if (this.mParent instanceof ViewGroup) {
                ((ViewGroup) this.mParent).setDefaultFocus(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearDefaultFocus(View view) {
        if (this.mDefaultFocus == view || this.mDefaultFocus == null || !this.mDefaultFocus.isFocusedByDefault()) {
            this.mDefaultFocus = null;
            for (int i = 0; i < this.mChildrenCount; i++) {
                View view2 = this.mChildren[i];
                if (view2.isFocusedByDefault()) {
                    this.mDefaultFocus = view2;
                    return;
                }
                if (this.mDefaultFocus == null && view2.hasDefaultFocus()) {
                    this.mDefaultFocus = view2;
                }
            }
            if (this.mParent instanceof ViewGroup) {
                ((ViewGroup) this.mParent).clearDefaultFocus(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public boolean hasDefaultFocus() {
        return this.mDefaultFocus != null || super.hasDefaultFocus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearFocusedInCluster(View view) {
        if (this.mFocusedInCluster != view) {
            return;
        }
        clearFocusedInCluster();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r3v1, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r3v2, types: [android.view.ViewParent] */
    public void clearFocusedInCluster() {
        View findKeyboardNavigationCluster = findKeyboardNavigationCluster();
        do {
            this.mFocusedInCluster = null;
            if (this == findKeyboardNavigationCluster) {
                return;
            } else {
                this = this.getParent();
            }
        } while (this instanceof ViewGroup);
    }

    @Override // android.view.ViewParent
    public void focusableViewAvailable(View view) {
        if (this.mParent == null || getDescendantFocusability() == 393216 || (this.mViewFlags & 12) != 0) {
            return;
        }
        if (isFocusableInTouchMode() || !shouldBlockFocusForTouchscreen()) {
            if (!isFocused() || getDescendantFocusability() == 262144) {
                this.mParent.focusableViewAvailable(view);
            }
        }
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view) {
        return (isShowingContextMenuWithCoords() || this.mParent == null || !this.mParent.showContextMenuForChild(view)) ? false : true;
    }

    public final boolean isShowingContextMenuWithCoords() {
        return (this.mGroupFlags & 536870912) != 0;
    }

    @Override // android.view.ViewParent
    public boolean showContextMenuForChild(View view, float f, float f2) {
        try {
            this.mGroupFlags |= 536870912;
            if (showContextMenuForChild(view)) {
                return true;
            }
            this.mGroupFlags = (-536870913) & this.mGroupFlags;
            return this.mParent != null && this.mParent.showContextMenuForChild(view, f, f2);
        } finally {
            this.mGroupFlags &= -536870913;
        }
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        if ((this.mGroupFlags & 134217728) == 0) {
            try {
                this.mGroupFlags |= 268435456;
                return startActionModeForChild(view, callback, 0);
            } finally {
                this.mGroupFlags &= -268435457;
            }
        }
        return SENTINEL_ACTION_MODE;
    }

    @Override // android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i) {
        if ((this.mGroupFlags & 268435456) == 0 && i == 0) {
            try {
                this.mGroupFlags |= 134217728;
                ActionMode startActionModeForChild = startActionModeForChild(view, callback);
                this.mGroupFlags = (-134217729) & this.mGroupFlags;
                if (startActionModeForChild != SENTINEL_ACTION_MODE) {
                    return startActionModeForChild;
                }
            } catch (Throwable th) {
                this.mGroupFlags &= -134217729;
                throw th;
            }
        }
        if (this.mParent == null) {
            return null;
        }
        try {
            return this.mParent.startActionModeForChild(view, callback, i);
        } catch (AbstractMethodError unused) {
            return this.mParent.startActionModeForChild(view, callback);
        }
    }

    @Override // android.view.View
    public boolean dispatchActivityResult(String str, int i, int i2, Intent intent) {
        if (super.dispatchActivityResult(str, i, i2, intent)) {
            return true;
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            if (getChildAt(i3).dispatchActivityResult(str, i, i2, intent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewParent
    public View focusSearch(View view, int i) {
        if (isRootNamespace()) {
            return FocusFinder.getInstance().findNextFocus(this, view, i);
        }
        if (this.mParent != null) {
            return this.mParent.focusSearch(view, i);
        }
        return null;
    }

    @Override // android.view.ViewParent
    public boolean requestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        ViewParent viewParent = this.mParent;
        if (viewParent != null && onRequestSendAccessibilityEvent(view, accessibilityEvent)) {
            return viewParent.requestSendAccessibilityEvent(this, accessibilityEvent);
        }
        return false;
    }

    public boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (this.mAccessibilityDelegate != null) {
            return this.mAccessibilityDelegate.onRequestSendAccessibilityEvent(this, view, accessibilityEvent);
        }
        return onRequestSendAccessibilityEventInternal(view, accessibilityEvent);
    }

    @Override // android.view.ViewParent
    public void childHasTransientStateChanged(View view, boolean z) {
        boolean hasTransientState = hasTransientState();
        if (z) {
            this.mChildCountWithTransientState++;
        } else {
            this.mChildCountWithTransientState--;
        }
        boolean hasTransientState2 = hasTransientState();
        if (this.mParent == null || hasTransientState == hasTransientState2) {
            return;
        }
        try {
            this.mParent.childHasTransientStateChanged(this, hasTransientState2);
        } catch (AbstractMethodError e) {
            Log.e(TAG, this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e);
        }
    }

    @Override // android.view.View
    public boolean hasTransientState() {
        return this.mChildCountWithTransientState > 0 || super.hasTransientState();
    }

    @Override // android.view.View
    public boolean dispatchUnhandledMove(View view, int i) {
        return this.mFocused != null && this.mFocused.dispatchUnhandledMove(view, i);
    }

    @Override // android.view.ViewParent
    public void clearChildFocus(View view) {
        this.mFocused = null;
        if (this.mParent != null) {
            this.mParent.clearChildFocus(this);
        }
    }

    @Override // android.view.View
    public void clearFocus() {
        if (this.mFocused == null) {
            super.clearFocus();
            return;
        }
        View view = this.mFocused;
        this.mFocused = null;
        view.clearFocus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void unFocus(View view) {
        if (this.mFocused == null) {
            super.unFocus(view);
        } else {
            this.mFocused.unFocus(view);
            this.mFocused = null;
        }
    }

    public View getFocusedChild() {
        return this.mFocused;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    View getDeepestFocusedChild() {
        while (this != 0) {
            if (this.isFocused()) {
                return this;
            }
            this = this instanceof ViewGroup ? ((ViewGroup) this).getFocusedChild() : 0;
        }
        return null;
    }

    @Override // android.view.View
    public boolean hasFocus() {
        return ((this.mPrivateFlags & 2) == 0 && this.mFocused == null) ? false : true;
    }

    @Override // android.view.View
    public View findFocus() {
        if (isFocused()) {
            return this;
        }
        if (this.mFocused != null) {
            return this.mFocused.findFocus();
        }
        return null;
    }

    @Override // android.view.View
    boolean hasFocusable(boolean z, boolean z2) {
        if ((this.mViewFlags & 12) != 0) {
            return false;
        }
        if ((z || getFocusable() != 16) && isFocusable()) {
            return true;
        }
        if (getDescendantFocusability() != 393216) {
            return hasFocusableChild(z2);
        }
        return false;
    }

    boolean hasFocusableChild(boolean z) {
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            View view = viewArr[i2];
            if (z && view.hasExplicitFocusable()) {
                return true;
            }
            if (!z && view.hasFocusable()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        boolean shouldBlockFocusForTouchscreen = shouldBlockFocusForTouchscreen();
        boolean z = isFocusableInTouchMode() || !shouldBlockFocusForTouchscreen;
        if (descendantFocusability == 393216) {
            if (z) {
                super.addFocusables(arrayList, i, i2);
                return;
            }
            return;
        }
        if (shouldBlockFocusForTouchscreen) {
            i2 |= 1;
        }
        if (descendantFocusability == 131072 && z) {
            super.addFocusables(arrayList, i, i2);
        }
        View[] viewArr = new View[this.mChildrenCount];
        int i3 = 0;
        for (int i4 = 0; i4 < this.mChildrenCount; i4++) {
            View view = this.mChildren[i4];
            if ((view.mViewFlags & 12) == 0) {
                viewArr[i3] = view;
                i3++;
            }
        }
        FocusFinder.sort(viewArr, 0, i3, this, isLayoutRtl());
        for (int i5 = 0; i5 < i3; i5++) {
            viewArr[i5].addFocusables(arrayList, i, i2);
        }
        if (descendantFocusability == 262144 && z && size == arrayList.size()) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    @Override // android.view.View
    public void addKeyboardNavigationClusters(Collection<View> collection, int i) {
        int size = collection.size();
        if (isKeyboardNavigationCluster()) {
            boolean touchscreenBlocksFocus = getTouchscreenBlocksFocus();
            try {
                setTouchscreenBlocksFocusNoRefocus(false);
                super.addKeyboardNavigationClusters(collection, i);
            } finally {
                setTouchscreenBlocksFocusNoRefocus(touchscreenBlocksFocus);
            }
        } else {
            super.addKeyboardNavigationClusters(collection, i);
        }
        if (size == collection.size() && getDescendantFocusability() != 393216) {
            View[] viewArr = new View[this.mChildrenCount];
            int i2 = 0;
            for (int i3 = 0; i3 < this.mChildrenCount; i3++) {
                View view = this.mChildren[i3];
                if ((view.mViewFlags & 12) == 0) {
                    viewArr[i2] = view;
                    i2++;
                }
            }
            FocusFinder.sort(viewArr, 0, i2, this, isLayoutRtl());
            for (int i4 = 0; i4 < i2; i4++) {
                viewArr[i4].addKeyboardNavigationClusters(collection, i);
            }
        }
    }

    public void setTouchscreenBlocksFocus(boolean z) {
        View focusSearch;
        if (z) {
            this.mGroupFlags |= 67108864;
            if (!hasFocus() || isKeyboardNavigationCluster() || getDeepestFocusedChild().isFocusableInTouchMode() || (focusSearch = focusSearch(2)) == null) {
                return;
            }
            focusSearch.requestFocus();
            return;
        }
        this.mGroupFlags &= -67108865;
    }

    private void setTouchscreenBlocksFocusNoRefocus(boolean z) {
        if (z) {
            this.mGroupFlags |= 67108864;
        } else {
            this.mGroupFlags &= -67108865;
        }
    }

    @ViewDebug.ExportedProperty(category = "focus")
    public boolean getTouchscreenBlocksFocus() {
        return (this.mGroupFlags & 67108864) != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean shouldBlockFocusForTouchscreen() {
        return getTouchscreenBlocksFocus() && this.mContext.getPackageManager().hasSystemFeature("android.hardware.touchscreen") && (!isKeyboardNavigationCluster() || (!hasFocus() && findKeyboardNavigationCluster() == this));
    }

    @Override // android.view.View
    public void findViewsWithText(ArrayList<View> arrayList, CharSequence charSequence, int i) {
        super.findViewsWithText(arrayList, charSequence, i);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if ((view.mViewFlags & 12) == 0 && (view.mPrivateFlags & 8) == 0) {
                view.findViewsWithText(arrayList, charSequence, i);
            }
        }
    }

    @Override // android.view.View
    public View findViewByAccessibilityIdTraversal(int i) {
        View findViewByAccessibilityIdTraversal = super.findViewByAccessibilityIdTraversal(i);
        if (findViewByAccessibilityIdTraversal != null) {
            return findViewByAccessibilityIdTraversal;
        }
        if (getAccessibilityNodeProvider() != null) {
            return null;
        }
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View findViewByAccessibilityIdTraversal2 = viewArr[i3].findViewByAccessibilityIdTraversal(i);
            if (findViewByAccessibilityIdTraversal2 != null) {
                return findViewByAccessibilityIdTraversal2;
            }
        }
        return null;
    }

    @Override // android.view.View
    public View findViewByAutofillIdTraversal(int i) {
        View findViewByAutofillIdTraversal = super.findViewByAutofillIdTraversal(i);
        if (findViewByAutofillIdTraversal != null) {
            return findViewByAutofillIdTraversal;
        }
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View findViewByAutofillIdTraversal2 = viewArr[i3].findViewByAutofillIdTraversal(i);
            if (findViewByAutofillIdTraversal2 != null) {
                return findViewByAutofillIdTraversal2;
            }
        }
        return null;
    }

    @Override // android.view.View
    public void dispatchWindowFocusChanged(boolean z) {
        super.dispatchWindowFocusChanged(z);
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].dispatchWindowFocusChanged(z);
        }
    }

    @Override // android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        super.addTouchables(arrayList);
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            View view = viewArr[i2];
            if ((view.mViewFlags & 12) == 0) {
                view.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.View
    public void makeOptionalFitsSystemWindows() {
        super.makeOptionalFitsSystemWindows();
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].makeOptionalFitsSystemWindows();
        }
    }

    @Override // android.view.View
    public void dispatchDisplayHint(int i) {
        super.dispatchDisplayHint(i);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchDisplayHint(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onChildVisibilityChanged(View view, int i, int i2) {
        if (this.mTransition != null) {
            if (i2 == 0) {
                this.mTransition.showChild(this, view, i);
            } else {
                this.mTransition.hideChild(this, view, i2);
                if (this.mTransitioningViews != null && this.mTransitioningViews.contains(view)) {
                    if (this.mVisibilityChangingChildren == null) {
                        this.mVisibilityChangingChildren = new ArrayList<>();
                    }
                    this.mVisibilityChangingChildren.add(view);
                    addDisappearingView(view);
                }
            }
        }
        if (i2 != 0 || this.mCurrentDragStartEvent == null || this.mChildrenInterestedInDrag.contains(view)) {
            return;
        }
        notifyChildOfDragStart(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void dispatchVisibilityChanged(View view, int i) {
        super.dispatchVisibilityChanged(view, i);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchVisibilityChanged(view, i);
        }
    }

    @Override // android.view.View
    public void dispatchWindowVisibilityChanged(int i) {
        super.dispatchWindowVisibilityChanged(i);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchWindowVisibilityChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public boolean dispatchVisibilityAggregated(boolean z) {
        boolean dispatchVisibilityAggregated = super.dispatchVisibilityAggregated(z);
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            if (viewArr[i2].getVisibility() == 0) {
                viewArr[i2].dispatchVisibilityAggregated(dispatchVisibilityAggregated);
            }
        }
        return dispatchVisibilityAggregated;
    }

    @Override // android.view.View
    public void dispatchConfigurationChanged(Configuration configuration) {
        super.dispatchConfigurationChanged(configuration);
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].dispatchConfigurationChanged(configuration);
        }
    }

    @Override // android.view.ViewParent
    public void recomputeViewAttributes(View view) {
        ViewParent viewParent;
        if (this.mAttachInfo == null || this.mAttachInfo.mRecomputeGlobalAttributes || (viewParent = this.mParent) == null) {
            return;
        }
        viewParent.recomputeViewAttributes(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void dispatchCollectViewAttributes(View.AttachInfo attachInfo, int i) {
        if ((i & 12) == 0) {
            super.dispatchCollectViewAttributes(attachInfo, i);
            int i2 = this.mChildrenCount;
            View[] viewArr = this.mChildren;
            for (int i3 = 0; i3 < i2; i3++) {
                View view = viewArr[i3];
                view.dispatchCollectViewAttributes(attachInfo, (view.mViewFlags & 12) | i);
            }
        }
    }

    @Override // android.view.ViewParent
    public void bringChildToFront(View view) {
        int indexOfChild = indexOfChild(view);
        if (indexOfChild >= 0) {
            removeFromArray(indexOfChild);
            addInArray(view, this.mChildrenCount);
            view.mParent = this;
            requestLayout();
            invalidate();
        }
    }

    private PointF getLocalPoint() {
        if (this.mLocalPoint == null) {
            this.mLocalPoint = new PointF();
        }
        return this.mLocalPoint;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public boolean dispatchDragEnterExitInPreN(DragEvent dragEvent) {
        if (dragEvent.mAction == 6 && this.mCurrentDragChild != null) {
            this.mCurrentDragChild.dispatchDragEnterExitInPreN(dragEvent);
            this.mCurrentDragChild = null;
        }
        return this.mIsInterestedInDrag && super.dispatchDragEnterExitInPreN(dragEvent);
    }

    @Override // android.view.View
    public boolean dispatchDragEvent(DragEvent dragEvent) {
        boolean z;
        float f = dragEvent.mX;
        float f2 = dragEvent.mY;
        ClipData clipData = dragEvent.mClipData;
        PointF localPoint = getLocalPoint();
        switch (dragEvent.mAction) {
            case 1:
                this.mCurrentDragChild = null;
                this.mCurrentDragStartEvent = DragEvent.obtain(dragEvent);
                if (this.mChildrenInterestedInDrag == null) {
                    this.mChildrenInterestedInDrag = new HashSet<>();
                } else {
                    this.mChildrenInterestedInDrag.clear();
                }
                int i = this.mChildrenCount;
                View[] viewArr = this.mChildren;
                boolean z2 = false;
                for (int i2 = 0; i2 < i; i2++) {
                    View view = viewArr[i2];
                    view.mPrivateFlags2 &= -4;
                    if (view.getVisibility() == 0 && notifyChildOfDragStart(viewArr[i2])) {
                        z2 = true;
                    }
                }
                this.mIsInterestedInDrag = super.dispatchDragEvent(dragEvent);
                boolean z3 = this.mIsInterestedInDrag ? true : z2;
                if (z3) {
                    return z3;
                }
                this.mCurrentDragStartEvent.recycle();
                this.mCurrentDragStartEvent = null;
                return z3;
            case 2:
            case 3:
                View findFrontmostDroppableChildAt = findFrontmostDroppableChildAt(dragEvent.mX, dragEvent.mY, localPoint);
                if (findFrontmostDroppableChildAt != this.mCurrentDragChild) {
                    if (sCascadedDragDrop) {
                        int i3 = dragEvent.mAction;
                        dragEvent.mX = 0.0f;
                        dragEvent.mY = 0.0f;
                        dragEvent.mClipData = null;
                        if (this.mCurrentDragChild != null) {
                            dragEvent.mAction = 6;
                            this.mCurrentDragChild.dispatchDragEnterExitInPreN(dragEvent);
                        }
                        if (findFrontmostDroppableChildAt != null) {
                            dragEvent.mAction = 5;
                            findFrontmostDroppableChildAt.dispatchDragEnterExitInPreN(dragEvent);
                        }
                        dragEvent.mAction = i3;
                        dragEvent.mX = f;
                        dragEvent.mY = f2;
                        dragEvent.mClipData = clipData;
                    }
                    this.mCurrentDragChild = findFrontmostDroppableChildAt;
                }
                if (findFrontmostDroppableChildAt == null && this.mIsInterestedInDrag) {
                    findFrontmostDroppableChildAt = this;
                }
                if (findFrontmostDroppableChildAt == null) {
                    return false;
                }
                if (findFrontmostDroppableChildAt != this) {
                    dragEvent.mX = localPoint.x;
                    dragEvent.mY = localPoint.y;
                    boolean dispatchDragEvent = findFrontmostDroppableChildAt.dispatchDragEvent(dragEvent);
                    dragEvent.mX = f;
                    dragEvent.mY = f2;
                    if (this.mIsInterestedInDrag) {
                        return !(sCascadedDragDrop ? dispatchDragEvent : dragEvent.mEventHandlerWasCalled) ? super.dispatchDragEvent(dragEvent) : dispatchDragEvent;
                    }
                    return dispatchDragEvent;
                }
                return super.dispatchDragEvent(dragEvent);
            case 4:
                HashSet<View> hashSet = this.mChildrenInterestedInDrag;
                if (hashSet != null) {
                    Iterator<View> it = hashSet.iterator();
                    z = false;
                    while (it.hasNext()) {
                        if (it.next().dispatchDragEvent(dragEvent)) {
                            z = true;
                        }
                    }
                    hashSet.clear();
                } else {
                    z = false;
                }
                if (this.mCurrentDragStartEvent != null) {
                    this.mCurrentDragStartEvent.recycle();
                    this.mCurrentDragStartEvent = null;
                }
                if (this.mIsInterestedInDrag) {
                    if (super.dispatchDragEvent(dragEvent)) {
                        z = true;
                    }
                    this.mIsInterestedInDrag = false;
                }
                return z;
            default:
                return false;
        }
    }

    View findFrontmostDroppableChildAt(float f, float f2, PointF pointF) {
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = i - 1; i2 >= 0; i2--) {
            View view = viewArr[i2];
            if (view.canAcceptDrag() && isTransformedTouchPointInView(f, f2, view, pointF)) {
                return view;
            }
        }
        return null;
    }

    boolean notifyChildOfDragStart(View view) {
        float f = this.mCurrentDragStartEvent.mX;
        float f2 = this.mCurrentDragStartEvent.mY;
        float[] tempPoint = getTempPoint();
        tempPoint[0] = f;
        tempPoint[1] = f2;
        transformPointToViewLocal(tempPoint, view);
        this.mCurrentDragStartEvent.mX = tempPoint[0];
        this.mCurrentDragStartEvent.mY = tempPoint[1];
        boolean dispatchDragEvent = view.dispatchDragEvent(this.mCurrentDragStartEvent);
        this.mCurrentDragStartEvent.mX = f;
        this.mCurrentDragStartEvent.mY = f2;
        this.mCurrentDragStartEvent.mEventHandlerWasCalled = false;
        if (dispatchDragEvent) {
            this.mChildrenInterestedInDrag.add(view);
            if (!view.canAcceptDrag()) {
                view.mPrivateFlags2 |= 1;
                view.refreshDrawableState();
            }
        }
        return dispatchDragEvent;
    }

    @Override // android.view.View
    public void dispatchWindowSystemUiVisiblityChanged(int i) {
        super.dispatchWindowSystemUiVisiblityChanged(i);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchWindowSystemUiVisiblityChanged(i);
        }
    }

    @Override // android.view.View
    public void dispatchSystemUiVisibilityChanged(int i) {
        super.dispatchSystemUiVisibilityChanged(i);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchSystemUiVisibilityChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public boolean updateLocalSystemUiVisibility(int i, int i2) {
        boolean updateLocalSystemUiVisibility = super.updateLocalSystemUiVisibility(i, i2);
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            updateLocalSystemUiVisibility |= viewArr[i4].updateLocalSystemUiVisibility(i, i2);
        }
        return updateLocalSystemUiVisibility;
    }

    @Override // android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if ((this.mPrivateFlags & 18) == 18) {
            return super.dispatchKeyEventPreIme(keyEvent);
        }
        if (this.mFocused == null || (this.mFocused.mPrivateFlags & 16) != 16) {
            return false;
        }
        return this.mFocused.dispatchKeyEventPreIme(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (this.mInputEventConsistencyVerifier != null) {
            this.mInputEventConsistencyVerifier.onKeyEvent(keyEvent, 1);
        }
        if ((this.mPrivateFlags & 18) == 18) {
            if (super.dispatchKeyEvent(keyEvent)) {
                return true;
            }
        } else if (this.mFocused != null && (this.mFocused.mPrivateFlags & 16) == 16 && this.mFocused.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        if (this.mInputEventConsistencyVerifier == null) {
            return false;
        }
        this.mInputEventConsistencyVerifier.onUnhandledEvent(keyEvent, 1);
        return false;
    }

    @Override // android.view.View
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if ((this.mPrivateFlags & 18) == 18) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        if (this.mFocused == null || (this.mFocused.mPrivateFlags & 16) != 16) {
            return false;
        }
        return this.mFocused.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        if (this.mInputEventConsistencyVerifier != null) {
            this.mInputEventConsistencyVerifier.onTrackballEvent(motionEvent, 1);
        }
        if ((this.mPrivateFlags & 18) == 18) {
            if (super.dispatchTrackballEvent(motionEvent)) {
                return true;
            }
        } else if (this.mFocused != null && (this.mFocused.mPrivateFlags & 16) == 16 && this.mFocused.dispatchTrackballEvent(motionEvent)) {
            return true;
        }
        if (this.mInputEventConsistencyVerifier == null) {
            return false;
        }
        this.mInputEventConsistencyVerifier.onUnhandledEvent(motionEvent, 1);
        return false;
    }

    @Override // android.view.View
    public boolean dispatchCapturedPointerEvent(MotionEvent motionEvent) {
        return (this.mPrivateFlags & 18) == 18 ? super.dispatchCapturedPointerEvent(motionEvent) : this.mFocused != null && (this.mFocused.mPrivateFlags & 16) == 16 && this.mFocused.dispatchCapturedPointerEvent(motionEvent);
    }

    @Override // android.view.View
    public void dispatchPointerCaptureChanged(boolean z) {
        exitHoverTargets();
        super.dispatchPointerCaptureChanged(z);
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].dispatchPointerCaptureChanged(z);
        }
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        PointerIcon dispatchResolvePointerIcon;
        float x = motionEvent.getX(i);
        float y = motionEvent.getY(i);
        if (isOnScrollbarThumb(x, y) || isDraggingScrollBar()) {
            return PointerIcon.getSystemIcon(this.mContext, 1000);
        }
        int i2 = this.mChildrenCount;
        if (i2 != 0) {
            ArrayList<View> buildOrderedChildList = buildOrderedChildList();
            boolean z = buildOrderedChildList == null && isChildrenDrawingOrderEnabled();
            View[] viewArr = this.mChildren;
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                View andVerifyPreorderedView = getAndVerifyPreorderedView(buildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i2, i3, z));
                if (canViewReceivePointerEvents(andVerifyPreorderedView) && isTransformedTouchPointInView(x, y, andVerifyPreorderedView, null) && (dispatchResolvePointerIcon = dispatchResolvePointerIcon(motionEvent, i, andVerifyPreorderedView)) != null) {
                    if (buildOrderedChildList != null) {
                        buildOrderedChildList.clear();
                    }
                    return dispatchResolvePointerIcon;
                }
            }
            if (buildOrderedChildList != null) {
                buildOrderedChildList.clear();
            }
        }
        return super.onResolvePointerIcon(motionEvent, i);
    }

    private PointerIcon dispatchResolvePointerIcon(MotionEvent motionEvent, int i, View view) {
        if (!view.hasIdentityMatrix()) {
            MotionEvent transformedMotionEvent = getTransformedMotionEvent(motionEvent, view);
            PointerIcon onResolvePointerIcon = view.onResolvePointerIcon(transformedMotionEvent, i);
            transformedMotionEvent.recycle();
            return onResolvePointerIcon;
        }
        float f = this.mScrollX - view.mLeft;
        float f2 = this.mScrollY - view.mTop;
        motionEvent.offsetLocation(f, f2);
        PointerIcon onResolvePointerIcon2 = view.onResolvePointerIcon(motionEvent, i);
        motionEvent.offsetLocation(-f, -f2);
        return onResolvePointerIcon2;
    }

    private int getAndVerifyPreorderedIndex(int i, int i2, boolean z) {
        if (!z || (i2 = getChildDrawingOrder(i, i2)) < i) {
            return i2;
        }
        throw new IndexOutOfBoundsException("getChildDrawingOrder() returned invalid index " + i2 + " (child count is " + i + ")");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0125  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2;
        boolean z;
        boolean z2;
        MotionEvent obtainMotionEventNoHistoryOrSelf;
        boolean z3;
        int action = motionEvent.getAction();
        boolean onInterceptHoverEvent = onInterceptHoverEvent(motionEvent);
        motionEvent.setAction(action);
        HoverTarget hoverTarget = this.mFirstHoverTarget;
        this.mFirstHoverTarget = null;
        if (!onInterceptHoverEvent && action != 10) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int i = this.mChildrenCount;
            if (i != 0) {
                ArrayList<View> buildOrderedChildList = buildOrderedChildList();
                boolean z4 = buildOrderedChildList == null && isChildrenDrawingOrderEnabled();
                View[] viewArr = this.mChildren;
                motionEvent2 = motionEvent;
                HoverTarget hoverTarget2 = null;
                boolean z5 = false;
                HoverTarget hoverTarget3 = hoverTarget;
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    View andVerifyPreorderedView = getAndVerifyPreorderedView(buildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i, i2, z4));
                    if (canViewReceivePointerEvents(andVerifyPreorderedView) && isTransformedTouchPointInView(x, y, andVerifyPreorderedView, null)) {
                        HoverTarget hoverTarget4 = null;
                        HoverTarget hoverTarget5 = hoverTarget3;
                        while (true) {
                            if (hoverTarget5 == null) {
                                hoverTarget5 = HoverTarget.obtain(andVerifyPreorderedView);
                                z3 = false;
                                break;
                            }
                            if (hoverTarget5.child == andVerifyPreorderedView) {
                                if (hoverTarget4 != null) {
                                    hoverTarget4.next = hoverTarget5.next;
                                } else {
                                    hoverTarget3 = hoverTarget5.next;
                                }
                                hoverTarget5.next = null;
                                z3 = true;
                            } else {
                                hoverTarget4 = hoverTarget5;
                                hoverTarget5 = hoverTarget5.next;
                            }
                        }
                        if (hoverTarget2 != null) {
                            hoverTarget2.next = hoverTarget5;
                        } else {
                            this.mFirstHoverTarget = hoverTarget5;
                        }
                        if (action == 9) {
                            if (!z3) {
                                z5 |= dispatchTransformedGenericPointerEvent(motionEvent, andVerifyPreorderedView);
                            }
                        } else if (action == 7) {
                            if (!z3) {
                                MotionEvent obtainMotionEventNoHistoryOrSelf2 = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                                obtainMotionEventNoHistoryOrSelf2.setAction(9);
                                boolean dispatchTransformedGenericPointerEvent = z5 | dispatchTransformedGenericPointerEvent(obtainMotionEventNoHistoryOrSelf2, andVerifyPreorderedView);
                                obtainMotionEventNoHistoryOrSelf2.setAction(action);
                                z5 = dispatchTransformedGenericPointerEvent | dispatchTransformedGenericPointerEvent(obtainMotionEventNoHistoryOrSelf2, andVerifyPreorderedView);
                                motionEvent2 = obtainMotionEventNoHistoryOrSelf2;
                            } else {
                                z5 |= dispatchTransformedGenericPointerEvent(motionEvent, andVerifyPreorderedView);
                            }
                        }
                        if (z5) {
                            break;
                        }
                        hoverTarget2 = hoverTarget5;
                    }
                }
                hoverTarget = hoverTarget3;
                z = z5;
                if (buildOrderedChildList != null) {
                    buildOrderedChildList.clear();
                }
                while (hoverTarget != null) {
                    View view = hoverTarget.child;
                    if (action == 10) {
                        z = dispatchTransformedGenericPointerEvent(motionEvent, view) | z;
                    } else {
                        if (action == 7) {
                            boolean isHoverExitPending = motionEvent.isHoverExitPending();
                            motionEvent.setHoverExitPending(true);
                            dispatchTransformedGenericPointerEvent(motionEvent, view);
                            motionEvent.setHoverExitPending(isHoverExitPending);
                        }
                        MotionEvent obtainMotionEventNoHistoryOrSelf3 = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                        obtainMotionEventNoHistoryOrSelf3.setAction(10);
                        dispatchTransformedGenericPointerEvent(obtainMotionEventNoHistoryOrSelf3, view);
                        obtainMotionEventNoHistoryOrSelf3.setAction(action);
                        motionEvent2 = obtainMotionEventNoHistoryOrSelf3;
                    }
                    HoverTarget hoverTarget6 = hoverTarget.next;
                    hoverTarget.recycle();
                    hoverTarget = hoverTarget6;
                }
                z2 = (!z || action == 10 || motionEvent.isHoverExitPending()) ? false : true;
                if (z2 == this.mHoveredSelf) {
                    if (this.mHoveredSelf) {
                        if (action == 10) {
                            z = super.dispatchHoverEvent(motionEvent) | z;
                        } else {
                            if (action == 7) {
                                super.dispatchHoverEvent(motionEvent);
                            }
                            MotionEvent obtainMotionEventNoHistoryOrSelf4 = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                            obtainMotionEventNoHistoryOrSelf4.setAction(10);
                            super.dispatchHoverEvent(obtainMotionEventNoHistoryOrSelf4);
                            obtainMotionEventNoHistoryOrSelf4.setAction(action);
                            motionEvent2 = obtainMotionEventNoHistoryOrSelf4;
                        }
                        this.mHoveredSelf = false;
                    }
                    if (z2) {
                        if (action == 9) {
                            z |= super.dispatchHoverEvent(motionEvent);
                            this.mHoveredSelf = true;
                        } else if (action == 7) {
                            obtainMotionEventNoHistoryOrSelf = obtainMotionEventNoHistoryOrSelf(motionEvent2);
                            obtainMotionEventNoHistoryOrSelf.setAction(9);
                            boolean dispatchHoverEvent = super.dispatchHoverEvent(obtainMotionEventNoHistoryOrSelf) | z;
                            obtainMotionEventNoHistoryOrSelf.setAction(action);
                            z = dispatchHoverEvent | super.dispatchHoverEvent(obtainMotionEventNoHistoryOrSelf);
                            this.mHoveredSelf = true;
                            if (obtainMotionEventNoHistoryOrSelf != motionEvent) {
                                obtainMotionEventNoHistoryOrSelf.recycle();
                            }
                            return z;
                        }
                    }
                } else if (z2) {
                    z |= super.dispatchHoverEvent(motionEvent);
                }
                obtainMotionEventNoHistoryOrSelf = motionEvent2;
                if (obtainMotionEventNoHistoryOrSelf != motionEvent) {
                }
                return z;
            }
        }
        motionEvent2 = motionEvent;
        z = false;
        while (hoverTarget != null) {
        }
        if (!z) {
        }
        if (z2 == this.mHoveredSelf) {
        }
        obtainMotionEventNoHistoryOrSelf = motionEvent2;
        if (obtainMotionEventNoHistoryOrSelf != motionEvent) {
        }
        return z;
    }

    private void exitHoverTargets() {
        if (this.mHoveredSelf || this.mFirstHoverTarget != null) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 10, 0.0f, 0.0f, 0);
            obtain.setSource(InputDevice.SOURCE_TOUCHSCREEN);
            dispatchHoverEvent(obtain);
            obtain.recycle();
        }
    }

    private void cancelHoverTarget(View view) {
        HoverTarget hoverTarget = this.mFirstHoverTarget;
        HoverTarget hoverTarget2 = null;
        while (hoverTarget != null) {
            HoverTarget hoverTarget3 = hoverTarget.next;
            if (hoverTarget.child == view) {
                if (hoverTarget2 == null) {
                    this.mFirstHoverTarget = hoverTarget3;
                } else {
                    hoverTarget2.next = hoverTarget3;
                }
                hoverTarget.recycle();
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 10, 0.0f, 0.0f, 0);
                obtain.setSource(InputDevice.SOURCE_TOUCHSCREEN);
                view.dispatchHoverEvent(obtain);
                obtain.recycle();
                return;
            }
            hoverTarget2 = hoverTarget;
            hoverTarget = hoverTarget3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public boolean dispatchTooltipHoverEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        View view = null;
        if (action == 7) {
            int i = this.mChildrenCount;
            if (i != 0) {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                ArrayList<View> buildOrderedChildList = buildOrderedChildList();
                boolean z = buildOrderedChildList == null && isChildrenDrawingOrderEnabled();
                View[] viewArr = this.mChildren;
                int i2 = i - 1;
                while (true) {
                    if (i2 < 0) {
                        break;
                    }
                    View andVerifyPreorderedView = getAndVerifyPreorderedView(buildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i, i2, z));
                    if (canViewReceivePointerEvents(andVerifyPreorderedView) && isTransformedTouchPointInView(x, y, andVerifyPreorderedView, null) && dispatchTooltipHoverEvent(motionEvent, andVerifyPreorderedView)) {
                        view = andVerifyPreorderedView;
                        break;
                    }
                    i2--;
                }
                if (buildOrderedChildList != null) {
                    buildOrderedChildList.clear();
                }
            }
            if (this.mTooltipHoverTarget != view) {
                if (this.mTooltipHoverTarget != null) {
                    motionEvent.setAction(10);
                    this.mTooltipHoverTarget.dispatchTooltipHoverEvent(motionEvent);
                    motionEvent.setAction(action);
                }
                this.mTooltipHoverTarget = view;
            }
            if (this.mTooltipHoverTarget != null) {
                if (this.mTooltipHoveredSelf) {
                    this.mTooltipHoveredSelf = false;
                    motionEvent.setAction(10);
                    super.dispatchTooltipHoverEvent(motionEvent);
                    motionEvent.setAction(action);
                }
                return true;
            }
            this.mTooltipHoveredSelf = super.dispatchTooltipHoverEvent(motionEvent);
            return this.mTooltipHoveredSelf;
        }
        switch (action) {
            case 10:
                if (this.mTooltipHoverTarget != null) {
                    this.mTooltipHoverTarget.dispatchTooltipHoverEvent(motionEvent);
                    this.mTooltipHoverTarget = null;
                    break;
                } else if (this.mTooltipHoveredSelf) {
                    super.dispatchTooltipHoverEvent(motionEvent);
                    this.mTooltipHoveredSelf = false;
                    break;
                }
                break;
        }
        return false;
    }

    private boolean dispatchTooltipHoverEvent(MotionEvent motionEvent, View view) {
        if (!view.hasIdentityMatrix()) {
            MotionEvent transformedMotionEvent = getTransformedMotionEvent(motionEvent, view);
            boolean dispatchTooltipHoverEvent = view.dispatchTooltipHoverEvent(transformedMotionEvent);
            transformedMotionEvent.recycle();
            return dispatchTooltipHoverEvent;
        }
        float f = this.mScrollX - view.mLeft;
        float f2 = this.mScrollY - view.mTop;
        motionEvent.offsetLocation(f, f2);
        boolean dispatchTooltipHoverEvent2 = view.dispatchTooltipHoverEvent(motionEvent);
        motionEvent.offsetLocation(-f, -f2);
        return dispatchTooltipHoverEvent2;
    }

    private void exitTooltipHoverTargets() {
        if (this.mTooltipHoveredSelf || this.mTooltipHoverTarget != null) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 10, 0.0f, 0.0f, 0);
            obtain.setSource(InputDevice.SOURCE_TOUCHSCREEN);
            dispatchTooltipHoverEvent(obtain);
            obtain.recycle();
        }
    }

    @Override // android.view.View
    protected boolean hasHoveredChild() {
        return this.mFirstHoverTarget != null;
    }

    @Override // android.view.View
    public void addChildrenForAccessibility(ArrayList<View> arrayList) {
        if (getAccessibilityNodeProvider() != null) {
            return;
        }
        ChildListForAccessibility obtain = ChildListForAccessibility.obtain(this, true);
        try {
            int childCount = obtain.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = obtain.getChildAt(i);
                if ((childAt.mViewFlags & 12) == 0) {
                    if (childAt.includeForAccessibility()) {
                        arrayList.add(childAt);
                    } else {
                        childAt.addChildrenForAccessibility(arrayList);
                    }
                }
            }
        } finally {
            obtain.recycle();
        }
    }

    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        if (!motionEvent.isFromSource(InputDevice.SOURCE_MOUSE)) {
            return false;
        }
        int action = motionEvent.getAction();
        return (action == 7 || action == 9) && isOnScrollbar(motionEvent.getX(), motionEvent.getY());
    }

    private static MotionEvent obtainMotionEventNoHistoryOrSelf(MotionEvent motionEvent) {
        return motionEvent.getHistorySize() == 0 ? motionEvent : MotionEvent.obtainNoHistory(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public boolean dispatchGenericPointerEvent(MotionEvent motionEvent) {
        int i = this.mChildrenCount;
        if (i != 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            ArrayList<View> buildOrderedChildList = buildOrderedChildList();
            boolean z = buildOrderedChildList == null && isChildrenDrawingOrderEnabled();
            View[] viewArr = this.mChildren;
            for (int i2 = i - 1; i2 >= 0; i2--) {
                View andVerifyPreorderedView = getAndVerifyPreorderedView(buildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i, i2, z));
                if (canViewReceivePointerEvents(andVerifyPreorderedView) && isTransformedTouchPointInView(x, y, andVerifyPreorderedView, null) && dispatchTransformedGenericPointerEvent(motionEvent, andVerifyPreorderedView)) {
                    if (buildOrderedChildList != null) {
                        buildOrderedChildList.clear();
                    }
                    return true;
                }
            }
            if (buildOrderedChildList != null) {
                buildOrderedChildList.clear();
            }
        }
        return super.dispatchGenericPointerEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        if ((this.mPrivateFlags & 18) == 18) {
            return super.dispatchGenericFocusedEvent(motionEvent);
        }
        if (this.mFocused == null || (this.mFocused.mPrivateFlags & 16) != 16) {
            return false;
        }
        return this.mFocused.dispatchGenericMotionEvent(motionEvent);
    }

    private boolean dispatchTransformedGenericPointerEvent(MotionEvent motionEvent, View view) {
        if (!view.hasIdentityMatrix()) {
            MotionEvent transformedMotionEvent = getTransformedMotionEvent(motionEvent, view);
            boolean dispatchGenericMotionEvent = view.dispatchGenericMotionEvent(transformedMotionEvent);
            transformedMotionEvent.recycle();
            return dispatchGenericMotionEvent;
        }
        float f = this.mScrollX - view.mLeft;
        float f2 = this.mScrollY - view.mTop;
        motionEvent.offsetLocation(f, f2);
        boolean dispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-f, -f2);
        return dispatchGenericMotionEvent2;
    }

    private MotionEvent getTransformedMotionEvent(MotionEvent motionEvent, View view) {
        float f = this.mScrollX - view.mLeft;
        float f2 = this.mScrollY - view.mTop;
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(f, f2);
        if (!view.hasIdentityMatrix()) {
            obtain.transform(view.getInverseMatrix());
        }
        return obtain;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0173  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        TouchTarget touchTarget;
        boolean z3;
        View view;
        int i;
        if (this.mInputEventConsistencyVerifier != null) {
            this.mInputEventConsistencyVerifier.onTouchEvent(motionEvent, 1);
        }
        boolean z4 = false;
        if (motionEvent.isTargetAccessibilityFocus() && isAccessibilityFocusedViewOrHost()) {
            motionEvent.setTargetAccessibilityFocus(false);
        }
        if (onFilterTouchEventForSecurity(motionEvent)) {
            int action = motionEvent.getAction();
            int i2 = action & 255;
            if (i2 == 0) {
                cancelAndClearTouchTargets(motionEvent);
                resetTouchState();
            }
            if (i2 == 0 || this.mFirstTouchTarget != null) {
                if ((this.mGroupFlags & 524288) != 0) {
                    z = false;
                } else {
                    z = onInterceptTouchEvent(motionEvent);
                    motionEvent.setAction(action);
                }
            } else {
                z = true;
            }
            if (z || this.mFirstTouchTarget != null) {
                motionEvent.setTargetAccessibilityFocus(false);
            }
            boolean z5 = resetCancelNextUpFlag(this) || i2 == 3;
            boolean z6 = (this.mGroupFlags & 2097152) != 0;
            if (!z5 && !z) {
                View findChildWithAccessibilityFocus = motionEvent.isTargetAccessibilityFocus() ? findChildWithAccessibilityFocus() : null;
                if (i2 == 0 || ((z6 && i2 == 5) || i2 == 7)) {
                    int actionIndex = motionEvent.getActionIndex();
                    int pointerId = z6 ? 1 << motionEvent.getPointerId(actionIndex) : -1;
                    removePointersFromTouchTargets(pointerId);
                    int i3 = this.mChildrenCount;
                    if (i3 != 0) {
                        float x = motionEvent.getX(actionIndex);
                        float y = motionEvent.getY(actionIndex);
                        ArrayList<View> buildTouchDispatchChildList = buildTouchDispatchChildList();
                        boolean z7 = buildTouchDispatchChildList == null && isChildrenDrawingOrderEnabled();
                        View[] viewArr = this.mChildren;
                        int i4 = i3 - 1;
                        View view2 = findChildWithAccessibilityFocus;
                        int i5 = i4;
                        TouchTarget touchTarget2 = null;
                        while (true) {
                            if (i5 < 0) {
                                z4 = false;
                                z2 = false;
                                break;
                            }
                            int andVerifyPreorderedIndex = getAndVerifyPreorderedIndex(i3, i5, z7);
                            boolean z8 = z7;
                            View andVerifyPreorderedView = getAndVerifyPreorderedView(buildTouchDispatchChildList, viewArr, andVerifyPreorderedIndex);
                            if (view2 != null) {
                                if (view2 != andVerifyPreorderedView) {
                                    view = view2;
                                    i = -1;
                                    i5 += i;
                                    z7 = z8;
                                    view2 = view;
                                } else {
                                    i5 = i4;
                                    view2 = null;
                                }
                            }
                            if (canViewReceivePointerEvents(andVerifyPreorderedView)) {
                                view = view2;
                                if (isTransformedTouchPointInView(x, y, andVerifyPreorderedView, null)) {
                                    TouchTarget touchTarget3 = getTouchTarget(andVerifyPreorderedView);
                                    if (touchTarget3 != null) {
                                        touchTarget3.pointerIdBits |= pointerId;
                                        touchTarget2 = touchTarget3;
                                        z4 = false;
                                        z2 = false;
                                        break;
                                    }
                                    resetCancelNextUpFlag(andVerifyPreorderedView);
                                    if (dispatchTransformedTouchEvent(motionEvent, false, andVerifyPreorderedView, pointerId)) {
                                        this.mLastTouchDownTime = motionEvent.getDownTime();
                                        if (buildTouchDispatchChildList != null) {
                                            int i6 = 0;
                                            while (true) {
                                                if (i6 >= i3) {
                                                    break;
                                                }
                                                if (viewArr[andVerifyPreorderedIndex] == this.mChildren[i6]) {
                                                    this.mLastTouchDownIndex = i6;
                                                    break;
                                                }
                                                i6++;
                                            }
                                        } else {
                                            this.mLastTouchDownIndex = andVerifyPreorderedIndex;
                                        }
                                        this.mLastTouchDownX = motionEvent.getX();
                                        this.mLastTouchDownY = motionEvent.getY();
                                        touchTarget2 = addTouchTarget(andVerifyPreorderedView, pointerId);
                                        z4 = false;
                                        z2 = true;
                                    } else {
                                        motionEvent.setTargetAccessibilityFocus(false);
                                        touchTarget2 = touchTarget3;
                                        i = -1;
                                        i5 += i;
                                        z7 = z8;
                                        view2 = view;
                                    }
                                }
                            } else {
                                view = view2;
                            }
                            motionEvent.setTargetAccessibilityFocus(false);
                            i = -1;
                            i5 += i;
                            z7 = z8;
                            view2 = view;
                        }
                        if (buildTouchDispatchChildList != null) {
                            buildTouchDispatchChildList.clear();
                        }
                        touchTarget = touchTarget2;
                    } else {
                        z2 = false;
                        touchTarget = null;
                    }
                    if (touchTarget == null && this.mFirstTouchTarget != null) {
                        touchTarget = this.mFirstTouchTarget;
                        while (touchTarget.next != null) {
                            touchTarget = touchTarget.next;
                        }
                        touchTarget.pointerIdBits |= pointerId;
                    }
                    if (this.mFirstTouchTarget != null) {
                        z3 = dispatchTransformedTouchEvent(motionEvent, z5, null, -1);
                    } else {
                        TouchTarget touchTarget4 = this.mFirstTouchTarget;
                        TouchTarget touchTarget5 = null;
                        z3 = z4;
                        while (touchTarget4 != null) {
                            TouchTarget touchTarget6 = touchTarget4.next;
                            if (z2 && touchTarget4 == touchTarget) {
                                z3 = true;
                            } else {
                                boolean z9 = (resetCancelNextUpFlag(touchTarget4.child) || z) ? true : z4;
                                if (dispatchTransformedTouchEvent(motionEvent, z9, touchTarget4.child, touchTarget4.pointerIdBits)) {
                                    z3 = true;
                                }
                                if (z9) {
                                    if (touchTarget5 == null) {
                                        this.mFirstTouchTarget = touchTarget6;
                                    } else {
                                        touchTarget5.next = touchTarget6;
                                    }
                                    touchTarget4.recycle();
                                    touchTarget4 = touchTarget6;
                                }
                            }
                            touchTarget5 = touchTarget4;
                            touchTarget4 = touchTarget6;
                        }
                    }
                    z4 = z3;
                    if (!z5 || i2 == 1 || i2 == 7) {
                        resetTouchState();
                    } else if (z6 && i2 == 6) {
                        removePointersFromTouchTargets(1 << motionEvent.getPointerId(motionEvent.getActionIndex()));
                    }
                }
            }
            z2 = false;
            touchTarget = null;
            if (this.mFirstTouchTarget != null) {
            }
            z4 = z3;
            if (z5) {
            }
            resetTouchState();
        }
        if (!z4 && this.mInputEventConsistencyVerifier != null) {
            this.mInputEventConsistencyVerifier.onUnhandledEvent(motionEvent, 1);
        }
        return z4;
    }

    public ArrayList<View> buildTouchDispatchChildList() {
        return buildOrderedChildList();
    }

    private View findChildWithAccessibilityFocus() {
        View accessibilityFocusedHost;
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl == null || (accessibilityFocusedHost = viewRootImpl.getAccessibilityFocusedHost()) == null) {
            return null;
        }
        ViewParent parent = accessibilityFocusedHost.getParent();
        while (parent instanceof View) {
            if (parent == this) {
                return accessibilityFocusedHost;
            }
            accessibilityFocusedHost = parent;
            parent = accessibilityFocusedHost.getParent();
        }
        return null;
    }

    private void resetTouchState() {
        clearTouchTargets();
        resetCancelNextUpFlag(this);
        this.mGroupFlags &= -524289;
        this.mNestedScrollAxes = 0;
    }

    private static boolean resetCancelNextUpFlag(View view) {
        if ((view.mPrivateFlags & 67108864) == 0) {
            return false;
        }
        view.mPrivateFlags &= -67108865;
        return true;
    }

    private void clearTouchTargets() {
        TouchTarget touchTarget = this.mFirstTouchTarget;
        if (touchTarget == null) {
            return;
        }
        while (true) {
            TouchTarget touchTarget2 = touchTarget.next;
            touchTarget.recycle();
            if (touchTarget2 == null) {
                this.mFirstTouchTarget = null;
                return;
            }
            touchTarget = touchTarget2;
        }
    }

    private void cancelAndClearTouchTargets(MotionEvent motionEvent) {
        if (this.mFirstTouchTarget != null) {
            boolean z = false;
            if (motionEvent == null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                motionEvent = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                motionEvent.setSource(InputDevice.SOURCE_TOUCHSCREEN);
                z = true;
            }
            for (TouchTarget touchTarget = this.mFirstTouchTarget; touchTarget != null; touchTarget = touchTarget.next) {
                resetCancelNextUpFlag(touchTarget.child);
                dispatchTransformedTouchEvent(motionEvent, true, touchTarget.child, touchTarget.pointerIdBits);
            }
            clearTouchTargets();
            if (z) {
                motionEvent.recycle();
            }
        }
    }

    private TouchTarget getTouchTarget(View view) {
        for (TouchTarget touchTarget = this.mFirstTouchTarget; touchTarget != null; touchTarget = touchTarget.next) {
            if (touchTarget.child == view) {
                return touchTarget;
            }
        }
        return null;
    }

    private TouchTarget addTouchTarget(View view, int i) {
        TouchTarget obtain = TouchTarget.obtain(view, i);
        obtain.next = this.mFirstTouchTarget;
        this.mFirstTouchTarget = obtain;
        return obtain;
    }

    private void removePointersFromTouchTargets(int i) {
        TouchTarget touchTarget = this.mFirstTouchTarget;
        TouchTarget touchTarget2 = null;
        while (touchTarget != null) {
            TouchTarget touchTarget3 = touchTarget.next;
            if ((touchTarget.pointerIdBits & i) != 0) {
                touchTarget.pointerIdBits &= ~i;
                if (touchTarget.pointerIdBits == 0) {
                    if (touchTarget2 == null) {
                        this.mFirstTouchTarget = touchTarget3;
                    } else {
                        touchTarget2.next = touchTarget3;
                    }
                    touchTarget.recycle();
                    touchTarget = touchTarget3;
                }
            }
            touchTarget2 = touchTarget;
            touchTarget = touchTarget3;
        }
    }

    private void cancelTouchTarget(View view) {
        TouchTarget touchTarget = this.mFirstTouchTarget;
        TouchTarget touchTarget2 = null;
        while (touchTarget != null) {
            TouchTarget touchTarget3 = touchTarget.next;
            if (touchTarget.child == view) {
                if (touchTarget2 == null) {
                    this.mFirstTouchTarget = touchTarget3;
                } else {
                    touchTarget2.next = touchTarget3;
                }
                touchTarget.recycle();
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                obtain.setSource(InputDevice.SOURCE_TOUCHSCREEN);
                view.dispatchTouchEvent(obtain);
                obtain.recycle();
                return;
            }
            touchTarget2 = touchTarget;
            touchTarget = touchTarget3;
        }
    }

    private static boolean canViewReceivePointerEvents(View view) {
        return (view.mViewFlags & 12) == 0 || view.getAnimation() != null;
    }

    private float[] getTempPoint() {
        if (this.mTempPoint == null) {
            this.mTempPoint = new float[2];
        }
        return this.mTempPoint;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isTransformedTouchPointInView(float f, float f2, View view, PointF pointF) {
        float[] tempPoint = getTempPoint();
        tempPoint[0] = f;
        tempPoint[1] = f2;
        transformPointToViewLocal(tempPoint, view);
        boolean pointInView = view.pointInView(tempPoint[0], tempPoint[1]);
        if (pointInView && pointF != null) {
            pointF.set(tempPoint[0], tempPoint[1]);
        }
        return pointInView;
    }

    public void transformPointToViewLocal(float[] fArr, View view) {
        fArr[0] = fArr[0] + (this.mScrollX - view.mLeft);
        fArr[1] = fArr[1] + (this.mScrollY - view.mTop);
        if (view.hasIdentityMatrix()) {
            return;
        }
        view.getInverseMatrix().mapPoints(fArr);
    }

    private boolean dispatchTransformedTouchEvent(MotionEvent motionEvent, boolean z, View view, int i) {
        boolean dispatchTouchEvent;
        MotionEvent split;
        boolean dispatchTouchEvent2;
        int action = motionEvent.getAction();
        if (z || action == 3) {
            motionEvent.setAction(3);
            if (view == null) {
                dispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
            } else {
                dispatchTouchEvent = view.dispatchTouchEvent(motionEvent);
            }
            motionEvent.setAction(action);
            return dispatchTouchEvent;
        }
        int pointerIdBits = motionEvent.getPointerIdBits();
        int i2 = i & pointerIdBits;
        if (i2 == 0) {
            return false;
        }
        if (i2 == pointerIdBits) {
            if (view == null || view.hasIdentityMatrix()) {
                if (view == null) {
                    return super.dispatchTouchEvent(motionEvent);
                }
                float f = this.mScrollX - view.mLeft;
                float f2 = this.mScrollY - view.mTop;
                motionEvent.offsetLocation(f, f2);
                boolean dispatchTouchEvent3 = view.dispatchTouchEvent(motionEvent);
                motionEvent.offsetLocation(-f, -f2);
                return dispatchTouchEvent3;
            }
            split = MotionEvent.obtain(motionEvent);
        } else {
            split = motionEvent.split(i2);
        }
        if (view == null) {
            dispatchTouchEvent2 = super.dispatchTouchEvent(split);
        } else {
            split.offsetLocation(this.mScrollX - view.mLeft, this.mScrollY - view.mTop);
            if (!view.hasIdentityMatrix()) {
                split.transform(view.getInverseMatrix());
            }
            dispatchTouchEvent2 = view.dispatchTouchEvent(split);
        }
        split.recycle();
        return dispatchTouchEvent2;
    }

    public void setMotionEventSplittingEnabled(boolean z) {
        if (z) {
            this.mGroupFlags |= 2097152;
        } else {
            this.mGroupFlags &= -2097153;
        }
    }

    public boolean isMotionEventSplittingEnabled() {
        return (this.mGroupFlags & 2097152) == 2097152;
    }

    public boolean isTransitionGroup() {
        if ((this.mGroupFlags & 33554432) != 0) {
            return (this.mGroupFlags & 16777216) != 0;
        }
        ViewOutlineProvider outlineProvider = getOutlineProvider();
        return (getBackground() == null && getTransitionName() == null && (outlineProvider == null || outlineProvider == ViewOutlineProvider.BACKGROUND)) ? false : true;
    }

    public void setTransitionGroup(boolean z) {
        this.mGroupFlags |= 33554432;
        if (z) {
            this.mGroupFlags |= 16777216;
        } else {
            this.mGroupFlags &= -16777217;
        }
    }

    @Override // android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z == ((this.mGroupFlags & 524288) != 0)) {
            return;
        }
        if (z) {
            this.mGroupFlags |= 524288;
        } else {
            this.mGroupFlags &= -524289;
        }
        if (this.mParent != null) {
            this.mParent.requestDisallowInterceptTouchEvent(z);
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return motionEvent.isFromSource(InputDevice.SOURCE_MOUSE) && motionEvent.getAction() == 0 && motionEvent.isButtonPressed(1) && isOnScrollbarThumb(motionEvent.getX(), motionEvent.getY());
    }

    @Override // android.view.View
    public boolean requestFocus(int i, Rect rect) {
        boolean requestFocus;
        boolean onRequestFocusInDescendants;
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability == 131072) {
            requestFocus = super.requestFocus(i, rect);
            if (!requestFocus) {
                onRequestFocusInDescendants = onRequestFocusInDescendants(i, rect);
            }
            onRequestFocusInDescendants = requestFocus;
        } else if (descendantFocusability == 262144) {
            requestFocus = onRequestFocusInDescendants(i, rect);
            if (!requestFocus) {
                onRequestFocusInDescendants = super.requestFocus(i, rect);
            }
            onRequestFocusInDescendants = requestFocus;
        } else if (descendantFocusability == 393216) {
            onRequestFocusInDescendants = super.requestFocus(i, rect);
        } else {
            throw new IllegalStateException("descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is " + descendantFocusability);
        }
        if (onRequestFocusInDescendants && !isLayoutValid() && (this.mPrivateFlags & 1) == 0) {
            this.mPrivateFlags |= 1;
        }
        return onRequestFocusInDescendants;
    }

    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4 = this.mChildrenCount;
        int i5 = -1;
        if ((i & 2) != 0) {
            i3 = i4;
            i2 = 0;
            i5 = 1;
        } else {
            i2 = i4 - 1;
            i3 = -1;
        }
        View[] viewArr = this.mChildren;
        while (i2 != i3) {
            View view = viewArr[i2];
            if ((view.mViewFlags & 12) == 0 && view.requestFocus(i, rect)) {
                return true;
            }
            i2 += i5;
        }
        return false;
    }

    @Override // android.view.View
    public boolean restoreDefaultFocus() {
        if (this.mDefaultFocus == null || getDescendantFocusability() == 393216 || (this.mDefaultFocus.mViewFlags & 12) != 0 || !this.mDefaultFocus.restoreDefaultFocus()) {
            return super.restoreDefaultFocus();
        }
        return true;
    }

    @Override // android.view.View
    public boolean restoreFocusInCluster(int i) {
        if (isKeyboardNavigationCluster()) {
            boolean touchscreenBlocksFocus = getTouchscreenBlocksFocus();
            try {
                setTouchscreenBlocksFocusNoRefocus(false);
                return restoreFocusInClusterInternal(i);
            } finally {
                setTouchscreenBlocksFocusNoRefocus(touchscreenBlocksFocus);
            }
        }
        return restoreFocusInClusterInternal(i);
    }

    private boolean restoreFocusInClusterInternal(int i) {
        if (this.mFocusedInCluster == null || getDescendantFocusability() == 393216 || (this.mFocusedInCluster.mViewFlags & 12) != 0 || !this.mFocusedInCluster.restoreFocusInCluster(i)) {
            return super.restoreFocusInCluster(i);
        }
        return true;
    }

    @Override // android.view.View
    public boolean restoreFocusNotInCluster() {
        if (this.mFocusedInCluster != null) {
            return restoreFocusInCluster(130);
        }
        if (isKeyboardNavigationCluster() || (this.mViewFlags & 12) != 0) {
            return false;
        }
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability == 393216) {
            return super.requestFocus(130, null);
        }
        if (descendantFocusability == 131072 && super.requestFocus(130, null)) {
            return true;
        }
        for (int i = 0; i < this.mChildrenCount; i++) {
            View view = this.mChildren[i];
            if (!view.isKeyboardNavigationCluster() && view.restoreFocusNotInCluster()) {
                return true;
            }
        }
        if (descendantFocusability != 262144 || hasFocusableChild(false)) {
            return false;
        }
        return super.requestFocus(130, null);
    }

    @Override // android.view.View
    public void dispatchStartTemporaryDetach() {
        super.dispatchStartTemporaryDetach();
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].dispatchStartTemporaryDetach();
        }
    }

    @Override // android.view.View
    public void dispatchFinishTemporaryDetach() {
        super.dispatchFinishTemporaryDetach();
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].dispatchFinishTemporaryDetach();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void dispatchAttachedToWindow(View.AttachInfo attachInfo, int i) {
        this.mGroupFlags |= 4194304;
        super.dispatchAttachedToWindow(attachInfo, i);
        this.mGroupFlags &= -4194305;
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            view.dispatchAttachedToWindow(attachInfo, combineVisibility(i, view.getVisibility()));
        }
        int size = this.mTransientIndices == null ? 0 : this.mTransientIndices.size();
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = this.mTransientViews.get(i4);
            view2.dispatchAttachedToWindow(attachInfo, combineVisibility(i, view2.getVisibility()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void dispatchScreenStateChanged(int i) {
        super.dispatchScreenStateChanged(i);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i3 = 0; i3 < i2; i3++) {
            viewArr[i3].dispatchScreenStateChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void dispatchMovedToDisplay(Display display, Configuration configuration) {
        super.dispatchMovedToDisplay(display, configuration);
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].dispatchMovedToDisplay(display, configuration);
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEventInternal(AccessibilityEvent accessibilityEvent) {
        boolean dispatchPopulateAccessibilityEvent;
        boolean dispatchPopulateAccessibilityEventInternal;
        if (includeForAccessibility() && (dispatchPopulateAccessibilityEventInternal = super.dispatchPopulateAccessibilityEventInternal(accessibilityEvent))) {
            return dispatchPopulateAccessibilityEventInternal;
        }
        ChildListForAccessibility obtain = ChildListForAccessibility.obtain(this, true);
        try {
            int childCount = obtain.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = obtain.getChildAt(i);
                if ((childAt.mViewFlags & 12) == 0 && (dispatchPopulateAccessibilityEvent = childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent))) {
                    return dispatchPopulateAccessibilityEvent;
                }
            }
            return false;
        } finally {
            obtain.recycle();
        }
    }

    @Override // android.view.View
    public void dispatchProvideStructure(ViewStructure viewStructure) {
        int i;
        int i2;
        super.dispatchProvideStructure(viewStructure);
        if (isAssistBlocked() || viewStructure.getChildCount() != 0 || (i = this.mChildrenCount) <= 0) {
            return;
        }
        if (!isLaidOut()) {
            if (Helper.sVerbose) {
                Log.v("View", "dispatchProvideStructure(): not laid out, ignoring " + i + " children of " + getAccessibilityViewId());
                return;
            }
            return;
        }
        viewStructure.setChildCount(i);
        ArrayList<View> buildOrderedChildList = buildOrderedChildList();
        boolean z = buildOrderedChildList == null && isChildrenDrawingOrderEnabled();
        ArrayList<View> arrayList = buildOrderedChildList;
        for (int i3 = 0; i3 < i; i3++) {
            try {
                i2 = getAndVerifyPreorderedIndex(i, i3, z);
            } catch (IndexOutOfBoundsException e) {
                if (this.mContext.getApplicationInfo().targetSdkVersion >= 23) {
                    throw e;
                }
                Log.w(TAG, "Bad getChildDrawingOrder while collecting assist @ " + i3 + " of " + i, e);
                if (i3 > 0) {
                    int[] iArr = new int[i];
                    SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
                    for (int i4 = 0; i4 < i3; i4++) {
                        iArr[i4] = getChildDrawingOrder(i, i4);
                        sparseBooleanArray.put(iArr[i4], true);
                    }
                    int i5 = 0;
                    for (int i6 = i3; i6 < i; i6++) {
                        while (sparseBooleanArray.get(i5, false)) {
                            i5++;
                        }
                        iArr[i6] = i5;
                        i5++;
                    }
                    arrayList = new ArrayList<>(i);
                    for (int i7 = 0; i7 < i; i7++) {
                        arrayList.add(this.mChildren[iArr[i7]]);
                    }
                }
                i2 = i3;
                z = false;
            }
            getAndVerifyPreorderedView(arrayList, this.mChildren, i2).dispatchProvideStructure(viewStructure.newChild(i3));
        }
        if (arrayList != null) {
            arrayList.clear();
        }
    }

    @Override // android.view.View
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        super.dispatchProvideAutofillStructure(viewStructure, i);
        if (viewStructure.getChildCount() != 0) {
            return;
        }
        if (!isLaidOut()) {
            if (Helper.sVerbose) {
                Log.v("View", "dispatchProvideAutofillStructure(): not laid out, ignoring " + this.mChildrenCount + " children of " + getAutofillId());
                return;
            }
            return;
        }
        ChildListForAutoFill childrenForAutofill = getChildrenForAutofill(i);
        int size = childrenForAutofill.size();
        viewStructure.setChildCount(size);
        for (int i2 = 0; i2 < size; i2++) {
            childrenForAutofill.get(i2).dispatchProvideAutofillStructure(viewStructure.newChild(i2), i);
        }
        childrenForAutofill.recycle();
    }

    private ChildListForAutoFill getChildrenForAutofill(int i) {
        ChildListForAutoFill obtain = ChildListForAutoFill.obtain();
        populateChildrenForAutofill(obtain, i);
        return obtain;
    }

    private void populateChildrenForAutofill(ArrayList<View> arrayList, int i) {
        int i2 = this.mChildrenCount;
        if (i2 <= 0) {
            return;
        }
        ArrayList<View> buildOrderedChildList = buildOrderedChildList();
        boolean z = buildOrderedChildList == null && isChildrenDrawingOrderEnabled();
        for (int i3 = 0; i3 < i2; i3++) {
            int andVerifyPreorderedIndex = getAndVerifyPreorderedIndex(i2, i3, z);
            View view = buildOrderedChildList == null ? this.mChildren[andVerifyPreorderedIndex] : buildOrderedChildList.get(andVerifyPreorderedIndex);
            if ((i & 1) != 0 || view.isImportantForAutofill()) {
                arrayList.add(view);
            } else if (view instanceof ViewGroup) {
                ((ViewGroup) view).populateChildrenForAutofill(arrayList, i);
            }
        }
    }

    private static View getAndVerifyPreorderedView(ArrayList<View> arrayList, View[] viewArr, int i) {
        if (arrayList != null) {
            View view = arrayList.get(i);
            if (view != null) {
                return view;
            }
            throw new RuntimeException("Invalid preorderedList contained null child at index " + i);
        }
        return viewArr[i];
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfoInternal(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfoInternal(accessibilityNodeInfo);
        if (getAccessibilityNodeProvider() == null && this.mAttachInfo != null) {
            ArrayList<View> arrayList = this.mAttachInfo.mTempArrayList;
            arrayList.clear();
            addChildrenForAccessibility(arrayList);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                accessibilityNodeInfo.addChildUnchecked(arrayList.get(i));
            }
            arrayList.clear();
        }
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return ViewGroup.class.getName();
    }

    @Override // android.view.ViewParent
    public void notifySubtreeAccessibilityStateChanged(View view, View view2, int i) {
        if (getAccessibilityLiveRegion() != 0) {
            notifyViewAccessibilityStateChangedIfNeeded(1);
            return;
        }
        if (this.mParent != null) {
            try {
                this.mParent.notifySubtreeAccessibilityStateChanged(this, view2, i);
            } catch (AbstractMethodError e) {
                Log.e("View", this.mParent.getClass().getSimpleName() + " does not fully implement ViewParent", e);
            }
        }
    }

    @Override // android.view.View
    public void notifySubtreeAccessibilityStateChangedIfNeeded() {
        if (!AccessibilityManager.getInstance(this.mContext).isEnabled() || this.mAttachInfo == null) {
            return;
        }
        if (getImportantForAccessibility() != 4 && !isImportantForAccessibility() && getChildCount() > 0) {
            Object parentForAccessibility = getParentForAccessibility();
            if (parentForAccessibility instanceof View) {
                ((View) parentForAccessibility).notifySubtreeAccessibilityStateChangedIfNeeded();
                return;
            }
        }
        super.notifySubtreeAccessibilityStateChangedIfNeeded();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void resetSubtreeAccessibilityStateChanged() {
        super.resetSubtreeAccessibilityStateChanged();
        View[] viewArr = this.mChildren;
        int i = this.mChildrenCount;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].resetSubtreeAccessibilityStateChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getNumChildrenForAccessibility() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.includeForAccessibility()) {
                i++;
            } else if (childAt instanceof ViewGroup) {
                i += ((ViewGroup) childAt).getNumChildrenForAccessibility();
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void dispatchDetachedFromWindow() {
        cancelAndClearTouchTargets(null);
        exitHoverTargets();
        exitTooltipHoverTargets();
        this.mLayoutCalledWhileSuppressed = false;
        this.mChildrenInterestedInDrag = null;
        this.mIsInterestedInDrag = false;
        if (this.mCurrentDragStartEvent != null) {
            this.mCurrentDragStartEvent.recycle();
            this.mCurrentDragStartEvent = null;
        }
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].dispatchDetachedFromWindow();
        }
        clearDisappearingChildren();
        int size = this.mTransientViews == null ? 0 : this.mTransientIndices.size();
        for (int i3 = 0; i3 < size; i3++) {
            this.mTransientViews.get(i3).dispatchDetachedFromWindow();
        }
        super.dispatchDetachedFromWindow();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void internalSetPadding(int i, int i2, int i3, int i4) {
        super.internalSetPadding(i, i2, i3, i4);
        if ((this.mPaddingLeft | this.mPaddingTop | this.mPaddingRight | this.mPaddingBottom) != 0) {
            this.mGroupFlags |= 32;
        } else {
            this.mGroupFlags &= -33;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        super.dispatchSaveInstanceState(sparseArray);
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            View view = viewArr[i2];
            if ((view.mViewFlags & 536870912) != 536870912) {
                view.dispatchSaveInstanceState(sparseArray);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void dispatchFreezeSelfOnly(SparseArray<Parcelable> sparseArray) {
        super.dispatchSaveInstanceState(sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        super.dispatchRestoreInstanceState(sparseArray);
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            View view = viewArr[i2];
            if ((view.mViewFlags & 536870912) != 536870912) {
                view.dispatchRestoreInstanceState(sparseArray);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void dispatchThawSelfOnly(SparseArray<Parcelable> sparseArray) {
        super.dispatchRestoreInstanceState(sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public void setChildrenDrawingCacheEnabled(boolean z) {
        if (z || (this.mPersistentDrawingCache & 3) != 3) {
            View[] viewArr = this.mChildren;
            int i = this.mChildrenCount;
            for (int i2 = 0; i2 < i; i2++) {
                viewArr[i2].setDrawingCacheEnabled(z);
            }
        }
    }

    @Override // android.view.View
    public Bitmap createSnapshot(ViewDebug.CanvasProvider canvasProvider, boolean z) {
        int[] iArr;
        int i = this.mChildrenCount;
        int i2 = 0;
        if (z) {
            iArr = new int[i];
            for (int i3 = 0; i3 < i; i3++) {
                View childAt = getChildAt(i3);
                iArr[i3] = childAt.getVisibility();
                if (iArr[i3] == 0) {
                    childAt.mViewFlags = (childAt.mViewFlags & (-13)) | 4;
                }
            }
        } else {
            iArr = null;
        }
        try {
            return super.createSnapshot(canvasProvider, z);
        } finally {
            if (z) {
                while (i2 < i) {
                    View childAt2 = getChildAt(i2);
                    childAt2.mViewFlags = (childAt2.mViewFlags & (-13)) | (iArr[i2] & 12);
                    i2++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isLayoutModeOptical() {
        return this.mLayoutMode == 1;
    }

    @Override // android.view.View
    Insets computeOpticalInsets() {
        if (isLayoutModeOptical()) {
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < this.mChildrenCount; i5++) {
                View childAt = getChildAt(i5);
                if (childAt.getVisibility() == 0) {
                    Insets opticalInsets = childAt.getOpticalInsets();
                    i = Math.max(i, opticalInsets.left);
                    i2 = Math.max(i2, opticalInsets.top);
                    i3 = Math.max(i3, opticalInsets.right);
                    i4 = Math.max(i4, opticalInsets.bottom);
                }
            }
            return Insets.of(i, i2, i3, i4);
        }
        return Insets.NONE;
    }

    private static void fillRect(Canvas canvas, Paint paint, int i, int i2, int i3, int i4) {
        if (i == i3 || i2 == i4) {
            return;
        }
        if (i > i3) {
            i3 = i;
            i = i3;
        }
        if (i2 > i4) {
            i4 = i2;
            i2 = i4;
        }
        canvas.drawRect(i, i2, i3, i4, paint);
    }

    private static void drawCorner(Canvas canvas, Paint paint, int i, int i2, int i3, int i4, int i5) {
        fillRect(canvas, paint, i, i2, i + i3, i2 + (sign(i4) * i5));
        fillRect(canvas, paint, i, i2, i + (i5 * sign(i3)), i2 + i4);
    }

    private static void drawRectCorners(Canvas canvas, int i, int i2, int i3, int i4, Paint paint, int i5, int i6) {
        drawCorner(canvas, paint, i, i2, i5, i5, i6);
        int i7 = -i5;
        drawCorner(canvas, paint, i, i4, i5, i7, i6);
        drawCorner(canvas, paint, i3, i2, i7, i5, i6);
        drawCorner(canvas, paint, i3, i4, i7, i7, i6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void fillDifference(Canvas canvas, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Paint paint) {
        int i9 = i - i5;
        int i10 = i3 + i7;
        fillRect(canvas, paint, i9, i2 - i6, i10, i2);
        fillRect(canvas, paint, i9, i2, i, i4);
        fillRect(canvas, paint, i3, i2, i10, i4);
        fillRect(canvas, paint, i9, i4, i10, i4 + i8);
    }

    protected void onDebugDrawMargins(Canvas canvas, Paint paint) {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            childAt.getLayoutParams().onDebugDraw(childAt, canvas, paint);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDebugDraw(Canvas canvas) {
        Paint debugPaint = getDebugPaint();
        debugPaint.setColor(Menu.CATEGORY_MASK);
        debugPaint.setStyle(Paint.Style.STROKE);
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                Insets opticalInsets = childAt.getOpticalInsets();
                drawRect(canvas, debugPaint, childAt.getLeft() + opticalInsets.left, childAt.getTop() + opticalInsets.top, (childAt.getRight() - opticalInsets.right) - 1, (childAt.getBottom() - opticalInsets.bottom) - 1);
            }
        }
        debugPaint.setColor(Color.argb(63, 255, 0, 255));
        debugPaint.setStyle(Paint.Style.FILL);
        onDebugDrawMargins(canvas, debugPaint);
        debugPaint.setColor(DEBUG_CORNERS_COLOR);
        debugPaint.setStyle(Paint.Style.FILL);
        int dipsToPixels = dipsToPixels(8);
        int dipsToPixels2 = dipsToPixels(1);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt2 = getChildAt(i2);
            if (childAt2.getVisibility() != 8) {
                drawRectCorners(canvas, childAt2.getLeft(), childAt2.getTop(), childAt2.getRight(), childAt2.getBottom(), debugPaint, dipsToPixels, dipsToPixels2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        int i;
        boolean isRecordingFor = canvas.isRecordingFor(this.mRenderNode);
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        int i3 = this.mGroupFlags;
        int i4 = 0;
        if ((i3 & 8) != 0 && canAnimate()) {
            isHardwareAccelerated();
            for (int i5 = 0; i5 < i2; i5++) {
                View view = viewArr[i5];
                if ((view.mViewFlags & 12) == 0) {
                    attachLayoutAnimationParameters(view, view.getLayoutParams(), i5, i2);
                    bindLayoutAnimation(view);
                }
            }
            LayoutAnimationController layoutAnimationController = this.mLayoutAnimationController;
            if (layoutAnimationController.willOverlap()) {
                this.mGroupFlags |= 128;
            }
            layoutAnimationController.start();
            this.mGroupFlags &= -9;
            this.mGroupFlags &= -17;
            if (this.mAnimationListener != null) {
                this.mAnimationListener.onAnimationStart(layoutAnimationController.getAnimation());
            }
        }
        boolean z = (i3 & 34) == 34;
        if (z) {
            i = canvas.save(2);
            canvas.clipRect(this.mScrollX + this.mPaddingLeft, this.mScrollY + this.mPaddingTop, ((this.mScrollX + this.mRight) - this.mLeft) - this.mPaddingRight, ((this.mScrollY + this.mBottom) - this.mTop) - this.mPaddingBottom);
        } else {
            i = 0;
        }
        this.mPrivateFlags &= -65;
        this.mGroupFlags &= -5;
        long drawingTime = getDrawingTime();
        if (isRecordingFor) {
            canvas.insertReorderBarrier();
        }
        int size = this.mTransientIndices == null ? 0 : this.mTransientIndices.size();
        int i6 = size != 0 ? 0 : -1;
        ArrayList<View> buildOrderedChildList = isRecordingFor ? null : buildOrderedChildList();
        boolean z2 = buildOrderedChildList == null && isChildrenDrawingOrderEnabled();
        int i7 = i6;
        boolean z3 = false;
        while (i4 < i2) {
            int i8 = i7;
            boolean z4 = z3;
            int i9 = i8;
            while (i9 >= 0 && this.mTransientIndices.get(i9).intValue() == i4) {
                View view2 = this.mTransientViews.get(i9);
                if ((view2.mViewFlags & 12) == 0 || view2.getAnimation() != null) {
                    z4 |= drawChild(canvas, view2, drawingTime);
                }
                int i10 = i9 + 1;
                i9 = i10 >= size ? -1 : i10;
            }
            View andVerifyPreorderedView = getAndVerifyPreorderedView(buildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i2, i4, z2));
            if ((andVerifyPreorderedView.mViewFlags & 12) == 0 || andVerifyPreorderedView.getAnimation() != null) {
                z4 |= drawChild(canvas, andVerifyPreorderedView, drawingTime);
            }
            i4++;
            boolean z5 = z4;
            i7 = i9;
            z3 = z5;
        }
        int i11 = i7;
        while (i11 >= 0) {
            View view3 = this.mTransientViews.get(i11);
            if ((view3.mViewFlags & 12) == 0 || view3.getAnimation() != null) {
                z3 = drawChild(canvas, view3, drawingTime) | z3;
            }
            i11++;
            if (i11 >= size) {
                break;
            }
        }
        if (buildOrderedChildList != null) {
            buildOrderedChildList.clear();
        }
        if (this.mDisappearingChildren != null) {
            ArrayList<View> arrayList = this.mDisappearingChildren;
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                z3 |= drawChild(canvas, arrayList.get(size2), drawingTime);
            }
        }
        if (isRecordingFor) {
            canvas.insertInorderBarrier();
        }
        if (debugDraw()) {
            onDebugDraw(canvas);
        }
        if (z) {
            canvas.restoreToCount(i);
        }
        int i12 = this.mGroupFlags;
        if ((i12 & 4) == 4) {
            invalidate(true);
        }
        if ((i12 & 16) == 0 && (i12 & 512) == 0 && this.mLayoutAnimationController.isDone() && !z3) {
            this.mGroupFlags |= 512;
            post(new Runnable() { // from class: android.view.ViewGroup.2
                @Override // java.lang.Runnable
                public void run() {
                    ViewGroup.this.notifyAnimationListener();
                }
            });
        }
    }

    @Override // android.view.View
    public ViewGroupOverlay getOverlay() {
        if (this.mOverlay == null) {
            this.mOverlay = new ViewGroupOverlay(this.mContext, this);
        }
        return (ViewGroupOverlay) this.mOverlay;
    }

    private boolean hasChildWithZ() {
        for (int i = 0; i < this.mChildrenCount; i++) {
            if (this.mChildren[i].getZ() != 0.0f) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<View> buildOrderedChildList() {
        int i = this.mChildrenCount;
        if (i <= 1 || !hasChildWithZ()) {
            return null;
        }
        if (this.mPreSortedChildren == null) {
            this.mPreSortedChildren = new ArrayList<>(i);
        } else {
            this.mPreSortedChildren.clear();
            this.mPreSortedChildren.ensureCapacity(i);
        }
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        for (int i2 = 0; i2 < i; i2++) {
            View view = this.mChildren[getAndVerifyPreorderedIndex(i, i2, isChildrenDrawingOrderEnabled)];
            float z = view.getZ();
            int i3 = i2;
            while (i3 > 0 && this.mPreSortedChildren.get(i3 - 1).getZ() > z) {
                i3--;
            }
            this.mPreSortedChildren.add(i3, view);
        }
        return this.mPreSortedChildren;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyAnimationListener() {
        this.mGroupFlags &= -513;
        this.mGroupFlags |= 16;
        if (this.mAnimationListener != null) {
            post(new Runnable() { // from class: android.view.ViewGroup.3
                @Override // java.lang.Runnable
                public void run() {
                    ViewGroup.this.mAnimationListener.onAnimationEnd(ViewGroup.this.mLayoutAnimationController.getAnimation());
                }
            });
        }
        invalidate(true);
    }

    @Override // android.view.View
    protected void dispatchGetDisplayList() {
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            View view = viewArr[i2];
            if ((view.mViewFlags & 12) == 0 || view.getAnimation() != null) {
                recreateChildDisplayList(view);
            }
        }
        int size = this.mTransientViews == null ? 0 : this.mTransientIndices.size();
        for (int i3 = 0; i3 < size; i3++) {
            View view2 = this.mTransientViews.get(i3);
            if ((view2.mViewFlags & 12) == 0 || view2.getAnimation() != null) {
                recreateChildDisplayList(view2);
            }
        }
        if (this.mOverlay != null) {
            recreateChildDisplayList(this.mOverlay.getOverlayView());
        }
        if (this.mDisappearingChildren != null) {
            ArrayList<View> arrayList = this.mDisappearingChildren;
            int size2 = arrayList.size();
            for (int i4 = 0; i4 < size2; i4++) {
                recreateChildDisplayList(arrayList.get(i4));
            }
        }
    }

    private void recreateChildDisplayList(View view) {
        view.mRecreateDisplayList = (view.mPrivateFlags & Integer.MIN_VALUE) != 0;
        view.mPrivateFlags &= Integer.MAX_VALUE;
        view.updateDisplayListIfDirty();
        view.mRecreateDisplayList = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j) {
        return view.draw(canvas, this, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void getScrollIndicatorBounds(Rect rect) {
        super.getScrollIndicatorBounds(rect);
        if ((this.mGroupFlags & 34) == 34) {
            rect.left += this.mPaddingLeft;
            rect.right -= this.mPaddingRight;
            rect.top += this.mPaddingTop;
            rect.bottom -= this.mPaddingBottom;
        }
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean getClipChildren() {
        return (this.mGroupFlags & 1) != 0;
    }

    public void setClipChildren(boolean z) {
        if (z != ((this.mGroupFlags & 1) == 1)) {
            setBooleanFlag(1, z);
            for (int i = 0; i < this.mChildrenCount; i++) {
                View childAt = getChildAt(i);
                if (childAt.mRenderNode != null) {
                    childAt.mRenderNode.setClipToBounds(z);
                }
            }
            invalidate(true);
        }
    }

    public void setClipToPadding(boolean z) {
        if (hasBooleanFlag(2) != z) {
            setBooleanFlag(2, z);
            invalidate(true);
        }
    }

    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean getClipToPadding() {
        return hasBooleanFlag(2);
    }

    @Override // android.view.View
    public void dispatchSetSelected(boolean z) {
        View[] viewArr = this.mChildren;
        int i = this.mChildrenCount;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].setSelected(z);
        }
    }

    @Override // android.view.View
    public void dispatchSetActivated(boolean z) {
        View[] viewArr = this.mChildren;
        int i = this.mChildrenCount;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].setActivated(z);
        }
    }

    @Override // android.view.View
    protected void dispatchSetPressed(boolean z) {
        View[] viewArr = this.mChildren;
        int i = this.mChildrenCount;
        for (int i2 = 0; i2 < i; i2++) {
            View view = viewArr[i2];
            if (!z || (!view.isClickable() && !view.isLongClickable())) {
                view.setPressed(z);
            }
        }
    }

    @Override // android.view.View
    public void dispatchDrawableHotspotChanged(float f, float f2) {
        int i = this.mChildrenCount;
        if (i == 0) {
            return;
        }
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            View view = viewArr[i2];
            boolean z = (view.isClickable() || view.isLongClickable()) ? false : true;
            boolean z2 = (view.mViewFlags & 4194304) != 0;
            if (z || z2) {
                float[] tempPoint = getTempPoint();
                tempPoint[0] = f;
                tempPoint[1] = f2;
                transformPointToViewLocal(tempPoint, view);
                view.drawableHotspotChanged(tempPoint[0], tempPoint[1]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void dispatchCancelPendingInputEvents() {
        super.dispatchCancelPendingInputEvents();
        View[] viewArr = this.mChildren;
        int i = this.mChildrenCount;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].dispatchCancelPendingInputEvents();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setStaticTransformationsEnabled(boolean z) {
        setBooleanFlag(2048, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Transformation getChildTransformation() {
        if (this.mChildTransformation == null) {
            this.mChildTransformation = new Transformation();
        }
        return this.mChildTransformation;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public <T extends View> T findViewTraversal(int i) {
        T t;
        if (i == this.mID) {
            return this;
        }
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            if ((view.mPrivateFlags & 8) == 0 && (t = (T) view.findViewById(i)) != null) {
                return t;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public <T extends View> T findViewWithTagTraversal(Object obj) {
        T t;
        if (obj != null && obj.equals(this.mTag)) {
            return this;
        }
        View[] viewArr = this.mChildren;
        int i = this.mChildrenCount;
        for (int i2 = 0; i2 < i; i2++) {
            View view = viewArr[i2];
            if ((view.mPrivateFlags & 8) == 0 && (t = (T) view.findViewWithTag(obj)) != null) {
                return t;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public <T extends View> T findViewByPredicateTraversal(Predicate<View> predicate, View view) {
        T t;
        if (predicate.test(this)) {
            return this;
        }
        View[] viewArr = this.mChildren;
        int i = this.mChildrenCount;
        for (int i2 = 0; i2 < i; i2++) {
            View view2 = viewArr[i2];
            if (view2 != view && (view2.mPrivateFlags & 8) == 0 && (t = (T) view2.findViewByPredicate(predicate)) != null) {
                return t;
            }
        }
        return null;
    }

    public void addTransientView(View view, int i) {
        if (i < 0) {
            return;
        }
        if (this.mTransientIndices == null) {
            this.mTransientIndices = new ArrayList();
            this.mTransientViews = new ArrayList();
        }
        int size = this.mTransientIndices.size();
        if (size > 0) {
            int i2 = 0;
            while (i2 < size && i >= this.mTransientIndices.get(i2).intValue()) {
                i2++;
            }
            this.mTransientIndices.add(i2, Integer.valueOf(i));
            this.mTransientViews.add(i2, view);
        } else {
            this.mTransientIndices.add(Integer.valueOf(i));
            this.mTransientViews.add(view);
        }
        view.mParent = this;
        view.dispatchAttachedToWindow(this.mAttachInfo, this.mViewFlags & 12);
        invalidate(true);
    }

    public void removeTransientView(View view) {
        if (this.mTransientViews == null) {
            return;
        }
        int size = this.mTransientViews.size();
        for (int i = 0; i < size; i++) {
            if (view == this.mTransientViews.get(i)) {
                this.mTransientViews.remove(i);
                this.mTransientIndices.remove(i);
                view.mParent = null;
                view.dispatchDetachedFromWindow();
                invalidate(true);
                return;
            }
        }
    }

    public int getTransientViewCount() {
        if (this.mTransientIndices == null) {
            return 0;
        }
        return this.mTransientIndices.size();
    }

    public int getTransientViewIndex(int i) {
        if (i < 0 || this.mTransientIndices == null || i >= this.mTransientIndices.size()) {
            return -1;
        }
        return this.mTransientIndices.get(i).intValue();
    }

    public View getTransientView(int i) {
        if (this.mTransientViews == null || i >= this.mTransientViews.size()) {
            return null;
        }
        return this.mTransientViews.get(i);
    }

    public void addView(View view) {
        addView(view, -1);
    }

    public void addView(View view, int i) {
        if (view == null) {
            throw new IllegalArgumentException("Cannot add a null child view to a ViewGroup");
        }
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null && (layoutParams = generateDefaultLayoutParams()) == null) {
            throw new IllegalArgumentException("generateDefaultLayoutParams() cannot return null");
        }
        addView(view, i, layoutParams);
    }

    public void addView(View view, int i, int i2) {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.width = i;
        generateDefaultLayoutParams.height = i2;
        addView(view, -1, generateDefaultLayoutParams);
    }

    @Override // android.view.ViewManager
    public void addView(View view, LayoutParams layoutParams) {
        addView(view, -1, layoutParams);
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        if (view == null) {
            throw new IllegalArgumentException("Cannot add a null child view to a ViewGroup");
        }
        requestLayout();
        invalidate(true);
        addViewInner(view, i, layoutParams, false);
    }

    @Override // android.view.ViewManager
    public void updateViewLayout(View view, LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            throw new IllegalArgumentException("Invalid LayoutParams supplied to " + this);
        }
        if (view.mParent != this) {
            throw new IllegalArgumentException("Given view not a child of " + this);
        }
        view.setLayoutParams(layoutParams);
    }

    public void setOnHierarchyChangeListener(OnHierarchyChangeListener onHierarchyChangeListener) {
        this.mOnHierarchyChangeListener = onHierarchyChangeListener;
    }

    void dispatchViewAdded(View view) {
        onViewAdded(view);
        if (this.mOnHierarchyChangeListener != null) {
            this.mOnHierarchyChangeListener.onChildViewAdded(this, view);
        }
    }

    void dispatchViewRemoved(View view) {
        onViewRemoved(view);
        if (this.mOnHierarchyChangeListener != null) {
            this.mOnHierarchyChangeListener.onChildViewRemoved(this, view);
        }
    }

    private void clearCachedLayoutMode() {
        if (hasBooleanFlag(8388608)) {
            return;
        }
        this.mLayoutMode = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        clearCachedLayoutMode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearCachedLayoutMode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void destroyHardwareResources() {
        super.destroyHardwareResources();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).destroyHardwareResources();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean addViewInLayout(View view, int i, LayoutParams layoutParams) {
        return addViewInLayout(view, i, layoutParams, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean addViewInLayout(View view, int i, LayoutParams layoutParams, boolean z) {
        if (view == null) {
            throw new IllegalArgumentException("Cannot add a null child view to a ViewGroup");
        }
        view.mParent = null;
        addViewInner(view, i, layoutParams, z);
        view.mPrivateFlags = (view.mPrivateFlags & (-6291457)) | 32;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cleanupLayoutState(View view) {
        view.mPrivateFlags &= -4097;
    }

    private void addViewInner(View view, int i, LayoutParams layoutParams, boolean z) {
        if (this.mTransition != null) {
            this.mTransition.cancel(3);
        }
        if (view.getParent() != null) {
            throw new IllegalStateException("The specified child already has a parent. You must call removeView() on the child's parent first.");
        }
        if (this.mTransition != null) {
            this.mTransition.addChild(this, view);
        }
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        if (z) {
            view.mLayoutParams = layoutParams;
        } else {
            view.setLayoutParams(layoutParams);
        }
        if (i < 0) {
            i = this.mChildrenCount;
        }
        addInArray(view, i);
        if (z) {
            view.assignParent(this);
        } else {
            view.mParent = this;
        }
        if (view.hasUnhandledKeyListener()) {
            incrementChildUnhandledKeyListeners();
        }
        if (view.hasFocus()) {
            requestChildFocus(view, view.findFocus());
        }
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && (this.mGroupFlags & 4194304) == 0) {
            boolean z2 = attachInfo.mKeepScreenOn;
            attachInfo.mKeepScreenOn = false;
            view.dispatchAttachedToWindow(this.mAttachInfo, this.mViewFlags & 12);
            if (attachInfo.mKeepScreenOn) {
                needGlobalAttributesUpdate(true);
            }
            attachInfo.mKeepScreenOn = z2;
        }
        if (view.isLayoutDirectionInherited()) {
            view.resetRtlProperties();
        }
        dispatchViewAdded(view);
        if ((view.mViewFlags & 4194304) == 4194304) {
            this.mGroupFlags |= 65536;
        }
        if (view.hasTransientState()) {
            childHasTransientStateChanged(view, true);
        }
        if (view.getVisibility() != 8) {
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
        if (this.mTransientIndices != null) {
            int size = this.mTransientIndices.size();
            for (int i2 = 0; i2 < size; i2++) {
                int intValue = this.mTransientIndices.get(i2).intValue();
                if (i <= intValue) {
                    this.mTransientIndices.set(i2, Integer.valueOf(intValue + 1));
                }
            }
        }
        if (this.mCurrentDragStartEvent != null && view.getVisibility() == 0) {
            notifyChildOfDragStart(view);
        }
        if (view.hasDefaultFocus()) {
            setDefaultFocus(view);
        }
        touchAccessibilityNodeProviderIfNeeded(view);
    }

    private void touchAccessibilityNodeProviderIfNeeded(View view) {
        if (this.mContext.isAutofillCompatibilityEnabled()) {
            view.getAccessibilityNodeProvider();
        }
    }

    private void addInArray(View view, int i) {
        View[] viewArr = this.mChildren;
        int i2 = this.mChildrenCount;
        int length = viewArr.length;
        if (i == i2) {
            if (length == i2) {
                this.mChildren = new View[length + 12];
                System.arraycopy(viewArr, 0, this.mChildren, 0, length);
                viewArr = this.mChildren;
            }
            int i3 = this.mChildrenCount;
            this.mChildrenCount = i3 + 1;
            viewArr[i3] = view;
            return;
        }
        if (i < i2) {
            if (length == i2) {
                this.mChildren = new View[length + 12];
                System.arraycopy(viewArr, 0, this.mChildren, 0, i);
                System.arraycopy(viewArr, i, this.mChildren, i + 1, i2 - i);
                viewArr = this.mChildren;
            } else {
                System.arraycopy(viewArr, i, viewArr, i + 1, i2 - i);
            }
            viewArr[i] = view;
            this.mChildrenCount++;
            if (this.mLastTouchDownIndex >= i) {
                this.mLastTouchDownIndex++;
                return;
            }
            return;
        }
        throw new IndexOutOfBoundsException("index=" + i + " count=" + i2);
    }

    private void removeFromArray(int i) {
        View[] viewArr = this.mChildren;
        if (this.mTransitioningViews == null || !this.mTransitioningViews.contains(viewArr[i])) {
            viewArr[i].mParent = null;
        }
        int i2 = this.mChildrenCount;
        if (i == i2 - 1) {
            int i3 = this.mChildrenCount - 1;
            this.mChildrenCount = i3;
            viewArr[i3] = null;
        } else if (i >= 0 && i < i2) {
            System.arraycopy(viewArr, i + 1, viewArr, i, (i2 - i) - 1);
            int i4 = this.mChildrenCount - 1;
            this.mChildrenCount = i4;
            viewArr[i4] = null;
        } else {
            throw new IndexOutOfBoundsException();
        }
        if (this.mLastTouchDownIndex == i) {
            this.mLastTouchDownTime = 0L;
            this.mLastTouchDownIndex = -1;
        } else if (this.mLastTouchDownIndex > i) {
            this.mLastTouchDownIndex--;
        }
    }

    private void removeFromArray(int i, int i2) {
        View[] viewArr = this.mChildren;
        int i3 = this.mChildrenCount;
        int max = Math.max(0, i);
        int min = Math.min(i3, i2 + max);
        if (max == min) {
            return;
        }
        if (min == i3) {
            for (int i4 = max; i4 < min; i4++) {
                viewArr[i4].mParent = null;
                viewArr[i4] = null;
            }
        } else {
            for (int i5 = max; i5 < min; i5++) {
                viewArr[i5].mParent = null;
            }
            System.arraycopy(viewArr, min, viewArr, max, i3 - min);
            for (int i6 = i3 - (min - max); i6 < i3; i6++) {
                viewArr[i6] = null;
            }
        }
        this.mChildrenCount -= min - max;
    }

    private void bindLayoutAnimation(View view) {
        view.setAnimation(this.mLayoutAnimationController.getAnimationForView(view));
    }

    protected void attachLayoutAnimationParameters(View view, LayoutParams layoutParams, int i, int i2) {
        LayoutAnimationController.AnimationParameters animationParameters = layoutParams.layoutAnimationParameters;
        if (animationParameters == null) {
            animationParameters = new LayoutAnimationController.AnimationParameters();
            layoutParams.layoutAnimationParameters = animationParameters;
        }
        animationParameters.count = i2;
        animationParameters.index = i;
    }

    @Override // android.view.ViewManager
    public void removeView(View view) {
        if (removeViewInternal(view)) {
            requestLayout();
            invalidate(true);
        }
    }

    public void removeViewInLayout(View view) {
        removeViewInternal(view);
    }

    public void removeViewsInLayout(int i, int i2) {
        removeViewsInternal(i, i2);
    }

    public void removeViewAt(int i) {
        removeViewInternal(i, getChildAt(i));
        requestLayout();
        invalidate(true);
    }

    public void removeViews(int i, int i2) {
        removeViewsInternal(i, i2);
        requestLayout();
        invalidate(true);
    }

    private boolean removeViewInternal(View view) {
        int indexOfChild = indexOfChild(view);
        if (indexOfChild < 0) {
            return false;
        }
        removeViewInternal(indexOfChild, view);
        return true;
    }

    private void removeViewInternal(int i, View view) {
        boolean z;
        if (this.mTransition != null) {
            this.mTransition.removeChild(this, view);
        }
        if (SystemProperties.getBoolean("ro.atc.aosp_enhancement", false) && view == null) {
            Log.w(TAG, "view is null.", new Throwable());
            return;
        }
        if (view == this.mFocused) {
            view.unFocus(null);
            z = true;
        } else {
            z = false;
        }
        if (view == this.mFocusedInCluster) {
            clearFocusedInCluster(view);
        }
        view.clearAccessibilityFocus();
        cancelTouchTarget(view);
        cancelHoverTarget(view);
        if (view.getAnimation() != null || (this.mTransitioningViews != null && this.mTransitioningViews.contains(view))) {
            addDisappearingView(view);
        } else if (view.mAttachInfo != null) {
            view.dispatchDetachedFromWindow();
        }
        if (view.hasTransientState()) {
            childHasTransientStateChanged(view, false);
        }
        needGlobalAttributesUpdate(false);
        removeFromArray(i);
        if (view.hasUnhandledKeyListener()) {
            decrementChildUnhandledKeyListeners();
        }
        if (view == this.mDefaultFocus) {
            clearDefaultFocus(view);
        }
        if (z) {
            clearChildFocus(view);
            if (!rootViewRequestFocus()) {
                notifyGlobalFocusCleared(this);
            }
        }
        dispatchViewRemoved(view);
        if (view.getVisibility() != 8) {
            notifySubtreeAccessibilityStateChangedIfNeeded();
        }
        int size = this.mTransientIndices == null ? 0 : this.mTransientIndices.size();
        for (int i2 = 0; i2 < size; i2++) {
            int intValue = this.mTransientIndices.get(i2).intValue();
            if (i < intValue) {
                this.mTransientIndices.set(i2, Integer.valueOf(intValue - 1));
            }
        }
        if (this.mCurrentDragStartEvent != null) {
            this.mChildrenInterestedInDrag.remove(view);
        }
    }

    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (this.mTransition != null) {
            LayoutTransition layoutTransition2 = this.mTransition;
            layoutTransition2.cancel();
            layoutTransition2.removeTransitionListener(this.mLayoutTransitionListener);
        }
        this.mTransition = layoutTransition;
        if (this.mTransition != null) {
            this.mTransition.addTransitionListener(this.mLayoutTransitionListener);
        }
    }

    public LayoutTransition getLayoutTransition() {
        return this.mTransition;
    }

    private void removeViewsInternal(int i, int i2) {
        int i3 = i + i2;
        if (i < 0 || i2 < 0 || i3 > this.mChildrenCount) {
            throw new IndexOutOfBoundsException();
        }
        View view = this.mFocused;
        boolean z = this.mAttachInfo != null;
        View[] viewArr = this.mChildren;
        boolean z2 = false;
        View view2 = null;
        for (int i4 = i; i4 < i3; i4++) {
            View view3 = viewArr[i4];
            if (this.mTransition != null) {
                this.mTransition.removeChild(this, view3);
            }
            if (view3 == view) {
                view3.unFocus(null);
                z2 = true;
            }
            if (view3 == this.mDefaultFocus) {
                view2 = view3;
            }
            if (view3 == this.mFocusedInCluster) {
                clearFocusedInCluster(view3);
            }
            view3.clearAccessibilityFocus();
            cancelTouchTarget(view3);
            cancelHoverTarget(view3);
            if (view3.getAnimation() != null || (this.mTransitioningViews != null && this.mTransitioningViews.contains(view3))) {
                addDisappearingView(view3);
            } else if (z) {
                view3.dispatchDetachedFromWindow();
            }
            if (view3.hasTransientState()) {
                childHasTransientStateChanged(view3, false);
            }
            needGlobalAttributesUpdate(false);
            dispatchViewRemoved(view3);
        }
        removeFromArray(i, i2);
        if (view2 != null) {
            clearDefaultFocus(view2);
        }
        if (z2) {
            clearChildFocus(view);
            if (rootViewRequestFocus()) {
                return;
            }
            notifyGlobalFocusCleared(view);
        }
    }

    public void removeAllViews() {
        removeAllViewsInLayout();
        requestLayout();
        invalidate(true);
    }

    public void removeAllViewsInLayout() {
        int i = this.mChildrenCount;
        if (i <= 0) {
            return;
        }
        View[] viewArr = this.mChildren;
        this.mChildrenCount = 0;
        View view = this.mFocused;
        boolean z = this.mAttachInfo != null;
        needGlobalAttributesUpdate(false);
        boolean z2 = false;
        for (int i2 = i - 1; i2 >= 0; i2--) {
            View view2 = viewArr[i2];
            if (this.mTransition != null) {
                this.mTransition.removeChild(this, view2);
            }
            if (view2 == view) {
                view2.unFocus(null);
                z2 = true;
            }
            view2.clearAccessibilityFocus();
            cancelTouchTarget(view2);
            cancelHoverTarget(view2);
            if (view2.getAnimation() != null || (this.mTransitioningViews != null && this.mTransitioningViews.contains(view2))) {
                addDisappearingView(view2);
            } else if (z) {
                view2.dispatchDetachedFromWindow();
            }
            if (view2.hasTransientState()) {
                childHasTransientStateChanged(view2, false);
            }
            dispatchViewRemoved(view2);
            view2.mParent = null;
            viewArr[i2] = null;
        }
        if (this.mDefaultFocus != null) {
            clearDefaultFocus(this.mDefaultFocus);
        }
        if (this.mFocusedInCluster != null) {
            clearFocusedInCluster(this.mFocusedInCluster);
        }
        if (z2) {
            clearChildFocus(view);
            if (rootViewRequestFocus()) {
                return;
            }
            notifyGlobalFocusCleared(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeDetachedView(View view, boolean z) {
        if (this.mTransition != null) {
            this.mTransition.removeChild(this, view);
        }
        if (view == this.mFocused) {
            view.clearFocus();
        }
        if (view == this.mDefaultFocus) {
            clearDefaultFocus(view);
        }
        if (view == this.mFocusedInCluster) {
            clearFocusedInCluster(view);
        }
        view.clearAccessibilityFocus();
        cancelTouchTarget(view);
        cancelHoverTarget(view);
        if ((z && view.getAnimation() != null) || (this.mTransitioningViews != null && this.mTransitioningViews.contains(view))) {
            addDisappearingView(view);
        } else if (view.mAttachInfo != null) {
            view.dispatchDetachedFromWindow();
        }
        if (view.hasTransientState()) {
            childHasTransientStateChanged(view, false);
        }
        dispatchViewRemoved(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void attachViewToParent(View view, int i, LayoutParams layoutParams) {
        view.mLayoutParams = layoutParams;
        if (i < 0) {
            i = this.mChildrenCount;
        }
        addInArray(view, i);
        view.mParent = this;
        view.mPrivateFlags = (view.mPrivateFlags & (-6291457) & (-32769)) | 32 | Integer.MIN_VALUE;
        this.mPrivateFlags |= Integer.MIN_VALUE;
        if (view.hasFocus()) {
            requestChildFocus(view, view.findFocus());
        }
        dispatchVisibilityAggregated(isAttachedToWindow() && getWindowVisibility() == 0 && isShown());
        notifySubtreeAccessibilityStateChangedIfNeeded();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void detachViewFromParent(View view) {
        removeFromArray(indexOfChild(view));
    }

    protected void detachViewFromParent(int i) {
        removeFromArray(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void detachViewsFromParent(int i, int i2) {
        removeFromArray(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void detachAllViewsFromParent() {
        int i = this.mChildrenCount;
        if (i <= 0) {
            return;
        }
        View[] viewArr = this.mChildren;
        this.mChildrenCount = 0;
        for (int i2 = i - 1; i2 >= 0; i2--) {
            viewArr[i2].mParent = null;
            viewArr[i2] = null;
        }
    }

    @Override // android.view.ViewParent
    public void onDescendantInvalidated(View view, View view2) {
        this.mPrivateFlags |= view2.mPrivateFlags & 64;
        if ((view2.mPrivateFlags & (-6291457)) != 0) {
            this.mPrivateFlags = (this.mPrivateFlags & (-6291457)) | 2097152;
            this.mPrivateFlags &= -32769;
        }
        if (this.mLayerType == 1) {
            this.mPrivateFlags |= -2145386496;
            view2 = this;
        }
        if (this.mParent != null) {
            this.mParent.onDescendantInvalidated(this, view2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [android.view.ViewGroup] */
    /* JADX WARN: Type inference failed for: r11v1, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r11v2, types: [android.view.ViewParent] */
    @Override // android.view.ViewParent
    @Deprecated
    public final void invalidateChild(View view, Rect rect) {
        View.AttachInfo attachInfo = this.mAttachInfo;
        if (attachInfo != null && attachInfo.mHardwareAccelerated) {
            onDescendantInvalidated(view, view);
            return;
        }
        if (attachInfo != null) {
            boolean z = (view.mPrivateFlags & 64) != 0;
            Matrix matrix = view.getMatrix();
            int i = view.isOpaque() && !z && view.getAnimation() == null && matrix.isIdentity() ? 4194304 : 2097152;
            if (view.mLayerType != 0) {
                this.mPrivateFlags |= Integer.MIN_VALUE;
                this.mPrivateFlags &= -32769;
            }
            int[] iArr = attachInfo.mInvalidateChildLocation;
            iArr[0] = view.mLeft;
            iArr[1] = view.mTop;
            if (!matrix.isIdentity() || (this.mGroupFlags & 2048) != 0) {
                RectF rectF = attachInfo.mTmpTransformRect;
                rectF.set(rect);
                if ((this.mGroupFlags & 2048) != 0) {
                    Transformation transformation = attachInfo.mTmpTransformation;
                    if (getChildStaticTransformation(view, transformation)) {
                        Matrix matrix2 = attachInfo.mTmpMatrix;
                        matrix2.set(transformation.getMatrix());
                        if (!matrix.isIdentity()) {
                            matrix2.preConcat(matrix);
                        }
                        matrix = matrix2;
                    }
                }
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            do {
                View view2 = this instanceof View ? this : null;
                if (z) {
                    if (view2 != null) {
                        view2.mPrivateFlags |= 64;
                    } else if (this instanceof ViewRootImpl) {
                        this.mIsAnimating = true;
                    }
                }
                if (view2 != null) {
                    if ((view2.mViewFlags & 12288) != 0 && view2.getSolidColor() == 0) {
                        i = 2097152;
                    }
                    if ((view2.mPrivateFlags & 6291456) != 2097152) {
                        view2.mPrivateFlags = (view2.mPrivateFlags & (-6291457)) | i;
                    }
                }
                this = this.invalidateChildInParent(iArr, rect);
                if (view2 != null) {
                    Matrix matrix3 = view2.getMatrix();
                    if (!matrix3.isIdentity()) {
                        RectF rectF2 = attachInfo.mTmpTransformRect;
                        rectF2.set(rect);
                        matrix3.mapRect(rectF2);
                        rect.set((int) Math.floor(rectF2.left), (int) Math.floor(rectF2.top), (int) Math.ceil(rectF2.right), (int) Math.ceil(rectF2.bottom));
                    }
                }
            } while (this != 0);
        }
    }

    @Override // android.view.ViewParent
    @Deprecated
    public ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
        if ((this.mPrivateFlags & 32800) == 0) {
            return null;
        }
        if ((this.mGroupFlags & 144) != 128) {
            rect.offset(iArr[0] - this.mScrollX, iArr[1] - this.mScrollY);
            if ((this.mGroupFlags & 1) == 0) {
                rect.union(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
            }
            int i = this.mLeft;
            int i2 = this.mTop;
            if ((this.mGroupFlags & 1) == 1 && !rect.intersect(0, 0, this.mRight - i, this.mBottom - i2)) {
                rect.setEmpty();
            }
            iArr[0] = i;
            iArr[1] = i2;
        } else {
            if ((this.mGroupFlags & 1) == 1) {
                rect.set(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
            } else {
                rect.union(0, 0, this.mRight - this.mLeft, this.mBottom - this.mTop);
            }
            iArr[0] = this.mLeft;
            iArr[1] = this.mTop;
            this.mPrivateFlags &= -33;
        }
        this.mPrivateFlags &= -32769;
        if (this.mLayerType != 0) {
            this.mPrivateFlags |= Integer.MIN_VALUE;
        }
        return this.mParent;
    }

    public final void offsetDescendantRectToMyCoords(View view, Rect rect) {
        offsetRectBetweenParentAndChild(view, rect, true, false);
    }

    public final void offsetRectIntoDescendantCoords(View view, Rect rect) {
        offsetRectBetweenParentAndChild(view, rect, false, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
    
        if (r8 == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0065, code lost:
    
        r7.offset(r6.mLeft - r6.mScrollX, r6.mTop - r6.mScrollY);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        r7.offset(r6.mScrollX - r6.mLeft, r6.mScrollY - r6.mTop);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0080, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void offsetRectBetweenParentAndChild(View view, Rect rect, boolean z, boolean z2) {
        if (view == this) {
            return;
        }
        Object obj = view.mParent;
        while (obj != null && (obj instanceof View) && obj != this) {
            if (z) {
                rect.offset(view.mLeft - view.mScrollX, view.mTop - view.mScrollY);
                if (z2) {
                    View view2 = (View) obj;
                    if (!rect.intersect(0, 0, view2.mRight - view2.mLeft, view2.mBottom - view2.mTop)) {
                        rect.setEmpty();
                    }
                }
            } else {
                if (z2) {
                    View view3 = (View) obj;
                    if (!rect.intersect(0, 0, view3.mRight - view3.mLeft, view3.mBottom - view3.mTop)) {
                        rect.setEmpty();
                    }
                }
                rect.offset(view.mScrollX - view.mLeft, view.mScrollY - view.mTop);
            }
            view = (View) obj;
            obj = view.mParent;
        }
        throw new IllegalArgumentException("parameter must be a descendant of this view");
    }

    public void offsetChildrenTopAndBottom(int i) {
        int i2 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        boolean z = false;
        for (int i3 = 0; i3 < i2; i3++) {
            View view = viewArr[i3];
            view.mTop += i;
            view.mBottom += i;
            if (view.mRenderNode != null) {
                view.mRenderNode.offsetTopAndBottom(i);
                z = true;
            }
        }
        if (z) {
            invalidateViewProperty(false, false);
        }
        notifySubtreeAccessibilityStateChangedIfNeeded();
    }

    @Override // android.view.ViewParent
    public boolean getChildVisibleRect(View view, Rect rect, Point point) {
        return getChildVisibleRect(view, rect, point, false);
    }

    public boolean getChildVisibleRect(View view, Rect rect, Point point, boolean z) {
        RectF rectF = this.mAttachInfo != null ? this.mAttachInfo.mTmpTransformRect : new RectF();
        rectF.set(rect);
        if (!view.hasIdentityMatrix()) {
            view.getMatrix().mapRect(rectF);
        }
        int i = view.mLeft - this.mScrollX;
        int i2 = view.mTop - this.mScrollY;
        rectF.offset(i, i2);
        boolean z2 = true;
        if (point != null) {
            if (!view.hasIdentityMatrix()) {
                float[] fArr = this.mAttachInfo != null ? this.mAttachInfo.mTmpTransformLocation : new float[2];
                fArr[0] = point.x;
                fArr[1] = point.y;
                view.getMatrix().mapPoints(fArr);
                point.x = Math.round(fArr[0]);
                point.y = Math.round(fArr[1]);
            }
            point.x += i;
            point.y += i2;
        }
        int i3 = this.mRight - this.mLeft;
        int i4 = this.mBottom - this.mTop;
        if (this.mParent == null || ((this.mParent instanceof ViewGroup) && ((ViewGroup) this.mParent).getClipChildren())) {
            z2 = rectF.intersect(0.0f, 0.0f, i3, i4);
        }
        if ((z || z2) && (this.mGroupFlags & 34) == 34) {
            z2 = rectF.intersect(this.mPaddingLeft, this.mPaddingTop, i3 - this.mPaddingRight, i4 - this.mPaddingBottom);
        }
        if ((z || z2) && this.mClipBounds != null) {
            z2 = rectF.intersect(this.mClipBounds.left, this.mClipBounds.top, this.mClipBounds.right, this.mClipBounds.bottom);
        }
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        if ((!z && !z2) || this.mParent == null) {
            return z2;
        }
        if (this.mParent instanceof ViewGroup) {
            return ((ViewGroup) this.mParent).getChildVisibleRect(this, rect, point, z);
        }
        return this.mParent.getChildVisibleRect(this, rect, point);
    }

    @Override // android.view.View
    public final void layout(int i, int i2, int i3, int i4) {
        if (!this.mSuppressLayout && (this.mTransition == null || !this.mTransition.isChangingLayout())) {
            if (this.mTransition != null) {
                this.mTransition.layoutChange(this);
            }
            super.layout(i, i2, i3, i4);
            return;
        }
        this.mLayoutCalledWhileSuppressed = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean canAnimate() {
        return this.mLayoutAnimationController != null;
    }

    public void startLayoutAnimation() {
        if (this.mLayoutAnimationController != null) {
            this.mGroupFlags |= 8;
            requestLayout();
        }
    }

    public void scheduleLayoutAnimation() {
        this.mGroupFlags |= 8;
    }

    public void setLayoutAnimation(LayoutAnimationController layoutAnimationController) {
        this.mLayoutAnimationController = layoutAnimationController;
        if (this.mLayoutAnimationController != null) {
            this.mGroupFlags |= 8;
        }
    }

    public LayoutAnimationController getLayoutAnimation() {
        return this.mLayoutAnimationController;
    }

    @Deprecated
    public boolean isAnimationCacheEnabled() {
        return (this.mGroupFlags & 64) == 64;
    }

    @Deprecated
    public void setAnimationCacheEnabled(boolean z) {
        setBooleanFlag(64, z);
    }

    @Deprecated
    public boolean isAlwaysDrawnWithCacheEnabled() {
        return (this.mGroupFlags & 16384) == 16384;
    }

    @Deprecated
    public void setAlwaysDrawnWithCacheEnabled(boolean z) {
        setBooleanFlag(16384, z);
    }

    @Deprecated
    protected boolean isChildrenDrawnWithCacheEnabled() {
        return (this.mGroupFlags & 32768) == 32768;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public void setChildrenDrawnWithCacheEnabled(boolean z) {
        setBooleanFlag(32768, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @ViewDebug.ExportedProperty(category = "drawing")
    public boolean isChildrenDrawingOrderEnabled() {
        return (this.mGroupFlags & 1024) == 1024;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setChildrenDrawingOrderEnabled(boolean z) {
        setBooleanFlag(1024, z);
    }

    private boolean hasBooleanFlag(int i) {
        return (this.mGroupFlags & i) == i;
    }

    private void setBooleanFlag(int i, boolean z) {
        if (z) {
            this.mGroupFlags = i | this.mGroupFlags;
        } else {
            this.mGroupFlags = (~i) & this.mGroupFlags;
        }
    }

    @ViewDebug.ExportedProperty(category = "drawing", mapping = {@ViewDebug.IntToString(from = 0, to = KeyProperties.DIGEST_NONE), @ViewDebug.IntToString(from = 1, to = "ANIMATION"), @ViewDebug.IntToString(from = 2, to = "SCROLLING"), @ViewDebug.IntToString(from = 3, to = "ALL")})
    @Deprecated
    public int getPersistentDrawingCache() {
        return this.mPersistentDrawingCache;
    }

    @Deprecated
    public void setPersistentDrawingCache(int i) {
        this.mPersistentDrawingCache = i & 3;
    }

    private void setLayoutMode(int i, boolean z) {
        this.mLayoutMode = i;
        setBooleanFlag(8388608, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public void invalidateInheritedLayoutMode(int i) {
        if (this.mLayoutMode == -1 || this.mLayoutMode == i || hasBooleanFlag(8388608)) {
            return;
        }
        setLayoutMode(-1, false);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            getChildAt(i2).invalidateInheritedLayoutMode(i);
        }
    }

    public int getLayoutMode() {
        if (this.mLayoutMode == -1) {
            setLayoutMode(this.mParent instanceof ViewGroup ? ((ViewGroup) this.mParent).getLayoutMode() : LAYOUT_MODE_DEFAULT, false);
        }
        return this.mLayoutMode;
    }

    public void setLayoutMode(int i) {
        if (this.mLayoutMode != i) {
            invalidateInheritedLayoutMode(i);
            setLayoutMode(i, i != -1);
            requestLayout();
        }
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void debug(int i) {
        super.debug(i);
        if (this.mFocused != null) {
            Log.d("View", debugIndent(i) + "mFocused");
            this.mFocused.debug(i + 1);
        }
        if (this.mDefaultFocus != null) {
            Log.d("View", debugIndent(i) + "mDefaultFocus");
            this.mDefaultFocus.debug(i + 1);
        }
        if (this.mFocusedInCluster != null) {
            Log.d("View", debugIndent(i) + "mFocusedInCluster");
            this.mFocusedInCluster.debug(i + 1);
        }
        if (this.mChildrenCount != 0) {
            Log.d("View", debugIndent(i) + "{");
        }
        int i2 = this.mChildrenCount;
        for (int i3 = 0; i3 < i2; i3++) {
            this.mChildren[i3].debug(i + 1);
        }
        if (this.mChildrenCount != 0) {
            Log.d("View", debugIndent(i) + "}");
        }
    }

    public int indexOfChild(View view) {
        int i = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i2 = 0; i2 < i; i2++) {
            if (viewArr[i2] == view) {
                return i2;
            }
        }
        return -1;
    }

    public int getChildCount() {
        return this.mChildrenCount;
    }

    public View getChildAt(int i) {
        if (i < 0 || i >= this.mChildrenCount) {
            return null;
        }
        return this.mChildren[i];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void measureChildren(int i, int i2) {
        int i3 = this.mChildrenCount;
        View[] viewArr = this.mChildren;
        for (int i4 = 0; i4 < i3; i4++) {
            View view = viewArr[i4];
            if ((view.mViewFlags & 12) != 8) {
                measureChild(view, i, i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void measureChild(View view, int i, int i2) {
        LayoutParams layoutParams = view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, this.mPaddingLeft + this.mPaddingRight, layoutParams.width), getChildMeasureSpec(i2, this.mPaddingTop + this.mPaddingBottom, layoutParams.height));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
        view.measure(getChildMeasureSpec(i, this.mPaddingLeft + this.mPaddingRight + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), getChildMeasureSpec(i3, this.mPaddingTop + this.mPaddingBottom + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        if (android.view.View.sUseZeroUnspecifiedMeasureSpec != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002e, code lost:
    
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0037, code lost:
    
        if (android.view.View.sUseZeroUnspecifiedMeasureSpec != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
    
        if (r7 == (-2)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
    
        if (r7 == (-2)) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int getChildMeasureSpec(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int max = Math.max(0, View.MeasureSpec.getSize(i) - i2);
        int i4 = 1073741824;
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    if (i3 < 0) {
                        if (i3 == -1) {
                            i3 = max;
                        }
                    }
                }
                i3 = 0;
                i4 = 0;
            } else if (i3 < 0) {
                if (i3 != -1) {
                    if (i3 == -2) {
                    }
                    i3 = 0;
                    i4 = 0;
                }
                i4 = 0;
            }
        } else if (i3 < 0) {
            if (i3 != -1) {
            }
            i3 = max;
            i4 = Integer.MIN_VALUE;
        }
        return View.MeasureSpec.makeMeasureSpec(i3, i4);
    }

    public void clearDisappearingChildren() {
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                View view = arrayList.get(i);
                if (view.mAttachInfo != null) {
                    view.dispatchDetachedFromWindow();
                }
                view.clearAnimation();
            }
            arrayList.clear();
            invalidate();
        }
    }

    private void addDisappearingView(View view) {
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.mDisappearingChildren = arrayList;
        }
        arrayList.add(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void finishAnimatingView(View view, Animation animation) {
        ArrayList<View> arrayList = this.mDisappearingChildren;
        if (arrayList != null && arrayList.contains(view)) {
            arrayList.remove(view);
            if (view.mAttachInfo != null) {
                view.dispatchDetachedFromWindow();
            }
            view.clearAnimation();
            this.mGroupFlags |= 4;
        }
        if (animation != null && !animation.getFillAfter()) {
            view.clearAnimation();
        }
        if ((view.mPrivateFlags & 65536) == 65536) {
            view.onAnimationEnd();
            view.mPrivateFlags &= -65537;
            this.mGroupFlags |= 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isViewTransitioning(View view) {
        return this.mTransitioningViews != null && this.mTransitioningViews.contains(view);
    }

    public void startViewTransition(View view) {
        if (view.mParent == this) {
            if (this.mTransitioningViews == null) {
                this.mTransitioningViews = new ArrayList<>();
            }
            this.mTransitioningViews.add(view);
        }
    }

    public void endViewTransition(View view) {
        if (this.mTransitioningViews != null) {
            this.mTransitioningViews.remove(view);
            ArrayList<View> arrayList = this.mDisappearingChildren;
            if (arrayList == null || !arrayList.contains(view)) {
                return;
            }
            arrayList.remove(view);
            if (this.mVisibilityChangingChildren != null && this.mVisibilityChangingChildren.contains(view)) {
                this.mVisibilityChangingChildren.remove(view);
            } else {
                if (view.mAttachInfo != null) {
                    view.dispatchDetachedFromWindow();
                }
                if (view.mParent != null) {
                    view.mParent = null;
                }
            }
            invalidate();
        }
    }

    public void suppressLayout(boolean z) {
        this.mSuppressLayout = z;
        if (z || !this.mLayoutCalledWhileSuppressed) {
            return;
        }
        requestLayout();
        this.mLayoutCalledWhileSuppressed = false;
    }

    public boolean isLayoutSuppressed() {
        return this.mSuppressLayout;
    }

    @Override // android.view.View
    public boolean gatherTransparentRegion(Region region) {
        boolean z;
        boolean z2 = (this.mPrivateFlags & 512) == 0;
        if (z2 && region == null) {
            return true;
        }
        super.gatherTransparentRegion(region);
        int i = this.mChildrenCount;
        if (i > 0) {
            ArrayList<View> buildOrderedChildList = buildOrderedChildList();
            boolean z3 = buildOrderedChildList == null && isChildrenDrawingOrderEnabled();
            View[] viewArr = this.mChildren;
            z = true;
            for (int i2 = 0; i2 < i; i2++) {
                View andVerifyPreorderedView = getAndVerifyPreorderedView(buildOrderedChildList, viewArr, getAndVerifyPreorderedIndex(i, i2, z3));
                if (((andVerifyPreorderedView.mViewFlags & 12) == 0 || andVerifyPreorderedView.getAnimation() != null) && !andVerifyPreorderedView.gatherTransparentRegion(region)) {
                    z = false;
                }
            }
            if (buildOrderedChildList != null) {
                buildOrderedChildList.clear();
            }
        } else {
            z = true;
        }
        return z2 || z;
    }

    @Override // android.view.ViewParent
    public void requestTransparentRegion(View view) {
        if (view != null) {
            view.mPrivateFlags |= 512;
            if (this.mParent != null) {
                this.mParent.requestTransparentRegion(this);
            }
        }
    }

    @Override // android.view.View
    public WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        WindowInsets dispatchApplyWindowInsets = super.dispatchApplyWindowInsets(windowInsets);
        if (!dispatchApplyWindowInsets.isConsumed()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                dispatchApplyWindowInsets = getChildAt(i).dispatchApplyWindowInsets(dispatchApplyWindowInsets);
                if (dispatchApplyWindowInsets.isConsumed()) {
                    break;
                }
            }
        }
        return dispatchApplyWindowInsets;
    }

    public Animation.AnimationListener getLayoutAnimationListener() {
        return this.mAnimationListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        if ((this.mGroupFlags & 65536) != 0) {
            if ((this.mGroupFlags & 8192) != 0) {
                throw new IllegalStateException("addStateFromChildren cannot be enabled if a child has duplicateParentState set to true");
            }
            View[] viewArr = this.mChildren;
            int i = this.mChildrenCount;
            for (int i2 = 0; i2 < i; i2++) {
                View view = viewArr[i2];
                if ((view.mViewFlags & 4194304) != 0) {
                    view.refreshDrawableState();
                }
            }
        }
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        View[] viewArr = this.mChildren;
        int i = this.mChildrenCount;
        for (int i2 = 0; i2 < i; i2++) {
            viewArr[i2].jumpDrawablesToCurrentState();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public int[] onCreateDrawableState(int i) {
        if ((this.mGroupFlags & 8192) == 0) {
            return super.onCreateDrawableState(i);
        }
        int childCount = getChildCount();
        int i2 = 0;
        for (int i3 = 0; i3 < childCount; i3++) {
            int[] drawableState = getChildAt(i3).getDrawableState();
            if (drawableState != null) {
                i2 += drawableState.length;
            }
        }
        int[] onCreateDrawableState = super.onCreateDrawableState(i + i2);
        for (int i4 = 0; i4 < childCount; i4++) {
            int[] drawableState2 = getChildAt(i4).getDrawableState();
            if (drawableState2 != null) {
                onCreateDrawableState = mergeDrawableStates(onCreateDrawableState, drawableState2);
            }
        }
        return onCreateDrawableState;
    }

    public void setAddStatesFromChildren(boolean z) {
        if (z) {
            this.mGroupFlags |= 8192;
        } else {
            this.mGroupFlags &= -8193;
        }
        refreshDrawableState();
    }

    public boolean addStatesFromChildren() {
        return (this.mGroupFlags & 8192) != 0;
    }

    @Override // android.view.ViewParent
    public void childDrawableStateChanged(View view) {
        if ((this.mGroupFlags & 8192) != 0) {
            refreshDrawableState();
        }
    }

    public void setLayoutAnimationListener(Animation.AnimationListener animationListener) {
        this.mAnimationListener = animationListener;
    }

    public void requestTransitionStart(LayoutTransition layoutTransition) {
        ViewRootImpl viewRootImpl = getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.requestTransitionStart(layoutTransition);
        }
    }

    @Override // android.view.View
    public boolean resolveRtlPropertiesIfNeeded() {
        boolean resolveRtlPropertiesIfNeeded = super.resolveRtlPropertiesIfNeeded();
        if (resolveRtlPropertiesIfNeeded) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt.isLayoutDirectionInherited()) {
                    childAt.resolveRtlPropertiesIfNeeded();
                }
            }
        }
        return resolveRtlPropertiesIfNeeded;
    }

    @Override // android.view.View
    public boolean resolveLayoutDirection() {
        boolean resolveLayoutDirection = super.resolveLayoutDirection();
        if (resolveLayoutDirection) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt.isLayoutDirectionInherited()) {
                    childAt.resolveLayoutDirection();
                }
            }
        }
        return resolveLayoutDirection;
    }

    @Override // android.view.View
    public boolean resolveTextDirection() {
        boolean resolveTextDirection = super.resolveTextDirection();
        if (resolveTextDirection) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt.isTextDirectionInherited()) {
                    childAt.resolveTextDirection();
                }
            }
        }
        return resolveTextDirection;
    }

    @Override // android.view.View
    public boolean resolveTextAlignment() {
        boolean resolveTextAlignment = super.resolveTextAlignment();
        if (resolveTextAlignment) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt.isTextAlignmentInherited()) {
                    childAt.resolveTextAlignment();
                }
            }
        }
        return resolveTextAlignment;
    }

    @Override // android.view.View
    public void resolvePadding() {
        super.resolvePadding();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.isLayoutDirectionInherited() && !childAt.isPaddingResolved()) {
                childAt.resolvePadding();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void resolveDrawables() {
        super.resolveDrawables();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.isLayoutDirectionInherited() && !childAt.areDrawablesResolved()) {
                childAt.resolveDrawables();
            }
        }
    }

    @Override // android.view.View
    public void resolveLayoutParams() {
        super.resolveLayoutParams();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).resolveLayoutParams();
        }
    }

    @Override // android.view.View
    public void resetResolvedLayoutDirection() {
        super.resetResolvedLayoutDirection();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.isLayoutDirectionInherited()) {
                childAt.resetResolvedLayoutDirection();
            }
        }
    }

    @Override // android.view.View
    public void resetResolvedTextDirection() {
        super.resetResolvedTextDirection();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.isTextDirectionInherited()) {
                childAt.resetResolvedTextDirection();
            }
        }
    }

    @Override // android.view.View
    public void resetResolvedTextAlignment() {
        super.resetResolvedTextAlignment();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.isTextAlignmentInherited()) {
                childAt.resetResolvedTextAlignment();
            }
        }
    }

    @Override // android.view.View
    public void resetResolvedPadding() {
        super.resetResolvedPadding();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.isLayoutDirectionInherited()) {
                childAt.resetResolvedPadding();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void resetResolvedDrawables() {
        super.resetResolvedDrawables();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.isLayoutDirectionInherited()) {
                childAt.resetResolvedDrawables();
            }
        }
    }

    @Override // android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.mNestedScrollAxes = i;
    }

    @Override // android.view.ViewParent
    public void onStopNestedScroll(View view) {
        stopNestedScroll();
        this.mNestedScrollAxes = 0;
    }

    @Override // android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, null);
    }

    @Override // android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        dispatchNestedPreScroll(i, i2, iArr, null);
    }

    @Override // android.view.ViewParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    public int getNestedScrollAxes() {
        return this.mNestedScrollAxes;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onSetLayoutParams(View view, LayoutParams layoutParams) {
        requestLayout();
    }

    @Override // android.view.View
    public void captureTransitioningViews(List<View> list) {
        if (getVisibility() != 0) {
            return;
        }
        if (isTransitionGroup()) {
            list.add(this);
            return;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).captureTransitioningViews(list);
        }
    }

    @Override // android.view.View
    public void findNamedViews(Map<String, View> map) {
        if (getVisibility() == 0 || this.mGhostView != null) {
            super.findNamedViews(map);
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).findNamedViews(map);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public boolean hasUnhandledKeyListener() {
        return this.mChildUnhandledKeyListeners > 0 || super.hasUnhandledKeyListener();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void incrementChildUnhandledKeyListeners() {
        this.mChildUnhandledKeyListeners++;
        if (this.mChildUnhandledKeyListeners == 1 && (this.mParent instanceof ViewGroup)) {
            ((ViewGroup) this.mParent).incrementChildUnhandledKeyListeners();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void decrementChildUnhandledKeyListeners() {
        this.mChildUnhandledKeyListeners--;
        if (this.mChildUnhandledKeyListeners == 0 && (this.mParent instanceof ViewGroup)) {
            ((ViewGroup) this.mParent).decrementChildUnhandledKeyListeners();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.view.View
    public View dispatchUnhandledKeyEvent(KeyEvent keyEvent) {
        if (!hasUnhandledKeyListener()) {
            return null;
        }
        ArrayList<View> buildOrderedChildList = buildOrderedChildList();
        if (buildOrderedChildList != null) {
            try {
                for (int size = buildOrderedChildList.size() - 1; size >= 0; size--) {
                    View dispatchUnhandledKeyEvent = buildOrderedChildList.get(size).dispatchUnhandledKeyEvent(keyEvent);
                    if (dispatchUnhandledKeyEvent != null) {
                        return dispatchUnhandledKeyEvent;
                    }
                }
            } finally {
                buildOrderedChildList.clear();
            }
        } else {
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                View dispatchUnhandledKeyEvent2 = getChildAt(childCount).dispatchUnhandledKeyEvent(keyEvent);
                if (dispatchUnhandledKeyEvent2 != null) {
                    return dispatchUnhandledKeyEvent2;
                }
            }
        }
        if (onUnhandledKeyEvent(keyEvent)) {
            return this;
        }
        return null;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class LayoutParams {

        @Deprecated
        public static final int FILL_PARENT = -1;
        public static final int MATCH_PARENT = -1;
        public static final int WRAP_CONTENT = -2;

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = "MATCH_PARENT"), @ViewDebug.IntToString(from = -2, to = "WRAP_CONTENT")})
        public int height;
        public LayoutAnimationController.AnimationParameters layoutAnimationParameters;

        @ViewDebug.ExportedProperty(category = "layout", mapping = {@ViewDebug.IntToString(from = -1, to = "MATCH_PARENT"), @ViewDebug.IntToString(from = -2, to = "WRAP_CONTENT")})
        public int width;

        public void onDebugDraw(View view, Canvas canvas, Paint paint) {
        }

        public void resolveLayoutDirection(int i) {
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewGroup_Layout);
            setBaseAttributes(obtainStyledAttributes, 0, 1);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            this.width = i;
            this.height = i2;
        }

        public LayoutParams(LayoutParams layoutParams) {
            this.width = layoutParams.width;
            this.height = layoutParams.height;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public LayoutParams() {
        }

        protected void setBaseAttributes(TypedArray typedArray, int i, int i2) {
            this.width = typedArray.getLayoutDimension(i, "layout_width");
            this.height = typedArray.getLayoutDimension(i2, "layout_height");
        }

        public String debug(String str) {
            return str + "ViewGroup.LayoutParams={ width=" + sizeToString(this.width) + ", height=" + sizeToString(this.height) + " }";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static String sizeToString(int i) {
            return i == -2 ? "wrap-content" : i == -1 ? "match-parent" : String.valueOf(i);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void encode(ViewHierarchyEncoder viewHierarchyEncoder) {
            viewHierarchyEncoder.beginObject(this);
            encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.endObject();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            viewHierarchyEncoder.addProperty("width", this.width);
            viewHierarchyEncoder.addProperty("height", this.height);
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class MarginLayoutParams extends LayoutParams {
        public static final int DEFAULT_MARGIN_RELATIVE = Integer.MIN_VALUE;
        private static final int DEFAULT_MARGIN_RESOLVED = 0;
        private static final int LAYOUT_DIRECTION_MASK = 3;
        private static final int LEFT_MARGIN_UNDEFINED_MASK = 4;
        private static final int NEED_RESOLUTION_MASK = 32;
        private static final int RIGHT_MARGIN_UNDEFINED_MASK = 8;
        private static final int RTL_COMPATIBILITY_MODE_MASK = 16;
        private static final int UNDEFINED_MARGIN = Integer.MIN_VALUE;

        @ViewDebug.ExportedProperty(category = "layout")
        public int bottomMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        private int endMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        public int leftMargin;

        @ViewDebug.ExportedProperty(category = "layout", flagMapping = {@ViewDebug.FlagToString(equals = 3, mask = 3, name = "LAYOUT_DIRECTION"), @ViewDebug.FlagToString(equals = 4, mask = 4, name = "LEFT_MARGIN_UNDEFINED_MASK"), @ViewDebug.FlagToString(equals = 8, mask = 8, name = "RIGHT_MARGIN_UNDEFINED_MASK"), @ViewDebug.FlagToString(equals = 16, mask = 16, name = "RTL_COMPATIBILITY_MODE_MASK"), @ViewDebug.FlagToString(equals = 32, mask = 32, name = "NEED_RESOLUTION_MASK")}, formatToHexString = true)
        byte mMarginFlags;

        @ViewDebug.ExportedProperty(category = "layout")
        public int rightMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        private int startMargin;

        @ViewDebug.ExportedProperty(category = "layout")
        public int topMargin;

        public MarginLayoutParams(Context context, AttributeSet attributeSet) {
            this.startMargin = Integer.MIN_VALUE;
            this.endMargin = Integer.MIN_VALUE;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewGroup_MarginLayout);
            setBaseAttributes(obtainStyledAttributes, 0, 1);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
            if (dimensionPixelSize >= 0) {
                this.leftMargin = dimensionPixelSize;
                this.topMargin = dimensionPixelSize;
                this.rightMargin = dimensionPixelSize;
                this.bottomMargin = dimensionPixelSize;
            } else {
                int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(9, -1);
                int dimensionPixelSize3 = obtainStyledAttributes.getDimensionPixelSize(10, -1);
                if (dimensionPixelSize2 >= 0) {
                    this.leftMargin = dimensionPixelSize2;
                    this.rightMargin = dimensionPixelSize2;
                } else {
                    this.leftMargin = obtainStyledAttributes.getDimensionPixelSize(3, Integer.MIN_VALUE);
                    if (this.leftMargin == Integer.MIN_VALUE) {
                        this.mMarginFlags = (byte) (this.mMarginFlags | 4);
                        this.leftMargin = 0;
                    }
                    this.rightMargin = obtainStyledAttributes.getDimensionPixelSize(5, Integer.MIN_VALUE);
                    if (this.rightMargin == Integer.MIN_VALUE) {
                        this.mMarginFlags = (byte) (this.mMarginFlags | 8);
                        this.rightMargin = 0;
                    }
                }
                this.startMargin = obtainStyledAttributes.getDimensionPixelSize(7, Integer.MIN_VALUE);
                this.endMargin = obtainStyledAttributes.getDimensionPixelSize(8, Integer.MIN_VALUE);
                if (dimensionPixelSize3 >= 0) {
                    this.topMargin = dimensionPixelSize3;
                    this.bottomMargin = dimensionPixelSize3;
                } else {
                    this.topMargin = obtainStyledAttributes.getDimensionPixelSize(4, 0);
                    this.bottomMargin = obtainStyledAttributes.getDimensionPixelSize(6, 0);
                }
                if (isMarginRelative()) {
                    this.mMarginFlags = (byte) (this.mMarginFlags | 32);
                }
            }
            boolean hasRtlSupport = context.getApplicationInfo().hasRtlSupport();
            if (context.getApplicationInfo().targetSdkVersion < 17 || !hasRtlSupport) {
                this.mMarginFlags = (byte) (this.mMarginFlags | 16);
            }
            this.mMarginFlags = (byte) (this.mMarginFlags | 0);
            obtainStyledAttributes.recycle();
        }

        public MarginLayoutParams(int i, int i2) {
            super(i, i2);
            this.startMargin = Integer.MIN_VALUE;
            this.endMargin = Integer.MIN_VALUE;
            this.mMarginFlags = (byte) (this.mMarginFlags | 4);
            this.mMarginFlags = (byte) (this.mMarginFlags | 8);
            this.mMarginFlags = (byte) (this.mMarginFlags & (-33));
            this.mMarginFlags = (byte) (this.mMarginFlags & (-17));
        }

        public MarginLayoutParams(MarginLayoutParams marginLayoutParams) {
            this.startMargin = Integer.MIN_VALUE;
            this.endMargin = Integer.MIN_VALUE;
            this.width = marginLayoutParams.width;
            this.height = marginLayoutParams.height;
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
            this.startMargin = marginLayoutParams.startMargin;
            this.endMargin = marginLayoutParams.endMargin;
            this.mMarginFlags = marginLayoutParams.mMarginFlags;
        }

        public MarginLayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.startMargin = Integer.MIN_VALUE;
            this.endMargin = Integer.MIN_VALUE;
            this.mMarginFlags = (byte) (this.mMarginFlags | 4);
            this.mMarginFlags = (byte) (this.mMarginFlags | 8);
            this.mMarginFlags = (byte) (this.mMarginFlags & (-33));
            this.mMarginFlags = (byte) (this.mMarginFlags & (-17));
        }

        public final void copyMarginsFrom(MarginLayoutParams marginLayoutParams) {
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
            this.startMargin = marginLayoutParams.startMargin;
            this.endMargin = marginLayoutParams.endMargin;
            this.mMarginFlags = marginLayoutParams.mMarginFlags;
        }

        public void setMargins(int i, int i2, int i3, int i4) {
            this.leftMargin = i;
            this.topMargin = i2;
            this.rightMargin = i3;
            this.bottomMargin = i4;
            this.mMarginFlags = (byte) (this.mMarginFlags & (-5));
            this.mMarginFlags = (byte) (this.mMarginFlags & (-9));
            if (isMarginRelative()) {
                this.mMarginFlags = (byte) (this.mMarginFlags | 32);
            } else {
                this.mMarginFlags = (byte) (this.mMarginFlags & (-33));
            }
        }

        public void setMarginsRelative(int i, int i2, int i3, int i4) {
            this.startMargin = i;
            this.topMargin = i2;
            this.endMargin = i3;
            this.bottomMargin = i4;
            this.mMarginFlags = (byte) (this.mMarginFlags | 32);
        }

        public void setMarginStart(int i) {
            this.startMargin = i;
            this.mMarginFlags = (byte) (this.mMarginFlags | 32);
        }

        public int getMarginStart() {
            if (this.startMargin != Integer.MIN_VALUE) {
                return this.startMargin;
            }
            if ((this.mMarginFlags & 32) == 32) {
                doResolveMargins();
            }
            if ((this.mMarginFlags & 3) == 1) {
                return this.rightMargin;
            }
            return this.leftMargin;
        }

        public void setMarginEnd(int i) {
            this.endMargin = i;
            this.mMarginFlags = (byte) (this.mMarginFlags | 32);
        }

        public int getMarginEnd() {
            if (this.endMargin != Integer.MIN_VALUE) {
                return this.endMargin;
            }
            if ((this.mMarginFlags & 32) == 32) {
                doResolveMargins();
            }
            if ((this.mMarginFlags & 3) == 1) {
                return this.leftMargin;
            }
            return this.rightMargin;
        }

        public boolean isMarginRelative() {
            return (this.startMargin == Integer.MIN_VALUE && this.endMargin == Integer.MIN_VALUE) ? false : true;
        }

        public void setLayoutDirection(int i) {
            if ((i == 0 || i == 1) && i != (this.mMarginFlags & 3)) {
                this.mMarginFlags = (byte) (this.mMarginFlags & (-4));
                this.mMarginFlags = (byte) ((i & 3) | this.mMarginFlags);
                if (isMarginRelative()) {
                    this.mMarginFlags = (byte) (this.mMarginFlags | 32);
                } else {
                    this.mMarginFlags = (byte) (this.mMarginFlags & (-33));
                }
            }
        }

        public int getLayoutDirection() {
            return this.mMarginFlags & 3;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void resolveLayoutDirection(int i) {
            setLayoutDirection(i);
            if (isMarginRelative() && (this.mMarginFlags & 32) == 32) {
                doResolveMargins();
            }
        }

        private void doResolveMargins() {
            if ((this.mMarginFlags & 16) == 16) {
                if ((this.mMarginFlags & 4) == 4 && this.startMargin > Integer.MIN_VALUE) {
                    this.leftMargin = this.startMargin;
                }
                if ((this.mMarginFlags & 8) == 8 && this.endMargin > Integer.MIN_VALUE) {
                    this.rightMargin = this.endMargin;
                }
            } else {
                if ((this.mMarginFlags & 3) == 1) {
                    this.leftMargin = this.endMargin > Integer.MIN_VALUE ? this.endMargin : 0;
                    this.rightMargin = this.startMargin > Integer.MIN_VALUE ? this.startMargin : 0;
                } else {
                    this.leftMargin = this.startMargin > Integer.MIN_VALUE ? this.startMargin : 0;
                    this.rightMargin = this.endMargin > Integer.MIN_VALUE ? this.endMargin : 0;
                }
            }
            this.mMarginFlags = (byte) (this.mMarginFlags & (-33));
        }

        public boolean isLayoutRtl() {
            return (this.mMarginFlags & 3) == 1;
        }

        @Override // android.view.ViewGroup.LayoutParams
        public void onDebugDraw(View view, Canvas canvas, Paint paint) {
            Insets opticalInsets = View.isLayoutModeOptical(view.mParent) ? view.getOpticalInsets() : Insets.NONE;
            ViewGroup.fillDifference(canvas, view.getLeft() + opticalInsets.left, view.getTop() + opticalInsets.top, view.getRight() - opticalInsets.right, view.getBottom() - opticalInsets.bottom, this.leftMargin, this.topMargin, this.rightMargin, this.bottomMargin, paint);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.view.ViewGroup.LayoutParams
        public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            super.encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.addProperty("leftMargin", this.leftMargin);
            viewHierarchyEncoder.addProperty("topMargin", this.topMargin);
            viewHierarchyEncoder.addProperty("rightMargin", this.rightMargin);
            viewHierarchyEncoder.addProperty("bottomMargin", this.bottomMargin);
            viewHierarchyEncoder.addProperty("startMargin", this.startMargin);
            viewHierarchyEncoder.addProperty("endMargin", this.endMargin);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class TouchTarget {
        public static final int ALL_POINTER_IDS = -1;
        private static final int MAX_RECYCLED = 32;
        private static TouchTarget sRecycleBin;
        private static final Object sRecycleLock = new Object[0];
        private static int sRecycledCount;
        public View child;
        public TouchTarget next;
        public int pointerIdBits;

        private TouchTarget() {
        }

        public static TouchTarget obtain(View view, int i) {
            TouchTarget touchTarget;
            if (view == null) {
                throw new IllegalArgumentException("child must be non-null");
            }
            synchronized (sRecycleLock) {
                if (sRecycleBin == null) {
                    touchTarget = new TouchTarget();
                } else {
                    touchTarget = sRecycleBin;
                    sRecycleBin = touchTarget.next;
                    sRecycledCount--;
                    touchTarget.next = null;
                }
            }
            touchTarget.child = view;
            touchTarget.pointerIdBits = i;
            return touchTarget;
        }

        public void recycle() {
            if (this.child == null) {
                throw new IllegalStateException("already recycled once");
            }
            synchronized (sRecycleLock) {
                if (sRecycledCount < 32) {
                    this.next = sRecycleBin;
                    sRecycleBin = this;
                    sRecycledCount++;
                } else {
                    this.next = null;
                }
                this.child = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class HoverTarget {
        private static final int MAX_RECYCLED = 32;
        private static HoverTarget sRecycleBin;
        private static final Object sRecycleLock = new Object[0];
        private static int sRecycledCount;
        public View child;
        public HoverTarget next;

        private HoverTarget() {
        }

        public static HoverTarget obtain(View view) {
            HoverTarget hoverTarget;
            if (view == null) {
                throw new IllegalArgumentException("child must be non-null");
            }
            synchronized (sRecycleLock) {
                if (sRecycleBin == null) {
                    hoverTarget = new HoverTarget();
                } else {
                    hoverTarget = sRecycleBin;
                    sRecycleBin = hoverTarget.next;
                    sRecycledCount--;
                    hoverTarget.next = null;
                }
            }
            hoverTarget.child = view;
            return hoverTarget;
        }

        public void recycle() {
            if (this.child == null) {
                throw new IllegalStateException("already recycled once");
            }
            synchronized (sRecycleLock) {
                if (sRecycledCount < 32) {
                    this.next = sRecycleBin;
                    sRecycleBin = this;
                    sRecycledCount++;
                } else {
                    this.next = null;
                }
                this.child = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ChildListForAutoFill extends ArrayList<View> {
        private static final int MAX_POOL_SIZE = 32;
        private static final Pools.SimplePool<ChildListForAutoFill> sPool = new Pools.SimplePool<>(32);

        ChildListForAutoFill() {
        }

        public static ChildListForAutoFill obtain() {
            ChildListForAutoFill acquire = sPool.acquire();
            return acquire == null ? new ChildListForAutoFill() : acquire;
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ChildListForAccessibility {
        private static final int MAX_POOL_SIZE = 32;
        private static final Pools.SynchronizedPool<ChildListForAccessibility> sPool = new Pools.SynchronizedPool<>(32);
        private final ArrayList<View> mChildren = new ArrayList<>();
        private final ArrayList<ViewLocationHolder> mHolders = new ArrayList<>();

        ChildListForAccessibility() {
        }

        public static ChildListForAccessibility obtain(ViewGroup viewGroup, boolean z) {
            ChildListForAccessibility acquire = sPool.acquire();
            if (acquire == null) {
                acquire = new ChildListForAccessibility();
            }
            acquire.init(viewGroup, z);
            return acquire;
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }

        public int getChildCount() {
            return this.mChildren.size();
        }

        public View getChildAt(int i) {
            return this.mChildren.get(i);
        }

        private void init(ViewGroup viewGroup, boolean z) {
            ArrayList<View> arrayList = this.mChildren;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                arrayList.add(viewGroup.getChildAt(i));
            }
            if (z) {
                ArrayList<ViewLocationHolder> arrayList2 = this.mHolders;
                for (int i2 = 0; i2 < childCount; i2++) {
                    arrayList2.add(ViewLocationHolder.obtain(viewGroup, arrayList.get(i2)));
                }
                sort(arrayList2);
                for (int i3 = 0; i3 < childCount; i3++) {
                    ViewLocationHolder viewLocationHolder = arrayList2.get(i3);
                    arrayList.set(i3, viewLocationHolder.mView);
                    viewLocationHolder.recycle();
                }
                arrayList2.clear();
            }
        }

        private void sort(ArrayList<ViewLocationHolder> arrayList) {
            try {
                ViewLocationHolder.setComparisonStrategy(1);
                Collections.sort(arrayList);
            } catch (IllegalArgumentException unused) {
                ViewLocationHolder.setComparisonStrategy(2);
                Collections.sort(arrayList);
            }
        }

        private void clear() {
            this.mChildren.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class ViewLocationHolder implements Comparable<ViewLocationHolder> {
        public static final int COMPARISON_STRATEGY_LOCATION = 2;
        public static final int COMPARISON_STRATEGY_STRIPE = 1;
        private static final int MAX_POOL_SIZE = 32;
        private int mLayoutDirection;
        private final Rect mLocation = new Rect();
        private ViewGroup mRoot;
        public View mView;
        private static final Pools.SynchronizedPool<ViewLocationHolder> sPool = new Pools.SynchronizedPool<>(32);
        private static int sComparisonStrategy = 1;

        ViewLocationHolder() {
        }

        public static ViewLocationHolder obtain(ViewGroup viewGroup, View view) {
            ViewLocationHolder acquire = sPool.acquire();
            if (acquire == null) {
                acquire = new ViewLocationHolder();
            }
            acquire.init(viewGroup, view);
            return acquire;
        }

        public static void setComparisonStrategy(int i) {
            sComparisonStrategy = i;
        }

        public void recycle() {
            clear();
            sPool.release(this);
        }

        @Override // java.lang.Comparable
        public int compareTo(ViewLocationHolder viewLocationHolder) {
            if (viewLocationHolder == null) {
                return 1;
            }
            int compareBoundsOfTree = compareBoundsOfTree(this, viewLocationHolder);
            return compareBoundsOfTree != 0 ? compareBoundsOfTree : this.mView.getAccessibilityViewId() - viewLocationHolder.mView.getAccessibilityViewId();
        }

        private static int compareBoundsOfTree(ViewLocationHolder viewLocationHolder, ViewLocationHolder viewLocationHolder2) {
            if (sComparisonStrategy == 1) {
                if (viewLocationHolder.mLocation.bottom - viewLocationHolder2.mLocation.top <= 0) {
                    return -1;
                }
                if (viewLocationHolder.mLocation.top - viewLocationHolder2.mLocation.bottom >= 0) {
                    return 1;
                }
            }
            if (viewLocationHolder.mLayoutDirection == 0) {
                int i = viewLocationHolder.mLocation.left - viewLocationHolder2.mLocation.left;
                if (i != 0) {
                    return i;
                }
            } else {
                int i2 = viewLocationHolder.mLocation.right - viewLocationHolder2.mLocation.right;
                if (i2 != 0) {
                    return -i2;
                }
            }
            int i3 = viewLocationHolder.mLocation.top - viewLocationHolder2.mLocation.top;
            if (i3 != 0) {
                return i3;
            }
            int height = viewLocationHolder.mLocation.height() - viewLocationHolder2.mLocation.height();
            if (height != 0) {
                return -height;
            }
            int width = viewLocationHolder.mLocation.width() - viewLocationHolder2.mLocation.width();
            if (width != 0) {
                return -width;
            }
            final Rect rect = new Rect();
            final Rect rect2 = new Rect();
            final Rect rect3 = new Rect();
            viewLocationHolder.mView.getBoundsOnScreen(rect, true);
            viewLocationHolder2.mView.getBoundsOnScreen(rect2, true);
            View findViewByPredicateTraversal = viewLocationHolder.mView.findViewByPredicateTraversal(new Predicate() { // from class: android.view.-$$Lambda$ViewGroup$ViewLocationHolder$QbO7cM0ULKe25a7bfXG3VH6DB0c
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ViewGroup.ViewLocationHolder.lambda$compareBoundsOfTree$0(rect3, rect, (View) obj);
                }
            }, null);
            View findViewByPredicateTraversal2 = viewLocationHolder2.mView.findViewByPredicateTraversal(new Predicate() { // from class: android.view.-$$Lambda$ViewGroup$ViewLocationHolder$AjKvqdj7SGGIzA5qrlZUuu71jl8
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ViewGroup.ViewLocationHolder.lambda$compareBoundsOfTree$1(rect3, rect2, (View) obj);
                }
            }, null);
            if (findViewByPredicateTraversal != null && findViewByPredicateTraversal2 != null) {
                return compareBoundsOfTree(obtain(viewLocationHolder.mRoot, findViewByPredicateTraversal), obtain(viewLocationHolder.mRoot, findViewByPredicateTraversal2));
            }
            if (findViewByPredicateTraversal != null) {
                return 1;
            }
            return findViewByPredicateTraversal2 != null ? -1 : 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ boolean lambda$compareBoundsOfTree$0(Rect rect, Rect rect2, View view) {
            view.getBoundsOnScreen(rect, true);
            return !rect.equals(rect2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ boolean lambda$compareBoundsOfTree$1(Rect rect, Rect rect2, View view) {
            view.getBoundsOnScreen(rect, true);
            return !rect.equals(rect2);
        }

        private void init(ViewGroup viewGroup, View view) {
            Rect rect = this.mLocation;
            view.getDrawingRect(rect);
            viewGroup.offsetDescendantRectToMyCoords(view, rect);
            this.mView = view;
            this.mRoot = viewGroup;
            this.mLayoutDirection = viewGroup.getLayoutDirection();
        }

        private void clear() {
            this.mView = null;
            this.mLocation.set(0, 0, 0, 0);
        }
    }

    private static void drawRect(Canvas canvas, Paint paint, int i, int i2, int i3, int i4) {
        if (sDebugLines == null) {
            sDebugLines = new float[16];
        }
        float f = i;
        sDebugLines[0] = f;
        float f2 = i2;
        sDebugLines[1] = f2;
        float f3 = i3;
        sDebugLines[2] = f3;
        sDebugLines[3] = f2;
        sDebugLines[4] = f3;
        sDebugLines[5] = f2;
        sDebugLines[6] = f3;
        float f4 = i4;
        sDebugLines[7] = f4;
        sDebugLines[8] = f3;
        sDebugLines[9] = f4;
        sDebugLines[10] = f;
        sDebugLines[11] = f4;
        sDebugLines[12] = f;
        sDebugLines[13] = f4;
        sDebugLines[14] = f;
        sDebugLines[15] = f2;
        canvas.drawLines(sDebugLines, paint);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
        super.encodeProperties(viewHierarchyEncoder);
        viewHierarchyEncoder.addProperty("focus:descendantFocusability", getDescendantFocusability());
        viewHierarchyEncoder.addProperty("drawing:clipChildren", getClipChildren());
        viewHierarchyEncoder.addProperty("drawing:clipToPadding", getClipToPadding());
        viewHierarchyEncoder.addProperty("drawing:childrenDrawingOrderEnabled", isChildrenDrawingOrderEnabled());
        viewHierarchyEncoder.addProperty("drawing:persistentDrawingCache", getPersistentDrawingCache());
        int childCount = getChildCount();
        viewHierarchyEncoder.addProperty("meta:__childCount__", (short) childCount);
        for (int i = 0; i < childCount; i++) {
            viewHierarchyEncoder.addPropertyKey("meta:__child__" + i);
            getChildAt(i).encode(viewHierarchyEncoder);
        }
    }
}
