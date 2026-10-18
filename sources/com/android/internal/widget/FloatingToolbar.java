package com.android.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Property;
import android.util.Size;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.android.internal.util.Preconditions;
import com.android.internal.widget.FloatingToolbar;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class FloatingToolbar {
    public static final String FLOATING_TOOLBAR_TAG = "floating_toolbar";
    private static final MenuItem.OnMenuItemClickListener NO_OP_MENUITEM_CLICK_LISTENER = new MenuItem.OnMenuItemClickListener() { // from class: com.android.internal.widget.-$$Lambda$FloatingToolbar$7-enOzxeypZYfdFYr1HzBLfj47k
        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            return FloatingToolbar.lambda$static$0(menuItem);
        }
    };
    private final Context mContext;
    private Menu mMenu;
    private final FloatingToolbarPopup mPopup;
    private int mSuggestedWidth;
    private final Window mWindow;
    private final Rect mContentRect = new Rect();
    private final Rect mPreviousContentRect = new Rect();
    private List<MenuItem> mShowingMenuItems = new ArrayList();
    private MenuItem.OnMenuItemClickListener mMenuItemClickListener = NO_OP_MENUITEM_CLICK_LISTENER;
    private boolean mWidthChanged = true;
    private final View.OnLayoutChangeListener mOrientationChangeHandler = new View.OnLayoutChangeListener() { // from class: com.android.internal.widget.FloatingToolbar.1
        private final Rect mNewRect = new Rect();
        private final Rect mOldRect = new Rect();

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.mNewRect.set(i, i2, i3, i4);
            this.mOldRect.set(i5, i6, i7, i8);
            if (!FloatingToolbar.this.mPopup.isShowing() || this.mNewRect.equals(this.mOldRect)) {
                return;
            }
            FloatingToolbar.this.mWidthChanged = true;
            FloatingToolbar.this.updateLayout();
        }
    };
    private final Comparator<MenuItem> mMenuItemComparator = new Comparator() { // from class: com.android.internal.widget.-$$Lambda$FloatingToolbar$LutnsyBKrZiroTBekgIjhIyrl40
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return FloatingToolbar.lambda$new$1((MenuItem) obj, (MenuItem) obj2);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$static$0(MenuItem menuItem) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$new$1(MenuItem menuItem, MenuItem menuItem2) {
        if (menuItem.getItemId() == 16908353) {
            return menuItem2.getItemId() == 16908353 ? 0 : -1;
        }
        if (menuItem2.getItemId() == 16908353) {
            return 1;
        }
        if (menuItem.requiresActionButton()) {
            return menuItem2.requiresActionButton() ? 0 : -1;
        }
        if (menuItem2.requiresActionButton()) {
            return 1;
        }
        if (menuItem.requiresOverflow()) {
            return !menuItem2.requiresOverflow() ? 1 : 0;
        }
        if (menuItem2.requiresOverflow()) {
            return -1;
        }
        return menuItem.getOrder() - menuItem2.getOrder();
    }

    public FloatingToolbar(Window window) {
        this.mContext = applyDefaultTheme(window.getContext());
        this.mWindow = (Window) Preconditions.checkNotNull(window);
        this.mPopup = new FloatingToolbarPopup(this.mContext, window.getDecorView());
    }

    public FloatingToolbar setMenu(Menu menu) {
        this.mMenu = (Menu) Preconditions.checkNotNull(menu);
        return this;
    }

    public FloatingToolbar setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        if (onMenuItemClickListener != null) {
            this.mMenuItemClickListener = onMenuItemClickListener;
        } else {
            this.mMenuItemClickListener = NO_OP_MENUITEM_CLICK_LISTENER;
        }
        return this;
    }

    public FloatingToolbar setContentRect(Rect rect) {
        this.mContentRect.set((Rect) Preconditions.checkNotNull(rect));
        return this;
    }

    public FloatingToolbar setSuggestedWidth(int i) {
        this.mWidthChanged = ((double) Math.abs(i - this.mSuggestedWidth)) > ((double) this.mSuggestedWidth) * 0.2d;
        this.mSuggestedWidth = i;
        return this;
    }

    public FloatingToolbar show() {
        registerOrientationHandler();
        doShow();
        return this;
    }

    public FloatingToolbar updateLayout() {
        if (this.mPopup.isShowing()) {
            doShow();
        }
        return this;
    }

    public void dismiss() {
        unregisterOrientationHandler();
        this.mPopup.dismiss();
    }

    public void hide() {
        this.mPopup.hide();
    }

    public boolean isShowing() {
        return this.mPopup.isShowing();
    }

    public boolean isHidden() {
        return this.mPopup.isHidden();
    }

    public void setOutsideTouchable(boolean z, PopupWindow.OnDismissListener onDismissListener) {
        if (this.mPopup.setOutsideTouchable(z, onDismissListener) && isShowing()) {
            dismiss();
            doShow();
        }
    }

    private void doShow() {
        List<MenuItem> visibleAndEnabledMenuItems = getVisibleAndEnabledMenuItems(this.mMenu);
        visibleAndEnabledMenuItems.sort(this.mMenuItemComparator);
        if (!isCurrentlyShowing(visibleAndEnabledMenuItems) || this.mWidthChanged) {
            this.mPopup.dismiss();
            this.mPopup.layoutMenuItems(visibleAndEnabledMenuItems, this.mMenuItemClickListener, this.mSuggestedWidth);
            this.mShowingMenuItems = visibleAndEnabledMenuItems;
        }
        if (!this.mPopup.isShowing()) {
            this.mPopup.show(this.mContentRect);
        } else if (!this.mPreviousContentRect.equals(this.mContentRect)) {
            this.mPopup.updateCoordinates(this.mContentRect);
        }
        this.mWidthChanged = false;
        this.mPreviousContentRect.set(this.mContentRect);
    }

    private boolean isCurrentlyShowing(List<MenuItem> list) {
        if (this.mShowingMenuItems == null || list.size() != this.mShowingMenuItems.size()) {
            return false;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            MenuItem menuItem = list.get(i);
            MenuItem menuItem2 = this.mShowingMenuItems.get(i);
            if (menuItem.getItemId() != menuItem2.getItemId() || !TextUtils.equals(menuItem.getTitle(), menuItem2.getTitle()) || !Objects.equals(menuItem.getIcon(), menuItem2.getIcon()) || menuItem.getGroupId() != menuItem2.getGroupId()) {
                return false;
            }
        }
        return true;
    }

    private List<MenuItem> getVisibleAndEnabledMenuItems(Menu menu) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; menu != null && i < menu.size(); i++) {
            MenuItem item = menu.getItem(i);
            if (item.isVisible() && item.isEnabled()) {
                SubMenu subMenu = item.getSubMenu();
                if (subMenu != null) {
                    arrayList.addAll(getVisibleAndEnabledMenuItems(subMenu));
                } else {
                    arrayList.add(item);
                }
            }
        }
        return arrayList;
    }

    private void registerOrientationHandler() {
        unregisterOrientationHandler();
        this.mWindow.getDecorView().addOnLayoutChangeListener(this.mOrientationChangeHandler);
    }

    private void unregisterOrientationHandler() {
        this.mWindow.getDecorView().removeOnLayoutChangeListener(this.mOrientationChangeHandler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class FloatingToolbarPopup {
        private static final int MAX_OVERFLOW_SIZE = 4;
        private static final int MIN_OVERFLOW_SIZE = 2;
        private final Drawable mArrow;
        private final AnimationSet mCloseOverflowAnimation;
        private final ViewGroup mContentContainer;
        private final Context mContext;
        private final AnimatorSet mDismissAnimation;
        private final Interpolator mFastOutLinearInInterpolator;
        private final Interpolator mFastOutSlowInInterpolator;
        private boolean mHidden;
        private final AnimatorSet mHideAnimation;
        private final int mIconTextSpacing;
        private boolean mIsOverflowOpen;
        private final int mLineHeight;
        private final Interpolator mLinearOutSlowInInterpolator;
        private final ViewGroup mMainPanel;
        private Size mMainPanelSize;
        private final int mMarginHorizontal;
        private final int mMarginVertical;
        private MenuItem.OnMenuItemClickListener mOnMenuItemClickListener;
        private final AnimationSet mOpenOverflowAnimation;
        private boolean mOpenOverflowUpwards;
        private final Drawable mOverflow;
        private final Animation.AnimationListener mOverflowAnimationListener;
        private final ImageButton mOverflowButton;
        private final Size mOverflowButtonSize;
        private final OverflowPanel mOverflowPanel;
        private Size mOverflowPanelSize;
        private final OverflowPanelViewHelper mOverflowPanelViewHelper;
        private final View mParent;
        private final PopupWindow mPopupWindow;
        private final AnimatorSet mShowAnimation;
        private final AnimatedVectorDrawable mToArrow;
        private final AnimatedVectorDrawable mToOverflow;
        private int mTransitionDurationScale;
        private final Rect mViewPortOnScreen = new Rect();
        private final Point mCoordsOnWindow = new Point();
        private final int[] mTmpCoords = new int[2];
        private final Region mTouchableRegion = new Region();
        private final ViewTreeObserver.OnComputeInternalInsetsListener mInsetsComputer = new ViewTreeObserver.OnComputeInternalInsetsListener() { // from class: com.android.internal.widget.-$$Lambda$FloatingToolbar$FloatingToolbarPopup$77YZy6kisO5OnjlgtKp0Zi1V8EY
            public final void onComputeInternalInsets(ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
                FloatingToolbar.FloatingToolbarPopup.lambda$new$0(FloatingToolbar.FloatingToolbarPopup.this, internalInsetsInfo);
            }
        };
        private final Runnable mPreparePopupContentRTLHelper = new Runnable() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.1
            @Override // java.lang.Runnable
            public void run() {
                FloatingToolbarPopup.this.setPanelsStatesAtRestingPosition();
                FloatingToolbarPopup.this.setContentAreaAsTouchableSurface();
                FloatingToolbarPopup.this.mContentContainer.setAlpha(1.0f);
            }
        };
        private boolean mDismissed = true;
        private final View.OnClickListener mMenuItemButtonOnClickListener = new View.OnClickListener() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!(view.getTag() instanceof MenuItem) || FloatingToolbarPopup.this.mOnMenuItemClickListener == null) {
                    return;
                }
                FloatingToolbarPopup.this.mOnMenuItemClickListener.onMenuItemClick((MenuItem) view.getTag());
            }
        };
        private final Interpolator mLogAccelerateInterpolator = new LogAccelerateInterpolator();

        public static /* synthetic */ void lambda$new$0(FloatingToolbarPopup floatingToolbarPopup, ViewTreeObserver.InternalInsetsInfo internalInsetsInfo) {
            internalInsetsInfo.contentInsets.setEmpty();
            internalInsetsInfo.visibleInsets.setEmpty();
            internalInsetsInfo.touchableRegion.set(floatingToolbarPopup.mTouchableRegion);
            internalInsetsInfo.setTouchableInsets(3);
        }

        public FloatingToolbarPopup(Context context, View view) {
            this.mParent = (View) Preconditions.checkNotNull(view);
            this.mContext = (Context) Preconditions.checkNotNull(context);
            this.mContentContainer = FloatingToolbar.createContentContainer(context);
            this.mPopupWindow = FloatingToolbar.createPopupWindow(this.mContentContainer);
            this.mMarginHorizontal = view.getResources().getDimensionPixelSize(17105065);
            this.mMarginVertical = view.getResources().getDimensionPixelSize(17105078);
            this.mLineHeight = context.getResources().getDimensionPixelSize(17105064);
            this.mIconTextSpacing = context.getResources().getDimensionPixelSize(17105066);
            this.mFastOutSlowInInterpolator = AnimationUtils.loadInterpolator(this.mContext, 17563661);
            this.mLinearOutSlowInInterpolator = AnimationUtils.loadInterpolator(this.mContext, 17563662);
            this.mFastOutLinearInInterpolator = AnimationUtils.loadInterpolator(this.mContext, 17563663);
            this.mArrow = this.mContext.getResources().getDrawable(17302238, this.mContext.getTheme());
            this.mArrow.setAutoMirrored(true);
            this.mOverflow = this.mContext.getResources().getDrawable(17302236, this.mContext.getTheme());
            this.mOverflow.setAutoMirrored(true);
            this.mToArrow = (AnimatedVectorDrawable) this.mContext.getResources().getDrawable(17302237, this.mContext.getTheme());
            this.mToArrow.setAutoMirrored(true);
            this.mToOverflow = (AnimatedVectorDrawable) this.mContext.getResources().getDrawable(17302239, this.mContext.getTheme());
            this.mToOverflow.setAutoMirrored(true);
            this.mOverflowButton = createOverflowButton();
            this.mOverflowButtonSize = measure(this.mOverflowButton);
            this.mMainPanel = createMainPanel();
            this.mOverflowPanelViewHelper = new OverflowPanelViewHelper(this.mContext, this.mIconTextSpacing);
            this.mOverflowPanel = createOverflowPanel();
            this.mOverflowAnimationListener = createOverflowAnimationListener();
            this.mOpenOverflowAnimation = new AnimationSet(true);
            this.mOpenOverflowAnimation.setAnimationListener(this.mOverflowAnimationListener);
            this.mCloseOverflowAnimation = new AnimationSet(true);
            this.mCloseOverflowAnimation.setAnimationListener(this.mOverflowAnimationListener);
            this.mShowAnimation = FloatingToolbar.createEnterAnimation(this.mContentContainer);
            this.mDismissAnimation = FloatingToolbar.createExitAnimation(this.mContentContainer, 150, new AnimatorListenerAdapter() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    FloatingToolbarPopup.this.mPopupWindow.dismiss();
                    FloatingToolbarPopup.this.mContentContainer.removeAllViews();
                }
            });
            this.mHideAnimation = FloatingToolbar.createExitAnimation(this.mContentContainer, 0, new AnimatorListenerAdapter() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.4
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    FloatingToolbarPopup.this.mPopupWindow.dismiss();
                }
            });
        }

        public boolean setOutsideTouchable(boolean z, PopupWindow.OnDismissListener onDismissListener) {
            boolean z2 = true;
            if (this.mPopupWindow.isOutsideTouchable() ^ z) {
                this.mPopupWindow.setOutsideTouchable(z);
                this.mPopupWindow.setFocusable(!z);
            } else {
                z2 = false;
            }
            this.mPopupWindow.setOnDismissListener(onDismissListener);
            return z2;
        }

        public void layoutMenuItems(List<MenuItem> list, MenuItem.OnMenuItemClickListener onMenuItemClickListener, int i) {
            this.mOnMenuItemClickListener = onMenuItemClickListener;
            cancelOverflowAnimations();
            clearPanels();
            List<MenuItem> layoutMainPanelItems = layoutMainPanelItems(list, getAdjustedToolbarWidth(i));
            if (!layoutMainPanelItems.isEmpty()) {
                layoutOverflowPanelItems(layoutMainPanelItems);
            }
            updatePopupSize();
        }

        public void show(Rect rect) {
            Preconditions.checkNotNull(rect);
            if (isShowing()) {
                return;
            }
            this.mHidden = false;
            this.mDismissed = false;
            cancelDismissAndHideAnimations();
            cancelOverflowAnimations();
            refreshCoordinatesAndOverflowDirection(rect);
            preparePopupContent();
            this.mPopupWindow.showAtLocation(this.mParent, 0, this.mCoordsOnWindow.x, this.mCoordsOnWindow.y);
            setTouchableSurfaceInsetsComputer();
            runShowAnimation();
        }

        public void dismiss() {
            if (this.mDismissed) {
                return;
            }
            this.mHidden = false;
            this.mDismissed = true;
            this.mHideAnimation.cancel();
            runDismissAnimation();
            setZeroTouchableSurface();
        }

        public void hide() {
            if (isShowing()) {
                this.mHidden = true;
                runHideAnimation();
                setZeroTouchableSurface();
            }
        }

        public boolean isShowing() {
            return (this.mDismissed || this.mHidden) ? false : true;
        }

        public boolean isHidden() {
            return this.mHidden;
        }

        public void updateCoordinates(Rect rect) {
            Preconditions.checkNotNull(rect);
            if (isShowing() && this.mPopupWindow.isShowing()) {
                cancelOverflowAnimations();
                refreshCoordinatesAndOverflowDirection(rect);
                preparePopupContent();
                this.mPopupWindow.update(this.mCoordsOnWindow.x, this.mCoordsOnWindow.y, this.mPopupWindow.getWidth(), this.mPopupWindow.getHeight());
            }
        }

        private void refreshCoordinatesAndOverflowDirection(Rect rect) {
            int i;
            refreshViewPort();
            int min = Math.min(rect.centerX() - (this.mPopupWindow.getWidth() / 2), this.mViewPortOnScreen.right - this.mPopupWindow.getWidth());
            int i2 = rect.top - this.mViewPortOnScreen.top;
            int i3 = this.mViewPortOnScreen.bottom - rect.bottom;
            int i4 = this.mMarginVertical * 2;
            int i5 = this.mLineHeight + i4;
            if (hasOverflow()) {
                int calculateOverflowHeight = calculateOverflowHeight(2) + i4;
                int i6 = (this.mViewPortOnScreen.bottom - rect.top) + i5;
                int i7 = (rect.bottom - this.mViewPortOnScreen.top) + i5;
                if (i2 >= calculateOverflowHeight) {
                    updateOverflowHeight(i2 - i4);
                    i = rect.top - this.mPopupWindow.getHeight();
                    this.mOpenOverflowUpwards = true;
                } else if (i2 >= i5 && i6 >= calculateOverflowHeight) {
                    updateOverflowHeight(i6 - i4);
                    i = rect.top - i5;
                    this.mOpenOverflowUpwards = false;
                } else if (i3 >= calculateOverflowHeight) {
                    updateOverflowHeight(i3 - i4);
                    i = rect.bottom;
                    this.mOpenOverflowUpwards = false;
                } else if (i3 >= i5 && this.mViewPortOnScreen.height() >= calculateOverflowHeight) {
                    updateOverflowHeight(i7 - i4);
                    i = (rect.bottom + i5) - this.mPopupWindow.getHeight();
                    this.mOpenOverflowUpwards = true;
                } else {
                    updateOverflowHeight(this.mViewPortOnScreen.height() - i4);
                    i = this.mViewPortOnScreen.top;
                    this.mOpenOverflowUpwards = false;
                }
            } else if (i2 >= i5) {
                i = rect.top - i5;
            } else if (i3 >= i5) {
                i = rect.bottom;
            } else if (i3 >= this.mLineHeight) {
                i = rect.bottom - this.mMarginVertical;
            } else {
                i = Math.max(this.mViewPortOnScreen.top, rect.top - i5);
            }
            this.mParent.getRootView().getLocationOnScreen(this.mTmpCoords);
            int i8 = this.mTmpCoords[0];
            int i9 = this.mTmpCoords[1];
            this.mParent.getRootView().getLocationInWindow(this.mTmpCoords);
            this.mCoordsOnWindow.set(Math.max(0, min - (i8 - this.mTmpCoords[0])), Math.max(0, i - (i9 - this.mTmpCoords[1])));
        }

        private void runShowAnimation() {
            this.mShowAnimation.start();
        }

        private void runDismissAnimation() {
            this.mDismissAnimation.start();
        }

        private void runHideAnimation() {
            this.mHideAnimation.start();
        }

        private void cancelDismissAndHideAnimations() {
            this.mDismissAnimation.cancel();
            this.mHideAnimation.cancel();
        }

        private void cancelOverflowAnimations() {
            this.mContentContainer.clearAnimation();
            this.mMainPanel.animate().cancel();
            this.mOverflowPanel.animate().cancel();
            this.mToArrow.stop();
            this.mToOverflow.stop();
        }

        private void openOverflow() {
            final float width;
            final int width2 = this.mOverflowPanelSize.getWidth();
            final int height = this.mOverflowPanelSize.getHeight();
            final int width3 = this.mContentContainer.getWidth();
            final int height2 = this.mContentContainer.getHeight();
            final float y = this.mContentContainer.getY();
            final float x = this.mContentContainer.getX();
            final float width4 = x + this.mContentContainer.getWidth();
            Animation animation = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.5
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup.setWidth(FloatingToolbarPopup.this.mContentContainer, width3 + ((int) (f * (width2 - width3))));
                    if (FloatingToolbarPopup.this.isInRTLMode()) {
                        FloatingToolbarPopup.this.mContentContainer.setX(x);
                        FloatingToolbarPopup.this.mMainPanel.setX(0.0f);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(0.0f);
                    } else {
                        FloatingToolbarPopup.this.mContentContainer.setX(width4 - FloatingToolbarPopup.this.mContentContainer.getWidth());
                        FloatingToolbarPopup.this.mMainPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width3);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width2);
                    }
                }
            };
            Animation animation2 = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.6
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup.setHeight(FloatingToolbarPopup.this.mContentContainer, height2 + ((int) (f * (height - height2))));
                    if (FloatingToolbarPopup.this.mOpenOverflowUpwards) {
                        FloatingToolbarPopup.this.mContentContainer.setY(y - (FloatingToolbarPopup.this.mContentContainer.getHeight() - height2));
                        FloatingToolbarPopup.this.positionContentYCoordinatesIfOpeningOverflowUpwards();
                    }
                }
            };
            final float x2 = this.mOverflowButton.getX();
            if (isInRTLMode()) {
                width = (width2 + x2) - this.mOverflowButton.getWidth();
            } else {
                width = (x2 - width2) + this.mOverflowButton.getWidth();
            }
            Animation animation3 = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.7
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup.this.mOverflowButton.setX(x2 + (f * (width - x2)) + (FloatingToolbarPopup.this.isInRTLMode() ? 0.0f : FloatingToolbarPopup.this.mContentContainer.getWidth() - width3));
                }
            };
            animation.setInterpolator(this.mLogAccelerateInterpolator);
            animation.setDuration(getAdjustedDuration(250));
            animation2.setInterpolator(this.mFastOutSlowInInterpolator);
            animation2.setDuration(getAdjustedDuration(250));
            animation3.setInterpolator(this.mFastOutSlowInInterpolator);
            animation3.setDuration(getAdjustedDuration(250));
            this.mOpenOverflowAnimation.getAnimations().clear();
            this.mOpenOverflowAnimation.getAnimations().clear();
            this.mOpenOverflowAnimation.addAnimation(animation);
            this.mOpenOverflowAnimation.addAnimation(animation2);
            this.mOpenOverflowAnimation.addAnimation(animation3);
            this.mContentContainer.startAnimation(this.mOpenOverflowAnimation);
            this.mIsOverflowOpen = true;
            this.mMainPanel.animate().alpha(0.0f).withLayer().setInterpolator(this.mLinearOutSlowInInterpolator).setDuration(250L).start();
            this.mOverflowPanel.setAlpha(1.0f);
        }

        private void closeOverflow() {
            final float width;
            final int width2 = this.mMainPanelSize.getWidth();
            final int width3 = this.mContentContainer.getWidth();
            final float x = this.mContentContainer.getX();
            final float width4 = x + this.mContentContainer.getWidth();
            Animation animation = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.8
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup.setWidth(FloatingToolbarPopup.this.mContentContainer, width3 + ((int) (f * (width2 - width3))));
                    if (FloatingToolbarPopup.this.isInRTLMode()) {
                        FloatingToolbarPopup.this.mContentContainer.setX(x);
                        FloatingToolbarPopup.this.mMainPanel.setX(0.0f);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(0.0f);
                    } else {
                        FloatingToolbarPopup.this.mContentContainer.setX(width4 - FloatingToolbarPopup.this.mContentContainer.getWidth());
                        FloatingToolbarPopup.this.mMainPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width2);
                        FloatingToolbarPopup.this.mOverflowPanel.setX(FloatingToolbarPopup.this.mContentContainer.getWidth() - width3);
                    }
                }
            };
            final int height = this.mMainPanelSize.getHeight();
            final int height2 = this.mContentContainer.getHeight();
            final float y = this.mContentContainer.getY() + this.mContentContainer.getHeight();
            Animation animation2 = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.9
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup.setHeight(FloatingToolbarPopup.this.mContentContainer, height2 + ((int) (f * (height - height2))));
                    if (FloatingToolbarPopup.this.mOpenOverflowUpwards) {
                        FloatingToolbarPopup.this.mContentContainer.setY(y - FloatingToolbarPopup.this.mContentContainer.getHeight());
                        FloatingToolbarPopup.this.positionContentYCoordinatesIfOpeningOverflowUpwards();
                    }
                }
            };
            final float x2 = this.mOverflowButton.getX();
            if (isInRTLMode()) {
                width = (x2 - width3) + this.mOverflowButton.getWidth();
            } else {
                width = (width3 + x2) - this.mOverflowButton.getWidth();
            }
            Animation animation3 = new Animation() { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.10
                @Override // android.view.animation.Animation
                protected void applyTransformation(float f, Transformation transformation) {
                    FloatingToolbarPopup.this.mOverflowButton.setX(x2 + (f * (width - x2)) + (FloatingToolbarPopup.this.isInRTLMode() ? 0.0f : FloatingToolbarPopup.this.mContentContainer.getWidth() - width3));
                }
            };
            animation.setInterpolator(this.mFastOutSlowInInterpolator);
            animation.setDuration(getAdjustedDuration(250));
            animation2.setInterpolator(this.mLogAccelerateInterpolator);
            animation2.setDuration(getAdjustedDuration(250));
            animation3.setInterpolator(this.mFastOutSlowInInterpolator);
            animation3.setDuration(getAdjustedDuration(250));
            this.mCloseOverflowAnimation.getAnimations().clear();
            this.mCloseOverflowAnimation.addAnimation(animation);
            this.mCloseOverflowAnimation.addAnimation(animation2);
            this.mCloseOverflowAnimation.addAnimation(animation3);
            this.mContentContainer.startAnimation(this.mCloseOverflowAnimation);
            this.mIsOverflowOpen = false;
            this.mMainPanel.animate().alpha(1.0f).withLayer().setInterpolator(this.mFastOutLinearInInterpolator).setDuration(100L).start();
            this.mOverflowPanel.animate().alpha(0.0f).withLayer().setInterpolator(this.mLinearOutSlowInInterpolator).setDuration(150L).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setPanelsStatesAtRestingPosition() {
            this.mOverflowButton.setEnabled(true);
            this.mOverflowPanel.awakenScrollBars();
            if (this.mIsOverflowOpen) {
                setSize(this.mContentContainer, this.mOverflowPanelSize);
                this.mMainPanel.setAlpha(0.0f);
                this.mMainPanel.setVisibility(4);
                this.mOverflowPanel.setAlpha(1.0f);
                this.mOverflowPanel.setVisibility(0);
                this.mOverflowButton.setImageDrawable(this.mArrow);
                this.mOverflowButton.setContentDescription(this.mContext.getString(17039916));
                if (isInRTLMode()) {
                    this.mContentContainer.setX(this.mMarginHorizontal);
                    this.mMainPanel.setX(0.0f);
                    this.mOverflowButton.setX(r0.getWidth() - this.mOverflowButtonSize.getWidth());
                    this.mOverflowPanel.setX(0.0f);
                } else {
                    this.mContentContainer.setX((this.mPopupWindow.getWidth() - r0.getWidth()) - this.mMarginHorizontal);
                    this.mMainPanel.setX(-this.mContentContainer.getX());
                    this.mOverflowButton.setX(0.0f);
                    this.mOverflowPanel.setX(0.0f);
                }
                if (this.mOpenOverflowUpwards) {
                    this.mContentContainer.setY(this.mMarginVertical);
                    this.mMainPanel.setY(r0.getHeight() - this.mContentContainer.getHeight());
                    this.mOverflowButton.setY(r0.getHeight() - this.mOverflowButtonSize.getHeight());
                    this.mOverflowPanel.setY(0.0f);
                    return;
                }
                this.mContentContainer.setY(this.mMarginVertical);
                this.mMainPanel.setY(0.0f);
                this.mOverflowButton.setY(0.0f);
                this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
                return;
            }
            setSize(this.mContentContainer, this.mMainPanelSize);
            this.mMainPanel.setAlpha(1.0f);
            this.mMainPanel.setVisibility(0);
            this.mOverflowPanel.setAlpha(0.0f);
            this.mOverflowPanel.setVisibility(4);
            this.mOverflowButton.setImageDrawable(this.mOverflow);
            this.mOverflowButton.setContentDescription(this.mContext.getString(17039917));
            if (hasOverflow()) {
                if (isInRTLMode()) {
                    this.mContentContainer.setX(this.mMarginHorizontal);
                    this.mMainPanel.setX(0.0f);
                    this.mOverflowButton.setX(0.0f);
                    this.mOverflowPanel.setX(0.0f);
                } else {
                    this.mContentContainer.setX((this.mPopupWindow.getWidth() - r0.getWidth()) - this.mMarginHorizontal);
                    this.mMainPanel.setX(0.0f);
                    this.mOverflowButton.setX(r0.getWidth() - this.mOverflowButtonSize.getWidth());
                    this.mOverflowPanel.setX(r0.getWidth() - this.mOverflowPanelSize.getWidth());
                }
                if (this.mOpenOverflowUpwards) {
                    this.mContentContainer.setY((this.mMarginVertical + this.mOverflowPanelSize.getHeight()) - r0.getHeight());
                    this.mMainPanel.setY(0.0f);
                    this.mOverflowButton.setY(0.0f);
                    this.mOverflowPanel.setY(r0.getHeight() - this.mOverflowPanelSize.getHeight());
                    return;
                }
                this.mContentContainer.setY(this.mMarginVertical);
                this.mMainPanel.setY(0.0f);
                this.mOverflowButton.setY(0.0f);
                this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
                return;
            }
            this.mContentContainer.setX(this.mMarginHorizontal);
            this.mContentContainer.setY(this.mMarginVertical);
            this.mMainPanel.setX(0.0f);
            this.mMainPanel.setY(0.0f);
        }

        private void updateOverflowHeight(int i) {
            if (hasOverflow()) {
                int calculateOverflowHeight = calculateOverflowHeight((i - this.mOverflowButtonSize.getHeight()) / this.mLineHeight);
                if (this.mOverflowPanelSize.getHeight() != calculateOverflowHeight) {
                    this.mOverflowPanelSize = new Size(this.mOverflowPanelSize.getWidth(), calculateOverflowHeight);
                }
                setSize(this.mOverflowPanel, this.mOverflowPanelSize);
                if (this.mIsOverflowOpen) {
                    setSize(this.mContentContainer, this.mOverflowPanelSize);
                    if (this.mOpenOverflowUpwards) {
                        float height = this.mOverflowPanelSize.getHeight() - calculateOverflowHeight;
                        this.mContentContainer.setY(this.mContentContainer.getY() + height);
                        this.mOverflowButton.setY(this.mOverflowButton.getY() - height);
                    }
                } else {
                    setSize(this.mContentContainer, this.mMainPanelSize);
                }
                updatePopupSize();
            }
        }

        private void updatePopupSize() {
            int i;
            int i2 = 0;
            if (this.mMainPanelSize != null) {
                i = Math.max(0, this.mMainPanelSize.getWidth());
                i2 = Math.max(0, this.mMainPanelSize.getHeight());
            } else {
                i = 0;
            }
            if (this.mOverflowPanelSize != null) {
                i = Math.max(i, this.mOverflowPanelSize.getWidth());
                i2 = Math.max(i2, this.mOverflowPanelSize.getHeight());
            }
            this.mPopupWindow.setWidth(i + (this.mMarginHorizontal * 2));
            this.mPopupWindow.setHeight(i2 + (this.mMarginVertical * 2));
            maybeComputeTransitionDurationScale();
        }

        private void refreshViewPort() {
            this.mParent.getWindowVisibleDisplayFrame(this.mViewPortOnScreen);
        }

        private int getAdjustedToolbarWidth(int i) {
            refreshViewPort();
            int width = this.mViewPortOnScreen.width() - (this.mParent.getResources().getDimensionPixelSize(17105065) * 2);
            if (i <= 0) {
                i = this.mParent.getResources().getDimensionPixelSize(17105076);
            }
            return Math.min(i, width);
        }

        private void setZeroTouchableSurface() {
            this.mTouchableRegion.setEmpty();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setContentAreaAsTouchableSurface() {
            int width;
            int height;
            Preconditions.checkNotNull(this.mMainPanelSize);
            if (this.mIsOverflowOpen) {
                Preconditions.checkNotNull(this.mOverflowPanelSize);
                width = this.mOverflowPanelSize.getWidth();
                height = this.mOverflowPanelSize.getHeight();
            } else {
                width = this.mMainPanelSize.getWidth();
                height = this.mMainPanelSize.getHeight();
            }
            this.mTouchableRegion.set((int) this.mContentContainer.getX(), (int) this.mContentContainer.getY(), ((int) this.mContentContainer.getX()) + width, ((int) this.mContentContainer.getY()) + height);
        }

        private void setTouchableSurfaceInsetsComputer() {
            ViewTreeObserver viewTreeObserver = this.mPopupWindow.getContentView().getRootView().getViewTreeObserver();
            viewTreeObserver.removeOnComputeInternalInsetsListener(this.mInsetsComputer);
            viewTreeObserver.addOnComputeInternalInsetsListener(this.mInsetsComputer);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isInRTLMode() {
            return this.mContext.getApplicationInfo().hasRtlSupport() && this.mContext.getResources().getConfiguration().getLayoutDirection() == 1;
        }

        private boolean hasOverflow() {
            return this.mOverflowPanelSize != null;
        }

        public List<MenuItem> layoutMainPanelItems(List<MenuItem> list, int i) {
            Preconditions.checkNotNull(list);
            LinkedList linkedList = new LinkedList();
            LinkedList linkedList2 = new LinkedList();
            for (MenuItem menuItem : list) {
                if (menuItem.getItemId() != 16908353 && menuItem.requiresOverflow()) {
                    linkedList2.add(menuItem);
                } else {
                    linkedList.add(menuItem);
                }
            }
            linkedList.addAll(linkedList2);
            this.mMainPanel.removeAllViews();
            this.mMainPanel.setPaddingRelative(0, 0, 0, 0);
            boolean z = true;
            int i2 = i;
            while (!linkedList.isEmpty()) {
                MenuItem menuItem2 = (MenuItem) linkedList.peek();
                if (!z && menuItem2.requiresOverflow()) {
                    break;
                }
                boolean z2 = z && menuItem2.getItemId() == 16908353;
                View createMenuItemButton = FloatingToolbar.createMenuItemButton(this.mContext, menuItem2, this.mIconTextSpacing, z2);
                if (!z2 && (createMenuItemButton instanceof LinearLayout)) {
                    ((LinearLayout) createMenuItemButton).setGravity(17);
                }
                if (z) {
                    createMenuItemButton.setPaddingRelative((int) (createMenuItemButton.getPaddingStart() * 1.5d), createMenuItemButton.getPaddingTop(), createMenuItemButton.getPaddingEnd(), createMenuItemButton.getPaddingBottom());
                }
                boolean z3 = linkedList.size() == 1;
                if (z3) {
                    createMenuItemButton.setPaddingRelative(createMenuItemButton.getPaddingStart(), createMenuItemButton.getPaddingTop(), (int) (createMenuItemButton.getPaddingEnd() * 1.5d), createMenuItemButton.getPaddingBottom());
                }
                createMenuItemButton.measure(0, 0);
                int min = Math.min(createMenuItemButton.getMeasuredWidth(), i);
                boolean z4 = min <= i2 - this.mOverflowButtonSize.getWidth();
                boolean z5 = z3 && min <= i2;
                if (!z4 && !z5) {
                    break;
                }
                setButtonTagAndClickListener(createMenuItemButton, menuItem2);
                createMenuItemButton.setTooltipText(menuItem2.getTooltipText());
                this.mMainPanel.addView(createMenuItemButton);
                ViewGroup.LayoutParams layoutParams = createMenuItemButton.getLayoutParams();
                layoutParams.width = min;
                createMenuItemButton.setLayoutParams(layoutParams);
                i2 -= min;
                linkedList.pop();
                menuItem2.getGroupId();
                z = false;
            }
            if (!linkedList.isEmpty()) {
                this.mMainPanel.setPaddingRelative(0, 0, this.mOverflowButtonSize.getWidth(), 0);
            }
            this.mMainPanelSize = measure(this.mMainPanel);
            return linkedList;
        }

        private void layoutOverflowPanelItems(List<MenuItem> list) {
            ArrayAdapter arrayAdapter = (ArrayAdapter) this.mOverflowPanel.getAdapter();
            arrayAdapter.clear();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                arrayAdapter.add(list.get(i));
            }
            this.mOverflowPanel.setAdapter((ListAdapter) arrayAdapter);
            if (this.mOpenOverflowUpwards) {
                this.mOverflowPanel.setY(0.0f);
            } else {
                this.mOverflowPanel.setY(this.mOverflowButtonSize.getHeight());
            }
            this.mOverflowPanelSize = new Size(Math.max(getOverflowWidth(), this.mOverflowButtonSize.getWidth()), calculateOverflowHeight(4));
            setSize(this.mOverflowPanel, this.mOverflowPanelSize);
        }

        private void preparePopupContent() {
            this.mContentContainer.removeAllViews();
            if (hasOverflow()) {
                this.mContentContainer.addView(this.mOverflowPanel);
            }
            this.mContentContainer.addView(this.mMainPanel);
            if (hasOverflow()) {
                this.mContentContainer.addView(this.mOverflowButton);
            }
            setPanelsStatesAtRestingPosition();
            setContentAreaAsTouchableSurface();
            if (isInRTLMode()) {
                this.mContentContainer.setAlpha(0.0f);
                this.mContentContainer.post(this.mPreparePopupContentRTLHelper);
            }
        }

        private void clearPanels() {
            this.mOverflowPanelSize = null;
            this.mMainPanelSize = null;
            this.mIsOverflowOpen = false;
            this.mMainPanel.removeAllViews();
            ArrayAdapter arrayAdapter = (ArrayAdapter) this.mOverflowPanel.getAdapter();
            arrayAdapter.clear();
            this.mOverflowPanel.setAdapter((ListAdapter) arrayAdapter);
            this.mContentContainer.removeAllViews();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void positionContentYCoordinatesIfOpeningOverflowUpwards() {
            if (this.mOpenOverflowUpwards) {
                this.mMainPanel.setY(this.mContentContainer.getHeight() - this.mMainPanelSize.getHeight());
                this.mOverflowButton.setY(this.mContentContainer.getHeight() - this.mOverflowButton.getHeight());
                this.mOverflowPanel.setY(this.mContentContainer.getHeight() - this.mOverflowPanelSize.getHeight());
            }
        }

        private int getOverflowWidth() {
            int count = this.mOverflowPanel.getAdapter().getCount();
            int i = 0;
            for (int i2 = 0; i2 < count; i2++) {
                i = Math.max(this.mOverflowPanelViewHelper.calculateWidth((MenuItem) this.mOverflowPanel.getAdapter().getItem(i2)), i);
            }
            return i;
        }

        private int calculateOverflowHeight(int i) {
            int min = Math.min(4, Math.min(Math.max(2, i), this.mOverflowPanel.getCount()));
            return (min * this.mLineHeight) + this.mOverflowButtonSize.getHeight() + (min < this.mOverflowPanel.getCount() ? (int) (this.mLineHeight * 0.5f) : 0);
        }

        private void setButtonTagAndClickListener(View view, MenuItem menuItem) {
            view.setTag(menuItem);
            view.setOnClickListener(this.mMenuItemButtonOnClickListener);
        }

        private int getAdjustedDuration(int i) {
            if (this.mTransitionDurationScale < 150) {
                return Math.max(i - 50, 0);
            }
            return this.mTransitionDurationScale > 300 ? i + 50 : (int) (i * ValueAnimator.getDurationScale());
        }

        private void maybeComputeTransitionDurationScale() {
            if (this.mMainPanelSize == null || this.mOverflowPanelSize == null) {
                return;
            }
            int width = this.mMainPanelSize.getWidth() - this.mOverflowPanelSize.getWidth();
            int height = this.mOverflowPanelSize.getHeight() - this.mMainPanelSize.getHeight();
            this.mTransitionDurationScale = (int) (Math.sqrt((width * width) + (height * height)) / this.mContentContainer.getContext().getResources().getDisplayMetrics().density);
        }

        private ViewGroup createMainPanel() {
            return new LinearLayout(this.mContext) { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.11
                @Override // android.widget.LinearLayout, android.view.View
                protected void onMeasure(int i, int i2) {
                    if (FloatingToolbarPopup.this.isOverflowAnimating()) {
                        i = View.MeasureSpec.makeMeasureSpec(FloatingToolbarPopup.this.mMainPanelSize.getWidth(), 1073741824);
                    }
                    super.onMeasure(i, i2);
                }

                @Override // android.view.ViewGroup
                public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                    return FloatingToolbarPopup.this.isOverflowAnimating();
                }
            };
        }

        private ImageButton createOverflowButton() {
            final ImageButton imageButton = (ImageButton) LayoutInflater.from(this.mContext).inflate(17367142, (ViewGroup) null);
            imageButton.setImageDrawable(this.mOverflow);
            imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.android.internal.widget.-$$Lambda$FloatingToolbar$FloatingToolbarPopup$-uEfRwR-_1oHxMvRVdmbNRdukDM
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FloatingToolbar.FloatingToolbarPopup.lambda$createOverflowButton$1(FloatingToolbar.FloatingToolbarPopup.this, imageButton, view);
                }
            });
            return imageButton;
        }

        public static /* synthetic */ void lambda$createOverflowButton$1(FloatingToolbarPopup floatingToolbarPopup, ImageButton imageButton, View view) {
            if (floatingToolbarPopup.mIsOverflowOpen) {
                imageButton.setImageDrawable(floatingToolbarPopup.mToOverflow);
                floatingToolbarPopup.mToOverflow.start();
                floatingToolbarPopup.closeOverflow();
            } else {
                imageButton.setImageDrawable(floatingToolbarPopup.mToArrow);
                floatingToolbarPopup.mToArrow.start();
                floatingToolbarPopup.openOverflow();
            }
        }

        private OverflowPanel createOverflowPanel() {
            final OverflowPanel overflowPanel = new OverflowPanel(this);
            overflowPanel.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            overflowPanel.setDivider(null);
            overflowPanel.setDividerHeight(0);
            overflowPanel.setAdapter((ListAdapter) new ArrayAdapter<MenuItem>(this.mContext, 0) { // from class: com.android.internal.widget.FloatingToolbar.FloatingToolbarPopup.12
                @Override // android.widget.ArrayAdapter, android.widget.Adapter
                public View getView(int i, View view, ViewGroup viewGroup) {
                    return FloatingToolbarPopup.this.mOverflowPanelViewHelper.getView(getItem(i), FloatingToolbarPopup.this.mOverflowPanelSize.getWidth(), view);
                }
            });
            overflowPanel.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.android.internal.widget.-$$Lambda$FloatingToolbar$FloatingToolbarPopup$E8FwnPCl7gZpcTlX_UaRPIBRnT0
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                    FloatingToolbar.FloatingToolbarPopup.lambda$createOverflowPanel$2(FloatingToolbar.FloatingToolbarPopup.this, overflowPanel, adapterView, view, i, j);
                }
            });
            return overflowPanel;
        }

        public static /* synthetic */ void lambda$createOverflowPanel$2(FloatingToolbarPopup floatingToolbarPopup, OverflowPanel overflowPanel, AdapterView adapterView, View view, int i, long j) {
            MenuItem menuItem = (MenuItem) overflowPanel.getAdapter().getItem(i);
            if (floatingToolbarPopup.mOnMenuItemClickListener != null) {
                floatingToolbarPopup.mOnMenuItemClickListener.onMenuItemClick(menuItem);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isOverflowAnimating() {
            return (this.mOpenOverflowAnimation.hasStarted() && !this.mOpenOverflowAnimation.hasEnded()) || (this.mCloseOverflowAnimation.hasStarted() && !this.mCloseOverflowAnimation.hasEnded());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.android.internal.widget.FloatingToolbar$FloatingToolbarPopup$13, reason: invalid class name */
        /* loaded from: /home/user/work/dex/classes3.dex */
        public class AnonymousClass13 implements Animation.AnimationListener {
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            AnonymousClass13() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                FloatingToolbarPopup.this.mOverflowButton.setEnabled(false);
                FloatingToolbarPopup.this.mMainPanel.setVisibility(0);
                FloatingToolbarPopup.this.mOverflowPanel.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                FloatingToolbarPopup.this.mContentContainer.post(new Runnable() { // from class: com.android.internal.widget.-$$Lambda$FloatingToolbar$FloatingToolbarPopup$13$7WTSUuAWkzil48e0QxuKTn0YOXI
                    @Override // java.lang.Runnable
                    public final void run() {
                        FloatingToolbar.FloatingToolbarPopup.AnonymousClass13.lambda$onAnimationEnd$0(FloatingToolbar.FloatingToolbarPopup.AnonymousClass13.this);
                    }
                });
            }

            public static /* synthetic */ void lambda$onAnimationEnd$0(AnonymousClass13 anonymousClass13) {
                FloatingToolbarPopup.this.setPanelsStatesAtRestingPosition();
                FloatingToolbarPopup.this.setContentAreaAsTouchableSurface();
            }
        }

        private Animation.AnimationListener createOverflowAnimationListener() {
            return new AnonymousClass13();
        }

        private static Size measure(View view) {
            Preconditions.checkState(view.getParent() == null);
            view.measure(0, 0);
            return new Size(view.getMeasuredWidth(), view.getMeasuredHeight());
        }

        private static void setSize(View view, int i, int i2) {
            view.setMinimumWidth(i);
            view.setMinimumHeight(i2);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(0, 0);
            }
            layoutParams.width = i;
            layoutParams.height = i2;
            view.setLayoutParams(layoutParams);
        }

        private static void setSize(View view, Size size) {
            setSize(view, size.getWidth(), size.getHeight());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void setWidth(View view, int i) {
            setSize(view, i, view.getLayoutParams().height);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void setHeight(View view, int i) {
            setSize(view, view.getLayoutParams().width, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class OverflowPanel extends ListView {
            private final FloatingToolbarPopup mPopup;

            OverflowPanel(FloatingToolbarPopup floatingToolbarPopup) {
                super(((FloatingToolbarPopup) Preconditions.checkNotNull(floatingToolbarPopup)).mContext);
                this.mPopup = floatingToolbarPopup;
                setScrollBarDefaultDelayBeforeFade(ViewConfiguration.getScrollDefaultDelay() * 3);
                setScrollIndicators(3);
            }

            @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.mPopup.mOverflowPanelSize.getHeight() - this.mPopup.mOverflowButtonSize.getHeight(), 1073741824));
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (this.mPopup.isOverflowAnimating()) {
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }

            @Override // android.view.View
            protected boolean awakenScrollBars() {
                return super.awakenScrollBars();
            }
        }

        /* loaded from: /home/user/work/dex/classes3.dex */
        private static final class LogAccelerateInterpolator implements Interpolator {
            private static final int BASE = 100;
            private static final float LOGS_SCALE = 1.0f / computeLog(1.0f, 100);

            private LogAccelerateInterpolator() {
            }

            private static float computeLog(float f, int i) {
                return (float) (1.0d - Math.pow(i, -f));
            }

            @Override // android.animation.TimeInterpolator
            public float getInterpolation(float f) {
                return 1.0f - (computeLog(1.0f - f, 100) * LOGS_SCALE);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: /home/user/work/dex/classes3.dex */
        public static final class OverflowPanelViewHelper {
            private final View mCalculator = createMenuButton(null);
            private final Context mContext;
            private final int mIconTextSpacing;
            private final int mSidePadding;

            public OverflowPanelViewHelper(Context context, int i) {
                this.mContext = (Context) Preconditions.checkNotNull(context);
                this.mIconTextSpacing = i;
                this.mSidePadding = context.getResources().getDimensionPixelSize(17105075);
            }

            public View getView(MenuItem menuItem, int i, View view) {
                Preconditions.checkNotNull(menuItem);
                if (view != null) {
                    FloatingToolbar.updateMenuItemButton(view, menuItem, this.mIconTextSpacing, shouldShowIcon(menuItem));
                } else {
                    view = createMenuButton(menuItem);
                }
                view.setMinimumWidth(i);
                return view;
            }

            public int calculateWidth(MenuItem menuItem) {
                FloatingToolbar.updateMenuItemButton(this.mCalculator, menuItem, this.mIconTextSpacing, shouldShowIcon(menuItem));
                this.mCalculator.measure(0, 0);
                return this.mCalculator.getMeasuredWidth();
            }

            private View createMenuButton(MenuItem menuItem) {
                View createMenuItemButton = FloatingToolbar.createMenuItemButton(this.mContext, menuItem, this.mIconTextSpacing, shouldShowIcon(menuItem));
                createMenuItemButton.setPadding(this.mSidePadding, 0, this.mSidePadding, 0);
                return createMenuItemButton;
            }

            private boolean shouldShowIcon(MenuItem menuItem) {
                return menuItem != null && menuItem.getGroupId() == 16908353;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static View createMenuItemButton(Context context, MenuItem menuItem, int i, boolean z) {
        View inflate = LayoutInflater.from(context).inflate(17367140, (ViewGroup) null);
        if (menuItem != null) {
            updateMenuItemButton(inflate, menuItem, i, z);
        }
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void updateMenuItemButton(View view, MenuItem menuItem, int i, boolean z) {
        TextView textView = (TextView) view.findViewById(16908916);
        textView.setEllipsize(null);
        if (TextUtils.isEmpty(menuItem.getTitle())) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(menuItem.getTitle());
        }
        ImageView imageView = (ImageView) view.findViewById(16908914);
        if (menuItem.getIcon() == null || !z) {
            imageView.setVisibility(8);
            if (textView != null) {
                textView.setPaddingRelative(0, 0, 0, 0);
            }
        } else {
            imageView.setVisibility(0);
            imageView.setImageDrawable(menuItem.getIcon());
            if (textView != null) {
                textView.setPaddingRelative(i, 0, 0, 0);
            }
        }
        CharSequence contentDescription = menuItem.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            view.setContentDescription(menuItem.getTitle());
        } else {
            view.setContentDescription(contentDescription);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ViewGroup createContentContainer(Context context) {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(17367139, (ViewGroup) null);
        viewGroup.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        viewGroup.setTag(FLOATING_TOOLBAR_TAG);
        viewGroup.setClipToOutline(true);
        return viewGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static PopupWindow createPopupWindow(ViewGroup viewGroup) {
        LinearLayout linearLayout = new LinearLayout(viewGroup.getContext());
        PopupWindow popupWindow = new PopupWindow(linearLayout);
        popupWindow.setClippingEnabled(false);
        popupWindow.setWindowLayoutType(1005);
        popupWindow.setAnimationStyle(0);
        popupWindow.setBackgroundDrawable(new ColorDrawable(0));
        viewGroup.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        linearLayout.addView(viewGroup);
        return popupWindow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AnimatorSet createEnterAnimation(View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f).setDuration(150L));
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AnimatorSet createExitAnimation(View view, int i, Animator.AnimatorListener animatorListener) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f).setDuration(100L));
        animatorSet.setStartDelay(i);
        animatorSet.addListener(animatorListener);
        return animatorSet;
    }

    private static Context applyDefaultTheme(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{17891412});
        int i = obtainStyledAttributes.getBoolean(0, true) ? 16974123 : 16974120;
        obtainStyledAttributes.recycle();
        return new ContextThemeWrapper(context, i);
    }
}
