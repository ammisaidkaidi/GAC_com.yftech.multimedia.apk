package com.media.common.ui.widget.zoomable.gestures;

import android.view.MotionEvent;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: /home/user/work/dex/classes3.dex */
public class MultiPointerGestureDetector {
    private static final int MAX_POINTERS = 2;
    private boolean mGestureInProgress;
    private int mNewPointerCount;
    private int mPointerCount;
    private final int[] mId = new int[2];
    private final float[] mStartX = new float[2];
    private final float[] mStartY = new float[2];
    private final float[] mCurrentX = new float[2];
    private final float[] mCurrentY = new float[2];

    @Nullable
    private Listener mListener = null;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Listener {
        void onGestureBegin(MultiPointerGestureDetector multiPointerGestureDetector);

        void onGestureEnd(MultiPointerGestureDetector multiPointerGestureDetector);

        void onGestureUpdate(MultiPointerGestureDetector multiPointerGestureDetector);
    }

    protected boolean shouldStartGesture() {
        return true;
    }

    public MultiPointerGestureDetector() {
        reset();
    }

    public static MultiPointerGestureDetector newInstance() {
        return new MultiPointerGestureDetector();
    }

    public void setListener(Listener listener) {
        this.mListener = listener;
    }

    public void reset() {
        this.mGestureInProgress = false;
        this.mPointerCount = 0;
        for (int i = 0; i < 2; i++) {
            this.mId[i] = -1;
        }
    }

    private void startGesture() {
        if (this.mGestureInProgress) {
            return;
        }
        if (this.mListener != null) {
            this.mListener.onGestureBegin(this);
        }
        this.mGestureInProgress = true;
    }

    private void stopGesture() {
        if (this.mGestureInProgress) {
            this.mGestureInProgress = false;
            if (this.mListener != null) {
                this.mListener.onGestureEnd(this);
            }
        }
    }

    private int getPressedPointerIndex(MotionEvent motionEvent, int i) {
        int pointerCount = motionEvent.getPointerCount();
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if ((actionMasked == 1 || actionMasked == 6) && i >= actionIndex) {
            i++;
        }
        if (i < pointerCount) {
            return i;
        }
        return -1;
    }

    private static int getPressedPointerCount(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        int actionMasked = motionEvent.getActionMasked();
        return (actionMasked == 1 || actionMasked == 6) ? pointerCount - 1 : pointerCount;
    }

    private void updatePointersOnTap(MotionEvent motionEvent) {
        this.mPointerCount = 0;
        for (int i = 0; i < 2; i++) {
            int pressedPointerIndex = getPressedPointerIndex(motionEvent, i);
            if (pressedPointerIndex == -1) {
                this.mId[i] = -1;
            } else {
                this.mId[i] = motionEvent.getPointerId(pressedPointerIndex);
                float[] fArr = this.mCurrentX;
                float[] fArr2 = this.mStartX;
                float x = motionEvent.getX(pressedPointerIndex);
                fArr2[i] = x;
                fArr[i] = x;
                float[] fArr3 = this.mCurrentY;
                float[] fArr4 = this.mStartY;
                float y = motionEvent.getY(pressedPointerIndex);
                fArr4[i] = y;
                fArr3[i] = y;
                this.mPointerCount++;
            }
        }
    }

    private void updatePointersOnMove(MotionEvent motionEvent) {
        for (int i = 0; i < 2; i++) {
            int findPointerIndex = motionEvent.findPointerIndex(this.mId[i]);
            if (findPointerIndex != -1) {
                this.mCurrentX[i] = motionEvent.getX(findPointerIndex);
                this.mCurrentY[i] = motionEvent.getY(findPointerIndex);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 0:
            case 1:
            case 5:
            case 6:
                this.mNewPointerCount = getPressedPointerCount(motionEvent);
                stopGesture();
                updatePointersOnTap(motionEvent);
                if (this.mPointerCount <= 0 || !shouldStartGesture()) {
                    return true;
                }
                startGesture();
                return true;
            case 2:
                updatePointersOnMove(motionEvent);
                if (!this.mGestureInProgress && this.mPointerCount > 0 && shouldStartGesture()) {
                    startGesture();
                }
                if (!this.mGestureInProgress || this.mListener == null) {
                    return true;
                }
                this.mListener.onGestureUpdate(this);
                return true;
            case 3:
                this.mNewPointerCount = 0;
                stopGesture();
                reset();
                return true;
            case 4:
            default:
                return true;
        }
    }

    public void restartGesture() {
        if (this.mGestureInProgress) {
            stopGesture();
            for (int i = 0; i < 2; i++) {
                this.mStartX[i] = this.mCurrentX[i];
                this.mStartY[i] = this.mCurrentY[i];
            }
            startGesture();
        }
    }

    public boolean isGestureInProgress() {
        return this.mGestureInProgress;
    }

    public int getNewPointerCount() {
        return this.mNewPointerCount;
    }

    public int getPointerCount() {
        return this.mPointerCount;
    }

    public float[] getStartX() {
        return this.mStartX;
    }

    public float[] getStartY() {
        return this.mStartY;
    }

    public float[] getCurrentX() {
        return this.mCurrentX;
    }

    public float[] getCurrentY() {
        return this.mCurrentY;
    }
}
