package com.android.internal.os;

import android.os.Process;
import android.os.StrictMode;
import android.os.SystemClock;
import android.util.Slog;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.midi.MidiConstants;
import com.android.internal.os.KernelWakelockStats;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes3.dex */
public class KernelWakelockReader {
    private static final String TAG = "KernelWakelockReader";
    private static int sKernelWakelockUpdateVersion = 0;
    private static final String sWakelockFile = "/proc/wakelocks";
    private static final String sWakeupSourceFile = "/d/wakeup_sources";
    private static final int[] PROC_WAKELOCKS_FORMAT = {5129, 8201, 9, 9, 9, 8201};
    private static final int[] WAKEUP_SOURCES_FORMAT = {4105, 8457, 265, 265, 265, 265, 8457};
    private final String[] mProcWakelocksName = new String[3];
    private final long[] mProcWakelocksData = new long[3];

    public final KernelWakelockStats readKernelWakelockStats(KernelWakelockStats kernelWakelockStats) {
        FileInputStream fileInputStream;
        boolean z;
        byte[] bArr = new byte[32768];
        long uptimeMillis = SystemClock.uptimeMillis();
        int allowThreadDiskReadsMask = StrictMode.allowThreadDiskReadsMask();
        int i = 0;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(sWakelockFile);
                    z = false;
                } catch (FileNotFoundException unused) {
                    Slog.wtf(TAG, "neither /proc/wakelocks nor /d/wakeup_sources exists");
                    return null;
                }
            } catch (IOException e) {
                Slog.wtf(TAG, "failed to read kernel wakelocks", e);
                return null;
            } finally {
                StrictMode.setThreadPolicyMask(allowThreadDiskReadsMask);
            }
        } catch (FileNotFoundException unused2) {
            fileInputStream = new FileInputStream(sWakeupSourceFile);
            z = true;
        }
        int read = fileInputStream.read(bArr);
        fileInputStream.close();
        StrictMode.setThreadPolicyMask(allowThreadDiskReadsMask);
        long uptimeMillis2 = SystemClock.uptimeMillis() - uptimeMillis;
        if (uptimeMillis2 > 100) {
            Slog.w(TAG, "Reading wakelock stats took " + uptimeMillis2 + "ms");
        }
        if (read > 0) {
            if (read >= bArr.length) {
                Slog.wtf(TAG, "Kernel wake locks exceeded buffer size " + bArr.length);
            }
            while (i < read) {
                if (bArr[i] == 0) {
                    break;
                }
                i++;
            }
        }
        i = read;
        return parseProcWakelocks(bArr, i, z, kernelWakelockStats);
    }

    @VisibleForTesting
    public KernelWakelockStats parseProcWakelocks(byte[] bArr, int i, boolean z, KernelWakelockStats kernelWakelockStats) {
        int[] iArr;
        long j;
        int i2 = 0;
        while (i2 < i && bArr[i2] != 10 && bArr[i2] != 0) {
            i2++;
        }
        int i3 = i2 + 1;
        synchronized (this) {
            sKernelWakelockUpdateVersion++;
            int i4 = i3;
            while (i3 < i) {
                int i5 = i4;
                while (i5 < i && bArr[i5] != 10 && bArr[i5] != 0) {
                    i5++;
                }
                if (i5 > i - 1) {
                    break;
                }
                String[] strArr = this.mProcWakelocksName;
                long[] jArr = this.mProcWakelocksData;
                for (int i6 = i4; i6 < i5; i6++) {
                    if ((bArr[i6] & MidiConstants.STATUS_NOTE_OFF) != 0) {
                        bArr[i6] = 63;
                    }
                }
                if (z) {
                    iArr = WAKEUP_SOURCES_FORMAT;
                } else {
                    iArr = PROC_WAKELOCKS_FORMAT;
                }
                int i7 = i5;
                boolean parseProcLine = Process.parseProcLine(bArr, i4, i5, iArr, strArr, jArr, null);
                String str = strArr[0];
                int i8 = (int) jArr[1];
                if (z) {
                    j = jArr[2] * 1000;
                } else {
                    j = (jArr[2] + 500) / 1000;
                }
                if (!parseProcLine || str.length() <= 0) {
                    if (!parseProcLine) {
                        try {
                            Slog.wtf(TAG, "Failed to parse proc line: " + new String(bArr, i4, i7 - i4));
                        } catch (Exception unused) {
                            Slog.wtf(TAG, "Failed to parse proc line!");
                        }
                    }
                } else if (!kernelWakelockStats.containsKey(str)) {
                    kernelWakelockStats.put(str, new KernelWakelockStats.Entry(i8, j, sKernelWakelockUpdateVersion));
                } else {
                    KernelWakelockStats.Entry entry = (KernelWakelockStats.Entry) kernelWakelockStats.get(str);
                    if (entry.mVersion == sKernelWakelockUpdateVersion) {
                        entry.mCount += i8;
                        entry.mTotalTime += j;
                    } else {
                        entry.mCount = i8;
                        entry.mTotalTime = j;
                        entry.mVersion = sKernelWakelockUpdateVersion;
                    }
                }
                i4 = i7 + 1;
                i3 = i7;
            }
            Iterator it = kernelWakelockStats.values().iterator();
            while (it.hasNext()) {
                if (((KernelWakelockStats.Entry) it.next()).mVersion != sKernelWakelockUpdateVersion) {
                    it.remove();
                }
            }
            kernelWakelockStats.kernelWakelockVersion = sKernelWakelockUpdateVersion;
        }
        return kernelWakelockStats;
    }
}
