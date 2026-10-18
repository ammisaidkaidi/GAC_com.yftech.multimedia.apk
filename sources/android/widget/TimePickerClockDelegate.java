package android.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.icu.text.DecimalFormatSymbols;
import android.os.Parcelable;
import android.provider.SettingsStringUtil;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.style.TtsSpan;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.RadialTimePickerView;
import android.widget.RelativeLayout;
import android.widget.TextInputTimePickerView;
import android.widget.TimePicker;
import com.android.internal.widget.NumericTextView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Calendar;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public class TimePickerClockDelegate extends TimePicker.AbstractTimePickerDelegate {
    private static final int AM = 0;
    private static final long DELAY_COMMIT_MILLIS = 2000;
    private static final int FROM_EXTERNAL_API = 0;
    private static final int FROM_INPUT_PICKER = 2;
    private static final int FROM_RADIAL_PICKER = 1;
    private static final int HOURS_IN_HALF_DAY = 12;
    private static final int HOUR_INDEX = 0;
    private static final int MINUTE_INDEX = 1;
    private static final int PM = 1;
    private boolean mAllowAutoAdvance;
    private final RadioButton mAmLabel;
    private final View mAmPmLayout;
    private final View.OnClickListener mClickListener;
    private final Runnable mCommitHour;
    private final Runnable mCommitMinute;
    private int mCurrentHour;
    private int mCurrentMinute;
    private final NumericTextView.OnValueChangedListener mDigitEnteredListener;
    private final View.OnFocusChangeListener mFocusListener;
    private boolean mHourFormatShowLeadingZero;
    private boolean mHourFormatStartsAtZero;
    private final NumericTextView mHourView;
    private boolean mIs24Hour;
    private boolean mIsAmPmAtLeft;
    private boolean mIsAmPmAtTop;
    private boolean mIsEnabled;
    private boolean mLastAnnouncedIsHour;
    private CharSequence mLastAnnouncedText;
    private final NumericTextView mMinuteView;
    private final RadialTimePickerView.OnValueSelectedListener mOnValueSelectedListener;
    private final TextInputTimePickerView.OnValueTypedListener mOnValueTypedListener;
    private final RadioButton mPmLabel;
    private boolean mRadialPickerModeEnabled;
    private final View mRadialTimePickerHeader;
    private final ImageButton mRadialTimePickerModeButton;
    private final String mRadialTimePickerModeEnabledDescription;
    private final RadialTimePickerView mRadialTimePickerView;
    private final String mSelectHours;
    private final String mSelectMinutes;
    private final TextView mSeparatorView;
    private final Calendar mTempCalendar;
    private final View mTextInputPickerHeader;
    private final String mTextInputPickerModeEnabledDescription;
    private final TextInputTimePickerView mTextInputPickerView;
    private static final int[] ATTRS_TEXT_COLOR = {R.attr.textColor};
    private static final int[] ATTRS_DISABLED_ALPHA = {R.attr.disabledAlpha};

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    private @interface ChangeSource {
    }

    private int multiplyAlphaComponent(int i, float f) {
        return (16777215 & i) | (((int) ((((i >> 24) & 255) * f) + 0.5f)) << 24);
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public int getBaseline() {
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TimePickerClockDelegate(TimePicker timePicker, Context context, AttributeSet attributeSet, int i, int i2) {
        super(timePicker, context);
        this.mRadialPickerModeEnabled = true;
        this.mIsEnabled = true;
        this.mIsAmPmAtLeft = false;
        this.mIsAmPmAtTop = false;
        this.mOnValueSelectedListener = new RadialTimePickerView.OnValueSelectedListener() { // from class: android.widget.TimePickerClockDelegate.2
            @Override // android.widget.RadialTimePickerView.OnValueSelectedListener
            public void onValueSelected(int i3, int i4, boolean z) {
                switch (i3) {
                    case 0:
                        boolean z2 = TimePickerClockDelegate.this.getHour() != i4;
                        boolean z3 = TimePickerClockDelegate.this.mAllowAutoAdvance && z;
                        TimePickerClockDelegate.this.setHourInternal(i4, 1, !z3, true);
                        if (z3) {
                            TimePickerClockDelegate.this.setCurrentItemShowing(1, true, false);
                            int localizedHour = TimePickerClockDelegate.this.getLocalizedHour(i4);
                            TimePickerClockDelegate.this.mDelegator.announceForAccessibility(localizedHour + ". " + TimePickerClockDelegate.this.mSelectMinutes);
                        }
                        r0 = z2;
                        break;
                    case 1:
                        r0 = TimePickerClockDelegate.this.getMinute() != i4;
                        TimePickerClockDelegate.this.setMinuteInternal(i4, 1, true);
                        break;
                }
                if (TimePickerClockDelegate.this.mOnTimeChangedListener == null || !r0) {
                    return;
                }
                TimePickerClockDelegate.this.mOnTimeChangedListener.onTimeChanged(TimePickerClockDelegate.this.mDelegator, TimePickerClockDelegate.this.getHour(), TimePickerClockDelegate.this.getMinute());
            }
        };
        this.mOnValueTypedListener = new TextInputTimePickerView.OnValueTypedListener() { // from class: android.widget.TimePickerClockDelegate.3
            @Override // android.widget.TextInputTimePickerView.OnValueTypedListener
            public void onValueChanged(int i3, int i4) {
                switch (i3) {
                    case 0:
                        TimePickerClockDelegate.this.setHourInternal(i4, 2, false, true);
                        return;
                    case 1:
                        TimePickerClockDelegate.this.setMinuteInternal(i4, 2, true);
                        return;
                    case 2:
                        TimePickerClockDelegate.this.setAmOrPm(i4);
                        return;
                    default:
                        return;
                }
            }
        };
        this.mDigitEnteredListener = new NumericTextView.OnValueChangedListener() { // from class: android.widget.TimePickerClockDelegate.4
            public void onValueChanged(NumericTextView numericTextView, int i3, boolean z, boolean z2) {
                Runnable runnable;
                NumericTextView numericTextView2 = null;
                if (numericTextView == TimePickerClockDelegate.this.mHourView) {
                    runnable = TimePickerClockDelegate.this.mCommitHour;
                    if (numericTextView.isFocused()) {
                        numericTextView2 = TimePickerClockDelegate.this.mMinuteView;
                    }
                } else if (numericTextView != TimePickerClockDelegate.this.mMinuteView) {
                    return;
                } else {
                    runnable = TimePickerClockDelegate.this.mCommitMinute;
                }
                numericTextView.removeCallbacks(runnable);
                if (z) {
                    if (z2) {
                        runnable.run();
                        if (numericTextView2 != null) {
                            numericTextView2.requestFocus();
                            return;
                        }
                        return;
                    }
                    numericTextView.postDelayed(runnable, TimePickerClockDelegate.DELAY_COMMIT_MILLIS);
                }
            }
        };
        this.mCommitHour = new Runnable() { // from class: android.widget.TimePickerClockDelegate.5
            @Override // java.lang.Runnable
            public void run() {
                TimePickerClockDelegate.this.setHour(TimePickerClockDelegate.this.mHourView.getValue());
            }
        };
        this.mCommitMinute = new Runnable() { // from class: android.widget.TimePickerClockDelegate.6
            @Override // java.lang.Runnable
            public void run() {
                TimePickerClockDelegate.this.setMinute(TimePickerClockDelegate.this.mMinuteView.getValue());
            }
        };
        this.mFocusListener = new View.OnFocusChangeListener() { // from class: android.widget.TimePickerClockDelegate.7
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                if (z) {
                    int id = view.getId();
                    if (id == 16908713) {
                        TimePickerClockDelegate.this.setAmOrPm(0);
                    } else if (id == 16908954) {
                        TimePickerClockDelegate.this.setCurrentItemShowing(0, true, true);
                    } else if (id == 16909071) {
                        TimePickerClockDelegate.this.setCurrentItemShowing(1, true, true);
                    } else if (id != 16909188) {
                        return;
                    } else {
                        TimePickerClockDelegate.this.setAmOrPm(1);
                    }
                    TimePickerClockDelegate.this.tryVibrate();
                }
            }
        };
        this.mClickListener = new View.OnClickListener() { // from class: android.widget.TimePickerClockDelegate.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int id = view.getId();
                if (id == 16908713) {
                    TimePickerClockDelegate.this.setAmOrPm(0);
                } else if (id == 16908954) {
                    TimePickerClockDelegate.this.setCurrentItemShowing(0, true, true);
                } else if (id == 16909071) {
                    TimePickerClockDelegate.this.setCurrentItemShowing(1, true, true);
                } else if (id != 16909188) {
                    return;
                } else {
                    TimePickerClockDelegate.this.setAmOrPm(1);
                }
                TimePickerClockDelegate.this.tryVibrate();
            }
        };
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.TimePicker, i, i2);
        LayoutInflater layoutInflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
        Resources resources = this.mContext.getResources();
        this.mSelectHours = resources.getString(R.string.permdesc_readSyncStats);
        this.mSelectMinutes = resources.getString(R.string.permdesc_receiveWapPush);
        View inflate = layoutInflater.inflate(obtainStyledAttributes.getResourceId(12, R.layout.system_user_home), timePicker);
        inflate.setSaveFromParentEnabled(false);
        this.mRadialTimePickerHeader = inflate.findViewById(R.id.sequential);
        ColorStateList colorStateList = null;
        this.mRadialTimePickerHeader.setOnTouchListener(new NearestTouchDelegate());
        this.mHourView = inflate.findViewById(R.id.expires_on);
        this.mHourView.setOnClickListener(this.mClickListener);
        this.mHourView.setOnFocusChangeListener(this.mFocusListener);
        this.mHourView.setOnDigitEnteredListener(this.mDigitEnteredListener);
        this.mHourView.setAccessibilityDelegate(new ClickActionDelegate(context, R.string.permdesc_readSyncStats));
        this.mSeparatorView = (TextView) inflate.findViewById(R.id.perm_money_label);
        this.mMinuteView = inflate.findViewById(R.id.include);
        this.mMinuteView.setOnClickListener(this.mClickListener);
        this.mMinuteView.setOnFocusChangeListener(this.mFocusListener);
        this.mMinuteView.setOnDigitEnteredListener(this.mDigitEnteredListener);
        this.mMinuteView.setAccessibilityDelegate(new ClickActionDelegate(context, R.string.permdesc_receiveWapPush));
        this.mMinuteView.setRange(0, 59);
        this.mAmPmLayout = inflate.findViewById(R.id.action_divider);
        this.mAmPmLayout.setOnTouchListener(new NearestTouchDelegate());
        String[] amPmStrings = TimePicker.getAmPmStrings(context);
        this.mAmLabel = (RadioButton) this.mAmPmLayout.findViewById(R.id.action_bar_title);
        this.mAmLabel.setText(obtainVerbatim(amPmStrings[0]));
        this.mAmLabel.setOnClickListener(this.mClickListener);
        ensureMinimumTextWidth(this.mAmLabel);
        this.mPmLabel = (RadioButton) this.mAmPmLayout.findViewById(R.id.month);
        this.mPmLabel.setText(obtainVerbatim(amPmStrings[1]));
        this.mPmLabel.setOnClickListener(this.mClickListener);
        ensureMinimumTextWidth(this.mPmLabel);
        int resourceId = obtainStyledAttributes.getResourceId(1, 0);
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = this.mContext.obtainStyledAttributes(null, ATTRS_TEXT_COLOR, 0, resourceId);
            colorStateList = applyLegacyColorFixes(obtainStyledAttributes2.getColorStateList(0));
            obtainStyledAttributes2.recycle();
        }
        colorStateList = colorStateList == null ? obtainStyledAttributes.getColorStateList(11) : colorStateList;
        this.mTextInputPickerHeader = inflate.findViewById(R.id.fitXY);
        if (colorStateList != null) {
            this.mHourView.setTextColor(colorStateList);
            this.mSeparatorView.setTextColor(colorStateList);
            this.mMinuteView.setTextColor(colorStateList);
            this.mAmLabel.setTextColor(colorStateList);
            this.mPmLabel.setTextColor(colorStateList);
        }
        if (obtainStyledAttributes.hasValueOrEmpty(0)) {
            this.mRadialTimePickerHeader.setBackground(obtainStyledAttributes.getDrawable(0));
            this.mTextInputPickerHeader.setBackground(obtainStyledAttributes.getDrawable(0));
        }
        obtainStyledAttributes.recycle();
        this.mRadialTimePickerView = (RadialTimePickerView) inflate.findViewById(R.id.nokeys);
        this.mRadialTimePickerView.applyAttributes(attributeSet, i, i2);
        this.mRadialTimePickerView.setOnValueSelectedListener(this.mOnValueSelectedListener);
        this.mTextInputPickerView = (TextInputTimePickerView) inflate.findViewById(R.id.flagEnableAccessibilityVolume);
        this.mTextInputPickerView.setListener(this.mOnValueTypedListener);
        this.mRadialTimePickerModeButton = (ImageButton) inflate.findViewById(R.id.showSearchIconAsBadge);
        this.mRadialTimePickerModeButton.setOnClickListener(new View.OnClickListener() { // from class: android.widget.TimePickerClockDelegate.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TimePickerClockDelegate.this.toggleRadialPickerMode();
            }
        });
        this.mRadialTimePickerModeEnabledDescription = context.getResources().getString(R.string.permlab_register_sim_subscription);
        this.mTextInputPickerModeEnabledDescription = context.getResources().getString(R.string.permlab_removeDrmCertificates);
        this.mAllowAutoAdvance = true;
        updateHourFormat();
        this.mTempCalendar = Calendar.getInstance(this.mLocale);
        initialize(this.mTempCalendar.get(11), this.mTempCalendar.get(12), this.mIs24Hour, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleRadialPickerMode() {
        if (this.mRadialPickerModeEnabled) {
            this.mRadialTimePickerView.setVisibility(8);
            this.mRadialTimePickerHeader.setVisibility(8);
            this.mTextInputPickerHeader.setVisibility(0);
            this.mTextInputPickerView.setVisibility(0);
            this.mRadialTimePickerModeButton.setImageResource(R.drawable.btn_check_on_pressed);
            this.mRadialTimePickerModeButton.setContentDescription(this.mRadialTimePickerModeEnabledDescription);
            this.mRadialPickerModeEnabled = false;
            return;
        }
        this.mRadialTimePickerView.setVisibility(0);
        this.mRadialTimePickerHeader.setVisibility(0);
        this.mTextInputPickerHeader.setVisibility(8);
        this.mTextInputPickerView.setVisibility(8);
        this.mRadialTimePickerModeButton.setImageResource(R.drawable.btn_keyboard_key_dark_normal_on_holo);
        this.mRadialTimePickerModeButton.setContentDescription(this.mTextInputPickerModeEnabledDescription);
        updateTextInputPicker();
        InputMethodManager peekInstance = InputMethodManager.peekInstance();
        if (peekInstance != null) {
            peekInstance.hideSoftInputFromWindow(this.mDelegator.getWindowToken(), 0);
        }
        this.mRadialPickerModeEnabled = true;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean validateInput() {
        return this.mTextInputPickerView.validateInput();
    }

    private static void ensureMinimumTextWidth(TextView textView) {
        textView.measure(0, 0);
        int measuredWidth = textView.getMeasuredWidth();
        textView.setMinWidth(measuredWidth);
        textView.setMinimumWidth(measuredWidth);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0073 A[LOOP:1: B:29:0x006f->B:31:0x0073, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateHourFormat() {
        boolean z;
        char c;
        String bestDateTimePattern = DateFormat.getBestDateTimePattern(this.mLocale, this.mIs24Hour ? "Hm" : "hm");
        int length = bestDateTimePattern.length();
        for (int i = 0; i < length; i++) {
            c = bestDateTimePattern.charAt(i);
            if (c == 'H' || c == 'h' || c == 'K' || c == 'k') {
                int i2 = i + 1;
                z = i2 < length && c == bestDateTimePattern.charAt(i2);
                this.mHourFormatShowLeadingZero = z;
                this.mHourFormatStartsAtZero = c != 'K' || c == 'H';
                int i3 = !this.mHourFormatStartsAtZero ? 1 : 0;
                this.mHourView.setRange(i3, (!this.mIs24Hour ? 23 : 11) + i3);
                this.mHourView.setShowLeadingZeroes(this.mHourFormatShowLeadingZero);
                String[] digitStrings = DecimalFormatSymbols.getInstance(this.mLocale).getDigitStrings();
                int i4 = 0;
                for (int i5 = 0; i5 < 10; i5++) {
                    i4 = Math.max(i4, digitStrings[i5].length());
                }
                this.mTextInputPickerView.setHourFormat(i4 * 2);
            }
        }
        z = false;
        c = 0;
        this.mHourFormatShowLeadingZero = z;
        this.mHourFormatStartsAtZero = c != 'K' || c == 'H';
        int i32 = !this.mHourFormatStartsAtZero ? 1 : 0;
        if (!this.mIs24Hour) {
        }
        this.mHourView.setRange(i32, (!this.mIs24Hour ? 23 : 11) + i32);
        this.mHourView.setShowLeadingZeroes(this.mHourFormatShowLeadingZero);
        String[] digitStrings2 = DecimalFormatSymbols.getInstance(this.mLocale).getDigitStrings();
        int i42 = 0;
        while (i5 < 10) {
        }
        this.mTextInputPickerView.setHourFormat(i42 * 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final CharSequence obtainVerbatim(String str) {
        return new SpannableStringBuilder().append(str, new TtsSpan.VerbatimBuilder(str).build(), 0);
    }

    private ColorStateList applyLegacyColorFixes(ColorStateList colorStateList) {
        int multiplyAlphaComponent;
        int i;
        if (colorStateList == null || colorStateList.hasState(R.attr.state_activated)) {
            return colorStateList;
        }
        if (colorStateList.hasState(R.attr.state_selected)) {
            i = colorStateList.getColorForState(StateSet.get(10), 0);
            multiplyAlphaComponent = colorStateList.getColorForState(StateSet.get(8), 0);
        } else {
            int defaultColor = colorStateList.getDefaultColor();
            multiplyAlphaComponent = multiplyAlphaComponent(defaultColor, this.mContext.obtainStyledAttributes(ATTRS_DISABLED_ALPHA).getFloat(0, 0.3f));
            i = defaultColor;
        }
        if (i == 0 || multiplyAlphaComponent == 0) {
            return null;
        }
        return new ColorStateList(new int[][]{new int[]{R.attr.state_activated}, new int[0]}, new int[]{i, multiplyAlphaComponent});
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private static class ClickActionDelegate extends View.AccessibilityDelegate {
        private final AccessibilityNodeInfo.AccessibilityAction mClickAction;

        public ClickActionDelegate(Context context, int i) {
            this.mClickAction = new AccessibilityNodeInfo.AccessibilityAction(16, context.getString(i));
        }

        @Override // android.view.View.AccessibilityDelegate
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.addAction(this.mClickAction);
        }
    }

    private void initialize(int i, int i2, boolean z, int i3) {
        this.mCurrentHour = i;
        this.mCurrentMinute = i2;
        this.mIs24Hour = z;
        updateUI(i3);
    }

    private void updateUI(int i) {
        updateHeaderAmPm();
        updateHeaderHour(this.mCurrentHour, false);
        updateHeaderSeparator();
        updateHeaderMinute(this.mCurrentMinute, false);
        updateRadialPicker(i);
        updateTextInputPicker();
        this.mDelegator.invalidate();
    }

    private void updateTextInputPicker() {
        this.mTextInputPickerView.updateTextInputValues(getLocalizedHour(this.mCurrentHour), this.mCurrentMinute, this.mCurrentHour < 12 ? 0 : 1, this.mIs24Hour, this.mHourFormatStartsAtZero);
    }

    private void updateRadialPicker(int i) {
        this.mRadialTimePickerView.initialize(this.mCurrentHour, this.mCurrentMinute, this.mIs24Hour);
        setCurrentItemShowing(i, false, true);
    }

    private void updateHeaderAmPm() {
        if (this.mIs24Hour) {
            this.mAmPmLayout.setVisibility(8);
        } else {
            setAmPmStart(DateFormat.getBestDateTimePattern(this.mLocale, "hm").startsWith("a"));
            updateAmPmLabelStates(this.mCurrentHour < 12 ? 0 : 1);
        }
    }

    private void setAmPmStart(boolean z) {
        int rule;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mAmPmLayout.getLayoutParams();
        if (layoutParams.getRule(1) != 0 || layoutParams.getRule(0) != 0) {
            if (TextUtils.getLayoutDirectionFromLocale(this.mLocale) != 0) {
                z = !z;
            }
            if (this.mIsAmPmAtLeft == z) {
                return;
            }
            if (z) {
                layoutParams.removeRule(1);
                layoutParams.addRule(0, this.mHourView.getId());
            } else {
                layoutParams.removeRule(0);
                layoutParams.addRule(1, this.mMinuteView.getId());
            }
            this.mIsAmPmAtLeft = z;
        } else if (layoutParams.getRule(3) != 0 || layoutParams.getRule(2) != 0) {
            if (this.mIsAmPmAtTop == z) {
                return;
            }
            if (z) {
                rule = layoutParams.getRule(3);
                layoutParams.removeRule(3);
                layoutParams.addRule(2, rule);
            } else {
                rule = layoutParams.getRule(2);
                layoutParams.removeRule(2);
                layoutParams.addRule(3, rule);
            }
            View findViewById = this.mRadialTimePickerHeader.findViewById(rule);
            findViewById.setPadding(findViewById.getPaddingLeft(), findViewById.getPaddingBottom(), findViewById.getPaddingRight(), findViewById.getPaddingTop());
            this.mIsAmPmAtTop = z;
        }
        this.mAmPmLayout.setLayoutParams(layoutParams);
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setDate(int i, int i2) {
        setHourInternal(i, 0, true, false);
        setMinuteInternal(i2, 0, false);
        onTimeChanged();
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setHour(int i) {
        setHourInternal(i, 0, true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHourInternal(int i, int i2, boolean z, boolean z2) {
        if (this.mCurrentHour == i) {
            return;
        }
        resetAutofilledValue();
        this.mCurrentHour = i;
        updateHeaderHour(i, z);
        updateHeaderAmPm();
        if (i2 != 1) {
            this.mRadialTimePickerView.setCurrentHour(i);
            this.mRadialTimePickerView.setAmOrPm(i < 12 ? 0 : 1);
        }
        if (i2 != 2) {
            updateTextInputPicker();
        }
        this.mDelegator.invalidate();
        if (z2) {
            onTimeChanged();
        }
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public int getHour() {
        int currentHour = this.mRadialTimePickerView.getCurrentHour();
        if (this.mIs24Hour) {
            return currentHour;
        }
        if (this.mRadialTimePickerView.getAmOrPm() == 1) {
            return (currentHour % 12) + 12;
        }
        return currentHour % 12;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setMinute(int i) {
        setMinuteInternal(i, 0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMinuteInternal(int i, int i2, boolean z) {
        if (this.mCurrentMinute == i) {
            return;
        }
        resetAutofilledValue();
        this.mCurrentMinute = i;
        updateHeaderMinute(i, true);
        if (i2 != 1) {
            this.mRadialTimePickerView.setCurrentMinute(i);
        }
        if (i2 != 2) {
            updateTextInputPicker();
        }
        this.mDelegator.invalidate();
        if (z) {
            onTimeChanged();
        }
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public int getMinute() {
        return this.mRadialTimePickerView.getCurrentMinute();
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setIs24Hour(boolean z) {
        if (this.mIs24Hour != z) {
            this.mIs24Hour = z;
            this.mCurrentHour = getHour();
            updateHourFormat();
            updateUI(this.mRadialTimePickerView.getCurrentItemShowing());
        }
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean is24Hour() {
        return this.mIs24Hour;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void setEnabled(boolean z) {
        this.mHourView.setEnabled(z);
        this.mMinuteView.setEnabled(z);
        this.mAmLabel.setEnabled(z);
        this.mPmLabel.setEnabled(z);
        this.mRadialTimePickerView.setEnabled(z);
        this.mIsEnabled = z;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public Parcelable onSaveInstanceState(Parcelable parcelable) {
        return new TimePicker.AbstractTimePickerDelegate.SavedState(parcelable, getHour(), getMinute(), is24Hour(), getCurrentItemShowing());
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof TimePicker.AbstractTimePickerDelegate.SavedState) {
            TimePicker.AbstractTimePickerDelegate.SavedState savedState = (TimePicker.AbstractTimePickerDelegate.SavedState) parcelable;
            initialize(savedState.getHour(), savedState.getMinute(), savedState.is24HourMode(), savedState.getCurrentItemShowing());
            this.mRadialTimePickerView.invalidate();
        }
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int i = this.mIs24Hour ? 129 : 65;
        this.mTempCalendar.set(11, getHour());
        this.mTempCalendar.set(12, getMinute());
        String formatDateTime = DateUtils.formatDateTime(this.mContext, this.mTempCalendar.getTimeInMillis(), i);
        String str = this.mRadialTimePickerView.getCurrentItemShowing() == 0 ? this.mSelectHours : this.mSelectMinutes;
        accessibilityEvent.getText().add(formatDateTime + " " + str);
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getHourView() {
        return this.mHourView;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getMinuteView() {
        return this.mMinuteView;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getAmView() {
        return this.mAmLabel;
    }

    @Override // android.widget.TimePicker.TimePickerDelegate
    public View getPmView() {
        return this.mPmLabel;
    }

    private int getCurrentItemShowing() {
        return this.mRadialTimePickerView.getCurrentItemShowing();
    }

    private void onTimeChanged() {
        this.mDelegator.sendAccessibilityEvent(4);
        if (this.mOnTimeChangedListener != null) {
            this.mOnTimeChangedListener.onTimeChanged(this.mDelegator, getHour(), getMinute());
        }
        if (this.mAutoFillChangeListener != null) {
            this.mAutoFillChangeListener.onTimeChanged(this.mDelegator, getHour(), getMinute());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tryVibrate() {
        this.mDelegator.performHapticFeedback(4);
    }

    private void updateAmPmLabelStates(int i) {
        boolean z = i == 0;
        this.mAmLabel.setActivated(z);
        this.mAmLabel.setChecked(z);
        boolean z2 = i == 1;
        this.mPmLabel.setActivated(z2);
        this.mPmLabel.setChecked(z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLocalizedHour(int i) {
        if (!this.mIs24Hour) {
            i %= 12;
        }
        if (this.mHourFormatStartsAtZero || i != 0) {
            return i;
        }
        return this.mIs24Hour ? 24 : 12;
    }

    private void updateHeaderHour(int i, boolean z) {
        this.mHourView.setValue(getLocalizedHour(i));
        if (z) {
            tryAnnounceForAccessibility(this.mHourView.getText(), true);
        }
    }

    private void updateHeaderMinute(int i, boolean z) {
        this.mMinuteView.setValue(i);
        if (z) {
            tryAnnounceForAccessibility(this.mMinuteView.getText(), false);
        }
    }

    private void updateHeaderSeparator() {
        String hourMinSeparatorFromPattern = getHourMinSeparatorFromPattern(DateFormat.getBestDateTimePattern(this.mLocale, this.mIs24Hour ? "Hm" : "hm"));
        this.mSeparatorView.setText(hourMinSeparatorFromPattern);
        this.mTextInputPickerView.updateSeparator(hourMinSeparatorFromPattern);
    }

    private static String getHourMinSeparatorFromPattern(String str) {
        boolean z = false;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt != ' ') {
                if (charAt == '\'') {
                    if (z) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str.substring(i));
                        return spannableStringBuilder.subSequence(0, DateFormat.appendQuotedText(spannableStringBuilder, 0)).toString();
                    }
                } else if (charAt == 'H' || charAt == 'K' || charAt == 'h' || charAt == 'k') {
                    z = true;
                } else if (z) {
                    return Character.toString(str.charAt(i));
                }
            }
        }
        return SettingsStringUtil.DELIMITER;
    }

    private static int lastIndexOfAny(String str, char[] cArr) {
        if (cArr.length <= 0) {
            return -1;
        }
        for (int length = str.length() - 1; length >= 0; length--) {
            char charAt = str.charAt(length);
            for (char c : cArr) {
                if (charAt == c) {
                    return length;
                }
            }
        }
        return -1;
    }

    private void tryAnnounceForAccessibility(CharSequence charSequence, boolean z) {
        if (this.mLastAnnouncedIsHour == z && charSequence.equals(this.mLastAnnouncedText)) {
            return;
        }
        this.mDelegator.announceForAccessibility(charSequence);
        this.mLastAnnouncedText = charSequence;
        this.mLastAnnouncedIsHour = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentItemShowing(int i, boolean z, boolean z2) {
        this.mRadialTimePickerView.setCurrentItemShowing(i, z);
        if (i == 0) {
            if (z2) {
                this.mDelegator.announceForAccessibility(this.mSelectHours);
            }
        } else if (z2) {
            this.mDelegator.announceForAccessibility(this.mSelectMinutes);
        }
        this.mHourView.setActivated(i == 0);
        this.mMinuteView.setActivated(i == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setAmOrPm(int i) {
        updateAmPmLabelStates(i);
        if (this.mRadialTimePickerView.setAmOrPm(i)) {
            this.mCurrentHour = getHour();
            updateTextInputPicker();
            if (this.mOnTimeChangedListener != null) {
                this.mOnTimeChangedListener.onTimeChanged(this.mDelegator, getHour(), getMinute());
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    private static class NearestTouchDelegate implements View.OnTouchListener {
        private View mInitialTouchTarget;

        private NearestTouchDelegate() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int actionMasked = motionEvent.getActionMasked();
            if (actionMasked == 0) {
                if (view instanceof ViewGroup) {
                    this.mInitialTouchTarget = findNearestChild((ViewGroup) view, (int) motionEvent.getX(), (int) motionEvent.getY());
                } else {
                    this.mInitialTouchTarget = null;
                }
            }
            View view2 = this.mInitialTouchTarget;
            if (view2 == null) {
                return false;
            }
            float scrollX = view.getScrollX() - view2.getLeft();
            float scrollY = view.getScrollY() - view2.getTop();
            motionEvent.offsetLocation(scrollX, scrollY);
            boolean dispatchTouchEvent = view2.dispatchTouchEvent(motionEvent);
            motionEvent.offsetLocation(-scrollX, -scrollY);
            if (actionMasked == 1 || actionMasked == 3) {
                this.mInitialTouchTarget = null;
            }
            return dispatchTouchEvent;
        }

        private View findNearestChild(ViewGroup viewGroup, int i, int i2) {
            int childCount = viewGroup.getChildCount();
            View view = null;
            int i3 = Integer.MAX_VALUE;
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = viewGroup.getChildAt(i4);
                int left = i - (childAt.getLeft() + (childAt.getWidth() / 2));
                int top = i2 - (childAt.getTop() + (childAt.getHeight() / 2));
                int i5 = (left * left) + (top * top);
                if (i3 > i5) {
                    view = childAt;
                    i3 = i5;
                }
            }
            return view;
        }
    }
}
