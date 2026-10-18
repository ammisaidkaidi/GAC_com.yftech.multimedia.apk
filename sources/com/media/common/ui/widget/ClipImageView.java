package com.media.common.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.media.common.util.LogUtil;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ClipImageView extends AppCompatImageView implements ScaleGestureDetector.OnScaleGestureListener {
    private boolean isAutoScale;
    private boolean isCanDrag;
    boolean isScaleIng;
    private int lastPointerCount;
    private int mAspectX;
    private int mAspectY;
    private Rect mClipBorder;
    private final int mClipPadding;
    private boolean mDrawCircleFlag;
    private GestureDetector mGestureDetector;
    private float mInitScale;
    private float mLastX;
    private float mLastY;
    private final int mMaskColor;
    private final float[] mMatrixValues;
    private int mMaxOutputWidth;
    private final Paint mPaint;
    private float mRoundCorner;
    private ScaleGestureDetector mScaleGestureDetector;
    private final Matrix mScaleMatrix;
    private float mScaleMax;
    private float mScaleMin;
    private String mTipText;

    public ClipImageView(Context context) {
        this(context, null);
    }

    public ClipImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mScaleMax = 4.0f;
        this.mScaleMin = 2.0f;
        this.mInitScale = 1.0f;
        this.mMatrixValues = new float[9];
        this.mScaleGestureDetector = null;
        this.mScaleMatrix = new Matrix();
        this.mClipBorder = new Rect();
        this.mMaxOutputWidth = 0;
        this.isScaleIng = false;
        setScaleType(ImageView.ScaleType.MATRIX);
        this.mGestureDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.media.common.ui.widget.ClipImageView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (ClipImageView.this.isAutoScale) {
                    return true;
                }
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                if (ClipImageView.this.getScale() < ClipImageView.this.mScaleMin) {
                    ClipImageView.this.postDelayed(new AutoScaleRunnable(ClipImageView.this.mScaleMin, x, y), 16L);
                } else {
                    ClipImageView.this.postDelayed(new AutoScaleRunnable(ClipImageView.this.mInitScale, x, y), 16L);
                }
                ClipImageView.this.isAutoScale = true;
                return true;
            }
        });
        this.mScaleGestureDetector = new ScaleGestureDetector(context, this);
        this.mPaint = new Paint(1);
        this.mPaint.setColor(-1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ClipImageView);
        this.mAspectX = obtainStyledAttributes.getInteger(R.styleable.ClipImageView_civWidth, 1);
        this.mAspectY = obtainStyledAttributes.getInteger(R.styleable.ClipImageView_civHeight, 1);
        this.mClipPadding = obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClipImageView_civClipPadding, 0);
        this.mTipText = obtainStyledAttributes.getString(R.styleable.ClipImageView_civTipText);
        this.mMaskColor = obtainStyledAttributes.getColor(R.styleable.ClipImageView_civMaskColor, -1308622848);
        this.mDrawCircleFlag = obtainStyledAttributes.getBoolean(R.styleable.ClipImageView_civClipCircle, false);
        this.mRoundCorner = obtainStyledAttributes.getDimension(R.styleable.ClipImageView_civClipRoundCorner, 0.0f);
        this.mPaint.setTextSize(obtainStyledAttributes.getDimensionPixelSize(R.styleable.ClipImageView_civTipTextSize, 24));
        obtainStyledAttributes.recycle();
        this.mPaint.setDither(true);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
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

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        this.isScaleIng = true;
        float scale = getScale();
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (getDrawable() == null) {
            return true;
        }
        if ((scale < this.mScaleMax && scaleFactor > 1.0f) || (scale > this.mInitScale && scaleFactor < 1.0f)) {
            if (scaleFactor * scale < this.mInitScale) {
                scaleFactor = this.mInitScale / scale;
            }
            if (scaleFactor * scale > this.mScaleMax) {
                scaleFactor = this.mScaleMax / scale;
            }
            this.mScaleMatrix.postScale(scaleFactor, scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
            checkBorder();
            setImageMatrix(this.mScaleMatrix);
        }
        return true;
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

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.isScaleIng = true;
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.isScaleIng = false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mGestureDetector.onTouchEvent(motionEvent)) {
            return true;
        }
        this.mScaleGestureDetector.onTouchEvent(motionEvent);
        if (this.isScaleIng) {
            return true;
        }
        int pointerCount = motionEvent.getPointerCount();
        LogUtil.d("get pointerCount:" + pointerCount);
        if (pointerCount >= 2) {
            return true;
        }
        float f = 0.0f;
        float f2 = 0.0f;
        for (int i = 0; i < pointerCount; i++) {
            f += motionEvent.getX(i);
            f2 += motionEvent.getY(i);
        }
        float f3 = pointerCount;
        float f4 = f / f3;
        float f5 = f2 / f3;
        if (pointerCount != this.lastPointerCount) {
            this.isCanDrag = false;
            this.mLastX = f4;
            this.mLastY = f5;
        }
        this.lastPointerCount = pointerCount;
        switch (motionEvent.getAction()) {
            case 1:
            case 3:
                this.lastPointerCount = 0;
                break;
            case 2:
                float f6 = f4 - this.mLastX;
                float f7 = f5 - this.mLastY;
                if (!this.isCanDrag) {
                    this.isCanDrag = isCanDrag(f6, f7);
                }
                if (this.isCanDrag && getDrawable() != null) {
                    RectF matrixRectF = getMatrixRectF();
                    if (matrixRectF.width() <= this.mClipBorder.width()) {
                        f6 = 0.0f;
                    }
                    if (matrixRectF.height() <= this.mClipBorder.height()) {
                        f7 = 0.0f;
                    }
                    this.mScaleMatrix.postTranslate(f6, f7);
                    checkBorder();
                    setImageMatrix(this.mScaleMatrix);
                }
                this.mLastX = f4;
                this.mLastY = f5;
                break;
        }
        return true;
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
            post(new Runnable() { // from class: com.media.common.ui.widget.ClipImageView.2
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
