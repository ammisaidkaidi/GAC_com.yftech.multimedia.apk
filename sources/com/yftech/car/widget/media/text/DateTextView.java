package com.yftech.car.widget.media.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.car.widget.media.R;

/* loaded from: /home/user/work/dex/classes3.dex */
public class DateTextView extends AppCompatTextView {
    private String mPattern;
    private String mThisYearPattern;
    private String mToday;
    private String mYesterday;

    private DateTextView(@NonNull Context context) {
        super(context);
    }

    public DateTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public DateTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DateTextView);
        this.mPattern = obtainStyledAttributes.getString(R.styleable.DateTextView_date_format_pattern);
        this.mThisYearPattern = obtainStyledAttributes.getString(R.styleable.DateTextView_date_format_this_year_pattern);
        this.mToday = obtainStyledAttributes.getString(R.styleable.DateTextView_date_today);
        this.mYesterday = obtainStyledAttributes.getString(R.styleable.DateTextView_date_yesterday);
    }

    public String getFormatPattern() {
        return this.mPattern;
    }

    public String getToday() {
        return this.mToday;
    }

    public String getYesterday() {
        return this.mYesterday;
    }

    public String getThisYearPattern() {
        return this.mThisYearPattern;
    }
}
