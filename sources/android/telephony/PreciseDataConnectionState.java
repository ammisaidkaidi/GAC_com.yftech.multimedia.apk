package android.telephony;

import android.net.LinkProperties;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.textclassifier.TextClassifier;

/* loaded from: /home/user/work/dex/classes2.dex */
public class PreciseDataConnectionState implements Parcelable {
    public static final Parcelable.Creator<PreciseDataConnectionState> CREATOR = new Parcelable.Creator<PreciseDataConnectionState>() { // from class: android.telephony.PreciseDataConnectionState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PreciseDataConnectionState createFromParcel(Parcel parcel) {
            return new PreciseDataConnectionState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PreciseDataConnectionState[] newArray(int i) {
            return new PreciseDataConnectionState[i];
        }
    };
    private String mAPN;
    private String mAPNType;
    private String mFailCause;
    private LinkProperties mLinkProperties;
    private int mNetworkType;
    private String mReason;
    private int mState;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PreciseDataConnectionState(int i, int i2, String str, String str2, String str3, LinkProperties linkProperties, String str4) {
        this.mState = -1;
        this.mNetworkType = 0;
        this.mAPNType = TextClassifier.TYPE_UNKNOWN;
        this.mAPN = TextClassifier.TYPE_UNKNOWN;
        this.mReason = TextClassifier.TYPE_UNKNOWN;
        this.mLinkProperties = null;
        this.mFailCause = TextClassifier.TYPE_UNKNOWN;
        this.mState = i;
        this.mNetworkType = i2;
        this.mAPNType = str;
        this.mAPN = str2;
        this.mReason = str3;
        this.mLinkProperties = linkProperties;
        this.mFailCause = str4;
    }

    public PreciseDataConnectionState() {
        this.mState = -1;
        this.mNetworkType = 0;
        this.mAPNType = TextClassifier.TYPE_UNKNOWN;
        this.mAPN = TextClassifier.TYPE_UNKNOWN;
        this.mReason = TextClassifier.TYPE_UNKNOWN;
        this.mLinkProperties = null;
        this.mFailCause = TextClassifier.TYPE_UNKNOWN;
    }

    private PreciseDataConnectionState(Parcel parcel) {
        this.mState = -1;
        this.mNetworkType = 0;
        this.mAPNType = TextClassifier.TYPE_UNKNOWN;
        this.mAPN = TextClassifier.TYPE_UNKNOWN;
        this.mReason = TextClassifier.TYPE_UNKNOWN;
        this.mLinkProperties = null;
        this.mFailCause = TextClassifier.TYPE_UNKNOWN;
        this.mState = parcel.readInt();
        this.mNetworkType = parcel.readInt();
        this.mAPNType = parcel.readString();
        this.mAPN = parcel.readString();
        this.mReason = parcel.readString();
        this.mLinkProperties = (LinkProperties) parcel.readParcelable(null);
        this.mFailCause = parcel.readString();
    }

    public int getDataConnectionState() {
        return this.mState;
    }

    public int getDataConnectionNetworkType() {
        return this.mNetworkType;
    }

    public String getDataConnectionAPNType() {
        return this.mAPNType;
    }

    public String getDataConnectionAPN() {
        return this.mAPN;
    }

    public String getDataConnectionChangeReason() {
        return this.mReason;
    }

    public LinkProperties getDataConnectionLinkProperties() {
        return this.mLinkProperties;
    }

    public String getDataConnectionFailCause() {
        return this.mFailCause;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mState);
        parcel.writeInt(this.mNetworkType);
        parcel.writeString(this.mAPNType);
        parcel.writeString(this.mAPN);
        parcel.writeString(this.mReason);
        parcel.writeParcelable(this.mLinkProperties, i);
        parcel.writeString(this.mFailCause);
    }

    public int hashCode() {
        return ((((((((((((this.mState + 31) * 31) + this.mNetworkType) * 31) + (this.mAPNType == null ? 0 : this.mAPNType.hashCode())) * 31) + (this.mAPN == null ? 0 : this.mAPN.hashCode())) * 31) + (this.mReason == null ? 0 : this.mReason.hashCode())) * 31) + (this.mLinkProperties == null ? 0 : this.mLinkProperties.hashCode())) * 31) + (this.mFailCause != null ? this.mFailCause.hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        PreciseDataConnectionState preciseDataConnectionState = (PreciseDataConnectionState) obj;
        if (this.mAPN == null) {
            if (preciseDataConnectionState.mAPN != null) {
                return false;
            }
        } else if (!this.mAPN.equals(preciseDataConnectionState.mAPN)) {
            return false;
        }
        if (this.mAPNType == null) {
            if (preciseDataConnectionState.mAPNType != null) {
                return false;
            }
        } else if (!this.mAPNType.equals(preciseDataConnectionState.mAPNType)) {
            return false;
        }
        if (this.mFailCause == null) {
            if (preciseDataConnectionState.mFailCause != null) {
                return false;
            }
        } else if (!this.mFailCause.equals(preciseDataConnectionState.mFailCause)) {
            return false;
        }
        if (this.mLinkProperties == null) {
            if (preciseDataConnectionState.mLinkProperties != null) {
                return false;
            }
        } else if (!this.mLinkProperties.equals(preciseDataConnectionState.mLinkProperties)) {
            return false;
        }
        if (this.mNetworkType != preciseDataConnectionState.mNetworkType) {
            return false;
        }
        if (this.mReason == null) {
            if (preciseDataConnectionState.mReason != null) {
                return false;
            }
        } else if (!this.mReason.equals(preciseDataConnectionState.mReason)) {
            return false;
        }
        return this.mState == preciseDataConnectionState.mState;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Data Connection state: " + this.mState);
        sb.append(", Network type: " + this.mNetworkType);
        sb.append(", APN type: " + this.mAPNType);
        sb.append(", APN: " + this.mAPN);
        sb.append(", Change reason: " + this.mReason);
        sb.append(", Link properties: " + this.mLinkProperties);
        sb.append(", Fail cause: " + this.mFailCause);
        return sb.toString();
    }
}
