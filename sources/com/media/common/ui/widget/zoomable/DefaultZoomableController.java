package com.media.common.ui.widget.zoomable;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.view.MotionEvent;
import androidx.annotation.Nullable;
import com.facebook.common.logging.FLog;
import com.media.common.ui.widget.zoomable.ZoomableController;
import com.media.common.ui.widget.zoomable.gestures.TransformGestureDetector;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes3.dex */
public class DefaultZoomableController implements ZoomableController, TransformGestureDetector.Listener {
    private static final float EPS = 0.001f;
    public static final int LIMIT_ALL = 7;
    public static final int LIMIT_NONE = 0;
    public static final int LIMIT_SCALE = 4;
    public static final int LIMIT_TRANSLATION_X = 1;
    public static final int LIMIT_TRANSLATION_Y = 2;
    private TransformGestureDetector mGestureDetector;

    @Nullable
    private ImageBoundsListener mImageBoundsListener;
    private boolean mWasTransformCorrected;
    private static final Class<?> TAG = DefaultZoomableController.class;
    private static final RectF IDENTITY_RECT = new RectF(0.0f, 0.0f, 1.0f, 1.0f);

    @Nullable
    private ZoomableController.Listener mListener = null;
    private boolean mIsEnabled = false;
    private boolean mIsRotationEnabled = false;
    private boolean mIsScaleEnabled = true;
    private boolean mIsTranslationEnabled = true;
    private boolean mIsGestureZoomEnabled = true;
    private float mMinScaleFactor = 0.5f;
    private float mMaxScaleFactor = 5.0f;
    private final RectF mViewBounds = new RectF();
    private final RectF mImageBounds = new RectF();
    private final RectF mTransformedImageBounds = new RectF();
    private final Matrix mPreviousTransform = new Matrix();
    private final Matrix mActiveTransform = new Matrix();
    private final Matrix mActiveTransformInverse = new Matrix();
    private final float[] mTempValues = new float[9];
    private final RectF mTempRect = new RectF();

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface ImageBoundsListener {
        void onImageBoundsSet(RectF rectF);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes3.dex */
    public @interface LimitFlag {
    }

    private static boolean shouldLimit(int i, int i2) {
        return (i & i2) != 0;
    }

    public static DefaultZoomableController newInstance() {
        return new DefaultZoomableController(TransformGestureDetector.newInstance());
    }

    public DefaultZoomableController(TransformGestureDetector transformGestureDetector) {
        this.mGestureDetector = transformGestureDetector;
        this.mGestureDetector.setListener(this);
    }

    public void reset() {
        FLog.v(TAG, "reset");
        this.mGestureDetector.reset();
        this.mPreviousTransform.reset();
        this.mActiveTransform.reset();
        onTransformChanged();
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public void setListener(ZoomableController.Listener listener) {
        this.mListener = listener;
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public void setEnabled(boolean z) {
        this.mIsEnabled = z;
        if (z) {
            return;
        }
        reset();
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public void setRotationEnabled(boolean z) {
        this.mIsRotationEnabled = z;
    }

    public boolean isRotationEnabled() {
        return this.mIsRotationEnabled;
    }

    public void setScaleEnabled(boolean z) {
        this.mIsScaleEnabled = z;
    }

    public boolean isScaleEnabled() {
        return this.mIsScaleEnabled;
    }

    public void setTranslationEnabled(boolean z) {
        this.mIsTranslationEnabled = z;
    }

    public boolean isTranslationEnabled() {
        return this.mIsTranslationEnabled;
    }

    public void setMinScaleFactor(float f) {
        this.mMinScaleFactor = f;
    }

    public float getMinScaleFactor() {
        return this.mMinScaleFactor;
    }

    public void setMaxScaleFactor(float f) {
        this.mMaxScaleFactor = f;
    }

    public float getMaxScaleFactor() {
        return this.mMaxScaleFactor;
    }

    public void setGestureZoomEnabled(boolean z) {
        this.mIsGestureZoomEnabled = z;
    }

    public boolean isGestureZoomEnabled() {
        return this.mIsGestureZoomEnabled;
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public float getScaleFactor() {
        return getMatrixScaleFactor(this.mActiveTransform);
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public void setImageBounds(RectF rectF) {
        if (rectF.equals(this.mImageBounds)) {
            return;
        }
        this.mImageBounds.set(rectF);
        onTransformChanged();
        if (this.mImageBoundsListener != null) {
            this.mImageBoundsListener.onImageBoundsSet(this.mImageBounds);
        }
    }

    public RectF getImageBounds() {
        return this.mImageBounds;
    }

    private RectF getTransformedImageBounds() {
        return this.mTransformedImageBounds;
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public void setViewBounds(RectF rectF) {
        this.mViewBounds.set(rectF);
    }

    public RectF getViewBounds() {
        return this.mViewBounds;
    }

    public void setImageBoundsListener(@Nullable ImageBoundsListener imageBoundsListener) {
        this.mImageBoundsListener = imageBoundsListener;
    }

    @Nullable
    public ImageBoundsListener getImageBoundsListener() {
        return this.mImageBoundsListener;
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public boolean isIdentity() {
        return isMatrixIdentity(this.mActiveTransform, EPS);
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public boolean wasTransformCorrected() {
        return this.mWasTransformCorrected;
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public Matrix getTransform() {
        return this.mActiveTransform;
    }

    public void getImageRelativeToViewAbsoluteTransform(Matrix matrix) {
        matrix.setRectToRect(IDENTITY_RECT, this.mTransformedImageBounds, Matrix.ScaleToFit.FILL);
    }

    public PointF mapViewToImage(PointF pointF) {
        float[] fArr = this.mTempValues;
        fArr[0] = pointF.x;
        fArr[1] = pointF.y;
        this.mActiveTransform.invert(this.mActiveTransformInverse);
        this.mActiveTransformInverse.mapPoints(fArr, 0, fArr, 0, 1);
        mapAbsoluteToRelative(fArr, fArr, 1);
        return new PointF(fArr[0], fArr[1]);
    }

    public PointF mapImageToView(PointF pointF) {
        float[] fArr = this.mTempValues;
        fArr[0] = pointF.x;
        fArr[1] = pointF.y;
        mapRelativeToAbsolute(fArr, fArr, 1);
        this.mActiveTransform.mapPoints(fArr, 0, fArr, 0, 1);
        return new PointF(fArr[0], fArr[1]);
    }

    private void mapAbsoluteToRelative(float[] fArr, float[] fArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 2;
            int i4 = i3 + 0;
            fArr[i4] = (fArr2[i4] - this.mImageBounds.left) / this.mImageBounds.width();
            int i5 = i3 + 1;
            fArr[i5] = (fArr2[i5] - this.mImageBounds.top) / this.mImageBounds.height();
        }
    }

    private void mapRelativeToAbsolute(float[] fArr, float[] fArr2, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = i2 * 2;
            int i4 = i3 + 0;
            fArr[i4] = (fArr2[i4] * this.mImageBounds.width()) + this.mImageBounds.left;
            int i5 = i3 + 1;
            fArr[i5] = (fArr2[i5] * this.mImageBounds.height()) + this.mImageBounds.top;
        }
    }

    public void zoomToPoint(float f, PointF pointF, PointF pointF2) {
        FLog.v(TAG, "zoomToPoint");
        calculateZoomToPointTransform(this.mActiveTransform, f, pointF, pointF2, 7);
        onTransformChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean calculateZoomToPointTransform(Matrix matrix, float f, PointF pointF, PointF pointF2, int i) {
        float[] fArr = this.mTempValues;
        fArr[0] = pointF.x;
        fArr[1] = pointF.y;
        mapRelativeToAbsolute(fArr, fArr, 1);
        float f2 = pointF2.x - fArr[0];
        float f3 = pointF2.y - fArr[1];
        matrix.setScale(f, f, fArr[0], fArr[1]);
        boolean limitScale = limitScale(matrix, fArr[0], fArr[1], i) | false;
        matrix.postTranslate(f2, f3);
        return limitTranslation(matrix, i) | limitScale;
    }

    public void setTransform(Matrix matrix) {
        FLog.v(TAG, "setTransform");
        this.mActiveTransform.set(matrix);
        onTransformChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TransformGestureDetector getDetector() {
        return this.mGestureDetector;
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public boolean onTouchEvent(MotionEvent motionEvent) {
        FLog.v(TAG, "onTouchEvent: action: ", Integer.valueOf(motionEvent.getAction()));
        if (this.mIsEnabled && this.mIsGestureZoomEnabled) {
            return this.mGestureDetector.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void onGestureBegin(TransformGestureDetector transformGestureDetector) {
        FLog.v(TAG, "onGestureBegin");
        this.mPreviousTransform.set(this.mActiveTransform);
        onTransformBegin();
        this.mWasTransformCorrected = !canScrollInAllDirection();
    }

    public void onGestureUpdate(TransformGestureDetector transformGestureDetector) {
        FLog.v(TAG, "onGestureUpdate");
        boolean calculateGestureTransform = calculateGestureTransform(this.mActiveTransform, 7);
        onTransformChanged();
        if (calculateGestureTransform) {
            this.mGestureDetector.restartGesture();
        }
        this.mWasTransformCorrected = calculateGestureTransform;
    }

    @Override // com.media.common.ui.widget.zoomable.gestures.TransformGestureDetector.Listener
    public void onGestureEnd(TransformGestureDetector transformGestureDetector) {
        FLog.v(TAG, "onGestureEnd");
        onTransformEnd();
    }

    protected boolean calculateGestureTransform(Matrix matrix, int i) {
        TransformGestureDetector transformGestureDetector = this.mGestureDetector;
        matrix.set(this.mPreviousTransform);
        if (this.mIsRotationEnabled) {
            matrix.postRotate(transformGestureDetector.getRotation() * 57.29578f, transformGestureDetector.getPivotX(), transformGestureDetector.getPivotY());
        }
        if (this.mIsScaleEnabled) {
            float scale = transformGestureDetector.getScale();
            matrix.postScale(scale, scale, transformGestureDetector.getPivotX(), transformGestureDetector.getPivotY());
        }
        boolean limitScale = limitScale(matrix, transformGestureDetector.getPivotX(), transformGestureDetector.getPivotY(), i) | false;
        if (this.mIsTranslationEnabled) {
            matrix.postTranslate(transformGestureDetector.getTranslationX(), transformGestureDetector.getTranslationY());
        }
        return limitTranslation(matrix, i) | limitScale;
    }

    private void onTransformBegin() {
        if (this.mListener == null || !isEnabled()) {
            return;
        }
        this.mListener.onTransformBegin(this.mActiveTransform);
    }

    private void onTransformChanged() {
        this.mActiveTransform.mapRect(this.mTransformedImageBounds, this.mImageBounds);
        if (this.mListener == null || !isEnabled()) {
            return;
        }
        this.mListener.onTransformChanged(this.mActiveTransform);
    }

    private void onTransformEnd() {
        if (this.mListener == null || !isEnabled()) {
            return;
        }
        this.mListener.onTransformEnd(this.mActiveTransform);
    }

    private boolean limitScale(Matrix matrix, float f, float f2, int i) {
        if (!shouldLimit(i, 4)) {
            return false;
        }
        float matrixScaleFactor = getMatrixScaleFactor(matrix);
        float limit = limit(matrixScaleFactor, this.mMinScaleFactor, this.mMaxScaleFactor);
        if (limit == matrixScaleFactor) {
            return false;
        }
        float f3 = limit / matrixScaleFactor;
        matrix.postScale(f3, f3, f, f2);
        return true;
    }

    private boolean limitTranslation(Matrix matrix, int i) {
        if (!shouldLimit(i, 3)) {
            return false;
        }
        RectF rectF = this.mTempRect;
        rectF.set(this.mImageBounds);
        matrix.mapRect(rectF);
        float offset = shouldLimit(i, 1) ? getOffset(rectF.left, rectF.right, this.mViewBounds.left, this.mViewBounds.right, this.mImageBounds.centerX()) : 0.0f;
        float offset2 = shouldLimit(i, 2) ? getOffset(rectF.top, rectF.bottom, this.mViewBounds.top, this.mViewBounds.bottom, this.mImageBounds.centerY()) : 0.0f;
        if (offset == 0.0f && offset2 == 0.0f) {
            return false;
        }
        matrix.postTranslate(offset, offset2);
        return true;
    }

    private float getOffset(float f, float f2, float f3, float f4, float f5) {
        float f6 = f2 - f;
        float f7 = f4 - f3;
        if (f6 < Math.min(f5 - f3, f4 - f5) * 2.0f) {
            return f5 - ((f2 + f) / 2.0f);
        }
        if (f6 < f7) {
            return f5 < (f3 + f4) / 2.0f ? f3 - f : f4 - f2;
        }
        if (f > f3) {
            return f3 - f;
        }
        if (f2 < f4) {
            return f4 - f2;
        }
        return 0.0f;
    }

    private float limit(float f, float f2, float f3) {
        return Math.min(Math.max(f2, f), f3);
    }

    private float getMatrixScaleFactor(Matrix matrix) {
        matrix.getValues(this.mTempValues);
        return this.mTempValues[0];
    }

    private boolean isMatrixIdentity(Matrix matrix, float f) {
        matrix.getValues(this.mTempValues);
        float[] fArr = this.mTempValues;
        fArr[0] = fArr[0] - 1.0f;
        float[] fArr2 = this.mTempValues;
        fArr2[4] = fArr2[4] - 1.0f;
        float[] fArr3 = this.mTempValues;
        fArr3[8] = fArr3[8] - 1.0f;
        for (int i = 0; i < 9; i++) {
            if (Math.abs(this.mTempValues[i]) > f) {
                return false;
            }
        }
        return true;
    }

    private boolean canScrollInAllDirection() {
        return this.mTransformedImageBounds.left < this.mViewBounds.left - EPS && this.mTransformedImageBounds.top < this.mViewBounds.top - EPS && this.mTransformedImageBounds.right > this.mViewBounds.right + EPS && this.mTransformedImageBounds.bottom > this.mViewBounds.bottom + EPS;
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public int computeHorizontalScrollRange() {
        return (int) this.mTransformedImageBounds.width();
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public int computeHorizontalScrollOffset() {
        return (int) (this.mViewBounds.left - this.mTransformedImageBounds.left);
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public int computeHorizontalScrollExtent() {
        return (int) this.mViewBounds.width();
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public int computeVerticalScrollRange() {
        return (int) this.mTransformedImageBounds.height();
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public int computeVerticalScrollOffset() {
        return (int) (this.mViewBounds.top - this.mTransformedImageBounds.top);
    }

    @Override // com.media.common.ui.widget.zoomable.ZoomableController
    public int computeVerticalScrollExtent() {
        return (int) this.mViewBounds.height();
    }

    public ZoomableController.Listener getListener() {
        return this.mListener;
    }
}
