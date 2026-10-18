package com.yftech.libgallery.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.media.common.ui.widget.zoomable.AbstractAnimatedZoomableController;
import com.media.common.ui.widget.zoomable.ZoomableDraweeView;
import com.media.common.util.LogUtil;
import com.yftech.libgallery.R;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: /home/user/work/dex/classes4.dex */
public class ClipImageView extends ZoomableDraweeView implements View.OnTouchListener {
    private static final int DURATION_MS = 300;
    private boolean isAutoScale;
    private boolean isCanDrag;
    private int lastPointerCount;
    private int mAspectX;
    private int mAspectY;
    private Rect mClipBorder;
    private int mClipPadding;
    private boolean mDrawCircleFlag;
    private GestureDetector mGestureDetector;
    private float mInitScale;
    private float mLastX;
    private float mLastY;
    private int mMaskColor;
    private final float[] mMatrixValues;
    private int mMaxOutputWidth;
    private Paint mPaint;
    private float mRoundCorner;
    private ScaleGestureDetector mScaleGestureDetector;
    private final Matrix mScaleMatrix;
    private float mScaleMax;
    private float mScaleMin;
    private String mTipText;

    public ClipImageView(Context context, GenericDraweeHierarchy genericDraweeHierarchy) {
        super(context, genericDraweeHierarchy);
        this.mAspectX = 624;
        this.mAspectY = GL10.GL_INVALID_ENUM;
        this.mScaleMax = 4.0f;
        this.mScaleMin = 2.0f;
        this.mInitScale = 1.0f;
        this.mMatrixValues = new float[9];
        this.mScaleGestureDetector = null;
        this.mScaleMatrix = new Matrix();
        this.mClipBorder = new Rect();
        this.mMaxOutputWidth = 0;
        this.mDrawCircleFlag = false;
        this.mRoundCorner = 0.0f;
        init(context);
    }

    public ClipImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mAspectX = 624;
        this.mAspectY = GL10.GL_INVALID_ENUM;
        this.mScaleMax = 4.0f;
        this.mScaleMin = 2.0f;
        this.mInitScale = 1.0f;
        this.mMatrixValues = new float[9];
        this.mScaleGestureDetector = null;
        this.mScaleMatrix = new Matrix();
        this.mClipBorder = new Rect();
        this.mMaxOutputWidth = 0;
        this.mDrawCircleFlag = false;
        this.mRoundCorner = 0.0f;
        init(context);
    }

    public ClipImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAspectX = 624;
        this.mAspectY = GL10.GL_INVALID_ENUM;
        this.mScaleMax = 4.0f;
        this.mScaleMin = 2.0f;
        this.mInitScale = 1.0f;
        this.mMatrixValues = new float[9];
        this.mScaleGestureDetector = null;
        this.mScaleMatrix = new Matrix();
        this.mClipBorder = new Rect();
        this.mMaxOutputWidth = 0;
        this.mDrawCircleFlag = false;
        this.mRoundCorner = 0.0f;
        init(context);
    }

    private void init(Context context) {
        this.mPaint = new Paint(1);
        this.mPaint.setColor(-1);
        this.mPaint.setDither(true);
        this.mPaint.setTextSize(24.0f);
        this.mMaskColor = getResources().getColor(R.color.color1A0000, null);
        this.mGestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.yftech.libgallery.view.ClipImageView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                AbstractAnimatedZoomableController zoomableController = ClipImageView.this.getZoomableController();
                LogUtil.d("get e.getX(), e.getY()" + motionEvent.getX() + "get y:" + motionEvent.getY());
                PointF pointF = new PointF(motionEvent.getX(), motionEvent.getY());
                PointF mapViewToImage = zoomableController.mapViewToImage(pointF);
                float maxScaleFactor = zoomableController.getMaxScaleFactor();
                Log.i("hhc", "onSingleTapConfirmed: maxScale = " + maxScaleFactor + "   minScale 1.0");
                if (zoomableController.getScaleFactor() < (1.0f + maxScaleFactor) / 2.0f) {
                    zoomableController.zoomToPoint(maxScaleFactor, mapViewToImage, pointF, 7, 300L, (Runnable) null);
                    return true;
                }
                zoomableController.zoomToPoint(1.0f, mapViewToImage, pointF, 7, 300L, (Runnable) null);
                return true;
            }
        });
        setOnTouchListener(this);
    }

    /* loaded from: /home/user/work/dex/classes4.dex */
    private class AutoScaleRunnable implements Runnable {
        static final float BIGGER = 1.07f;
        static final float SMALLER = 0.93f;
        private float mTargetScale;
        private float tmpScale;
        private float x;
        private float y;

        public AutoScaleRunnable(float f, float f2, float f3) {
            this.mTargetScale = f;
            this.x = f2;
            this.y = f3;
            if (ClipImageView.this.getScale() < this.mTargetScale) {
                this.tmpScale = BIGGER;
            } else {
                this.tmpScale = SMALLER;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            ClipImageView.this.mScaleMatrix.postScale(this.tmpScale, this.tmpScale, this.x, this.y);
            ClipImageView.this.checkBorder();
            ClipImageView.this.setImageMatrix(ClipImageView.this.mScaleMatrix);
            float scale = ClipImageView.this.getScale();
            if ((this.tmpScale > 1.0f && scale < this.mTargetScale) || (this.tmpScale < 1.0f && this.mTargetScale < scale)) {
                ClipImageView.this.postDelayed(this, 16L);
                return;
            }
            float f = this.mTargetScale / scale;
            ClipImageView.this.mScaleMatrix.postScale(f, f, this.x, this.y);
            ClipImageView.this.checkBorder();
            ClipImageView.this.setImageMatrix(ClipImageView.this.mScaleMatrix);
            ClipImageView.this.isAutoScale = false;
        }
    }

    private RectF getMatrixRectF() {
        Matrix matrix = this.mScaleMatrix;
        RectF rectF = new RectF();
        if (getDrawable() != null) {
            rectF.set(0.0f, 0.0f, r4.getIntrinsicWidth(), r4.getIntrinsicHeight());
            matrix.mapRect(rectF);
        }
        return rectF;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return this.mGestureDetector.onTouchEvent(motionEvent);
    }

    public final float getScale() {
        this.mScaleMatrix.getValues(this.mMatrixValues);
        return this.mMatrixValues[0];
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        updateBorder();
    }

    private void updateBorder() {
        int width = getWidth();
        int height = getHeight();
        this.mClipBorder.left = this.mClipPadding;
        this.mClipBorder.right = width - this.mClipPadding;
        int width2 = (this.mClipBorder.width() * this.mAspectY) / this.mAspectX;
        if (this.mDrawCircleFlag) {
            int width3 = (this.mClipBorder.width() * 1) / 1;
            this.mClipBorder.top = (height - width3) / 2;
            this.mClipBorder.bottom = this.mClipBorder.top + width3;
            return;
        }
        this.mClipBorder.top = (height - width2) / 2;
        this.mClipBorder.bottom = this.mClipBorder.top + width2;
    }

    public void setAspect(int i, int i2) {
        this.mAspectX = i;
        this.mAspectY = i2;
    }

    public void setTip(String str) {
        this.mTipText = str;
    }

    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        postResetImageMatrix();
    }

    public void setImageResource(int i) {
        super.setImageResource(i);
        postResetImageMatrix();
    }

    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        postResetImageMatrix();
    }

    private void postResetImageMatrix() {
        if (getWidth() != 0) {
            resetImageMatrix();
        } else {
            post(new Runnable() { // from class: com.yftech.libgallery.view.ClipImageView.2
                @Override // java.lang.Runnable
                public void run() {
                    ClipImageView.this.resetImageMatrix();
                }
            });
        }
    }

    public void resetImageMatrix() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int width = this.mClipBorder.width();
        int height = this.mClipBorder.height();
        int width2 = getWidth();
        int height2 = getHeight();
        float f = intrinsicWidth * height > width * intrinsicHeight ? height / intrinsicHeight : width / intrinsicWidth;
        this.mScaleMatrix.setScale(f, f);
        this.mScaleMatrix.postTranslate((int) (((width2 - (intrinsicWidth * f)) * 0.5f) + 0.5f), (int) (((height2 - (intrinsicHeight * f)) * 0.5f) + 0.5f));
        setImageMatrix(this.mScaleMatrix);
        this.mInitScale = f;
        this.mScaleMin = this.mInitScale * 2.0f;
        this.mScaleMax = this.mInitScale * 4.0f;
    }

    public Bitmap clip() {
        Matrix matrix;
        Bitmap bitmap = ((BitmapDrawable) getDrawable()).getBitmap();
        float[] fArr = new float[9];
        this.mScaleMatrix.getValues(fArr);
        float intrinsicWidth = (fArr[0] * r0.getIntrinsicWidth()) / bitmap.getWidth();
        float f = fArr[2];
        float f2 = ((-f) + this.mClipBorder.left) / intrinsicWidth;
        float f3 = ((-fArr[5]) + this.mClipBorder.top) / intrinsicWidth;
        float width = this.mClipBorder.width() / intrinsicWidth;
        float height = this.mClipBorder.height() / intrinsicWidth;
        if (this.mMaxOutputWidth <= 0 || width <= this.mMaxOutputWidth) {
            matrix = null;
        } else {
            float f4 = this.mMaxOutputWidth / width;
            Matrix matrix2 = new Matrix();
            matrix2.setScale(f4, f4);
            matrix = matrix2;
        }
        return Bitmap.createBitmap(bitmap, (int) f2, (int) f3, (int) width, (int) height, matrix, false);
    }

    public Bitmap snapShotForViewGroup() {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.ARGB_8888);
        draw(new Canvas(createBitmap));
        return createBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkBorder() {
        float f;
        RectF matrixRectF = getMatrixRectF();
        if (matrixRectF.width() >= this.mClipBorder.width()) {
            f = matrixRectF.left > ((float) this.mClipBorder.left) ? (-matrixRectF.left) + this.mClipBorder.left : 0.0f;
            if (matrixRectF.right < this.mClipBorder.right) {
                f = this.mClipBorder.right - matrixRectF.right;
            }
        } else {
            f = 0.0f;
        }
        if (matrixRectF.height() >= this.mClipBorder.height()) {
            r2 = matrixRectF.top > ((float) this.mClipBorder.top) ? (-matrixRectF.top) + this.mClipBorder.top : 0.0f;
            if (matrixRectF.bottom < this.mClipBorder.bottom) {
                r2 = this.mClipBorder.bottom - matrixRectF.bottom;
            }
        }
        this.mScaleMatrix.postTranslate(f, r2);
    }

    private boolean isCanDrag(float f, float f2) {
        return Math.sqrt((double) ((f * f) + (f2 * f2))) >= 0.0d;
    }

    public Rect getClipBorder() {
        return this.mClipBorder;
    }

    public void setMaxOutputWidth(int i) {
        this.mMaxOutputWidth = i;
    }

    public float[] getClipMatrixValues() {
        float[] fArr = new float[9];
        this.mScaleMatrix.getValues(fArr);
        return fArr;
    }

    public void drawRectangleOrCircle(Canvas canvas) {
        Bitmap createBitmap = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        PorterDuffXfermode porterDuffXfermode = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        paint.setColor(0);
        canvas2.drawRect(0.0f, 0.0f, canvas2.getWidth(), canvas2.getHeight(), this.mPaint);
        paint.setXfermode(porterDuffXfermode);
        if (this.mDrawCircleFlag) {
            canvas2.drawCircle(this.mClipBorder.left + (this.mClipBorder.width() / 2.0f), this.mClipBorder.top + (this.mClipBorder.height() / 2.0f), this.mClipBorder.height() / 2.0f, paint);
        } else {
            canvas2.drawRoundRect(new RectF(this.mClipBorder.left, this.mClipBorder.top, this.mClipBorder.right, this.mClipBorder.bottom), this.mRoundCorner, this.mRoundCorner, paint);
        }
        canvas.drawBitmap(createBitmap, 0.0f, 0.0f, (Paint) null);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        getHeight();
        this.mPaint.setColor(this.mMaskColor);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(1.0f);
        drawRectangleOrCircle(canvas);
        if (this.mTipText != null) {
            float measureText = (width - this.mPaint.measureText(this.mTipText)) / 2.0f;
            Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
            float f = (this.mClipBorder.bottom + (this.mClipBorder.top / 2)) - ((fontMetrics.descent - fontMetrics.ascent) / 2.0f);
            this.mPaint.setStyle(Paint.Style.FILL);
            canvas.drawText(this.mTipText, measureText, f, this.mPaint);
        }
    }
}
