package android.app.admin;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public class PasswordMetrics implements Parcelable {
    private static final int CHAR_DIGIT = 2;
    private static final int CHAR_LOWER_CASE = 0;
    private static final int CHAR_SYMBOL = 3;
    private static final int CHAR_UPPER_CASE = 1;
    public static final Parcelable.Creator<PasswordMetrics> CREATOR = new Parcelable.Creator<PasswordMetrics>() { // from class: android.app.admin.PasswordMetrics.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PasswordMetrics createFromParcel(Parcel parcel) {
            return new PasswordMetrics(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PasswordMetrics[] newArray(int i) {
            return new PasswordMetrics[i];
        }
    };
    public static final int MAX_ALLOWED_SEQUENCE = 3;
    public int length;
    public int letters;
    public int lowerCase;
    public int nonLetter;
    public int numeric;
    public int quality;
    public int symbols;
    public int upperCase;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    private @interface CharacterCatagory {
    }

    private static int categoryChar(char c) {
        if ('a' <= c && c <= 'z') {
            return 0;
        }
        if ('A' > c || c > 'Z') {
            return ('0' > c || c > '9') ? 3 : 2;
        }
        return 1;
    }

    private static int maxDiffCategory(int i) {
        switch (i) {
            case 0:
            case 1:
                return 1;
            case 2:
                return 10;
            default:
                return 0;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PasswordMetrics() {
        this.quality = 0;
        this.length = 0;
        this.letters = 0;
        this.upperCase = 0;
        this.lowerCase = 0;
        this.numeric = 0;
        this.symbols = 0;
        this.nonLetter = 0;
    }

    public PasswordMetrics(int i, int i2) {
        this.quality = 0;
        this.length = 0;
        this.letters = 0;
        this.upperCase = 0;
        this.lowerCase = 0;
        this.numeric = 0;
        this.symbols = 0;
        this.nonLetter = 0;
        this.quality = i;
        this.length = i2;
    }

    public PasswordMetrics(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this(i, i2);
        this.letters = i3;
        this.upperCase = i4;
        this.lowerCase = i5;
        this.numeric = i6;
        this.symbols = i7;
        this.nonLetter = i8;
    }

    private PasswordMetrics(Parcel parcel) {
        this.quality = 0;
        this.length = 0;
        this.letters = 0;
        this.upperCase = 0;
        this.lowerCase = 0;
        this.numeric = 0;
        this.symbols = 0;
        this.nonLetter = 0;
        this.quality = parcel.readInt();
        this.length = parcel.readInt();
        this.letters = parcel.readInt();
        this.upperCase = parcel.readInt();
        this.lowerCase = parcel.readInt();
        this.numeric = parcel.readInt();
        this.symbols = parcel.readInt();
        this.nonLetter = parcel.readInt();
    }

    public boolean isDefault() {
        return this.quality == 0 && this.length == 0 && this.letters == 0 && this.upperCase == 0 && this.lowerCase == 0 && this.numeric == 0 && this.symbols == 0 && this.nonLetter == 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.quality);
        parcel.writeInt(this.length);
        parcel.writeInt(this.letters);
        parcel.writeInt(this.upperCase);
        parcel.writeInt(this.lowerCase);
        parcel.writeInt(this.numeric);
        parcel.writeInt(this.symbols);
        parcel.writeInt(this.nonLetter);
    }

    public static PasswordMetrics computeForPassword(String str) {
        int i;
        int i2;
        int length = str.length();
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < length; i9++) {
            switch (categoryChar(str.charAt(i9))) {
                case 0:
                    i3++;
                    i5++;
                    break;
                case 1:
                    i3++;
                    i4++;
                    break;
                case 2:
                    i6++;
                    i8++;
                    break;
                case 3:
                    i7++;
                    i8++;
                    break;
            }
        }
        boolean z = i6 > 0;
        boolean z2 = i3 + i7 > 0;
        if (z2 && z) {
            i2 = DevicePolicyManager.PASSWORD_QUALITY_ALPHANUMERIC;
        } else if (z2) {
            i2 = 262144;
        } else if (z) {
            i2 = maxLengthSequence(str) > 3 ? 131072 : 196608;
        } else {
            i = 0;
            return new PasswordMetrics(i, length, i3, i4, i5, i6, i7, i8);
        }
        i = i2;
        return new PasswordMetrics(i, length, i3, i4, i5, i6, i7, i8);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PasswordMetrics)) {
            return false;
        }
        PasswordMetrics passwordMetrics = (PasswordMetrics) obj;
        return this.quality == passwordMetrics.quality && this.length == passwordMetrics.length && this.letters == passwordMetrics.letters && this.upperCase == passwordMetrics.upperCase && this.lowerCase == passwordMetrics.lowerCase && this.numeric == passwordMetrics.numeric && this.symbols == passwordMetrics.symbols && this.nonLetter == passwordMetrics.nonLetter;
    }

    public static int maxLengthSequence(String str) {
        if (str.length() == 0) {
            return 0;
        }
        char charAt = str.charAt(0);
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int categoryChar = categoryChar(charAt);
        char c = charAt;
        int i4 = 1;
        while (i4 < str.length()) {
            char charAt2 = str.charAt(i4);
            int categoryChar2 = categoryChar(charAt2);
            int i5 = charAt2 - c;
            if (categoryChar2 != categoryChar || Math.abs(i5) > maxDiffCategory(categoryChar)) {
                int max = Math.max(i, i4 - i2);
                i2 = i4;
                z = false;
                i = max;
                categoryChar = categoryChar2;
            } else {
                if (z && i5 != i3) {
                    i = Math.max(i, i4 - i2);
                    i2 = i4 - 1;
                }
                i3 = i5;
                z = true;
            }
            i4++;
            c = charAt2;
        }
        return Math.max(i, str.length() - i2);
    }
}
