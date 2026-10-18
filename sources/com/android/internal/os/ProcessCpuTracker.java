package com.android.internal.os;

import android.os.FileUtils;
import android.os.Process;
import android.os.StrictMode;
import android.os.SystemClock;
import android.system.Os;
import android.system.OsConstants;
import android.util.Slog;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.os.BatteryStatsImpl;
import com.android.internal.util.FastPrintWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ProcessCpuTracker {
    private static final boolean DEBUG = false;
    static final int PROCESS_FULL_STAT_MAJOR_FAULTS = 2;
    static final int PROCESS_FULL_STAT_MINOR_FAULTS = 1;
    static final int PROCESS_FULL_STAT_STIME = 4;
    static final int PROCESS_FULL_STAT_UTIME = 3;
    static final int PROCESS_FULL_STAT_VSIZE = 5;
    static final int PROCESS_STAT_MAJOR_FAULTS = 1;
    static final int PROCESS_STAT_MINOR_FAULTS = 0;
    static final int PROCESS_STAT_STIME = 3;
    static final int PROCESS_STAT_UTIME = 2;
    private static final String TAG = "ProcessCpuTracker";
    private static final boolean localLOGV = false;
    private long mBaseIdleTime;
    private long mBaseIoWaitTime;
    private long mBaseIrqTime;
    private long mBaseSoftIrqTime;
    private long mBaseSystemTime;
    private long mBaseUserTime;
    private int[] mCurPids;
    private int[] mCurThreadPids;
    private long mCurrentSampleRealTime;
    private long mCurrentSampleTime;
    private long mCurrentSampleWallTime;
    private final boolean mIncludeThreads;
    private long mLastSampleRealTime;
    private long mLastSampleTime;
    private long mLastSampleWallTime;
    private int mRelIdleTime;
    private int mRelIoWaitTime;
    private int mRelIrqTime;
    private int mRelSoftIrqTime;
    private boolean mRelStatsAreGood;
    private int mRelSystemTime;
    private int mRelUserTime;
    private boolean mWorkingProcsSorted;
    private static final int[] PROCESS_STATS_FORMAT = {32, MetricsProto.MetricsEvent.DIALOG_WIFI_SKIP, 32, 32, 32, 32, 32, 32, 32, 8224, 32, 8224, 32, 8224, 8224};
    private static final int[] PROCESS_FULL_STATS_FORMAT = {32, 4640, 32, 32, 32, 32, 32, 32, 32, 8224, 32, 8224, 32, 8224, 8224, 32, 32, 32, 32, 32, 32, 32, 8224};
    private static final int[] SYSTEM_CPU_FORMAT = {288, 8224, 8224, 8224, 8224, 8224, 8224, 8224};
    private static final int[] LOAD_AVERAGE_FORMAT = {16416, 16416, 16416};
    private static final Comparator<Stats> sLoadComparator = new Comparator<Stats>() { // from class: com.android.internal.os.ProcessCpuTracker.1
        @Override // java.util.Comparator
        public final int compare(Stats stats, Stats stats2) {
            int i = stats.rel_utime + stats.rel_stime;
            int i2 = stats2.rel_utime + stats2.rel_stime;
            if (i != i2) {
                return i > i2 ? -1 : 1;
            }
            if (stats.added != stats2.added) {
                return stats.added ? -1 : 1;
            }
            if (stats.removed != stats2.removed) {
                return stats.added ? -1 : 1;
            }
            return 0;
        }
    };
    private final long[] mProcessStatsData = new long[4];
    private final long[] mSinglePidStatsData = new long[4];
    private final String[] mProcessFullStatsStringData = new String[6];
    private final long[] mProcessFullStatsData = new long[6];
    private final long[] mSystemCpuData = new long[7];
    private final float[] mLoadAverageData = new float[3];
    private float mLoad1 = 0.0f;
    private float mLoad5 = 0.0f;
    private float mLoad15 = 0.0f;
    private final ArrayList<Stats> mProcStats = new ArrayList<>();
    private final ArrayList<Stats> mWorkingProcs = new ArrayList<>();
    private boolean mFirst = true;
    private byte[] mBuffer = new byte[4096];
    private final long mJiffyMillis = 1000 / Os.sysconf(OsConstants._SC_CLK_TCK);

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface FilterStats {
        boolean needed(Stats stats);
    }

    public void onLoadChanged(float f, float f2, float f3) {
    }

    public int onMeasureProcessName(String str) {
        return 0;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Stats {
        public boolean active;
        public boolean added;
        public String baseName;
        public long base_majfaults;
        public long base_minfaults;
        public long base_stime;
        public long base_uptime;
        public long base_utime;
        public BatteryStatsImpl.Uid.Proc batteryStats;
        final String cmdlineFile;
        public boolean interesting;
        public String name;
        public int nameWidth;
        public final int pid;
        public int rel_majfaults;
        public int rel_minfaults;
        public int rel_stime;
        public long rel_uptime;
        public int rel_utime;
        public boolean removed;
        final String statFile;
        final ArrayList<Stats> threadStats;
        final String threadsDir;
        public final int uid;
        public long vsize;
        public boolean working;
        final ArrayList<Stats> workingThreads;

        Stats(int i, int i2, boolean z) {
            this.pid = i;
            if (i2 < 0) {
                File file = new File("/proc", Integer.toString(this.pid));
                this.statFile = new File(file, "stat").toString();
                this.cmdlineFile = new File(file, "cmdline").toString();
                this.threadsDir = new File(file, "task").toString();
                if (z) {
                    this.threadStats = new ArrayList<>();
                    this.workingThreads = new ArrayList<>();
                } else {
                    this.threadStats = null;
                    this.workingThreads = null;
                }
            } else {
                this.statFile = new File(new File(new File(new File("/proc", Integer.toString(i2)), "task"), Integer.toString(this.pid)), "stat").toString();
                this.cmdlineFile = null;
                this.threadsDir = null;
                this.threadStats = null;
                this.workingThreads = null;
            }
            this.uid = FileUtils.getUid(this.statFile.toString());
        }
    }

    public ProcessCpuTracker(boolean z) {
        this.mIncludeThreads = z;
    }

    public void init() {
        this.mFirst = true;
        update();
    }

    public void update() {
        long j;
        long uptimeMillis = SystemClock.uptimeMillis();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long currentTimeMillis = System.currentTimeMillis();
        long[] jArr = this.mSystemCpuData;
        if (Process.readProcFile("/proc/stat", SYSTEM_CPU_FORMAT, null, jArr, null)) {
            long j2 = (jArr[0] + jArr[1]) * this.mJiffyMillis;
            long j3 = jArr[2] * this.mJiffyMillis;
            long j4 = jArr[3] * this.mJiffyMillis;
            long j5 = jArr[4] * this.mJiffyMillis;
            long j6 = jArr[5] * this.mJiffyMillis;
            j = currentTimeMillis;
            long j7 = jArr[6] * this.mJiffyMillis;
            this.mRelUserTime = (int) (j2 - this.mBaseUserTime);
            this.mRelSystemTime = (int) (j3 - this.mBaseSystemTime);
            this.mRelIoWaitTime = (int) (j5 - this.mBaseIoWaitTime);
            this.mRelIrqTime = (int) (j6 - this.mBaseIrqTime);
            this.mRelSoftIrqTime = (int) (j7 - this.mBaseSoftIrqTime);
            this.mRelIdleTime = (int) (j4 - this.mBaseIdleTime);
            this.mRelStatsAreGood = true;
            this.mBaseUserTime = j2;
            this.mBaseSystemTime = j3;
            this.mBaseIoWaitTime = j5;
            this.mBaseIrqTime = j6;
            this.mBaseSoftIrqTime = j7;
            this.mBaseIdleTime = j4;
        } else {
            j = currentTimeMillis;
        }
        this.mLastSampleTime = this.mCurrentSampleTime;
        this.mCurrentSampleTime = uptimeMillis;
        this.mLastSampleRealTime = this.mCurrentSampleRealTime;
        this.mCurrentSampleRealTime = elapsedRealtime;
        this.mLastSampleWallTime = this.mCurrentSampleWallTime;
        this.mCurrentSampleWallTime = j;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            this.mCurPids = collectStats("/proc", -1, this.mFirst, this.mCurPids, this.mProcStats);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            float[] fArr = this.mLoadAverageData;
            if (Process.readProcFile("/proc/loadavg", LOAD_AVERAGE_FORMAT, null, null, fArr)) {
                float f = fArr[0];
                float f2 = fArr[1];
                float f3 = fArr[2];
                if (f != this.mLoad1 || f2 != this.mLoad5 || f3 != this.mLoad15) {
                    this.mLoad1 = f;
                    this.mLoad5 = f2;
                    this.mLoad15 = f3;
                    onLoadChanged(f, f2, f3);
                }
            }
            this.mWorkingProcsSorted = false;
            this.mFirst = false;
        } catch (Throwable th) {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v4 */
    private int[] collectStats(String str, int i, boolean z, int[] iArr, ArrayList<Stats> arrayList) {
        int i2;
        int i3;
        ArrayList<Stats> arrayList2;
        int i4;
        int i5;
        long j;
        long j2;
        long j3;
        long j4;
        int i6 = i;
        ArrayList<Stats> arrayList3 = arrayList;
        int[] pids = Process.getPids(str, iArr);
        ?? r10 = 0;
        int length = pids == null ? 0 : pids.length;
        int size = arrayList.size();
        int i7 = 0;
        int i8 = 0;
        while (i8 < length) {
            int i9 = pids[i8];
            if (i9 < 0) {
                break;
            }
            Stats stats = i7 < size ? arrayList3.get(i7) : null;
            if (stats != null && stats.pid == i9) {
                stats.added = r10;
                stats.working = r10;
                int i10 = i7 + 1;
                if (stats.interesting) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    long[] jArr = this.mProcessStatsData;
                    if (Process.readProcFile(stats.statFile.toString(), PROCESS_STATS_FORMAT, null, jArr, null)) {
                        long j5 = jArr[r10];
                        long j6 = jArr[1];
                        i2 = length;
                        long j7 = this.mJiffyMillis * jArr[2];
                        long j8 = this.mJiffyMillis * jArr[3];
                        if (j7 == stats.base_utime && j8 == stats.base_stime) {
                            stats.rel_utime = 0;
                            stats.rel_stime = 0;
                            stats.rel_minfaults = 0;
                            stats.rel_majfaults = 0;
                            if (stats.active) {
                                stats.active = false;
                            }
                            i3 = i8;
                            i5 = size;
                            i7 = i10;
                            size = i5;
                            arrayList2 = arrayList;
                        } else {
                            if (!stats.active) {
                                stats.active = true;
                            }
                            if (i6 < 0) {
                                getName(stats, stats.cmdlineFile);
                                if (stats.threadStats != null) {
                                    j = j8;
                                    i3 = i8;
                                    i5 = size;
                                    j2 = uptimeMillis;
                                    j3 = j5;
                                    j4 = j6;
                                    this.mCurThreadPids = collectStats(stats.threadsDir, i9, false, this.mCurThreadPids, stats.threadStats);
                                    stats.rel_uptime = j2 - stats.base_uptime;
                                    stats.base_uptime = j2;
                                    stats.rel_utime = (int) (j7 - stats.base_utime);
                                    long j9 = j;
                                    stats.rel_stime = (int) (j9 - stats.base_stime);
                                    stats.base_utime = j7;
                                    stats.base_stime = j9;
                                    stats.rel_minfaults = (int) (j3 - stats.base_minfaults);
                                    long j10 = j4;
                                    stats.rel_majfaults = (int) (j10 - stats.base_majfaults);
                                    stats.base_minfaults = j3;
                                    stats.base_majfaults = j10;
                                    stats.working = true;
                                    i7 = i10;
                                    size = i5;
                                    arrayList2 = arrayList;
                                }
                            }
                            j = j8;
                            i3 = i8;
                            i5 = size;
                            j2 = uptimeMillis;
                            j3 = j5;
                            j4 = j6;
                            stats.rel_uptime = j2 - stats.base_uptime;
                            stats.base_uptime = j2;
                            stats.rel_utime = (int) (j7 - stats.base_utime);
                            long j92 = j;
                            stats.rel_stime = (int) (j92 - stats.base_stime);
                            stats.base_utime = j7;
                            stats.base_stime = j92;
                            stats.rel_minfaults = (int) (j3 - stats.base_minfaults);
                            long j102 = j4;
                            stats.rel_majfaults = (int) (j102 - stats.base_majfaults);
                            stats.base_minfaults = j3;
                            stats.base_majfaults = j102;
                            stats.working = true;
                            i7 = i10;
                            size = i5;
                            arrayList2 = arrayList;
                        }
                    }
                }
                i2 = length;
                i3 = i8;
                i5 = size;
                i7 = i10;
                size = i5;
                arrayList2 = arrayList;
            } else {
                i2 = length;
                i3 = i8;
                int i11 = size;
                if (stats == null || stats.pid > i9) {
                    arrayList2 = arrayList;
                    i4 = i;
                    Stats stats2 = new Stats(i9, i4, this.mIncludeThreads);
                    arrayList2.add(i7, stats2);
                    int i12 = i7 + 1;
                    size = i11 + 1;
                    String[] strArr = this.mProcessFullStatsStringData;
                    long[] jArr2 = this.mProcessFullStatsData;
                    stats2.base_uptime = SystemClock.uptimeMillis();
                    if (Process.readProcFile(stats2.statFile.toString(), PROCESS_FULL_STATS_FORMAT, strArr, jArr2, null)) {
                        stats2.vsize = jArr2[5];
                        stats2.interesting = true;
                        stats2.baseName = strArr[0];
                        stats2.base_minfaults = jArr2[1];
                        stats2.base_majfaults = jArr2[2];
                        stats2.base_utime = jArr2[3] * this.mJiffyMillis;
                        stats2.base_stime = jArr2[4] * this.mJiffyMillis;
                    } else {
                        Slog.w(TAG, "Skipping unknown process pid " + i9);
                        stats2.baseName = "<unknown>";
                        stats2.base_stime = 0L;
                        stats2.base_utime = 0L;
                        stats2.base_majfaults = 0L;
                        stats2.base_minfaults = 0L;
                    }
                    if (i4 < 0) {
                        getName(stats2, stats2.cmdlineFile);
                        if (stats2.threadStats != null) {
                            this.mCurThreadPids = collectStats(stats2.threadsDir, i9, true, this.mCurThreadPids, stats2.threadStats);
                        }
                    } else if (stats2.interesting) {
                        stats2.name = stats2.baseName;
                        stats2.nameWidth = onMeasureProcessName(stats2.name);
                    }
                    stats2.rel_utime = 0;
                    stats2.rel_stime = 0;
                    stats2.rel_minfaults = 0;
                    stats2.rel_majfaults = 0;
                    stats2.added = true;
                    if (!z && stats2.interesting) {
                        stats2.working = true;
                    }
                    i7 = i12;
                    i8 = i3 + 1;
                    arrayList3 = arrayList2;
                    i6 = i4;
                    length = i2;
                    r10 = 0;
                } else {
                    stats.rel_utime = 0;
                    stats.rel_stime = 0;
                    stats.rel_minfaults = 0;
                    stats.rel_majfaults = 0;
                    stats.removed = true;
                    stats.working = true;
                    arrayList2 = arrayList;
                    arrayList2.remove(i7);
                    size = i11 - 1;
                    i3--;
                }
            }
            i4 = i;
            i8 = i3 + 1;
            arrayList3 = arrayList2;
            i6 = i4;
            length = i2;
            r10 = 0;
        }
        ArrayList<Stats> arrayList4 = arrayList3;
        for (int i13 = size; i7 < i13; i13--) {
            Stats stats3 = arrayList4.get(i7);
            stats3.rel_utime = 0;
            stats3.rel_stime = 0;
            stats3.rel_minfaults = 0;
            stats3.rel_majfaults = 0;
            stats3.removed = true;
            stats3.working = true;
            arrayList4.remove(i7);
        }
        return pids;
    }

    public long getCpuTimeForPid(int i) {
        synchronized (this.mSinglePidStatsData) {
            String str = "/proc/" + i + "/stat";
            long[] jArr = this.mSinglePidStatsData;
            if (!Process.readProcFile(str, PROCESS_STATS_FORMAT, null, jArr, null)) {
                return 0L;
            }
            return (jArr[2] + jArr[3]) * this.mJiffyMillis;
        }
    }

    public final int getLastUserTime() {
        return this.mRelUserTime;
    }

    public final int getLastSystemTime() {
        return this.mRelSystemTime;
    }

    public final int getLastIoWaitTime() {
        return this.mRelIoWaitTime;
    }

    public final int getLastIrqTime() {
        return this.mRelIrqTime;
    }

    public final int getLastSoftIrqTime() {
        return this.mRelSoftIrqTime;
    }

    public final int getLastIdleTime() {
        return this.mRelIdleTime;
    }

    public final boolean hasGoodLastStats() {
        return this.mRelStatsAreGood;
    }

    public final float getTotalCpuPercent() {
        int i = this.mRelUserTime + this.mRelSystemTime + this.mRelIrqTime + this.mRelIdleTime;
        if (i <= 0) {
            return 0.0f;
        }
        return (((this.mRelUserTime + this.mRelSystemTime) + this.mRelIrqTime) * 100.0f) / i;
    }

    final void buildWorkingProcs() {
        if (this.mWorkingProcsSorted) {
            return;
        }
        this.mWorkingProcs.clear();
        int size = this.mProcStats.size();
        for (int i = 0; i < size; i++) {
            Stats stats = this.mProcStats.get(i);
            if (stats.working) {
                this.mWorkingProcs.add(stats);
                if (stats.threadStats != null && stats.threadStats.size() > 1) {
                    stats.workingThreads.clear();
                    int size2 = stats.threadStats.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        Stats stats2 = stats.threadStats.get(i2);
                        if (stats2.working) {
                            stats.workingThreads.add(stats2);
                        }
                    }
                    Collections.sort(stats.workingThreads, sLoadComparator);
                }
            }
        }
        Collections.sort(this.mWorkingProcs, sLoadComparator);
        this.mWorkingProcsSorted = true;
    }

    public final int countStats() {
        return this.mProcStats.size();
    }

    public final Stats getStats(int i) {
        return this.mProcStats.get(i);
    }

    public final List<Stats> getStats(FilterStats filterStats) {
        ArrayList arrayList = new ArrayList(this.mProcStats.size());
        int size = this.mProcStats.size();
        for (int i = 0; i < size; i++) {
            Stats stats = this.mProcStats.get(i);
            if (filterStats.needed(stats)) {
                arrayList.add(stats);
            }
        }
        return arrayList;
    }

    public final int countWorkingStats() {
        buildWorkingProcs();
        return this.mWorkingProcs.size();
    }

    public final Stats getWorkingStats(int i) {
        return this.mWorkingProcs.get(i);
    }

    public final String printCurrentLoad() {
        StringWriter stringWriter = new StringWriter();
        FastPrintWriter fastPrintWriter = new FastPrintWriter((Writer) stringWriter, false, 128);
        fastPrintWriter.print("Load: ");
        fastPrintWriter.print(this.mLoad1);
        fastPrintWriter.print(" / ");
        fastPrintWriter.print(this.mLoad5);
        fastPrintWriter.print(" / ");
        fastPrintWriter.println(this.mLoad15);
        fastPrintWriter.flush();
        return stringWriter.toString();
    }

    public final String printCurrentState(long j) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        buildWorkingProcs();
        StringWriter stringWriter = new StringWriter();
        int i = 0;
        FastPrintWriter fastPrintWriter = new FastPrintWriter((Writer) stringWriter, false, 1024);
        fastPrintWriter.print("CPU usage from ");
        if (j > this.mLastSampleTime) {
            fastPrintWriter.print(j - this.mLastSampleTime);
            fastPrintWriter.print("ms to ");
            fastPrintWriter.print(j - this.mCurrentSampleTime);
            fastPrintWriter.print("ms ago");
        } else {
            fastPrintWriter.print(this.mLastSampleTime - j);
            fastPrintWriter.print("ms to ");
            fastPrintWriter.print(this.mCurrentSampleTime - j);
            fastPrintWriter.print("ms later");
        }
        fastPrintWriter.print(" (");
        fastPrintWriter.print(simpleDateFormat.format(new Date(this.mLastSampleWallTime)));
        fastPrintWriter.print(" to ");
        fastPrintWriter.print(simpleDateFormat.format(new Date(this.mCurrentSampleWallTime)));
        fastPrintWriter.print(")");
        long j2 = this.mCurrentSampleTime - this.mLastSampleTime;
        long j3 = this.mCurrentSampleRealTime - this.mLastSampleRealTime;
        long j4 = j3 > 0 ? (j2 * 100) / j3 : 0L;
        if (j4 != 100) {
            fastPrintWriter.print(" with ");
            fastPrintWriter.print(j4);
            fastPrintWriter.print("% awake");
        }
        fastPrintWriter.println(":");
        int i2 = this.mRelUserTime + this.mRelSystemTime + this.mRelIoWaitTime + this.mRelIrqTime + this.mRelSoftIrqTime + this.mRelIdleTime;
        int size = this.mWorkingProcs.size();
        int i3 = 0;
        while (i3 < size) {
            Stats stats = this.mWorkingProcs.get(i3);
            int i4 = i3;
            int i5 = size;
            int i6 = i;
            printProcessCPU(fastPrintWriter, stats.added ? " +" : stats.removed ? " -" : "  ", stats.pid, stats.name, (int) stats.rel_uptime, stats.rel_utime, stats.rel_stime, 0, 0, 0, stats.rel_minfaults, stats.rel_majfaults);
            Stats stats2 = stats;
            if (!stats2.removed && stats2.workingThreads != null) {
                int size2 = stats2.workingThreads.size();
                int i7 = i6;
                while (i7 < size2) {
                    Stats stats3 = stats2.workingThreads.get(i7);
                    printProcessCPU(fastPrintWriter, stats3.added ? "   +" : stats3.removed ? "   -" : "    ", stats3.pid, stats3.name, (int) stats2.rel_uptime, stats3.rel_utime, stats3.rel_stime, 0, 0, 0, 0, 0);
                    i7++;
                    size2 = size2;
                    stats2 = stats2;
                }
            }
            i3 = i4 + 1;
            size = i5;
            i = i6;
        }
        printProcessCPU(fastPrintWriter, "", -1, "TOTAL", i2, this.mRelUserTime, this.mRelSystemTime, this.mRelIoWaitTime, this.mRelIrqTime, this.mRelSoftIrqTime, 0, 0);
        fastPrintWriter.flush();
        return stringWriter.toString();
    }

    private void printRatio(PrintWriter printWriter, long j, long j2) {
        long j3 = (j * 1000) / j2;
        long j4 = j3 / 10;
        printWriter.print(j4);
        if (j4 < 10) {
            long j5 = j3 - (j4 * 10);
            if (j5 != 0) {
                printWriter.print('.');
                printWriter.print(j5);
            }
        }
    }

    private void printProcessCPU(PrintWriter printWriter, String str, int i, String str2, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        printWriter.print(str);
        long j = i2 == 0 ? 1 : i2;
        printRatio(printWriter, i3 + i4 + i5 + i6 + i7, j);
        printWriter.print("% ");
        if (i >= 0) {
            printWriter.print(i);
            printWriter.print("/");
        }
        printWriter.print(str2);
        printWriter.print(": ");
        printRatio(printWriter, i3, j);
        printWriter.print("% user + ");
        printRatio(printWriter, i4, j);
        printWriter.print("% kernel");
        if (i5 > 0) {
            printWriter.print(" + ");
            printRatio(printWriter, i5, j);
            printWriter.print("% iowait");
        }
        if (i6 > 0) {
            printWriter.print(" + ");
            printRatio(printWriter, i6, j);
            printWriter.print("% irq");
        }
        if (i7 > 0) {
            printWriter.print(" + ");
            printRatio(printWriter, i7, j);
            printWriter.print("% softirq");
        }
        if (i8 > 0 || i9 > 0) {
            printWriter.print(" / faults:");
            if (i8 > 0) {
                printWriter.print(" ");
                printWriter.print(i8);
                printWriter.print(" minor");
            }
            if (i9 > 0) {
                printWriter.print(" ");
                printWriter.print(i9);
                printWriter.print(" major");
            }
        }
        printWriter.println();
    }

    private String readFile(String str, char c) {
        FileInputStream fileInputStream;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            fileInputStream = new FileInputStream(str);
            try {
                int read = fileInputStream.read(this.mBuffer);
                fileInputStream.close();
                if (read > 0) {
                    int i = 0;
                    while (i < read && this.mBuffer[i] != c) {
                        i++;
                    }
                    String str2 = new String(this.mBuffer, 0, i);
                    IoUtils.closeQuietly(fileInputStream);
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    return str2;
                }
            } catch (FileNotFoundException | IOException unused) {
            } catch (Throwable th) {
                th = th;
                IoUtils.closeQuietly(fileInputStream);
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                throw th;
            }
        } catch (FileNotFoundException | IOException unused2) {
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        IoUtils.closeQuietly(fileInputStream);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        return null;
    }

    private void getName(Stats stats, String str) {
        String str2 = stats.name;
        if (stats.name == null || stats.name.equals("app_process") || stats.name.equals("<pre-initialized>")) {
            String readFile = readFile(str, (char) 0);
            if (readFile != null && readFile.length() > 1) {
                int lastIndexOf = readFile.lastIndexOf("/");
                if (lastIndexOf > 0 && lastIndexOf < readFile.length() - 1) {
                    readFile = readFile.substring(lastIndexOf + 1);
                }
                str2 = readFile;
            }
            if (str2 == null) {
                str2 = stats.baseName;
            }
        }
        if (stats.name == null || !str2.equals(stats.name)) {
            stats.name = str2;
            stats.nameWidth = onMeasureProcessName(stats.name);
        }
    }
}
