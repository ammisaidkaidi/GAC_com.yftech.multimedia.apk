package android.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.ActivityTransitionCoordinator;
import android.app.SharedElementCallback;
import android.content.Intent;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.ResultReceiver;
import android.transition.Transition;
import android.transition.TransitionListenerAdapter;
import android.transition.TransitionManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.android.internal.view.OneShotPreDrawListener;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class ExitTransitionCoordinator extends ActivityTransitionCoordinator {
    private static final long MAX_WAIT_MS = 1000;
    private static final String TAG = "ExitTransitionCoordinator";
    private Activity mActivity;
    private ObjectAnimator mBackgroundAnimator;
    private boolean mExitNotified;
    private Bundle mExitSharedElementBundle;
    private Handler mHandler;
    private HideSharedElementsCallback mHideSharedElementsCallback;
    private boolean mIsBackgroundReady;
    private boolean mIsCanceled;
    private boolean mIsExitStarted;
    private boolean mIsHidden;
    private Bundle mSharedElementBundle;
    private boolean mSharedElementNotified;
    private boolean mSharedElementsHidden;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface HideSharedElementsCallback {
        void hideSharedElements();
    }

    public ExitTransitionCoordinator(Activity activity, Window window, SharedElementCallback sharedElementCallback, ArrayList<String> arrayList, ArrayList<String> arrayList2, ArrayList<View> arrayList3, boolean z) {
        super(window, arrayList, sharedElementCallback, z);
        viewsReady(mapSharedElements(arrayList2, arrayList3));
        stripOffscreenViews();
        this.mIsBackgroundReady = !z;
        this.mActivity = activity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHideSharedElementsCallback(HideSharedElementsCallback hideSharedElementsCallback) {
        this.mHideSharedElementsCallback = hideSharedElementsCallback;
    }

    @Override // android.os.ResultReceiver
    protected void onReceiveResult(int i, Bundle bundle) {
        switch (i) {
            case 100:
                stopCancel();
                this.mResultReceiver = (ResultReceiver) bundle.getParcelable("android:remoteReceiver");
                if (this.mIsCanceled) {
                    this.mResultReceiver.send(106, null);
                    this.mResultReceiver = null;
                    return;
                } else {
                    notifyComplete();
                    return;
                }
            case 101:
                stopCancel();
                if (this.mIsCanceled) {
                    return;
                }
                hideSharedElements();
                return;
            case 102:
            case 103:
            case 104:
            default:
                return;
            case 105:
                this.mHandler.removeMessages(106);
                startExit();
                return;
            case 106:
                this.mIsCanceled = true;
                finish();
                return;
            case 107:
                this.mExitSharedElementBundle = bundle;
                sharedElementExitBack();
                return;
        }
    }

    private void stopCancel() {
        if (this.mHandler != null) {
            this.mHandler.removeMessages(106);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void delayCancel() {
        if (this.mHandler != null) {
            this.mHandler.sendEmptyMessageDelayed(106, MAX_WAIT_MS);
        }
    }

    public void resetViews() {
        ViewGroup decor = getDecor();
        if (decor != null) {
            TransitionManager.endTransitions(decor);
        }
        if (this.mTransitioningViews != null) {
            showViews(this.mTransitioningViews, true);
            setTransitioningViewsVisiblity(0, true);
        }
        showViews(this.mSharedElements, true);
        this.mIsHidden = true;
        if (!this.mIsReturning && decor != null) {
            decor.suppressLayout(false);
        }
        moveSharedElementsFromOverlay();
        clearState();
    }

    private void sharedElementExitBack() {
        final ViewGroup decor = getDecor();
        if (decor != null) {
            decor.suppressLayout(true);
        }
        if (decor != null && this.mExitSharedElementBundle != null && !this.mExitSharedElementBundle.isEmpty() && !this.mSharedElements.isEmpty() && getSharedElementTransition() != null) {
            startTransition(new Runnable() { // from class: android.app.ExitTransitionCoordinator.1
                @Override // java.lang.Runnable
                public void run() {
                    ExitTransitionCoordinator.this.startSharedElementExit(decor);
                }
            });
        } else {
            sharedElementTransitionComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startSharedElementExit(ViewGroup viewGroup) {
        Transition sharedElementExitTransition = getSharedElementExitTransition();
        sharedElementExitTransition.addListener(new TransitionListenerAdapter() { // from class: android.app.ExitTransitionCoordinator.2
            @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
            public void onTransitionEnd(Transition transition) {
                transition.removeListener(this);
                if (ExitTransitionCoordinator.this.isViewsTransitionComplete()) {
                    ExitTransitionCoordinator.this.delayCancel();
                }
            }
        });
        final ArrayList<View> createSnapshots = createSnapshots(this.mExitSharedElementBundle, this.mSharedElementNames);
        OneShotPreDrawListener.add(viewGroup, new Runnable() { // from class: android.app.-$$Lambda$ExitTransitionCoordinator$QSAvMs76ZWnO0eiLyXWkcGxkRIY
            @Override // java.lang.Runnable
            public final void run() {
                r0.setSharedElementState(ExitTransitionCoordinator.this.mExitSharedElementBundle, createSnapshots);
            }
        });
        setGhostVisibility(4);
        scheduleGhostVisibilityChange(4);
        if (this.mListener != null) {
            this.mListener.onSharedElementEnd(this.mSharedElementNames, this.mSharedElements, createSnapshots);
        }
        TransitionManager.beginDelayedTransition(viewGroup, sharedElementExitTransition);
        scheduleGhostVisibilityChange(0);
        setGhostVisibility(0);
        viewGroup.invalidate();
    }

    private void hideSharedElements() {
        moveSharedElementsFromOverlay();
        if (this.mHideSharedElementsCallback != null) {
            this.mHideSharedElementsCallback.hideSharedElements();
        }
        if (!this.mIsHidden) {
            hideViews(this.mSharedElements);
        }
        this.mSharedElementsHidden = true;
        finishIfNecessary();
    }

    public void startExit() {
        if (this.mIsExitStarted) {
            return;
        }
        backgroundAnimatorComplete();
        this.mIsExitStarted = true;
        pauseInput();
        ViewGroup decor = getDecor();
        if (decor != null) {
            decor.suppressLayout(true);
        }
        moveSharedElementsToOverlay();
        startTransition(new Runnable() { // from class: android.app.ExitTransitionCoordinator.3
            @Override // java.lang.Runnable
            public void run() {
                if (ExitTransitionCoordinator.this.mActivity != null) {
                    ExitTransitionCoordinator.this.beginTransitions();
                } else {
                    ExitTransitionCoordinator.this.startExitTransition();
                }
            }
        });
    }

    public void startExit(int i, Intent intent) {
        ArrayList<String> arrayList;
        if (this.mIsExitStarted) {
            return;
        }
        boolean z = true;
        this.mIsExitStarted = true;
        pauseInput();
        ViewGroup decor = getDecor();
        if (decor != null) {
            decor.suppressLayout(true);
        }
        this.mHandler = new Handler() { // from class: android.app.ExitTransitionCoordinator.4
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                ExitTransitionCoordinator.this.mIsCanceled = true;
                ExitTransitionCoordinator.this.finish();
            }
        };
        delayCancel();
        moveSharedElementsToOverlay();
        if (decor != null && decor.getBackground() == null) {
            getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        if (decor != null && decor.getContext().getApplicationInfo().targetSdkVersion < 23) {
            z = false;
        }
        if (z) {
            arrayList = this.mSharedElementNames;
        } else {
            arrayList = this.mAllSharedElementNames;
        }
        this.mActivity.convertToTranslucent(new Activity.TranslucentConversionListener() { // from class: android.app.ExitTransitionCoordinator.5
            @Override // android.app.Activity.TranslucentConversionListener
            public void onTranslucentConversionComplete(boolean z2) {
                if (ExitTransitionCoordinator.this.mIsCanceled) {
                    return;
                }
                ExitTransitionCoordinator.this.fadeOutBackground();
            }
        }, ActivityOptions.makeSceneTransitionAnimation(this.mActivity, this, arrayList, i, intent));
        startTransition(new Runnable() { // from class: android.app.ExitTransitionCoordinator.6
            @Override // java.lang.Runnable
            public void run() {
                ExitTransitionCoordinator.this.startExitTransition();
            }
        });
    }

    public void stop() {
        if (!this.mIsReturning || this.mActivity == null) {
            return;
        }
        this.mActivity.convertToTranslucent(null, null);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startExitTransition() {
        Transition exitTransition = getExitTransition();
        ViewGroup decor = getDecor();
        if (exitTransition != null && decor != null && this.mTransitioningViews != null) {
            setTransitioningViewsVisiblity(0, false);
            TransitionManager.beginDelayedTransition(decor, exitTransition);
            setTransitioningViewsVisiblity(4, false);
            decor.invalidate();
            return;
        }
        transitionStarted();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fadeOutBackground() {
        Drawable background;
        if (this.mBackgroundAnimator == null) {
            ViewGroup decor = getDecor();
            if (decor != null && (background = decor.getBackground()) != null) {
                Drawable mutate = background.mutate();
                getWindow().setBackgroundDrawable(mutate);
                this.mBackgroundAnimator = ObjectAnimator.ofInt(mutate, "alpha", 0);
                this.mBackgroundAnimator.addListener(new AnimatorListenerAdapter() { // from class: android.app.ExitTransitionCoordinator.7
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        ExitTransitionCoordinator.this.mBackgroundAnimator = null;
                        if (!ExitTransitionCoordinator.this.mIsCanceled) {
                            ExitTransitionCoordinator.this.mIsBackgroundReady = true;
                            ExitTransitionCoordinator.this.notifyComplete();
                        }
                        ExitTransitionCoordinator.this.backgroundAnimatorComplete();
                    }
                });
                this.mBackgroundAnimator.setDuration(getFadeDuration());
                this.mBackgroundAnimator.start();
                return;
            }
            backgroundAnimatorComplete();
            this.mIsBackgroundReady = true;
        }
    }

    private Transition getExitTransition() {
        Transition transition = null;
        if (this.mTransitioningViews != null && !this.mTransitioningViews.isEmpty()) {
            Transition configureTransition = configureTransition(getViewsTransition(), true);
            removeExcludedViews(configureTransition, this.mTransitioningViews);
            if (!this.mTransitioningViews.isEmpty()) {
                transition = configureTransition;
            }
        }
        if (transition == null) {
            viewsTransitionComplete();
        } else {
            final ArrayList<View> arrayList = this.mTransitioningViews;
            transition.addListener(new ActivityTransitionCoordinator.ContinueTransitionListener() { // from class: android.app.ExitTransitionCoordinator.8
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // android.app.ActivityTransitionCoordinator.ContinueTransitionListener, android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition2) {
                    ExitTransitionCoordinator.this.viewsTransitionComplete();
                    if (ExitTransitionCoordinator.this.mIsHidden && arrayList != null) {
                        ExitTransitionCoordinator.this.showViews(arrayList, true);
                        ExitTransitionCoordinator.this.setTransitioningViewsVisiblity(0, true);
                    }
                    if (ExitTransitionCoordinator.this.mSharedElementBundle != null) {
                        ExitTransitionCoordinator.this.delayCancel();
                    }
                    super.onTransitionEnd(transition2);
                }
            });
        }
        return transition;
    }

    private Transition getSharedElementExitTransition() {
        Transition configureTransition = !this.mSharedElements.isEmpty() ? configureTransition(getSharedElementTransition(), false) : null;
        if (configureTransition == null) {
            sharedElementTransitionComplete();
        } else {
            configureTransition.addListener(new ActivityTransitionCoordinator.ContinueTransitionListener() { // from class: android.app.ExitTransitionCoordinator.9
                @Override // android.app.ActivityTransitionCoordinator.ContinueTransitionListener, android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition) {
                    ExitTransitionCoordinator.this.sharedElementTransitionComplete();
                    if (ExitTransitionCoordinator.this.mIsHidden) {
                        ExitTransitionCoordinator.this.showViews(ExitTransitionCoordinator.this.mSharedElements, true);
                    }
                    super.onTransitionEnd(transition);
                }
            });
            this.mSharedElements.get(0).invalidate();
        }
        return configureTransition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void beginTransitions() {
        Transition sharedElementExitTransition = getSharedElementExitTransition();
        Transition exitTransition = getExitTransition();
        Transition mergeTransitions = mergeTransitions(sharedElementExitTransition, exitTransition);
        ViewGroup decor = getDecor();
        if (mergeTransitions != null && decor != null) {
            setGhostVisibility(4);
            scheduleGhostVisibilityChange(4);
            if (exitTransition != null) {
                setTransitioningViewsVisiblity(0, false);
            }
            TransitionManager.beginDelayedTransition(decor, mergeTransitions);
            scheduleGhostVisibilityChange(0);
            setGhostVisibility(0);
            if (exitTransition != null) {
                setTransitioningViewsVisiblity(4, false);
            }
            decor.invalidate();
            return;
        }
        transitionStarted();
    }

    protected boolean isReadyToNotify() {
        return (this.mSharedElementBundle == null || this.mResultReceiver == null || !this.mIsBackgroundReady) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.ActivityTransitionCoordinator
    public void sharedElementTransitionComplete() {
        this.mSharedElementBundle = this.mExitSharedElementBundle == null ? captureSharedElementState() : captureExitSharedElementsState();
        super.sharedElementTransitionComplete();
    }

    private Bundle captureExitSharedElementsState() {
        Bundle bundle = new Bundle();
        RectF rectF = new RectF();
        Matrix matrix = new Matrix();
        for (int i = 0; i < this.mSharedElements.size(); i++) {
            String str = this.mSharedElementNames.get(i);
            Bundle bundle2 = this.mExitSharedElementBundle.getBundle(str);
            if (bundle2 != null) {
                bundle.putBundle(str, bundle2);
            } else {
                captureSharedElementState(this.mSharedElements.get(i), str, bundle, matrix, rectF);
            }
        }
        return bundle;
    }

    @Override // android.app.ActivityTransitionCoordinator
    protected void onTransitionsComplete() {
        notifyComplete();
    }

    protected void notifyComplete() {
        if (isReadyToNotify()) {
            if (!this.mSharedElementNotified) {
                this.mSharedElementNotified = true;
                delayCancel();
                if (this.mListener == null) {
                    this.mResultReceiver.send(103, this.mSharedElementBundle);
                    notifyExitComplete();
                    return;
                } else {
                    final ResultReceiver resultReceiver = this.mResultReceiver;
                    final Bundle bundle = this.mSharedElementBundle;
                    this.mListener.onSharedElementsArrived(this.mSharedElementNames, this.mSharedElements, new SharedElementCallback.OnSharedElementsReadyListener() { // from class: android.app.ExitTransitionCoordinator.10
                        @Override // android.app.SharedElementCallback.OnSharedElementsReadyListener
                        public void onSharedElementsReady() {
                            resultReceiver.send(103, bundle);
                            ExitTransitionCoordinator.this.notifyExitComplete();
                        }
                    });
                    return;
                }
            }
            notifyExitComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyExitComplete() {
        if (this.mExitNotified || !isViewsTransitionComplete()) {
            return;
        }
        this.mExitNotified = true;
        this.mResultReceiver.send(104, null);
        this.mResultReceiver = null;
        ViewGroup decor = getDecor();
        if (!this.mIsReturning && decor != null) {
            decor.suppressLayout(false);
        }
        finishIfNecessary();
    }

    private void finishIfNecessary() {
        if (this.mIsReturning && this.mExitNotified && this.mActivity != null && (this.mSharedElements.isEmpty() || this.mSharedElementsHidden)) {
            finish();
        }
        if (this.mIsReturning || !this.mExitNotified) {
            return;
        }
        this.mActivity = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish() {
        stopCancel();
        if (this.mActivity != null) {
            this.mActivity.mActivityTransitionState.clear();
            this.mActivity.finish();
            this.mActivity.overridePendingTransition(0, 0);
            this.mActivity = null;
        }
        clearState();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.ActivityTransitionCoordinator
    public void clearState() {
        this.mHandler = null;
        this.mSharedElementBundle = null;
        if (this.mBackgroundAnimator != null) {
            this.mBackgroundAnimator.cancel();
            this.mBackgroundAnimator = null;
        }
        this.mExitSharedElementBundle = null;
        super.clearState();
    }

    @Override // android.app.ActivityTransitionCoordinator
    protected boolean moveSharedElementWithParent() {
        return !this.mIsReturning;
    }

    @Override // android.app.ActivityTransitionCoordinator
    protected Transition getViewsTransition() {
        if (this.mIsReturning) {
            return getWindow().getReturnTransition();
        }
        return getWindow().getExitTransition();
    }

    protected Transition getSharedElementTransition() {
        if (this.mIsReturning) {
            return getWindow().getSharedElementReturnTransition();
        }
        return getWindow().getSharedElementExitTransition();
    }
}
