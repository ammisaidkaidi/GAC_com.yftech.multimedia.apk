package android.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import java.util.Calendar;

/* loaded from: /home/user/work/dex/classes.dex */
public class DatePickerDialog extends AlertDialog implements DialogInterface.OnClickListener, DatePicker.OnDateChangedListener {
    private static final String DAY = "day";
    private static final String MONTH = "month";
    private static final String YEAR = "year";
    private final DatePicker mDatePicker;
    private OnDateSetListener mDateSetListener;
    private final DatePicker.ValidationCallback mValidationCallback;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDateSetListener {
        void onDateSet(DatePicker datePicker, int i, int i2, int i3);
    }

    public DatePickerDialog(Context context) {
        this(context, 0, null, Calendar.getInstance(), -1, -1, -1);
    }

    public DatePickerDialog(Context context, int i) {
        this(context, i, null, Calendar.getInstance(), -1, -1, -1);
    }

    public DatePickerDialog(Context context, OnDateSetListener onDateSetListener, int i, int i2, int i3) {
        this(context, 0, onDateSetListener, null, i, i2, i3);
    }

    public DatePickerDialog(Context context, int i, OnDateSetListener onDateSetListener, int i2, int i3, int i4) {
        this(context, i, onDateSetListener, null, i2, i3, i4);
    }

    private DatePickerDialog(Context context, int i, OnDateSetListener onDateSetListener, Calendar calendar, int i2, int i3, int i4) {
        super(context, resolveDialogTheme(context, i));
        this.mValidationCallback = new DatePicker.ValidationCallback() { // from class: android.app.DatePickerDialog.1
            public void onValidationChanged(boolean z) {
                Button button = DatePickerDialog.this.getButton(-1);
                if (button != null) {
                    button.setEnabled(z);
                }
            }
        };
        Context context2 = getContext();
        View inflate = LayoutInflater.from(context2).inflate(17367118, (ViewGroup) null);
        setView(inflate);
        setButton(-1, context2.getString(R.string.ok), this);
        setButton(-2, context2.getString(R.string.cancel), this);
        setButtonPanelLayoutHint(1);
        if (calendar != null) {
            i2 = calendar.get(1);
            i3 = calendar.get(2);
            i4 = calendar.get(5);
        }
        this.mDatePicker = (DatePicker) inflate.findViewById(16908824);
        this.mDatePicker.init(i2, i3, i4, this);
        this.mDatePicker.setValidationCallback(this.mValidationCallback);
        this.mDateSetListener = onDateSetListener;
    }

    static int resolveDialogTheme(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.datePickerDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // android.widget.DatePicker.OnDateChangedListener
    public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
        this.mDatePicker.init(i, i2, i3, this);
    }

    public void setOnDateSetListener(OnDateSetListener onDateSetListener) {
        this.mDateSetListener = onDateSetListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -2:
                cancel();
                return;
            case -1:
                if (this.mDateSetListener != null) {
                    this.mDatePicker.clearFocus();
                    this.mDateSetListener.onDateSet(this.mDatePicker, this.mDatePicker.getYear(), this.mDatePicker.getMonth(), this.mDatePicker.getDayOfMonth());
                    return;
                }
                return;
            default:
                return;
        }
    }

    public DatePicker getDatePicker() {
        return this.mDatePicker;
    }

    public void updateDate(int i, int i2, int i3) {
        this.mDatePicker.updateDate(i, i2, i3);
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle onSaveInstanceState = super.onSaveInstanceState();
        onSaveInstanceState.putInt(YEAR, this.mDatePicker.getYear());
        onSaveInstanceState.putInt(MONTH, this.mDatePicker.getMonth());
        onSaveInstanceState.putInt(DAY, this.mDatePicker.getDayOfMonth());
        return onSaveInstanceState;
    }

    @Override // android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.mDatePicker.init(bundle.getInt(YEAR), bundle.getInt(MONTH), bundle.getInt(DAY), this);
    }
}
