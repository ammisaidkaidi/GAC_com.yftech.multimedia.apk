package com.android.internal.os;

import android.os.StrictMode;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Slog;
import android.util.SparseLongArray;
import android.util.TimeUtils;
import com.android.internal.content.NativeLibraryHelper;
import com.android.internal.os.KernelUidCpuTimeReaderBase;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class KernelUidCpuTimeReader extends KernelUidCpuTimeReaderBase<Callback> {
    private static final String TAG = "KernelUidCpuTimeReader";
    private static final String sProcFile = "/proc/uid_cputime/show_uid_stat";
    private static final String sRemoveUidProcFile = "/proc/uid_cputime/remove_uid_range";
    private SparseLongArray mLastUserTimeUs = new SparseLongArray();
    private SparseLongArray mLastSystemTimeUs = new SparseLongArray();
    private long mLastTimeReadUs = 0;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Callback extends KernelUidCpuTimeReaderBase.Callback {
        void onUidCpuTime(int i, long j, long j2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0134 A[Catch: all -> 0x0142, Throwable -> 0x0145, TRY_LEAVE, TryCatch #5 {all -> 0x0142, Throwable -> 0x0145, blocks: (B:6:0x0019, B:7:0x0020, B:9:0x0026, B:11:0x0050, B:13:0x0058, B:15:0x0060, B:28:0x0126, B:30:0x0134, B:35:0x0083), top: B:5:0x0019 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0139 A[SYNTHETIC] */
    @Override // com.android.internal.os.KernelUidCpuTimeReaderBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void readDeltaImpl(Callback callback) {
        BufferedReader bufferedReader;
        Throwable th;
        long j;
        long j2;
        long j3;
        long j4;
        boolean z;
        long j5;
        long j6;
        int allowThreadDiskReadsMask = StrictMode.allowThreadDiskReadsMask();
        long j7 = 1000;
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(sProcFile));
            } catch (IOException e) {
                Slog.e(TAG, "Failed to read uid_cputime: " + e.getMessage());
            }
            try {
                TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(' ');
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    simpleStringSplitter.setString(readLine);
                    String next = simpleStringSplitter.next();
                    int parseInt = Integer.parseInt(next.substring(0, next.length() - 1), 10);
                    long parseLong = Long.parseLong(simpleStringSplitter.next(), 10);
                    long parseLong2 = Long.parseLong(simpleStringSplitter.next(), 10);
                    if (callback == null) {
                        j = j7;
                        j2 = parseLong2;
                    } else if (this.mLastTimeReadUs != 0) {
                        int indexOfKey = this.mLastUserTimeUs.indexOfKey(parseInt);
                        if (indexOfKey >= 0) {
                            j5 = parseLong - this.mLastUserTimeUs.valueAt(indexOfKey);
                            j6 = parseLong2 - this.mLastSystemTimeUs.valueAt(indexOfKey);
                            j2 = parseLong2;
                            long j8 = elapsedRealtime - this.mLastTimeReadUs;
                            if (j5 >= 0 && j6 >= 0) {
                                j = 1000;
                            }
                            StringBuilder sb = new StringBuilder("Malformed cpu data for UID=");
                            sb.append(parseInt);
                            sb.append("!\n");
                            sb.append("Time between reads: ");
                            TimeUtils.formatDuration(j8 / 1000, sb);
                            sb.append("\n");
                            sb.append("Previous times: u=");
                            TimeUtils.formatDuration(this.mLastUserTimeUs.valueAt(indexOfKey) / 1000, sb);
                            sb.append(" s=");
                            j = 1000;
                            TimeUtils.formatDuration(this.mLastSystemTimeUs.valueAt(indexOfKey) / 1000, sb);
                            sb.append("\nCurrent times: u=");
                            TimeUtils.formatDuration(parseLong / 1000, sb);
                            sb.append(" s=");
                            TimeUtils.formatDuration(j2 / 1000, sb);
                            sb.append("\nDelta: u=");
                            TimeUtils.formatDuration(j5 / 1000, sb);
                            sb.append(" s=");
                            TimeUtils.formatDuration(j6 / 1000, sb);
                            Slog.e(TAG, sb.toString());
                            j5 = 0;
                            j6 = 0;
                        } else {
                            j2 = parseLong2;
                            j = 1000;
                            j5 = parseLong;
                            j6 = j2;
                        }
                        if (j5 == 0 && j6 == 0) {
                            z = false;
                            j3 = j5;
                            j4 = j6;
                            this.mLastUserTimeUs.put(parseInt, parseLong);
                            this.mLastSystemTimeUs.put(parseInt, j2);
                            if (z) {
                                callback.onUidCpuTime(parseInt, j3, j4);
                            }
                            j7 = j;
                        }
                        z = true;
                        j3 = j5;
                        j4 = j6;
                        this.mLastUserTimeUs.put(parseInt, parseLong);
                        this.mLastSystemTimeUs.put(parseInt, j2);
                        if (z) {
                        }
                        j7 = j;
                    } else {
                        j2 = parseLong2;
                        j = 1000;
                    }
                    j3 = parseLong;
                    j4 = j2;
                    z = false;
                    this.mLastUserTimeUs.put(parseInt, parseLong);
                    this.mLastSystemTimeUs.put(parseInt, j2);
                    if (z) {
                    }
                    j7 = j;
                }
                $closeResource(null, bufferedReader);
                StrictMode.setThreadPolicyMask(allowThreadDiskReadsMask);
                this.mLastTimeReadUs = elapsedRealtime;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    th = th3;
                    th = th2;
                    $closeResource(th, bufferedReader);
                    throw th;
                }
            }
        } catch (Throwable th4) {
            StrictMode.setThreadPolicyMask(allowThreadDiskReadsMask);
            throw th4;
        }
    }

    private static /* synthetic */ void $closeResource(Throwable th, AutoCloseable autoCloseable) {
        if (th == null) {
            autoCloseable.close();
            return;
        }
        try {
            autoCloseable.close();
        } catch (Throwable th2) {
            th.addSuppressed(th2);
        }
    }

    public void readAbsolute(Callback callback) {
        BufferedReader bufferedReader;
        Throwable th;
        int allowThreadDiskReadsMask = StrictMode.allowThreadDiskReadsMask();
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(sProcFile));
                th = null;
            } catch (IOException e) {
                Slog.e(TAG, "Failed to read uid_cputime: " + e.getMessage());
            }
            try {
                try {
                    TextUtils.SimpleStringSplitter simpleStringSplitter = new TextUtils.SimpleStringSplitter(' ');
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        simpleStringSplitter.setString(readLine);
                        callback.onUidCpuTime(Integer.parseInt(simpleStringSplitter.next().substring(0, r3.length() - 1), 10), Long.parseLong(simpleStringSplitter.next(), 10), Long.parseLong(simpleStringSplitter.next(), 10));
                    }
                } finally {
                }
            } finally {
                $closeResource(th, bufferedReader);
            }
        } finally {
            StrictMode.setThreadPolicyMask(allowThreadDiskReadsMask);
        }
    }

    public void removeUid(int i) {
        int indexOfKey = this.mLastSystemTimeUs.indexOfKey(i);
        if (indexOfKey >= 0) {
            this.mLastSystemTimeUs.removeAt(indexOfKey);
            this.mLastUserTimeUs.removeAt(indexOfKey);
        }
        removeUidsFromKernelModule(i, i);
    }

    public void removeUidsInRange(int i, int i2) {
        if (i2 < i) {
            return;
        }
        this.mLastSystemTimeUs.put(i, 0L);
        this.mLastUserTimeUs.put(i, 0L);
        this.mLastSystemTimeUs.put(i2, 0L);
        this.mLastUserTimeUs.put(i2, 0L);
        int indexOfKey = this.mLastSystemTimeUs.indexOfKey(i);
        int indexOfKey2 = (this.mLastSystemTimeUs.indexOfKey(i2) - indexOfKey) + 1;
        this.mLastSystemTimeUs.removeAtRange(indexOfKey, indexOfKey2);
        this.mLastUserTimeUs.removeAtRange(indexOfKey, indexOfKey2);
        removeUidsFromKernelModule(i, i2);
    }

    private void removeUidsFromKernelModule(int i, int i2) {
        Slog.d(TAG, "Removing uids " + i + NativeLibraryHelper.CLEAR_ABI_OVERRIDE + i2);
        int allowThreadDiskWritesMask = StrictMode.allowThreadDiskWritesMask();
        try {
            try {
                FileWriter fileWriter = new FileWriter(sRemoveUidProcFile);
                Throwable th = null;
                try {
                    fileWriter.write(i + NativeLibraryHelper.CLEAR_ABI_OVERRIDE + i2);
                    fileWriter.flush();
                } finally {
                    $closeResource(th, fileWriter);
                }
            } finally {
                StrictMode.setThreadPolicyMask(allowThreadDiskWritesMask);
            }
        } catch (IOException e) {
            Slog.e(TAG, "failed to remove uids " + i + " - " + i2 + " from uid_cputime module", e);
        }
    }
}
