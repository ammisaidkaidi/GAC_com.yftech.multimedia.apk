package com.android.internal.telephony.cdma.sms;

import android.util.SparseBooleanArray;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.telephony.SmsAddress;
import com.android.internal.util.HexDump;

/* loaded from: /home/user/work/dex/classes3.dex */
public class CdmaSmsAddress extends SmsAddress {
    public static final int DIGIT_MODE_4BIT_DTMF = 0;
    public static final int DIGIT_MODE_8BIT_CHAR = 1;
    public static final int NUMBERING_PLAN_ISDN_TELEPHONY = 1;
    public static final int NUMBERING_PLAN_UNKNOWN = 0;
    public static final int NUMBER_MODE_DATA_NETWORK = 1;
    public static final int NUMBER_MODE_NOT_DATA_NETWORK = 0;
    public static final int SMS_ADDRESS_MAX = 36;
    public static final int SMS_SUBADDRESS_MAX = 36;
    public static final int TON_ABBREVIATED = 6;
    public static final int TON_ALPHANUMERIC = 5;
    public static final int TON_INTERNATIONAL_OR_IP = 1;
    public static final int TON_NATIONAL_OR_EMAIL = 2;
    public static final int TON_NETWORK = 3;
    public static final int TON_RESERVED = 7;
    public static final int TON_SUBSCRIBER = 4;
    public static final int TON_UNKNOWN = 0;
    public int digitMode;
    public int numberMode;
    public int numberOfDigits;
    public int numberPlan;
    private static final char[] numericCharsDialable = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '*', '#'};
    private static final char[] numericCharsSugar = {'(', ')', ' ', '-', '+', '.', '/', '\\'};
    private static final SparseBooleanArray numericCharDialableMap = new SparseBooleanArray(numericCharsDialable.length + numericCharsSugar.length);

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("CdmaSmsAddress ");
        sb.append("{ digitMode=" + this.digitMode);
        sb.append(", numberMode=" + this.numberMode);
        sb.append(", numberPlan=" + this.numberPlan);
        sb.append(", numberOfDigits=" + this.numberOfDigits);
        sb.append(", ton=" + this.ton);
        sb.append(", address=\"" + this.address + "\"");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(", origBytes=");
        sb2.append(HexDump.toHexString(this.origBytes));
        sb.append(sb2.toString());
        sb.append(" }");
        return sb.toString();
    }

    @VisibleForTesting
    public static byte[] parseToDtmf(String str) {
        int i;
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt >= '1' && charAt <= '9') {
                i = charAt - '0';
            } else if (charAt == '0') {
                i = 10;
            } else if (charAt == '*') {
                i = 11;
            } else {
                if (charAt != '#') {
                    return null;
                }
                i = 12;
            }
            bArr[i2] = (byte) i;
        }
        return bArr;
    }

    static {
        for (int i = 0; i < numericCharsDialable.length; i++) {
            numericCharDialableMap.put(numericCharsDialable[i], true);
        }
        for (int i2 = 0; i2 < numericCharsSugar.length; i2++) {
            numericCharDialableMap.put(numericCharsSugar[i2], false);
        }
    }

    private static String filterNumericSugar(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            int indexOfKey = numericCharDialableMap.indexOfKey(charAt);
            if (indexOfKey < 0) {
                return null;
            }
            if (numericCharDialableMap.valueAt(indexOfKey)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    private static String filterWhitespace(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\r' && charAt != '\n' && charAt != '\t') {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static CdmaSmsAddress parse(String str) {
        byte[] stringToAscii;
        CdmaSmsAddress cdmaSmsAddress = new CdmaSmsAddress();
        cdmaSmsAddress.address = str;
        cdmaSmsAddress.ton = 0;
        cdmaSmsAddress.digitMode = 0;
        cdmaSmsAddress.numberPlan = 0;
        cdmaSmsAddress.numberMode = 0;
        String filterNumericSugar = filterNumericSugar(str);
        if (str.contains("+") || filterNumericSugar == null) {
            cdmaSmsAddress.digitMode = 1;
            cdmaSmsAddress.numberMode = 1;
            String filterWhitespace = filterWhitespace(str);
            if (str.contains("@")) {
                cdmaSmsAddress.ton = 2;
            } else if (str.contains("+") && filterNumericSugar(str) != null) {
                cdmaSmsAddress.ton = 1;
                cdmaSmsAddress.numberPlan = 1;
                cdmaSmsAddress.numberMode = 0;
                filterWhitespace = filterNumericSugar(str);
            }
            stringToAscii = UserData.stringToAscii(filterWhitespace);
        } else {
            stringToAscii = parseToDtmf(filterNumericSugar);
        }
        if (stringToAscii == null) {
            return null;
        }
        cdmaSmsAddress.origBytes = stringToAscii;
        cdmaSmsAddress.numberOfDigits = stringToAscii.length;
        return cdmaSmsAddress;
    }
}
