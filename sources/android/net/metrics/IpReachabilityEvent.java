package android.net.metrics;

import android.app.usage.UsageStatsManager;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.android.internal.util.MessageUtils;

/* loaded from: /home/user/work/dex/classes.dex */
public final class IpReachabilityEvent implements Parcelable {
    public static final Parcelable.Creator<IpReachabilityEvent> CREATOR = new Parcelable.Creator<IpReachabilityEvent>() { // from class: android.net.metrics.IpReachabilityEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpReachabilityEvent createFromParcel(Parcel parcel) {
            return new IpReachabilityEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpReachabilityEvent[] newArray(int i) {
            return new IpReachabilityEvent[i];
        }
    };
    public static final int NUD_FAILED = 512;
    public static final int NUD_FAILED_ORGANIC = 1024;
    public static final int PROBE = 256;
    public static final int PROVISIONING_LOST = 768;
    public static final int PROVISIONING_LOST_ORGANIC = 1280;
    public final int eventType;

    public static int nudFailureEventType(boolean z, boolean z2) {
        return z ? z2 ? 768 : 512 : z2 ? 1280 : 1024;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IpReachabilityEvent(int i) {
        this.eventType = i;
    }

    private IpReachabilityEvent(Parcel parcel) {
        this.eventType = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.eventType);
    }

    public String toString() {
        return String.format("IpReachabilityEvent(%s:%02x)", Decoder.constants.get(this.eventType & UsageStatsManager.REASON_MAIN_MASK), Integer.valueOf(this.eventType & 255));
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static final class Decoder {
        static final SparseArray<String> constants = MessageUtils.findMessageNames(new Class[]{IpReachabilityEvent.class}, new String[]{"PROBE", "PROVISIONING_", "NUD_"});

        Decoder() {
        }
    }
}
