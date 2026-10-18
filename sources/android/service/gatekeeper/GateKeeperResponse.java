package android.service.gatekeeper;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.annotations.VisibleForTesting;

/* loaded from: /home/user/work/dex/classes2.dex */
public final class GateKeeperResponse implements Parcelable {
    public static final Parcelable.Creator<GateKeeperResponse> CREATOR = new Parcelable.Creator<GateKeeperResponse>() { // from class: android.service.gatekeeper.GateKeeperResponse.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GateKeeperResponse createFromParcel(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt == 1) {
                return GateKeeperResponse.createRetryResponse(parcel.readInt());
            }
            if (readInt == 0) {
                boolean z = parcel.readInt() == 1;
                byte[] bArr = null;
                int readInt2 = parcel.readInt();
                if (readInt2 > 0) {
                    bArr = new byte[readInt2];
                    parcel.readByteArray(bArr);
                }
                return GateKeeperResponse.createOkResponse(bArr, z);
            }
            return GateKeeperResponse.createGenericResponse(readInt);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GateKeeperResponse[] newArray(int i) {
            return new GateKeeperResponse[i];
        }
    };
    public static final int RESPONSE_ERROR = -1;
    public static final int RESPONSE_OK = 0;
    public static final int RESPONSE_RETRY = 1;
    private byte[] mPayload;
    private final int mResponseCode;
    private boolean mShouldReEnroll;
    private int mTimeout;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private GateKeeperResponse(int i) {
        this.mResponseCode = i;
    }

    @VisibleForTesting
    public static GateKeeperResponse createGenericResponse(int i) {
        return new GateKeeperResponse(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static GateKeeperResponse createRetryResponse(int i) {
        GateKeeperResponse gateKeeperResponse = new GateKeeperResponse(1);
        gateKeeperResponse.mTimeout = i;
        return gateKeeperResponse;
    }

    @VisibleForTesting
    public static GateKeeperResponse createOkResponse(byte[] bArr, boolean z) {
        GateKeeperResponse gateKeeperResponse = new GateKeeperResponse(0);
        gateKeeperResponse.mPayload = bArr;
        gateKeeperResponse.mShouldReEnroll = z;
        return gateKeeperResponse;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mResponseCode);
        if (this.mResponseCode == 1) {
            parcel.writeInt(this.mTimeout);
            return;
        }
        if (this.mResponseCode == 0) {
            parcel.writeInt(this.mShouldReEnroll ? 1 : 0);
            if (this.mPayload != null) {
                parcel.writeInt(this.mPayload.length);
                parcel.writeByteArray(this.mPayload);
            } else {
                parcel.writeInt(0);
            }
        }
    }

    public byte[] getPayload() {
        return this.mPayload;
    }

    public int getTimeout() {
        return this.mTimeout;
    }

    public boolean getShouldReEnroll() {
        return this.mShouldReEnroll;
    }

    public int getResponseCode() {
        return this.mResponseCode;
    }
}
