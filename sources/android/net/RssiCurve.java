package android.net;

import android.annotation.SystemApi;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;

@SystemApi
/* loaded from: /home/user/work/dex/classes.dex */
public class RssiCurve implements Parcelable {
    public static final Parcelable.Creator<RssiCurve> CREATOR = new Parcelable.Creator<RssiCurve>() { // from class: android.net.RssiCurve.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RssiCurve createFromParcel(Parcel parcel) {
            return new RssiCurve(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RssiCurve[] newArray(int i) {
            return new RssiCurve[i];
        }
    };
    private static final int DEFAULT_ACTIVE_NETWORK_RSSI_BOOST = 25;
    public final int activeNetworkRssiBoost;
    public final int bucketWidth;
    public final byte[] rssiBuckets;
    public final int start;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public RssiCurve(int i, int i2, byte[] bArr) {
        this(i, i2, bArr, 25);
    }

    public RssiCurve(int i, int i2, byte[] bArr, int i3) {
        this.start = i;
        this.bucketWidth = i2;
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("rssiBuckets must be at least one element large.");
        }
        this.rssiBuckets = bArr;
        this.activeNetworkRssiBoost = i3;
    }

    private RssiCurve(Parcel parcel) {
        this.start = parcel.readInt();
        this.bucketWidth = parcel.readInt();
        this.rssiBuckets = new byte[parcel.readInt()];
        parcel.readByteArray(this.rssiBuckets);
        this.activeNetworkRssiBoost = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.start);
        parcel.writeInt(this.bucketWidth);
        parcel.writeInt(this.rssiBuckets.length);
        parcel.writeByteArray(this.rssiBuckets);
        parcel.writeInt(this.activeNetworkRssiBoost);
    }

    public byte lookupScore(int i) {
        return lookupScore(i, false);
    }

    public byte lookupScore(int i, boolean z) {
        if (z) {
            i += this.activeNetworkRssiBoost;
        }
        int i2 = (i - this.start) / this.bucketWidth;
        if (i2 < 0) {
            i2 = 0;
        } else if (i2 > this.rssiBuckets.length - 1) {
            i2 = this.rssiBuckets.length - 1;
        }
        return this.rssiBuckets[i2];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RssiCurve rssiCurve = (RssiCurve) obj;
        return this.start == rssiCurve.start && this.bucketWidth == rssiCurve.bucketWidth && Arrays.equals(this.rssiBuckets, rssiCurve.rssiBuckets) && this.activeNetworkRssiBoost == rssiCurve.activeNetworkRssiBoost;
    }

    public int hashCode() {
        return Arrays.hashCode(this.rssiBuckets) ^ Objects.hash(Integer.valueOf(this.start), Integer.valueOf(this.bucketWidth), Integer.valueOf(this.activeNetworkRssiBoost));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("RssiCurve[start=");
        sb.append(this.start);
        sb.append(",bucketWidth=");
        sb.append(this.bucketWidth);
        sb.append(",activeNetworkRssiBoost=");
        sb.append(this.activeNetworkRssiBoost);
        sb.append(",buckets=");
        for (int i = 0; i < this.rssiBuckets.length; i++) {
            sb.append((int) this.rssiBuckets[i]);
            if (i < this.rssiBuckets.length - 1) {
                sb.append(",");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
