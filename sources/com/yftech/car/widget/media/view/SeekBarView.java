package com.yftech.car.widget.media.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.yftech.car.widget.media.R;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SeekBarView extends View {
    private static final int DEFAULT_TOUCH_TARGET_SIZE = 40;
    private static final String TAG = "SeekBarView";
    private final int DEFAULT_TEXT_PADDING;
    private final int DEFAULT_THUMB_COLOR;
    private boolean isTouchLegal;
    private ObjectAnimator mAnimator;
    private RectF mBackRectF;
    private boolean mIsCenterState;
    private long mLastTime;
    private LinearGradient mProgressLinearGradient;
    private LinearGradient mProgressLinearGradientRight;
    private Paint mProgressPaint;
    private Paint mProgressPaintRight;
    private RectF mProgressRectF;

    @ColorInt
    private int mTextBackColor;
    private float mTextBackRadius;

    @ColorInt
    private int mTextColor;
    private float mTextLocation;
    private RectF mTextRectF;
    private float mTextSize;

    @ColorInt
    private int mThumbColor;
    private int mThumbDrawColor;
    private float mThumbNormalRadius;
    private float mThumbPressedRadius;
    private float mThumbRadius;
    private float mWidth;
    private int maxProgress;
    private int minProgress;
    private OnSeekBarCallbackListener onSeekBarCallbackListener;
    private boolean onlyChangeProgressByThumb;
    private final Paint paint;
    private int progress;

    @ColorInt
    private int progressBackColor;
    private float progressBackHeight;

    @ColorInt
    private int progressColor;

    @ColorInt
    private int progressFrameColor;
    private float progressFrameHeight;
    private float progressHeight;

    @ColorInt
    private int progressMinusColor;
    private float progressPosition;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class OnSeekBarCallbackListener {
        public void onFinished(int i) {
        }

        public void onProgress(int i) {
        }

        public void onStarted() {
        }
    }

    public SeekBarView(Context context) {
        this(context, null);
    }

    public SeekBarView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SeekBarView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.DEFAULT_TEXT_PADDING = 10;
        this.DEFAULT_THUMB_COLOR = -7829368;
        this.mWidth = 800.0f;
        this.minProgress = 0;
        this.maxProgress = 100;
        this.progressBackColor = -16777216;
        this.progressBackHeight = 10.0f;
        this.progressFrameColor = -1;
        this.progressFrameHeight = 3.0f;
        this.progressColor = -16711936;
        this.progressHeight = 20.0f;
        this.progressMinusColor = SupportMenu.CATEGORY_MASK;
        this.progress = 50;
        this.mThumbNormalRadius = 14.0f;
        this.mThumbPressedRadius = 24.0f;
        this.mThumbColor = -7829368;
        this.mTextLocation = 1.0f;
        this.mTextSize = 40.0f;
        this.mTextColor = -1;
        this.mTextBackColor = 2110968788;
        this.mTextBackRadius = 10.0f;
        this.mIsCenterState = false;
        this.onlyChangeProgressByThumb = true;
        this.mThumbRadius = this.mThumbNormalRadius;
        this.isTouchLegal = false;
        this.mThumbDrawColor = -7829368;
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.CenterSeekBar);
            this.maxProgress = obtainStyledAttributes.getInteger(R.styleable.CenterSeekBar_maxProgress, 100);
            this.minProgress = obtainStyledAttributes.getInteger(R.styleable.CenterSeekBar_minProgress, 0);
            this.mWidth = obtainStyledAttributes.getDimension(R.styleable.CenterSeekBar_width, 800.0f);
            this.mIsCenterState = obtainStyledAttributes.getBoolean(R.styleable.CenterSeekBar_centerState, false);
            this.progressBackColor = obtainStyledAttributes.getColor(R.styleable.CenterSeekBar_backColor, -16777216);
            this.progressBackHeight = obtainStyledAttributes.getDimension(R.styleable.CenterSeekBar_backHeight, 10.0f);
            this.progressFrameColor = obtainStyledAttributes.getColor(R.styleable.CenterSeekBar_backFrameColor, -1);
            this.progressFrameHeight = obtainStyledAttributes.getDimension(R.styleable.CenterSeekBar_backFrameSize, 3.0f);
            this.progressHeight = obtainStyledAttributes.getDimension(R.styleable.CenterSeekBar_progressHeight, this.progressBackHeight);
            this.progressMinusColor = obtainStyledAttributes.getColor(R.styleable.CenterSeekBar_progressMinusColor, SupportMenu.CATEGORY_MASK);
            this.progress = obtainStyledAttributes.getInteger(R.styleable.CenterSeekBar_progress, 50);
            this.mThumbNormalRadius = obtainStyledAttributes.getDimension(R.styleable.CenterSeekBar_thumbNormalRadius, 14.0f);
            this.mThumbPressedRadius = obtainStyledAttributes.getDimension(R.styleable.CenterSeekBar_thumbPressRadius, 24.0f);
            this.mThumbColor = obtainStyledAttributes.getColor(R.styleable.CenterSeekBar_thumbColor, -16776961);
            this.progressColor = obtainStyledAttributes.getColor(R.styleable.CenterSeekBar_progressColor, -16776961);
            this.mProgressLinearGradient = new LinearGradient(60.0f, 0.0f, 95.0f, 100.0f, obtainStyledAttributes.getColor(R.styleable.CenterSeekBar_progressHeightColor, -16776961), this.progressColor, Shader.TileMode.MIRROR);
            this.mProgressPaint = new Paint();
            this.mProgressPaint.setAntiAlias(true);
            this.mProgressPaint.setShader(this.mProgressLinearGradient);
            this.mTextLocation = obtainStyledAttributes.getInteger(R.styleable.CenterSeekBar_textLocation, 1);
            this.mTextColor = obtainStyledAttributes.getColor(R.styleable.CenterSeekBar_SeekBar_textColor, -1);
            this.mTextSize = obtainStyledAttributes.getDimension(R.styleable.CenterSeekBar_SeekBar_textSize, 40.0f);
            this.mTextBackColor = obtainStyledAttributes.getColor(R.styleable.CenterSeekBar_textBackColor, 2110968788);
            this.mTextBackRadius = obtainStyledAttributes.getDimension(R.styleable.CenterSeekBar_textBackRadius, 10.0f);
            this.onlyChangeProgressByThumb = obtainStyledAttributes.getBoolean(R.styleable.CenterSeekBar_onlyChangedProgressByThumb, true);
            this.mThumbRadius = this.mThumbNormalRadius;
            this.mThumbDrawColor = this.mThumbColor;
            obtainStyledAttributes.recycle();
        }
        this.mAnimator = getTargetAnimator(false);
        this.mTextRectF = new RectF();
        this.mBackRectF = new RectF();
        this.mProgressRectF = new RectF();
    }

    public SeekBarView setCenterModeEnable(boolean z) {
        if (this.mIsCenterState && !z && this.progress < 0) {
            this.progress = -this.progress;
        }
        this.mIsCenterState = z;
        invalidate();
        return this;
    }

    public SeekBarView setProgress(int i) {
        if (this.mIsCenterState) {
            if (i <= this.maxProgress && i >= this.minProgress - this.maxProgress) {
                this.progress = i;
            } else {
                this.progress = this.minProgress;
            }
        } else if (i <= this.maxProgress && i >= this.minProgress) {
            this.progress = i;
        } else {
            this.progress = this.minProgress;
        }
        invalidate();
        return this;
    }

    public float getmWidth() {
        return this.mWidth;
    }

    public int getMaxProgress() {
        return this.maxProgress;
    }

    public SeekBarView setMaxProgress(int i) {
        this.maxProgress = i;
        invalidate();
        return this;
    }

    public SeekBarView setMinProgress(int i) {
        this.minProgress = i;
        invalidate();
        return this;
    }

    public SeekBarView setProgressEnable(boolean z) {
        if (z) {
            setEnabled(true);
            this.mThumbDrawColor = this.mThumbColor;
        } else {
            setEnabled(false);
            this.progress = 0;
            this.mThumbDrawColor = -7829368;
        }
        invalidate();
        return this;
    }

    public int getProgress() {
        return this.progress;
    }

    public void setOnSeekBarCallbackListener(OnSeekBarCallbackListener onSeekBarCallbackListener) {
        this.onSeekBarCallbackListener = onSeekBarCallbackListener;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        float f = width;
        float f2 = f - (this.mWidth / 2.0f);
        this.paint.setColor(this.progressBackColor);
        this.paint.setStrokeWidth(this.progressBackHeight);
        this.paint.setStyle(Paint.Style.FILL);
        this.mBackRectF.left = f2;
        float f3 = height;
        this.mBackRectF.top = f3 - this.progressBackHeight;
        this.mBackRectF.right = this.mWidth + f2;
        this.mBackRectF.bottom = f3;
        canvas.drawRoundRect(this.mBackRectF, this.mTextBackRadius, this.mTextBackRadius, this.paint);
        if (this.progressFrameHeight > 0.0f) {
            this.paint.setColor(this.progressFrameColor);
            this.paint.setStrokeWidth(this.progressFrameHeight);
            this.paint.setStyle(Paint.Style.STROKE);
            canvas.drawRoundRect(this.mBackRectF, this.mTextBackRadius, this.mTextBackRadius, this.paint);
        }
        this.mProgressPaint.setStyle(Paint.Style.FILL);
        this.mProgressPaint.setStrokeWidth(this.progressHeight);
        if (this.mIsCenterState) {
            this.progressPosition = ((int) ((this.progress * (this.mWidth / 2.0f)) / (this.maxProgress - this.minProgress))) + f;
        } else {
            this.progressPosition = ((this.progress * this.mWidth) / (this.maxProgress - this.minProgress)) + f2;
            f = f2;
        }
        this.mProgressRectF.top = f3 - this.progressBackHeight;
        this.mProgressRectF.bottom = f3;
        if (this.progress > 0) {
            this.mProgressRectF.left = f;
            this.mProgressRectF.right = this.progressPosition;
        } else {
            this.mProgressRectF.left = this.progressPosition;
            this.mProgressRectF.right = f;
        }
        if (!this.mIsCenterState) {
            canvas.drawRoundRect(this.mProgressRectF, this.mTextBackRadius, this.mTextBackRadius, this.mProgressPaint);
        } else {
            canvas.drawRoundRect(this.mProgressRectF, 0.0f, 0.0f, this.mProgressPaint);
        }
        this.paint.setColor(this.mThumbDrawColor);
        canvas.drawCircle(this.progressPosition, f3 - (this.progressBackHeight / 2.0f), this.mThumbRadius, this.paint);
        int i = (int) (((this.mThumbRadius - this.mThumbNormalRadius) * 255.0f) / (this.mThumbPressedRadius - this.mThumbNormalRadius));
        if (this.mTextLocation != 1.0f) {
            if (this.mTextLocation == 2.0f) {
                this.paint.setTextSize(this.mTextSize);
                this.paint.setColor(this.mTextColor);
                this.paint.setAlpha(i);
                this.paint.setTextAlign(Paint.Align.CENTER);
                canvas.drawText(this.progress + "%", this.progressPosition, f3, this.paint);
                return;
            }
            return;
        }
        this.paint.setColor(this.mTextBackColor);
        this.paint.setAlpha(i);
        this.mTextRectF.bottom = (f3 - this.mThumbPressedRadius) - 10.0f;
        this.mTextRectF.right = this.progressPosition + this.mTextSize + 10.0f;
        this.mTextRectF.top = (this.mTextRectF.bottom - this.mTextSize) - 30.0f;
        this.mTextRectF.left = (this.progressPosition - this.mTextSize) - 10.0f;
        canvas.drawRoundRect(this.mTextRectF, this.mTextBackRadius, this.mTextBackRadius, this.paint);
        this.paint.setTextSize(this.mTextSize);
        this.paint.setColor(this.mTextColor);
        this.paint.setAlpha(i);
        this.paint.setTextAlign(Paint.Align.CENTER);
        canvas.drawText(this.progress + "%", this.progressPosition, this.mTextRectF.bottom - 20.0f, this.paint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        Log.d(TAG, "seekBar action=" + motionEvent.getAction() + " ,isTouchLegal=" + this.isTouchLegal);
        int action = motionEvent.getAction();
        if (action == 0) {
            checkTouchingTarget(motionEvent);
            if (this.onSeekBarCallbackListener != null) {
                this.onSeekBarCallbackListener.onStarted();
            }
            if (!this.onlyChangeProgressByThumb) {
                this.progress = (int) clamp((int) motionEvent.getX());
                invalidate();
            }
        } else if (action == 2) {
            if (this.isTouchLegal) {
                this.progress = (int) clamp((int) motionEvent.getX());
                invalidate();
                if (this.onSeekBarCallbackListener != null) {
                    this.onSeekBarCallbackListener.onProgress(this.progress);
                }
            }
        } else if (this.isTouchLegal) {
            this.mAnimator.cancel();
            this.mAnimator = getTargetAnimator(false);
            this.mAnimator.start();
            if (this.onSeekBarCallbackListener != null) {
                this.onSeekBarCallbackListener.onFinished(this.progress);
            }
        }
        Log.d(TAG, "seekBar action=" + motionEvent.getAction() + " ,progress=" + this.progress);
        return true;
    }

    private void checkTouchingTarget(MotionEvent motionEvent) {
        if (isTouchingTarget(motionEvent)) {
            this.mAnimator.cancel();
            this.mAnimator = getTargetAnimator(true);
            this.mAnimator.start();
        }
    }

    private boolean isTouchingTarget(MotionEvent motionEvent) {
        if (!this.onlyChangeProgressByThumb) {
            this.isTouchLegal = true;
            return true;
        }
        float f = this.progressPosition;
        this.isTouchLegal = motionEvent.getX() > f - 40.0f && motionEvent.getX() < 40.0f + f;
        Log.i(TAG, "slack:\nisTouchLegal " + this.isTouchLegal + " " + motionEvent.getX() + " " + motionEvent.getY() + " " + f);
        return this.isTouchLegal;
    }

    private ObjectAnimator getTargetAnimator(boolean z) {
        float[] fArr = new float[2];
        fArr[0] = this.mThumbRadius;
        fArr[1] = z ? this.mThumbPressedRadius : this.mThumbNormalRadius;
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "mThumbRadius", fArr);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.yftech.car.widget.media.view.SeekBarView.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SeekBarView.this.postInvalidate();
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.yftech.car.widget.media.view.SeekBarView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ofFloat.removeAllListeners();
            }
        });
        ofFloat.setInterpolator(new AccelerateInterpolator());
        return ofFloat;
    }

    public void setMThumbRadius(float f) {
        this.mThumbRadius = f;
    }

    private float clamp(int i) {
        if (this.mIsCenterState) {
            int width = getWidth() / 2;
            float f = width;
            float f2 = f - (this.mWidth / 2.0f);
            float f3 = f + (this.mWidth / 2.0f);
            if (i > width) {
                if (i >= f3) {
                    return this.maxProgress;
                }
                return (int) (((this.maxProgress - this.minProgress) * (i - width)) / (this.mWidth / 2.0f));
            }
            if (i >= width) {
                return this.minProgress;
            }
            if (i <= f2) {
                return -this.maxProgress;
            }
            return (int) (((this.maxProgress - this.minProgress) * (i - width)) / (this.mWidth / 2.0f));
        }
        float width2 = getWidth() / 2;
        float f4 = width2 - (this.mWidth / 2.0f);
        float f5 = i;
        if (f5 >= width2 + (this.mWidth / 2.0f)) {
            return this.maxProgress;
        }
        if (f5 <= f4) {
            return this.minProgress;
        }
        return ((this.maxProgress - this.minProgress) * (f5 - f4)) / this.mWidth;
    }
}
