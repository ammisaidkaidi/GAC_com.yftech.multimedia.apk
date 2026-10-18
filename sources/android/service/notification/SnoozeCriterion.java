package android.service.notification;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;

@SystemApi
/* loaded from: /home/user/work/dex/classes2.dex */
public final class SnoozeCriterion implements Parcelable {
    public static final Parcelable.Creator<SnoozeCriterion> CREATOR = new Parcelable.Creator<SnoozeCriterion>() { // from class: android.service.notification.SnoozeCriterion.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SnoozeCriterion createFromParcel(Parcel parcel) {
            return new SnoozeCriterion(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SnoozeCriterion[] newArray(int i) {
            return new SnoozeCriterion[i];
        }
    };
    private final CharSequence mConfirmation;
    private final CharSequence mExplanation;
    private final String mId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SnoozeCriterion(String str, CharSequence charSequence, CharSequence charSequence2) {
        this.mId = str;
        this.mExplanation = charSequence;
        this.mConfirmation = charSequence2;
    }

    protected SnoozeCriterion(Parcel parcel) {
        if (parcel.readByte() != 0) {
            this.mId = parcel.readString();
        } else {
            this.mId = null;
        }
        if (parcel.readByte() != 0) {
            this.mExplanation = parcel.readCharSequence();
        } else {
            this.mExplanation = null;
        }
        if (parcel.readByte() != 0) {
            this.mConfirmation = parcel.readCharSequence();
        } else {
            this.mConfirmation = null;
        }
    }

    public String getId() {
        return this.mId;
    }

    public CharSequence getExplanation() {
        return this.mExplanation;
    }

    public CharSequence getConfirmation() {
        return this.mConfirmation;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.mId != null) {
            parcel.writeByte((byte) 1);
            parcel.writeString(this.mId);
        } else {
            parcel.writeByte((byte) 0);
        }
        if (this.mExplanation != null) {
            parcel.writeByte((byte) 1);
            parcel.writeCharSequence(this.mExplanation);
        } else {
            parcel.writeByte((byte) 0);
        }
        if (this.mConfirmation != null) {
            parcel.writeByte((byte) 1);
            parcel.writeCharSequence(this.mConfirmation);
        } else {
            parcel.writeByte((byte) 0);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SnoozeCriterion snoozeCriterion = (SnoozeCriterion) obj;
        if (this.mId == null ? snoozeCriterion.mId != null : !this.mId.equals(snoozeCriterion.mId)) {
            return false;
        }
        if (this.mExplanation == null ? snoozeCriterion.mExplanation == null : this.mExplanation.equals(snoozeCriterion.mExplanation)) {
            return this.mConfirmation != null ? this.mConfirmation.equals(snoozeCriterion.mConfirmation) : snoozeCriterion.mConfirmation == null;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.mId != null ? this.mId.hashCode() : 0) * 31) + (this.mExplanation != null ? this.mExplanation.hashCode() : 0)) * 31) + (this.mConfirmation != null ? this.mConfirmation.hashCode() : 0);
    }
}
