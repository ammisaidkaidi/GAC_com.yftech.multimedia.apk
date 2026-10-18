package android.telephony;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.location.CountryDetector;
import android.net.Uri;
import android.os.PersistableBundle;
import android.os.SystemProperties;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.provider.SettingsStringUtil;
import android.telecom.PhoneAccount;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TtsSpan;
import android.util.SparseIntArray;
import android.view.textclassifier.TextClassifier;
import com.android.i18n.phonenumbers.NumberParseException;
import com.android.i18n.phonenumbers.PhoneNumberUtil;
import com.android.i18n.phonenumbers.Phonenumber;
import com.android.i18n.phonenumbers.ShortNumberInfo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: /home/user/work/dex/classes2.dex */
public class PhoneNumberUtils {
    private static final String BCD_CALLED_PARTY_EXTENDED = "*#abc";
    private static final String BCD_EF_ADN_EXTENDED = "*#,N;";
    public static final int BCD_EXTENDED_TYPE_CALLED_PARTY = 2;
    public static final int BCD_EXTENDED_TYPE_EF_ADN = 1;
    private static final int CCC_LENGTH;
    private static final String CLIR_OFF = "#31#";
    private static final String CLIR_ON = "*31#";
    private static final boolean[] COUNTRY_CALLING_CALL;
    private static final boolean DBG = false;
    public static final int FORMAT_JAPAN = 2;
    public static final int FORMAT_NANP = 1;
    public static final int FORMAT_UNKNOWN = 0;
    private static final String JAPAN_ISO_COUNTRY_CODE = "JP";
    private static final String KOREA_ISO_COUNTRY_CODE = "KR";
    static final String LOG_TAG = "PhoneNumberUtils";
    static final int MIN_MATCH = 7;
    private static final String NANP_IDP_STRING = "011";
    private static final int NANP_LENGTH = 10;
    private static final int NANP_STATE_DASH = 4;
    private static final int NANP_STATE_DIGIT = 1;
    private static final int NANP_STATE_ONE = 3;
    private static final int NANP_STATE_PLUS = 2;
    public static final char PAUSE = ',';
    private static final char PLUS_SIGN_CHAR = '+';
    private static final String PLUS_SIGN_STRING = "+";
    public static final int TOA_International = 145;
    public static final int TOA_Unknown = 129;
    public static final char WAIT = ';';
    public static final char WILD = 'N';
    private static String[] sConvertToEmergencyMap;
    private static final Pattern GLOBAL_PHONE_NUMBER_PATTERN = Pattern.compile("[\\+]?[0-9.-]+");
    private static final String[] NANP_COUNTRIES = {"US", "CA", "AS", "AI", "AG", "BS", "BB", "BM", "VG", "KY", "DM", "DO", "GD", "GU", "JM", "PR", "MS", "MP", "KN", "LC", "VC", "TT", "TC", "VI"};
    private static final SparseIntArray KEYPAD_MAP = new SparseIntArray();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes2.dex */
    public @interface BcdExtendType {
    }

    public static final boolean is12Key(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#';
    }

    public static final boolean isDialable(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+' || c == 'N';
    }

    public static boolean isISODigit(char c) {
        return c >= '0' && c <= '9';
    }

    public static final boolean isNonSeparator(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+' || c == 'N' || c == ';' || c == ',';
    }

    private static boolean isPause(char c) {
        return c == 'p' || c == 'P';
    }

    public static final boolean isReallyDialable(char c) {
        return (c >= '0' && c <= '9') || c == '*' || c == '#' || c == '+';
    }

    public static final boolean isStartsPostDial(char c) {
        return c == ',' || c == ';';
    }

    private static boolean isToneWait(char c) {
        return c == 'w' || c == 'W';
    }

    private static boolean isTwoToNine(char c) {
        return c >= '2' && c <= '9';
    }

    private static int minPositive(int i, int i2) {
        if (i >= 0 && i2 >= 0) {
            return i < i2 ? i : i2;
        }
        if (i >= 0) {
            return i;
        }
        if (i2 >= 0) {
            return i2;
        }
        return -1;
    }

    private static int tryGetISODigit(char c) {
        if ('0' > c || c > '9') {
            return -1;
        }
        return c - '0';
    }

    static {
        KEYPAD_MAP.put(97, 50);
        KEYPAD_MAP.put(98, 50);
        KEYPAD_MAP.put(99, 50);
        KEYPAD_MAP.put(65, 50);
        KEYPAD_MAP.put(66, 50);
        KEYPAD_MAP.put(67, 50);
        KEYPAD_MAP.put(100, 51);
        KEYPAD_MAP.put(101, 51);
        KEYPAD_MAP.put(102, 51);
        KEYPAD_MAP.put(68, 51);
        KEYPAD_MAP.put(69, 51);
        KEYPAD_MAP.put(70, 51);
        KEYPAD_MAP.put(103, 52);
        KEYPAD_MAP.put(104, 52);
        KEYPAD_MAP.put(105, 52);
        KEYPAD_MAP.put(71, 52);
        KEYPAD_MAP.put(72, 52);
        KEYPAD_MAP.put(73, 52);
        KEYPAD_MAP.put(106, 53);
        KEYPAD_MAP.put(107, 53);
        KEYPAD_MAP.put(108, 53);
        KEYPAD_MAP.put(74, 53);
        KEYPAD_MAP.put(75, 53);
        KEYPAD_MAP.put(76, 53);
        KEYPAD_MAP.put(109, 54);
        KEYPAD_MAP.put(110, 54);
        KEYPAD_MAP.put(111, 54);
        KEYPAD_MAP.put(77, 54);
        KEYPAD_MAP.put(78, 54);
        KEYPAD_MAP.put(79, 54);
        KEYPAD_MAP.put(112, 55);
        KEYPAD_MAP.put(113, 55);
        KEYPAD_MAP.put(114, 55);
        KEYPAD_MAP.put(115, 55);
        KEYPAD_MAP.put(80, 55);
        KEYPAD_MAP.put(81, 55);
        KEYPAD_MAP.put(82, 55);
        KEYPAD_MAP.put(83, 55);
        KEYPAD_MAP.put(116, 56);
        KEYPAD_MAP.put(117, 56);
        KEYPAD_MAP.put(118, 56);
        KEYPAD_MAP.put(84, 56);
        KEYPAD_MAP.put(85, 56);
        KEYPAD_MAP.put(86, 56);
        KEYPAD_MAP.put(119, 57);
        KEYPAD_MAP.put(120, 57);
        KEYPAD_MAP.put(121, 57);
        KEYPAD_MAP.put(122, 57);
        KEYPAD_MAP.put(87, 57);
        KEYPAD_MAP.put(88, 57);
        KEYPAD_MAP.put(89, 57);
        KEYPAD_MAP.put(90, 57);
        COUNTRY_CALLING_CALL = new boolean[]{true, true, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, true, true, false, true, true, true, true, true, false, true, false, false, true, true, false, false, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, true, false, true, true, true, true, true, true, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, true, true, true, false, true, false, false, true, true, true, true, true, true, true, false, false, true, false};
        CCC_LENGTH = COUNTRY_CALLING_CALL.length;
        sConvertToEmergencyMap = null;
    }

    private static boolean isSeparator(char c) {
        return !isDialable(c) && ('a' > c || c > 'z') && ('A' > c || c > 'Z');
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0066, code lost:
    
        if (r8 != null) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0068, code lost:
    
        r8.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0078, code lost:
    
        if (r8 == null) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String getNumberFromIntent(Intent intent, Context context) {
        String str;
        Cursor cursor;
        Uri data = intent.getData();
        String str2 = null;
        if (data == null) {
            return null;
        }
        String scheme = data.getScheme();
        if (scheme.equals(PhoneAccount.SCHEME_TEL) || scheme.equals("sip")) {
            return data.getSchemeSpecificPart();
        }
        if (context == null) {
            return null;
        }
        intent.resolveType(context);
        String authority = data.getAuthority();
        if (Contacts.AUTHORITY.equals(authority)) {
            str = "number";
        } else {
            str = ContactsContract.AUTHORITY.equals(authority) ? "data1" : null;
        }
        try {
            cursor = context.getContentResolver().query(data, new String[]{str}, null, null, null);
            if (cursor != null) {
                try {
                    try {
                        if (cursor.moveToFirst()) {
                            str2 = cursor.getString(cursor.getColumnIndex(str));
                        }
                    } catch (RuntimeException e) {
                        e = e;
                        Rlog.e(LOG_TAG, "Error getting phone number.", e);
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        } catch (RuntimeException e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    public static String extractNetworkPortion(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            int digit = Character.digit(charAt, 10);
            if (digit == -1) {
                if (charAt == '+') {
                    String sb2 = sb.toString();
                    if (sb2.length() == 0 || sb2.equals(CLIR_ON) || sb2.equals(CLIR_OFF)) {
                        sb.append(charAt);
                    }
                } else if (isDialable(charAt)) {
                    sb.append(charAt);
                } else if (isStartsPostDial(charAt)) {
                    break;
                }
            } else {
                sb.append(digit);
            }
        }
        return sb.toString();
    }

    public static String extractNetworkPortionAlt(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        boolean z = false;
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '+') {
                if (z) {
                    continue;
                } else {
                    z = true;
                }
            }
            if (isDialable(charAt)) {
                sb.append(charAt);
            } else if (isStartsPostDial(charAt)) {
                break;
            }
        }
        return sb.toString();
    }

    public static String stripSeparators(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            int digit = Character.digit(charAt, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (isNonSeparator(charAt)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static String convertAndStrip(String str) {
        return stripSeparators(convertKeypadLettersToDigits(str));
    }

    public static String convertPreDial(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (isPause(charAt)) {
                charAt = ',';
            } else if (isToneWait(charAt)) {
                charAt = ';';
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    private static void log(String str) {
        Rlog.d(LOG_TAG, str);
    }

    private static int indexOfLastNetworkChar(String str) {
        int length = str.length();
        int minPositive = minPositive(str.indexOf(44), str.indexOf(59));
        return minPositive < 0 ? length - 1 : minPositive - 1;
    }

    public static String extractPostDialPortion(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int indexOfLastNetworkChar = indexOfLastNetworkChar(str) + 1; indexOfLastNetworkChar < length; indexOfLastNetworkChar++) {
            char charAt = str.charAt(indexOfLastNetworkChar);
            if (isNonSeparator(charAt)) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static boolean compare(String str, String str2) {
        return compare(str, str2, false);
    }

    public static boolean compare(Context context, String str, String str2) {
        return compare(str, str2, context.getResources().getBoolean(R.^attr-private.scrollCaptureHint));
    }

    public static boolean compare(String str, String str2, boolean z) {
        return z ? compareStrictly(str, str2) : compareLoosely(str, str2);
    }

    public static boolean compareLoosely(String str, String str2) {
        int i;
        int i2;
        boolean z;
        if (str == null || str2 == null) {
            return str == str2;
        }
        if (str.length() == 0 || str2.length() == 0) {
            return false;
        }
        int indexOfLastNetworkChar = indexOfLastNetworkChar(str);
        int indexOfLastNetworkChar2 = indexOfLastNetworkChar(str2);
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (indexOfLastNetworkChar < 0 || indexOfLastNetworkChar2 < 0) {
                break;
            }
            char charAt = str.charAt(indexOfLastNetworkChar);
            if (isDialable(charAt)) {
                i = i3;
                i2 = indexOfLastNetworkChar;
                z = false;
            } else {
                i = i3 + 1;
                i2 = indexOfLastNetworkChar - 1;
                z = true;
            }
            char charAt2 = str2.charAt(indexOfLastNetworkChar2);
            if (!isDialable(charAt2)) {
                indexOfLastNetworkChar2--;
                i4++;
                z = true;
            }
            if (!z) {
                if (charAt2 != charAt && charAt != 'N' && charAt2 != 'N') {
                    indexOfLastNetworkChar = i2;
                    i3 = i;
                    break;
                }
                i2--;
                indexOfLastNetworkChar2--;
                i5++;
            }
            indexOfLastNetworkChar = i2;
            i3 = i;
        }
        if (i5 < 7) {
            int length = str.length() - i3;
            return length == str2.length() - i4 && length == i5;
        }
        if (i5 >= 7 && (indexOfLastNetworkChar < 0 || indexOfLastNetworkChar2 < 0)) {
            return true;
        }
        int i6 = indexOfLastNetworkChar + 1;
        if (matchIntlPrefix(str, i6) && matchIntlPrefix(str2, indexOfLastNetworkChar2 + 1)) {
            return true;
        }
        if (matchTrunkPrefix(str, i6) && matchIntlPrefixAndCC(str2, indexOfLastNetworkChar2 + 1)) {
            return true;
        }
        return matchTrunkPrefix(str2, indexOfLastNetworkChar2 + 1) && matchIntlPrefixAndCC(str, i6);
    }

    public static boolean compareStrictly(String str, String str2) {
        return compareStrictly(str, str2, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0074 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean compareStrictly(String str, String str2, boolean z) {
        int tryGetTrunkPrefixOmittedIndex;
        boolean z2;
        int tryGetTrunkPrefixOmittedIndex2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        int length;
        int length2;
        char charAt;
        char charAt2;
        int i;
        boolean z7;
        if (str == null || str2 == null) {
            return str == str2;
        }
        if (str.length() == 0 && str2.length() == 0) {
            return false;
        }
        CountryCallingCodeAndNewIndex tryGetCountryCallingCodeAndNewIndex = tryGetCountryCallingCodeAndNewIndex(str, z);
        CountryCallingCodeAndNewIndex tryGetCountryCallingCodeAndNewIndex2 = tryGetCountryCallingCodeAndNewIndex(str2, z);
        if (tryGetCountryCallingCodeAndNewIndex == null || tryGetCountryCallingCodeAndNewIndex2 == null) {
            if (tryGetCountryCallingCodeAndNewIndex != null || tryGetCountryCallingCodeAndNewIndex2 != null) {
                if (tryGetCountryCallingCodeAndNewIndex != null) {
                    tryGetTrunkPrefixOmittedIndex = tryGetCountryCallingCodeAndNewIndex.newIndex;
                    z2 = false;
                } else {
                    tryGetTrunkPrefixOmittedIndex = tryGetTrunkPrefixOmittedIndex(str2, 0);
                    if (tryGetTrunkPrefixOmittedIndex >= 0) {
                        z2 = true;
                    } else {
                        tryGetTrunkPrefixOmittedIndex = 0;
                        z2 = false;
                    }
                }
                if (tryGetCountryCallingCodeAndNewIndex2 != null) {
                    tryGetTrunkPrefixOmittedIndex2 = tryGetCountryCallingCodeAndNewIndex2.newIndex;
                    z3 = true;
                    z4 = false;
                } else {
                    tryGetTrunkPrefixOmittedIndex2 = tryGetTrunkPrefixOmittedIndex(str2, 0);
                    if (tryGetTrunkPrefixOmittedIndex2 >= 0) {
                        z3 = true;
                        z4 = true;
                        z5 = z2;
                        z6 = false;
                        length = str.length() - 1;
                        length2 = str2.length() - 1;
                        while (length >= tryGetTrunkPrefixOmittedIndex && length2 >= tryGetTrunkPrefixOmittedIndex2) {
                            charAt = str.charAt(length);
                            charAt2 = str2.charAt(length2);
                            if (isSeparator(charAt)) {
                                i = length;
                                z7 = false;
                            } else {
                                i = length - 1;
                                z7 = true;
                            }
                            if (isSeparator(charAt2)) {
                                length2--;
                                z7 = true;
                            }
                            if (!z7) {
                                if (charAt != charAt2) {
                                    return false;
                                }
                                i--;
                                length2--;
                            }
                            length = i;
                        }
                        if (!z3) {
                            boolean z8 = !z6;
                            while (length >= tryGetTrunkPrefixOmittedIndex) {
                                char charAt3 = str.charAt(length);
                                if (isDialable(charAt3)) {
                                    if (!z8 || tryGetISODigit(charAt3) != 1) {
                                        return false;
                                    }
                                    z8 = false;
                                }
                                length--;
                            }
                            while (length2 >= tryGetTrunkPrefixOmittedIndex2) {
                                char charAt4 = str2.charAt(length2);
                                if (isDialable(charAt4)) {
                                    if (!z8 || tryGetISODigit(charAt4) != 1) {
                                        return false;
                                    }
                                    z8 = false;
                                }
                                length2--;
                            }
                        } else {
                            if ((z5 && tryGetTrunkPrefixOmittedIndex <= length) || !checkPrefixIsIgnorable(str, tryGetTrunkPrefixOmittedIndex, length)) {
                                if (z) {
                                    return compare(str, str2, false);
                                }
                                return false;
                            }
                            if ((z4 && tryGetTrunkPrefixOmittedIndex2 <= length2) || !checkPrefixIsIgnorable(str2, tryGetTrunkPrefixOmittedIndex, length2)) {
                                if (z) {
                                    return compare(str, str2, false);
                                }
                                return false;
                            }
                        }
                        return true;
                    }
                    z3 = true;
                    tryGetTrunkPrefixOmittedIndex2 = 0;
                    z4 = false;
                }
                z5 = z2;
                z6 = z4;
                length = str.length() - 1;
                length2 = str2.length() - 1;
                while (length >= tryGetTrunkPrefixOmittedIndex) {
                    charAt = str.charAt(length);
                    charAt2 = str2.charAt(length2);
                    if (isSeparator(charAt)) {
                    }
                    if (isSeparator(charAt2)) {
                    }
                    if (!z7) {
                    }
                    length = i;
                }
                if (!z3) {
                }
                return true;
            }
            tryGetTrunkPrefixOmittedIndex = 0;
            tryGetTrunkPrefixOmittedIndex2 = 0;
            z6 = false;
            z3 = false;
        } else {
            if (tryGetCountryCallingCodeAndNewIndex.countryCallingCode != tryGetCountryCallingCodeAndNewIndex2.countryCallingCode) {
                return false;
            }
            tryGetTrunkPrefixOmittedIndex = tryGetCountryCallingCodeAndNewIndex.newIndex;
            tryGetTrunkPrefixOmittedIndex2 = tryGetCountryCallingCodeAndNewIndex2.newIndex;
            z6 = true;
            z3 = false;
        }
        z5 = z3;
        z4 = z5;
        length = str.length() - 1;
        length2 = str2.length() - 1;
        while (length >= tryGetTrunkPrefixOmittedIndex) {
        }
        if (!z3) {
        }
        return true;
    }

    public static String toCallerIDMinMatch(String str) {
        return internalGetStrippedReversed(extractNetworkPortionAlt(str), 7);
    }

    public static String getStrippedReversed(String str) {
        String extractNetworkPortionAlt = extractNetworkPortionAlt(str);
        if (extractNetworkPortionAlt == null) {
            return null;
        }
        return internalGetStrippedReversed(extractNetworkPortionAlt, extractNetworkPortionAlt.length());
    }

    private static String internalGetStrippedReversed(String str, int i) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(i);
        int length = str.length();
        for (int i2 = length - 1; i2 >= 0 && length - i2 <= i; i2--) {
            sb.append(str.charAt(i2));
        }
        return sb.toString();
    }

    public static String stringFromStringAndTOA(String str, int i) {
        if (str == null) {
            return null;
        }
        if (i != 145 || str.length() <= 0 || str.charAt(0) == '+') {
            return str;
        }
        return PLUS_SIGN_STRING + str;
    }

    public static int toaFromString(String str) {
        return (str == null || str.length() <= 0 || str.charAt(0) != '+') ? 129 : 145;
    }

    @Deprecated
    public static String calledPartyBCDToString(byte[] bArr, int i, int i2) {
        return calledPartyBCDToString(bArr, i, i2, 1);
    }

    public static String calledPartyBCDToString(byte[] bArr, int i, int i2, int i3) {
        StringBuilder sb;
        StringBuilder sb2 = new StringBuilder((i2 * 2) + 1);
        if (i2 < 2) {
            return TextClassifier.TYPE_UNKNOWN;
        }
        boolean z = (bArr[i] & 240) == 144;
        internalCalledPartyBCDFragmentToString(sb2, bArr, i + 1, i2 - 1, i3);
        if (z && sb2.length() == 0) {
            return TextClassifier.TYPE_UNKNOWN;
        }
        if (z) {
            String sb3 = sb2.toString();
            Matcher matcher = Pattern.compile("(^[#*])(.*)([#*])(.*)(#)$").matcher(sb3);
            if (matcher.matches()) {
                if (TextClassifier.TYPE_UNKNOWN.equals(matcher.group(2))) {
                    sb = new StringBuilder();
                    sb.append(matcher.group(1));
                    sb.append(matcher.group(3));
                    sb.append(matcher.group(4));
                    sb.append(matcher.group(5));
                    sb.append(PLUS_SIGN_STRING);
                } else {
                    sb = new StringBuilder();
                    sb.append(matcher.group(1));
                    sb.append(matcher.group(2));
                    sb.append(matcher.group(3));
                    sb.append(PLUS_SIGN_STRING);
                    sb.append(matcher.group(4));
                    sb.append(matcher.group(5));
                }
            } else {
                Matcher matcher2 = Pattern.compile("(^[#*])(.*)([#*])(.*)").matcher(sb3);
                if (matcher2.matches()) {
                    sb = new StringBuilder();
                    sb.append(matcher2.group(1));
                    sb.append(matcher2.group(2));
                    sb.append(matcher2.group(3));
                    sb.append(PLUS_SIGN_STRING);
                    sb.append(matcher2.group(4));
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(PLUS_SIGN_CHAR);
                    sb2.append(sb3);
                }
            }
            return sb.toString();
        }
        sb = sb2;
        return sb.toString();
    }

    private static void internalCalledPartyBCDFragmentToString(StringBuilder sb, byte[] bArr, int i, int i2, int i3) {
        char bcdToChar;
        char bcdToChar2;
        int i4 = i;
        while (true) {
            int i5 = i2 + i;
            if (i4 >= i5 || (bcdToChar = bcdToChar((byte) (bArr[i4] & 15), i3)) == 0) {
                return;
            }
            sb.append(bcdToChar);
            byte b = (byte) ((bArr[i4] >> 4) & 15);
            if ((b == 15 && i4 + 1 == i5) || (bcdToChar2 = bcdToChar(b, i3)) == 0) {
                return;
            }
            sb.append(bcdToChar2);
            i4++;
        }
    }

    @Deprecated
    public static String calledPartyBCDFragmentToString(byte[] bArr, int i, int i2) {
        return calledPartyBCDFragmentToString(bArr, i, i2, 1);
    }

    public static String calledPartyBCDFragmentToString(byte[] bArr, int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder(i2 * 2);
        internalCalledPartyBCDFragmentToString(sb, bArr, i, i2, i3);
        return sb.toString();
    }

    private static char bcdToChar(byte b, int i) {
        int i2;
        if (b < 10) {
            return (char) (b + 48);
        }
        String str = null;
        if (1 == i) {
            str = BCD_EF_ADN_EXTENDED;
        } else if (2 == i) {
            str = BCD_CALLED_PARTY_EXTENDED;
        }
        if (str == null || (i2 = b - 10) >= str.length()) {
            return (char) 0;
        }
        return str.charAt(i2);
    }

    private static int charToBCD(char c, int i) {
        if ('0' <= c && c <= '9') {
            return c - '0';
        }
        String str = null;
        if (1 == i) {
            str = BCD_EF_ADN_EXTENDED;
        } else if (2 == i) {
            str = BCD_CALLED_PARTY_EXTENDED;
        }
        if (str == null || str.indexOf(c) == -1) {
            throw new RuntimeException("invalid char for BCD " + c);
        }
        return str.indexOf(c) + 10;
    }

    public static boolean isWellFormedSmsAddress(String str) {
        String extractNetworkPortion = extractNetworkPortion(str);
        return (extractNetworkPortion.equals(PLUS_SIGN_STRING) || TextUtils.isEmpty(extractNetworkPortion) || !isDialable(extractNetworkPortion)) ? false : true;
    }

    public static boolean isGlobalPhoneNumber(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return GLOBAL_PHONE_NUMBER_PATTERN.matcher(str).matches();
    }

    private static boolean isDialable(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!isDialable(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private static boolean isNonSeparator(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!isNonSeparator(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static byte[] networkPortionToCalledPartyBCD(String str) {
        return numberToCalledPartyBCDHelper(extractNetworkPortion(str), false, 1);
    }

    public static byte[] networkPortionToCalledPartyBCDWithLength(String str) {
        return numberToCalledPartyBCDHelper(extractNetworkPortion(str), true, 1);
    }

    @Deprecated
    public static byte[] numberToCalledPartyBCD(String str) {
        return numberToCalledPartyBCD(str, 1);
    }

    public static byte[] numberToCalledPartyBCD(String str, int i) {
        return numberToCalledPartyBCDHelper(str, false, i);
    }

    private static byte[] numberToCalledPartyBCDHelper(String str, boolean z, int i) {
        int length = str.length();
        char c = PLUS_SIGN_CHAR;
        char c2 = 0;
        boolean z2 = str.indexOf(43) != -1;
        int i2 = z2 ? length - 1 : length;
        if (i2 == 0) {
            return null;
        }
        int i3 = (i2 + 1) / 2;
        int i4 = z ? 2 : 1;
        int i5 = i3 + i4;
        byte[] bArr = new byte[i5];
        int i6 = 0;
        int i7 = 0;
        while (i6 < length) {
            char charAt = str.charAt(i6);
            if (charAt != c) {
                int i8 = (i7 >> 1) + i4;
                bArr[i8] = (byte) (((byte) ((charToBCD(charAt, i) & 15) << ((i7 & 1) == 1 ? 4 : 0))) | bArr[i8]);
                i7++;
            }
            i6++;
            c = PLUS_SIGN_CHAR;
        }
        if ((i7 & 1) == 1) {
            int i9 = i4 + (i7 >> 1);
            bArr[i9] = (byte) (bArr[i9] | 240);
        }
        if (z) {
            bArr[0] = (byte) (i5 - 1);
            c2 = 1;
        }
        bArr[c2] = (byte) (z2 ? 145 : 129);
        return bArr;
    }

    @Deprecated
    public static String formatNumber(String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        formatNumber(spannableStringBuilder, getFormatTypeForLocale(Locale.getDefault()));
        return spannableStringBuilder.toString();
    }

    @Deprecated
    public static String formatNumber(String str, int i) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        formatNumber(spannableStringBuilder, i);
        return spannableStringBuilder.toString();
    }

    @Deprecated
    public static int getFormatTypeForLocale(Locale locale) {
        return getFormatTypeFromCountryCode(locale.getCountry());
    }

    @Deprecated
    public static void formatNumber(Editable editable, int i) {
        if (editable.length() > 2 && editable.charAt(0) == '+') {
            if (editable.charAt(1) == '1') {
                i = 1;
            } else {
                i = (editable.length() >= 3 && editable.charAt(1) == '8' && editable.charAt(2) == '1') ? 2 : 0;
            }
        }
        switch (i) {
            case 0:
                removeDashes(editable);
                return;
            case 1:
                formatNanpNumber(editable);
                return;
            case 2:
                formatJapaneseNumber(editable);
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0035. Please report as an issue. */
    @Deprecated
    public static void formatNanpNumber(Editable editable) {
        int i;
        int length = editable.length();
        if (length <= "+1-nnn-nnn-nnnn".length() && length > 5) {
            CharSequence subSequence = editable.subSequence(0, length);
            removeDashes(editable);
            int length2 = editable.length();
            int[] iArr = new int[3];
            int i2 = 0;
            int i3 = 0;
            char c = 1;
            for (int i4 = 0; i4 < length2; i4++) {
                char charAt = editable.charAt(i4);
                if (charAt != '+') {
                    if (charAt != '-') {
                        switch (charAt) {
                            case '1':
                                if (i2 == 0 || c == 2) {
                                    c = 3;
                                    break;
                                }
                            case '0':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                                if (c == 2) {
                                    editable.replace(0, length2, subSequence);
                                    return;
                                }
                                if (c == 3) {
                                    i = i3 + 1;
                                    iArr[i3] = i4;
                                } else if (c == 4 || !(i2 == 3 || i2 == 6)) {
                                    i = i3;
                                } else {
                                    i = i3 + 1;
                                    iArr[i3] = i4;
                                }
                                i2++;
                                i3 = i;
                                c = 1;
                                break;
                            default:
                                editable.replace(0, length2, subSequence);
                                return;
                        }
                    } else {
                        c = 4;
                    }
                } else {
                    if (i4 != 0) {
                        editable.replace(0, length2, subSequence);
                        return;
                    }
                    c = 2;
                }
            }
            if (i2 == 7) {
                i3--;
            }
            for (int i5 = 0; i5 < i3; i5++) {
                int i6 = iArr[i5] + i5;
                editable.replace(i6, i6, "-");
            }
            for (int length3 = editable.length(); length3 > 0; length3--) {
                int i7 = length3 - 1;
                if (editable.charAt(i7) != '-') {
                    return;
                }
                editable.delete(i7, length3);
            }
        }
    }

    @Deprecated
    public static void formatJapaneseNumber(Editable editable) {
        JapanesePhoneNumberFormatter.format(editable);
    }

    private static void removeDashes(Editable editable) {
        int i = 0;
        while (i < editable.length()) {
            if (editable.charAt(i) == '-') {
                editable.delete(i, i + 1);
            } else {
                i++;
            }
        }
    }

    public static String formatNumberToE164(String str, String str2) {
        return formatNumberInternal(str, str2, PhoneNumberUtil.PhoneNumberFormat.E164);
    }

    public static String formatNumberToRFC3966(String str, String str2) {
        return formatNumberInternal(str, str2, PhoneNumberUtil.PhoneNumberFormat.RFC3966);
    }

    private static String formatNumberInternal(String str, String str2, PhoneNumberUtil.PhoneNumberFormat phoneNumberFormat) {
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            Phonenumber.PhoneNumber parse = phoneNumberUtil.parse(str, str2);
            if (phoneNumberUtil.isValidNumber(parse)) {
                return phoneNumberUtil.format(parse, phoneNumberFormat);
            }
            return null;
        } catch (NumberParseException unused) {
            return null;
        }
    }

    public static boolean isInternationalNumber(String str, String str2) {
        if (TextUtils.isEmpty(str) || str.startsWith("#") || str.startsWith("*")) {
            return false;
        }
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            return phoneNumberUtil.parseAndKeepRawInput(str, str2).getCountryCode() != phoneNumberUtil.getCountryCodeForRegion(str2);
        } catch (NumberParseException unused) {
            return false;
        }
    }

    public static String formatNumber(String str, String str2) {
        String formatInOriginalFormat;
        if (str.startsWith("#") || str.startsWith("*")) {
            return str;
        }
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            Phonenumber.PhoneNumber parseAndKeepRawInput = phoneNumberUtil.parseAndKeepRawInput(str, str2);
            if (KOREA_ISO_COUNTRY_CODE.equalsIgnoreCase(str2) && parseAndKeepRawInput.getCountryCode() == phoneNumberUtil.getCountryCodeForRegion(KOREA_ISO_COUNTRY_CODE) && parseAndKeepRawInput.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN) {
                formatInOriginalFormat = phoneNumberUtil.format(parseAndKeepRawInput, PhoneNumberUtil.PhoneNumberFormat.NATIONAL);
            } else if (JAPAN_ISO_COUNTRY_CODE.equalsIgnoreCase(str2) && parseAndKeepRawInput.getCountryCode() == phoneNumberUtil.getCountryCodeForRegion(JAPAN_ISO_COUNTRY_CODE) && parseAndKeepRawInput.getCountryCodeSource() == Phonenumber.PhoneNumber.CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN) {
                formatInOriginalFormat = phoneNumberUtil.format(parseAndKeepRawInput, PhoneNumberUtil.PhoneNumberFormat.NATIONAL);
            } else {
                formatInOriginalFormat = phoneNumberUtil.formatInOriginalFormat(parseAndKeepRawInput, str2);
            }
            return formatInOriginalFormat;
        } catch (NumberParseException unused) {
            return null;
        }
    }

    public static String formatNumber(String str, String str2, String str3) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!isDialable(str.charAt(i))) {
                return str;
            }
        }
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        if (str2 != null && str2.length() >= 2 && str2.charAt(0) == '+') {
            try {
                String regionCodeForNumber = phoneNumberUtil.getRegionCodeForNumber(phoneNumberUtil.parse(str2, "ZZ"));
                if (!TextUtils.isEmpty(regionCodeForNumber)) {
                    if (normalizeNumber(str).indexOf(str2.substring(1)) <= 0) {
                        str3 = regionCodeForNumber;
                    }
                }
            } catch (NumberParseException unused) {
            }
        }
        String formatNumber = formatNumber(str, str3);
        return formatNumber != null ? formatNumber : str;
    }

    public static String normalizeNumber(String str) {
        if (TextUtils.isEmpty(str)) {
            return TextClassifier.TYPE_UNKNOWN;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            int digit = Character.digit(charAt, 10);
            if (digit != -1) {
                sb.append(digit);
            } else if (sb.length() == 0 && charAt == '+') {
                sb.append(charAt);
            } else if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                return normalizeNumber(convertKeypadLettersToDigits(str));
            }
        }
        return sb.toString();
    }

    public static String replaceUnicodeDigits(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (char c : str.toCharArray()) {
            int digit = Character.digit(c, 10);
            if (digit != -1) {
                sb.append(digit);
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    public static boolean isEmergencyNumber(String str) {
        return isEmergencyNumber(getDefaultVoiceSubId(), str);
    }

    public static boolean isEmergencyNumber(int i, String str) {
        return isEmergencyNumberInternal(i, str, true);
    }

    public static boolean isPotentialEmergencyNumber(String str) {
        return isPotentialEmergencyNumber(getDefaultVoiceSubId(), str);
    }

    public static boolean isPotentialEmergencyNumber(int i, String str) {
        return isEmergencyNumberInternal(i, str, false);
    }

    private static boolean isEmergencyNumberInternal(String str, boolean z) {
        return isEmergencyNumberInternal(getDefaultVoiceSubId(), str, z);
    }

    private static boolean isEmergencyNumberInternal(int i, String str, boolean z) {
        return isEmergencyNumberInternal(i, str, null, z);
    }

    public static boolean isEmergencyNumber(String str, String str2) {
        return isEmergencyNumber(getDefaultVoiceSubId(), str, str2);
    }

    public static boolean isEmergencyNumber(int i, String str, String str2) {
        return isEmergencyNumberInternal(i, str, str2, true);
    }

    public static boolean isPotentialEmergencyNumber(String str, String str2) {
        return isPotentialEmergencyNumber(getDefaultVoiceSubId(), str, str2);
    }

    public static boolean isPotentialEmergencyNumber(int i, String str, String str2) {
        return isEmergencyNumberInternal(i, str, str2, false);
    }

    private static boolean isEmergencyNumberInternal(String str, String str2, boolean z) {
        return isEmergencyNumberInternal(getDefaultVoiceSubId(), str, str2, z);
    }

    private static boolean isEmergencyNumberInternal(int i, String str, String str2, boolean z) {
        if (str == null || isUriNumber(str)) {
            return false;
        }
        String extractNetworkPortionAlt = extractNetworkPortionAlt(str);
        int slotIndex = SubscriptionManager.getSlotIndex(i);
        String str3 = SystemProperties.get(slotIndex <= 0 ? "ril.ecclist" : "ril.ecclist" + slotIndex, TextClassifier.TYPE_UNKNOWN);
        Rlog.d(LOG_TAG, "slotId:" + slotIndex + " subId:" + i + " country:" + str2 + " emergencyNumbers: " + str3);
        if (TextUtils.isEmpty(str3)) {
            str3 = SystemProperties.get("ro.ril.ecclist");
        }
        if (!TextUtils.isEmpty(str3)) {
            String[] split = str3.split(",");
            for (String str4 : split) {
                if (z || "BR".equalsIgnoreCase(str2)) {
                    if (extractNetworkPortionAlt.equals(str4)) {
                        return true;
                    }
                } else if (extractNetworkPortionAlt.startsWith(str4)) {
                    return true;
                }
            }
            return false;
        }
        Rlog.d(LOG_TAG, "System property doesn't provide any emergency numbers. Use embedded logic for determining ones.");
        for (String str5 : (slotIndex < 0 ? "112,911,000,08,110,118,119,999" : "112,911").split(",")) {
            if (z) {
                if (extractNetworkPortionAlt.equals(str5)) {
                    return true;
                }
            } else if (extractNetworkPortionAlt.startsWith(str5)) {
                return true;
            }
        }
        if (str2 == null) {
            return false;
        }
        ShortNumberInfo shortNumberInfo = ShortNumberInfo.getInstance();
        if (z) {
            return shortNumberInfo.isEmergencyNumber(extractNetworkPortionAlt, str2);
        }
        return shortNumberInfo.connectsToEmergencyNumber(extractNetworkPortionAlt, str2);
    }

    public static boolean isLocalEmergencyNumber(Context context, String str) {
        return isLocalEmergencyNumber(context, getDefaultVoiceSubId(), str);
    }

    public static boolean isLocalEmergencyNumber(Context context, int i, String str) {
        return isLocalEmergencyNumberInternal(i, str, context, true);
    }

    public static boolean isPotentialLocalEmergencyNumber(Context context, String str) {
        return isPotentialLocalEmergencyNumber(context, getDefaultVoiceSubId(), str);
    }

    public static boolean isPotentialLocalEmergencyNumber(Context context, int i, String str) {
        return isLocalEmergencyNumberInternal(i, str, context, false);
    }

    private static boolean isLocalEmergencyNumberInternal(String str, Context context, boolean z) {
        return isLocalEmergencyNumberInternal(getDefaultVoiceSubId(), str, context, z);
    }

    private static boolean isLocalEmergencyNumberInternal(int i, String str, Context context, boolean z) {
        String country;
        CountryDetector countryDetector = (CountryDetector) context.getSystemService("country_detector");
        if (countryDetector != null && countryDetector.detectCountry() != null) {
            country = countryDetector.detectCountry().getCountryIso();
        } else {
            country = context.getResources().getConfiguration().locale.getCountry();
            Rlog.w(LOG_TAG, "No CountryDetector; falling back to countryIso based on locale: " + country);
        }
        return isEmergencyNumberInternal(i, str, country, z);
    }

    public static boolean isVoiceMailNumber(String str) {
        return isVoiceMailNumber(SubscriptionManager.getDefaultSubscriptionId(), str);
    }

    public static boolean isVoiceMailNumber(int i, String str) {
        return isVoiceMailNumber(null, i, str);
    }

    public static boolean isVoiceMailNumber(Context context, int i, String str) {
        TelephonyManager from;
        CarrierConfigManager carrierConfigManager;
        PersistableBundle configForSubId;
        try {
            if (context == null) {
                from = TelephonyManager.getDefault();
            } else {
                from = TelephonyManager.from(context);
            }
            String voiceMailNumber = from.getVoiceMailNumber(i);
            String line1Number = from.getLine1Number(i);
            String extractNetworkPortionAlt = extractNetworkPortionAlt(str);
            if (TextUtils.isEmpty(extractNetworkPortionAlt)) {
                return false;
            }
            if ((context == null || (carrierConfigManager = (CarrierConfigManager) context.getSystemService("carrier_config")) == null || (configForSubId = carrierConfigManager.getConfigForSubId(i)) == null) ? false : configForSubId.getBoolean(CarrierConfigManager.KEY_MDN_IS_ADDITIONAL_VOICEMAIL_NUMBER_BOOL)) {
                return compare(extractNetworkPortionAlt, voiceMailNumber) || compare(extractNetworkPortionAlt, line1Number);
            }
            return compare(extractNetworkPortionAlt, voiceMailNumber);
        } catch (SecurityException unused) {
            return false;
        }
    }

    public static String convertKeypadLettersToDigits(String str) {
        int length;
        if (str == null || (length = str.length()) == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < length; i++) {
            char c = charArray[i];
            charArray[i] = (char) KEYPAD_MAP.get(c, c);
        }
        return new String(charArray);
    }

    public static String cdmaCheckAndProcessPlusCode(String str) {
        if (!TextUtils.isEmpty(str) && isReallyDialable(str.charAt(0)) && isNonSeparator(str)) {
            String networkCountryIso = TelephonyManager.getDefault().getNetworkCountryIso();
            String simCountryIso = TelephonyManager.getDefault().getSimCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso) && !TextUtils.isEmpty(simCountryIso)) {
                return cdmaCheckAndProcessPlusCodeByNumberFormat(str, getFormatTypeFromCountryCode(networkCountryIso), getFormatTypeFromCountryCode(simCountryIso));
            }
        }
        return str;
    }

    public static String cdmaCheckAndProcessPlusCodeForSms(String str) {
        if (!TextUtils.isEmpty(str) && isReallyDialable(str.charAt(0)) && isNonSeparator(str)) {
            String simCountryIso = TelephonyManager.getDefault().getSimCountryIso();
            if (!TextUtils.isEmpty(simCountryIso)) {
                int formatTypeFromCountryCode = getFormatTypeFromCountryCode(simCountryIso);
                return cdmaCheckAndProcessPlusCodeByNumberFormat(str, formatTypeFromCountryCode, formatTypeFromCountryCode);
            }
        }
        return str;
    }

    public static String cdmaCheckAndProcessPlusCodeByNumberFormat(String str, int i, int i2) {
        String extractNetworkPortionAlt;
        String processPlusCode;
        boolean z = i == i2 && i == 1;
        if (str == null || str.lastIndexOf(PLUS_SIGN_STRING) == -1) {
            return str;
        }
        String str2 = null;
        String str3 = str;
        while (true) {
            if (z) {
                extractNetworkPortionAlt = extractNetworkPortion(str3);
            } else {
                extractNetworkPortionAlt = extractNetworkPortionAlt(str3);
            }
            processPlusCode = processPlusCode(extractNetworkPortionAlt, z);
            if (TextUtils.isEmpty(processPlusCode)) {
                Rlog.e("checkAndProcessPlusCode: null newDialStr", processPlusCode);
                return str;
            }
            if (str2 != null) {
                processPlusCode = str2.concat(processPlusCode);
            }
            String extractPostDialPortion = extractPostDialPortion(str3);
            if (!TextUtils.isEmpty(extractPostDialPortion)) {
                int findDialableIndexFromPostDialStr = findDialableIndexFromPostDialStr(extractPostDialPortion);
                if (findDialableIndexFromPostDialStr >= 1) {
                    processPlusCode = appendPwCharBackToOrigDialStr(findDialableIndexFromPostDialStr, processPlusCode, extractPostDialPortion);
                    str3 = extractPostDialPortion.substring(findDialableIndexFromPostDialStr);
                } else {
                    if (findDialableIndexFromPostDialStr < 0) {
                        extractPostDialPortion = TextClassifier.TYPE_UNKNOWN;
                    }
                    Rlog.e("wrong postDialStr=", extractPostDialPortion);
                }
            }
            if (TextUtils.isEmpty(extractPostDialPortion) || TextUtils.isEmpty(str3)) {
                break;
            }
            str2 = processPlusCode;
        }
        return processPlusCode;
    }

    public static CharSequence createTtsSpannable(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        Spannable newSpannable = Spannable.Factory.getInstance().newSpannable(charSequence);
        addTtsSpan(newSpannable, 0, newSpannable.length());
        return newSpannable;
    }

    public static void addTtsSpan(Spannable spannable, int i, int i2) {
        spannable.setSpan(createTtsSpan(spannable.subSequence(i, i2).toString()), i, i2, 33);
    }

    @Deprecated
    public static CharSequence ttsSpanAsPhoneNumber(CharSequence charSequence) {
        return createTtsSpannable(charSequence);
    }

    @Deprecated
    public static void ttsSpanAsPhoneNumber(Spannable spannable, int i, int i2) {
        addTtsSpan(spannable, i, i2);
    }

    public static TtsSpan createTtsSpan(String str) {
        Phonenumber.PhoneNumber phoneNumber = null;
        if (str == null) {
            return null;
        }
        try {
            phoneNumber = PhoneNumberUtil.getInstance().parse(str, (String) null);
        } catch (NumberParseException unused) {
        }
        TtsSpan.TelephoneBuilder telephoneBuilder = new TtsSpan.TelephoneBuilder();
        if (phoneNumber == null) {
            telephoneBuilder.setNumberParts(splitAtNonNumerics(str));
        } else {
            if (phoneNumber.hasCountryCode()) {
                telephoneBuilder.setCountryCode(Integer.toString(phoneNumber.getCountryCode()));
            }
            telephoneBuilder.setNumberParts(Long.toString(phoneNumber.getNationalNumber()));
        }
        return telephoneBuilder.build();
    }

    private static String splitAtNonNumerics(CharSequence charSequence) {
        StringBuilder sb = new StringBuilder(charSequence.length());
        for (int i = 0; i < charSequence.length(); i++) {
            sb.append(is12Key(charSequence.charAt(i)) ? Character.valueOf(charSequence.charAt(i)) : " ");
        }
        return sb.toString().replaceAll(" +", " ").trim();
    }

    private static String getCurrentIdp(boolean z) {
        return z ? NANP_IDP_STRING : SystemProperties.get("gsm.operator.idpstring", PLUS_SIGN_STRING);
    }

    private static int getFormatTypeFromCountryCode(String str) {
        int length = NANP_COUNTRIES.length;
        for (int i = 0; i < length; i++) {
            if (NANP_COUNTRIES[i].compareToIgnoreCase(str) == 0) {
                return 1;
            }
        }
        return "jp".compareToIgnoreCase(str) == 0 ? 2 : 0;
    }

    public static boolean isNanp(String str) {
        if (str != null) {
            if (str.length() != 10 || !isTwoToNine(str.charAt(0)) || !isTwoToNine(str.charAt(3))) {
                return false;
            }
            for (int i = 1; i < 10; i++) {
                if (!isISODigit(str.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
        Rlog.e("isNanp: null dialStr passed in", str);
        return false;
    }

    private static boolean isOneNanp(String str) {
        if (str != null) {
            return str.charAt(0) == '1' && isNanp(str.substring(1));
        }
        Rlog.e("isOneNanp: null dialStr passed in", str);
        return false;
    }

    public static boolean isUriNumber(String str) {
        return str != null && (str.contains("@") || str.contains("%40"));
    }

    public static String getUsernameFromUriNumber(String str) {
        int indexOf = str.indexOf(64);
        if (indexOf < 0) {
            indexOf = str.indexOf("%40");
        }
        if (indexOf < 0) {
            Rlog.w(LOG_TAG, "getUsernameFromUriNumber: no delimiter found in SIP addr '" + str + "'");
            indexOf = str.length();
        }
        return str.substring(0, indexOf);
    }

    public static Uri convertSipUriToTelUri(Uri uri) {
        if (!"sip".equals(uri.getScheme())) {
            return uri;
        }
        String[] split = uri.getSchemeSpecificPart().split("[@;:]");
        return split.length == 0 ? uri : Uri.fromParts(PhoneAccount.SCHEME_TEL, split[0], null);
    }

    private static String processPlusCode(String str, boolean z) {
        if (str == null || str.charAt(0) != '+' || str.length() <= 1) {
            return str;
        }
        String substring = str.substring(1);
        return (z && isOneNanp(substring)) ? substring : str.replaceFirst("[+]", getCurrentIdp(z));
    }

    private static int findDialableIndexFromPostDialStr(String str) {
        for (int i = 0; i < str.length(); i++) {
            if (isReallyDialable(str.charAt(i))) {
                return i;
            }
        }
        return -1;
    }

    private static String appendPwCharBackToOrigDialStr(int i, String str, String str2) {
        if (i == 1) {
            return str + str2.charAt(0);
        }
        return str.concat(str2.substring(0, i));
    }

    private static boolean matchIntlPrefix(String str, int i) {
        char c = 0;
        for (int i2 = 0; i2 < i; i2++) {
            char charAt = str.charAt(i2);
            if (c != 0) {
                if (c != 2) {
                    if (c != 4) {
                        if (isNonSeparator(charAt)) {
                            return false;
                        }
                    } else if (charAt == '1') {
                        c = 5;
                    } else if (isNonSeparator(charAt)) {
                        return false;
                    }
                } else if (charAt == '0') {
                    c = 3;
                } else if (charAt == '1') {
                    c = 4;
                } else if (isNonSeparator(charAt)) {
                    return false;
                }
            } else if (charAt == '+') {
                c = 1;
            } else if (charAt == '0') {
                c = 2;
            } else if (isNonSeparator(charAt)) {
                return false;
            }
        }
        return c == 1 || c == 3 || c == 5;
    }

    private static boolean matchIntlPrefixAndCC(String str, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            char charAt = str.charAt(i3);
            switch (i2) {
                case 0:
                    if (charAt == '+') {
                        i2 = 1;
                        break;
                    } else if (charAt == '0') {
                        i2 = 2;
                        break;
                    } else {
                        if (isNonSeparator(charAt)) {
                            return false;
                        }
                        break;
                    }
                case 1:
                case 3:
                case 5:
                    if (isISODigit(charAt)) {
                        i2 = 6;
                        break;
                    } else {
                        if (isNonSeparator(charAt)) {
                            return false;
                        }
                        break;
                    }
                case 2:
                    if (charAt == '0') {
                        i2 = 3;
                        break;
                    } else if (charAt == '1') {
                        i2 = 4;
                        break;
                    } else {
                        if (isNonSeparator(charAt)) {
                            return false;
                        }
                        break;
                    }
                case 4:
                    if (charAt == '1') {
                        i2 = 5;
                        break;
                    } else {
                        if (isNonSeparator(charAt)) {
                            return false;
                        }
                        break;
                    }
                case 6:
                case 7:
                    if (isISODigit(charAt)) {
                        i2++;
                        break;
                    } else {
                        if (isNonSeparator(charAt)) {
                            return false;
                        }
                        break;
                    }
                default:
                    if (isNonSeparator(charAt)) {
                        return false;
                    }
                    break;
            }
        }
        return i2 == 6 || i2 == 7 || i2 == 8;
    }

    private static boolean matchTrunkPrefix(String str, int i) {
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            char charAt = str.charAt(i2);
            if (charAt == '0' && !z) {
                z = true;
            } else if (isNonSeparator(charAt)) {
                return false;
            }
        }
        return z;
    }

    private static boolean isCountryCallingCode(int i) {
        return i > 0 && i < CCC_LENGTH && COUNTRY_CALLING_CALL[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class CountryCallingCodeAndNewIndex {
        public final int countryCallingCode;
        public final int newIndex;

        public CountryCallingCodeAndNewIndex(int i, int i2) {
            this.countryCallingCode = i;
            this.newIndex = i2;
        }
    }

    private static CountryCallingCodeAndNewIndex tryGetCountryCallingCodeAndNewIndex(String str, boolean z) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            switch (i) {
                case 0:
                    if (charAt == '+') {
                        i = 1;
                        break;
                    } else if (charAt == '0') {
                        i = 2;
                        break;
                    } else if (charAt == '1') {
                        if (!z) {
                            return null;
                        }
                        i = 8;
                        break;
                    } else {
                        if (isDialable(charAt)) {
                            return null;
                        }
                        break;
                    }
                case 1:
                case 3:
                case 5:
                case 6:
                case 7:
                    int tryGetISODigit = tryGetISODigit(charAt);
                    if (tryGetISODigit > 0) {
                        i2 = (i2 * 10) + tryGetISODigit;
                        if (i2 >= 100 || isCountryCallingCode(i2)) {
                            return new CountryCallingCodeAndNewIndex(i2, i3 + 1);
                        }
                        if (i != 1 && i != 3 && i != 5) {
                            i++;
                            break;
                        } else {
                            i = 6;
                            break;
                        }
                    } else {
                        if (isDialable(charAt)) {
                            return null;
                        }
                        break;
                    }
                case 2:
                    if (charAt == '0') {
                        i = 3;
                        break;
                    } else if (charAt == '1') {
                        i = 4;
                        break;
                    } else {
                        if (isDialable(charAt)) {
                            return null;
                        }
                        break;
                    }
                case 4:
                    if (charAt == '1') {
                        i = 5;
                        break;
                    } else {
                        if (isDialable(charAt)) {
                            return null;
                        }
                        break;
                    }
                case 8:
                    if (charAt == '6') {
                        i = 9;
                        break;
                    } else {
                        if (isDialable(charAt)) {
                            return null;
                        }
                        break;
                    }
                case 9:
                    if (charAt == '6') {
                        return new CountryCallingCodeAndNewIndex(66, i3 + 1);
                    }
                    return null;
                default:
                    return null;
            }
        }
        return null;
    }

    private static int tryGetTrunkPrefixOmittedIndex(String str, int i) {
        int length = str.length();
        while (i < length) {
            char charAt = str.charAt(i);
            if (tryGetISODigit(charAt) >= 0) {
                return i + 1;
            }
            if (isDialable(charAt)) {
                return -1;
            }
            i++;
        }
        return -1;
    }

    private static boolean checkPrefixIsIgnorable(String str, int i, int i2) {
        boolean z = false;
        while (i2 >= i) {
            if (tryGetISODigit(str.charAt(i2)) >= 0) {
                if (z) {
                    return false;
                }
                z = true;
            } else if (isDialable(str.charAt(i2))) {
                return false;
            }
            i2--;
        }
        return true;
    }

    private static int getDefaultVoiceSubId() {
        return SubscriptionManager.getDefaultVoiceSubscriptionId();
    }

    public static String convertToEmergencyNumber(Context context, String str) {
        String str2;
        if (context == null || TextUtils.isEmpty(str)) {
            return str;
        }
        String normalizeNumber = normalizeNumber(str);
        if (isEmergencyNumber(normalizeNumber)) {
            return str;
        }
        if (sConvertToEmergencyMap == null) {
            sConvertToEmergencyMap = context.getResources().getStringArray(R.array.config_callBarringMMI);
        }
        if (sConvertToEmergencyMap == null || sConvertToEmergencyMap.length == 0) {
            return str;
        }
        for (String str3 : sConvertToEmergencyMap) {
            String[] strArr = null;
            String[] split = !TextUtils.isEmpty(str3) ? str3.split(SettingsStringUtil.DELIMITER) : null;
            if (split == null || split.length != 2) {
                str2 = null;
            } else {
                str2 = split[1];
                if (!TextUtils.isEmpty(split[0])) {
                    strArr = split[0].split(",");
                }
            }
            if (!TextUtils.isEmpty(str2) && strArr != null && strArr.length != 0) {
                for (String str4 : strArr) {
                    if (!TextUtils.isEmpty(str4) && str4.equals(normalizeNumber)) {
                        return str2;
                    }
                }
            }
        }
        return str;
    }
}
