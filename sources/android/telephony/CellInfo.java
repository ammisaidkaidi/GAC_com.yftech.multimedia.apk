package android.telephony;

import android.os.Parcel;
import android.os.Parcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class CellInfo implements Parcelable {
    public static final int CONNECTION_NONE = 0;
    public static final int CONNECTION_PRIMARY_SERVING = 1;
    public static final int CONNECTION_SECONDARY_SERVING = 2;
    public static final int CONNECTION_UNKNOWN = Integer.MAX_VALUE;
    public static final Parcelable.Creator<CellInfo> CREATOR = new Parcelable.Creator<CellInfo>() { // from class: android.telephony.CellInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfo createFromParcel(Parcel parcel) {
            switch (parcel.readInt()) {
                case 1:
                    return CellInfoGsm.createFromParcelBody(parcel);
                case 2:
                    return CellInfoCdma.createFromParcelBody(parcel);
                case 3:
                    return CellInfoLte.createFromParcelBody(parcel);
                case 4:
                    return CellInfoWcdma.createFromParcelBody(parcel);
                default:
                    throw new RuntimeException("Bad CellInfo Parcel");
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CellInfo[] newArray(int i) {
            return new CellInfo[i];
        }
    };
    public static final int TIMESTAMP_TYPE_ANTENNA = 1;
    public static final int TIMESTAMP_TYPE_JAVA_RIL = 4;
    public static final int TIMESTAMP_TYPE_MODEM = 2;
    public static final int TIMESTAMP_TYPE_OEM_RIL = 3;
    public static final int TIMESTAMP_TYPE_UNKNOWN = 0;
    protected static final int TYPE_CDMA = 2;
    protected static final int TYPE_GSM = 1;
    protected static final int TYPE_LTE = 3;
    protected static final int TYPE_WCDMA = 4;
    private int mCellConnectionStatus;
    private boolean mRegistered;
    private long mTimeStamp;
    private int mTimeStampType;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface CellConnectionStatus {
    }

    private static String timeStampTypeToString(int i) {
        switch (i) {
            case 1:
                return "antenna";
            case 2:
                return "modem";
            case 3:
                return "oem_ril";
            case 4:
                return "java_ril";
            default:
                return "unknown";
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public abstract void writeToParcel(Parcel parcel, int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public CellInfo() {
        this.mCellConnectionStatus = 0;
        this.mRegistered = false;
        this.mTimeStampType = 0;
        this.mTimeStamp = SubscriptionPlan.BYTES_UNLIMITED;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CellInfo(CellInfo cellInfo) {
        this.mCellConnectionStatus = 0;
        this.mRegistered = cellInfo.mRegistered;
        this.mTimeStampType = cellInfo.mTimeStampType;
        this.mTimeStamp = cellInfo.mTimeStamp;
        this.mCellConnectionStatus = cellInfo.mCellConnectionStatus;
    }

    public boolean isRegistered() {
        return this.mRegistered;
    }

    public void setRegistered(boolean z) {
        this.mRegistered = z;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public void setTimeStamp(long j) {
        this.mTimeStamp = j;
    }

    public int getCellConnectionStatus() {
        return this.mCellConnectionStatus;
    }

    public void setCellConnectionStatus(int i) {
        this.mCellConnectionStatus = i;
    }

    public int getTimeStampType() {
        return this.mTimeStampType;
    }

    public void setTimeStampType(int i) {
        if (i < 0 || i > 4) {
            this.mTimeStampType = 0;
        } else {
            this.mTimeStampType = i;
        }
    }

    public int hashCode() {
        return ((!this.mRegistered ? 1 : 0) * 31) + (((int) (this.mTimeStamp / 1000)) * 31) + (this.mTimeStampType * 31) + (this.mCellConnectionStatus * 31);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        try {
            CellInfo cellInfo = (CellInfo) obj;
            if (this.mRegistered == cellInfo.mRegistered && this.mTimeStamp == cellInfo.mTimeStamp && this.mTimeStampType == cellInfo.mTimeStampType) {
                return this.mCellConnectionStatus == cellInfo.mCellConnectionStatus;
            }
            return false;
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("mRegistered=");
        stringBuffer.append(this.mRegistered ? "YES" : "NO");
        String timeStampTypeToString = timeStampTypeToString(this.mTimeStampType);
        stringBuffer.append(" mTimeStampType=");
        stringBuffer.append(timeStampTypeToString);
        stringBuffer.append(" mTimeStamp=");
        stringBuffer.append(this.mTimeStamp);
        stringBuffer.append("ns");
        stringBuffer.append(" mCellConnectionStatus=");
        stringBuffer.append(this.mCellConnectionStatus);
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeToParcel(Parcel parcel, int i, int i2) {
        parcel.writeInt(i2);
        parcel.writeInt(this.mRegistered ? 1 : 0);
        parcel.writeInt(this.mTimeStampType);
        parcel.writeLong(this.mTimeStamp);
        parcel.writeInt(this.mCellConnectionStatus);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CellInfo(Parcel parcel) {
        this.mCellConnectionStatus = 0;
        this.mRegistered = parcel.readInt() == 1;
        this.mTimeStampType = parcel.readInt();
        this.mTimeStamp = parcel.readLong();
        this.mCellConnectionStatus = parcel.readInt();
    }
}
