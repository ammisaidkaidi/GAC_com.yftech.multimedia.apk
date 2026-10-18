package android.nfc;

import android.content.ClipDescription;
import android.content.Intent;
import android.net.MailTo;
import android.net.Uri;
import android.net.wifi.WifiNetworkScoreCache;
import android.net.wifi.hotspot2.pps.UpdateParameter;
import android.os.Parcel;
import android.os.Parcelable;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public final class NdefRecord implements Parcelable {
    private static final byte FLAG_CF = 32;
    private static final byte FLAG_IL = 8;
    private static final byte FLAG_MB = Byte.MIN_VALUE;
    private static final byte FLAG_ME = 64;
    private static final byte FLAG_SR = 16;
    private static final int MAX_PAYLOAD_SIZE = 10485760;
    public static final short TNF_ABSOLUTE_URI = 3;
    public static final short TNF_EMPTY = 0;
    public static final short TNF_EXTERNAL_TYPE = 4;
    public static final short TNF_MIME_MEDIA = 2;
    public static final short TNF_RESERVED = 7;
    public static final short TNF_UNCHANGED = 6;
    public static final short TNF_UNKNOWN = 5;
    public static final short TNF_WELL_KNOWN = 1;
    private final byte[] mId;
    private final byte[] mPayload;
    private final short mTnf;
    private final byte[] mType;
    public static final byte[] RTD_TEXT = {84};
    public static final byte[] RTD_URI = {85};
    public static final byte[] RTD_SMART_POSTER = {83, 112};
    public static final byte[] RTD_ALTERNATIVE_CARRIER = {97, 99};
    public static final byte[] RTD_HANDOVER_CARRIER = {72, 99};
    public static final byte[] RTD_HANDOVER_REQUEST = {72, 114};
    public static final byte[] RTD_HANDOVER_SELECT = {72, 115};
    public static final byte[] RTD_ANDROID_APP = "android.com:pkg".getBytes();
    private static final String[] URI_PREFIX_MAP = {"", "http://www.", "https://www.", "http://", "https://", "tel:", MailTo.MAILTO_SCHEME, "ftp://anonymous:anonymous@", "ftp://ftp.", "ftps://", "sftp://", "smb://", "nfs://", "ftp://", "dav://", "news:", "telnet://", "imap:", "rtsp://", "urn:", "pop:", "sip:", "sips:", "tftp:", "btspp://", "btl2cap://", "btgoep://", "tcpobex://", "irdaobex://", "file://", "urn:epc:id:", "urn:epc:tag:", "urn:epc:pat:", "urn:epc:raw:", "urn:epc:", "urn:nfc:"};
    private static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final Parcelable.Creator<NdefRecord> CREATOR = new Parcelable.Creator<NdefRecord>() { // from class: android.nfc.NdefRecord.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NdefRecord createFromParcel(Parcel parcel) {
            short readInt = (short) parcel.readInt();
            byte[] bArr = new byte[parcel.readInt()];
            parcel.readByteArray(bArr);
            byte[] bArr2 = new byte[parcel.readInt()];
            parcel.readByteArray(bArr2);
            byte[] bArr3 = new byte[parcel.readInt()];
            parcel.readByteArray(bArr3);
            return new NdefRecord(readInt, bArr, bArr2, bArr3);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NdefRecord[] newArray(int i) {
            return new NdefRecord[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public static NdefRecord createApplicationRecord(String str) {
        if (str == null) {
            throw new NullPointerException("packageName is null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("packageName is empty");
        }
        return new NdefRecord((short) 4, RTD_ANDROID_APP, null, str.getBytes(StandardCharsets.UTF_8));
    }

    public static NdefRecord createUri(Uri uri) {
        byte b;
        if (uri == null) {
            throw new NullPointerException("uri is null");
        }
        String uri2 = uri.normalizeScheme().toString();
        if (uri2.length() == 0) {
            throw new IllegalArgumentException("uri is empty");
        }
        int i = 1;
        while (true) {
            if (i >= URI_PREFIX_MAP.length) {
                b = 0;
                break;
            }
            if (uri2.startsWith(URI_PREFIX_MAP[i])) {
                b = (byte) i;
                uri2 = uri2.substring(URI_PREFIX_MAP[i].length());
                break;
            }
            i++;
        }
        byte[] bytes = uri2.getBytes(StandardCharsets.UTF_8);
        byte[] bArr = new byte[bytes.length + 1];
        bArr[0] = b;
        System.arraycopy(bytes, 0, bArr, 1, bytes.length);
        return new NdefRecord((short) 1, RTD_URI, null, bArr);
    }

    public static NdefRecord createUri(String str) {
        return createUri(Uri.parse(str));
    }

    public static NdefRecord createMime(String str, byte[] bArr) {
        if (str == null) {
            throw new NullPointerException("mimeType is null");
        }
        String normalizeMimeType = Intent.normalizeMimeType(str);
        if (normalizeMimeType.length() == 0) {
            throw new IllegalArgumentException("mimeType is empty");
        }
        int indexOf = normalizeMimeType.indexOf(47);
        if (indexOf == 0) {
            throw new IllegalArgumentException("mimeType must have major type");
        }
        if (indexOf == normalizeMimeType.length() - 1) {
            throw new IllegalArgumentException("mimeType must have minor type");
        }
        return new NdefRecord((short) 2, normalizeMimeType.getBytes(StandardCharsets.US_ASCII), null, bArr);
    }

    public static NdefRecord createExternal(String str, String str2, byte[] bArr) {
        if (str == null) {
            throw new NullPointerException("domain is null");
        }
        if (str2 == null) {
            throw new NullPointerException("type is null");
        }
        String lowerCase = str.trim().toLowerCase(Locale.ROOT);
        String lowerCase2 = str2.trim().toLowerCase(Locale.ROOT);
        if (lowerCase.length() == 0) {
            throw new IllegalArgumentException("domain is empty");
        }
        if (lowerCase2.length() == 0) {
            throw new IllegalArgumentException("type is empty");
        }
        byte[] bytes = lowerCase.getBytes(StandardCharsets.UTF_8);
        byte[] bytes2 = lowerCase2.getBytes(StandardCharsets.UTF_8);
        byte[] bArr2 = new byte[bytes.length + 1 + bytes2.length];
        System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
        bArr2[bytes.length] = 58;
        System.arraycopy(bytes2, 0, bArr2, bytes.length + 1, bytes2.length);
        return new NdefRecord((short) 4, bArr2, null, bArr);
    }

    public static NdefRecord createTextRecord(String str, String str2) {
        byte[] bytes;
        if (str2 == null) {
            throw new NullPointerException("text is null");
        }
        byte[] bytes2 = str2.getBytes(StandardCharsets.UTF_8);
        if (str != null && !str.isEmpty()) {
            bytes = str.getBytes(StandardCharsets.US_ASCII);
        } else {
            bytes = Locale.getDefault().getLanguage().getBytes(StandardCharsets.US_ASCII);
        }
        if (bytes.length >= 64) {
            throw new IllegalArgumentException("language code is too long, must be <64 bytes.");
        }
        ByteBuffer allocate = ByteBuffer.allocate(bytes.length + 1 + bytes2.length);
        allocate.put((byte) (bytes.length & 255));
        allocate.put(bytes);
        allocate.put(bytes2);
        return new NdefRecord((short) 1, RTD_TEXT, null, allocate.array());
    }

    public NdefRecord(short s, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        bArr = bArr == null ? EMPTY_BYTE_ARRAY : bArr;
        bArr2 = bArr2 == null ? EMPTY_BYTE_ARRAY : bArr2;
        bArr3 = bArr3 == null ? EMPTY_BYTE_ARRAY : bArr3;
        String validateTnf = validateTnf(s, bArr, bArr2, bArr3);
        if (validateTnf != null) {
            throw new IllegalArgumentException(validateTnf);
        }
        this.mTnf = s;
        this.mType = bArr;
        this.mId = bArr2;
        this.mPayload = bArr3;
    }

    @Deprecated
    public NdefRecord(byte[] bArr) throws FormatException {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        NdefRecord[] parse = parse(wrap, true);
        if (wrap.remaining() > 0) {
            throw new FormatException("data too long");
        }
        this.mTnf = parse[0].mTnf;
        this.mType = parse[0].mType;
        this.mId = parse[0].mId;
        this.mPayload = parse[0].mPayload;
    }

    public short getTnf() {
        return this.mTnf;
    }

    public byte[] getType() {
        return (byte[]) this.mType.clone();
    }

    public byte[] getId() {
        return (byte[]) this.mId.clone();
    }

    public byte[] getPayload() {
        return (byte[]) this.mPayload.clone();
    }

    @Deprecated
    public byte[] toByteArray() {
        ByteBuffer allocate = ByteBuffer.allocate(getByteLength());
        writeToByteBuffer(allocate, true, true);
        return allocate.array();
    }

    public String toMimeType() {
        switch (this.mTnf) {
            case 1:
                if (Arrays.equals(this.mType, RTD_TEXT)) {
                    return ClipDescription.MIMETYPE_TEXT_PLAIN;
                }
                return null;
            case 2:
                return Intent.normalizeMimeType(new String(this.mType, StandardCharsets.US_ASCII));
            default:
                return null;
        }
    }

    public Uri toUri() {
        return toUri(false);
    }

    private Uri toUri(boolean z) {
        Uri parseWktUri;
        short s = this.mTnf;
        if (s == 1) {
            if (Arrays.equals(this.mType, RTD_SMART_POSTER) && !z) {
                try {
                    for (NdefRecord ndefRecord : new NdefMessage(this.mPayload).getRecords()) {
                        Uri uri = ndefRecord.toUri(true);
                        if (uri != null) {
                            return uri;
                        }
                    }
                } catch (FormatException unused) {
                }
            } else {
                if (!Arrays.equals(this.mType, RTD_URI) || (parseWktUri = parseWktUri()) == null) {
                    return null;
                }
                return parseWktUri.normalizeScheme();
            }
        } else {
            switch (s) {
                case 3:
                    return Uri.parse(new String(this.mType, StandardCharsets.UTF_8)).normalizeScheme();
                case 4:
                    if (!z) {
                        return Uri.parse("vnd.android.nfc://ext/" + new String(this.mType, StandardCharsets.US_ASCII));
                    }
                default:
                    return null;
            }
        }
        return null;
    }

    private Uri parseWktUri() {
        int i;
        if (this.mPayload.length < 2 || (i = this.mPayload[0] & (-1)) < 0 || i >= URI_PREFIX_MAP.length) {
            return null;
        }
        return Uri.parse(URI_PREFIX_MAP[i] + new String(Arrays.copyOfRange(this.mPayload, 1, this.mPayload.length), StandardCharsets.UTF_8));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005a, code lost:
    
        if (r2.size() != 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005c, code lost:
    
        if (r5 == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x005e, code lost:
    
        if (r20 == false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0069, code lost:
    
        throw new android.nfc.FormatException("unexpected MB flag");
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x007a, code lost:
    
        if (r12 != false) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0085, code lost:
    
        throw new android.nfc.FormatException("unexpected ME flag in non-trailing chunk");
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0096, code lost:
    
        if (r4 == 6) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00a1, code lost:
    
        throw new android.nfc.FormatException("unexpected TNF_UNCHANGED in first chunk or unchunked record");
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00d7, code lost:
    
        if (r11 <= 0) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00d9, code lost:
    
        r8 = new byte[r11];
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00de, code lost:
    
        if (r14 <= 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00e0, code lost:
    
        r9 = new byte[r14];
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00e5, code lost:
    
        r19.get(r8);
        r19.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00e3, code lost:
    
        r9 = android.nfc.NdefRecord.EMPTY_BYTE_ARRAY;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00dc, code lost:
    
        r8 = android.nfc.NdefRecord.EMPTY_BYTE_ARRAY;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static NdefRecord[] parse(ByteBuffer byteBuffer, boolean z) throws FormatException {
        boolean z2;
        ArrayList arrayList = new ArrayList();
        try {
            ArrayList arrayList2 = new ArrayList();
            short s = -1;
            byte[] bArr = null;
            byte[] bArr2 = null;
            boolean z3 = false;
            boolean z4 = false;
            while (!z3) {
                byte b = byteBuffer.get();
                boolean z5 = (b & Byte.MIN_VALUE) != 0;
                boolean z6 = (b & 64) != 0;
                boolean z7 = (b & FLAG_CF) != 0;
                boolean z8 = (b & 16) != 0;
                boolean z9 = (b & 8) != 0;
                short s2 = (short) (b & 7);
                if (!z5 && arrayList.size() == 0 && !z4 && !z) {
                    throw new FormatException("expected MB flag");
                }
                if (z4 && z9) {
                    throw new FormatException("unexpected IL flag in non-leading chunk");
                }
                if (z4 && s2 != 6) {
                    throw new FormatException("expected TNF_UNCHANGED in non-leading chunk");
                }
                int i = byteBuffer.get() & 255;
                long j = z8 ? byteBuffer.get() & 255 : byteBuffer.getInt() & UpdateParameter.UPDATE_CHECK_INTERVAL_NEVER;
                int i2 = z9 ? byteBuffer.get() & 255 : 0;
                if (z4 && i != 0) {
                    throw new FormatException("expected zero-length type in non-leading chunk");
                }
                ensureSanePayloadSize(j);
                long j2 = 0;
                byte[] bArr3 = j > 0 ? new byte[(int) j] : EMPTY_BYTE_ARRAY;
                byteBuffer.get(bArr3);
                if (z7 && !z4) {
                    if (i == 0 && s2 != 5) {
                        throw new FormatException("expected non-zero type length in first chunk");
                    }
                    arrayList2.clear();
                    s = s2;
                }
                if (z7 || z4) {
                    arrayList2.add(bArr3);
                }
                if (z7 || !z4) {
                    z2 = false;
                } else {
                    while (arrayList2.iterator().hasNext()) {
                        j2 += ((byte[]) r4.next()).length;
                    }
                    ensureSanePayloadSize(j2);
                    bArr3 = new byte[(int) j2];
                    Iterator it = arrayList2.iterator();
                    int i3 = 0;
                    while (it.hasNext()) {
                        byte[] bArr4 = (byte[]) it.next();
                        System.arraycopy(bArr4, 0, bArr3, i3, bArr4.length);
                        i3 += bArr4.length;
                    }
                    z2 = false;
                    s2 = s;
                }
                if (z7) {
                    z3 = z6;
                    z4 = true;
                } else {
                    String validateTnf = validateTnf(s2, bArr, bArr2, bArr3);
                    if (validateTnf != null) {
                        throw new FormatException(validateTnf);
                    }
                    arrayList.add(new NdefRecord(s2, bArr, bArr2, bArr3));
                    if (z) {
                        break;
                    }
                    z3 = z6;
                    z4 = z2;
                }
            }
            return (NdefRecord[]) arrayList.toArray(new NdefRecord[arrayList.size()]);
        } catch (BufferUnderflowException e) {
            throw new FormatException("expected more data", e);
        }
    }

    private static void ensureSanePayloadSize(long j) throws FormatException {
        if (j <= 10485760) {
            return;
        }
        throw new FormatException("payload above max limit: " + j + " > " + MAX_PAYLOAD_SIZE);
    }

    static String validateTnf(short s, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        switch (s) {
            case 0:
                if (bArr.length == 0 && bArr2.length == 0 && bArr3.length == 0) {
                    return null;
                }
                return "unexpected data in TNF_EMPTY record";
            case 1:
            case 2:
            case 3:
            case 4:
                return null;
            case 5:
            case 7:
                if (bArr.length != 0) {
                    return "unexpected type field in TNF_UNKNOWN or TNF_RESERVEd record";
                }
                return null;
            case 6:
                return "unexpected TNF_UNCHANGED in first chunk or logical record";
            default:
                return String.format("unexpected tnf value: 0x%02x", Short.valueOf(s));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeToByteBuffer(ByteBuffer byteBuffer, boolean z, boolean z2) {
        boolean z3 = true;
        boolean z4 = this.mPayload.length < 256;
        if (this.mTnf != 0 && this.mId.length <= 0) {
            z3 = false;
        }
        byteBuffer.put((byte) ((z ? WifiNetworkScoreCache.INVALID_NETWORK_SCORE : 0) | (z2 ? 64 : 0) | (z4 ? 16 : 0) | (z3 ? 8 : 0) | this.mTnf));
        byteBuffer.put((byte) this.mType.length);
        if (z4) {
            byteBuffer.put((byte) this.mPayload.length);
        } else {
            byteBuffer.putInt(this.mPayload.length);
        }
        if (z3) {
            byteBuffer.put((byte) this.mId.length);
        }
        byteBuffer.put(this.mType);
        byteBuffer.put(this.mId);
        byteBuffer.put(this.mPayload);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getByteLength() {
        int length = this.mType.length + 3 + this.mId.length + this.mPayload.length;
        boolean z = true;
        boolean z2 = this.mPayload.length < 256;
        if (this.mTnf != 0 && this.mId.length <= 0) {
            z = false;
        }
        if (!z2) {
            length += 3;
        }
        return z ? length + 1 : length;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mTnf);
        parcel.writeInt(this.mType.length);
        parcel.writeByteArray(this.mType);
        parcel.writeInt(this.mId.length);
        parcel.writeByteArray(this.mId);
        parcel.writeInt(this.mPayload.length);
        parcel.writeByteArray(this.mPayload);
    }

    public int hashCode() {
        return ((((((Arrays.hashCode(this.mId) + 31) * 31) + Arrays.hashCode(this.mPayload)) * 31) + this.mTnf) * 31) + Arrays.hashCode(this.mType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NdefRecord ndefRecord = (NdefRecord) obj;
        if (Arrays.equals(this.mId, ndefRecord.mId) && Arrays.equals(this.mPayload, ndefRecord.mPayload) && this.mTnf == ndefRecord.mTnf) {
            return Arrays.equals(this.mType, ndefRecord.mType);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(String.format("NdefRecord tnf=%X", Short.valueOf(this.mTnf)));
        if (this.mType.length > 0) {
            sb.append(" type=");
            sb.append((CharSequence) bytesToString(this.mType));
        }
        if (this.mId.length > 0) {
            sb.append(" id=");
            sb.append((CharSequence) bytesToString(this.mId));
        }
        if (this.mPayload.length > 0) {
            sb.append(" payload=");
            sb.append((CharSequence) bytesToString(this.mPayload));
        }
        return sb.toString();
    }

    private static StringBuilder bytesToString(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append(String.format("%02X", Byte.valueOf(b)));
        }
        return sb;
    }
}
