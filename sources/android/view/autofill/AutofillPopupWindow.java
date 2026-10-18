package android.view.autofill;

import android.R;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.RemoteException;
import android.transition.Transition;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.PopupWindow;

/* loaded from: /home/user/work/dex/classes2.dex */
public class AutofillPopupWindow extends PopupWindow {
    private static final String TAG = "AutofillPopupWindow";
    private boolean mFullScreen;
    private final View.OnAttachStateChangeListener mOnAttachStateChangeListener = new View.OnAttachStateChangeListener() { // from class: android.view.autofill.AutofillPopupWindow.1
        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            AutofillPopupWindow.this.dismiss();
        }
    };
    private WindowManager.LayoutParams mWindowLayoutParams;
    private final WindowPresenter mWindowPresenter;

    @Override // android.widget.PopupWindow
    protected boolean hasContentView() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.PopupWindow
    public boolean hasDecorView() {
        return true;
    }

    public AutofillPopupWindow(IAutofillWindowPresenter iAutofillWindowPresenter) {
        this.mWindowPresenter = new WindowPresenter(iAutofillWindowPresenter);
        setTouchModal(false);
        setOutsideTouchable(true);
        setInputMethodMode(2);
        setFocusable(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.PopupWindow
    public WindowManager.LayoutParams getDecorViewLayoutParams() {
        return this.mWindowLayoutParams;
    }

    public void update(final View view, int i, int i2, int i3, int i4, Rect rect) {
        int i5;
        int i6;
        View view2 = view;
        int i7 = i3;
        this.mFullScreen = i7 == -1;
        setWindowLayoutType(this.mFullScreen ? WindowManager.LayoutParams.TYPE_SYSTEM_DIALOG : 1005);
        if (this.mFullScreen) {
            Point point = new Point();
            view.getContext().getDisplay().getSize(point);
            i7 = point.x;
            i6 = i4 != -1 ? point.y - i4 : 0;
            i5 = 0;
        } else if (rect != null) {
            final int[] iArr = {rect.left, rect.top};
            View view3 = new View(view.getContext()) { // from class: android.view.autofill.AutofillPopupWindow.2
                @Override // android.view.View
                public void getLocationOnScreen(int[] iArr2) {
                    iArr2[0] = iArr[0];
                    iArr2[1] = iArr[1];
                }

                @Override // android.view.View
                public int getAccessibilityViewId() {
                    return view.getAccessibilityViewId();
                }

                @Override // android.view.View
                public ViewTreeObserver getViewTreeObserver() {
                    return view.getViewTreeObserver();
                }

                @Override // android.view.View
                public IBinder getApplicationWindowToken() {
                    return view.getApplicationWindowToken();
                }

                @Override // android.view.View
                public View getRootView() {
                    return view.getRootView();
                }

                @Override // android.view.View
                public int getLayoutDirection() {
                    return view.getLayoutDirection();
                }

                @Override // android.view.View
                public void getWindowDisplayFrame(Rect rect2) {
                    view.getWindowDisplayFrame(rect2);
                }

                @Override // android.view.View
                public void addOnAttachStateChangeListener(View.OnAttachStateChangeListener onAttachStateChangeListener) {
                    view.addOnAttachStateChangeListener(onAttachStateChangeListener);
                }

                @Override // android.view.View
                public void removeOnAttachStateChangeListener(View.OnAttachStateChangeListener onAttachStateChangeListener) {
                    view.removeOnAttachStateChangeListener(onAttachStateChangeListener);
                }

                @Override // android.view.View
                public boolean isAttachedToWindow() {
                    return view.isAttachedToWindow();
                }

                @Override // android.view.View
                public boolean requestRectangleOnScreen(Rect rect2, boolean z) {
                    return view.requestRectangleOnScreen(rect2, z);
                }

                @Override // android.view.View
                public IBinder getWindowToken() {
                    return view.getWindowToken();
                }
            };
            view3.setLeftTopRightBottom(rect.left, rect.top, rect.right, rect.bottom);
            view3.setScrollX(view.getScrollX());
            view3.setScrollY(view.getScrollY());
            view.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: android.view.autofill.-$$Lambda$AutofillPopupWindow$DnLs9aVkSgQ89oSTe4P9EweBBks
                @Override // android.view.View.OnScrollChangeListener
                public final void onScrollChange(View view4, int i8, int i9, int i10, int i11) {
                    AutofillPopupWindow.lambda$update$0(iArr, view4, i8, i9, i10, i11);
                }
            });
            view3.setWillNotDraw(true);
            i5 = i;
            i6 = i2;
            view2 = view3;
        } else {
            i5 = i;
            i6 = i2;
        }
        if (!this.mFullScreen) {
            setAnimationStyle(-1);
        } else if (i4 == -1) {
            setAnimationStyle(0);
        } else {
            setAnimationStyle(R.style.Animation.VoiceActivity);
        }
        if (!isShowing()) {
            setWidth(i7);
            setHeight(i4);
            showAsDropDown(view2, i5, i6);
            return;
        }
        update(view2, i5, i6, i7, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$update$0(int[] iArr, View view, int i, int i2, int i3, int i4) {
        iArr[0] = iArr[0] - (i - i3);
        iArr[1] = iArr[1] - (i2 - i4);
    }

    @Override // android.widget.PopupWindow
    protected void update(View view, WindowManager.LayoutParams layoutParams) {
        this.mWindowPresenter.show(layoutParams, getTransitionEpicenter(), isLayoutInsetDecor(), view != null ? view.getLayoutDirection() : 3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.PopupWindow
    public boolean findDropDownPosition(View view, WindowManager.LayoutParams layoutParams, int i, int i2, int i3, int i4, int i5, boolean z) {
        if (this.mFullScreen) {
            layoutParams.x = i;
            layoutParams.y = i2;
            layoutParams.width = i3;
            layoutParams.height = i4;
            layoutParams.gravity = i5;
            return false;
        }
        return super.findDropDownPosition(view, layoutParams, i, i2, i3, i4, i5, z);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (Helper.sVerbose) {
            Log.v(TAG, "showAsDropDown(): anchor=" + view + ", xoff=" + i + ", yoff=" + i2 + ", isShowing(): " + isShowing());
        }
        if (isShowing()) {
            return;
        }
        setShowing(true);
        setDropDown(true);
        attachToAnchor(view, i, i2, i3);
        WindowManager.LayoutParams createPopupLayoutParams = createPopupLayoutParams(view.getWindowToken());
        this.mWindowLayoutParams = createPopupLayoutParams;
        updateAboveAnchor(findDropDownPosition(view, createPopupLayoutParams, i, i2, createPopupLayoutParams.width, createPopupLayoutParams.height, i3, getAllowScrollingAnchorParent()));
        createPopupLayoutParams.accessibilityIdOfAnchor = view.getAccessibilityViewId();
        createPopupLayoutParams.packageName = view.getContext().getPackageName();
        this.mWindowPresenter.show(createPopupLayoutParams, getTransitionEpicenter(), isLayoutInsetDecor(), view.getLayoutDirection());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.PopupWindow
    public void attachToAnchor(View view, int i, int i2, int i3) {
        super.attachToAnchor(view, i, i2, i3);
        view.addOnAttachStateChangeListener(this.mOnAttachStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.PopupWindow
    public void detachFromAnchor() {
        View anchor = getAnchor();
        if (anchor != null) {
            anchor.removeOnAttachStateChangeListener(this.mOnAttachStateChangeListener);
        }
        super.detachFromAnchor();
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        if (!isShowing() || isTransitioningToDismiss()) {
            return;
        }
        setShowing(false);
        setTransitioningToDismiss(true);
        this.mWindowPresenter.hide(getTransitionEpicenter());
        detachFromAnchor();
        if (getOnDismissListener() != null) {
            getOnDismissListener().onDismiss();
        }
    }

    @Override // android.widget.PopupWindow
    public int getAnimationStyle() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public Drawable getBackground() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public View getContentView() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public float getElevation() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public Transition getEnterTransition() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public Transition getExitTransition() {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setBackgroundDrawable(Drawable drawable) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setContentView(View view) {
        if (view != null) {
            throw new IllegalStateException("You can't call this!");
        }
    }

    @Override // android.widget.PopupWindow
    public void setElevation(float f) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setEnterTransition(Transition transition) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setExitTransition(Transition transition) {
        throw new IllegalStateException("You can't call this!");
    }

    @Override // android.widget.PopupWindow
    public void setTouchInterceptor(View.OnTouchListener onTouchListener) {
        throw new IllegalStateException("You can't call this!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class WindowPresenter {
        final IAutofillWindowPresenter mPresenter;

        WindowPresenter(IAutofillWindowPresenter iAutofillWindowPresenter) {
            this.mPresenter = iAutofillWindowPresenter;
        }

        void show(WindowManager.LayoutParams layoutParams, Rect rect, boolean z, int i) {
            try {
                this.mPresenter.show(layoutParams, rect, z, i);
            } catch (RemoteException e) {
                Log.w(AutofillPopupWindow.TAG, "Error showing fill window", e);
                e.rethrowFromSystemServer();
            }
        }

        void hide(Rect rect) {
            try {
                this.mPresenter.hide(rect);
            } catch (RemoteException e) {
                Log.w(AutofillPopupWindow.TAG, "Error hiding fill window", e);
                e.rethrowFromSystemServer();
            }
        }
    }
}
