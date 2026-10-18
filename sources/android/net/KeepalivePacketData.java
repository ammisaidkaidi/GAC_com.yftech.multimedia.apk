package android.net;

import android.bluetooth.BluetoothHidDevice;
import android.net.util.IpUtils;
import android.os.Parcel;
import android.os.Parcelable;
import android.system.OsConstants;
import android.util.Log;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: /home/user/work/dex/classes.dex */
public class KeepalivePacketData implements Parcelable {
    public static final Parcelable.Creator<KeepalivePacketData> CREATOR = new Parcelable.Creator<KeepalivePacketData>() { // from class: android.net.KeepalivePacketData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeepalivePacketData createFromParcel(Parcel parcel) {
            return new KeepalivePacketData(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public KeepalivePacketData[] newArray(int i) {
            return new KeepalivePacketData[i];
        }
    };
    private static final int IPV4_HEADER_LENGTH = 20;
    private static final String TAG = "KeepalivePacketData";
    private static final int UDP_HEADER_LENGTH = 8;
    public final InetAddress dstAddress;
    public final int dstPort;
    private final byte[] mPacket;
    public final InetAddress srcAddress;
    public final int srcPort;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected KeepalivePacketData(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2, byte[] bArr) throws InvalidPacketException {
        this.srcAddress = inetAddress;
        this.dstAddress = inetAddress2;
        this.srcPort = i;
        this.dstPort = i2;
        this.mPacket = bArr;
        if (inetAddress == null || inetAddress2 == null || !inetAddress.getClass().getName().equals(inetAddress2.getClass().getName())) {
            Log.e(TAG, "Invalid or mismatched InetAddresses in KeepalivePacketData");
            throw new InvalidPacketException(-21);
        }
        if (IpUtils.isValidUdpOrTcpPort(i) && IpUtils.isValidUdpOrTcpPort(i2)) {
            return;
        }
        Log.e(TAG, "Invalid ports in KeepalivePacketData");
        throw new InvalidPacketException(-22);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class InvalidPacketException extends Exception {
        public final int error;

        public InvalidPacketException(int i) {
            this.error = i;
        }
    }

    public byte[] getPacket() {
        return (byte[]) this.mPacket.clone();
    }

    public static KeepalivePacketData nattKeepalivePacket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws InvalidPacketException {
        if (!(inetAddress instanceof Inet4Address) || !(inetAddress2 instanceof Inet4Address)) {
            throw new InvalidPacketException(-21);
        }
        if (i2 != 4500) {
            throw new InvalidPacketException(-22);
        }
        ByteBuffer allocate = ByteBuffer.allocate(29);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.putShort((short) 17664);
        allocate.putShort((short) 29);
        allocate.putInt(0);
        allocate.put(BluetoothHidDevice.SUBCLASS1_KEYBOARD);
        allocate.put((byte) OsConstants.IPPROTO_UDP);
        int position = allocate.position();
        allocate.putShort((short) 0);
        allocate.put(inetAddress.getAddress());
        allocate.put(inetAddress2.getAddress());
        allocate.putShort((short) i);
        allocate.putShort((short) i2);
        allocate.putShort((short) 9);
        int position2 = allocate.position();
        allocate.putShort((short) 0);
        allocate.put((byte) -1);
        allocate.putShort(position, IpUtils.ipChecksum(allocate, 0));
        allocate.putShort(position2, IpUtils.udpChecksum(allocate, 0, 20));
        return new KeepalivePacketData(inetAddress, i, inetAddress2, i2, allocate.array());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.srcAddress.getHostAddress());
        parcel.writeString(this.dstAddress.getHostAddress());
        parcel.writeInt(this.srcPort);
        parcel.writeInt(this.dstPort);
        parcel.writeByteArray(this.mPacket);
    }

    private KeepalivePacketData(Parcel parcel) {
        this.srcAddress = NetworkUtils.numericToInetAddress(parcel.readString());
        this.dstAddress = NetworkUtils.numericToInetAddress(parcel.readString());
        this.srcPort = parcel.readInt();
        this.dstPort = parcel.readInt();
        this.mPacket = parcel.createByteArray();
    }
}
