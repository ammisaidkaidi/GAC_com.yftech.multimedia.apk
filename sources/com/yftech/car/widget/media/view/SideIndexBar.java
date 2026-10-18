package com.yftech.car.widget.media.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import com.yftech.car.widget.media.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SideIndexBar extends View {
    private static final String[] DEFAULT_INDEX_ITEMS = {ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y", "Z", "#"};
    private static final String[] DEFAULT_INDEX_ITEMS_2 = {ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, ".", ".", ".", "G", ".", ".", ".", "M", ".", ".", ".", ExifInterface.LATITUDE_SOUTH, ".", ".", ".", "Z", "#"};
    private static final String[] REPLAY_DEFAULT_INDEX_ITEMS = {"B", "C", "D", ExifInterface.LONGITUDE_EAST, "F", "H", "I", "J", "K", "L", "N", "O", "P", "Q", "R", ExifInterface.GPS_DIRECTION_TRUE, "U", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, ExifInterface.LONGITUDE_WEST, "X", "Y"};
    private final int CLICK_OFFSET;
    private int HEIGHT;
    private final int LOWER_BOUNDARY;
    private final int MARGINTOP;
    private final String TAG;
    private final int UPPER_BOUNDARY;
    private boolean isShowLetterTip;
    private final float letterHeight;
    private final float letterSize;
    private final float letterSizeTip;
    private List<String> list;
    private int mCurrentIndex;
    private float mCx;
    private List<String> mIndexItems;
    private OnIndexTouchedChangedListener mOnIndexChangedListener;
    private Paint mPaint;
    private Paint mTipPaint;
    private float realHeight;
    private float singleHeight;
    private float tipCircleR;
    private float x_down;
    private float y_down;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnIndexTouchedChangedListener {
        void onIndexChanged(String str, int i);
    }

    public SideIndexBar(Context context) {
        this(context, null);
    }

    public SideIndexBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @SuppressLint({"CustomViewStyleable"})
    public SideIndexBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = getClass().getName();
        this.mIndexItems = new ArrayList();
        this.list = Arrays.asList(REPLAY_DEFAULT_INDEX_ITEMS);
        this.mCurrentIndex = -1;
        this.isShowLetterTip = false;
        this.MARGINTOP = 20;
        this.CLICK_OFFSET = 16;
        this.UPPER_BOUNDARY = 20;
        this.LOWER_BOUNDARY = 20;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlideIndexBar);
        this.letterHeight = obtainStyledAttributes.getDimension(R.styleable.SlideIndexBar_letterHeight, 28.0f);
        this.letterSize = obtainStyledAttributes.getDimension(R.styleable.SlideIndexBar_letterSize, 28.0f);
        this.letterSizeTip = obtainStyledAttributes.getDimension(R.styleable.SlideIndexBar_letterSizeTip, 25.0f);
        obtainStyledAttributes.recycle();
        init();
    }

    private void init() {
        this.mIndexItems = new ArrayList();
        this.mIndexItems.addAll(Arrays.asList(DEFAULT_INDEX_ITEMS));
        this.mPaint = new Paint(1);
        this.mPaint.setTextSize(this.letterSize);
        this.mPaint.setColor(-16777216);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.mTipPaint = new Paint(1);
        this.mTipPaint.setTextSize(this.letterSizeTip);
        this.mTipPaint.setColor(-16777216);
        this.mTipPaint.setAntiAlias(true);
        this.mTipPaint.setTextAlign(Paint.Align.CENTER);
    }

    public void setCurrentIndex(int i) {
        this.isShowLetterTip = false;
        this.mCurrentIndex = i;
        invalidate();
    }

    public int getIndex(String str) {
        return Arrays.asList(DEFAULT_INDEX_ITEMS).indexOf(str);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            this.HEIGHT = getHeight() - 40;
            this.singleHeight = this.HEIGHT / (DEFAULT_INDEX_ITEMS_2.length * 1.0f);
            this.realHeight = this.HEIGHT / (DEFAULT_INDEX_ITEMS.length * 1.0f);
            Log.i(this.TAG, "HEIGHT:" + this.HEIGHT);
            Log.i(this.TAG, "singleHeight:" + this.singleHeight);
            Log.i(this.TAG, "realHeight:" + this.realHeight);
            Log.i(this.TAG, "DEFAULT_INDEX_ITEMS_2.length + 1:" + (DEFAULT_INDEX_ITEMS_2.length + 1));
        }
    }

    public int getCurrentIndex() {
        return this.mCurrentIndex;
    }

    public void setIndexItems(List<String> list) {
        this.mIndexItems.clear();
        if (list != null && !list.isEmpty()) {
            this.mCurrentIndex = -1;
            this.mPaint.setColor(-1);
            this.mIndexItems.addAll(list);
            setEnabled(true);
        } else {
            this.mPaint.setColor(-7829368);
            setEnabled(false);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        for (int i = 0; i < DEFAULT_INDEX_ITEMS_2.length; i++) {
            float width = getWidth() - 12;
            if (i == 0) {
                f = (this.singleHeight / 2.0f) + 20.0f;
            } else {
                f = (this.singleHeight * i) + (this.singleHeight / 2.0f) + 20.0f;
            }
            String str = DEFAULT_INDEX_ITEMS_2[i];
            if (!str.equals(".")) {
                f += 8.0f;
            }
            if (str.equals("#")) {
                f += 4.0f;
            }
            this.mPaint.setTextSize(28.0f);
            if (this.mIndexItems.contains(str)) {
                this.mPaint.setColor(-1);
            } else {
                this.mPaint.setColor(-7829368);
            }
            canvas.drawText(str, width, f, this.mPaint);
        }
        if (this.mCurrentIndex == -1 || this.mCurrentIndex >= 27 || !this.isShowLetterTip) {
            return;
        }
        drawWaterSimple(canvas, this.y_down);
        this.mTipPaint.setColor(-1);
        canvas.drawText(DEFAULT_INDEX_ITEMS[this.mCurrentIndex], getWidth() - 51.5f, this.y_down + 9.5f, this.mTipPaint);
    }

    private void drawWaterSimple(Canvas canvas, float f) {
        this.tipCircleR = 21.0f;
        float width = getWidth() - 26;
        this.mCx = (this.tipCircleR * 2.0f) + width;
        float width2 = getWidth() - 40;
        float sqrt = ((((float) Math.sqrt(3.0d)) * this.tipCircleR) / 2.0f) + f;
        float sqrt2 = f - ((((float) Math.sqrt(3.0d)) * this.tipCircleR) / 2.0f);
        Path path = new Path();
        path.setFillType(Path.FillType.EVEN_ODD);
        path.moveTo(width, f);
        path.lineTo(width2, sqrt2);
        path.lineTo(width2, sqrt);
        path.lineTo(width, f);
        path.close();
        this.mTipPaint.setColor(Color.parseColor("#009bff"));
        canvas.drawPath(path, this.mTipPaint);
        canvas.drawCircle(width - 25.0f, f, this.tipCircleR, this.mTipPaint);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return true;
        }
        switch (motionEvent.getAction()) {
            case 0:
            case 2:
                this.x_down = motionEvent.getX();
                this.y_down = motionEvent.getY();
                if (this.y_down < 20.0f || this.y_down > getHeight() - 20) {
                    return true;
                }
                this.isShowLetterTip = true;
                float y = motionEvent.getY() - 16.0f;
                int length = DEFAULT_INDEX_ITEMS.length;
                int i = (int) (y / this.realHeight);
                int i2 = i >= 0 ? i >= length ? length - 1 : i : 0;
                Log.i("SideIndexBar", "touchedIndex = " + i2 + ", indexSize = " + length + ", mCurrentIndex=" + this.mCurrentIndex);
                if (this.mOnIndexChangedListener != null && i2 >= 0 && i2 < length && i2 != this.mCurrentIndex) {
                    this.mCurrentIndex = i2;
                    String str = DEFAULT_INDEX_ITEMS[i2];
                    Log.d(this.TAG, "letter: " + str);
                    if (this.mIndexItems.contains(str)) {
                        this.mOnIndexChangedListener.onIndexChanged(str, i2);
                    }
                }
                invalidate();
                return true;
            case 1:
            case 3:
                Log.i("SideIndexBar", "MotionEvent.ACTION_CANCEL");
                this.isShowLetterTip = false;
                invalidate();
                playSoundEffect(0);
                return true;
            default:
                return true;
        }
    }

    public void setOnIndexChangedListener(OnIndexTouchedChangedListener onIndexTouchedChangedListener) {
        this.mOnIndexChangedListener = onIndexTouchedChangedListener;
    }

    private void drawWater(Canvas canvas, float f, float f2) {
        this.tipCircleR = this.letterHeight;
        float f3 = this.letterHeight * 2.0f;
        float f4 = f + 6.0f;
        this.mCx = f4 + f3;
        double sqrt = Math.sqrt((f3 * f3) - (this.tipCircleR * this.tipCircleR));
        float f5 = (this.mCx - f4) / f3;
        double asin = Math.asin(this.tipCircleR / f3);
        double d = f5;
        double cos = Math.cos(asin) * d;
        double sin = Math.sin(asin) * d;
        double d2 = -asin;
        double cos2 = Math.cos(d2) * d;
        double sin2 = d * Math.sin(d2);
        double d3 = f4;
        double d4 = f2;
        double d5 = (sin * sqrt) + d4;
        double d6 = (sin2 * sqrt) + d4;
        Path path = new Path();
        path.setFillType(Path.FillType.EVEN_ODD);
        path.moveTo(f4, f2);
        float f6 = (float) ((cos * sqrt) + d3);
        float f7 = (float) d5;
        path.lineTo(f6, f7);
        path.lineTo((float) (d3 + (cos2 * sqrt)), (float) d6);
        path.lineTo(f4, f2);
        path.close();
        canvas.drawPath(path, this.mPaint);
        canvas.drawLine(f4, f2, f6, f7, this.mPaint);
        canvas.drawCircle(this.mCx, f2, this.tipCircleR, this.mPaint);
    }
}
