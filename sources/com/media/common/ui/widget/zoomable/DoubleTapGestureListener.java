package com.media.common.ui.widget.zoomable;

import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.facebook.infer.annotation.Nullsafe;
import com.media.common.util.LogUtil;

@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: /home/user/work/dex/classes3.dex */
public class DoubleTapGestureListener extends GestureDetector.SimpleOnGestureListener {
    private static final int DOUBLE_TAP_SCROLL_THRESHOLD = 20;
    private static final int DURATION_MS = 300;
    private final ZoomableDraweeView mDraweeView;
    private OnSingleClickListener mListener;
    private final PointF mDoubleTapViewPoint = new PointF();
    private final PointF mDoubleTapImagePoint = new PointF();
    private float mDoubleTapScale = 1.0f;
    private boolean mDoubleTapScroll = false;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnSingleClickListener {
        void onDoubleClickDown();

        void onDoubleTapMoving();

        void onNext();

        void onPrev();

        void onSingleClick();
    }

    public DoubleTapGestureListener(ZoomableDraweeView zoomableDraweeView) {
        this.mDraweeView = zoomableDraweeView;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.mListener != null) {
            this.mListener.onDoubleTapMoving();
        }
        return super.onScroll(motionEvent, motionEvent2, f, f2);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        LogUtil.e(" velocityX = " + f + "  velocityY = " + f2);
        if (f < -1000.0f) {
            if (this.mListener != null) {
                this.mListener.onNext();
            }
            return true;
        }
        if (f <= 1000.0f) {
            return false;
        }
        if (this.mListener != null) {
            this.mListener.onPrev();
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        if (this.mListener == null) {
            return true;
        }
        this.mListener.onSingleClick();
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0081, code lost:
    
        return true;
     */
    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        AbstractAnimatedZoomableController abstractAnimatedZoomableController = (AbstractAnimatedZoomableController) this.mDraweeView.getZoomableController();
        PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
        PointF mapViewToImage = abstractAnimatedZoomableController.mapViewToImage(pointF);
        switch (motionEvent.getActionMasked()) {
            case 0:
                this.mDoubleTapViewPoint.set(pointF);
                this.mDoubleTapImagePoint.set(mapViewToImage);
                this.mDoubleTapScale = abstractAnimatedZoomableController.getScaleFactor();
                break;
            case 1:
                if (this.mDoubleTapScroll) {
                    abstractAnimatedZoomableController.zoomToPoint(calcScale(pointF), this.mDoubleTapImagePoint, this.mDoubleTapViewPoint);
                } else if (abstractAnimatedZoomableController.getScaleFactor() < 1.25f) {
                    abstractAnimatedZoomableController.zoomToPoint(1.5f, mapViewToImage, pointF, 7, 300L, null);
                } else {
                    abstractAnimatedZoomableController.zoomToPoint(1.0f, mapViewToImage, pointF, 7, 300L, null);
                }
                this.mDoubleTapScroll = false;
                break;
            case 2:
                this.mDoubleTapScroll = this.mDoubleTapScroll || shouldStartDoubleTapScroll(pointF);
                if (this.mDoubleTapScroll) {
                    abstractAnimatedZoomableController.zoomToPoint(calcScale(pointF), this.mDoubleTapImagePoint, this.mDoubleTapViewPoint);
                    break;
                }
                break;
        }
    }

    private boolean shouldStartDoubleTapScroll(PointF pointF) {
        return Math.hypot((double) (pointF.x - this.mDoubleTapViewPoint.x), (double) (pointF.y - this.mDoubleTapViewPoint.y)) > 20.0d;
    }

    private float calcScale(PointF pointF) {
        float f = pointF.y - this.mDoubleTapViewPoint.y;
        float abs = (Math.abs(f) * 0.001f) + 1.0f;
        return f < 0.0f ? this.mDoubleTapScale / abs : this.mDoubleTapScale * abs;
    }

    public void setOnSingleClick(OnSingleClickListener onSingleClickListener) {
        this.mListener = onSingleClickListener;
    }
}
