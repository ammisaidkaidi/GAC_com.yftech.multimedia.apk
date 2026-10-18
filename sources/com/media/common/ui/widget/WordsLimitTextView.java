package com.media.common.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.android.internal.logging.nano.MetricsProto;

/* loaded from: /home/user/work/dex/classes3.dex */
public class WordsLimitTextView extends View {
    private final int DEFAULT_HEIGHT_SIZE;
    private final int DEFAULT_WIDTH_SIZE;
    private StringBuilder builder;
    private String content;
    private int ellipsizeStart;
    private String ellipsizeStr;
    private int height;
    private float offset;
    private TextPaint paint;
    private int textColor;
    private float textSize;
    private boolean textStyle_isBold;
    private int width;
    private int wordsLimit;

    public WordsLimitTextView(Context context) {
        super(context);
        this.textColor = -1;
        this.textSize = 26.0f;
        this.DEFAULT_WIDTH_SIZE = MetricsProto.MetricsEvent.KEYBOARD_SHORTCUTS_HELPER;
        this.DEFAULT_HEIGHT_SIZE = 50;
        this.wordsLimit = 12;
        this.ellipsizeStart = 5;
        this.textStyle_isBold = false;
        this.ellipsizeStr = "...";
        this.offset = 0.0f;
        this.content = "一二三四五六七八九十一二三四五六七八九十";
        this.builder = new StringBuilder();
    }

    public WordsLimitTextView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WordsLimitTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.textColor = -1;
        this.textSize = 26.0f;
        this.DEFAULT_WIDTH_SIZE = MetricsProto.MetricsEvent.KEYBOARD_SHORTCUTS_HELPER;
        this.DEFAULT_HEIGHT_SIZE = 50;
        this.wordsLimit = 12;
        this.ellipsizeStart = 5;
        this.textStyle_isBold = false;
        this.ellipsizeStr = "...";
        this.offset = 0.0f;
        this.content = "一二三四五六七八九十一二三四五六七八九十";
        this.builder = new StringBuilder();
        initAttr(context, attributeSet);
        initPaint();
    }

    private void initPaint() {
        this.paint = new TextPaint(1);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.textColor);
        this.paint.setTextSize(this.textSize);
        this.paint.setFakeBoldText(this.textStyle_isBold);
    }

    private void initAttr(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.WordsLimitTextView);
        this.wordsLimit = obtainStyledAttributes.getInt(R.styleable.WordsLimitTextView_words_limit_count, this.wordsLimit);
        this.ellipsizeStart = obtainStyledAttributes.getInt(R.styleable.WordsLimitTextView_words_limit_ellipsizeStart, this.ellipsizeStart);
        this.ellipsizeStr = obtainStyledAttributes.getString(R.styleable.WordsLimitTextView_words_limit_ellipsizeStr) == null ? this.ellipsizeStr : obtainStyledAttributes.getString(R.styleable.WordsLimitTextView_words_limit_ellipsizeStr);
        this.textSize = obtainStyledAttributes.getDimension(R.styleable.WordsLimitTextView_words_limit_textSize, this.textSize);
        this.content = obtainStyledAttributes.getString(R.styleable.WordsLimitTextView_words_limit_text) == null ? this.content : obtainStyledAttributes.getString(R.styleable.WordsLimitTextView_words_limit_text);
        this.textColor = obtainStyledAttributes.getColor(R.styleable.WordsLimitTextView_words_limit_textColor, this.textColor);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == Integer.MIN_VALUE) {
            this.width = Math.min(MetricsProto.MetricsEvent.KEYBOARD_SHORTCUTS_HELPER, size);
        } else if (mode == 1073741824) {
            this.width = size;
        } else {
            this.width = MetricsProto.MetricsEvent.KEYBOARD_SHORTCUTS_HELPER;
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
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
        if (this.width > getContentWidth(this.content) && this.content.length() <= this.wordsLimit) {
            canvas.drawText(this.content, 0.0f, (this.height / 2.0f) + (getContentHeight() / 2.0f), this.paint);
            return;
        }
        if (this.content.length() > this.wordsLimit) {
            float contentWidth = ((this.width - getContentWidth(this.ellipsizeStr)) - getContentWidth(this.content.substring(0, this.ellipsizeStart))) - this.offset;
            if (contentWidth - getContentWidth(this.content.substring(this.content.length() - 1)) > 0.0f) {
                canvas.drawText(this.content.substring(0, this.ellipsizeStart) + this.ellipsizeStr + this.builder.substring(calculateString(contentWidth)), 0.0f, (this.height / 2.0f) + (getContentHeight() / 2.0f), this.paint);
                return;
            }
            canvas.drawText(this.builder.substring(0, calculateString((this.width - getContentWidth(this.ellipsizeStr)) - this.offset, 0, this.content.length())) + this.ellipsizeStr, 0.0f, (this.height / 2.0f) + (getContentHeight() / 2.0f), this.paint);
            return;
        }
        canvas.drawText(this.builder.substring(0, calculateString((this.width - getContentWidth(this.ellipsizeStr)) - this.offset, 0, this.content.length())) + this.ellipsizeStr, 0.0f, (this.height / 2.0f) + (getContentHeight() / 2.0f), this.paint);
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
            if (f < getContentWidth(this.builder.substring(0, i3))) {
                length = i3;
            } else {
                i4 = i3;
            }
        }
        return i3;
    }

    private int calculateString(float f) {
        this.builder.delete(0, this.builder.length()).append(this.content.substring(this.content.length() - (this.wordsLimit - this.ellipsizeStart)));
        int length = this.builder.length();
        for (int i = 0; i < this.builder.length(); i++) {
            if (f >= getContentWidth(this.builder.substring(i))) {
                return i;
            }
        }
        return length;
    }

    private float getContentWidth(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0.0f;
        }
        return this.paint.measureText(str);
    }

    private float getContentHeight() {
        Paint.FontMetrics fontMetrics = this.paint.getFontMetrics();
        return Math.abs(fontMetrics.bottom - fontMetrics.top) / 2.0f;
    }

    public void setContent(String str) {
        this.content = str;
        invalidate();
    }

    public void setTextColor(int i) {
        if (i != 0) {
            this.textColor = i;
            this.paint.setColor(i);
        }
    }
}
