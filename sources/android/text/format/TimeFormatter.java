package android.text.format;

import android.R;
import android.content.res.Resources;
import java.nio.CharBuffer;
import java.util.Locale;
import libcore.icu.LocaleData;
import libcore.util.ZoneInfo;

/* loaded from: /home/user/work/dex/classes2.dex */
class TimeFormatter {
    private static final int DAYSPERLYEAR = 366;
    private static final int DAYSPERNYEAR = 365;
    private static final int DAYSPERWEEK = 7;
    private static final int FORCE_LOWER_CASE = -1;
    private static final int HOURSPERDAY = 24;
    private static final int MINSPERHOUR = 60;
    private static final int MONSPERYEAR = 12;
    private static final int SECSPERMIN = 60;
    private static String sDateOnlyFormat;
    private static String sDateTimeFormat;
    private static Locale sLocale;
    private static LocaleData sLocaleData;
    private static String sTimeOnlyFormat;
    private final String dateOnlyFormat;
    private final String dateTimeFormat;
    private final LocaleData localeData;
    private java.util.Formatter numberFormatter;
    private StringBuilder outputBuilder;
    private final String timeOnlyFormat;

    private static boolean brokenIsLower(char c) {
        return c >= 'a' && c <= 'z';
    }

    private static boolean brokenIsUpper(char c) {
        return c >= 'A' && c <= 'Z';
    }

    private static char brokenToLower(char c) {
        return (c < 'A' || c > 'Z') ? c : (char) ((c - DateFormat.CAPITAL_AM_PM) + 97);
    }

    private static char brokenToUpper(char c) {
        return (c < 'a' || c > 'z') ? c : (char) ((c - DateFormat.AM_PM) + 65);
    }

    private static String getFormat(int i, String str, String str2, String str3, String str4) {
        return i != 45 ? i != 48 ? i != 95 ? str : str2 : str4 : str3;
    }

    public TimeFormatter() {
        synchronized (TimeFormatter.class) {
            Locale locale = Locale.getDefault();
            if (sLocale == null || !locale.equals(sLocale)) {
                sLocale = locale;
                sLocaleData = LocaleData.get(locale);
                Resources system = Resources.getSystem();
                sTimeOnlyFormat = system.getString(R.string.permlab_readHistoryBookmarks);
                sDateOnlyFormat = system.getString(R.string.immersive_cling_positive);
                sDateTimeFormat = system.getString(R.string.badPin);
            }
            this.dateTimeFormat = sDateTimeFormat;
            this.timeOnlyFormat = sTimeOnlyFormat;
            this.dateOnlyFormat = sDateOnlyFormat;
            this.localeData = sLocaleData;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String format(String str, ZoneInfo.WallTime wallTime, ZoneInfo zoneInfo) {
        try {
            StringBuilder sb = new StringBuilder();
            this.outputBuilder = sb;
            this.numberFormatter = new java.util.Formatter(sb, Locale.US);
            formatInternal(str, wallTime, zoneInfo);
            String sb2 = sb.toString();
            if (this.localeData.zeroDigit != '0') {
                sb2 = localizeDigits(sb2);
            }
            return sb2;
        } finally {
            this.outputBuilder = null;
            this.numberFormatter = null;
        }
    }

    private String localizeDigits(String str) {
        int length = str.length();
        int i = this.localeData.zeroDigit - '0';
        StringBuilder sb = new StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt >= '0' && charAt <= '9') {
                charAt = (char) (charAt + i);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    private void formatInternal(String str, ZoneInfo.WallTime wallTime, ZoneInfo zoneInfo) {
        CharBuffer wrap = CharBuffer.wrap(str);
        while (wrap.remaining() > 0) {
            if (wrap.get(wrap.position()) == '%' ? handleToken(wrap, wallTime, zoneInfo) : true) {
                this.outputBuilder.append(wrap.get(wrap.position()));
            }
            wrap.position(wrap.position() + 1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x032f, code lost:
    
        r13 = android.text.format.TimeFormatter.DAYSPERLYEAR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0332, code lost:
    
        r8 = (((r14 + 11) - r4) % 7) - 3;
        r9 = r8 - (r13 % 7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x033d, code lost:
    
        if (r9 >= (-3)) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x033f, code lost:
    
        r9 = r9 + 7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x0342, code lost:
    
        if (r14 < (r9 + r13)) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0348, code lost:
    
        if (r14 < r8) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0378, code lost:
    
        r12 = r12 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x037e, code lost:
    
        if (isLeap(r12) == false) goto L245;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0380, code lost:
    
        r6 = android.text.format.TimeFormatter.DAYSPERLYEAR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0381, code lost:
    
        r14 = r14 + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x034a, code lost:
    
        r13 = ((r14 - r8) / 7) + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0350, code lost:
    
        if (r2 != 'V') goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0352, code lost:
    
        r11.numberFormatter.format(getFormat(r1, "%02d", "%2d", "%d", "%02d"), java.lang.Integer.valueOf(r13));
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0377, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x036e, code lost:
    
        if (r2 != 'g') goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0370, code lost:
    
        outputYear(r12, false, true, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0374, code lost:
    
        outputYear(r12, true, true, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0344, code lost:
    
        r12 = r12 + 1;
        r13 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0331, code lost:
    
        r13 = android.text.format.TimeFormatter.DAYSPERNYEAR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01de, code lost:
    
        if (r13.getMonth() < 0) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01e4, code lost:
    
        if (r13.getMonth() < 12) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01e7, code lost:
    
        r12 = r11.localeData.shortMonthNames[r13.getMonth()];
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01f4, code lost:
    
        modifyAndAppend(r12, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01f7, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01f2, code lost:
    
        r12 = "?";
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0319, code lost:
    
        r12 = r13.getYear();
        r14 = r13.getYearDay();
        r4 = r13.getWeekDay();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0325, code lost:
    
        r13 = isLeap(r12);
        r6 = android.text.format.TimeFormatter.DAYSPERNYEAR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x032d, code lost:
    
        if (r13 == false) goto L137;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0027. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x002a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x002d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0021. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0024. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean handleToken(CharBuffer charBuffer, ZoneInfo.WallTime wallTime, ZoneInfo zoneInfo) {
        char c = 0;
        while (true) {
            if (charBuffer.remaining() <= 1) {
                return true;
            }
            charBuffer.position(charBuffer.position() + 1);
            char c2 = charBuffer.get(charBuffer.position());
            char c3 = '-';
            switch (c2) {
                case 'A':
                    modifyAndAppend((wallTime.getWeekDay() < 0 || wallTime.getWeekDay() >= 7) ? "?" : this.localeData.longWeekdayNames[wallTime.getWeekDay() + 1], c);
                    return false;
                case 'B':
                    if (c == '-') {
                        modifyAndAppend((wallTime.getMonth() < 0 || wallTime.getMonth() >= 12) ? "?" : this.localeData.longStandAloneMonthNames[wallTime.getMonth()], c);
                    } else {
                        modifyAndAppend((wallTime.getMonth() < 0 || wallTime.getMonth() >= 12) ? "?" : this.localeData.longMonthNames[wallTime.getMonth()], c);
                    }
                    return false;
                case 'C':
                    outputYear(wallTime.getYear(), true, false, c);
                    return false;
                case 'D':
                    formatInternal("%m/%d/%y", wallTime, zoneInfo);
                    return false;
                case 'E':
                case 'F':
                    formatInternal("%Y-%m-%d", wallTime, zoneInfo);
                    return false;
                case 'G':
                    break;
                case 'H':
                    this.numberFormatter.format(getFormat(c, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(wallTime.getHour()));
                    return false;
                case 'I':
                    this.numberFormatter.format(getFormat(c, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(wallTime.getHour() % 12 != 0 ? wallTime.getHour() % 12 : 12));
                    return false;
                default:
                    switch (c2) {
                        case 'O':
                        case 'P':
                            modifyAndAppend(wallTime.getHour() >= 12 ? this.localeData.amPm[1] : this.localeData.amPm[0], -1);
                            return false;
                        default:
                            switch (c2) {
                                case 'R':
                                    formatInternal(DateUtils.HOUR_MINUTE_24, wallTime, zoneInfo);
                                    return false;
                                case 'S':
                                    this.numberFormatter.format(getFormat(c, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(wallTime.getSecond()));
                                    return false;
                                case 'T':
                                    formatInternal("%H:%M:%S", wallTime, zoneInfo);
                                    return false;
                                case 'U':
                                    this.numberFormatter.format(getFormat(c, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(((wallTime.getYearDay() + 7) - wallTime.getWeekDay()) / 7));
                                    return false;
                                case 'V':
                                    break;
                                case 'W':
                                    this.numberFormatter.format(getFormat(c, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(((wallTime.getYearDay() + 7) - (wallTime.getWeekDay() != 0 ? wallTime.getWeekDay() - 1 : 6)) / 7));
                                    return false;
                                case 'X':
                                    formatInternal(this.timeOnlyFormat, wallTime, zoneInfo);
                                    return false;
                                case 'Y':
                                    outputYear(wallTime.getYear(), true, true, c);
                                    return false;
                                case 'Z':
                                    if (wallTime.getIsDst() < 0) {
                                        return false;
                                    }
                                    modifyAndAppend(zoneInfo.getDisplayName(wallTime.getIsDst() != 0, 0), c);
                                    return false;
                                default:
                                    switch (c2) {
                                        default:
                                            switch (c2) {
                                                case 'a':
                                                    modifyAndAppend((wallTime.getWeekDay() < 0 || wallTime.getWeekDay() >= 7) ? "?" : this.localeData.shortWeekdayNames[wallTime.getWeekDay() + 1], c);
                                                    return false;
                                                case 'b':
                                                    break;
                                                case 'c':
                                                    formatInternal(this.dateTimeFormat, wallTime, zoneInfo);
                                                    return false;
                                                case 'd':
                                                    this.numberFormatter.format(getFormat(c, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(wallTime.getMonthDay()));
                                                    return false;
                                                case 'e':
                                                    this.numberFormatter.format(getFormat(c, "%2d", "%2d", "%d", "%02d"), Integer.valueOf(wallTime.getMonthDay()));
                                                    return false;
                                                default:
                                                    switch (c2) {
                                                        case 'g':
                                                            break;
                                                        case 'h':
                                                            break;
                                                        default:
                                                            switch (c2) {
                                                                case 'j':
                                                                    this.numberFormatter.format(getFormat(c, "%03d", "%3d", "%d", "%03d"), Integer.valueOf(wallTime.getYearDay() + 1));
                                                                    return false;
                                                                case 'k':
                                                                    this.numberFormatter.format(getFormat(c, "%2d", "%2d", "%d", "%02d"), Integer.valueOf(wallTime.getHour()));
                                                                    return false;
                                                                case 'l':
                                                                    this.numberFormatter.format(getFormat(c, "%2d", "%2d", "%d", "%02d"), Integer.valueOf(wallTime.getHour() % 12 != 0 ? wallTime.getHour() % 12 : 12));
                                                                    return false;
                                                                case 'm':
                                                                    this.numberFormatter.format(getFormat(c, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(wallTime.getMonth() + 1));
                                                                    return false;
                                                                case 'n':
                                                                    this.outputBuilder.append('\n');
                                                                    return false;
                                                                default:
                                                                    switch (c2) {
                                                                        case 'r':
                                                                            formatInternal("%I:%M:%S %p", wallTime, zoneInfo);
                                                                            return false;
                                                                        case 's':
                                                                            this.outputBuilder.append(Integer.toString(wallTime.mktime(zoneInfo)));
                                                                            return false;
                                                                        case 't':
                                                                            this.outputBuilder.append('\t');
                                                                            return false;
                                                                        case 'u':
                                                                            this.numberFormatter.format("%d", Integer.valueOf(wallTime.getWeekDay() != 0 ? wallTime.getWeekDay() : 7));
                                                                            return false;
                                                                        case 'v':
                                                                            formatInternal("%e-%b-%Y", wallTime, zoneInfo);
                                                                            return false;
                                                                        case 'w':
                                                                            this.numberFormatter.format("%d", Integer.valueOf(wallTime.getWeekDay()));
                                                                            return false;
                                                                        case 'x':
                                                                            formatInternal(this.dateOnlyFormat, wallTime, zoneInfo);
                                                                            return false;
                                                                        case 'y':
                                                                            outputYear(wallTime.getYear(), false, true, c);
                                                                            return false;
                                                                        case 'z':
                                                                            if (wallTime.getIsDst() < 0) {
                                                                                return false;
                                                                            }
                                                                            int gmtOffset = wallTime.getGmtOffset();
                                                                            if (gmtOffset < 0) {
                                                                                gmtOffset = -gmtOffset;
                                                                            } else {
                                                                                c3 = '+';
                                                                            }
                                                                            this.outputBuilder.append(c3);
                                                                            int i = gmtOffset / 60;
                                                                            this.numberFormatter.format(getFormat(c, "%04d", "%4d", "%d", "%04d"), Integer.valueOf(((i / 60) * 100) + (i % 60)));
                                                                            return false;
                                                                        default:
                                                                            switch (c2) {
                                                                                case '#':
                                                                                case '-':
                                                                                case '0':
                                                                                    break;
                                                                                case '+':
                                                                                    formatInternal("%a %b %e %H:%M:%S %Z %Y", wallTime, zoneInfo);
                                                                                    return false;
                                                                                case 'M':
                                                                                    this.numberFormatter.format(getFormat(c, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(wallTime.getMinute()));
                                                                                    return false;
                                                                                case 'p':
                                                                                    modifyAndAppend(wallTime.getHour() >= 12 ? this.localeData.amPm[1] : this.localeData.amPm[0], c);
                                                                                    return false;
                                                                                default:
                                                                                    return true;
                                                                            }
                                                                    }
                                                            }
                                                    }
                                            }
                                            break;
                                        case '^':
                                        case '_':
                                            c = c2;
                                    }
                                    break;
                            }
                    }
                    break;
            }
        }
    }

    private void modifyAndAppend(CharSequence charSequence, int i) {
        int i2 = 0;
        if (i == -1) {
            while (i2 < charSequence.length()) {
                this.outputBuilder.append(brokenToLower(charSequence.charAt(i2)));
                i2++;
            }
            return;
        }
        if (i != 35) {
            if (i == 94) {
                while (i2 < charSequence.length()) {
                    this.outputBuilder.append(brokenToUpper(charSequence.charAt(i2)));
                    i2++;
                }
                return;
            }
            this.outputBuilder.append(charSequence);
            return;
        }
        while (i2 < charSequence.length()) {
            char charAt = charSequence.charAt(i2);
            if (brokenIsUpper(charAt)) {
                charAt = brokenToLower(charAt);
            } else if (brokenIsLower(charAt)) {
                charAt = brokenToUpper(charAt);
            }
            this.outputBuilder.append(charAt);
            i2++;
        }
    }

    private void outputYear(int i, boolean z, boolean z2, int i2) {
        int i3 = i % 100;
        int i4 = (i / 100) + (i3 / 100);
        int i5 = i3 % 100;
        if (i5 < 0 && i4 > 0) {
            i5 += 100;
            i4--;
        } else if (i4 < 0 && i5 > 0) {
            i5 -= 100;
            i4++;
        }
        if (z) {
            if (i4 == 0 && i5 < 0) {
                this.outputBuilder.append("-0");
            } else {
                this.numberFormatter.format(getFormat(i2, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(i4));
            }
        }
        if (z2) {
            if (i5 < 0) {
                i5 = -i5;
            }
            this.numberFormatter.format(getFormat(i2, "%02d", "%2d", "%d", "%02d"), Integer.valueOf(i5));
        }
    }

    private static boolean isLeap(int i) {
        return i % 4 == 0 && (i % 100 != 0 || i % 400 == 0);
    }
}
