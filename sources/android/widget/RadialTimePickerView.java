package android.widget;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.os.Bundle;
import android.telephony.ims.ImsReasonInfo;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.FloatProperty;
import android.util.IntArray;
import android.util.Log;
import android.util.MathUtils;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.android.internal.widget.ExploreByTouchHelper;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Array;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes2.dex */
public class RadialTimePickerView extends View {
    private static final int AM = 0;
    private static final int ANIM_DURATION_NORMAL = 500;
    private static final int ANIM_DURATION_TOUCH = 60;
    private static final int DEGREES_FOR_ONE_HOUR = 30;
    private static final int DEGREES_FOR_ONE_MINUTE = 6;
    public static final int HOURS = 0;
    private static final int HOURS_INNER = 2;
    private static final int HOURS_IN_CIRCLE = 12;
    public static final int MINUTES = 1;
    private static final int MINUTES_IN_CIRCLE = 60;
    private static final int MISSING_COLOR = -65281;
    private static final int NUM_POSITIONS = 12;
    private static final int PM = 1;
    private static final int SELECTOR_CIRCLE = 0;
    private static final int SELECTOR_DOT = 1;
    private static final int SELECTOR_LINE = 2;
    private static final String TAG = "RadialTimePickerView";
    private final FloatProperty<RadialTimePickerView> HOURS_TO_MINUTES;
    private int mAmOrPm;
    private int mCenterDotRadius;
    boolean mChangedDuringTouch;
    private int mCircleRadius;
    private float mDisabledAlpha;
    private int mHalfwayDist;
    private final String[] mHours12Texts;
    private float mHoursToMinutes;
    private ObjectAnimator mHoursToMinutesAnimator;
    private final String[] mInnerHours24Texts;
    private String[] mInnerTextHours;
    private final float[] mInnerTextX;
    private final float[] mInnerTextY;
    private boolean mInputEnabled;
    private boolean mIs24HourMode;
    private boolean mIsOnInnerCircle;
    private OnValueSelectedListener mListener;
    private int mMaxDistForOuterNumber;
    private int mMinDistForInnerNumber;
    private String[] mMinutesText;
    private final String[] mMinutesTexts;
    private final String[] mOuterHours24Texts;
    private String[] mOuterTextHours;
    private final float[][] mOuterTextX;
    private final float[][] mOuterTextY;
    private final Paint[] mPaint;
    private final Paint mPaintBackground;
    private final Paint mPaintCenter;
    private final Paint[] mPaintSelector;
    private final int[] mSelectionDegrees;
    private int mSelectorColor;
    private int mSelectorDotColor;
    private int mSelectorDotRadius;
    private final Path mSelectorPath;
    private int mSelectorRadius;
    private int mSelectorStroke;
    private boolean mShowHours;
    private final ColorStateList[] mTextColor;
    private final int[] mTextInset;
    private final int[] mTextSize;
    private final RadialPickerTouchHelper mTouchHelper;
    private final Typeface mTypeface;
    private int mXCenter;
    private int mYCenter;
    private static final int[] HOURS_NUMBERS = {12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11};
    private static final int[] HOURS_NUMBERS_24 = {0, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23};
    private static final int[] MINUTES_NUMBERS = {0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55};
    private static final int[] SNAP_PREFER_30S_MAP = new int[ImsReasonInfo.CODE_SIP_USER_REJECTED];
    private static final float[] COS_30 = new float[12];
    private static final float[] SIN_30 = new float[12];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface OnValueSelectedListener {
        void onValueSelected(int i, int i2, boolean z);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    @interface PickerType {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDegreesForMinute(int i) {
        return i * 6;
    }

    static {
        preparePrefer30sMap();
        double d = 1.5707963267948966d;
        for (int i = 0; i < 12; i++) {
            COS_30[i] = (float) Math.cos(d);
            SIN_30[i] = (float) Math.sin(d);
            d += 0.5235987755982988d;
        }
    }

    private static void preparePrefer30sMap() {
        int i;
        int i2 = 1;
        int i3 = 8;
        int i4 = 0;
        for (int i5 = 0; i5 < 361; i5++) {
            SNAP_PREFER_30S_MAP[i5] = i4;
            if (i2 == i3) {
                i4 += 6;
                if (i4 == 360) {
                    i = 7;
                } else {
                    i = i4 % 30 == 0 ? 14 : 4;
                }
                i3 = i;
                i2 = 1;
            } else {
                i2++;
            }
        }
    }

    private static int snapPrefer30s(int i) {
        if (SNAP_PREFER_30S_MAP == null) {
            return -1;
        }
        return SNAP_PREFER_30S_MAP[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int snapOnly30s(int i, int i2) {
        int i3 = (i / 30) * 30;
        int i4 = i3 + 30;
        if (i2 != 1) {
            if (i2 == -1) {
                return i == i3 ? i3 - 30 : i3;
            }
            if (i - i3 < i4 - i) {
                return i3;
            }
        }
        return i4;
    }

    public RadialTimePickerView(Context context) {
        this(context, null);
    }

    public RadialTimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.timePickerStyle);
    }

    public RadialTimePickerView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public RadialTimePickerView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet);
        this.HOURS_TO_MINUTES = new FloatProperty<RadialTimePickerView>("hoursToMinutes") { // from class: android.widget.RadialTimePickerView.1
            @Override // android.util.Property
            public Float get(RadialTimePickerView radialTimePickerView) {
                return Float.valueOf(radialTimePickerView.mHoursToMinutes);
            }

            @Override // android.util.FloatProperty
            public void setValue(RadialTimePickerView radialTimePickerView, float f) {
                radialTimePickerView.mHoursToMinutes = f;
                radialTimePickerView.invalidate();
            }
        };
        this.mHours12Texts = new String[12];
        this.mOuterHours24Texts = new String[12];
        this.mInnerHours24Texts = new String[12];
        this.mMinutesTexts = new String[12];
        this.mPaint = new Paint[2];
        this.mPaintCenter = new Paint();
        this.mPaintSelector = new Paint[3];
        this.mPaintBackground = new Paint();
        this.mTextColor = new ColorStateList[3];
        this.mTextSize = new int[3];
        this.mTextInset = new int[3];
        this.mOuterTextX = (float[][]) Array.newInstance((Class<?>) float.class, 2, 12);
        this.mOuterTextY = (float[][]) Array.newInstance((Class<?>) float.class, 2, 12);
        this.mInnerTextX = new float[12];
        this.mInnerTextY = new float[12];
        this.mSelectionDegrees = new int[2];
        this.mSelectorPath = new Path();
        this.mInputEnabled = true;
        this.mChangedDuringTouch = false;
        applyAttributes(attributeSet, i, i2);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        this.mDisabledAlpha = typedValue.getFloat();
        this.mTypeface = Typeface.create("sans-serif", 0);
        this.mPaint[0] = new Paint();
        this.mPaint[0].setAntiAlias(true);
        this.mPaint[0].setTextAlign(Paint.Align.CENTER);
        this.mPaint[1] = new Paint();
        this.mPaint[1].setAntiAlias(true);
        this.mPaint[1].setTextAlign(Paint.Align.CENTER);
        this.mPaintCenter.setAntiAlias(true);
        this.mPaintSelector[0] = new Paint();
        this.mPaintSelector[0].setAntiAlias(true);
        this.mPaintSelector[1] = new Paint();
        this.mPaintSelector[1].setAntiAlias(true);
        this.mPaintSelector[2] = new Paint();
        this.mPaintSelector[2].setAntiAlias(true);
        this.mPaintSelector[2].setStrokeWidth(2.0f);
        this.mPaintBackground.setAntiAlias(true);
        Resources resources = getResources();
        this.mSelectorRadius = resources.getDimensionPixelSize(R.dimen.notification_min_height);
        this.mSelectorStroke = resources.getDimensionPixelSize(R.dimen.notification_progress_bar_height);
        this.mSelectorDotRadius = resources.getDimensionPixelSize(R.dimen.notification_min_content_height);
        this.mCenterDotRadius = resources.getDimensionPixelSize(R.dimen.notification_inbox_item_top_padding);
        this.mTextSize[0] = resources.getDimensionPixelSize(R.dimen.notification_secondary_text_disabled_alpha);
        this.mTextSize[1] = resources.getDimensionPixelSize(R.dimen.notification_secondary_text_disabled_alpha);
        this.mTextSize[2] = resources.getDimensionPixelSize(R.dimen.notification_right_icon_size_low_ram);
        this.mTextInset[0] = resources.getDimensionPixelSize(R.dimen.notification_right_icon_size);
        this.mTextInset[1] = resources.getDimensionPixelSize(R.dimen.notification_right_icon_size);
        this.mTextInset[2] = resources.getDimensionPixelSize(R.dimen.notification_reply_inset);
        this.mShowHours = true;
        this.mHoursToMinutes = 0.0f;
        this.mIs24HourMode = false;
        this.mAmOrPm = 0;
        this.mTouchHelper = new RadialPickerTouchHelper();
        setAccessibilityDelegate(this.mTouchHelper);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        initHoursAndMinutesText();
        initData();
        Calendar calendar = Calendar.getInstance(Locale.getDefault());
        int i3 = calendar.get(11);
        int i4 = calendar.get(12);
        setCurrentHourInternal(i3, false, false);
        setCurrentMinuteInternal(i4, false);
        setHapticFeedbackEnabled(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void applyAttributes(AttributeSet attributeSet, int i, int i2) {
        Context context = getContext();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.TimePicker, i, i2);
        ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(3);
        ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(9);
        ColorStateList[] colorStateListArr = this.mTextColor;
        int i3 = MISSING_COLOR;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(MISSING_COLOR);
        }
        colorStateListArr[0] = colorStateList;
        ColorStateList[] colorStateListArr2 = this.mTextColor;
        if (colorStateList2 == null) {
            colorStateList2 = ColorStateList.valueOf(MISSING_COLOR);
        }
        colorStateListArr2[2] = colorStateList2;
        this.mTextColor[1] = this.mTextColor[0];
        ColorStateList colorStateList3 = obtainStyledAttributes.getColorStateList(5);
        if (colorStateList3 != null) {
            i3 = colorStateList3.getColorForState(StateSet.get(40), 0);
        }
        this.mPaintCenter.setColor(i3);
        int[] iArr = StateSet.get(40);
        this.mSelectorColor = i3;
        this.mSelectorDotColor = this.mTextColor[0].getColorForState(iArr, 0);
        this.mPaintBackground.setColor(obtainStyledAttributes.getColor(4, context.getColor(R.color.material_grey_850)));
        obtainStyledAttributes.recycle();
    }

    public void initialize(int i, int i2, boolean z) {
        if (this.mIs24HourMode != z) {
            this.mIs24HourMode = z;
            initData();
        }
        setCurrentHourInternal(i, false, false);
        setCurrentMinuteInternal(i2, false);
    }

    public void setCurrentItemShowing(int i, boolean z) {
        switch (i) {
            case 0:
                showHours(z);
                return;
            case 1:
                showMinutes(z);
                return;
            default:
                Log.e(TAG, "ClockView does not support showing item " + i);
                return;
        }
    }

    public int getCurrentItemShowing() {
        return !this.mShowHours ? 1 : 0;
    }

    public void setOnValueSelectedListener(OnValueSelectedListener onValueSelectedListener) {
        this.mListener = onValueSelectedListener;
    }

    public void setCurrentHour(int i) {
        setCurrentHourInternal(i, true, false);
    }

    private void setCurrentHourInternal(int i, boolean z, boolean z2) {
        this.mSelectionDegrees[0] = (i % 12) * 30;
        int i2 = (i == 0 || i % 24 < 12) ? 0 : 1;
        boolean innerCircleForHour = getInnerCircleForHour(i);
        if (this.mAmOrPm != i2 || this.mIsOnInnerCircle != innerCircleForHour) {
            this.mAmOrPm = i2;
            this.mIsOnInnerCircle = innerCircleForHour;
            initData();
            this.mTouchHelper.invalidateRoot();
        }
        invalidate();
        if (!z || this.mListener == null) {
            return;
        }
        this.mListener.onValueSelected(0, i, z2);
    }

    public int getCurrentHour() {
        return getHourForDegrees(this.mSelectionDegrees[0], this.mIsOnInnerCircle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getHourForDegrees(int i, boolean z) {
        int i2 = (i / 30) % 12;
        if (this.mIs24HourMode) {
            if (!z && i2 == 0) {
                return 12;
            }
            if (z && i2 != 0) {
                return i2 + 12;
            }
        } else if (this.mAmOrPm == 1) {
            return i2 + 12;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDegreesForHour(int i) {
        if (this.mIs24HourMode) {
            if (i >= 12) {
                i -= 12;
            }
        } else if (i == 12) {
            i = 0;
        }
        return i * 30;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getInnerCircleForHour(int i) {
        return this.mIs24HourMode && (i == 0 || i > 12);
    }

    public void setCurrentMinute(int i) {
        setCurrentMinuteInternal(i, true);
    }

    private void setCurrentMinuteInternal(int i, boolean z) {
        this.mSelectionDegrees[1] = (i % 60) * 6;
        invalidate();
        if (!z || this.mListener == null) {
            return;
        }
        this.mListener.onValueSelected(1, i, false);
    }

    public int getCurrentMinute() {
        return getMinuteForDegrees(this.mSelectionDegrees[1]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getMinuteForDegrees(int i) {
        return i / 6;
    }

    public boolean setAmOrPm(int i) {
        if (this.mAmOrPm == i || this.mIs24HourMode) {
            return false;
        }
        this.mAmOrPm = i;
        invalidate();
        this.mTouchHelper.invalidateRoot();
        return true;
    }

    public int getAmOrPm() {
        return this.mAmOrPm;
    }

    public void showHours(boolean z) {
        showPicker(true, z);
    }

    public void showMinutes(boolean z) {
        showPicker(false, z);
    }

    private void initHoursAndMinutesText() {
        for (int i = 0; i < 12; i++) {
            this.mHours12Texts[i] = String.format("%d", Integer.valueOf(HOURS_NUMBERS[i]));
            this.mInnerHours24Texts[i] = String.format("%02d", Integer.valueOf(HOURS_NUMBERS_24[i]));
            this.mOuterHours24Texts[i] = String.format("%d", Integer.valueOf(HOURS_NUMBERS[i]));
            this.mMinutesTexts[i] = String.format("%02d", Integer.valueOf(MINUTES_NUMBERS[i]));
        }
    }

    private void initData() {
        if (this.mIs24HourMode) {
            this.mOuterTextHours = this.mOuterHours24Texts;
            this.mInnerTextHours = this.mInnerHours24Texts;
        } else {
            this.mOuterTextHours = this.mHours12Texts;
            this.mInnerTextHours = this.mHours12Texts;
        }
        this.mMinutesText = this.mMinutesTexts;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (z) {
            this.mXCenter = getWidth() / 2;
            this.mYCenter = getHeight() / 2;
            this.mCircleRadius = Math.min(this.mXCenter, this.mYCenter);
            this.mMinDistForInnerNumber = (this.mCircleRadius - this.mTextInset[2]) - this.mSelectorRadius;
            this.mMaxDistForOuterNumber = (this.mCircleRadius - this.mTextInset[0]) + this.mSelectorRadius;
            this.mHalfwayDist = this.mCircleRadius - ((this.mTextInset[0] + this.mTextInset[2]) / 2);
            calculatePositionsHours();
            calculatePositionsMinutes();
            this.mTouchHelper.invalidateRoot();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f = this.mInputEnabled ? 1.0f : this.mDisabledAlpha;
        drawCircleBackground(canvas);
        Path path = this.mSelectorPath;
        drawSelector(canvas, path);
        drawHours(canvas, path, f);
        drawMinutes(canvas, path, f);
        drawCenter(canvas, f);
    }

    private void showPicker(boolean z, boolean z2) {
        if (this.mShowHours == z) {
            return;
        }
        this.mShowHours = z;
        if (z2) {
            animatePicker(z, 500L);
        } else {
            if (this.mHoursToMinutesAnimator != null && this.mHoursToMinutesAnimator.isStarted()) {
                this.mHoursToMinutesAnimator.cancel();
                this.mHoursToMinutesAnimator = null;
            }
            this.mHoursToMinutes = z ? 0.0f : 1.0f;
        }
        initData();
        invalidate();
        this.mTouchHelper.invalidateRoot();
    }

    private void animatePicker(boolean z, long j) {
        float f = z ? 0.0f : 1.0f;
        if (this.mHoursToMinutes == f) {
            if (this.mHoursToMinutesAnimator == null || !this.mHoursToMinutesAnimator.isStarted()) {
                return;
            }
            this.mHoursToMinutesAnimator.cancel();
            this.mHoursToMinutesAnimator = null;
            return;
        }
        this.mHoursToMinutesAnimator = ObjectAnimator.ofFloat(this, this.HOURS_TO_MINUTES, f);
        this.mHoursToMinutesAnimator.setAutoCancel(true);
        this.mHoursToMinutesAnimator.setDuration(j);
        this.mHoursToMinutesAnimator.start();
    }

    private void drawCircleBackground(Canvas canvas) {
        canvas.drawCircle(this.mXCenter, this.mYCenter, this.mCircleRadius, this.mPaintBackground);
    }

    private void drawHours(Canvas canvas, Path path, float f) {
        int i = (int) (((1.0f - this.mHoursToMinutes) * 255.0f * f) + 0.5f);
        if (i > 0) {
            canvas.save(2);
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            drawHoursClipped(canvas, i, false);
            canvas.restore();
            canvas.save(2);
            canvas.clipPath(path, Region.Op.INTERSECT);
            drawHoursClipped(canvas, i, true);
            canvas.restore();
        }
    }

    private void drawHoursClipped(Canvas canvas, int i, boolean z) {
        drawTextElements(canvas, this.mTextSize[0], this.mTypeface, this.mTextColor[0], this.mOuterTextHours, this.mOuterTextX[0], this.mOuterTextY[0], this.mPaint[0], i, z && !this.mIsOnInnerCircle, this.mSelectionDegrees[0], z);
        if (!this.mIs24HourMode || this.mInnerTextHours == null) {
            return;
        }
        drawTextElements(canvas, this.mTextSize[2], this.mTypeface, this.mTextColor[2], this.mInnerTextHours, this.mInnerTextX, this.mInnerTextY, this.mPaint[0], i, z && this.mIsOnInnerCircle, this.mSelectionDegrees[0], z);
    }

    private void drawMinutes(Canvas canvas, Path path, float f) {
        int i = (int) ((this.mHoursToMinutes * 255.0f * f) + 0.5f);
        if (i > 0) {
            canvas.save(2);
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            drawMinutesClipped(canvas, i, false);
            canvas.restore();
            canvas.save(2);
            canvas.clipPath(path, Region.Op.INTERSECT);
            drawMinutesClipped(canvas, i, true);
            canvas.restore();
        }
    }

    private void drawMinutesClipped(Canvas canvas, int i, boolean z) {
        drawTextElements(canvas, this.mTextSize[1], this.mTypeface, this.mTextColor[1], this.mMinutesText, this.mOuterTextX[1], this.mOuterTextY[1], this.mPaint[1], i, z, this.mSelectionDegrees[1], z);
    }

    private void drawCenter(Canvas canvas, float f) {
        this.mPaintCenter.setAlpha((int) ((f * 255.0f) + 0.5f));
        canvas.drawCircle(this.mXCenter, this.mYCenter, this.mCenterDotRadius, this.mPaintCenter);
    }

    private int getMultipliedAlpha(int i, int i2) {
        return (int) ((Color.alpha(i) * (i2 / 255.0d)) + 0.5d);
    }

    private void drawSelector(Canvas canvas, Path path) {
        int i = this.mIsOnInnerCircle ? 2 : 0;
        int i2 = this.mTextInset[i];
        int i3 = i % 2;
        int i4 = this.mSelectionDegrees[i3];
        float f = this.mSelectionDegrees[i3] % 30 != 0 ? 1.0f : 0.0f;
        int i5 = this.mTextInset[1];
        int i6 = this.mSelectionDegrees[1];
        float f2 = this.mSelectionDegrees[1] % 30 == 0 ? 0.0f : 1.0f;
        int i7 = this.mSelectorRadius;
        float lerp = this.mCircleRadius - MathUtils.lerp(i2, i5, this.mHoursToMinutes);
        double radians = Math.toRadians(MathUtils.lerpDeg(i4, i6, this.mHoursToMinutes));
        float sin = this.mXCenter + (((float) Math.sin(radians)) * lerp);
        float cos = this.mYCenter - (((float) Math.cos(radians)) * lerp);
        Paint paint = this.mPaintSelector[0];
        paint.setColor(this.mSelectorColor);
        float f3 = i7;
        canvas.drawCircle(sin, cos, f3, paint);
        if (path != null) {
            path.reset();
            path.addCircle(sin, cos, f3, Path.Direction.CCW);
        }
        float lerp2 = MathUtils.lerp(f, f2, this.mHoursToMinutes);
        if (lerp2 > 0.0f) {
            Paint paint2 = this.mPaintSelector[1];
            paint2.setColor(this.mSelectorDotColor);
            canvas.drawCircle(sin, cos, this.mSelectorDotRadius * lerp2, paint2);
        }
        double sin2 = Math.sin(radians);
        double cos2 = Math.cos(radians);
        double d = lerp - f3;
        float f4 = this.mXCenter + ((int) (this.mCenterDotRadius * sin2)) + ((int) (sin2 * d));
        float f5 = (this.mYCenter - ((int) (this.mCenterDotRadius * cos2))) - ((int) (d * cos2));
        Paint paint3 = this.mPaintSelector[2];
        paint3.setColor(this.mSelectorColor);
        paint3.setStrokeWidth(this.mSelectorStroke);
        canvas.drawLine(this.mXCenter, this.mYCenter, f4, f5, paint3);
    }

    private void calculatePositionsHours() {
        calculatePositions(this.mPaint[0], this.mCircleRadius - this.mTextInset[0], this.mXCenter, this.mYCenter, this.mTextSize[0], this.mOuterTextX[0], this.mOuterTextY[0]);
        if (this.mIs24HourMode) {
            calculatePositions(this.mPaint[0], this.mCircleRadius - this.mTextInset[2], this.mXCenter, this.mYCenter, this.mTextSize[2], this.mInnerTextX, this.mInnerTextY);
        }
    }

    private void calculatePositionsMinutes() {
        calculatePositions(this.mPaint[1], this.mCircleRadius - this.mTextInset[1], this.mXCenter, this.mYCenter, this.mTextSize[1], this.mOuterTextX[1], this.mOuterTextY[1]);
    }

    private static void calculatePositions(Paint paint, float f, float f2, float f3, float f4, float[] fArr, float[] fArr2) {
        paint.setTextSize(f4);
        float descent = f3 - ((paint.descent() + paint.ascent()) / 2.0f);
        for (int i = 0; i < 12; i++) {
            fArr[i] = f2 - (COS_30[i] * f);
            fArr2[i] = descent - (SIN_30[i] * f);
        }
    }

    private void drawTextElements(Canvas canvas, float f, Typeface typeface, ColorStateList colorStateList, String[] strArr, float[] fArr, float[] fArr2, Paint paint, int i, boolean z, int i2, boolean z2) {
        paint.setTextSize(f);
        paint.setTypeface(typeface);
        float f2 = i2 / 30.0f;
        int i3 = (int) f2;
        int i4 = 12;
        int ceil = ((int) Math.ceil(f2)) % 12;
        int i5 = 0;
        int i6 = 0;
        while (i6 < i4) {
            int i7 = (i3 == i6 || ceil == i6) ? 1 : i5;
            if (!z2 || i7 != 0) {
                int colorForState = colorStateList.getColorForState(StateSet.get(((!z || i7 == 0) ? i5 : 32) | 8), i5);
                paint.setColor(colorForState);
                paint.setAlpha(getMultipliedAlpha(colorForState, i));
                canvas.drawText(strArr[i6], fArr[i6], fArr2[i6], paint);
            }
            i6++;
            i4 = 12;
            i5 = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getDegreesFromXY(float f, float f2, boolean z) {
        int i;
        int i2;
        if (this.mIs24HourMode && this.mShowHours) {
            i = this.mMinDistForInnerNumber;
            i2 = this.mMaxDistForOuterNumber;
        } else {
            int i3 = this.mCircleRadius - this.mTextInset[!this.mShowHours ? 1 : 0];
            i = i3 - this.mSelectorRadius;
            i2 = i3 + this.mSelectorRadius;
        }
        double d = f - this.mXCenter;
        double d2 = f2 - this.mYCenter;
        double sqrt = Math.sqrt((d * d) + (d2 * d2));
        if (sqrt < i) {
            return -1;
        }
        if (z && sqrt > i2) {
            return -1;
        }
        int degrees = (int) (Math.toDegrees(Math.atan2(d2, d) + 1.5707963267948966d) + 0.5d);
        return degrees < 0 ? degrees + DisplayMetrics.DENSITY_360 : degrees;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean getInnerCircleFromXY(float f, float f2) {
        if (!this.mIs24HourMode || !this.mShowHours) {
            return false;
        }
        double d = f - this.mXCenter;
        double d2 = f2 - this.mYCenter;
        return Math.sqrt((d * d) + (d2 * d2)) <= ((double) this.mHalfwayDist);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (!this.mInputEnabled) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 2 || actionMasked == 1 || actionMasked == 0) {
            boolean z2 = false;
            if (actionMasked == 0) {
                this.mChangedDuringTouch = false;
            } else if (actionMasked == 1) {
                if (this.mChangedDuringTouch) {
                    z = true;
                } else {
                    z = true;
                    z2 = true;
                }
                this.mChangedDuringTouch = handleTouchInput(motionEvent.getX(), motionEvent.getY(), z2, z) | this.mChangedDuringTouch;
            }
            z = false;
            this.mChangedDuringTouch = handleTouchInput(motionEvent.getX(), motionEvent.getY(), z2, z) | this.mChangedDuringTouch;
        }
        return true;
    }

    private boolean handleTouchInput(float f, float f2, boolean z, boolean z2) {
        boolean z3;
        int currentMinute;
        int i;
        boolean innerCircleFromXY = getInnerCircleFromXY(f, f2);
        int degreesFromXY = getDegreesFromXY(f, f2, false);
        if (degreesFromXY == -1) {
            return false;
        }
        animatePicker(this.mShowHours, 60L);
        if (this.mShowHours) {
            int snapOnly30s = snapOnly30s(degreesFromXY, 0) % DisplayMetrics.DENSITY_360;
            z3 = (this.mIsOnInnerCircle == innerCircleFromXY && this.mSelectionDegrees[0] == snapOnly30s) ? false : true;
            this.mIsOnInnerCircle = innerCircleFromXY;
            this.mSelectionDegrees[0] = snapOnly30s;
            currentMinute = getCurrentHour();
            i = 0;
        } else {
            int snapPrefer30s = snapPrefer30s(degreesFromXY) % DisplayMetrics.DENSITY_360;
            z3 = this.mSelectionDegrees[1] != snapPrefer30s;
            this.mSelectionDegrees[1] = snapPrefer30s;
            currentMinute = getCurrentMinute();
            i = 1;
        }
        if (!z3 && !z && !z2) {
            return false;
        }
        if (this.mListener != null) {
            this.mListener.onValueSelected(i, currentMinute, z2);
        }
        if (z3 || z) {
            performHapticFeedback(4);
            invalidate();
        }
        return true;
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.mTouchHelper.dispatchHoverEvent(motionEvent)) {
            return true;
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    public void setInputEnabled(boolean z) {
        this.mInputEnabled = z;
        invalidate();
    }

    @Override // android.view.View
    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (!isEnabled()) {
            return null;
        }
        if (getDegreesFromXY(motionEvent.getX(), motionEvent.getY(), false) != -1) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return super.onResolvePointerIcon(motionEvent, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public class RadialPickerTouchHelper extends ExploreByTouchHelper {
        private final int MASK_TYPE;
        private final int MASK_VALUE;
        private final int MINUTE_INCREMENT;
        private final int SHIFT_TYPE;
        private final int SHIFT_VALUE;
        private final int TYPE_HOUR;
        private final int TYPE_MINUTE;
        private final Rect mTempRect;

        private int getTypeFromId(int i) {
            return (i >>> 0) & 15;
        }

        private int getValueFromId(int i) {
            return (i >>> 8) & 255;
        }

        private int hour12To24(int i, int i2) {
            if (i != 12) {
                return i2 == 1 ? i + 12 : i;
            }
            if (i2 == 0) {
                return 0;
            }
            return i;
        }

        private int hour24To12(int i) {
            if (i == 0) {
                return 12;
            }
            return i > 12 ? i - 12 : i;
        }

        private int makeId(int i, int i2) {
            return (i << 0) | (i2 << 8);
        }

        public RadialPickerTouchHelper() {
            super(RadialTimePickerView.this);
            this.mTempRect = new Rect();
            this.TYPE_HOUR = 1;
            this.TYPE_MINUTE = 2;
            this.SHIFT_TYPE = 0;
            this.MASK_TYPE = 15;
            this.SHIFT_VALUE = 8;
            this.MASK_VALUE = 255;
            this.MINUTE_INCREMENT = 5;
        }

        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        }

        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                adjustPicker(1);
                return true;
            }
            if (i != 8192) {
                return false;
            }
            adjustPicker(-1);
            return true;
        }

        private void adjustPicker(int i) {
            int currentMinute;
            int i2;
            int i3 = 0;
            int i4 = 1;
            if (RadialTimePickerView.this.mShowHours) {
                currentMinute = RadialTimePickerView.this.getCurrentHour();
                if (RadialTimePickerView.this.mIs24HourMode) {
                    i2 = 23;
                } else {
                    currentMinute = hour24To12(currentMinute);
                    i2 = 12;
                    i3 = 1;
                }
            } else {
                i4 = 5;
                currentMinute = RadialTimePickerView.this.getCurrentMinute() / 5;
                i2 = 55;
            }
            int constrain = MathUtils.constrain((currentMinute + i) * i4, i3, i2);
            if (RadialTimePickerView.this.mShowHours) {
                RadialTimePickerView.this.setCurrentHour(constrain);
            } else {
                RadialTimePickerView.this.setCurrentMinute(constrain);
            }
        }

        protected int getVirtualViewAt(float f, float f2) {
            int degreesFromXY = RadialTimePickerView.this.getDegreesFromXY(f, f2, true);
            if (degreesFromXY == -1) {
                return Integer.MIN_VALUE;
            }
            int snapOnly30s = RadialTimePickerView.snapOnly30s(degreesFromXY, 0) % DisplayMetrics.DENSITY_360;
            if (RadialTimePickerView.this.mShowHours) {
                int hourForDegrees = RadialTimePickerView.this.getHourForDegrees(snapOnly30s, RadialTimePickerView.this.getInnerCircleFromXY(f, f2));
                if (!RadialTimePickerView.this.mIs24HourMode) {
                    hourForDegrees = hour24To12(hourForDegrees);
                }
                return makeId(1, hourForDegrees);
            }
            int currentMinute = RadialTimePickerView.this.getCurrentMinute();
            int minuteForDegrees = RadialTimePickerView.this.getMinuteForDegrees(degreesFromXY);
            int minuteForDegrees2 = RadialTimePickerView.this.getMinuteForDegrees(snapOnly30s);
            if (getCircularDiff(currentMinute, minuteForDegrees, 60) >= getCircularDiff(minuteForDegrees2, minuteForDegrees, 60)) {
                currentMinute = minuteForDegrees2;
            }
            return makeId(2, currentMinute);
        }

        private int getCircularDiff(int i, int i2, int i3) {
            int abs = Math.abs(i - i2);
            return abs > i3 / 2 ? i3 - abs : abs;
        }

        protected void getVisibleVirtualViews(IntArray intArray) {
            if (RadialTimePickerView.this.mShowHours) {
                int i = RadialTimePickerView.this.mIs24HourMode ? 23 : 12;
                for (int i2 = !RadialTimePickerView.this.mIs24HourMode ? 1 : 0; i2 <= i; i2++) {
                    intArray.add(makeId(1, i2));
                }
                return;
            }
            int currentMinute = RadialTimePickerView.this.getCurrentMinute();
            for (int i3 = 0; i3 < 60; i3 += 5) {
                intArray.add(makeId(2, i3));
                if (currentMinute > i3 && currentMinute < i3 + 5) {
                    intArray.add(makeId(2, currentMinute));
                }
            }
        }

        protected void onPopulateEventForVirtualView(int i, AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setContentDescription(getVirtualViewDescription(getTypeFromId(i), getValueFromId(i)));
        }

        protected void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfo accessibilityNodeInfo) {
            accessibilityNodeInfo.setClassName(getClass().getName());
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_CLICK);
            int typeFromId = getTypeFromId(i);
            int valueFromId = getValueFromId(i);
            accessibilityNodeInfo.setContentDescription(getVirtualViewDescription(typeFromId, valueFromId));
            getBoundsForVirtualView(i, this.mTempRect);
            accessibilityNodeInfo.setBoundsInParent(this.mTempRect);
            accessibilityNodeInfo.setSelected(isVirtualViewSelected(typeFromId, valueFromId));
            int virtualViewIdAfter = getVirtualViewIdAfter(typeFromId, valueFromId);
            if (virtualViewIdAfter != Integer.MIN_VALUE) {
                accessibilityNodeInfo.setTraversalBefore(RadialTimePickerView.this, virtualViewIdAfter);
            }
        }

        private int getVirtualViewIdAfter(int i, int i2) {
            if (i == 1) {
                int i3 = i2 + 1;
                if (i3 <= (RadialTimePickerView.this.mIs24HourMode ? 23 : 12)) {
                    return makeId(i, i3);
                }
                return Integer.MIN_VALUE;
            }
            if (i != 2) {
                return Integer.MIN_VALUE;
            }
            int currentMinute = RadialTimePickerView.this.getCurrentMinute();
            int i4 = (i2 - (i2 % 5)) + 5;
            if (i2 < currentMinute && i4 > currentMinute) {
                return makeId(i, currentMinute);
            }
            if (i4 < 60) {
                return makeId(i, i4);
            }
            return Integer.MIN_VALUE;
        }

        protected boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 != 16) {
                return false;
            }
            int typeFromId = getTypeFromId(i);
            int valueFromId = getValueFromId(i);
            if (typeFromId == 1) {
                if (!RadialTimePickerView.this.mIs24HourMode) {
                    valueFromId = hour12To24(valueFromId, RadialTimePickerView.this.mAmOrPm);
                }
                RadialTimePickerView.this.setCurrentHour(valueFromId);
                return true;
            }
            if (typeFromId != 2) {
                return false;
            }
            RadialTimePickerView.this.setCurrentMinute(valueFromId);
            return true;
        }

        private void getBoundsForVirtualView(int i, Rect rect) {
            float f;
            float f2;
            float f3;
            float f4;
            int typeFromId = getTypeFromId(i);
            int valueFromId = getValueFromId(i);
            float f5 = 0.0f;
            if (typeFromId == 1) {
                if (RadialTimePickerView.this.getInnerCircleForHour(valueFromId)) {
                    f3 = RadialTimePickerView.this.mCircleRadius - RadialTimePickerView.this.mTextInset[2];
                    f4 = RadialTimePickerView.this.mSelectorRadius;
                } else {
                    f3 = RadialTimePickerView.this.mCircleRadius - RadialTimePickerView.this.mTextInset[0];
                    f4 = RadialTimePickerView.this.mSelectorRadius;
                }
                f5 = f3;
                f = RadialTimePickerView.this.getDegreesForHour(valueFromId);
                f2 = f4;
            } else if (typeFromId == 2) {
                f5 = RadialTimePickerView.this.mCircleRadius - RadialTimePickerView.this.mTextInset[1];
                f = RadialTimePickerView.this.getDegreesForMinute(valueFromId);
                f2 = RadialTimePickerView.this.mSelectorRadius;
            } else {
                f = 0.0f;
                f2 = 0.0f;
            }
            double radians = Math.toRadians(f);
            float sin = RadialTimePickerView.this.mXCenter + (((float) Math.sin(radians)) * f5);
            float cos = RadialTimePickerView.this.mYCenter - (f5 * ((float) Math.cos(radians)));
            rect.set((int) (sin - f2), (int) (cos - f2), (int) (sin + f2), (int) (cos + f2));
        }

        private CharSequence getVirtualViewDescription(int i, int i2) {
            if (i == 1 || i == 2) {
                return Integer.toString(i2);
            }
            return null;
        }

        private boolean isVirtualViewSelected(int i, int i2) {
            if (i == 1) {
                if (RadialTimePickerView.this.getCurrentHour() != i2) {
                    return false;
                }
            } else if (i != 2 || RadialTimePickerView.this.getCurrentMinute() != i2) {
                return false;
            }
            return true;
        }
    }
}
