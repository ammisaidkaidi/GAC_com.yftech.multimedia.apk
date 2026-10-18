package com.media.common.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import com.media.common.util.LogUtil;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ScrollableTextView extends View implements View.OnTouchListener {
    private static final String TAG = "ScrollableTextView";
    private final int DEFAULT_HEIGHT_SIZE;
    private final int DEFAULT_WIDTH_SIZE;
    private StringBuilder builder;
    private String content;
    private String ellipsizeStr;
    private int height;
    private boolean isRightStart;
    private boolean isShowAllText;
    private TextPaint paint;
    private float tempX;
    private int textAlignment;
    private int textColor;
    private float textSize;
    private boolean textStyle_isBold;
    private int width;
    private float x;
    private float xMaxOffset;
    private float xOffset;

    public ScrollableTextView(Context context) {
        super(context);
        this.textColor = -1;
        this.textSize = 24.0f;
        this.DEFAULT_WIDTH_SIZE = 255;
        this.DEFAULT_HEIGHT_SIZE = 50;
        this.textStyle_isBold = false;
        this.ellipsizeStr = "...";
        this.content = "一二三四五六七八九十一二三四五六七八九十";
        this.xOffset = 0.0f;
        this.isShowAllText = false;
        this.textAlignment = 0;
        this.builder = new StringBuilder();
    }

    public ScrollableTextView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ScrollableTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.textColor = -1;
        this.textSize = 24.0f;
        this.DEFAULT_WIDTH_SIZE = 255;
        this.DEFAULT_HEIGHT_SIZE = 50;
        this.textStyle_isBold = false;
        this.ellipsizeStr = "...";
        this.content = "一二三四五六七八九十一二三四五六七八九十";
        this.xOffset = 0.0f;
        this.isShowAllText = false;
        this.textAlignment = 0;
        this.builder = new StringBuilder();
        initAttr(context, attributeSet);
        initPaint();
        setOnTouchListener(this);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        LogUtil.d("onWindowFocusChanged:hasWindowFocus=" + z);
        if (this.isShowAllText) {
            this.isShowAllText = false;
            invalidate();
        }
    }

    private void initPaint() {
        this.paint = new TextPaint(1);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.textColor);
        this.paint.setTextSize(this.textSize);
        this.paint.setFakeBoldText(this.textStyle_isBold);
    }

    private void initAttr(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ScrollableTextView);
        this.ellipsizeStr = obtainStyledAttributes.getString(R.styleable.ScrollableTextView_scrollable_text_view_ellipsizeStr) == null ? this.ellipsizeStr : obtainStyledAttributes.getString(R.styleable.ScrollableTextView_scrollable_text_view_ellipsizeStr);
        this.textSize = obtainStyledAttributes.getDimension(R.styleable.ScrollableTextView_scrollable_text_view_textSize, this.textSize);
        this.content = obtainStyledAttributes.getString(R.styleable.ScrollableTextView_scrollable_text_view_text) == null ? this.content : obtainStyledAttributes.getString(R.styleable.ScrollableTextView_scrollable_text_view_text);
        this.textColor = obtainStyledAttributes.getColor(R.styleable.ScrollableTextView_scrollable_text_view_textColor, this.textColor);
        this.textStyle_isBold = obtainStyledAttributes.getBoolean(R.styleable.ScrollableTextView_scrollable_text_view_textStyle_isBold, this.textStyle_isBold);
        this.textAlignment = obtainStyledAttributes.getInt(R.styleable.ScrollableTextView_scrollable_text_view_textAlignment, this.textAlignment);
        obtainStyledAttributes.recycle();
        Locale locale = Locale.getDefault();
        this.isRightStart = locale.getLanguage().equals("ar") || locale.getLanguage().equals("he");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        LogUtil.d("WidthMode=" + mode + ", WidthSize=" + size);
        if (mode == Integer.MIN_VALUE) {
            this.width = Math.min(255, size);
        } else if (mode == 1073741824) {
            this.width = size;
        } else {
            this.width = 255;
        }
        this.xMaxOffset = Math.abs(this.width - getContentWidth(this.content));
        LogUtil.d("xMaxOffset=" + this.xMaxOffset);
        if (this.textAlignment == 0) {
            this.xOffset = 0.0f;
        } else {
            this.xOffset = -this.xMaxOffset;
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        LogUtil.d("heightMode=" + mode2 + ", heightSize=" + size2);
        if (mode2 == Integer.MIN_VALUE) {
            this.height = Math.min(50, size2);
        } else if (mode2 == 1073741824) {
            this.height = size2;
        } else {
            this.height = 50;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (TextUtils.isEmpty(this.content)) {
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            return;
        }
        if (this.isShowAllText) {
            canvas.translate(this.xOffset, 0.0f);
            float contentWidth = getContentWidth(this.content);
            if (this.width > contentWidth && this.isRightStart) {
                r1 = (int) (this.width - contentWidth);
            }
            canvas.drawText(this.content, r1, (this.height / 2.0f) + (getContentHeight() / 2.0f), this.paint);
            return;
        }
        if (this.width > getContentWidth(this.content)) {
            canvas.drawText(this.content, this.isRightStart ? (int) (this.width - r0) : 0, (this.height / 2.0f) + (getContentHeight() / 2.0f), this.paint);
            return;
        }
        int calculateString = calculateString(this.width - getContentWidth(this.ellipsizeStr), 0, this.content.length());
        if (this.textAlignment == 0) {
            canvas.drawText(this.builder.substring(0, calculateString) + this.ellipsizeStr, 0.0f, (this.height / 2.0f) + (getContentHeight() / 2.0f), this.paint);
            return;
        }
        canvas.drawText(this.ellipsizeStr + this.builder.substring(calculateString + 1, this.builder.length()), 0.0f, (this.height / 2.0f) + (getContentHeight() / 2.0f), this.paint);
    }

    private int calculateString(float f, int i, int i2) {
        int i3;
        this.builder.delete(0, this.builder.length()).append(this.content.substring(i, i2));
        int length = this.builder.length();
        int i4 = 0;
        while (true) {
            i3 = ((length - i4) / 2) + i4;
            if (i3 == i4 || i3 == length) {
                break;
            }
            if (this.textAlignment == 0) {
                if (f < getContentWidth(this.builder.substring(0, i3))) {
                    length = i3;
                } else {
                    i4 = i3;
                }
            } else if (f < getContentWidth(this.builder.substring(i3, this.builder.length()))) {
                i4 = i3;
            } else {
                length = i3;
            }
        }
        return i3;
    }

    private float getContentWidth(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0f;
        }
        float measureText = this.paint.measureText(str);
        LogUtil.d("getContentWidth=" + measureText);
        return measureText;
    }

    private float getContentHeight() {
        Paint.FontMetrics fontMetrics = this.paint.getFontMetrics();
        return Math.abs(fontMetrics.bottom - fontMetrics.top) / 2.0f;
    }

    public void setContent(String str) {
        this.content = str;
        this.xMaxOffset = Math.abs(this.width - getContentWidth(str));
        this.isShowAllText = false;
        if (this.textAlignment == 0) {
            this.xOffset = 0.0f;
        } else {
            this.xOffset = -this.xMaxOffset;
        }
        invalidate();
    }

    public void setTextColor(int i) {
        if (i != 0) {
            this.textColor = i;
            this.paint.setColor(i);
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.width <= getContentWidth(this.content)) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.isShowAllText = true;
                this.x = motionEvent.getX();
                this.tempX = this.xOffset;
            } else if (action == 2) {
                float x = motionEvent.getX() - this.x;
                LogUtil.d("onTouch:xMove=" + x + ", xOffset=" + this.xOffset);
                if (this.tempX + x > 0.0f) {
                    this.xOffset = 0.0f;
                    LogUtil.d("start:xOffset=" + this.xOffset);
                } else if (Math.abs(this.tempX + x) > this.xMaxOffset) {
                    this.xOffset = -this.xMaxOffset;
                    LogUtil.d("end:xOffset=" + this.xOffset);
                } else {
                    this.xOffset = x + this.tempX;
                    LogUtil.d("normal:xOffset=" + this.xOffset);
                }
            }
            invalidate();
        }
        return true;
    }
}
