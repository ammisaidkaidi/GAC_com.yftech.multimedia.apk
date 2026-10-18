package com.android.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.hardware.input.InputManager;
import android.os.SystemProperties;
import android.util.Log;
import android.util.Slog;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManagerPolicyConstants;
import androidx.core.view.MotionEventCompat;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PointerLocationView extends View implements InputManager.InputDeviceListener, WindowManagerPolicyConstants.PointerEventListener {
    private static final String ALT_STRATEGY_PROPERY_KEY = "debug.velocitytracker.alt";
    private static final String TAG = "Pointer";
    private final int ESTIMATE_FUTURE_POINTS;
    private final float ESTIMATE_INTERVAL;
    private final int ESTIMATE_PAST_POINTS;
    private int mActivePointerId;
    private final VelocityTracker mAltVelocity;
    private boolean mCurDown;
    private int mCurNumPointers;
    private final Paint mCurrentPointPaint;
    private int mHeaderBottom;
    private final InputManager mIm;
    private int mMaxNumPointers;
    private final Paint mPaint;
    private final Paint mPathPaint;
    private final ArrayList<PointerState> mPointers;
    private boolean mPrintCoords;
    private RectF mReusableOvalRect;
    private final Paint mTargetPaint;
    private final MotionEvent.PointerCoords mTempCoords;
    private final FasterStringBuilder mText;
    private final Paint mTextBackgroundPaint;
    private final Paint mTextLevelPaint;
    private final Paint.FontMetricsInt mTextMetrics;
    private final Paint mTextPaint;
    private final ViewConfiguration mVC;
    private final VelocityTracker mVelocity;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class PointerState {
        private float mAltXVelocity;
        private float mAltYVelocity;
        private float mBoundingBottom;
        private float mBoundingLeft;
        private float mBoundingRight;
        private float mBoundingTop;
        private boolean mCurDown;
        private boolean mHasBoundingBox;
        private int mToolType;
        private int mTraceCount;
        private float mXVelocity;
        private float mYVelocity;
        private float[] mTraceX = new float[32];
        private float[] mTraceY = new float[32];
        private boolean[] mTraceCurrent = new boolean[32];
        private MotionEvent.PointerCoords mCoords = new MotionEvent.PointerCoords();
        private VelocityTracker.Estimator mEstimator = new VelocityTracker.Estimator();
        private VelocityTracker.Estimator mAltEstimator = new VelocityTracker.Estimator();

        public void clearTrace() {
            this.mTraceCount = 0;
        }

        public void addTrace(float f, float f2, boolean z) {
            int length = this.mTraceX.length;
            if (this.mTraceCount == length) {
                int i = length * 2;
                float[] fArr = new float[i];
                System.arraycopy(this.mTraceX, 0, fArr, 0, this.mTraceCount);
                this.mTraceX = fArr;
                float[] fArr2 = new float[i];
                System.arraycopy(this.mTraceY, 0, fArr2, 0, this.mTraceCount);
                this.mTraceY = fArr2;
                boolean[] zArr = new boolean[i];
                System.arraycopy(this.mTraceCurrent, 0, zArr, 0, this.mTraceCount);
                this.mTraceCurrent = zArr;
            }
            this.mTraceX[this.mTraceCount] = f;
            this.mTraceY[this.mTraceCount] = f2;
            this.mTraceCurrent[this.mTraceCount] = z;
            this.mTraceCount++;
        }
    }

    public PointerLocationView(Context context) {
        super(context);
        this.ESTIMATE_PAST_POINTS = 4;
        this.ESTIMATE_FUTURE_POINTS = 2;
        this.ESTIMATE_INTERVAL = 0.02f;
        this.mTextMetrics = new Paint.FontMetricsInt();
        this.mPointers = new ArrayList<>();
        this.mTempCoords = new MotionEvent.PointerCoords();
        this.mText = new FasterStringBuilder();
        this.mPrintCoords = true;
        this.mReusableOvalRect = new RectF();
        setFocusableInTouchMode(true);
        this.mIm = (InputManager) context.getSystemService(InputManager.class);
        this.mVC = ViewConfiguration.get(context);
        this.mTextPaint = new Paint();
        this.mTextPaint.setAntiAlias(true);
        this.mTextPaint.setTextSize(getResources().getDisplayMetrics().density * 10.0f);
        this.mTextPaint.setARGB(255, 0, 0, 0);
        this.mTextBackgroundPaint = new Paint();
        this.mTextBackgroundPaint.setAntiAlias(false);
        this.mTextBackgroundPaint.setARGB(128, 255, 255, 255);
        this.mTextLevelPaint = new Paint();
        this.mTextLevelPaint.setAntiAlias(false);
        this.mTextLevelPaint.setARGB(192, 255, 0, 0);
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setARGB(255, 255, 255, 255);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(2.0f);
        this.mCurrentPointPaint = new Paint();
        this.mCurrentPointPaint.setAntiAlias(true);
        this.mCurrentPointPaint.setARGB(255, 255, 0, 0);
        this.mCurrentPointPaint.setStyle(Paint.Style.STROKE);
        this.mCurrentPointPaint.setStrokeWidth(2.0f);
        this.mTargetPaint = new Paint();
        this.mTargetPaint.setAntiAlias(false);
        this.mTargetPaint.setARGB(255, 0, 0, 192);
        this.mPathPaint = new Paint();
        this.mPathPaint.setAntiAlias(false);
        this.mPathPaint.setARGB(255, 0, 96, 255);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(1.0f);
        this.mPointers.add(new PointerState());
        this.mActivePointerId = 0;
        this.mVelocity = VelocityTracker.obtain();
        String str = SystemProperties.get(ALT_STRATEGY_PROPERY_KEY);
        if (str.length() != 0) {
            Log.d(TAG, "Comparing default velocity tracker strategy with " + str);
            this.mAltVelocity = VelocityTracker.obtain(str);
            return;
        }
        this.mAltVelocity = null;
    }

    public void setPrintCoords(boolean z) {
        this.mPrintCoords = z;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.mTextPaint.getFontMetricsInt(this.mTextMetrics);
        this.mHeaderBottom = (-this.mTextMetrics.ascent) + this.mTextMetrics.descent + 2;
    }

    private void drawOval(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint) {
        canvas.save(1);
        canvas.rotate((float) ((f5 * 180.0f) / 3.141592653589793d), f, f2);
        float f6 = f4 / 2.0f;
        this.mReusableOvalRect.left = f - f6;
        this.mReusableOvalRect.right = f + f6;
        float f7 = f3 / 2.0f;
        this.mReusableOvalRect.top = f2 - f7;
        this.mReusableOvalRect.bottom = f2 + f7;
        canvas.drawOval(this.mReusableOvalRect, paint);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        int width = getWidth();
        int i = width / 7;
        int i2 = (-this.mTextMetrics.ascent) + 1;
        int i3 = this.mHeaderBottom;
        int size = this.mPointers.size();
        if (this.mActivePointerId >= 0) {
            PointerState pointerState = this.mPointers.get(this.mActivePointerId);
            float f2 = i3;
            canvas.drawRect(0.0f, 0.0f, i - 1, f2, this.mTextBackgroundPaint);
            float f3 = i2;
            canvas.drawText(this.mText.clear().append("P: ").append(this.mCurNumPointers).append(" / ").append(this.mMaxNumPointers).toString(), 1.0f, f3, this.mTextPaint);
            int i4 = pointerState.mTraceCount;
            if ((!this.mCurDown || !pointerState.mCurDown) && i4 != 0) {
                f = 1.0f;
                int i5 = i4 - 1;
                float f4 = pointerState.mTraceX[i5] - pointerState.mTraceX[0];
                float f5 = pointerState.mTraceY[i5] - pointerState.mTraceY[0];
                int i6 = i * 2;
                canvas.drawRect(i, 0.0f, i6 - 1, f2, Math.abs(f4) < ((float) this.mVC.getScaledTouchSlop()) ? this.mTextBackgroundPaint : this.mTextLevelPaint);
                canvas.drawText(this.mText.clear().append("dX: ").append(f4, 1).toString(), i + 1, f3, this.mTextPaint);
                canvas.drawRect(i6, 0.0f, (i * 3) - 1, f2, Math.abs(f5) < ((float) this.mVC.getScaledTouchSlop()) ? this.mTextBackgroundPaint : this.mTextLevelPaint);
                canvas.drawText(this.mText.clear().append("dY: ").append(f5, 1).toString(), i6 + 1, f3, this.mTextPaint);
            } else {
                f = 1.0f;
                canvas.drawRect(i, 0.0f, r4 - 1, f2, this.mTextBackgroundPaint);
                canvas.drawText(this.mText.clear().append("X: ").append(pointerState.mCoords.x, 1).toString(), i + 1, f3, this.mTextPaint);
                canvas.drawRect(i * 2, 0.0f, (i * 3) - 1, f2, this.mTextBackgroundPaint);
                canvas.drawText(this.mText.clear().append("Y: ").append(pointerState.mCoords.y, 1).toString(), r4 + 1, f3, this.mTextPaint);
            }
            canvas.drawRect(i * 3, 0.0f, r14 - 1, f2, this.mTextBackgroundPaint);
            canvas.drawText(this.mText.clear().append("Xv: ").append(pointerState.mXVelocity, 3).toString(), r13 + 1, f3, this.mTextPaint);
            canvas.drawRect(i * 4, 0.0f, r13 - 1, f2, this.mTextBackgroundPaint);
            canvas.drawText(this.mText.clear().append("Yv: ").append(pointerState.mYVelocity, 3).toString(), r14 + 1, f3, this.mTextPaint);
            float f6 = i * 5;
            int i7 = i * 6;
            canvas.drawRect(f6, 0.0f, i7 - 1, f2, this.mTextBackgroundPaint);
            float f7 = i;
            canvas.drawRect(f6, 0.0f, ((pointerState.mCoords.pressure * f7) + f6) - f, f2, this.mTextLevelPaint);
            canvas.drawText(this.mText.clear().append("Prs: ").append(pointerState.mCoords.pressure, 2).toString(), r13 + 1, f3, this.mTextPaint);
            float f8 = i7;
            canvas.drawRect(f8, 0.0f, width, f2, this.mTextBackgroundPaint);
            canvas.drawRect(f8, 0.0f, ((pointerState.mCoords.size * f7) + f8) - f, f2, this.mTextLevelPaint);
            canvas.drawText(this.mText.clear().append("Size: ").append(pointerState.mCoords.size, 2).toString(), i7 + 1, f3, this.mTextPaint);
        }
        for (int i8 = 0; i8 < size; i8++) {
            PointerState pointerState2 = this.mPointers.get(i8);
            int i9 = pointerState2.mTraceCount;
            this.mPaint.setARGB(255, 128, 255, 255);
            float f9 = 0.0f;
            float f10 = 0.0f;
            boolean z = false;
            boolean z2 = false;
            for (int i10 = 0; i10 < i9; i10++) {
                float f11 = pointerState2.mTraceX[i10];
                float f12 = pointerState2.mTraceY[i10];
                if (Float.isNaN(f11)) {
                    z2 = false;
                } else {
                    if (z2) {
                        float f13 = f9;
                        float f14 = f10;
                        canvas.drawLine(f10, f9, f11, f12, this.mPathPaint);
                        canvas.drawPoint(f14, f13, pointerState2.mTraceCurrent[i10] ? this.mCurrentPointPaint : this.mPaint);
                        z = true;
                    }
                    f10 = f11;
                    f9 = f12;
                    z2 = true;
                }
            }
            float f15 = f9;
            float f16 = f10;
            if (z) {
                this.mPaint.setARGB(128, 128, 0, 128);
                float estimateX = pointerState2.mEstimator.estimateX(-0.08f);
                float estimateY = pointerState2.mEstimator.estimateY(-0.08f);
                int i11 = -3;
                float f17 = estimateX;
                while (i11 <= 2) {
                    float f18 = i11 * 0.02f;
                    float estimateX2 = pointerState2.mEstimator.estimateX(f18);
                    float estimateY2 = pointerState2.mEstimator.estimateY(f18);
                    canvas.drawLine(f17, estimateY, estimateX2, estimateY2, this.mPaint);
                    i11++;
                    f17 = estimateX2;
                    estimateY = estimateY2;
                }
                this.mPaint.setARGB(255, 255, 64, 128);
                canvas.drawLine(f16, f15, f16 + (pointerState2.mXVelocity * 16.0f), f15 + (pointerState2.mYVelocity * 16.0f), this.mPaint);
                if (this.mAltVelocity != null) {
                    this.mPaint.setARGB(128, 0, 128, 128);
                    float estimateX3 = pointerState2.mAltEstimator.estimateX(-0.08f);
                    float estimateY3 = pointerState2.mAltEstimator.estimateY(-0.08f);
                    int i12 = -3;
                    float f19 = estimateX3;
                    while (i12 <= 2) {
                        float f20 = i12 * 0.02f;
                        float estimateX4 = pointerState2.mAltEstimator.estimateX(f20);
                        float estimateY4 = pointerState2.mAltEstimator.estimateY(f20);
                        canvas.drawLine(f19, estimateY3, estimateX4, estimateY4, this.mPaint);
                        i12++;
                        f19 = estimateX4;
                        estimateY3 = estimateY4;
                    }
                    this.mPaint.setARGB(255, 64, 255, 128);
                    canvas.drawLine(f16, f15, f16 + (pointerState2.mAltXVelocity * 16.0f), f15 + (pointerState2.mAltYVelocity * 16.0f), this.mPaint);
                }
            }
            if (this.mCurDown && pointerState2.mCurDown) {
                canvas.drawLine(0.0f, pointerState2.mCoords.y, getWidth(), pointerState2.mCoords.y, this.mTargetPaint);
                canvas.drawLine(pointerState2.mCoords.x, 0.0f, pointerState2.mCoords.x, getHeight(), this.mTargetPaint);
                int i13 = (int) (pointerState2.mCoords.pressure * 255.0f);
                int i14 = 255 - i13;
                this.mPaint.setARGB(255, i13, 255, i14);
                canvas.drawPoint(pointerState2.mCoords.x, pointerState2.mCoords.y, this.mPaint);
                this.mPaint.setARGB(255, i13, i14, 128);
                drawOval(canvas, pointerState2.mCoords.x, pointerState2.mCoords.y, pointerState2.mCoords.touchMajor, pointerState2.mCoords.touchMinor, pointerState2.mCoords.orientation, this.mPaint);
                this.mPaint.setARGB(255, i13, 128, i14);
                drawOval(canvas, pointerState2.mCoords.x, pointerState2.mCoords.y, pointerState2.mCoords.toolMajor, pointerState2.mCoords.toolMinor, pointerState2.mCoords.orientation, this.mPaint);
                float f21 = pointerState2.mCoords.toolMajor * 0.7f;
                if (f21 < 20.0f) {
                    f21 = 20.0f;
                }
                this.mPaint.setARGB(255, i13, 255, 0);
                double d = f21;
                float sin = (float) (Math.sin(pointerState2.mCoords.orientation) * d);
                float f22 = (float) ((-Math.cos(pointerState2.mCoords.orientation)) * d);
                if (pointerState2.mToolType == 2 || pointerState2.mToolType == 4) {
                    canvas.drawLine(pointerState2.mCoords.x, pointerState2.mCoords.y, pointerState2.mCoords.x + sin, pointerState2.mCoords.y + f22, this.mPaint);
                } else {
                    canvas.drawLine(pointerState2.mCoords.x - sin, pointerState2.mCoords.y - f22, pointerState2.mCoords.x + sin, pointerState2.mCoords.y + f22, this.mPaint);
                }
                float sin2 = (float) Math.sin(pointerState2.mCoords.getAxisValue(25));
                canvas.drawCircle(pointerState2.mCoords.x + (sin * sin2), pointerState2.mCoords.y + (f22 * sin2), 3.0f, this.mPaint);
                if (pointerState2.mHasBoundingBox) {
                    canvas.drawRect(pointerState2.mBoundingLeft, pointerState2.mBoundingTop, pointerState2.mBoundingRight, pointerState2.mBoundingBottom, this.mPaint);
                }
            }
        }
    }

    private void logMotionEvent(String str, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < historySize; i++) {
            for (int i2 = 0; i2 < pointerCount; i2++) {
                int pointerId = motionEvent.getPointerId(i2);
                motionEvent.getHistoricalPointerCoords(i2, i, this.mTempCoords);
                logCoords(str, action, i2, this.mTempCoords, pointerId, motionEvent);
            }
        }
        for (int i3 = 0; i3 < pointerCount; i3++) {
            int pointerId2 = motionEvent.getPointerId(i3);
            motionEvent.getPointerCoords(i3, this.mTempCoords);
            logCoords(str, action, i3, this.mTempCoords, pointerId2, motionEvent);
        }
    }

    private void logCoords(String str, int i, int i2, MotionEvent.PointerCoords pointerCoords, int i3, MotionEvent motionEvent) {
        String str2;
        int toolType = motionEvent.getToolType(i2);
        int buttonState = motionEvent.getButtonState();
        switch (i & 255) {
            case 0:
                str2 = "DOWN";
                break;
            case 1:
                str2 = "UP";
                break;
            case 2:
                str2 = "MOVE";
                break;
            case 3:
                str2 = "CANCEL";
                break;
            case 4:
                str2 = "OUTSIDE";
                break;
            case 5:
                if (i2 != ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)) {
                    str2 = "MOVE";
                    break;
                } else {
                    str2 = "DOWN";
                    break;
                }
            case 6:
                if (i2 != ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)) {
                    str2 = "MOVE";
                    break;
                } else {
                    str2 = "UP";
                    break;
                }
            case 7:
                str2 = "HOVER MOVE";
                break;
            case 8:
                str2 = "SCROLL";
                break;
            case 9:
                str2 = "HOVER ENTER";
                break;
            case 10:
                str2 = "HOVER EXIT";
                break;
            default:
                str2 = Integer.toString(i);
                break;
        }
        Log.i(TAG, this.mText.clear().append(str).append(" id ").append(i3 + 1).append(": ").append(str2).append(" (").append(pointerCoords.x, 3).append(", ").append(pointerCoords.y, 3).append(") Pressure=").append(pointerCoords.pressure, 3).append(" Size=").append(pointerCoords.size, 3).append(" TouchMajor=").append(pointerCoords.touchMajor, 3).append(" TouchMinor=").append(pointerCoords.touchMinor, 3).append(" ToolMajor=").append(pointerCoords.toolMajor, 3).append(" ToolMinor=").append(pointerCoords.toolMinor, 3).append(" Orientation=").append((float) ((pointerCoords.orientation * 180.0f) / 3.141592653589793d), 1).append("deg").append(" Tilt=").append((float) ((pointerCoords.getAxisValue(25) * 180.0f) / 3.141592653589793d), 1).append("deg").append(" Distance=").append(pointerCoords.getAxisValue(24), 1).append(" VScroll=").append(pointerCoords.getAxisValue(9), 1).append(" HScroll=").append(pointerCoords.getAxisValue(10), 1).append(" BoundingBox=[(").append(motionEvent.getAxisValue(32), 3).append(", ").append(motionEvent.getAxisValue(33), 3).append(")").append(", (").append(motionEvent.getAxisValue(34), 3).append(", ").append(motionEvent.getAxisValue(35), 3).append(")]").append(" ToolType=").append(MotionEvent.toolTypeToString(toolType)).append(" ButtonState=").append(MotionEvent.buttonStateToString(buttonState)).toString());
    }

    public void onPointerEvent(MotionEvent motionEvent) {
        MotionEvent.PointerCoords pointerCoords;
        PointerState pointerState;
        int i;
        char c;
        MotionEvent.PointerCoords pointerCoords2;
        PointerState pointerState2;
        int i2;
        int i3;
        int i4;
        int action = motionEvent.getAction();
        int size = this.mPointers.size();
        if (action == 0 || (action & 255) == 5) {
            int i5 = (action & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
            if (action == 0) {
                for (int i6 = 0; i6 < size; i6++) {
                    PointerState pointerState3 = this.mPointers.get(i6);
                    pointerState3.clearTrace();
                    pointerState3.mCurDown = false;
                }
                this.mCurDown = true;
                this.mCurNumPointers = 0;
                this.mMaxNumPointers = 0;
                this.mVelocity.clear();
                if (this.mAltVelocity != null) {
                    this.mAltVelocity.clear();
                }
            }
            this.mCurNumPointers++;
            if (this.mMaxNumPointers < this.mCurNumPointers) {
                this.mMaxNumPointers = this.mCurNumPointers;
            }
            int pointerId = motionEvent.getPointerId(i5);
            while (size <= pointerId) {
                this.mPointers.add(new PointerState());
                size++;
            }
            if (this.mActivePointerId < 0 || !this.mPointers.get(this.mActivePointerId).mCurDown) {
                this.mActivePointerId = pointerId;
            }
            PointerState pointerState4 = this.mPointers.get(pointerId);
            pointerState4.mCurDown = true;
            InputDevice device = InputDevice.getDevice(motionEvent.getDeviceId());
            pointerState4.mHasBoundingBox = (device == null || device.getMotionRange(32) == null) ? false : true;
        }
        int i7 = size;
        int pointerCount = motionEvent.getPointerCount();
        this.mVelocity.addMovement(motionEvent);
        this.mVelocity.computeCurrentVelocity(1);
        if (this.mAltVelocity != null) {
            this.mAltVelocity.addMovement(motionEvent);
            this.mAltVelocity.computeCurrentVelocity(1);
        }
        int historySize = motionEvent.getHistorySize();
        int i8 = 0;
        while (i8 < historySize) {
            int i9 = 0;
            while (i9 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i9);
                PointerState pointerState5 = this.mCurDown ? this.mPointers.get(pointerId2) : null;
                MotionEvent.PointerCoords pointerCoords3 = pointerState5 != null ? pointerState5.mCoords : this.mTempCoords;
                motionEvent.getHistoricalPointerCoords(i9, i8, pointerCoords3);
                if (this.mPrintCoords) {
                    pointerCoords2 = pointerCoords3;
                    pointerState2 = pointerState5;
                    i2 = i9;
                    i3 = i8;
                    i4 = historySize;
                    logCoords(TAG, action, i9, pointerCoords2, pointerId2, motionEvent);
                } else {
                    pointerCoords2 = pointerCoords3;
                    pointerState2 = pointerState5;
                    i2 = i9;
                    i3 = i8;
                    i4 = historySize;
                }
                if (pointerState2 != null) {
                    MotionEvent.PointerCoords pointerCoords4 = pointerCoords2;
                    pointerState2.addTrace(pointerCoords4.x, pointerCoords4.y, false);
                }
                i9 = i2 + 1;
                historySize = i4;
                i8 = i3;
            }
            i8++;
        }
        for (int i10 = 0; i10 < pointerCount; i10++) {
            int pointerId3 = motionEvent.getPointerId(i10);
            PointerState pointerState6 = this.mCurDown ? this.mPointers.get(pointerId3) : null;
            MotionEvent.PointerCoords pointerCoords5 = pointerState6 != null ? pointerState6.mCoords : this.mTempCoords;
            motionEvent.getPointerCoords(i10, pointerCoords5);
            if (this.mPrintCoords) {
                pointerCoords = pointerCoords5;
                pointerState = pointerState6;
                i = pointerId3;
                logCoords(TAG, action, i10, pointerCoords5, pointerId3, motionEvent);
            } else {
                pointerCoords = pointerCoords5;
                pointerState = pointerState6;
                i = pointerId3;
            }
            if (pointerState != null) {
                MotionEvent.PointerCoords pointerCoords6 = pointerCoords;
                pointerState.addTrace(pointerCoords6.x, pointerCoords6.y, true);
                pointerState.mXVelocity = this.mVelocity.getXVelocity(i);
                pointerState.mYVelocity = this.mVelocity.getYVelocity(i);
                this.mVelocity.getEstimator(i, pointerState.mEstimator);
                if (this.mAltVelocity != null) {
                    pointerState.mAltXVelocity = this.mAltVelocity.getXVelocity(i);
                    pointerState.mAltYVelocity = this.mAltVelocity.getYVelocity(i);
                    this.mAltVelocity.getEstimator(i, pointerState.mAltEstimator);
                }
                pointerState.mToolType = motionEvent.getToolType(i10);
                if (pointerState.mHasBoundingBox) {
                    c = ' ';
                    pointerState.mBoundingLeft = motionEvent.getAxisValue(32, i10);
                    pointerState.mBoundingTop = motionEvent.getAxisValue(33, i10);
                    pointerState.mBoundingRight = motionEvent.getAxisValue(34, i10);
                    pointerState.mBoundingBottom = motionEvent.getAxisValue(35, i10);
                }
            }
            c = ' ';
        }
        if (action == 1 || action == 3 || (action & 255) == 6) {
            int i11 = (65280 & action) >> 8;
            int pointerId4 = motionEvent.getPointerId(i11);
            if (pointerId4 >= i7) {
                Slog.wtf(TAG, "Got pointer ID out of bounds: id=" + pointerId4 + " arraysize=" + i7 + " pointerindex=" + i11 + " action=0x" + Integer.toHexString(action));
                return;
            }
            PointerState pointerState7 = this.mPointers.get(pointerId4);
            pointerState7.mCurDown = false;
            if (action == 1 || action == 3) {
                this.mCurDown = false;
                this.mCurNumPointers = 0;
            } else {
                this.mCurNumPointers--;
                if (this.mActivePointerId == pointerId4) {
                    this.mActivePointerId = motionEvent.getPointerId(i11 != 0 ? 0 : 1);
                }
                pointerState7.addTrace(Float.NaN, Float.NaN, false);
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        onPointerEvent(motionEvent);
        if (motionEvent.getAction() != 0 || isFocused()) {
            return true;
        }
        requestFocus();
        return true;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int source = motionEvent.getSource();
        if ((source & 2) != 0) {
            onPointerEvent(motionEvent);
            return true;
        }
        if ((source & 16) != 0) {
            logMotionEvent("Joystick", motionEvent);
            return true;
        }
        if ((source & 8) != 0) {
            logMotionEvent("Position", motionEvent);
            return true;
        }
        logMotionEvent("Generic", motionEvent);
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (shouldLogKey(i)) {
            int repeatCount = keyEvent.getRepeatCount();
            if (repeatCount == 0) {
                Log.i(TAG, "Key Down: " + keyEvent);
                return true;
            }
            Log.i(TAG, "Key Repeat #" + repeatCount + ": " + keyEvent);
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (shouldLogKey(i)) {
            Log.i(TAG, "Key Up: " + keyEvent);
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    private static boolean shouldLogKey(int i) {
        switch (i) {
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                return true;
            default:
                return KeyEvent.isGamepadButton(i) || KeyEvent.isModifierKey(i);
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        logMotionEvent("Trackball", motionEvent);
        return true;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIm.registerInputDeviceListener(this, getHandler());
        logInputDevices();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIm.unregisterInputDeviceListener(this);
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceAdded(int i) {
        logInputDeviceState(i, "Device Added");
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceChanged(int i) {
        logInputDeviceState(i, "Device Changed");
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceRemoved(int i) {
        logInputDeviceState(i, "Device Removed");
    }

    private void logInputDevices() {
        for (int i : InputDevice.getDeviceIds()) {
            logInputDeviceState(i, "Device Enumerated");
        }
    }

    private void logInputDeviceState(int i, String str) {
        InputDevice inputDevice = this.mIm.getInputDevice(i);
        if (inputDevice != null) {
            Log.i(TAG, str + ": " + inputDevice);
            return;
        }
        Log.i(TAG, str + ": " + i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public static final class FasterStringBuilder {
        private char[] mChars = new char[64];
        private int mLength;

        public FasterStringBuilder clear() {
            this.mLength = 0;
            return this;
        }

        public FasterStringBuilder append(String str) {
            int length = str.length();
            str.getChars(0, length, this.mChars, reserve(length));
            this.mLength += length;
            return this;
        }

        public FasterStringBuilder append(int i) {
            return append(i, 0);
        }

        public FasterStringBuilder append(int i, int i2) {
            int i3;
            boolean z = i < 0;
            if (z && (i = -i) < 0) {
                append("-2147483648");
                return this;
            }
            int reserve = reserve(11);
            char[] cArr = this.mChars;
            if (i == 0) {
                cArr[reserve] = '0';
                this.mLength++;
                return this;
            }
            if (z) {
                i3 = reserve + 1;
                cArr[reserve] = '-';
            } else {
                i3 = reserve;
            }
            int i4 = 1000000000;
            int i5 = i3;
            int i6 = 10;
            while (i < i4) {
                i4 /= 10;
                i6--;
                if (i6 < i2) {
                    cArr[i5] = '0';
                    i5++;
                }
            }
            while (true) {
                int i7 = i / i4;
                i -= i7 * i4;
                i4 /= 10;
                int i8 = i5 + 1;
                cArr[i5] = (char) (i7 + 48);
                if (i4 == 0) {
                    this.mLength = i8;
                    return this;
                }
                i5 = i8;
            }
        }

        public FasterStringBuilder append(float f, int i) {
            int i2 = 1;
            for (int i3 = 0; i3 < i; i3++) {
                i2 *= 10;
            }
            float f2 = i2;
            float rint = (float) (Math.rint(f * f2) / i2);
            append((int) rint);
            if (i != 0) {
                append(".");
                double abs = Math.abs(rint);
                append((int) (((float) (abs - Math.floor(abs))) * f2), i);
            }
            return this;
        }

        public String toString() {
            return new String(this.mChars, 0, this.mLength);
        }

        private int reserve(int i) {
            int i2 = this.mLength;
            int i3 = this.mLength + i;
            char[] cArr = this.mChars;
            int length = cArr.length;
            if (i3 > length) {
                char[] cArr2 = new char[length * 2];
                System.arraycopy(cArr, 0, cArr2, 0, i2);
                this.mChars = cArr2;
            }
            return i2;
        }
    }
}
