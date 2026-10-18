package com.media.common.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.core.internal.view.SupportMenu;
import com.android.internal.logging.nano.MetricsProto;
import java.util.List;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MarqueeView extends View implements Runnable {
    public static final int NOT_SCROLL = -1;
    public static final int REPET_CONTINUOUS = 2;
    public static final int REPET_INTERVAL = 1;
    public static final int REPET_ONCETIME = 0;
    private static final String TAG = "MarqueeView";
    private final int DEFAULT_SIZE;
    private String black_count;
    private String content;
    private int contentWidth;
    private boolean isClickStop;
    private boolean isResetLocation;
    private boolean isRightStart;
    private boolean isRoll;
    private String keyWords;
    private int keyWordsColor;
    private boolean mIsVisibe;
    private final int offSet;
    private float oneBlack_width;
    private TextPaint paint;
    private Rect rect;
    private int repetCount;
    private int repetType;
    private boolean resetInit;
    private float speed;
    private float startLocationDistance;
    private String string;
    private int textColor;
    private int textDistance1;
    private boolean textGravityCenterMode;
    private float textHeight;
    private float textSize;
    private boolean textStyle_isBlod;
    private int textdistance;
    private Thread thread;
    private int width;
    private float xLocation;

    public void appendContent(String str) {
    }

    public MarqueeView(Context context) {
        this(context, null);
    }

    public MarqueeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MarqueeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.speed = 1.0f;
        this.textColor = -16777216;
        this.keyWordsColor = SupportMenu.CATEGORY_MASK;
        this.textSize = 12.0f;
        this.textDistance1 = 10;
        this.black_count = "";
        this.repetType = 1;
        this.startLocationDistance = 1.0f;
        this.DEFAULT_SIZE = MetricsProto.MetricsEvent.KEYBOARD_SHORTCUTS_HELPER;
        this.textStyle_isBlod = false;
        this.textGravityCenterMode = false;
        this.isClickStop = false;
        this.isResetLocation = true;
        this.xLocation = 0.0f;
        this.isRoll = false;
        this.repetCount = 0;
        this.resetInit = true;
        this.content = "";
        this.keyWords = "";
        this.mIsVisibe = false;
        this.offSet = 15;
        initattrs(context, attributeSet);
        initpaint();
        initClick();
        if (TextUtils.isEmpty(this.content)) {
            return;
        }
        setContent(this.content);
    }

    private void initClick() {
        setOnClickListener(new View.OnClickListener() { // from class: com.media.common.ui.widget.MarqueeView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MarqueeView.this.isClickStop) {
                    if (MarqueeView.this.isRoll) {
                        MarqueeView.this.stopRoll();
                    } else {
                        MarqueeView.this.continueRoll();
                    }
                }
            }
        });
    }

    private void initattrs(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MarqueeView);
        this.content = obtainStyledAttributes.getString(R.styleable.MarqueeView_marqueeview_text) == null ? "" : obtainStyledAttributes.getString(R.styleable.MarqueeView_marqueeview_text);
        this.keyWords = obtainStyledAttributes.getString(R.styleable.MarqueeView_marqueeview_keywords) == null ? "" : obtainStyledAttributes.getString(R.styleable.MarqueeView_marqueeview_keywords);
        this.textStyle_isBlod = obtainStyledAttributes.getBoolean(R.styleable.MarqueeView_marqueeview_textStyle_isBold, false);
        this.textColor = obtainStyledAttributes.getColor(R.styleable.MarqueeView_marqueeview_text_color, this.textColor);
        this.keyWordsColor = obtainStyledAttributes.getColor(R.styleable.MarqueeView_marqueeview_keywords_color, this.keyWordsColor);
        this.isClickStop = obtainStyledAttributes.getBoolean(R.styleable.MarqueeView_marqueeview_isclickalbe_stop, this.isClickStop);
        this.isResetLocation = obtainStyledAttributes.getBoolean(R.styleable.MarqueeView_marqueeview_is_resetLocation, this.isResetLocation);
        this.speed = obtainStyledAttributes.getFloat(R.styleable.MarqueeView_marqueeview_text_speed, this.speed);
        this.textSize = obtainStyledAttributes.getFloat(R.styleable.MarqueeView_marqueeview_text_size, this.textSize);
        this.textDistance1 = obtainStyledAttributes.getInteger(R.styleable.MarqueeView_marqueeview_text_distance, this.textDistance1);
        this.startLocationDistance = obtainStyledAttributes.getFloat(R.styleable.MarqueeView_marqueeview_text_startlocationdistance, this.startLocationDistance);
        this.repetType = obtainStyledAttributes.getInt(R.styleable.MarqueeView_marqueeview_repet_type, this.repetType);
        this.textGravityCenterMode = obtainStyledAttributes.getBoolean(R.styleable.MarqueeView_marqueeview_textGravityCenterMode, this.textGravityCenterMode);
        obtainStyledAttributes.recycle();
        Locale locale = Locale.getDefault();
        this.isRightStart = locale.getLanguage().equals("ar") || locale.getLanguage().equals("he");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        Log.d(TAG, "WidthMode=" + mode + ", WidthSize=" + size);
        if (mode == Integer.MIN_VALUE) {
            this.width = Math.min(MetricsProto.MetricsEvent.KEYBOARD_SHORTCUTS_HELPER, size);
        } else if (mode == 1073741824) {
            this.width = size;
        } else {
            this.width = MetricsProto.MetricsEvent.KEYBOARD_SHORTCUTS_HELPER;
        }
        setTextDistance(this.textDistance1);
        if (this.startLocationDistance < 0.0f) {
            this.startLocationDistance = 0.0f;
        } else if (this.startLocationDistance > 1.0f) {
            this.startLocationDistance = 1.0f;
        }
        this.xLocation = this.width * this.startLocationDistance;
        this.resetInit = false;
    }

    private void initpaint() {
        this.rect = new Rect();
        this.paint = new TextPaint(1);
        this.paint.setStyle(Paint.Style.FILL);
        this.paint.setColor(this.textColor);
        this.paint.setTextSize(dp2px(this.textSize));
        this.paint.setFakeBoldText(this.textStyle_isBlod);
    }

    public int dp2px(float f) {
        return (int) ((f * getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        stopRoll();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.contentWidth < this.width || this.repetType == -1) {
            if (!this.textGravityCenterMode) {
                this.xLocation = this.width * this.startLocationDistance;
            } else {
                this.xLocation = (this.width - getContentWidth(this.content)) / 2.0f;
            }
            stopRoll();
        } else {
            if (this.mIsVisibe) {
                continueRoll();
            }
            switch (this.repetType) {
                case 1:
                    if (this.contentWidth <= (-this.xLocation)) {
                        this.xLocation = getWidth();
                        break;
                    }
                    break;
                case 2:
                    if (this.xLocation < 0.0f && ((int) ((-this.xLocation) / this.contentWidth)) >= this.repetCount) {
                        this.repetCount++;
                        this.string += this.content;
                        break;
                    }
                    break;
                default:
                    if (this.contentWidth < (-this.xLocation)) {
                        stopRoll();
                        break;
                    }
                    break;
            }
        }
        if (this.string == null) {
            return;
        }
        if (this.isRightStart) {
            float measureText = this.paint.measureText(this.string);
            float width = getWidth();
            if (width > measureText) {
                this.xLocation = width - measureText;
            }
        }
        if (TextUtils.isEmpty(this.keyWords) || !this.string.contains(this.keyWords)) {
            canvas.drawText(this.string, this.xLocation, (getHeight() / 2.0f) + (this.textHeight / 2.0f), this.paint);
            return;
        }
        String str = this.string;
        float f = this.xLocation;
        while (true) {
            int indexOf = str.indexOf(this.keyWords);
            if (indexOf == -1) {
                if (str.length() > 0) {
                    this.paint.setColor(this.textColor);
                    canvas.drawText(str, f, (getHeight() / 2.0f) + (this.textHeight / 2.0f), this.paint);
                    return;
                }
                return;
            }
            if (indexOf != 0) {
                this.paint.setColor(this.textColor);
                canvas.drawText(str.substring(0, indexOf), f, (getHeight() / 2.0f) + (this.textHeight / 2.0f), this.paint);
                f += getWordWidth(str.substring(0, indexOf));
            }
            this.paint.setColor(this.keyWordsColor);
            canvas.drawText(this.keyWords, f, (getHeight() / 2.0f) + (this.textHeight / 2.0f), this.paint);
            f += getWordWidth(str.substring(indexOf, this.keyWords.length() + indexOf));
            if (this.keyWords.length() + indexOf + 1 < str.length()) {
                str = str.substring(indexOf + this.keyWords.length());
            }
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        this.mIsVisibe = i == 0;
        if (!this.mIsVisibe) {
            stopRoll();
        } else {
            invalidate();
        }
    }

    public void setRepetType(int i) {
        this.repetType = i;
        this.resetInit = true;
        setContent(this.content);
    }

    @Override // java.lang.Runnable
    public void run() {
        while (this.isRoll && !TextUtils.isEmpty(this.content) && this.mIsVisibe) {
            try {
                Thread.sleep(10L);
                this.xLocation -= this.speed;
                postInvalidate();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    public void continueRoll() {
        if (this.isRoll) {
            return;
        }
        if (this.thread != null) {
            this.thread.interrupt();
            this.thread = null;
        }
        this.isRoll = true;
        this.thread = new Thread(this);
        this.thread.start();
    }

    public void stopRoll() {
        this.isRoll = false;
        if (this.thread != null) {
            this.thread.interrupt();
            this.thread = null;
        }
    }

    private void setClickStop(boolean z) {
        this.isClickStop = z;
    }

    private void setContinueble(int i) {
        this.repetType = i;
    }

    public void setTextDistance(int i) {
        this.oneBlack_width = getBlacktWidth();
        int dp2px = (int) (dp2px(i) / this.oneBlack_width);
        if (dp2px == 0) {
            dp2px = 1;
        }
        this.textdistance = (int) (this.oneBlack_width * dp2px);
        this.black_count = "";
        for (int i2 = 0; i2 <= dp2px; i2++) {
            this.black_count += " ";
        }
        setContent(this.content);
    }

    private float getBlacktWidth() {
        return getContentWidth("en en") - getContentWidth("enen");
    }

    private float getContentWidth(String str) {
        if (str == null || str == "") {
            return 0.0f;
        }
        if (this.rect == null) {
            this.rect = new Rect();
        }
        this.paint.getTextBounds(str, 0, str.length(), this.rect);
        this.textHeight = getContentHeight();
        return this.rect.width() + 15;
    }

    private float getWordWidth(String str) {
        return this.paint.measureText(str);
    }

    private float getContentHeight() {
        Paint.FontMetrics fontMetrics = this.paint.getFontMetrics();
        return Math.abs(fontMetrics.bottom - fontMetrics.top) / 2.0f;
    }

    public void setTextColor(int i) {
        if (i != 0) {
            this.textColor = i;
            this.paint.setColor(i);
        }
    }

    public void setTextSize(float f) {
        if (f > 0.0f) {
            this.textSize = f;
            this.paint.setTextSize(dp2px(f));
            this.contentWidth = (int) (getContentWidth(this.content) + this.textdistance);
        }
    }

    public void setTextSpeed(float f) {
        this.speed = f;
    }

    public void setKeyWords(String str) {
        this.keyWords = str;
        invalidate();
    }

    public void setContent(List<String> list) {
        setTextDistance(this.textDistance1);
        String str = "";
        if (list != null && list.size() != 0) {
            for (int i = 0; i < list.size(); i++) {
                str = str + list.get(i) + this.black_count;
            }
        }
        setContent(str);
    }

    public void setContent(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.thread != null) {
            this.thread.interrupt();
            this.thread = null;
        }
        if (this.isResetLocation) {
            this.xLocation = this.width * this.startLocationDistance;
        }
        if (!str.endsWith(this.black_count)) {
            str = str + this.black_count;
        }
        this.content = str;
        float contentWidth = getContentWidth(this.content);
        if (contentWidth < this.width) {
            this.contentWidth = (int) contentWidth;
            this.string = str;
        } else if (this.repetType == 2) {
            this.contentWidth = (int) (getContentWidth(this.content) + this.textdistance);
            this.repetCount = 0;
            int i = (this.width / this.contentWidth) + 2;
            this.string = "";
            for (int i2 = 0; i2 <= i; i2++) {
                this.string += this.content;
            }
        } else {
            if (this.xLocation < 0.0f && this.repetType == 0 && (-this.xLocation) > this.contentWidth) {
                this.xLocation = getWidth() * this.startLocationDistance;
            }
            this.contentWidth = (int) getContentWidth(this.content);
            this.string = str;
        }
        invalidate();
    }

    private void setResetLocation(boolean z) {
        this.isResetLocation = z;
    }
}
