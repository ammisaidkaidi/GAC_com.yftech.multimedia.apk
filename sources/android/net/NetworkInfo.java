package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.annotations.VisibleForTesting;
import java.util.EnumMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class NetworkInfo implements Parcelable {
    public static final Parcelable.Creator<NetworkInfo> CREATOR;
    private static final EnumMap<DetailedState, State> stateMap = new EnumMap<>(DetailedState.class);
    private DetailedState mDetailedState;
    private String mExtraInfo;
    private boolean mIsAvailable;
    private boolean mIsFailover;
    private boolean mIsRoaming;
    private int mNetworkType;
    private String mReason;
    private State mState;
    private int mSubtype;
    private String mSubtypeName;
    private String mTypeName;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum DetailedState {
        IDLE,
        SCANNING,
        CONNECTING,
        AUTHENTICATING,
        OBTAINING_IPADDR,
        CONNECTED,
        SUSPENDED,
        DISCONNECTING,
        DISCONNECTED,
        FAILED,
        BLOCKED,
        VERIFYING_POOR_LINK,
        CAPTIVE_PORTAL_CHECK
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum State {
        CONNECTING,
        CONNECTED,
        SUSPENDED,
        DISCONNECTING,
        DISCONNECTED,
        UNKNOWN
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    static {
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.IDLE, (DetailedState) State.DISCONNECTED);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.SCANNING, (DetailedState) State.DISCONNECTED);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.CONNECTING, (DetailedState) State.CONNECTING);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.AUTHENTICATING, (DetailedState) State.CONNECTING);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.OBTAINING_IPADDR, (DetailedState) State.CONNECTING);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.VERIFYING_POOR_LINK, (DetailedState) State.CONNECTING);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.CAPTIVE_PORTAL_CHECK, (DetailedState) State.CONNECTING);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.CONNECTED, (DetailedState) State.CONNECTED);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.SUSPENDED, (DetailedState) State.SUSPENDED);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.DISCONNECTING, (DetailedState) State.DISCONNECTING);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.DISCONNECTED, (DetailedState) State.DISCONNECTED);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.FAILED, (DetailedState) State.DISCONNECTED);
        stateMap.put((EnumMap<DetailedState, State>) DetailedState.BLOCKED, (DetailedState) State.DISCONNECTED);
        CREATOR = new Parcelable.Creator<NetworkInfo>() { // from class: android.net.NetworkInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NetworkInfo createFromParcel(Parcel parcel) {
                NetworkInfo networkInfo = new NetworkInfo(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString());
                networkInfo.mState = State.valueOf(parcel.readString());
                networkInfo.mDetailedState = DetailedState.valueOf(parcel.readString());
                networkInfo.mIsFailover = parcel.readInt() != 0;
                networkInfo.mIsAvailable = parcel.readInt() != 0;
                networkInfo.mIsRoaming = parcel.readInt() != 0;
                networkInfo.mReason = parcel.readString();
                networkInfo.mExtraInfo = parcel.readString();
                return networkInfo;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public NetworkInfo[] newArray(int i) {
                return new NetworkInfo[i];
            }
        };
    }

    public NetworkInfo(int i, int i2, String str, String str2) {
        if (!ConnectivityManager.isNetworkTypeValid(i) && i != -1) {
            throw new IllegalArgumentException("Invalid network type: " + i);
        }
        this.mNetworkType = i;
        this.mSubtype = i2;
        this.mTypeName = str;
        this.mSubtypeName = str2;
        setDetailedState(DetailedState.IDLE, null, null);
        this.mState = State.UNKNOWN;
    }

    public NetworkInfo(NetworkInfo networkInfo) {
        if (networkInfo != null) {
            synchronized (networkInfo) {
                this.mNetworkType = networkInfo.mNetworkType;
                this.mSubtype = networkInfo.mSubtype;
                this.mTypeName = networkInfo.mTypeName;
                this.mSubtypeName = networkInfo.mSubtypeName;
                this.mState = networkInfo.mState;
                this.mDetailedState = networkInfo.mDetailedState;
                this.mReason = networkInfo.mReason;
                this.mExtraInfo = networkInfo.mExtraInfo;
                this.mIsFailover = networkInfo.mIsFailover;
                this.mIsAvailable = networkInfo.mIsAvailable;
                this.mIsRoaming = networkInfo.mIsRoaming;
            }
        }
    }

    @Deprecated
    public int getType() {
        int i;
        synchronized (this) {
            i = this.mNetworkType;
        }
        return i;
    }

    @Deprecated
    public void setType(int i) {
        synchronized (this) {
            this.mNetworkType = i;
        }
    }

    public int getSubtype() {
        int i;
        synchronized (this) {
            i = this.mSubtype;
        }
        return i;
    }

    public void setSubtype(int i, String str) {
        synchronized (this) {
            this.mSubtype = i;
            this.mSubtypeName = str;
        }
    }

    @Deprecated
    public String getTypeName() {
        String str;
        synchronized (this) {
            str = this.mTypeName;
        }
        return str;
    }

    public String getSubtypeName() {
        String str;
        synchronized (this) {
            str = this.mSubtypeName;
        }
        return str;
    }

    @Deprecated
    public boolean isConnectedOrConnecting() {
        boolean z;
        synchronized (this) {
            z = this.mState == State.CONNECTED || this.mState == State.CONNECTING;
        }
        return z;
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this) {
            z = this.mState == State.CONNECTED;
        }
        return z;
    }

    @Deprecated
    public boolean isAvailable() {
        boolean z;
        synchronized (this) {
            z = this.mIsAvailable;
        }
        return z;
    }

    @Deprecated
    public void setIsAvailable(boolean z) {
        synchronized (this) {
            this.mIsAvailable = z;
        }
    }

    @Deprecated
    public boolean isFailover() {
        boolean z;
        synchronized (this) {
            z = this.mIsFailover;
        }
        return z;
    }

    @Deprecated
    public void setFailover(boolean z) {
        synchronized (this) {
            this.mIsFailover = z;
        }
    }

    @Deprecated
    public boolean isRoaming() {
        boolean z;
        synchronized (this) {
            z = this.mIsRoaming;
        }
        return z;
    }

    @VisibleForTesting
    @Deprecated
    public void setRoaming(boolean z) {
        synchronized (this) {
            this.mIsRoaming = z;
        }
    }

    @Deprecated
    public State getState() {
        State state;
        synchronized (this) {
            state = this.mState;
        }
        return state;
    }

    public DetailedState getDetailedState() {
        DetailedState detailedState;
        synchronized (this) {
            detailedState = this.mDetailedState;
        }
        return detailedState;
    }

    @Deprecated
    public void setDetailedState(DetailedState detailedState, String str, String str2) {
        synchronized (this) {
            this.mDetailedState = detailedState;
            this.mState = stateMap.get(detailedState);
            this.mReason = str;
            this.mExtraInfo = str2;
        }
    }

    public void setExtraInfo(String str) {
        synchronized (this) {
            this.mExtraInfo = str;
        }
    }

    public String getReason() {
        String str;
        synchronized (this) {
            str = this.mReason;
        }
        return str;
    }

    public String getExtraInfo() {
        String str;
        synchronized (this) {
            str = this.mExtraInfo;
        }
        return str;
    }

    public String toString() {
        String sb;
        synchronized (this) {
            StringBuilder sb2 = new StringBuilder("[");
            sb2.append("type: ");
            sb2.append(getTypeName());
            sb2.append("[");
            sb2.append(getSubtypeName());
            sb2.append("], state: ");
            sb2.append(this.mState);
            sb2.append("/");
            sb2.append(this.mDetailedState);
            sb2.append(", reason: ");
            sb2.append(this.mReason == null ? "(unspecified)" : this.mReason);
            sb2.append(", extra: ");
            sb2.append(this.mExtraInfo == null ? "(none)" : this.mExtraInfo);
            sb2.append(", failover: ");
            sb2.append(this.mIsFailover);
            sb2.append(", available: ");
            sb2.append(this.mIsAvailable);
            sb2.append(", roaming: ");
            sb2.append(this.mIsRoaming);
            sb2.append("]");
            sb = sb2.toString();
        }
        return sb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            parcel.writeInt(this.mNetworkType);
            parcel.writeInt(this.mSubtype);
            parcel.writeString(this.mTypeName);
            parcel.writeString(this.mSubtypeName);
            parcel.writeString(this.mState.name());
            parcel.writeString(this.mDetailedState.name());
            parcel.writeInt(this.mIsFailover ? 1 : 0);
            parcel.writeInt(this.mIsAvailable ? 1 : 0);
            parcel.writeInt(this.mIsRoaming ? 1 : 0);
            parcel.writeString(this.mReason);
            parcel.writeString(this.mExtraInfo);
        }
    }
}
