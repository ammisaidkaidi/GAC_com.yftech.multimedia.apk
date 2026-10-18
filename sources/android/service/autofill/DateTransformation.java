package android.service.autofill;

import android.icu.text.DateFormat;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import android.view.autofill.Helper;
import android.widget.RemoteViews;
import com.android.internal.util.Preconditions;
import java.util.Date;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class DateTransformation extends InternalTransformation implements Transformation, Parcelable {
    public static final Parcelable.Creator<DateTransformation> CREATOR = new Parcelable.Creator<DateTransformation>() { // from class: android.service.autofill.DateTransformation.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DateTransformation createFromParcel(Parcel parcel) {
            return new DateTransformation((AutofillId) parcel.readParcelable(null), (DateFormat) parcel.readSerializable());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DateTransformation[] newArray(int i) {
            return new DateTransformation[i];
        }
    };
    private static final String TAG = "DateTransformation";
    private final DateFormat mDateFormat;
    private final AutofillId mFieldId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DateTransformation(AutofillId autofillId, DateFormat dateFormat) {
        this.mFieldId = (AutofillId) Preconditions.checkNotNull(autofillId);
        this.mDateFormat = (DateFormat) Preconditions.checkNotNull(dateFormat);
    }

    @Override // android.service.autofill.InternalTransformation
    public void apply(ValueFinder valueFinder, RemoteViews remoteViews, int i) throws Exception {
        AutofillValue findRawValueByAutofillId = valueFinder.findRawValueByAutofillId(this.mFieldId);
        if (findRawValueByAutofillId == null) {
            Log.w(TAG, "No value for id " + this.mFieldId);
            return;
        }
        if (!findRawValueByAutofillId.isDate()) {
            Log.w(TAG, "Value for " + this.mFieldId + " is not date: " + findRawValueByAutofillId);
            return;
        }
        try {
            Date date = new Date(findRawValueByAutofillId.getDateValue());
            String format = this.mDateFormat.format(date);
            if (Helper.sDebug) {
                Log.d(TAG, "Transformed " + date + " to " + format);
            }
            remoteViews.setCharSequence(i, "setText", format);
        } catch (Exception e) {
            Log.w(TAG, "Could not apply " + this.mDateFormat + " to " + findRawValueByAutofillId + ": " + e);
        }
    }

    public String toString() {
        if (!Helper.sDebug) {
            return super.toString();
        }
        return "DateTransformation: [id=" + this.mFieldId + ", format=" + this.mDateFormat + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.mFieldId, i);
        parcel.writeSerializable(this.mDateFormat);
    }
}
