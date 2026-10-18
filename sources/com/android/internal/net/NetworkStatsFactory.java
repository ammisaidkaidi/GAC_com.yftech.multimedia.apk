package com.android.internal.net;

import android.net.NetworkStats;
import android.os.StrictMode;
import android.os.SystemClock;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.util.ArrayUtils;
import com.android.internal.util.ProcFileReader;
import com.android.server.NetworkManagementSocketTagger;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import libcore.io.IoUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public class NetworkStatsFactory {
    private static final boolean SANITY_CHECK_NATIVE = false;
    private static final String TAG = "NetworkStatsFactory";
    private static final boolean USE_NATIVE_PARSING = true;
    private static final ConcurrentHashMap<String, String> sStackedIfaces = new ConcurrentHashMap<>();
    private final File mStatsXtIfaceAll;
    private final File mStatsXtIfaceFmt;
    private final File mStatsXtUid;
    private boolean mUseBpfStats;

    @VisibleForTesting
    public static native int nativeReadNetworkStatsDetail(NetworkStats networkStats, String str, int i, String[] strArr, int i2, boolean z);

    @VisibleForTesting
    public static native int nativeReadNetworkStatsDev(NetworkStats networkStats);

    public static void noteStackedIface(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        sStackedIfaces.put(str, str2);
    }

    public static String[] augmentWithStackedInterfaces(String[] strArr) {
        if (strArr == NetworkStats.INTERFACES_ALL) {
            return null;
        }
        HashSet hashSet = new HashSet(Arrays.asList(strArr));
        for (Map.Entry<String, String> entry : sStackedIfaces.entrySet()) {
            if (hashSet.contains(entry.getKey())) {
                hashSet.add(entry.getValue());
            } else if (hashSet.contains(entry.getValue())) {
                hashSet.add(entry.getKey());
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    public static void apply464xlatAdjustments(NetworkStats networkStats, NetworkStats networkStats2) {
        NetworkStats.apply464xlatAdjustments(networkStats, networkStats2, sStackedIfaces);
    }

    @VisibleForTesting
    public static void clearStackedIfaces() {
        sStackedIfaces.clear();
    }

    public NetworkStatsFactory() {
        this(new File("/proc/"), new File("/sys/fs/bpf/traffic_uid_stats_map").exists());
    }

    @VisibleForTesting
    public NetworkStatsFactory(File file, boolean z) {
        this.mStatsXtIfaceAll = new File(file, "net/xt_qtaguid/iface_stat_all");
        this.mStatsXtIfaceFmt = new File(file, "net/xt_qtaguid/iface_stat_fmt");
        this.mStatsXtUid = new File(file, "net/xt_qtaguid/stats");
        this.mUseBpfStats = z;
    }

    public NetworkStats readBpfNetworkStatsDev() throws IOException {
        NetworkStats networkStats = new NetworkStats(SystemClock.elapsedRealtime(), 6);
        if (nativeReadNetworkStatsDev(networkStats) == 0) {
            return networkStats;
        }
        throw new IOException("Failed to parse bpf iface stats");
    }

    public NetworkStats readNetworkStatsSummaryDev() throws IOException {
        ProcFileReader procFileReader;
        if (this.mUseBpfStats) {
            return readBpfNetworkStatsDev();
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        NetworkStats networkStats = new NetworkStats(SystemClock.elapsedRealtime(), 6);
        NetworkStats.Entry entry = new NetworkStats.Entry();
        ProcFileReader procFileReader2 = null;
        try {
            try {
                procFileReader = new ProcFileReader(new FileInputStream(this.mStatsXtIfaceAll));
                while (procFileReader.hasMoreData()) {
                    try {
                        entry.iface = procFileReader.nextString();
                        entry.uid = -1;
                        entry.set = -1;
                        entry.tag = 0;
                        boolean z = procFileReader.nextInt() != 0;
                        entry.rxBytes = procFileReader.nextLong();
                        entry.rxPackets = procFileReader.nextLong();
                        entry.txBytes = procFileReader.nextLong();
                        entry.txPackets = procFileReader.nextLong();
                        if (z) {
                            entry.rxBytes += procFileReader.nextLong();
                            entry.rxPackets += procFileReader.nextLong();
                            entry.txBytes += procFileReader.nextLong();
                            entry.txPackets += procFileReader.nextLong();
                        }
                        networkStats.addValues(entry);
                        procFileReader.finishLine();
                    } catch (NullPointerException | NumberFormatException e) {
                        e = e;
                        procFileReader2 = procFileReader;
                        throw new ProtocolException("problem parsing stats", e);
                    } catch (Throwable th) {
                        th = th;
                        IoUtils.closeQuietly(procFileReader);
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        throw th;
                    }
                }
                IoUtils.closeQuietly(procFileReader);
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                return networkStats;
            } catch (NullPointerException | NumberFormatException e2) {
                e = e2;
            }
        } catch (Throwable th2) {
            th = th2;
            procFileReader = procFileReader2;
        }
    }

    public NetworkStats readNetworkStatsSummaryXt() throws IOException {
        ProcFileReader procFileReader;
        if (this.mUseBpfStats) {
            return readBpfNetworkStatsDev();
        }
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        ProcFileReader procFileReader2 = null;
        if (!this.mStatsXtIfaceFmt.exists()) {
            return null;
        }
        NetworkStats networkStats = new NetworkStats(SystemClock.elapsedRealtime(), 6);
        NetworkStats.Entry entry = new NetworkStats.Entry();
        try {
            try {
                procFileReader = new ProcFileReader(new FileInputStream(this.mStatsXtIfaceFmt));
            } catch (NullPointerException | NumberFormatException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
            procFileReader = procFileReader2;
        }
        try {
            procFileReader.finishLine();
            while (procFileReader.hasMoreData()) {
                entry.iface = procFileReader.nextString();
                entry.uid = -1;
                entry.set = -1;
                entry.tag = 0;
                entry.rxBytes = procFileReader.nextLong();
                entry.rxPackets = procFileReader.nextLong();
                entry.txBytes = procFileReader.nextLong();
                entry.txPackets = procFileReader.nextLong();
                networkStats.addValues(entry);
                procFileReader.finishLine();
            }
            IoUtils.closeQuietly(procFileReader);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            return networkStats;
        } catch (NullPointerException | NumberFormatException e2) {
            e = e2;
            procFileReader2 = procFileReader;
            throw new ProtocolException("problem parsing stats", e);
        } catch (Throwable th2) {
            th = th2;
            IoUtils.closeQuietly(procFileReader);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
    }

    public NetworkStats readNetworkStatsDetail() throws IOException {
        return readNetworkStatsDetail(-1, null, -1, null);
    }

    public NetworkStats readNetworkStatsDetail(int i, String[] strArr, int i2, NetworkStats networkStats) throws IOException {
        NetworkStats readNetworkStatsDetailInternal = readNetworkStatsDetailInternal(i, strArr, i2, networkStats);
        readNetworkStatsDetailInternal.apply464xlatAdjustments(sStackedIfaces);
        return readNetworkStatsDetailInternal;
    }

    private NetworkStats readNetworkStatsDetailInternal(int i, String[] strArr, int i2, NetworkStats networkStats) throws IOException {
        if (networkStats != null) {
            networkStats.setElapsedRealtime(SystemClock.elapsedRealtime());
        } else {
            networkStats = new NetworkStats(SystemClock.elapsedRealtime(), -1);
        }
        if (nativeReadNetworkStatsDetail(networkStats, this.mStatsXtUid.getAbsolutePath(), i, strArr, i2, this.mUseBpfStats) == 0) {
            return networkStats;
        }
        throw new IOException("Failed to parse network stats");
    }

    @VisibleForTesting
    public static NetworkStats javaReadNetworkStatsDetail(File file, int i, String[] strArr, int i2) throws IOException {
        int i3;
        ProcFileReader procFileReader;
        int i4;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        NetworkStats networkStats = new NetworkStats(SystemClock.elapsedRealtime(), 24);
        NetworkStats.Entry entry = new NetworkStats.Entry();
        int i5 = 1;
        try {
            try {
                procFileReader = new ProcFileReader(new FileInputStream(file));
                try {
                    procFileReader.finishLine();
                    i4 = 1;
                } catch (NullPointerException | NumberFormatException e) {
                    e = e;
                    i3 = 1;
                    throw new ProtocolException("problem parsing idx " + i3, e);
                }
            } catch (Throwable th) {
                th = th;
                IoUtils.closeQuietly((AutoCloseable) null);
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                throw th;
            }
        } catch (NullPointerException | NumberFormatException e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
            IoUtils.closeQuietly((AutoCloseable) null);
            StrictMode.setThreadPolicy(allowThreadDiskReads);
            throw th;
        }
        while (procFileReader.hasMoreData()) {
            try {
                i3 = procFileReader.nextInt();
                if (i3 != i5 + 1) {
                    throw new ProtocolException("inconsistent idx=" + i3 + " after lastIdx=" + i5);
                }
                try {
                    entry.iface = procFileReader.nextString();
                    entry.tag = NetworkManagementSocketTagger.kernelToTag(procFileReader.nextString());
                    entry.uid = procFileReader.nextInt();
                    entry.set = procFileReader.nextInt();
                    entry.rxBytes = procFileReader.nextLong();
                    entry.rxPackets = procFileReader.nextLong();
                    entry.txBytes = procFileReader.nextLong();
                    entry.txPackets = procFileReader.nextLong();
                    if ((strArr == null || ArrayUtils.contains(strArr, entry.iface)) && ((i == -1 || i == entry.uid) && (i2 == -1 || i2 == entry.tag))) {
                        networkStats.addValues(entry);
                    }
                    procFileReader.finishLine();
                    i4 = i3;
                    i5 = i4;
                } catch (NullPointerException | NumberFormatException e3) {
                    e = e3;
                }
                e = e3;
            } catch (NullPointerException | NumberFormatException e4) {
                i3 = i4;
                e = e4;
            }
            throw new ProtocolException("problem parsing idx " + i3, e);
        }
        IoUtils.closeQuietly(procFileReader);
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        return networkStats;
    }

    public void assertEquals(NetworkStats networkStats, NetworkStats networkStats2) {
        if (networkStats.size() != networkStats2.size()) {
            throw new AssertionError("Expected size " + networkStats.size() + ", actual size " + networkStats2.size());
        }
        NetworkStats.Entry entry = null;
        NetworkStats.Entry entry2 = null;
        for (int i = 0; i < networkStats.size(); i++) {
            entry = networkStats.getValues(i, entry);
            entry2 = networkStats2.getValues(i, entry2);
            if (!entry.equals(entry2)) {
                throw new AssertionError("Expected row " + i + ": " + entry + ", actual row " + entry2);
            }
        }
    }
}
