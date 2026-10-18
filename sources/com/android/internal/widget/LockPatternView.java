package com.android.internal.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.CanvasProperty;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.IntArray;
import android.util.SparseArray;
import android.view.DisplayListCanvas;
import android.view.MotionEvent;
import android.view.RenderNodeAnimator;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.android.internal.R;
import com.android.internal.os.PowerProfile;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class LockPatternView extends View {
    private static final int ASPECT_LOCK_HEIGHT = 2;
    private static final int ASPECT_LOCK_WIDTH = 1;
    private static final int ASPECT_SQUARE = 0;
    public static final boolean DEBUG_A11Y = false;
    private static final float DRAG_THRESHHOLD = 0.0f;
    private static final int MILLIS_PER_CIRCLE_ANIMATING = 700;
    private static final boolean PROFILE_DRAWING = false;
    private static final String TAG = "LockPatternView";
    public static final int VIRTUAL_BASE_VIEW_ID = 1;
    private long mAnimatingPeriodStart;
    private int mAspect;
    private AudioManager mAudioManager;
    private final CellState[][] mCellStates;
    private final Path mCurrentPath;
    private final int mDotSize;
    private final int mDotSizeActivated;
    private boolean mDrawingProfilingStarted;
    private boolean mEnableHapticFeedback;
    private int mErrorColor;
    private PatternExploreByTouchHelper mExploreByTouchHelper;
    private boolean mFadePattern;
    private final Interpolator mFastOutSlowInInterpolator;
    private float mHitFactor;
    private float mInProgressX;
    private float mInProgressY;
    private boolean mInStealthMode;
    private boolean mInputEnabled;
    private final Rect mInvalidate;
    private long[] mLineFadeStart;
    private final Interpolator mLinearOutSlowInInterpolator;
    private Drawable mNotSelectedDrawable;
    private OnPatternListener mOnPatternListener;
    private final Paint mPaint;
    private final Paint mPathPaint;
    private final int mPathWidth;
    private final ArrayList<Cell> mPattern;
    private DisplayMode mPatternDisplayMode;
    private final boolean[][] mPatternDrawLookup;
    private boolean mPatternInProgress;
    private int mRegularColor;
    private Drawable mSelectedDrawable;
    private float mSquareHeight;
    private float mSquareWidth;
    private int mSuccessColor;
    private final Rect mTmpInvalidateRect;
    private boolean mUseLockPatternDrawable;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class CellState {
        int col;
        boolean hwAnimating;
        CanvasProperty<Float> hwCenterX;
        CanvasProperty<Float> hwCenterY;
        CanvasProperty<Paint> hwPaint;
        CanvasProperty<Float> hwRadius;
        public ValueAnimator lineAnimator;
        float radius;
        int row;
        float translationY;
        float alpha = 1.0f;
        public float lineEndX = Float.MIN_VALUE;
        public float lineEndY = Float.MIN_VALUE;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public enum DisplayMode {
        Correct,
        Animate,
        Wrong
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnPatternListener {
        void onPatternCellAdded(List<Cell> list);

        void onPatternCleared();

        void onPatternDetected(List<Cell> list);

        void onPatternStart();
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class Cell {
        private static final Cell[][] sCells = createCells();
        final int column;
        final int row;

        private static Cell[][] createCells() {
            Cell[][] cellArr = (Cell[][]) Array.newInstance((Class<?>) Cell.class, 3, 3);
            for (int i = 0; i < 3; i++) {
                for (int i2 = 0; i2 < 3; i2++) {
                    cellArr[i][i2] = new Cell(i, i2);
                }
            }
            return cellArr;
        }

        private Cell(int i, int i2) {
            checkRange(i, i2);
            this.row = i;
            this.column = i2;
        }

        public int getRow() {
            return this.row;
        }

        public int getColumn() {
            return this.column;
        }

        public static Cell of(int i, int i2) {
            checkRange(i, i2);
            return sCells[i][i2];
        }

        private static void checkRange(int i, int i2) {
            if (i < 0 || i > 2) {
                throw new IllegalArgumentException("row must be in range 0-2");
            }
            if (i2 < 0 || i2 > 2) {
                throw new IllegalArgumentException("column must be in range 0-2");
            }
        }

        public String toString() {
            return "(row=" + this.row + ",clmn=" + this.column + ")";
        }
    }

    public LockPatternView(Context context) {
        this(context, null);
    }

    public LockPatternView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mDrawingProfilingStarted = false;
        this.mPaint = new Paint();
        this.mPathPaint = new Paint();
        this.mPattern = new ArrayList<>(9);
        this.mPatternDrawLookup = (boolean[][]) Array.newInstance((Class<?>) boolean.class, 3, 3);
        this.mInProgressX = -1.0f;
        this.mInProgressY = -1.0f;
        this.mLineFadeStart = new long[9];
        this.mPatternDisplayMode = DisplayMode.Correct;
        this.mInputEnabled = true;
        this.mInStealthMode = false;
        this.mEnableHapticFeedback = true;
        this.mPatternInProgress = false;
        this.mFadePattern = true;
        this.mHitFactor = 0.6f;
        this.mCurrentPath = new Path();
        this.mInvalidate = new Rect();
        this.mTmpInvalidateRect = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.LockPatternView, 17891430, 16975007);
        String string = obtainStyledAttributes.getString(0);
        if ("square".equals(string)) {
            this.mAspect = 0;
        } else if ("lock_width".equals(string)) {
            this.mAspect = 1;
        } else if ("lock_height".equals(string)) {
            this.mAspect = 2;
        } else {
            this.mAspect = 0;
        }
        setClickable(true);
        this.mPathPaint.setAntiAlias(true);
        this.mPathPaint.setDither(true);
        this.mRegularColor = obtainStyledAttributes.getColor(3, 0);
        this.mErrorColor = obtainStyledAttributes.getColor(1, 0);
        this.mSuccessColor = obtainStyledAttributes.getColor(4, 0);
        this.mPathPaint.setColor(obtainStyledAttributes.getColor(2, this.mRegularColor));
        this.mPathPaint.setStyle(Paint.Style.STROKE);
        this.mPathPaint.setStrokeJoin(Paint.Join.ROUND);
        this.mPathPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPathWidth = getResources().getDimensionPixelSize(17105179);
        this.mPathPaint.setStrokeWidth(this.mPathWidth);
        this.mDotSize = getResources().getDimensionPixelSize(17105180);
        this.mDotSizeActivated = getResources().getDimensionPixelSize(17105181);
        this.mUseLockPatternDrawable = getResources().getBoolean(17957110);
        if (this.mUseLockPatternDrawable) {
            this.mSelectedDrawable = getResources().getDrawable(17302936);
            this.mNotSelectedDrawable = getResources().getDrawable(17302934);
        }
        this.mPaint.setAntiAlias(true);
        this.mPaint.setDither(true);
        this.mCellStates = (CellState[][]) Array.newInstance((Class<?>) CellState.class, 3, 3);
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                this.mCellStates[i][i2] = new CellState();
                this.mCellStates[i][i2].radius = this.mDotSize / 2;
                this.mCellStates[i][i2].row = i;
                this.mCellStates[i][i2].col = i2;
            }
        }
        this.mFastOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, 17563661);
        this.mLinearOutSlowInInterpolator = AnimationUtils.loadInterpolator(context, 17563662);
        this.mExploreByTouchHelper = new PatternExploreByTouchHelper(this);
        setAccessibilityDelegate(this.mExploreByTouchHelper);
        this.mAudioManager = (AudioManager) this.mContext.getSystemService(PowerProfile.POWER_AUDIO);
        obtainStyledAttributes.recycle();
    }

    public CellState[][] getCellStates() {
        return this.mCellStates;
    }

    public boolean isInStealthMode() {
        return this.mInStealthMode;
    }

    public boolean isTactileFeedbackEnabled() {
        return this.mEnableHapticFeedback;
    }

    public void setInStealthMode(boolean z) {
        this.mInStealthMode = z;
    }

    public void setFadePattern(boolean z) {
        this.mFadePattern = z;
    }

    public void setTactileFeedbackEnabled(boolean z) {
        this.mEnableHapticFeedback = z;
    }

    public void setOnPatternListener(OnPatternListener onPatternListener) {
        this.mOnPatternListener = onPatternListener;
    }

    public void setPattern(DisplayMode displayMode, List<Cell> list) {
        this.mPattern.clear();
        this.mPattern.addAll(list);
        clearPatternDrawLookup();
        for (Cell cell : list) {
            this.mPatternDrawLookup[cell.getRow()][cell.getColumn()] = true;
        }
        setDisplayMode(displayMode);
    }

    public void setDisplayMode(DisplayMode displayMode) {
        this.mPatternDisplayMode = displayMode;
        if (displayMode == DisplayMode.Animate) {
            if (this.mPattern.size() == 0) {
                throw new IllegalStateException("you must have a pattern to animate if you want to set the display mode to animate");
            }
            this.mAnimatingPeriodStart = SystemClock.elapsedRealtime();
            Cell cell = this.mPattern.get(0);
            this.mInProgressX = getCenterXForColumn(cell.getColumn());
            this.mInProgressY = getCenterYForRow(cell.getRow());
            clearPatternDrawLookup();
        }
        invalidate();
    }

    public void startCellStateAnimation(CellState cellState, float f, float f2, float f3, float f4, float f5, float f6, long j, long j2, Interpolator interpolator, Runnable runnable) {
        if (isHardwareAccelerated()) {
            startCellStateAnimationHw(cellState, f, f2, f3, f4, f5, f6, j, j2, interpolator, runnable);
        } else {
            startCellStateAnimationSw(cellState, f, f2, f3, f4, f5, f6, j, j2, interpolator, runnable);
        }
    }

    private void startCellStateAnimationSw(final CellState cellState, final float f, final float f2, final float f3, final float f4, final float f5, final float f6, long j, long j2, Interpolator interpolator, final Runnable runnable) {
        cellState.alpha = f;
        cellState.translationY = f3;
        cellState.radius = (this.mDotSize / 2) * f5;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(j2);
        ofFloat.setStartDelay(j);
        ofFloat.setInterpolator(interpolator);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.internal.widget.LockPatternView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f7 = 1.0f - floatValue;
                cellState.alpha = (f * f7) + (f2 * floatValue);
                cellState.translationY = (f3 * f7) + (f4 * floatValue);
                cellState.radius = (LockPatternView.this.mDotSize / 2) * ((f7 * f5) + (floatValue * f6));
                LockPatternView.this.invalidate();
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.widget.LockPatternView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
        ofFloat.start();
    }

    private void startCellStateAnimationHw(final CellState cellState, float f, float f2, float f3, float f4, float f5, float f6, long j, long j2, Interpolator interpolator, final Runnable runnable) {
        cellState.alpha = f2;
        cellState.translationY = f4;
        cellState.radius = (this.mDotSize / 2) * f6;
        cellState.hwAnimating = true;
        cellState.hwCenterY = CanvasProperty.createFloat(getCenterYForRow(cellState.row) + f3);
        cellState.hwCenterX = CanvasProperty.createFloat(getCenterXForColumn(cellState.col));
        cellState.hwRadius = CanvasProperty.createFloat((this.mDotSize / 2) * f5);
        this.mPaint.setColor(getCurrentColor(false));
        this.mPaint.setAlpha((int) (255.0f * f));
        cellState.hwPaint = CanvasProperty.createPaint(new Paint(this.mPaint));
        startRtFloatAnimation(cellState.hwCenterY, getCenterYForRow(cellState.row) + f4, j, j2, interpolator);
        startRtFloatAnimation(cellState.hwRadius, (this.mDotSize / 2) * f6, j, j2, interpolator);
        startRtAlphaAnimation(cellState, f2, j, j2, interpolator, new AnimatorListenerAdapter() { // from class: com.android.internal.widget.LockPatternView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                cellState.hwAnimating = false;
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
        invalidate();
    }

    private void startRtAlphaAnimation(CellState cellState, float f, long j, long j2, Interpolator interpolator, Animator.AnimatorListener animatorListener) {
        RenderNodeAnimator renderNodeAnimator = new RenderNodeAnimator(cellState.hwPaint, 1, (int) (f * 255.0f));
        renderNodeAnimator.setDuration(j2);
        renderNodeAnimator.setStartDelay(j);
        renderNodeAnimator.setInterpolator(interpolator);
        renderNodeAnimator.setTarget(this);
        renderNodeAnimator.addListener(animatorListener);
        renderNodeAnimator.start();
    }

    private void startRtFloatAnimation(CanvasProperty<Float> canvasProperty, float f, long j, long j2, Interpolator interpolator) {
        RenderNodeAnimator renderNodeAnimator = new RenderNodeAnimator(canvasProperty, f);
        renderNodeAnimator.setDuration(j2);
        renderNodeAnimator.setStartDelay(j);
        renderNodeAnimator.setInterpolator(interpolator);
        renderNodeAnimator.setTarget(this);
        renderNodeAnimator.start();
    }

    private void notifyCellAdded() {
        if (this.mOnPatternListener != null) {
            this.mOnPatternListener.onPatternCellAdded(this.mPattern);
        }
        this.mExploreByTouchHelper.invalidateRoot();
    }

    private void notifyPatternStarted() {
        sendAccessEvent(17040138);
        if (this.mOnPatternListener != null) {
            this.mOnPatternListener.onPatternStart();
        }
    }

    private void notifyPatternDetected() {
        sendAccessEvent(17040137);
        if (this.mOnPatternListener != null) {
            this.mOnPatternListener.onPatternDetected(this.mPattern);
        }
    }

    private void notifyPatternCleared() {
        sendAccessEvent(17040136);
        if (this.mOnPatternListener != null) {
            this.mOnPatternListener.onPatternCleared();
        }
    }

    public void clearPattern() {
        resetPattern();
    }

    @Override // android.view.View
    protected boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return this.mExploreByTouchHelper.dispatchHoverEvent(motionEvent) | super.dispatchHoverEvent(motionEvent);
    }

    private void resetPattern() {
        this.mPattern.clear();
        clearPatternDrawLookup();
        this.mPatternDisplayMode = DisplayMode.Correct;
        invalidate();
    }

    private void clearPatternDrawLookup() {
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                this.mPatternDrawLookup[i][i2] = false;
                this.mLineFadeStart[i + i2] = 0;
            }
        }
    }

    public void disableInput() {
        this.mInputEnabled = false;
    }

    public void enableInput() {
        this.mInputEnabled = true;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int i5 = (i - this.mPaddingLeft) - this.mPaddingRight;
        this.mSquareWidth = i5 / 3.0f;
        int i6 = (i2 - this.mPaddingTop) - this.mPaddingBottom;
        this.mSquareHeight = i6 / 3.0f;
        this.mExploreByTouchHelper.invalidateRoot();
        if (this.mUseLockPatternDrawable) {
            this.mNotSelectedDrawable.setBounds(this.mPaddingLeft, this.mPaddingTop, i5, i6);
            this.mSelectedDrawable.setBounds(this.mPaddingLeft, this.mPaddingTop, i5, i6);
        }
    }

    private int resolveMeasured(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        if (mode != Integer.MIN_VALUE) {
            return mode != 0 ? size : i2;
        }
        return Math.max(size, i2);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        int resolveMeasured = resolveMeasured(i, suggestedMinimumWidth);
        int resolveMeasured2 = resolveMeasured(i2, suggestedMinimumHeight);
        switch (this.mAspect) {
            case 0:
                resolveMeasured = Math.min(resolveMeasured, resolveMeasured2);
                resolveMeasured2 = resolveMeasured;
                break;
            case 1:
                resolveMeasured2 = Math.min(resolveMeasured, resolveMeasured2);
                break;
            case 2:
                resolveMeasured = Math.min(resolveMeasured, resolveMeasured2);
                break;
        }
        setMeasuredDimension(resolveMeasured, resolveMeasured2);
    }

    private Cell detectAndAddHit(float f, float f2) {
        Cell checkForNewHit = checkForNewHit(f, f2);
        Cell cell = null;
        if (checkForNewHit == null) {
            return null;
        }
        ArrayList<Cell> arrayList = this.mPattern;
        if (!arrayList.isEmpty()) {
            Cell cell2 = arrayList.get(arrayList.size() - 1);
            int i = checkForNewHit.row - cell2.row;
            int i2 = checkForNewHit.column - cell2.column;
            int i3 = cell2.row;
            int i4 = cell2.column;
            if (Math.abs(i) == 2 && Math.abs(i2) != 1) {
                i3 = cell2.row + (i > 0 ? 1 : -1);
            }
            if (Math.abs(i2) == 2 && Math.abs(i) != 1) {
                i4 = cell2.column + (i2 > 0 ? 1 : -1);
            }
            cell = Cell.of(i3, i4);
        }
        if (cell != null && !this.mPatternDrawLookup[cell.row][cell.column]) {
            addCellToPattern(cell);
        }
        addCellToPattern(checkForNewHit);
        if (this.mEnableHapticFeedback) {
            performHapticFeedback(1, 3);
        }
        return checkForNewHit;
    }

    private void addCellToPattern(Cell cell) {
        this.mPatternDrawLookup[cell.getRow()][cell.getColumn()] = true;
        this.mPattern.add(cell);
        if (!this.mInStealthMode) {
            startCellActivatedAnimation(cell);
        }
        notifyCellAdded();
    }

    private void startCellActivatedAnimation(Cell cell) {
        final CellState cellState = this.mCellStates[cell.row][cell.column];
        startRadiusAnimation(this.mDotSize / 2, this.mDotSizeActivated / 2, 96L, this.mLinearOutSlowInInterpolator, cellState, new Runnable() { // from class: com.android.internal.widget.LockPatternView.4
            @Override // java.lang.Runnable
            public void run() {
                LockPatternView.this.startRadiusAnimation(LockPatternView.this.mDotSizeActivated / 2, LockPatternView.this.mDotSize / 2, 192L, LockPatternView.this.mFastOutSlowInInterpolator, cellState, null);
            }
        });
        startLineEndAnimation(cellState, this.mInProgressX, this.mInProgressY, getCenterXForColumn(cell.column), getCenterYForRow(cell.row));
    }

    private void startLineEndAnimation(final CellState cellState, final float f, final float f2, final float f3, final float f4) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.internal.widget.LockPatternView.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                float f5 = 1.0f - floatValue;
                cellState.lineEndX = (f * f5) + (f3 * floatValue);
                cellState.lineEndY = (f5 * f2) + (floatValue * f4);
                LockPatternView.this.invalidate();
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.widget.LockPatternView.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                cellState.lineAnimator = null;
            }
        });
        ofFloat.setInterpolator(this.mFastOutSlowInInterpolator);
        ofFloat.setDuration(100L);
        ofFloat.start();
        cellState.lineAnimator = ofFloat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRadiusAnimation(float f, float f2, long j, Interpolator interpolator, final CellState cellState, final Runnable runnable) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.internal.widget.LockPatternView.7
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                cellState.radius = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                LockPatternView.this.invalidate();
            }
        });
        if (runnable != null) {
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.internal.widget.LockPatternView.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    runnable.run();
                }
            });
        }
        ofFloat.setInterpolator(interpolator);
        ofFloat.setDuration(j);
        ofFloat.start();
    }

    private Cell checkForNewHit(float f, float f2) {
        int columnHit;
        int rowHit = getRowHit(f2);
        if (rowHit >= 0 && (columnHit = getColumnHit(f)) >= 0 && !this.mPatternDrawLookup[rowHit][columnHit]) {
            return Cell.of(rowHit, columnHit);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRowHit(float f) {
        float f2 = this.mSquareHeight;
        float f3 = this.mHitFactor * f2;
        float f4 = this.mPaddingTop + ((f2 - f3) / 2.0f);
        for (int i = 0; i < 3; i++) {
            float f5 = (i * f2) + f4;
            if (f >= f5 && f <= f5 + f3) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColumnHit(float f) {
        float f2 = this.mSquareWidth;
        float f3 = this.mHitFactor * f2;
        float f4 = this.mPaddingLeft + ((f2 - f3) / 2.0f);
        for (int i = 0; i < 3; i++) {
            float f5 = (i * f2) + f4;
            if (f >= f5 && f <= f5 + f3) {
                return i;
            }
        }
        return -1;
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (AccessibilityManager.getInstance(this.mContext).isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action != 7) {
                switch (action) {
                    case 9:
                        motionEvent.setAction(0);
                        break;
                    case 10:
                        motionEvent.setAction(1);
                        break;
                }
            } else {
                motionEvent.setAction(2);
            }
            onTouchEvent(motionEvent);
            motionEvent.setAction(action);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mInputEnabled || !isEnabled()) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                handleActionDown(motionEvent);
                return true;
            case 1:
                handleActionUp();
                return true;
            case 2:
                handleActionMove(motionEvent);
                return true;
            case 3:
                if (this.mPatternInProgress) {
                    setPatternInProgress(false);
                    resetPattern();
                    notifyPatternCleared();
                }
                return true;
            default:
                return false;
        }
    }

    private void setPatternInProgress(boolean z) {
        this.mPatternInProgress = z;
        this.mExploreByTouchHelper.invalidateRoot();
    }

    private void handleActionMove(MotionEvent motionEvent) {
        float f = this.mPathWidth;
        int historySize = motionEvent.getHistorySize();
        this.mTmpInvalidateRect.setEmpty();
        int i = 0;
        boolean z = false;
        while (i < historySize + 1) {
            float historicalX = i < historySize ? motionEvent.getHistoricalX(i) : motionEvent.getX();
            float historicalY = i < historySize ? motionEvent.getHistoricalY(i) : motionEvent.getY();
            Cell detectAndAddHit = detectAndAddHit(historicalX, historicalY);
            int size = this.mPattern.size();
            if (detectAndAddHit != null && size == 1) {
                setPatternInProgress(true);
                notifyPatternStarted();
            }
            float abs = Math.abs(historicalX - this.mInProgressX);
            float abs2 = Math.abs(historicalY - this.mInProgressY);
            if (abs > 0.0f || abs2 > 0.0f) {
                z = true;
            }
            if (this.mPatternInProgress && size > 0) {
                Cell cell = this.mPattern.get(size - 1);
                float centerXForColumn = getCenterXForColumn(cell.column);
                float centerYForRow = getCenterYForRow(cell.row);
                float min = Math.min(centerXForColumn, historicalX) - f;
                float max = Math.max(centerXForColumn, historicalX) + f;
                float min2 = Math.min(centerYForRow, historicalY) - f;
                float max2 = Math.max(centerYForRow, historicalY) + f;
                if (detectAndAddHit != null) {
                    float f2 = this.mSquareWidth * 0.5f;
                    float f3 = this.mSquareHeight * 0.5f;
                    float centerXForColumn2 = getCenterXForColumn(detectAndAddHit.column);
                    float centerYForRow2 = getCenterYForRow(detectAndAddHit.row);
                    min = Math.min(centerXForColumn2 - f2, min);
                    max = Math.max(centerXForColumn2 + f2, max);
                    min2 = Math.min(centerYForRow2 - f3, min2);
                    max2 = Math.max(centerYForRow2 + f3, max2);
                }
                this.mTmpInvalidateRect.union(Math.round(min), Math.round(min2), Math.round(max), Math.round(max2));
            }
            i++;
        }
        this.mInProgressX = motionEvent.getX();
        this.mInProgressY = motionEvent.getY();
        if (z) {
            this.mInvalidate.union(this.mTmpInvalidateRect);
            invalidate(this.mInvalidate);
            this.mInvalidate.set(this.mTmpInvalidateRect);
        }
    }

    private void sendAccessEvent(int i) {
        announceForAccessibility(this.mContext.getString(i));
    }

    private void handleActionUp() {
        if (this.mPattern.isEmpty()) {
            return;
        }
        setPatternInProgress(false);
        cancelLineAnimations();
        notifyPatternDetected();
        if (this.mFadePattern) {
            clearPatternDrawLookup();
            this.mPatternDisplayMode = DisplayMode.Correct;
        }
        invalidate();
    }

    private void cancelLineAnimations() {
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                CellState cellState = this.mCellStates[i][i2];
                if (cellState.lineAnimator != null) {
                    cellState.lineAnimator.cancel();
                    cellState.lineEndX = Float.MIN_VALUE;
                    cellState.lineEndY = Float.MIN_VALUE;
                }
            }
        }
    }

    private void handleActionDown(MotionEvent motionEvent) {
        resetPattern();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        Cell detectAndAddHit = detectAndAddHit(x, y);
        if (detectAndAddHit != null) {
            setPatternInProgress(true);
            this.mPatternDisplayMode = DisplayMode.Correct;
            notifyPatternStarted();
        } else if (this.mPatternInProgress) {
            setPatternInProgress(false);
            notifyPatternCleared();
        }
        if (detectAndAddHit != null) {
            float centerXForColumn = getCenterXForColumn(detectAndAddHit.column);
            float centerYForRow = getCenterYForRow(detectAndAddHit.row);
            float f = this.mSquareWidth / 2.0f;
            float f2 = this.mSquareHeight / 2.0f;
            invalidate((int) (centerXForColumn - f), (int) (centerYForRow - f2), (int) (centerXForColumn + f), (int) (centerYForRow + f2));
        }
        this.mInProgressX = x;
        this.mInProgressY = y;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCenterXForColumn(int i) {
        return this.mPaddingLeft + (i * this.mSquareWidth) + (this.mSquareWidth / 2.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getCenterYForRow(int i) {
        return this.mPaddingTop + (i * this.mSquareHeight) + (this.mSquareHeight / 2.0f);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        long j;
        int i;
        float f;
        int i2;
        ArrayList<Cell> arrayList = this.mPattern;
        int size = arrayList.size();
        boolean[][] zArr = this.mPatternDrawLookup;
        if (this.mPatternDisplayMode == DisplayMode.Animate) {
            int elapsedRealtime = (((int) (SystemClock.elapsedRealtime() - this.mAnimatingPeriodStart)) % ((size + 1) * 700)) / 700;
            clearPatternDrawLookup();
            for (int i3 = 0; i3 < elapsedRealtime; i3++) {
                Cell cell = arrayList.get(i3);
                zArr[cell.getRow()][cell.getColumn()] = true;
            }
            if (elapsedRealtime > 0 && elapsedRealtime < size) {
                float f2 = (r1 % 700) / 700.0f;
                Cell cell2 = arrayList.get(elapsedRealtime - 1);
                float centerXForColumn = getCenterXForColumn(cell2.column);
                float centerYForRow = getCenterYForRow(cell2.row);
                Cell cell3 = arrayList.get(elapsedRealtime);
                float centerXForColumn2 = (getCenterXForColumn(cell3.column) - centerXForColumn) * f2;
                float centerYForRow2 = f2 * (getCenterYForRow(cell3.row) - centerYForRow);
                this.mInProgressX = centerXForColumn + centerXForColumn2;
                this.mInProgressY = centerYForRow + centerYForRow2;
            }
            invalidate();
        }
        Path path = this.mCurrentPath;
        path.rewind();
        int i4 = 0;
        while (true) {
            int i5 = 3;
            if (i4 >= 3) {
                break;
            }
            float centerYForRow3 = getCenterYForRow(i4);
            int i6 = 0;
            while (i6 < i5) {
                CellState cellState = this.mCellStates[i4][i6];
                float centerXForColumn3 = getCenterXForColumn(i6);
                float f3 = cellState.translationY;
                if (this.mUseLockPatternDrawable) {
                    i = i6;
                    f = centerYForRow3;
                    drawCellDrawable(canvas, i4, i6, cellState.radius, zArr[i4][i6]);
                } else {
                    i = i6;
                    f = centerYForRow3;
                    if (isHardwareAccelerated() && cellState.hwAnimating) {
                        ((DisplayListCanvas) canvas).drawCircle(cellState.hwCenterX, cellState.hwCenterY, cellState.hwRadius, cellState.hwPaint);
                    } else {
                        i2 = i5;
                        drawCircle(canvas, (int) centerXForColumn3, ((int) f) + f3, cellState.radius, zArr[i4][i], cellState.alpha);
                        i6 = i + 1;
                        centerYForRow3 = f;
                        i5 = i2;
                    }
                }
                i2 = i5;
                i6 = i + 1;
                centerYForRow3 = f;
                i5 = i2;
            }
            i4++;
        }
        if (!this.mInStealthMode) {
            this.mPathPaint.setColor(getCurrentColor(true));
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            float f4 = 0.0f;
            float f5 = 0.0f;
            int i7 = 0;
            boolean z = false;
            while (i7 < size) {
                Cell cell4 = arrayList.get(i7);
                if (!zArr[cell4.row][cell4.column]) {
                    break;
                }
                if (this.mLineFadeStart[i7] == 0) {
                    this.mLineFadeStart[i7] = SystemClock.elapsedRealtime();
                }
                float centerXForColumn4 = getCenterXForColumn(cell4.column);
                float centerYForRow4 = getCenterYForRow(cell4.row);
                if (i7 != 0) {
                    int min = (int) Math.min(((float) (elapsedRealtime2 - this.mLineFadeStart[i7])) / 2.0f, 255.0f);
                    j = elapsedRealtime2;
                    CellState cellState2 = this.mCellStates[cell4.row][cell4.column];
                    path.rewind();
                    path.moveTo(f4, f5);
                    if (cellState2.lineEndX != Float.MIN_VALUE && cellState2.lineEndY != Float.MIN_VALUE) {
                        path.lineTo(cellState2.lineEndX, cellState2.lineEndY);
                        if (this.mFadePattern) {
                            this.mPathPaint.setAlpha(255 - min);
                        } else {
                            this.mPathPaint.setAlpha(255);
                        }
                    } else {
                        path.lineTo(centerXForColumn4, centerYForRow4);
                        if (this.mFadePattern) {
                            this.mPathPaint.setAlpha(255 - min);
                        } else {
                            this.mPathPaint.setAlpha(255);
                        }
                    }
                    canvas.drawPath(path, this.mPathPaint);
                } else {
                    j = elapsedRealtime2;
                }
                i7++;
                f4 = centerXForColumn4;
                f5 = centerYForRow4;
                elapsedRealtime2 = j;
                z = true;
            }
            if ((this.mPatternInProgress || this.mPatternDisplayMode == DisplayMode.Animate) && z) {
                path.rewind();
                path.moveTo(f4, f5);
                path.lineTo(this.mInProgressX, this.mInProgressY);
                this.mPathPaint.setAlpha((int) (calculateLastSegmentAlpha(this.mInProgressX, this.mInProgressY, f4, f5) * 255.0f));
                canvas.drawPath(path, this.mPathPaint);
            }
        }
    }

    private float calculateLastSegmentAlpha(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return Math.min(1.0f, Math.max(0.0f, ((((float) Math.sqrt((f5 * f5) + (f6 * f6))) / this.mSquareWidth) - 0.3f) * 4.0f));
    }

    private int getCurrentColor(boolean z) {
        if (!z || this.mInStealthMode || this.mPatternInProgress) {
            return this.mRegularColor;
        }
        if (this.mPatternDisplayMode == DisplayMode.Wrong) {
            return this.mErrorColor;
        }
        if (this.mPatternDisplayMode == DisplayMode.Correct || this.mPatternDisplayMode == DisplayMode.Animate) {
            return this.mSuccessColor;
        }
        throw new IllegalStateException("unknown display mode " + this.mPatternDisplayMode);
    }

    private void drawCircle(Canvas canvas, float f, float f2, float f3, boolean z, float f4) {
        this.mPaint.setColor(getCurrentColor(z));
        this.mPaint.setAlpha((int) (f4 * 255.0f));
        canvas.drawCircle(f, f2, f3, this.mPaint);
    }

    private void drawCellDrawable(Canvas canvas, int i, int i2, float f, boolean z) {
        Rect rect = new Rect((int) (this.mPaddingLeft + (i2 * this.mSquareWidth)), (int) (this.mPaddingTop + (i * this.mSquareHeight)), (int) (this.mPaddingLeft + ((i2 + 1) * this.mSquareWidth)), (int) (this.mPaddingTop + ((i + 1) * this.mSquareHeight)));
        float f2 = f / (this.mDotSize / 2);
        canvas.save();
        canvas.clipRect(rect);
        canvas.scale(f2, f2, rect.centerX(), rect.centerY());
        if (!z || f2 > 1.0f) {
            this.mNotSelectedDrawable.draw(canvas);
        } else {
            this.mSelectedDrawable.draw(canvas);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), LockPatternUtils.patternToString(this.mPattern), this.mPatternDisplayMode.ordinal(), this.mInputEnabled, this.mInStealthMode, this.mEnableHapticFeedback);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setPattern(DisplayMode.Correct, LockPatternUtils.stringToPattern(savedState.getSerializedPattern()));
        this.mPatternDisplayMode = DisplayMode.values()[savedState.getDisplayMode()];
        this.mInputEnabled = savedState.isInputEnabled();
        this.mInStealthMode = savedState.isInStealthMode();
        this.mEnableHapticFeedback = savedState.isTactileFeedbackEnabled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.internal.widget.LockPatternView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private final int mDisplayMode;
        private final boolean mInStealthMode;
        private final boolean mInputEnabled;
        private final String mSerializedPattern;
        private final boolean mTactileFeedbackEnabled;

        private SavedState(Parcelable parcelable, String str, int i, boolean z, boolean z2, boolean z3) {
            super(parcelable);
            this.mSerializedPattern = str;
            this.mDisplayMode = i;
            this.mInputEnabled = z;
            this.mInStealthMode = z2;
            this.mTactileFeedbackEnabled = z3;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mSerializedPattern = parcel.readString();
            this.mDisplayMode = parcel.readInt();
            this.mInputEnabled = ((Boolean) parcel.readValue(null)).booleanValue();
            this.mInStealthMode = ((Boolean) parcel.readValue(null)).booleanValue();
            this.mTactileFeedbackEnabled = ((Boolean) parcel.readValue(null)).booleanValue();
        }

        public String getSerializedPattern() {
            return this.mSerializedPattern;
        }

        public int getDisplayMode() {
            return this.mDisplayMode;
        }

        public boolean isInputEnabled() {
            return this.mInputEnabled;
        }

        public boolean isInStealthMode() {
            return this.mInStealthMode;
        }

        public boolean isTactileFeedbackEnabled() {
            return this.mTactileFeedbackEnabled;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.mSerializedPattern);
            parcel.writeInt(this.mDisplayMode);
            parcel.writeValue(Boolean.valueOf(this.mInputEnabled));
            parcel.writeValue(Boolean.valueOf(this.mInStealthMode));
            parcel.writeValue(Boolean.valueOf(this.mTactileFeedbackEnabled));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public final class PatternExploreByTouchHelper extends ExploreByTouchHelper {
        private final SparseArray<VirtualViewContainer> mItems;
        private Rect mTempRect;

        /* loaded from: /home/user/work/dex/classes3.dex */
        class VirtualViewContainer {
            CharSequence description;

            public VirtualViewContainer(CharSequence charSequence) {
                this.description = charSequence;
            }
        }

        public PatternExploreByTouchHelper(View view) {
            super(view);
            this.mTempRect = new Rect();
            this.mItems = new SparseArray<>();
            for (int i = 1; i < 10; i++) {
                this.mItems.put(i, new VirtualViewContainer(getTextForVirtualView(i)));
            }
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        protected int getVirtualViewAt(float f, float f2) {
            return getVirtualViewIdForHit(f, f2);
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        protected void getVisibleVirtualViews(IntArray intArray) {
            if (LockPatternView.this.mPatternInProgress) {
                for (int i = 1; i < 10; i++) {
                    intArray.add(i);
                }
            }
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        protected void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
            VirtualViewContainer virtualViewContainer = this.mItems.get(i);
            if (virtualViewContainer != null) {
                accessibilityEvent.getText().add(virtualViewContainer.description);
            }
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            if (LockPatternView.this.mPatternInProgress) {
                return;
            }
            accessibilityEvent.setContentDescription(LockPatternView.this.getContext().getText(17040133));
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfo accessibilityNodeInfo) {
            accessibilityNodeInfo.setText(getTextForVirtualView(i));
            accessibilityNodeInfo.setContentDescription(getTextForVirtualView(i));
            if (LockPatternView.this.mPatternInProgress) {
                accessibilityNodeInfo.setFocusable(true);
                if (isClickable(i)) {
                    accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
                    accessibilityNodeInfo.setClickable(isClickable(i));
                }
            }
            accessibilityNodeInfo.setBoundsInParent(getBoundsForVirtualView(i));
        }

        private boolean isClickable(int i) {
            if (i == Integer.MIN_VALUE) {
                return false;
            }
            int i2 = i - 1;
            return !LockPatternView.this.mPatternDrawLookup[i2 / 3][i2 % 3];
        }

        @Override // com.android.internal.widget.ExploreByTouchHelper
        protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            return onItemClicked(i);
        }

        boolean onItemClicked(int i) {
            invalidateVirtualView(i);
            sendEventForVirtualView(i, 1);
            return true;
        }

        private Rect getBoundsForVirtualView(int i) {
            int i2 = i - 1;
            Rect rect = this.mTempRect;
            int i3 = i2 / 3;
            int i4 = i2 % 3;
            CellState cellState = LockPatternView.this.mCellStates[i3][i4];
            float centerXForColumn = LockPatternView.this.getCenterXForColumn(i4);
            float centerYForRow = LockPatternView.this.getCenterYForRow(i3);
            float f = LockPatternView.this.mSquareHeight * LockPatternView.this.mHitFactor * 0.5f;
            float f2 = LockPatternView.this.mSquareWidth * LockPatternView.this.mHitFactor * 0.5f;
            rect.left = (int) (centerXForColumn - f2);
            rect.right = (int) (centerXForColumn + f2);
            rect.top = (int) (centerYForRow - f);
            rect.bottom = (int) (centerYForRow + f);
            return rect;
        }

        private CharSequence getTextForVirtualView(int i) {
            return LockPatternView.this.getResources().getString(17040135, Integer.valueOf(i));
        }

        private int getVirtualViewIdForHit(float f, float f2) {
            int columnHit;
            int rowHit = LockPatternView.this.getRowHit(f2);
            if (rowHit < 0 || (columnHit = LockPatternView.this.getColumnHit(f)) < 0) {
                return Integer.MIN_VALUE;
            }
            boolean z = LockPatternView.this.mPatternDrawLookup[rowHit][columnHit];
            int i = (rowHit * 3) + columnHit + 1;
            if (z) {
                return i;
            }
            return Integer.MIN_VALUE;
        }
    }
}
