package com.yftech.libmusic.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.content.ContextCompat;
import com.media.common.util.LogUtil;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.libmusic.R;
import com.yftech.libmusic.bean.LyricObject;

/* loaded from: /home/user/work/dex/classes4.dex */
public class SongTextView extends View implements Runnable {
    private StringBuilder builder;
    private int delta;
    private String ellipsizeStr;
    private final int interval;
    private boolean isThePlayingLyric;
    private LyricObject lyricObject;
    private Handler mHandler;
    private Paint mPaint;
    private String mText;
    private float mTextHeight;
    private float mTextWidth;
    private OnTextItemClickListener onTextItemClickListener;
    private float postIndex;
    private RectF rectF;
    private int textColor;
    private float textSize;
    private int timeSum;
    private PorterDuffXfermode xformode;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public interface OnTextItemClickListener {
        void onTextItemClick(LyricObject lyricObject);
    }

    public SongTextView(Context context) {
        this(context, null);
    }

    public SongTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SongTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.delta = 15;
        this.mText = "梦 里 面 看 我 七 十 二 变";
        this.rectF = new RectF();
        this.isThePlayingLyric = false;
        this.textSize = 56.0f;
        this.textColor = R.color.colorFFFFFF;
        this.ellipsizeStr = "...";
        this.builder = new StringBuilder();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.interval = 100;
        this.timeSum = 0;
        init();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        LogUtil.d("onTouchEvent:action=" + motionEvent.getAction());
        if (motionEvent.getAction() != 0 || this.onTextItemClickListener == null) {
            return false;
        }
        this.onTextItemClickListener.onTextItemClick(this.lyricObject);
        return false;
    }

    public void init() {
        this.mPaint = new Paint(1);
        this.xformode = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
        this.mPaint.setColor(ContextCompat.getColor(getContext(), this.textColor));
        this.mPaint.setTextSize(this.textSize);
        this.mPaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mPaint.setXfermode(null);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        Paint.FontMetrics fontMetrics = this.mPaint.getFontMetrics();
        this.mTextHeight = (fontMetrics.bottom - fontMetrics.descent) - fontMetrics.ascent;
        this.mTextWidth = this.mPaint.measureText(this.mText);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != 1073741824) {
            int paddingLeft = getPaddingLeft() + getPaddingRight() + getMeasuredWidth();
            size = mode == Integer.MIN_VALUE ? Math.min(paddingLeft, size) : paddingLeft;
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode2 != 1073741824) {
            int paddingTop = getPaddingTop() + getPaddingBottom() + getMeasuredHeight();
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(paddingTop, size2) : paddingTop;
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onDraw(Canvas canvas) {
        float width;
        super.onDraw(canvas);
        if (this.mPaint.getTextAlign() == Paint.Align.LEFT) {
            width = 0.0f;
        } else if (this.mPaint.getTextAlign() == Paint.Align.CENTER) {
            width = getWidth() / 2;
        } else {
            width = getWidth();
        }
        if (!this.isThePlayingLyric) {
            if (getMeasuredWidth() > this.mPaint.measureText(this.mText)) {
                canvas.drawText(this.mText, width, this.mTextHeight, this.mPaint);
                return;
            }
            canvas.drawText(this.builder.substring(0, calculateString(getMeasuredWidth() - this.mPaint.measureText(this.ellipsizeStr), 0, this.mText.length())) + this.ellipsizeStr, width, this.mTextHeight, this.mPaint);
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        if (getMeasuredWidth() > this.mPaint.measureText(this.mText)) {
            canvas2.drawText(this.mText, width, this.mTextHeight, this.mPaint);
        } else {
            canvas2.drawText(this.builder.substring(0, calculateString(getMeasuredWidth() - this.mPaint.measureText(this.ellipsizeStr), 0, this.mText.length())) + this.ellipsizeStr, width, this.mTextHeight, this.mPaint);
        }
        this.mPaint.setXfermode(this.xformode);
        this.mPaint.setColor(ContextCompat.getColor(getContext(), R.color.colorEEB230D));
        float measureText = width - (this.mPaint.measureText(this.mText) / 2.0f);
        this.rectF.set(measureText, 0.0f, this.postIndex + measureText, getMeasuredHeight());
        canvas2.drawRect(this.rectF, this.mPaint);
        canvas.drawBitmap(createBitmap, 0.0f, 0.0f, (Paint) null);
        init();
    }

    private int calculateString(float f, int i, int i2) {
        int i3;
        this.builder.delete(0, this.builder.length()).append(this.mText.substring(i, i2));
        int length = this.builder.length();
        int i4 = 0;
        while (true) {
            i3 = ((length - i4) / 2) + i4;
            if (i3 == i4 || i3 == length) {
                break;
            }
            if (f < this.mPaint.measureText(this.builder.substring(0, i3))) {
                length = i3;
            } else {
                i4 = i3;
            }
        }
        return i3;
    }

    public void setLyricObject(LyricObject lyricObject) {
        this.lyricObject = lyricObject;
        this.mText = lyricObject.lrc;
        this.mTextWidth = this.mPaint.measureText(this.mText);
    }

    public void setThePlayingLyric(boolean z) {
        this.isThePlayingLyric = z;
        if (this.isThePlayingLyric) {
            if (this.lyricObject == null || this.lyricObject.timeline == 0) {
                this.isThePlayingLyric = false;
            } else {
                this.timeSum = CarMusicManager.getInstance().getCurrentPlayProgress() - this.lyricObject.begintime;
                this.postIndex = ((this.timeSum * 1.0f) / this.lyricObject.timeline) * this.mTextWidth;
                this.mHandler.removeCallbacks(this);
                if (CarMusicManager.getInstance().isPlaying()) {
                    this.mHandler.postDelayed(this, 100L);
                }
            }
        } else {
            this.mHandler.removeCallbacks(this);
        }
        invalidate();
    }

    public void setTextSize(float f, boolean z) {
        this.textSize = f;
        this.mPaint.setTextSize(f);
    }

    public void setTextColor(int i, boolean z) {
        this.textColor = i;
        this.mPaint.setColor(ContextCompat.getColor(getContext(), this.textColor));
    }

    public void setOnTextItemClickListener(OnTextItemClickListener onTextItemClickListener) {
        this.onTextItemClickListener = onTextItemClickListener;
    }

    public void setMusicPlaying(boolean z) {
        this.mHandler.removeCallbacks(this);
        if (z) {
            this.mHandler.post(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.lyricObject != null) {
            float f = (this.timeSum * 1.0f) / this.lyricObject.timeline;
            this.postIndex = this.mTextWidth * f;
            this.timeSum += 100;
            invalidate();
            if (f < 1.0f) {
                this.mHandler.postDelayed(this, 100L);
            } else {
                this.mHandler.removeCallbacks(this);
            }
            if (this.isThePlayingLyric) {
                return;
            }
            this.mHandler.removeCallbacks(this);
        }
    }
}
