package com.android.internal.net;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes3.dex */
public class VpnInfo implements Parcelable {
    public static final Parcelable.Creator<VpnInfo> CREATOR = new Parcelable.Creator<VpnInfo>() { // from class: com.android.internal.net.VpnInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VpnInfo createFromParcel(Parcel parcel) {
            VpnInfo vpnInfo = new VpnInfo();
            vpnInfo.ownerUid = parcel.readInt();
            vpnInfo.vpnIface = parcel.readString();
            vpnInfo.primaryUnderlyingIface = parcel.readString();
            return vpnInfo;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public VpnInfo[] newArray(int i) {
            return new VpnInfo[i];
        }
    };
    public int ownerUid;
    public String primaryUnderlyingIface;
    public String vpnIface;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "VpnInfo{ownerUid=" + this.ownerUid + ", vpnIface='" + this.vpnIface + "', primaryUnderlyingIface='" + this.primaryUnderlyingIface + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.ownerUid);
        parcel.writeString(this.vpnIface);
        parcel.writeString(this.primaryUnderlyingIface);
    }
}
