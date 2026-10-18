package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.Time;
import com.android.internal.telephony.uicc.IccUtils;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes2.dex */
public class SmsCbEtwsInfo implements Parcelable {
    public static final Parcelable.Creator<SmsCbEtwsInfo> CREATOR = new Parcelable.Creator<SmsCbEtwsInfo>() { // from class: android.telephony.SmsCbEtwsInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SmsCbEtwsInfo createFromParcel(Parcel parcel) {
            return new SmsCbEtwsInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SmsCbEtwsInfo[] newArray(int i) {
            return new SmsCbEtwsInfo[i];
        }
    };
    public static final int ETWS_WARNING_TYPE_EARTHQUAKE = 0;
    public static final int ETWS_WARNING_TYPE_EARTHQUAKE_AND_TSUNAMI = 2;
    public static final int ETWS_WARNING_TYPE_OTHER_EMERGENCY = 4;
    public static final int ETWS_WARNING_TYPE_TEST_MESSAGE = 3;
    public static final int ETWS_WARNING_TYPE_TSUNAMI = 1;
    public static final int ETWS_WARNING_TYPE_UNKNOWN = -1;
    private final boolean mActivatePopup;
    private final boolean mEmergencyUserAlert;
    private final boolean mPrimary;
    private final byte[] mWarningSecurityInformation;
    private final int mWarningType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SmsCbEtwsInfo(int i, boolean z, boolean z2, boolean z3, byte[] bArr) {
        this.mWarningType = i;
        this.mEmergencyUserAlert = z;
        this.mActivatePopup = z2;
        this.mPrimary = z3;
        this.mWarningSecurityInformation = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmsCbEtwsInfo(Parcel parcel) {
        this.mWarningType = parcel.readInt();
        this.mEmergencyUserAlert = parcel.readInt() != 0;
        this.mActivatePopup = parcel.readInt() != 0;
        this.mPrimary = parcel.readInt() != 0;
        this.mWarningSecurityInformation = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mWarningType);
        parcel.writeInt(this.mEmergencyUserAlert ? 1 : 0);
        parcel.writeInt(this.mActivatePopup ? 1 : 0);
        parcel.writeInt(this.mPrimary ? 1 : 0);
        parcel.writeByteArray(this.mWarningSecurityInformation);
    }

    public int getWarningType() {
        return this.mWarningType;
    }

    public boolean isEmergencyUserAlert() {
        return this.mEmergencyUserAlert;
    }

    public boolean isPopupAlert() {
        return this.mActivatePopup;
    }

    public boolean isPrimary() {
        return this.mPrimary;
    }

    public long getPrimaryNotificationTimestamp() {
        if (this.mWarningSecurityInformation == null || this.mWarningSecurityInformation.length < 7) {
            return 0L;
        }
        int gsmBcdByteToInt = IccUtils.gsmBcdByteToInt(this.mWarningSecurityInformation[0]);
        int gsmBcdByteToInt2 = IccUtils.gsmBcdByteToInt(this.mWarningSecurityInformation[1]);
        int gsmBcdByteToInt3 = IccUtils.gsmBcdByteToInt(this.mWarningSecurityInformation[2]);
        int gsmBcdByteToInt4 = IccUtils.gsmBcdByteToInt(this.mWarningSecurityInformation[3]);
        int gsmBcdByteToInt5 = IccUtils.gsmBcdByteToInt(this.mWarningSecurityInformation[4]);
        int gsmBcdByteToInt6 = IccUtils.gsmBcdByteToInt(this.mWarningSecurityInformation[5]);
        byte b = this.mWarningSecurityInformation[6];
        int gsmBcdByteToInt7 = IccUtils.gsmBcdByteToInt((byte) (b & (-9)));
        if ((b & 8) != 0) {
            gsmBcdByteToInt7 = -gsmBcdByteToInt7;
        }
        Time time = new Time(Time.TIMEZONE_UTC);
        time.year = gsmBcdByteToInt + 2000;
        time.month = gsmBcdByteToInt2 - 1;
        time.monthDay = gsmBcdByteToInt3;
        time.hour = gsmBcdByteToInt4;
        time.minute = gsmBcdByteToInt5;
        time.second = gsmBcdByteToInt6;
        return time.toMillis(true) - (((gsmBcdByteToInt7 * 15) * 60) * 1000);
    }

    public byte[] getPrimaryNotificationSignature() {
        if (this.mWarningSecurityInformation == null || this.mWarningSecurityInformation.length < 50) {
            return null;
        }
        return Arrays.copyOfRange(this.mWarningSecurityInformation, 7, 50);
    }

    public String toString() {
        return "SmsCbEtwsInfo{warningType=" + this.mWarningType + ", emergencyUserAlert=" + this.mEmergencyUserAlert + ", activatePopup=" + this.mActivatePopup + '}';
    }
}
