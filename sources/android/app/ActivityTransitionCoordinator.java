package android.app;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.transition.Transition;
import android.transition.TransitionListenerAdapter;
import android.transition.TransitionSet;
import android.transition.Visibility;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.view.GhostView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.ImageView;
import com.android.internal.view.OneShotPreDrawListener;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ActivityTransitionCoordinator extends ResultReceiver {
    protected static final String KEY_ELEVATION = "shared_element:elevation";
    protected static final String KEY_IMAGE_MATRIX = "shared_element:imageMatrix";
    static final String KEY_REMOTE_RECEIVER = "android:remoteReceiver";
    protected static final String KEY_SCALE_TYPE = "shared_element:scaleType";
    protected static final String KEY_SCREEN_BOTTOM = "shared_element:screenBottom";
    protected static final String KEY_SCREEN_LEFT = "shared_element:screenLeft";
    protected static final String KEY_SCREEN_RIGHT = "shared_element:screenRight";
    protected static final String KEY_SCREEN_TOP = "shared_element:screenTop";
    protected static final String KEY_SNAPSHOT = "shared_element:bitmap";
    protected static final String KEY_TRANSLATION_Z = "shared_element:translationZ";
    public static final int MSG_CANCEL = 106;
    public static final int MSG_EXIT_TRANSITION_COMPLETE = 104;
    public static final int MSG_HIDE_SHARED_ELEMENTS = 101;
    public static final int MSG_SET_REMOTE_RECEIVER = 100;
    public static final int MSG_SHARED_ELEMENT_DESTINATION = 107;
    public static final int MSG_START_EXIT_TRANSITION = 105;
    public static final int MSG_TAKE_SHARED_ELEMENTS = 103;
    protected static final ImageView.ScaleType[] SCALE_TYPE_VALUES = ImageView.ScaleType.values();
    private static final String TAG = "ActivityTransitionCoordinator";
    protected final ArrayList<String> mAllSharedElementNames;
    private boolean mBackgroundAnimatorComplete;
    private final FixedEpicenterCallback mEpicenterCallback;
    private ArrayList<GhostViewListeners> mGhostViewListeners;
    protected final boolean mIsReturning;
    private boolean mIsStartingTransition;
    protected SharedElementCallback mListener;
    private ArrayMap<View, Float> mOriginalAlphas;
    private Runnable mPendingTransition;
    protected ResultReceiver mResultReceiver;
    protected final ArrayList<String> mSharedElementNames;
    private ArrayList<Matrix> mSharedElementParentMatrices;
    private boolean mSharedElementTransitionComplete;
    protected final ArrayList<View> mSharedElements;
    private ArrayList<View> mStrippedTransitioningViews;
    protected ArrayList<View> mTransitioningViews;
    private boolean mViewsTransitionComplete;
    private Window mWindow;

    protected abstract Transition getViewsTransition();

    protected boolean moveSharedElementWithParent() {
        return true;
    }

    protected void onTransitionsComplete() {
    }

    public ActivityTransitionCoordinator(Window window, ArrayList<String> arrayList, SharedElementCallback sharedElementCallback, boolean z) {
        super(new Handler());
        this.mSharedElements = new ArrayList<>();
        this.mSharedElementNames = new ArrayList<>();
        this.mTransitioningViews = new ArrayList<>();
        this.mEpicenterCallback = new FixedEpicenterCallback();
        this.mGhostViewListeners = new ArrayList<>();
        this.mOriginalAlphas = new ArrayMap<>();
        this.mStrippedTransitioningViews = new ArrayList<>();
        this.mWindow = window;
        this.mListener = sharedElementCallback;
        this.mAllSharedElementNames = arrayList;
        this.mIsReturning = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void viewsReady(ArrayMap<String, View> arrayMap) {
        arrayMap.retainAll(this.mAllSharedElementNames);
        if (this.mListener != null) {
            this.mListener.onMapSharedElements(this.mAllSharedElementNames, arrayMap);
        }
        setSharedElements(arrayMap);
        if (getViewsTransition() != null && this.mTransitioningViews != null) {
            ViewGroup decor = getDecor();
            if (decor != null) {
                decor.captureTransitioningViews(this.mTransitioningViews);
            }
            this.mTransitioningViews.removeAll(this.mSharedElements);
        }
        setEpicenter();
    }

    private void setSharedElements(ArrayMap<String, View> arrayMap) {
        boolean z = true;
        while (!arrayMap.isEmpty()) {
            for (int size = arrayMap.size() - 1; size >= 0; size--) {
                View valueAt = arrayMap.valueAt(size);
                String keyAt = arrayMap.keyAt(size);
                if (z && (valueAt == null || !valueAt.isAttachedToWindow() || keyAt == null)) {
                    arrayMap.removeAt(size);
                } else if (!isNested(valueAt, arrayMap)) {
                    this.mSharedElementNames.add(keyAt);
                    this.mSharedElements.add(valueAt);
                    arrayMap.removeAt(size);
                }
            }
            z = false;
        }
    }

    private static boolean isNested(View view, ArrayMap<String, View> arrayMap) {
        Object parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            if (arrayMap.containsValue(view2)) {
                return true;
            }
            parent = view2.getParent();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void stripOffscreenViews() {
        if (this.mTransitioningViews == null) {
            return;
        }
        Rect rect = new Rect();
        for (int size = this.mTransitioningViews.size() - 1; size >= 0; size--) {
            View view = this.mTransitioningViews.get(size);
            if (!view.getGlobalVisibleRect(rect)) {
                this.mTransitioningViews.remove(size);
                this.mStrippedTransitioningViews.add(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Window getWindow() {
        return this.mWindow;
    }

    public ViewGroup getDecor() {
        if (this.mWindow == null) {
            return null;
        }
        return (ViewGroup) this.mWindow.getDecorView();
    }

    protected void setEpicenter() {
        int indexOf;
        setEpicenter((this.mAllSharedElementNames.isEmpty() || this.mSharedElementNames.isEmpty() || (indexOf = this.mSharedElementNames.indexOf(this.mAllSharedElementNames.get(0))) < 0) ? null : this.mSharedElements.get(indexOf));
    }

    private void setEpicenter(View view) {
        if (view == null) {
            this.mEpicenterCallback.setEpicenter(null);
            return;
        }
        Rect rect = new Rect();
        view.getBoundsOnScreen(rect);
        this.mEpicenterCallback.setEpicenter(rect);
    }

    public ArrayList<String> getAcceptedNames() {
        return this.mSharedElementNames;
    }

    public ArrayList<String> getMappedNames() {
        ArrayList<String> arrayList = new ArrayList<>(this.mSharedElements.size());
        for (int i = 0; i < this.mSharedElements.size(); i++) {
            arrayList.add(this.mSharedElements.get(i).getTransitionName());
        }
        return arrayList;
    }

    public ArrayList<View> copyMappedViews() {
        return new ArrayList<>(this.mSharedElements);
    }

    public ArrayList<String> getAllSharedElementNames() {
        return this.mAllSharedElementNames;
    }

    protected Transition setTargets(Transition transition, boolean z) {
        if (transition == null) {
            return null;
        }
        if (z && (this.mTransitioningViews == null || this.mTransitioningViews.isEmpty())) {
            return null;
        }
        TransitionSet transitionSet = new TransitionSet();
        if (this.mTransitioningViews != null) {
            for (int size = this.mTransitioningViews.size() - 1; size >= 0; size--) {
                View view = this.mTransitioningViews.get(size);
                if (z) {
                    transitionSet.addTarget(view);
                } else {
                    transitionSet.excludeTarget(view, true);
                }
            }
        }
        if (this.mStrippedTransitioningViews != null) {
            for (int size2 = this.mStrippedTransitioningViews.size() - 1; size2 >= 0; size2--) {
                transitionSet.excludeTarget(this.mStrippedTransitioningViews.get(size2), true);
            }
        }
        transitionSet.addTransition(transition);
        return (z || this.mTransitioningViews == null || this.mTransitioningViews.isEmpty()) ? transitionSet : new TransitionSet().addTransition(transitionSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Transition configureTransition(Transition transition, boolean z) {
        if (transition != null) {
            Transition clone = transition.clone();
            clone.setEpicenterCallback(this.mEpicenterCallback);
            transition = setTargets(clone, z);
        }
        noLayoutSuppressionForVisibilityTransitions(transition);
        return transition;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void removeExcludedViews(Transition transition, ArrayList<View> arrayList) {
        ArraySet arraySet = new ArraySet();
        findIncludedViews(transition, arrayList, arraySet);
        arrayList.clear();
        arrayList.addAll(arraySet);
    }

    private static void findIncludedViews(Transition transition, ArrayList<View> arrayList, ArraySet<View> arraySet) {
        int i = 0;
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = arrayList.get(i2);
                if (transition.isValidTarget(view)) {
                    arrayList2.add(view);
                }
            }
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                findIncludedViews(transitionSet.getTransitionAt(i), arrayList2, arraySet);
                i++;
            }
            return;
        }
        int size2 = arrayList.size();
        while (i < size2) {
            View view2 = arrayList.get(i);
            if (transition.isValidTarget(view2)) {
                arraySet.add(view2);
            }
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static Transition mergeTransitions(Transition transition, Transition transition2) {
        if (transition == null) {
            return transition2;
        }
        if (transition2 == null) {
            return transition;
        }
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(transition);
        transitionSet.addTransition(transition2);
        return transitionSet;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ArrayMap<String, View> mapSharedElements(ArrayList<String> arrayList, ArrayList<View> arrayList2) {
        ArrayMap<String, View> arrayMap = new ArrayMap<>();
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                arrayMap.put(arrayList.get(i), arrayList2.get(i));
            }
        } else {
            ViewGroup decor = getDecor();
            if (decor != null) {
                decor.findNamedViews(arrayMap);
            }
        }
        return arrayMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setResultReceiver(ResultReceiver resultReceiver) {
        this.mResultReceiver = resultReceiver;
    }

    private void setSharedElementState(View view, String str, Bundle bundle, Matrix matrix, RectF rectF, int[] iArr) {
        float f;
        float f2;
        float f3;
        float f4;
        int i;
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return;
        }
        if ((view instanceof ImageView) && (i = bundle2.getInt(KEY_SCALE_TYPE, -1)) >= 0) {
            ImageView imageView = (ImageView) view;
            ImageView.ScaleType scaleType = SCALE_TYPE_VALUES[i];
            imageView.setScaleType(scaleType);
            if (scaleType == ImageView.ScaleType.MATRIX) {
                matrix.setValues(bundle2.getFloatArray(KEY_IMAGE_MATRIX));
                imageView.setImageMatrix(matrix);
            }
        }
        view.setTranslationZ(bundle2.getFloat(KEY_TRANSLATION_Z));
        view.setElevation(bundle2.getFloat(KEY_ELEVATION));
        float f5 = bundle2.getFloat(KEY_SCREEN_LEFT);
        float f6 = bundle2.getFloat(KEY_SCREEN_TOP);
        float f7 = bundle2.getFloat(KEY_SCREEN_RIGHT);
        float f8 = bundle2.getFloat(KEY_SCREEN_BOTTOM);
        if (iArr != null) {
            f2 = f6 - iArr[1];
            f3 = f7 - iArr[0];
            f4 = f8 - iArr[1];
            f = f5 - iArr[0];
        } else {
            getSharedElementParentMatrix(view, matrix);
            rectF.set(f5, f6, f7, f8);
            matrix.mapRect(rectF);
            float f9 = rectF.left;
            float f10 = rectF.top;
            view.getInverseMatrix().mapRect(rectF);
            float width = rectF.width();
            float height = rectF.height();
            view.setLeft(0);
            view.setTop(0);
            view.setRight(Math.round(width));
            view.setBottom(Math.round(height));
            rectF.set(0.0f, 0.0f, width, height);
            view.getMatrix().mapRect(rectF);
            f = f9 - rectF.left;
            f2 = f10 - rectF.top;
            f3 = f + width;
            f4 = f2 + height;
        }
        int round = Math.round(f);
        int round2 = Math.round(f2);
        int round3 = Math.round(f3) - round;
        int round4 = Math.round(f4) - round2;
        view.measure(View.MeasureSpec.makeMeasureSpec(round3, 1073741824), View.MeasureSpec.makeMeasureSpec(round4, 1073741824));
        view.layout(round, round2, round3 + round, round4 + round2);
    }

    private void setSharedElementMatrices() {
        int size = this.mSharedElements.size();
        if (size > 0) {
            this.mSharedElementParentMatrices = new ArrayList<>(size);
        }
        for (int i = 0; i < size; i++) {
            ViewGroup viewGroup = (ViewGroup) this.mSharedElements.get(i).getParent();
            Matrix matrix = new Matrix();
            if (viewGroup != null) {
                viewGroup.transformMatrixToLocal(matrix);
                matrix.postTranslate(viewGroup.getScrollX(), viewGroup.getScrollY());
            }
            this.mSharedElementParentMatrices.add(matrix);
        }
    }

    private void getSharedElementParentMatrix(View view, Matrix matrix) {
        int indexOf = this.mSharedElementParentMatrices == null ? -1 : this.mSharedElements.indexOf(view);
        if (indexOf < 0) {
            matrix.reset();
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).transformMatrixToLocal(matrix);
                matrix.postTranslate(r1.getScrollX(), r1.getScrollY());
                return;
            }
            return;
        }
        matrix.set(this.mSharedElementParentMatrices.get(indexOf));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ArrayList<SharedElementOriginalState> setSharedElementState(Bundle bundle, ArrayList<View> arrayList) {
        ArrayList<SharedElementOriginalState> arrayList2 = new ArrayList<>();
        if (bundle != null) {
            Matrix matrix = new Matrix();
            RectF rectF = new RectF();
            int size = this.mSharedElements.size();
            for (int i = 0; i < size; i++) {
                View view = this.mSharedElements.get(i);
                String str = this.mSharedElementNames.get(i);
                arrayList2.add(getOldSharedElementState(view, str, bundle));
                setSharedElementState(view, str, bundle, matrix, rectF, null);
            }
        }
        if (this.mListener != null) {
            this.mListener.onSharedElementStart(this.mSharedElementNames, this.mSharedElements, arrayList);
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void notifySharedElementEnd(ArrayList<View> arrayList) {
        if (this.mListener != null) {
            this.mListener.onSharedElementEnd(this.mSharedElementNames, this.mSharedElements, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void scheduleSetSharedElementEnd(final ArrayList<View> arrayList) {
        ViewGroup decor = getDecor();
        if (decor != null) {
            OneShotPreDrawListener.add(decor, new Runnable() { // from class: android.app.-$$Lambda$ActivityTransitionCoordinator$fkaPvc8GCghP2GMwEgS_J5m_T_4
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityTransitionCoordinator.this.notifySharedElementEnd(arrayList);
                }
            });
        }
    }

    private static SharedElementOriginalState getOldSharedElementState(View view, String str, Bundle bundle) {
        Bundle bundle2;
        SharedElementOriginalState sharedElementOriginalState = new SharedElementOriginalState();
        sharedElementOriginalState.mLeft = view.getLeft();
        sharedElementOriginalState.mTop = view.getTop();
        sharedElementOriginalState.mRight = view.getRight();
        sharedElementOriginalState.mBottom = view.getBottom();
        sharedElementOriginalState.mMeasuredWidth = view.getMeasuredWidth();
        sharedElementOriginalState.mMeasuredHeight = view.getMeasuredHeight();
        sharedElementOriginalState.mTranslationZ = view.getTranslationZ();
        sharedElementOriginalState.mElevation = view.getElevation();
        if (!(view instanceof ImageView) || (bundle2 = bundle.getBundle(str)) == null || bundle2.getInt(KEY_SCALE_TYPE, -1) < 0) {
            return sharedElementOriginalState;
        }
        ImageView imageView = (ImageView) view;
        sharedElementOriginalState.mScaleType = imageView.getScaleType();
        if (sharedElementOriginalState.mScaleType == ImageView.ScaleType.MATRIX) {
            sharedElementOriginalState.mMatrix = new Matrix(imageView.getImageMatrix());
        }
        return sharedElementOriginalState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ArrayList<View> createSnapshots(Bundle bundle, Collection<String> collection) {
        int size = collection.size();
        ArrayList<View> arrayList = new ArrayList<>(size);
        if (size == 0) {
            return arrayList;
        }
        Context context = getWindow().getContext();
        int[] iArr = new int[2];
        ViewGroup decor = getDecor();
        if (decor != null) {
            decor.getLocationOnScreen(iArr);
        }
        Matrix matrix = new Matrix();
        for (String str : collection) {
            Bundle bundle2 = bundle.getBundle(str);
            View view = null;
            if (bundle2 != null) {
                Parcelable parcelable = bundle2.getParcelable(KEY_SNAPSHOT);
                View onCreateSnapshotView = (parcelable == null || this.mListener == null) ? null : this.mListener.onCreateSnapshotView(context, parcelable);
                if (onCreateSnapshotView != null) {
                    setSharedElementState(onCreateSnapshotView, str, bundle, matrix, null, iArr);
                }
                view = onCreateSnapshotView;
            }
            arrayList.add(view);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void setOriginalSharedElementState(ArrayList<View> arrayList, ArrayList<SharedElementOriginalState> arrayList2) {
        for (int i = 0; i < arrayList2.size(); i++) {
            View view = arrayList.get(i);
            SharedElementOriginalState sharedElementOriginalState = arrayList2.get(i);
            if ((view instanceof ImageView) && sharedElementOriginalState.mScaleType != null) {
                ImageView imageView = (ImageView) view;
                imageView.setScaleType(sharedElementOriginalState.mScaleType);
                if (sharedElementOriginalState.mScaleType == ImageView.ScaleType.MATRIX) {
                    imageView.setImageMatrix(sharedElementOriginalState.mMatrix);
                }
            }
            view.setElevation(sharedElementOriginalState.mElevation);
            view.setTranslationZ(sharedElementOriginalState.mTranslationZ);
            view.measure(View.MeasureSpec.makeMeasureSpec(sharedElementOriginalState.mMeasuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(sharedElementOriginalState.mMeasuredHeight, 1073741824));
            view.layout(sharedElementOriginalState.mLeft, sharedElementOriginalState.mTop, sharedElementOriginalState.mRight, sharedElementOriginalState.mBottom);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bundle captureSharedElementState() {
        Bundle bundle = new Bundle();
        RectF rectF = new RectF();
        Matrix matrix = new Matrix();
        for (int i = 0; i < this.mSharedElements.size(); i++) {
            captureSharedElementState(this.mSharedElements.get(i), this.mSharedElementNames.get(i), bundle, matrix, rectF);
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clearState() {
        this.mWindow = null;
        this.mSharedElements.clear();
        this.mTransitioningViews = null;
        this.mStrippedTransitioningViews = null;
        this.mOriginalAlphas.clear();
        this.mResultReceiver = null;
        this.mPendingTransition = null;
        this.mListener = null;
        this.mSharedElementParentMatrices = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getFadeDuration() {
        return getWindow().getTransitionBackgroundFadeDuration();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void hideViews(ArrayList<View> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            View view = arrayList.get(i);
            if (!this.mOriginalAlphas.containsKey(view)) {
                this.mOriginalAlphas.put(view, Float.valueOf(view.getAlpha()));
            }
            view.setAlpha(0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showViews(ArrayList<View> arrayList, boolean z) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            showView(arrayList.get(i), z);
        }
    }

    private void showView(View view, boolean z) {
        Float remove = this.mOriginalAlphas.remove(view);
        if (remove != null) {
            view.setAlpha(remove.floatValue());
        }
        if (z) {
            view.setTransitionAlpha(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void captureSharedElementState(View view, String str, Bundle bundle, Matrix matrix, RectF rectF) {
        Bundle bundle2 = new Bundle();
        matrix.reset();
        view.transformMatrixToGlobal(matrix);
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        bundle2.putFloat(KEY_SCREEN_LEFT, rectF.left);
        bundle2.putFloat(KEY_SCREEN_RIGHT, rectF.right);
        bundle2.putFloat(KEY_SCREEN_TOP, rectF.top);
        bundle2.putFloat(KEY_SCREEN_BOTTOM, rectF.bottom);
        bundle2.putFloat(KEY_TRANSLATION_Z, view.getTranslationZ());
        bundle2.putFloat(KEY_ELEVATION, view.getElevation());
        Parcelable onCaptureSharedElementSnapshot = this.mListener != null ? this.mListener.onCaptureSharedElementSnapshot(view, matrix, rectF) : null;
        if (onCaptureSharedElementSnapshot != null) {
            bundle2.putParcelable(KEY_SNAPSHOT, onCaptureSharedElementSnapshot);
        }
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            bundle2.putInt(KEY_SCALE_TYPE, scaleTypeToInt(imageView.getScaleType()));
            if (imageView.getScaleType() == ImageView.ScaleType.MATRIX) {
                float[] fArr = new float[9];
                imageView.getImageMatrix().getValues(fArr);
                bundle2.putFloatArray(KEY_IMAGE_MATRIX, fArr);
            }
        }
        bundle.putBundle(str, bundle2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startTransition(Runnable runnable) {
        if (this.mIsStartingTransition) {
            this.mPendingTransition = runnable;
        } else {
            this.mIsStartingTransition = true;
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void transitionStarted() {
        this.mIsStartingTransition = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean cancelPendingTransitions() {
        this.mPendingTransition = null;
        return this.mIsStartingTransition;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void moveSharedElementsToOverlay() {
        if (this.mWindow == null || !this.mWindow.getSharedElementsUseOverlay()) {
            return;
        }
        setSharedElementMatrices();
        int size = this.mSharedElements.size();
        ViewGroup decor = getDecor();
        if (decor != null) {
            boolean moveSharedElementWithParent = moveSharedElementWithParent();
            Matrix matrix = new Matrix();
            for (int i = 0; i < size; i++) {
                View view = this.mSharedElements.get(i);
                if (view.isAttachedToWindow()) {
                    matrix.reset();
                    this.mSharedElementParentMatrices.get(i).invert(matrix);
                    GhostView.addGhost(view, decor, matrix);
                    ViewGroup viewGroup = (ViewGroup) view.getParent();
                    if (moveSharedElementWithParent && !isInTransitionGroup(viewGroup, decor)) {
                        GhostViewListeners ghostViewListeners = new GhostViewListeners(view, viewGroup, decor);
                        viewGroup.getViewTreeObserver().addOnPreDrawListener(ghostViewListeners);
                        viewGroup.addOnAttachStateChangeListener(ghostViewListeners);
                        this.mGhostViewListeners.add(ghostViewListeners);
                    }
                }
            }
        }
    }

    public static boolean isInTransitionGroup(ViewParent viewParent, ViewGroup viewGroup) {
        if (viewParent == viewGroup || !(viewParent instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup2 = (ViewGroup) viewParent;
        if (viewGroup2.isTransitionGroup()) {
            return true;
        }
        return isInTransitionGroup(viewGroup2.getParent(), viewGroup);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void moveSharedElementsFromOverlay() {
        ViewGroup decor;
        int size = this.mGhostViewListeners.size();
        for (int i = 0; i < size; i++) {
            this.mGhostViewListeners.get(i).removeListener();
        }
        this.mGhostViewListeners.clear();
        if (this.mWindow == null || !this.mWindow.getSharedElementsUseOverlay() || (decor = getDecor()) == null) {
            return;
        }
        decor.getOverlay();
        int size2 = this.mSharedElements.size();
        for (int i2 = 0; i2 < size2; i2++) {
            GhostView.removeGhost(this.mSharedElements.get(i2));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setGhostVisibility(int i) {
        int size = this.mSharedElements.size();
        for (int i2 = 0; i2 < size; i2++) {
            GhostView ghost = GhostView.getGhost(this.mSharedElements.get(i2));
            if (ghost != null) {
                ghost.setVisibility(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void scheduleGhostVisibilityChange(final int i) {
        ViewGroup decor = getDecor();
        if (decor != null) {
            OneShotPreDrawListener.add(decor, new Runnable() { // from class: android.app.-$$Lambda$ActivityTransitionCoordinator$_HMo0E-15AzCK9fwQ8WHzdz8ZIw
                @Override // java.lang.Runnable
                public final void run() {
                    ActivityTransitionCoordinator.this.setGhostVisibility(i);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isViewsTransitionComplete() {
        return this.mViewsTransitionComplete;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void viewsTransitionComplete() {
        this.mViewsTransitionComplete = true;
        startInputWhenTransitionsComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void backgroundAnimatorComplete() {
        this.mBackgroundAnimatorComplete = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void sharedElementTransitionComplete() {
        this.mSharedElementTransitionComplete = true;
        startInputWhenTransitionsComplete();
    }

    private void startInputWhenTransitionsComplete() {
        ViewRootImpl viewRootImpl;
        if (this.mViewsTransitionComplete && this.mSharedElementTransitionComplete) {
            ViewGroup decor = getDecor();
            if (decor != null && (viewRootImpl = decor.getViewRootImpl()) != null) {
                viewRootImpl.setPausedForTransition(false);
            }
            onTransitionsComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void pauseInput() {
        ViewGroup decor = getDecor();
        ViewRootImpl viewRootImpl = decor == null ? null : decor.getViewRootImpl();
        if (viewRootImpl != null) {
            viewRootImpl.setPausedForTransition(true);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    protected class ContinueTransitionListener extends TransitionListenerAdapter {
        /* JADX INFO: Access modifiers changed from: protected */
        public ContinueTransitionListener() {
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            ActivityTransitionCoordinator.this.mIsStartingTransition = false;
            Runnable runnable = ActivityTransitionCoordinator.this.mPendingTransition;
            ActivityTransitionCoordinator.this.mPendingTransition = null;
            if (runnable != null) {
                ActivityTransitionCoordinator.this.startTransition(runnable);
            }
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            transition.removeListener(this);
        }
    }

    private static int scaleTypeToInt(ImageView.ScaleType scaleType) {
        for (int i = 0; i < SCALE_TYPE_VALUES.length; i++) {
            if (scaleType == SCALE_TYPE_VALUES[i]) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTransitioningViewsVisiblity(int i, boolean z) {
        int size = this.mTransitioningViews == null ? 0 : this.mTransitioningViews.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.mTransitioningViews.get(i2);
            if (z) {
                view.setVisibility(i);
            } else {
                view.setTransitionVisibility(i);
            }
        }
    }

    private static void noLayoutSuppressionForVisibilityTransitions(Transition transition) {
        if (transition instanceof Visibility) {
            ((Visibility) transition).setSuppressLayout(false);
            return;
        }
        if (transition instanceof TransitionSet) {
            TransitionSet transitionSet = (TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            for (int i = 0; i < transitionCount; i++) {
                noLayoutSuppressionForVisibilityTransitions(transitionSet.getTransitionAt(i));
            }
        }
    }

    public boolean isTransitionRunning() {
        return (this.mViewsTransitionComplete && this.mSharedElementTransitionComplete && this.mBackgroundAnimatorComplete) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class FixedEpicenterCallback extends Transition.EpicenterCallback {
        private Rect mEpicenter;

        private FixedEpicenterCallback() {
        }

        public void setEpicenter(Rect rect) {
            this.mEpicenter = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public Rect onGetEpicenter(Transition transition) {
            return this.mEpicenter;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class GhostViewListeners implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
        private ViewGroup mDecor;
        private Matrix mMatrix = new Matrix();
        private View mParent;
        private View mView;
        private ViewTreeObserver mViewTreeObserver;

        public GhostViewListeners(View view, View view2, ViewGroup viewGroup) {
            this.mView = view;
            this.mParent = view2;
            this.mDecor = viewGroup;
            this.mViewTreeObserver = view2.getViewTreeObserver();
        }

        public View getView() {
            return this.mView;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            GhostView ghost = GhostView.getGhost(this.mView);
            if (ghost == null || !this.mView.isAttachedToWindow()) {
                removeListener();
                return true;
            }
            GhostView.calculateMatrix(this.mView, this.mDecor, this.mMatrix);
            ghost.setMatrix(this.mMatrix);
            return true;
        }

        public void removeListener() {
            if (this.mViewTreeObserver.isAlive()) {
                this.mViewTreeObserver.removeOnPreDrawListener(this);
            } else {
                this.mParent.getViewTreeObserver().removeOnPreDrawListener(this);
            }
            this.mParent.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.mViewTreeObserver = view.getViewTreeObserver();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            removeListener();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SharedElementOriginalState {
        int mBottom;
        float mElevation;
        int mLeft;
        Matrix mMatrix;
        int mMeasuredHeight;
        int mMeasuredWidth;
        int mRight;
        ImageView.ScaleType mScaleType;
        int mTop;
        float mTranslationZ;

        SharedElementOriginalState() {
        }
    }
}
