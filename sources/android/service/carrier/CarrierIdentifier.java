package android.service.carrier;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.telephony.uicc.IccUtils;
import java.util.Objects;

/* loaded from: /home/user/work/dex/classes2.dex */
public class CarrierIdentifier implements Parcelable {
    public static final Parcelable.Creator<CarrierIdentifier> CREATOR = new Parcelable.Creator<CarrierIdentifier>() { // from class: android.service.carrier.CarrierIdentifier.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarrierIdentifier createFromParcel(Parcel parcel) {
            return new CarrierIdentifier(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CarrierIdentifier[] newArray(int i) {
            return new CarrierIdentifier[i];
        }
    };
    private String mGid1;
    private String mGid2;
    private String mImsi;
    private String mMcc;
    private String mMnc;
    private String mSpn;

    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface MatchType {
        public static final int ALL = 0;
        public static final int GID1 = 3;
        public static final int GID2 = 4;
        public static final int IMSI_PREFIX = 2;
        public static final int SPN = 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public CarrierIdentifier(String str, String str2, String str3, String str4, String str5, String str6) {
        this.mMcc = str;
        this.mMnc = str2;
        this.mSpn = str3;
        this.mImsi = str4;
        this.mGid1 = str5;
        this.mGid2 = str6;
    }

    public CarrierIdentifier(byte[] bArr, String str, String str2) {
        if (bArr.length != 3) {
            throw new IllegalArgumentException("MCC & MNC must be set by a 3-byte array: byte[" + bArr.length + "]");
        }
        String bytesToHexString = IccUtils.bytesToHexString(bArr);
        this.mMcc = new String(new char[]{bytesToHexString.charAt(1), bytesToHexString.charAt(0), bytesToHexString.charAt(3)});
        if (bytesToHexString.charAt(2) == 'F') {
            this.mMnc = new String(new char[]{bytesToHexString.charAt(5), bytesToHexString.charAt(4)});
        } else {
            this.mMnc = new String(new char[]{bytesToHexString.charAt(5), bytesToHexString.charAt(4), bytesToHexString.charAt(2)});
        }
        this.mGid1 = str;
        this.mGid2 = str2;
        this.mSpn = null;
        this.mImsi = null;
    }

    public CarrierIdentifier(Parcel parcel) {
        readFromParcel(parcel);
    }

    public String getMcc() {
        return this.mMcc;
    }

    public String getMnc() {
        return this.mMnc;
    }

    public String getSpn() {
        return this.mSpn;
    }

    public String getImsi() {
        return this.mImsi;
    }

    public String getGid1() {
        return this.mGid1;
    }

    public String getGid2() {
        return this.mGid2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        CarrierIdentifier carrierIdentifier = (CarrierIdentifier) obj;
        return Objects.equals(this.mMcc, carrierIdentifier.mMcc) && Objects.equals(this.mMnc, carrierIdentifier.mMnc) && Objects.equals(this.mSpn, carrierIdentifier.mSpn) && Objects.equals(this.mImsi, carrierIdentifier.mImsi) && Objects.equals(this.mGid1, carrierIdentifier.mGid1) && Objects.equals(this.mGid2, carrierIdentifier.mGid2);
    }

    public int hashCode() {
        return ((((((((((Objects.hashCode(this.mMcc) + 31) * 31) + Objects.hashCode(this.mMnc)) * 31) + Objects.hashCode(this.mSpn)) * 31) + Objects.hashCode(this.mImsi)) * 31) + Objects.hashCode(this.mGid1)) * 31) + Objects.hashCode(this.mGid2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mMcc);
        parcel.writeString(this.mMnc);
        parcel.writeString(this.mSpn);
        parcel.writeString(this.mImsi);
        parcel.writeString(this.mGid1);
        parcel.writeString(this.mGid2);
    }

    public String toString() {
        return "CarrierIdentifier{mcc=" + this.mMcc + ",mnc=" + this.mMnc + ",spn=" + this.mSpn + ",imsi=" + this.mImsi + ",gid1=" + this.mGid1 + ",gid2=" + this.mGid2 + "}";
    }

    public void readFromParcel(Parcel parcel) {
        this.mMcc = parcel.readString();
        this.mMnc = parcel.readString();
        this.mSpn = parcel.readString();
        this.mImsi = parcel.readString();
        this.mGid1 = parcel.readString();
        this.mGid2 = parcel.readString();
    }
}
