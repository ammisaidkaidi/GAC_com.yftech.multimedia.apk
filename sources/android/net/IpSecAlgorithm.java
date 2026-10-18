package android.net;

import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.HexDump;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public final class IpSecAlgorithm implements Parcelable {
    public static final String AUTH_CRYPT_AES_GCM = "rfc4106(gcm(aes))";
    public static final String AUTH_HMAC_MD5 = "hmac(md5)";
    public static final String AUTH_HMAC_SHA1 = "hmac(sha1)";
    public static final String AUTH_HMAC_SHA256 = "hmac(sha256)";
    public static final String AUTH_HMAC_SHA384 = "hmac(sha384)";
    public static final String AUTH_HMAC_SHA512 = "hmac(sha512)";
    public static final Parcelable.Creator<IpSecAlgorithm> CREATOR = new Parcelable.Creator<IpSecAlgorithm>() { // from class: android.net.IpSecAlgorithm.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecAlgorithm createFromParcel(Parcel parcel) {
            return new IpSecAlgorithm(parcel.readString(), parcel.createByteArray(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public IpSecAlgorithm[] newArray(int i) {
            return new IpSecAlgorithm[i];
        }
    };
    public static final String CRYPT_AES_CBC = "cbc(aes)";
    public static final String CRYPT_NULL = "ecb(cipher_null)";
    private static final String TAG = "IpSecAlgorithm";
    private final byte[] mKey;
    private final String mName;
    private final int mTruncLenBits;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface AlgorithmName {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public IpSecAlgorithm(String str, byte[] bArr) {
        this(str, bArr, 0);
    }

    public IpSecAlgorithm(String str, byte[] bArr, int i) {
        this.mName = str;
        this.mKey = (byte[]) bArr.clone();
        this.mTruncLenBits = i;
        checkValidOrThrow(this.mName, this.mKey.length * 8, this.mTruncLenBits);
    }

    public String getName() {
        return this.mName;
    }

    public byte[] getKey() {
        return (byte[]) this.mKey.clone();
    }

    public int getTruncationLengthBits() {
        return this.mTruncLenBits;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mName);
        parcel.writeByteArray(this.mKey);
        parcel.writeInt(this.mTruncLenBits);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008a, code lost:
    
        if (r10 != 128) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009a, code lost:
    
        if (r10 <= 512) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a6, code lost:
    
        if (r10 <= 384) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b3, code lost:
    
        if (r10 <= 256) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00bd, code lost:
    
        if (r10 <= 160) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c7, code lost:
    
        if (r10 <= 128) goto L85;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x005c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void checkValidOrThrow(String str, int i, int i2) {
        char c;
        boolean z;
        boolean z2;
        boolean z3 = true;
        switch (str.hashCode()) {
            case -1137603038:
                if (str.equals(AUTH_CRYPT_AES_GCM)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 394796030:
                if (str.equals(CRYPT_AES_CBC)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 559425185:
                if (str.equals(AUTH_HMAC_SHA256)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 559457797:
                if (str.equals(AUTH_HMAC_SHA384)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 559510590:
                if (str.equals(AUTH_HMAC_SHA512)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 759177996:
                if (str.equals(AUTH_HMAC_MD5)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 2065384259:
                if (str.equals(AUTH_HMAC_SHA1)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                z = i == 128 || i == 192 || i == 256;
                if (!z) {
                    throw new IllegalArgumentException("Invalid key material keyLength: " + i);
                }
                if (z3) {
                    return;
                }
                throw new IllegalArgumentException("Invalid truncation keyLength: " + i2);
            case 1:
                z = i == 128;
                if (i2 >= 96) {
                }
                z3 = false;
                if (!z) {
                }
                break;
            case 2:
                z = i == 160;
                if (i2 >= 96) {
                }
                z3 = false;
                if (!z) {
                }
                break;
            case 3:
                z = i == 256;
                if (i2 >= 96) {
                }
                z3 = false;
                if (!z) {
                }
                break;
            case 4:
                z2 = i == 384;
                if (i2 >= 192) {
                }
                z3 = false;
                z = z2;
                if (!z) {
                }
                break;
            case 5:
                z2 = i == 512;
                if (i2 >= 256) {
                }
                z3 = false;
                z = z2;
                if (!z) {
                }
                break;
            case 6:
                z = i == 160 || i == 224 || i == 288;
                if (i2 != 64) {
                    if (i2 != 96) {
                    }
                }
                if (!z) {
                }
                break;
            default:
                throw new IllegalArgumentException("Couldn't find an algorithm: " + str);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean isAuthentication() {
        char c;
        String name = getName();
        switch (name.hashCode()) {
            case 559425185:
                if (name.equals(AUTH_HMAC_SHA256)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 559457797:
                if (name.equals(AUTH_HMAC_SHA384)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 559510590:
                if (name.equals(AUTH_HMAC_SHA512)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 759177996:
                if (name.equals(AUTH_HMAC_MD5)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 2065384259:
                if (name.equals(AUTH_HMAC_SHA1)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
                return true;
            default:
                return false;
        }
    }

    public boolean isEncryption() {
        return getName().equals(CRYPT_AES_CBC);
    }

    public boolean isAead() {
        return getName().equals(AUTH_CRYPT_AES_GCM);
    }

    private static boolean isUnsafeBuild() {
        return Build.IS_DEBUGGABLE && Build.IS_ENG;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{mName=");
        sb.append(this.mName);
        sb.append(", mKey=");
        sb.append(isUnsafeBuild() ? HexDump.toHexString(this.mKey) : "<hidden>");
        sb.append(", mTruncLenBits=");
        sb.append(this.mTruncLenBits);
        sb.append("}");
        return sb.toString();
    }

    @VisibleForTesting
    public static boolean equals(IpSecAlgorithm ipSecAlgorithm, IpSecAlgorithm ipSecAlgorithm2) {
        return (ipSecAlgorithm == null || ipSecAlgorithm2 == null) ? ipSecAlgorithm == ipSecAlgorithm2 : ipSecAlgorithm.mName.equals(ipSecAlgorithm2.mName) && Arrays.equals(ipSecAlgorithm.mKey, ipSecAlgorithm2.mKey) && ipSecAlgorithm.mTruncLenBits == ipSecAlgorithm2.mTruncLenBits;
    }
}
