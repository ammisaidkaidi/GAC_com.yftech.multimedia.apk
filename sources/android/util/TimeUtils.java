package android.util;

import android.os.SystemClock;
import android.text.format.DateFormat;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;
import libcore.util.TimeZoneFinder;
import libcore.util.ZoneInfoDB;

/* loaded from: /home/user/work/dex/classes2.dex */
public class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    public static final long NANOS_PER_MS = 1000000;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static SimpleDateFormat sLoggingFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[29];
    private static char[] sTmpFormatStr = new char[29];

    public static TimeZone getTimeZone(int i, boolean z, long j, String str) {
        android.icu.util.TimeZone icuTimeZone = getIcuTimeZone(i, z, j, str);
        if (icuTimeZone != null) {
            return TimeZone.getTimeZone(icuTimeZone.getID());
        }
        return null;
    }

    private static android.icu.util.TimeZone getIcuTimeZone(int i, boolean z, long j, String str) {
        if (str == null) {
            return null;
        }
        return TimeZoneFinder.getInstance().lookupTimeZoneByCountryAndOffset(str, i, z, j, android.icu.util.TimeZone.getDefault());
    }

    public static String getTimeZoneDatabaseVersion() {
        return ZoneInfoDB.getInstance().getVersion();
    }

    private static int accumField(int i, int i2, boolean z, int i3) {
        int i4 = 0;
        if (i > 999) {
            while (i != 0) {
                i4++;
                i /= 10;
            }
            return i4 + i2;
        }
        if (i > 99 || (z && i3 >= 3)) {
            return i2 + 3;
        }
        if (i > 9 || (z && i3 >= 2)) {
            return i2 + 2;
        }
        if (z || i > 0) {
            return i2 + 1;
        }
        return 0;
    }

    private static int printFieldLocked(char[] cArr, int i, char c, int i2, boolean z, int i3) {
        int i4;
        if (!z && i <= 0) {
            return i2;
        }
        if (i > 999) {
            int i5 = 0;
            while (i != 0 && i5 < sTmpFormatStr.length) {
                sTmpFormatStr[i5] = (char) ((i % 10) + 48);
                i5++;
                i /= 10;
            }
            for (int i6 = i5 - 1; i6 >= 0; i6--) {
                cArr[i2] = sTmpFormatStr[i6];
                i2++;
            }
        } else {
            if ((!z || i3 < 3) && i <= 99) {
                i4 = i2;
            } else {
                int i7 = i / 100;
                cArr[i2] = (char) (i7 + 48);
                i4 = i2 + 1;
                i -= i7 * 100;
            }
            if ((z && i3 >= 2) || i > 9 || i2 != i4) {
                int i8 = i / 10;
                cArr[i4] = (char) (i8 + 48);
                i4++;
                i -= i8 * 10;
            }
            cArr[i4] = (char) (i + 48);
            i2 = i4 + 1;
        }
        cArr[i2] = c;
        return i2 + 1;
    }

    private static int formatDurationLocked(long j, int i) {
        char c;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        long j2 = j;
        if (sFormatStr.length < i) {
            sFormatStr = new char[i];
        }
        char[] cArr = sFormatStr;
        int i7 = 0;
        if (j2 == 0) {
            int i8 = i - 1;
            while (i7 < i8) {
                cArr[i7] = ' ';
                i7++;
            }
            cArr[i7] = '0';
            return i7 + 1;
        }
        if (j2 > 0) {
            c = '+';
        } else {
            c = '-';
            j2 = -j2;
        }
        int i9 = (int) (j2 % 1000);
        int floor = (int) Math.floor(j2 / 1000);
        if (floor >= SECONDS_PER_DAY) {
            i2 = floor / SECONDS_PER_DAY;
            floor -= SECONDS_PER_DAY * i2;
        } else {
            i2 = 0;
        }
        if (floor >= 3600) {
            i3 = floor / 3600;
            floor -= i3 * 3600;
        } else {
            i3 = 0;
        }
        if (floor >= 60) {
            int i10 = floor / 60;
            i4 = floor - (i10 * 60);
            i5 = i10;
        } else {
            i4 = floor;
            i5 = 0;
        }
        if (i != 0) {
            int accumField = accumField(i2, 1, false, 0);
            int accumField2 = accumField + accumField(i3, 1, accumField > 0, 2);
            int accumField3 = accumField2 + accumField(i5, 1, accumField2 > 0, 2);
            int accumField4 = accumField3 + accumField(i4, 1, accumField3 > 0, 2);
            i6 = 0;
            for (int accumField5 = accumField4 + accumField(i9, 2, true, accumField4 > 0 ? 3 : 0) + 1; accumField5 < i; accumField5++) {
                cArr[i6] = ' ';
                i6++;
            }
        } else {
            i6 = 0;
        }
        cArr[i6] = c;
        int i11 = i6 + 1;
        boolean z = i != 0;
        int printFieldLocked = printFieldLocked(cArr, i2, DateFormat.DATE, i11, false, 0);
        int printFieldLocked2 = printFieldLocked(cArr, i3, DateFormat.HOUR, printFieldLocked, printFieldLocked != i11, z ? 2 : 0);
        int printFieldLocked3 = printFieldLocked(cArr, i5, DateFormat.MINUTE, printFieldLocked2, printFieldLocked2 != i11, z ? 2 : 0);
        int printFieldLocked4 = printFieldLocked(cArr, i4, DateFormat.SECONDS, printFieldLocked3, printFieldLocked3 != i11, z ? 2 : 0);
        int printFieldLocked5 = printFieldLocked(cArr, i9, DateFormat.MINUTE, printFieldLocked4, true, (!z || printFieldLocked4 == i11) ? 0 : 3);
        cArr[printFieldLocked5] = DateFormat.SECONDS;
        return printFieldLocked5 + 1;
    }

    public static void formatDuration(long j, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j, 0));
        }
    }

    public static void formatDuration(long j, StringBuilder sb, int i) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j, i));
        }
    }

    public static void formatDuration(long j, PrintWriter printWriter, int i) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j, i)));
        }
    }

    public static String formatDuration(long j) {
        String str;
        synchronized (sFormatSync) {
            str = new String(sFormatStr, 0, formatDurationLocked(j, 0));
        }
        return str;
    }

    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }

    public static String formatUptime(long j) {
        long uptimeMillis = j - SystemClock.uptimeMillis();
        if (uptimeMillis > 0) {
            return j + " (in " + uptimeMillis + " ms)";
        }
        if (uptimeMillis < 0) {
            return j + " (" + (-uptimeMillis) + " ms ago)";
        }
        return j + " (now)";
    }

    public static String logTimeOfDay(long j) {
        Calendar calendar = Calendar.getInstance();
        if (j >= 0) {
            calendar.setTimeInMillis(j);
            return String.format("%tm-%td %tH:%tM:%tS.%tL", calendar, calendar, calendar, calendar, calendar, calendar);
        }
        return Long.toString(j);
    }

    public static String formatForLogging(long j) {
        return j <= 0 ? "unknown" : sLoggingFormat.format(new Date(j));
    }
}
