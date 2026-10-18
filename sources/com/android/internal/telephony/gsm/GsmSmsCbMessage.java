package com.android.internal.telephony.gsm;

import android.content.Context;
import android.content.res.Resources;
import android.telephony.SmsCbLocation;
import android.telephony.SmsCbMessage;
import android.util.Pair;
import com.android.internal.telephony.GsmAlphabet;
import java.io.UnsupportedEncodingException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class GsmSmsCbMessage {
    private static final char CARRIAGE_RETURN = '\r';
    private static final String[] LANGUAGE_CODES_GROUP_0 = {"de", "en", "it", "fr", "es", "nl", "sv", "da", "pt", "fi", "no", "el", "tr", "hu", "pl", null};
    private static final String[] LANGUAGE_CODES_GROUP_2 = {"cs", "he", "ar", "ru", "is", null, null, null, null, null, null, null, null, null, null, null};
    private static final int PDU_BODY_PAGE_LENGTH = 82;

    private GsmSmsCbMessage() {
    }

    private static String getEtwsPrimaryMessage(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 0:
                return resources.getString(17039829);
            case 1:
                return resources.getString(17039833);
            case 2:
                return resources.getString(17039830);
            case 3:
                return resources.getString(17039832);
            case 4:
                return resources.getString(17039831);
            default:
                return "";
        }
    }

    public static SmsCbMessage createSmsCbMessage(Context context, SmsCbHeader smsCbHeader, SmsCbLocation smsCbLocation, byte[][] bArr) throws IllegalArgumentException {
        if (smsCbHeader.isEtwsPrimaryNotification()) {
            return new SmsCbMessage(1, smsCbHeader.getGeographicalScope(), smsCbHeader.getSerialNumber(), smsCbLocation, smsCbHeader.getServiceCategory(), (String) null, getEtwsPrimaryMessage(context, smsCbHeader.getEtwsInfo().getWarningType()), 3, smsCbHeader.getEtwsInfo(), smsCbHeader.getCmasInfo());
        }
        StringBuilder sb = new StringBuilder();
        String str = null;
        for (byte[] bArr2 : bArr) {
            Pair<String, String> parseBody = parseBody(smsCbHeader, bArr2);
            str = (String) parseBody.first;
            sb.append((String) parseBody.second);
        }
        return new SmsCbMessage(1, smsCbHeader.getGeographicalScope(), smsCbHeader.getSerialNumber(), smsCbLocation, smsCbHeader.getServiceCategory(), str, sb.toString(), smsCbHeader.isEmergencyMessage() ? 3 : 0, smsCbHeader.getEtwsInfo(), smsCbHeader.getCmasInfo());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001d, code lost:
    
        if (((r0 & 4) >> 2) == 1) goto L16;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0011. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0014. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0017 A[FALL_THROUGH, PHI: r5 r6
      0x0017: PHI (r5v3 int) = (r5v0 int), (r5v0 int), (r5v0 int), (r5v0 int), (r5v2 int), (r5v0 int), (r5v0 int) binds: [B:4:0x0011, B:39:0x003d, B:34:0x002c, B:32:0x0023, B:33:0x0027, B:5:0x0014, B:7:0x001d] A[DONT_GENERATE, DONT_INLINE]
      0x0017: PHI (r6v3 java.lang.String) = 
      (r6v0 java.lang.String)
      (r6v1 java.lang.String)
      (r6v2 java.lang.String)
      (r6v0 java.lang.String)
      (r6v0 java.lang.String)
      (r6v0 java.lang.String)
      (r6v0 java.lang.String)
     binds: [B:4:0x0011, B:39:0x003d, B:34:0x002c, B:32:0x0023, B:33:0x0027, B:5:0x0014, B:7:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Pair<String, String> parseBody(SmsCbHeader smsCbHeader, byte[] bArr) {
        boolean z;
        String str;
        int dataCodingScheme = smsCbHeader.getDataCodingScheme();
        int i = (dataCodingScheme & 240) >> 4;
        if (i != 9) {
            int i2 = 1;
            String str2 = null;
            switch (i) {
                case 0:
                    str2 = LANGUAGE_CODES_GROUP_0[dataCodingScheme & 15];
                    z = false;
                    str = str2;
                    if (!smsCbHeader.isUmtsFormat()) {
                        byte b = bArr[6];
                        if (bArr.length < (b * 83) + 7) {
                            throw new IllegalArgumentException("Pdu length " + bArr.length + " does not match " + ((int) b) + " pages");
                        }
                        StringBuilder sb = new StringBuilder();
                        for (int i3 = 0; i3 < b; i3++) {
                            int i4 = (i3 * 83) + 7;
                            byte b2 = bArr[i4 + 82];
                            if (b2 > 82) {
                                throw new IllegalArgumentException("Page length " + ((int) b2) + " exceeds maximum value 82");
                            }
                            Pair<String, String> unpackBody = unpackBody(bArr, i2, i4, b2, z, str);
                            str = (String) unpackBody.first;
                            sb.append((String) unpackBody.second);
                        }
                        return new Pair<>(str, sb.toString());
                    }
                    return unpackBody(bArr, i2, 6, bArr.length - 6, z, str);
                case 1:
                    if ((dataCodingScheme & 15) == 1) {
                        z = true;
                        str = null;
                        i2 = 3;
                        if (!smsCbHeader.isUmtsFormat()) {
                        }
                    } else {
                        z = true;
                        str = str2;
                        if (!smsCbHeader.isUmtsFormat()) {
                        }
                    }
                    break;
                case 2:
                    str2 = LANGUAGE_CODES_GROUP_2[dataCodingScheme & 15];
                    z = false;
                    str = str2;
                    if (!smsCbHeader.isUmtsFormat()) {
                    }
                    break;
                case 3:
                    z = false;
                    str = str2;
                    if (!smsCbHeader.isUmtsFormat()) {
                    }
                    break;
                case 4:
                case 5:
                    switch ((dataCodingScheme & 12) >> 2) {
                        case 1:
                            z = false;
                            i2 = 2;
                            break;
                        case 2:
                            i2 = 3;
                    }
                    str = str2;
                    if (!smsCbHeader.isUmtsFormat()) {
                    }
                    break;
                case 6:
                case 7:
                    break;
                default:
                    switch (i) {
                    }
            }
        }
        throw new IllegalArgumentException("Unsupported GSM dataCodingScheme " + dataCodingScheme);
    }

    private static Pair<String, String> unpackBody(byte[] bArr, int i, int i2, int i3, boolean z, String str) {
        String gsm7BitPackedToString;
        int i4;
        if (i == 1) {
            gsm7BitPackedToString = GsmAlphabet.gsm7BitPackedToString(bArr, i2, (i3 * 8) / 7);
            if (z && gsm7BitPackedToString != null && gsm7BitPackedToString.length() > 2) {
                str = gsm7BitPackedToString.substring(0, 2);
                gsm7BitPackedToString = gsm7BitPackedToString.substring(3);
            }
        } else if (i != 3) {
            gsm7BitPackedToString = null;
        } else {
            if (z && bArr.length >= (i4 = i2 + 2)) {
                i3 -= 2;
                str = GsmAlphabet.gsm7BitPackedToString(bArr, i2, 2);
                i2 = i4;
            }
            try {
                gsm7BitPackedToString = new String(bArr, i2, i3 & 65534, "utf-16");
            } catch (UnsupportedEncodingException e) {
                throw new IllegalArgumentException("Error decoding UTF-16 message", e);
            }
        }
        if (gsm7BitPackedToString != null) {
            int length = gsm7BitPackedToString.length() - 1;
            while (true) {
                if (length < 0) {
                    break;
                }
                if (gsm7BitPackedToString.charAt(length) != '\r') {
                    gsm7BitPackedToString = gsm7BitPackedToString.substring(0, length + 1);
                    break;
                }
                length--;
            }
        } else {
            gsm7BitPackedToString = "";
        }
        return new Pair<>(str, gsm7BitPackedToString);
    }
}
