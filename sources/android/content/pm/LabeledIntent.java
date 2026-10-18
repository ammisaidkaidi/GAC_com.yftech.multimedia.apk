package android.content.pm;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public class LabeledIntent extends Intent {
    public static final Parcelable.Creator<LabeledIntent> CREATOR = new Parcelable.Creator<LabeledIntent>() { // from class: android.content.pm.LabeledIntent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LabeledIntent createFromParcel(Parcel parcel) {
            return new LabeledIntent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public LabeledIntent[] newArray(int i) {
            return new LabeledIntent[i];
        }
    };
    private int mIcon;
    private int mLabelRes;
    private CharSequence mNonLocalizedLabel;
    private String mSourcePackage;

    public LabeledIntent(Intent intent, String str, int i, int i2) {
        super(intent);
        this.mSourcePackage = str;
        this.mLabelRes = i;
        this.mNonLocalizedLabel = null;
        this.mIcon = i2;
    }

    public LabeledIntent(Intent intent, String str, CharSequence charSequence, int i) {
        super(intent);
        this.mSourcePackage = str;
        this.mLabelRes = 0;
        this.mNonLocalizedLabel = charSequence;
        this.mIcon = i;
    }

    public LabeledIntent(String str, int i, int i2) {
        this.mSourcePackage = str;
        this.mLabelRes = i;
        this.mNonLocalizedLabel = null;
        this.mIcon = i2;
    }

    public LabeledIntent(String str, CharSequence charSequence, int i) {
        this.mSourcePackage = str;
        this.mLabelRes = 0;
        this.mNonLocalizedLabel = charSequence;
        this.mIcon = i;
    }

    public String getSourcePackage() {
        return this.mSourcePackage;
    }

    public int getLabelResource() {
        return this.mLabelRes;
    }

    public CharSequence getNonLocalizedLabel() {
        return this.mNonLocalizedLabel;
    }

    public int getIconResource() {
        return this.mIcon;
    }

    public CharSequence loadLabel(PackageManager packageManager) {
        CharSequence text;
        if (this.mNonLocalizedLabel != null) {
            return this.mNonLocalizedLabel;
        }
        if (this.mLabelRes == 0 || this.mSourcePackage == null || (text = packageManager.getText(this.mSourcePackage, this.mLabelRes, null)) == null) {
            return null;
        }
        return text;
    }

    public Drawable loadIcon(PackageManager packageManager) {
        Drawable drawable;
        if (this.mIcon == 0 || this.mSourcePackage == null || (drawable = packageManager.getDrawable(this.mSourcePackage, this.mIcon, null)) == null) {
            return null;
        }
        return drawable;
    }

    @Override // android.content.Intent, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.mSourcePackage);
        parcel.writeInt(this.mLabelRes);
        TextUtils.writeToParcel(this.mNonLocalizedLabel, parcel, i);
        parcel.writeInt(this.mIcon);
    }

    protected LabeledIntent(Parcel parcel) {
        readFromParcel(parcel);
    }

    @Override // android.content.Intent
    public void readFromParcel(Parcel parcel) {
        super.readFromParcel(parcel);
        this.mSourcePackage = parcel.readString();
        this.mLabelRes = parcel.readInt();
        this.mNonLocalizedLabel = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.mIcon = parcel.readInt();
    }
}
