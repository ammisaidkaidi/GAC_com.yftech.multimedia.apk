package android.net.wifi.rtt;

import android.annotation.SystemApi;
import android.net.MacAddress;
import android.net.wifi.ScanResult;
import android.net.wifi.aware.PeerHandle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

@SystemApi
/* loaded from: /home/user/work/dex/classes.dex */
public final class ResponderConfig implements Parcelable {
    private static final int AWARE_BAND_2_DISCOVERY_CHANNEL = 2437;
    public static final int CHANNEL_WIDTH_160MHZ = 3;
    public static final int CHANNEL_WIDTH_20MHZ = 0;
    public static final int CHANNEL_WIDTH_40MHZ = 1;
    public static final int CHANNEL_WIDTH_80MHZ = 2;
    public static final int CHANNEL_WIDTH_80MHZ_PLUS_MHZ = 4;
    public static final Parcelable.Creator<ResponderConfig> CREATOR = new Parcelable.Creator<ResponderConfig>() { // from class: android.net.wifi.rtt.ResponderConfig.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponderConfig[] newArray(int i) {
            return new ResponderConfig[i];
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ResponderConfig createFromParcel(Parcel parcel) {
            MacAddress createFromParcel = parcel.readBoolean() ? MacAddress.CREATOR.createFromParcel(parcel) : null;
            PeerHandle peerHandle = parcel.readBoolean() ? new PeerHandle(parcel.readInt()) : null;
            int readInt = parcel.readInt();
            boolean z = parcel.readInt() == 1;
            int readInt2 = parcel.readInt();
            int readInt3 = parcel.readInt();
            int readInt4 = parcel.readInt();
            int readInt5 = parcel.readInt();
            int readInt6 = parcel.readInt();
            if (peerHandle == null) {
                return new ResponderConfig(createFromParcel, readInt, z, readInt2, readInt3, readInt4, readInt5, readInt6);
            }
            return new ResponderConfig(peerHandle, readInt, z, readInt2, readInt3, readInt4, readInt5, readInt6);
        }
    };
    public static final int PREAMBLE_HT = 1;
    public static final int PREAMBLE_LEGACY = 0;
    public static final int PREAMBLE_VHT = 2;
    public static final int RESPONDER_AP = 0;
    public static final int RESPONDER_AWARE = 4;
    public static final int RESPONDER_P2P_CLIENT = 3;
    public static final int RESPONDER_P2P_GO = 2;
    public static final int RESPONDER_STA = 1;
    private static final String TAG = "ResponderConfig";
    public final int centerFreq0;
    public final int centerFreq1;
    public final int channelWidth;
    public final int frequency;
    public final MacAddress macAddress;
    public final PeerHandle peerHandle;
    public final int preamble;
    public final int responderType;
    public final boolean supports80211mc;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface ChannelWidth {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface PreambleType {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface ResponderType {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ResponderConfig(MacAddress macAddress, int i, boolean z, int i2, int i3, int i4, int i5, int i6) {
        if (macAddress == null) {
            throw new IllegalArgumentException("Invalid ResponderConfig - must specify a MAC address");
        }
        this.macAddress = macAddress;
        this.peerHandle = null;
        this.responderType = i;
        this.supports80211mc = z;
        this.channelWidth = i2;
        this.frequency = i3;
        this.centerFreq0 = i4;
        this.centerFreq1 = i5;
        this.preamble = i6;
    }

    public ResponderConfig(PeerHandle peerHandle, int i, boolean z, int i2, int i3, int i4, int i5, int i6) {
        this.macAddress = null;
        this.peerHandle = peerHandle;
        this.responderType = i;
        this.supports80211mc = z;
        this.channelWidth = i2;
        this.frequency = i3;
        this.centerFreq0 = i4;
        this.centerFreq1 = i5;
        this.preamble = i6;
    }

    public ResponderConfig(MacAddress macAddress, PeerHandle peerHandle, int i, boolean z, int i2, int i3, int i4, int i5, int i6) {
        this.macAddress = macAddress;
        this.peerHandle = peerHandle;
        this.responderType = i;
        this.supports80211mc = z;
        this.channelWidth = i2;
        this.frequency = i3;
        this.centerFreq0 = i4;
        this.centerFreq1 = i5;
        this.preamble = i6;
    }

    public static ResponderConfig fromScanResult(ScanResult scanResult) {
        int i;
        MacAddress fromString = MacAddress.fromString(scanResult.BSSID);
        boolean is80211mcResponder = scanResult.is80211mcResponder();
        int translateScanResultChannelWidth = translateScanResultChannelWidth(scanResult.channelWidth);
        int i2 = scanResult.frequency;
        int i3 = scanResult.centerFreq0;
        int i4 = scanResult.centerFreq1;
        if (scanResult.informationElements != null && scanResult.informationElements.length != 0) {
            boolean z = false;
            boolean z2 = false;
            for (ScanResult.InformationElement informationElement : scanResult.informationElements) {
                if (informationElement.id == 45) {
                    z2 = true;
                } else if (informationElement.id == 191) {
                    z = true;
                }
            }
            i = z ? 2 : z2 ? 1 : 0;
        } else {
            Log.e(TAG, "Scan Results do not contain IEs - using backup method to select preamble");
            i = (translateScanResultChannelWidth == 2 || translateScanResultChannelWidth == 3) ? 2 : 1;
        }
        return new ResponderConfig(fromString, 0, is80211mcResponder, translateScanResultChannelWidth, i2, i3, i4, i);
    }

    public static ResponderConfig fromWifiAwarePeerMacAddressWithDefaults(MacAddress macAddress) {
        return new ResponderConfig(macAddress, 4, true, 0, AWARE_BAND_2_DISCOVERY_CHANNEL, 0, 0, 1);
    }

    public static ResponderConfig fromWifiAwarePeerHandleWithDefaults(PeerHandle peerHandle) {
        return new ResponderConfig(peerHandle, 4, true, 0, AWARE_BAND_2_DISCOVERY_CHANNEL, 0, 0, 1);
    }

    public boolean isValid(boolean z) {
        if (!(this.macAddress == null && this.peerHandle == null) && (this.macAddress == null || this.peerHandle == null)) {
            return z || this.responderType != 4;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        if (this.macAddress == null) {
            parcel.writeBoolean(false);
        } else {
            parcel.writeBoolean(true);
            this.macAddress.writeToParcel(parcel, i);
        }
        if (this.peerHandle == null) {
            parcel.writeBoolean(false);
        } else {
            parcel.writeBoolean(true);
            parcel.writeInt(this.peerHandle.peerId);
        }
        parcel.writeInt(this.responderType);
        parcel.writeInt(this.supports80211mc ? 1 : 0);
        parcel.writeInt(this.channelWidth);
        parcel.writeInt(this.frequency);
        parcel.writeInt(this.centerFreq0);
        parcel.writeInt(this.centerFreq1);
        parcel.writeInt(this.preamble);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResponderConfig)) {
            return false;
        }
        ResponderConfig responderConfig = (ResponderConfig) obj;
        return Objects.equals(this.macAddress, responderConfig.macAddress) && Objects.equals(this.peerHandle, responderConfig.peerHandle) && this.responderType == responderConfig.responderType && this.supports80211mc == responderConfig.supports80211mc && this.channelWidth == responderConfig.channelWidth && this.frequency == responderConfig.frequency && this.centerFreq0 == responderConfig.centerFreq0 && this.centerFreq1 == responderConfig.centerFreq1 && this.preamble == responderConfig.preamble;
    }

    public int hashCode() {
        return Objects.hash(this.macAddress, this.peerHandle, Integer.valueOf(this.responderType), Boolean.valueOf(this.supports80211mc), Integer.valueOf(this.channelWidth), Integer.valueOf(this.frequency), Integer.valueOf(this.centerFreq0), Integer.valueOf(this.centerFreq1), Integer.valueOf(this.preamble));
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("ResponderConfig: macAddress=");
        stringBuffer.append(this.macAddress);
        stringBuffer.append(", peerHandle=");
        stringBuffer.append(this.peerHandle == null ? "<null>" : Integer.valueOf(this.peerHandle.peerId));
        stringBuffer.append(", responderType=");
        stringBuffer.append(this.responderType);
        stringBuffer.append(", supports80211mc=");
        stringBuffer.append(this.supports80211mc);
        stringBuffer.append(", channelWidth=");
        stringBuffer.append(this.channelWidth);
        stringBuffer.append(", frequency=");
        stringBuffer.append(this.frequency);
        stringBuffer.append(", centerFreq0=");
        stringBuffer.append(this.centerFreq0);
        stringBuffer.append(", centerFreq1=");
        stringBuffer.append(this.centerFreq1);
        stringBuffer.append(", preamble=");
        stringBuffer.append(this.preamble);
        return stringBuffer.toString();
    }

    static int translateScanResultChannelWidth(int i) {
        switch (i) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            default:
                throw new IllegalArgumentException("translateScanResultChannelWidth: bad " + i);
        }
    }
}
