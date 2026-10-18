package android.app.admin;

import android.app.admin.SystemUpdatePolicy;
import android.util.Log;
import android.util.Pair;
import java.time.LocalDate;
import java.time.MonthDay;
import java.time.chrono.ChronoLocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class FreezePeriod {
    static final int DAYS_IN_YEAR = 365;
    private static final int DUMMY_YEAR = 2001;
    private static final String TAG = "FreezePeriod";
    private final MonthDay mEnd;
    private final int mEndDay;
    private final MonthDay mStart;
    private final int mStartDay;

    public FreezePeriod(MonthDay monthDay, MonthDay monthDay2) {
        this.mStart = monthDay;
        this.mStartDay = this.mStart.atYear(2001).getDayOfYear();
        this.mEnd = monthDay2;
        this.mEndDay = this.mEnd.atYear(2001).getDayOfYear();
    }

    public MonthDay getStart() {
        return this.mStart;
    }

    public MonthDay getEnd() {
        return this.mEnd;
    }

    private FreezePeriod(int i, int i2) {
        this.mStartDay = i;
        this.mStart = dayOfYearToMonthDay(i);
        this.mEndDay = i2;
        this.mEnd = dayOfYearToMonthDay(i2);
    }

    int getLength() {
        return (getEffectiveEndDay() - this.mStartDay) + 1;
    }

    boolean isWrapped() {
        return this.mEndDay < this.mStartDay;
    }

    int getEffectiveEndDay() {
        if (!isWrapped()) {
            return this.mEndDay;
        }
        return this.mEndDay + DAYS_IN_YEAR;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean contains(LocalDate localDate) {
        int dayOfYearDisregardLeapYear = dayOfYearDisregardLeapYear(localDate);
        return !isWrapped() ? this.mStartDay <= dayOfYearDisregardLeapYear && dayOfYearDisregardLeapYear <= this.mEndDay : this.mStartDay <= dayOfYearDisregardLeapYear || dayOfYearDisregardLeapYear <= this.mEndDay;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean after(LocalDate localDate) {
        return this.mStartDay > dayOfYearDisregardLeapYear(localDate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3 */
    public Pair<LocalDate, LocalDate> toCurrentOrFutureRealDates(LocalDate localDate) {
        boolean isWrapped;
        int dayOfYearDisregardLeapYear = dayOfYearDisregardLeapYear(localDate);
        int i = 1;
        ?? r3 = 0;
        if (contains(localDate)) {
            if (this.mStartDay <= dayOfYearDisregardLeapYear) {
                isWrapped = isWrapped();
                r3 = isWrapped;
                i = 0;
            } else {
                i = -1;
            }
        } else if (this.mStartDay > dayOfYearDisregardLeapYear) {
            isWrapped = isWrapped();
            r3 = isWrapped;
            i = 0;
        } else {
            r3 = 1;
        }
        return new Pair<>(LocalDate.ofYearDay(2001, this.mStartDay).withYear(localDate.getYear() + i), LocalDate.ofYearDay(2001, this.mEndDay).withYear(localDate.getYear() + r3));
    }

    public String toString() {
        DateTimeFormatter ofPattern = DateTimeFormatter.ofPattern("MMM dd");
        return LocalDate.ofYearDay(2001, this.mStartDay).format(ofPattern) + " - " + LocalDate.ofYearDay(2001, this.mEndDay).format(ofPattern);
    }

    private static MonthDay dayOfYearToMonthDay(int i) {
        LocalDate ofYearDay = LocalDate.ofYearDay(2001, i);
        return MonthDay.of(ofYearDay.getMonth(), ofYearDay.getDayOfMonth());
    }

    private static int dayOfYearDisregardLeapYear(LocalDate localDate) {
        return localDate.withYear(2001).getDayOfYear();
    }

    public static int distanceWithoutLeapYear(LocalDate localDate, LocalDate localDate2) {
        return (dayOfYearDisregardLeapYear(localDate) - dayOfYearDisregardLeapYear(localDate2)) + ((localDate.getYear() - localDate2.getYear()) * DAYS_IN_YEAR);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<FreezePeriod> canonicalizePeriods(List<FreezePeriod> list) {
        boolean[] zArr = new boolean[DAYS_IN_YEAR];
        for (FreezePeriod freezePeriod : list) {
            for (int i = freezePeriod.mStartDay; i <= freezePeriod.getEffectiveEndDay(); i++) {
                zArr[(i - 1) % DAYS_IN_YEAR] = true;
            }
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < DAYS_IN_YEAR) {
            if (zArr[i2]) {
                int i3 = i2 + 1;
                while (i2 < DAYS_IN_YEAR && zArr[i2]) {
                    i2++;
                }
                arrayList.add(new FreezePeriod(i3, i2));
            } else {
                i2++;
            }
        }
        int size = arrayList.size() - 1;
        if (size > 0 && ((FreezePeriod) arrayList.get(size)).mEndDay == DAYS_IN_YEAR && ((FreezePeriod) arrayList.get(0)).mStartDay == 1) {
            arrayList.set(size, new FreezePeriod(((FreezePeriod) arrayList.get(size)).mStartDay, ((FreezePeriod) arrayList.get(0)).mEndDay));
            arrayList.remove(0);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void validatePeriods(List<FreezePeriod> list) {
        FreezePeriod freezePeriod;
        List<FreezePeriod> canonicalizePeriods = canonicalizePeriods(list);
        if (canonicalizePeriods.size() != list.size()) {
            throw SystemUpdatePolicy.ValidationFailedException.duplicateOrOverlapPeriods();
        }
        for (int i = 0; i < canonicalizePeriods.size(); i++) {
            FreezePeriod freezePeriod2 = canonicalizePeriods.get(i);
            if (freezePeriod2.getLength() > 90) {
                throw SystemUpdatePolicy.ValidationFailedException.freezePeriodTooLong("Freeze period " + freezePeriod2 + " is too long: " + freezePeriod2.getLength() + " days");
            }
            if (i > 0) {
                freezePeriod = canonicalizePeriods.get(i - 1);
            } else {
                freezePeriod = canonicalizePeriods.get(canonicalizePeriods.size() - 1);
            }
            if (freezePeriod != freezePeriod2) {
                int i2 = (i == 0 && !freezePeriod.isWrapped()) ? (freezePeriod2.mStartDay + (365 - freezePeriod.mEndDay)) - 1 : (freezePeriod2.mStartDay - freezePeriod.mEndDay) - 1;
                if (i2 < 60) {
                    throw SystemUpdatePolicy.ValidationFailedException.freezePeriodTooClose("Freeze periods " + freezePeriod + " and " + freezePeriod2 + " are too close together: " + i2 + " days apart");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void validateAgainstPreviousFreezePeriod(List<FreezePeriod> list, LocalDate localDate, LocalDate localDate2, LocalDate localDate3) {
        if (list.size() == 0 || localDate == null || localDate2 == null) {
            return;
        }
        if (localDate.isAfter(localDate3) || localDate2.isAfter(localDate3)) {
            Log.w(TAG, "Previous period (" + localDate + "," + localDate2 + ") is after current date " + localDate3);
        }
        List<FreezePeriod> canonicalizePeriods = canonicalizePeriods(list);
        FreezePeriod freezePeriod = canonicalizePeriods.get(0);
        for (FreezePeriod freezePeriod2 : canonicalizePeriods) {
            if (freezePeriod2.contains(localDate3) || freezePeriod2.mStartDay > dayOfYearDisregardLeapYear(localDate3)) {
                freezePeriod = freezePeriod2;
                break;
            }
        }
        Pair<LocalDate, LocalDate> currentOrFutureRealDates = freezePeriod.toCurrentOrFutureRealDates(localDate3);
        if (localDate3.isAfter((ChronoLocalDate) currentOrFutureRealDates.first)) {
            currentOrFutureRealDates = new Pair<>(localDate3, (LocalDate) currentOrFutureRealDates.second);
        }
        if (((LocalDate) currentOrFutureRealDates.first).isAfter((ChronoLocalDate) currentOrFutureRealDates.second)) {
            throw new IllegalStateException("Current freeze dates inverted: " + currentOrFutureRealDates.first + "-" + currentOrFutureRealDates.second);
        }
        String str = "Prev: " + localDate + "," + localDate2 + "; cur: " + currentOrFutureRealDates.first + "," + currentOrFutureRealDates.second;
        long distanceWithoutLeapYear = distanceWithoutLeapYear((LocalDate) currentOrFutureRealDates.first, localDate2) - 1;
        if (distanceWithoutLeapYear > 0) {
            if (distanceWithoutLeapYear >= 60) {
                return;
            }
            throw SystemUpdatePolicy.ValidationFailedException.combinedPeriodTooClose("Previous freeze period too close to new period: " + distanceWithoutLeapYear + ", " + str);
        }
        long distanceWithoutLeapYear2 = distanceWithoutLeapYear((LocalDate) currentOrFutureRealDates.second, localDate) + 1;
        if (distanceWithoutLeapYear2 <= 90) {
            return;
        }
        throw SystemUpdatePolicy.ValidationFailedException.combinedPeriodTooLong("Combined freeze period exceeds maximum days: " + distanceWithoutLeapYear2 + ", " + str);
    }
}
