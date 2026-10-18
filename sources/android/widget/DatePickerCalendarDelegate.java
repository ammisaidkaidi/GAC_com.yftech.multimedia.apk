package android.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.icu.text.DateFormat;
import android.icu.text.DisplayContext;
import android.icu.util.Calendar;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.DatePicker;
import android.widget.DayPickerView;
import android.widget.YearPickerView;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes2.dex */
public class DatePickerCalendarDelegate extends DatePicker.AbstractDatePickerDelegate {
    private static final int ANIMATION_DURATION = 300;
    private static final int DEFAULT_END_YEAR = 2100;
    private static final int DEFAULT_START_YEAR = 1900;
    private static final int UNINITIALIZED = -1;
    private static final int USE_LOCALE = 0;
    private static final int VIEW_MONTH_DAY = 0;
    private static final int VIEW_YEAR = 1;
    private ViewAnimator mAnimator;
    private ViewGroup mContainer;
    private int mCurrentView;
    private DayPickerView mDayPickerView;
    private int mFirstDayOfWeek;
    private TextView mHeaderMonthDay;
    private TextView mHeaderYear;
    private final Calendar mMaxDate;
    private final Calendar mMinDate;
    private DateFormat mMonthDayFormat;
    private final DayPickerView.OnDaySelectedListener mOnDaySelectedListener;
    private final View.OnClickListener mOnHeaderClickListener;
    private final YearPickerView.OnYearSelectedListener mOnYearSelectedListener;
    private String mSelectDay;
    private String mSelectYear;
    private final Calendar mTempDate;
    private DateFormat mYearFormat;
    private YearPickerView mYearPickerView;
    private static final int[] ATTRS_TEXT_COLOR = {R.attr.textColor};
    private static final int[] ATTRS_DISABLED_ALPHA = {R.attr.disabledAlpha};

    private int multiplyAlphaComponent(int i, float f) {
        return (16777215 & i) | (((int) ((((i >> 24) & 255) * f) + 0.5f)) << 24);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public boolean getCalendarViewShown() {
        return false;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public boolean getSpinnersShown() {
        return false;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setCalendarViewShown(boolean z) {
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setSpinnersShown(boolean z) {
    }

    public DatePickerCalendarDelegate(DatePicker datePicker, Context context, AttributeSet attributeSet, int i, int i2) {
        super(datePicker, context);
        this.mCurrentView = -1;
        this.mFirstDayOfWeek = 0;
        this.mOnDaySelectedListener = new DayPickerView.OnDaySelectedListener() { // from class: android.widget.DatePickerCalendarDelegate.1
            @Override // android.widget.DayPickerView.OnDaySelectedListener
            public void onDaySelected(DayPickerView dayPickerView, Calendar calendar) {
                DatePickerCalendarDelegate.this.mCurrentDate.setTimeInMillis(calendar.getTimeInMillis());
                DatePickerCalendarDelegate.this.onDateChanged(true, true);
            }
        };
        this.mOnYearSelectedListener = new YearPickerView.OnYearSelectedListener() { // from class: android.widget.DatePickerCalendarDelegate.2
            @Override // android.widget.YearPickerView.OnYearSelectedListener
            public void onYearChanged(YearPickerView yearPickerView, int i3) {
                int i4 = DatePickerCalendarDelegate.this.mCurrentDate.get(5);
                int daysInMonth = DatePickerCalendarDelegate.getDaysInMonth(DatePickerCalendarDelegate.this.mCurrentDate.get(2), i3);
                if (i4 > daysInMonth) {
                    DatePickerCalendarDelegate.this.mCurrentDate.set(5, daysInMonth);
                }
                DatePickerCalendarDelegate.this.mCurrentDate.set(1, i3);
                DatePickerCalendarDelegate.this.onDateChanged(true, true);
                DatePickerCalendarDelegate.this.setCurrentView(0);
                DatePickerCalendarDelegate.this.mHeaderYear.requestFocus();
            }
        };
        this.mOnHeaderClickListener = new View.OnClickListener() { // from class: android.widget.-$$Lambda$DatePickerCalendarDelegate$GuCiuXPsIV2EU6oKGRXrsGY-DHM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DatePickerCalendarDelegate.lambda$new$0(DatePickerCalendarDelegate.this, view);
            }
        };
        Locale locale = this.mCurrentLocale;
        this.mCurrentDate = Calendar.getInstance(locale);
        this.mTempDate = Calendar.getInstance(locale);
        this.mMinDate = Calendar.getInstance(locale);
        this.mMaxDate = Calendar.getInstance(locale);
        this.mMinDate.set(1900, 0, 1);
        this.mMaxDate.set(2100, 11, 31);
        Resources resources = this.mDelegator.getResources();
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, com.android.internal.R.styleable.DatePicker, i, i2);
        this.mContainer = (ViewGroup) ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(obtainStyledAttributes.getResourceId(19, R.layout.chooser_az_label_row), (ViewGroup) this.mDelegator, false);
        this.mContainer.setSaveFromParentEnabled(false);
        this.mDelegator.addView(this.mContainer);
        ViewGroup viewGroup = (ViewGroup) this.mContainer.findViewById(R.id.cell);
        this.mHeaderYear = (TextView) viewGroup.findViewById(R.id.centerCrop);
        this.mHeaderYear.setOnClickListener(this.mOnHeaderClickListener);
        this.mHeaderMonthDay = (TextView) viewGroup.findViewById(R.id.center);
        this.mHeaderMonthDay.setOnClickListener(this.mOnHeaderClickListener);
        int resourceId = obtainStyledAttributes.getResourceId(10, 0);
        ColorStateList colorStateList = null;
        if (resourceId != 0) {
            TypedArray obtainStyledAttributes2 = this.mContext.obtainStyledAttributes(null, ATTRS_TEXT_COLOR, 0, resourceId);
            colorStateList = applyLegacyColorFixes(obtainStyledAttributes2.getColorStateList(0));
            obtainStyledAttributes2.recycle();
        }
        colorStateList = colorStateList == null ? obtainStyledAttributes.getColorStateList(18) : colorStateList;
        if (colorStateList != null) {
            this.mHeaderYear.setTextColor(colorStateList);
            this.mHeaderMonthDay.setTextColor(colorStateList);
        }
        if (obtainStyledAttributes.hasValueOrEmpty(0)) {
            viewGroup.setBackground(obtainStyledAttributes.getDrawable(0));
        }
        obtainStyledAttributes.recycle();
        this.mAnimator = (ViewAnimator) this.mContainer.findViewById(R.id.action_menu_presenter);
        this.mDayPickerView = (DayPickerView) this.mAnimator.findViewById(R.id.caption);
        this.mDayPickerView.setFirstDayOfWeek(this.mFirstDayOfWeek);
        this.mDayPickerView.setMinDate(this.mMinDate.getTimeInMillis());
        this.mDayPickerView.setMaxDate(this.mMaxDate.getTimeInMillis());
        this.mDayPickerView.setDate(this.mCurrentDate.getTimeInMillis());
        this.mDayPickerView.setOnDaySelectedListener(this.mOnDaySelectedListener);
        this.mYearPickerView = (YearPickerView) this.mAnimator.findViewById(R.id.centerInside);
        this.mYearPickerView.setRange(this.mMinDate, this.mMaxDate);
        this.mYearPickerView.setYear(this.mCurrentDate.get(1));
        this.mYearPickerView.setOnYearSelectedListener(this.mOnYearSelectedListener);
        this.mSelectDay = resources.getString(R.string.permdesc_readSyncSettings);
        this.mSelectYear = resources.getString(R.string.permdesc_recordAudio);
        onLocaleChanged(this.mCurrentLocale);
        setCurrentView(0);
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

    public static /* synthetic */ void lambda$new$0(DatePickerCalendarDelegate datePickerCalendarDelegate, View view) {
        datePickerCalendarDelegate.tryVibrate();
        switch (view.getId()) {
            case R.id.center:
                datePickerCalendarDelegate.setCurrentView(0);
                return;
            case R.id.centerCrop:
                datePickerCalendarDelegate.setCurrentView(1);
                return;
            default:
                return;
        }
    }

    @Override // android.widget.DatePicker.AbstractDatePickerDelegate
    protected void onLocaleChanged(Locale locale) {
        if (this.mHeaderYear == null) {
            return;
        }
        this.mMonthDayFormat = DateFormat.getInstanceForSkeleton("EMMMd", locale);
        this.mMonthDayFormat.setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        this.mYearFormat = DateFormat.getInstanceForSkeleton("y", locale);
        onCurrentDateChanged(false);
    }

    private void onCurrentDateChanged(boolean z) {
        if (this.mHeaderYear == null) {
            return;
        }
        this.mHeaderYear.setText(this.mYearFormat.format(this.mCurrentDate.getTime()));
        this.mHeaderMonthDay.setText(this.mMonthDayFormat.format(this.mCurrentDate.getTime()));
        if (z) {
            this.mAnimator.announceForAccessibility(getFormattedCurrentDate());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCurrentView(int i) {
        switch (i) {
            case 0:
                this.mDayPickerView.setDate(this.mCurrentDate.getTimeInMillis());
                if (this.mCurrentView != i) {
                    this.mHeaderMonthDay.setActivated(true);
                    this.mHeaderYear.setActivated(false);
                    this.mAnimator.setDisplayedChild(0);
                    this.mCurrentView = i;
                }
                this.mAnimator.announceForAccessibility(this.mSelectDay);
                return;
            case 1:
                this.mYearPickerView.setYear(this.mCurrentDate.get(1));
                this.mYearPickerView.post(new Runnable() { // from class: android.widget.-$$Lambda$DatePickerCalendarDelegate$-6rynvAYPe1gU9xVgvSm4VMsr2M
                    @Override // java.lang.Runnable
                    public final void run() {
                        DatePickerCalendarDelegate.lambda$setCurrentView$1(DatePickerCalendarDelegate.this);
                    }
                });
                if (this.mCurrentView != i) {
                    this.mHeaderMonthDay.setActivated(false);
                    this.mHeaderYear.setActivated(true);
                    this.mAnimator.setDisplayedChild(1);
                    this.mCurrentView = i;
                }
                this.mAnimator.announceForAccessibility(this.mSelectYear);
                return;
            default:
                return;
        }
    }

    public static /* synthetic */ void lambda$setCurrentView$1(DatePickerCalendarDelegate datePickerCalendarDelegate) {
        datePickerCalendarDelegate.mYearPickerView.requestFocus();
        View selectedView = datePickerCalendarDelegate.mYearPickerView.getSelectedView();
        if (selectedView != null) {
            selectedView.requestFocus();
        }
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void init(int i, int i2, int i3, DatePicker.OnDateChangedListener onDateChangedListener) {
        setDate(i, i2, i3);
        onDateChanged(false, false);
        this.mOnDateChangedListener = onDateChangedListener;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void updateDate(int i, int i2, int i3) {
        setDate(i, i2, i3);
        onDateChanged(false, true);
    }

    private void setDate(int i, int i2, int i3) {
        this.mCurrentDate.set(1, i);
        this.mCurrentDate.set(2, i2);
        this.mCurrentDate.set(5, i3);
        resetAutofilledValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDateChanged(boolean z, boolean z2) {
        int i = this.mCurrentDate.get(1);
        if (z2 && (this.mOnDateChangedListener != null || this.mAutoFillChangeListener != null)) {
            int i2 = this.mCurrentDate.get(2);
            int i3 = this.mCurrentDate.get(5);
            if (this.mOnDateChangedListener != null) {
                this.mOnDateChangedListener.onDateChanged(this.mDelegator, i, i2, i3);
            }
            if (this.mAutoFillChangeListener != null) {
                this.mAutoFillChangeListener.onDateChanged(this.mDelegator, i, i2, i3);
            }
        }
        this.mDayPickerView.setDate(this.mCurrentDate.getTimeInMillis());
        this.mYearPickerView.setYear(i);
        onCurrentDateChanged(z);
        if (z) {
            tryVibrate();
        }
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public int getYear() {
        return this.mCurrentDate.get(1);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public int getMonth() {
        return this.mCurrentDate.get(2);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public int getDayOfMonth() {
        return this.mCurrentDate.get(5);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setMinDate(long j) {
        this.mTempDate.setTimeInMillis(j);
        if (this.mTempDate.get(1) == this.mMinDate.get(1) && this.mTempDate.get(6) == this.mMinDate.get(6)) {
            return;
        }
        if (this.mCurrentDate.before(this.mTempDate)) {
            this.mCurrentDate.setTimeInMillis(j);
            onDateChanged(false, true);
        }
        this.mMinDate.setTimeInMillis(j);
        this.mDayPickerView.setMinDate(j);
        this.mYearPickerView.setRange(this.mMinDate, this.mMaxDate);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public Calendar getMinDate() {
        return this.mMinDate;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setMaxDate(long j) {
        this.mTempDate.setTimeInMillis(j);
        if (this.mTempDate.get(1) == this.mMaxDate.get(1) && this.mTempDate.get(6) == this.mMaxDate.get(6)) {
            return;
        }
        if (this.mCurrentDate.after(this.mTempDate)) {
            this.mCurrentDate.setTimeInMillis(j);
            onDateChanged(false, true);
        }
        this.mMaxDate.setTimeInMillis(j);
        this.mDayPickerView.setMaxDate(j);
        this.mYearPickerView.setRange(this.mMinDate, this.mMaxDate);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public Calendar getMaxDate() {
        return this.mMaxDate;
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setFirstDayOfWeek(int i) {
        this.mFirstDayOfWeek = i;
        this.mDayPickerView.setFirstDayOfWeek(i);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public int getFirstDayOfWeek() {
        if (this.mFirstDayOfWeek != 0) {
            return this.mFirstDayOfWeek;
        }
        return this.mCurrentDate.getFirstDayOfWeek();
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void setEnabled(boolean z) {
        this.mContainer.setEnabled(z);
        this.mDayPickerView.setEnabled(z);
        this.mYearPickerView.setEnabled(z);
        this.mHeaderYear.setEnabled(z);
        this.mHeaderMonthDay.setEnabled(z);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public boolean isEnabled() {
        return this.mContainer.isEnabled();
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public CalendarView getCalendarView() {
        throw new UnsupportedOperationException("Not supported by calendar-mode DatePicker");
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void onConfigurationChanged(Configuration configuration) {
        setCurrentLocale(configuration.locale);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public Parcelable onSaveInstanceState(Parcelable parcelable) {
        int i;
        int i2;
        int i3 = this.mCurrentDate.get(1);
        int i4 = this.mCurrentDate.get(2);
        int i5 = this.mCurrentDate.get(5);
        if (this.mCurrentView == 0) {
            i = this.mDayPickerView.getMostVisiblePosition();
            i2 = -1;
        } else if (this.mCurrentView == 1) {
            i = this.mYearPickerView.getFirstVisiblePosition();
            i2 = this.mYearPickerView.getFirstPositionOffset();
        } else {
            i = -1;
            i2 = -1;
        }
        return new DatePicker.AbstractDatePickerDelegate.SavedState(parcelable, i3, i4, i5, this.mMinDate.getTimeInMillis(), this.mMaxDate.getTimeInMillis(), this.mCurrentView, i, i2);
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof DatePicker.AbstractDatePickerDelegate.SavedState) {
            DatePicker.AbstractDatePickerDelegate.SavedState savedState = (DatePicker.AbstractDatePickerDelegate.SavedState) parcelable;
            this.mCurrentDate.set(savedState.getSelectedYear(), savedState.getSelectedMonth(), savedState.getSelectedDay());
            this.mMinDate.setTimeInMillis(savedState.getMinDate());
            this.mMaxDate.setTimeInMillis(savedState.getMaxDate());
            onCurrentDateChanged(false);
            int currentView = savedState.getCurrentView();
            setCurrentView(currentView);
            int listPosition = savedState.getListPosition();
            if (listPosition != -1) {
                if (currentView == 0) {
                    this.mDayPickerView.setPosition(listPosition);
                } else if (currentView == 1) {
                    this.mYearPickerView.setSelectionFromTop(listPosition, savedState.getListPositionOffset());
                }
            }
        }
    }

    @Override // android.widget.DatePicker.DatePickerDelegate
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public CharSequence getAccessibilityClassName() {
        return DatePicker.class.getName();
    }

    public static int getDaysInMonth(int i, int i2) {
        switch (i) {
            case 0:
            case 2:
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
                return 31;
            case 1:
                return i2 % 4 == 0 ? 29 : 28;
            case 3:
            case 5:
            case 8:
            case 10:
                return 30;
            default:
                throw new IllegalArgumentException("Invalid Month");
        }
    }

    private void tryVibrate() {
        this.mDelegator.performHapticFeedback(5);
    }
}
