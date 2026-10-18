package android.net;

import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.util.BitUtils;
import com.android.internal.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Random;

/* loaded from: /home/user/work/dex/classes.dex */
public final class MacAddress implements Parcelable {
    private static final int ETHER_ADDR_LEN = 6;
    public static final int TYPE_BROADCAST = 3;
    public static final int TYPE_MULTICAST = 2;
    public static final int TYPE_UNICAST = 1;
    public static final int TYPE_UNKNOWN = 0;
    private static final long VALID_LONG_MASK = 281474976710655L;
    private final long mAddr;
    private static final byte[] ETHER_ADDR_BROADCAST = addr(255, 255, 255, 255, 255, 255);
    public static final MacAddress BROADCAST_ADDRESS = fromBytes(ETHER_ADDR_BROADCAST);
    public static final MacAddress ALL_ZEROS_ADDRESS = new MacAddress(0);
    private static final long LOCALLY_ASSIGNED_MASK = fromString("2:0:0:0:0:0").mAddr;
    private static final long MULTICAST_MASK = fromString("1:0:0:0:0:0").mAddr;
    private static final long OUI_MASK = fromString("ff:ff:ff:0:0:0").mAddr;
    private static final long NIC_MASK = fromString("0:0:0:ff:ff:ff").mAddr;
    private static final MacAddress BASE_GOOGLE_MAC = fromString("da:a1:19:0:0:0");
    public static final Parcelable.Creator<MacAddress> CREATOR = new Parcelable.Creator<MacAddress>() { // from class: android.net.MacAddress.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MacAddress createFromParcel(Parcel parcel) {
            return new MacAddress(parcel.readLong());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MacAddress[] newArray(int i) {
            return new MacAddress[i];
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface MacAddressType {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private MacAddress(long j) {
        this.mAddr = j & VALID_LONG_MASK;
    }

    public int getAddressType() {
        if (equals(BROADCAST_ADDRESS)) {
            return 3;
        }
        return isMulticastAddress() ? 2 : 1;
    }

    public boolean isMulticastAddress() {
        return (this.mAddr & MULTICAST_MASK) != 0;
    }

    public boolean isLocallyAssigned() {
        return (this.mAddr & LOCALLY_ASSIGNED_MASK) != 0;
    }

    public byte[] toByteArray() {
        return byteAddrFromLongAddr(this.mAddr);
    }

    public String toString() {
        return stringAddrFromLongAddr(this.mAddr);
    }

    public String toOuiString() {
        return String.format("%02x:%02x:%02x", Long.valueOf((this.mAddr >> 40) & 255), Long.valueOf((this.mAddr >> 32) & 255), Long.valueOf((this.mAddr >> 24) & 255));
    }

    public int hashCode() {
        return (int) ((this.mAddr >> 32) ^ this.mAddr);
    }

    public boolean equals(Object obj) {
        return (obj instanceof MacAddress) && ((MacAddress) obj).mAddr == this.mAddr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.mAddr);
    }

    public static boolean isMacAddress(byte[] bArr) {
        return bArr != null && bArr.length == 6;
    }

    public static int macAddressType(byte[] bArr) {
        if (isMacAddress(bArr)) {
            return fromBytes(bArr).getAddressType();
        }
        return 0;
    }

    public static byte[] byteAddrFromStringAddr(String str) {
        Preconditions.checkNotNull(str);
        String[] split = str.split(":");
        if (split.length != 6) {
            throw new IllegalArgumentException(str + " was not a valid MAC address");
        }
        byte[] bArr = new byte[6];
        for (int i = 0; i < 6; i++) {
            int intValue = Integer.valueOf(split[i], 16).intValue();
            if (intValue < 0 || 255 < intValue) {
                throw new IllegalArgumentException(str + "was not a valid MAC address");
            }
            bArr[i] = (byte) intValue;
        }
        return bArr;
    }

    public static String stringAddrFromByteAddr(byte[] bArr) {
        if (isMacAddress(bArr)) {
            return String.format("%02x:%02x:%02x:%02x:%02x:%02x", Byte.valueOf(bArr[0]), Byte.valueOf(bArr[1]), Byte.valueOf(bArr[2]), Byte.valueOf(bArr[3]), Byte.valueOf(bArr[4]), Byte.valueOf(bArr[5]));
        }
        return null;
    }

    private static byte[] byteAddrFromLongAddr(long j) {
        int i = 6;
        byte[] bArr = new byte[6];
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return bArr;
            }
            bArr[i2] = (byte) j;
            j >>= 8;
            i = i2;
        }
    }

    private static long longAddrFromByteAddr(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        if (!isMacAddress(bArr)) {
            throw new IllegalArgumentException(Arrays.toString(bArr) + " was not a valid MAC address");
        }
        long j = 0;
        for (byte b : bArr) {
            j = (j << 8) + BitUtils.uint8(b);
        }
        return j;
    }

    private static long longAddrFromStringAddr(String str) {
        Preconditions.checkNotNull(str);
        String[] split = str.split(":");
        if (split.length != 6) {
            throw new IllegalArgumentException(str + " was not a valid MAC address");
        }
        long j = 0;
        for (String str2 : split) {
            int intValue = Integer.valueOf(str2, 16).intValue();
            if (intValue < 0 || 255 < intValue) {
                throw new IllegalArgumentException(str + "was not a valid MAC address");
            }
            j = (j << 8) + intValue;
        }
        return j;
    }

    private static String stringAddrFromLongAddr(long j) {
        return String.format("%02x:%02x:%02x:%02x:%02x:%02x", Long.valueOf((j >> 40) & 255), Long.valueOf((j >> 32) & 255), Long.valueOf((j >> 24) & 255), Long.valueOf((j >> 16) & 255), Long.valueOf((j >> 8) & 255), Long.valueOf(j & 255));
    }

    public static MacAddress fromString(String str) {
        return new MacAddress(longAddrFromStringAddr(str));
    }

    public static MacAddress fromBytes(byte[] bArr) {
        return new MacAddress(longAddrFromByteAddr(bArr));
    }

    public static MacAddress createRandomUnicastAddressWithGoogleBase() {
        return createRandomUnicastAddress(BASE_GOOGLE_MAC, new SecureRandom());
    }

    public static MacAddress createRandomUnicastAddress() {
        return new MacAddress(((new SecureRandom().nextLong() & VALID_LONG_MASK) | LOCALLY_ASSIGNED_MASK) & (~MULTICAST_MASK));
    }

    public static MacAddress createRandomUnicastAddress(MacAddress macAddress, Random random) {
        return new MacAddress(((random.nextLong() & NIC_MASK) | (macAddress.mAddr & OUI_MASK) | LOCALLY_ASSIGNED_MASK) & (~MULTICAST_MASK));
    }

    private static byte[] addr(int... iArr) {
        if (iArr.length != 6) {
            throw new IllegalArgumentException(Arrays.toString(iArr) + " was not an array with length equal to 6");
        }
        byte[] bArr = new byte[6];
        for (int i = 0; i < 6; i++) {
            bArr[i] = (byte) iArr[i];
        }
        return bArr;
    }
}
