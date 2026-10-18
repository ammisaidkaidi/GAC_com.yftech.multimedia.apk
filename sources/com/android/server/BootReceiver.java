package com.android.server;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.IPackageManager;
import android.os.Build;
import android.os.DropBoxManager;
import android.os.Environment;
import android.os.FileObserver;
import android.os.FileUtils;
import android.os.RecoverySystem;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.storage.StorageManager;
import android.provider.Downloads;
import android.text.TextUtils;
import android.util.AtomicFile;
import android.util.EventLog;
import android.util.Slog;
import android.util.StatsLog;
import android.util.Xml;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.telephony.PhoneConstants;
import com.android.internal.util.FastXmlSerializer;
import com.android.internal.util.XmlUtils;
import com.media.common.util.AppConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class BootReceiver extends BroadcastReceiver {
    private static final String FSCK_FS_MODIFIED = "FILE SYSTEM WAS MODIFIED";
    private static final String FSCK_PASS_PATTERN = "Pass ([1-9]E?):";
    private static final String FSCK_TREE_OPTIMIZATION_PATTERN = "Inode [0-9]+ extent tree.*could be shorter";
    private static final int FS_STAT_FS_FIXED = 1024;
    private static final String FS_STAT_PATTERN = "fs_stat,[^,]*/([^/,]+),(0x[0-9a-fA-F]+)";
    private static final String LAST_HEADER_FILE = "last-header.txt";
    private static final String[] LAST_KMSG_FILES;
    private static final String LAST_SHUTDOWN_TIME_PATTERN = "powerctl_shutdown_time_ms:([0-9]+):([0-9]+)";
    private static final String LOG_FILES_FILE = "log-files.xml";
    private static final int LOG_SIZE;
    private static final String METRIC_SHUTDOWN_TIME_START = "begin_shutdown";
    private static final String METRIC_SYSTEM_SERVER = "shutdown_system_server";
    private static final String[] MOUNT_DURATION_PROPS_POSTFIX;
    private static final String OLD_UPDATER_CLASS = "com.google.android.systemupdater.SystemUpdateReceiver";
    private static final String OLD_UPDATER_PACKAGE = "com.google.android.systemupdater";
    private static final String SHUTDOWN_METRICS_FILE = "/data/system/shutdown-metrics.txt";
    private static final String SHUTDOWN_TRON_METRICS_PREFIX = "shutdown_";
    private static final String TAG = "BootReceiver";
    private static final String TAG_TOMBSTONE = "SYSTEM_TOMBSTONE";
    private static final File TOMBSTONE_DIR;
    private static final int UMOUNT_STATUS_NOT_AVAILABLE = 4;
    private static final File lastHeaderFile;
    private static final AtomicFile sFile;
    private static FileObserver sTombstoneObserver;

    static /* synthetic */ HashMap access$200() {
        return readTimestamps();
    }

    static {
        LOG_SIZE = SystemProperties.getInt("ro.debuggable", 0) == 1 ? 98304 : 65536;
        TOMBSTONE_DIR = new File("/data/tombstones");
        sTombstoneObserver = null;
        sFile = new AtomicFile(new File(Environment.getDataSystemDirectory(), LOG_FILES_FILE), "log-files");
        lastHeaderFile = new File(Environment.getDataSystemDirectory(), LAST_HEADER_FILE);
        MOUNT_DURATION_PROPS_POSTFIX = new String[]{"early", PhoneConstants.APN_TYPE_DEFAULT, "late"};
        LAST_KMSG_FILES = new String[]{"/sys/fs/pstore/console-ramoops", "/proc/last_kmsg"};
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.server.BootReceiver$1] */
    @Override // android.content.BroadcastReceiver
    public void onReceive(final Context context, Intent intent) {
        new Thread() { // from class: com.android.server.BootReceiver.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    BootReceiver.this.logBootEvents(context);
                } catch (Exception e) {
                    Slog.e(BootReceiver.TAG, "Can't log boot events", e);
                }
                boolean z = false;
                try {
                    try {
                        z = IPackageManager.Stub.asInterface(ServiceManager.getService("package")).isOnlyCoreApps();
                    } catch (RemoteException unused) {
                    }
                    if (z) {
                        return;
                    }
                    BootReceiver.this.removeOldUpdatePackages(context);
                } catch (Exception e2) {
                    Slog.e(BootReceiver.TAG, "Can't remove old update packages", e2);
                }
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeOldUpdatePackages(Context context) {
        Downloads.removeAllDownloadsByPackage(context, OLD_UPDATER_PACKAGE, OLD_UPDATER_CLASS);
    }

    private String getPreviousBootHeaders() {
        try {
            return FileUtils.readTextFile(lastHeaderFile, 0, null);
        } catch (IOException unused) {
            return null;
        }
    }

    private String getCurrentBootHeaders() throws IOException {
        StringBuilder sb = new StringBuilder(512);
        sb.append("Build: ");
        sb.append(Build.FINGERPRINT);
        sb.append("\n");
        sb.append("Hardware: ");
        sb.append(Build.BOARD);
        sb.append("\n");
        sb.append("Revision: ");
        sb.append(SystemProperties.get("ro.revision", ""));
        sb.append("\n");
        sb.append("Bootloader: ");
        sb.append(Build.BOOTLOADER);
        sb.append("\n");
        sb.append("Radio: ");
        sb.append(Build.getRadioVersion());
        sb.append("\n");
        sb.append("Kernel: ");
        sb.append(FileUtils.readTextFile(new File("/proc/version"), 1024, "...\n"));
        sb.append("\n");
        return sb.toString();
    }

    private String getBootHeadersToLogAndUpdate() throws IOException {
        String previousBootHeaders = getPreviousBootHeaders();
        String currentBootHeaders = getCurrentBootHeaders();
        try {
            FileUtils.stringToFile(lastHeaderFile, currentBootHeaders);
        } catch (IOException e) {
            Slog.e(TAG, "Error writing " + lastHeaderFile, e);
        }
        if (previousBootHeaders == null) {
            return "isPrevious: false\n" + currentBootHeaders;
        }
        return "isPrevious: true\n" + previousBootHeaders;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logBootEvents(Context context) throws IOException {
        final DropBoxManager dropBoxManager = (DropBoxManager) context.getSystemService("dropbox");
        final String bootHeadersToLogAndUpdate = getBootHeadersToLogAndUpdate();
        String str = SystemProperties.get("ro.boot.bootreason", (String) null);
        String handleAftermath = RecoverySystem.handleAftermath(context);
        if (handleAftermath != null && dropBoxManager != null) {
            dropBoxManager.addText("SYSTEM_RECOVERY_LOG", bootHeadersToLogAndUpdate + handleAftermath);
        }
        String str2 = "";
        if (str != null) {
            StringBuilder sb = new StringBuilder(512);
            sb.append("\n");
            sb.append("Boot info:\n");
            sb.append("Last boot reason: ");
            sb.append(str);
            sb.append("\n");
            str2 = sb.toString();
        }
        HashMap<String, Long> readTimestamps = readTimestamps();
        if (SystemProperties.getLong("ro.runtime.firstboot", 0L) == 0) {
            if (!StorageManager.inCryptKeeperBounce()) {
                SystemProperties.set("ro.runtime.firstboot", Long.toString(System.currentTimeMillis()));
            }
            if (dropBoxManager != null) {
                dropBoxManager.addText("SYSTEM_BOOT", bootHeadersToLogAndUpdate);
            }
            String str3 = str2;
            addFileWithFootersToDropBox(dropBoxManager, readTimestamps, bootHeadersToLogAndUpdate, str3, "/proc/last_kmsg", -LOG_SIZE, "SYSTEM_LAST_KMSG");
            addFileWithFootersToDropBox(dropBoxManager, readTimestamps, bootHeadersToLogAndUpdate, str3, "/sys/fs/pstore/console-ramoops", -LOG_SIZE, "SYSTEM_LAST_KMSG");
            addFileWithFootersToDropBox(dropBoxManager, readTimestamps, bootHeadersToLogAndUpdate, str3, "/sys/fs/pstore/console-ramoops-0", -LOG_SIZE, "SYSTEM_LAST_KMSG");
            addFileToDropBox(dropBoxManager, readTimestamps, bootHeadersToLogAndUpdate, "/cache/recovery/log", -LOG_SIZE, "SYSTEM_RECOVERY_LOG");
            addFileToDropBox(dropBoxManager, readTimestamps, bootHeadersToLogAndUpdate, "/cache/recovery/last_kmsg", -LOG_SIZE, "SYSTEM_RECOVERY_KMSG");
            addAuditErrorsToDropBox(dropBoxManager, readTimestamps, bootHeadersToLogAndUpdate, -LOG_SIZE, "SYSTEM_AUDIT");
        } else if (dropBoxManager != null) {
            dropBoxManager.addText("SYSTEM_RESTART", bootHeadersToLogAndUpdate);
        }
        logFsShutdownTime();
        logFsMountTime();
        addFsckErrorsToDropBoxAndLogFsStat(dropBoxManager, readTimestamps, bootHeadersToLogAndUpdate, -LOG_SIZE, "SYSTEM_FSCK");
        logSystemServerShutdownTimeMetrics();
        File[] listFiles = TOMBSTONE_DIR.listFiles();
        for (int i = 0; listFiles != null && i < listFiles.length; i++) {
            if (listFiles[i].isFile()) {
                addFileToDropBox(dropBoxManager, readTimestamps, bootHeadersToLogAndUpdate, listFiles[i].getPath(), LOG_SIZE, TAG_TOMBSTONE);
            }
        }
        writeTimestamps(readTimestamps);
        sTombstoneObserver = new FileObserver(TOMBSTONE_DIR.getPath(), 8) { // from class: com.android.server.BootReceiver.2
            @Override // android.os.FileObserver
            public void onEvent(int i2, String str4) {
                HashMap access$200 = BootReceiver.access$200();
                try {
                    File file = new File(BootReceiver.TOMBSTONE_DIR, str4);
                    if (file.isFile()) {
                        BootReceiver.addFileToDropBox(dropBoxManager, access$200, bootHeadersToLogAndUpdate, file.getPath(), BootReceiver.LOG_SIZE, BootReceiver.TAG_TOMBSTONE);
                    }
                } catch (IOException e) {
                    Slog.e(BootReceiver.TAG, "Can't log tombstone", e);
                }
                BootReceiver.this.writeTimestamps(access$200);
            }
        };
        sTombstoneObserver.startWatching();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void addFileToDropBox(DropBoxManager dropBoxManager, HashMap<String, Long> hashMap, String str, String str2, int i, String str3) throws IOException {
        addFileWithFootersToDropBox(dropBoxManager, hashMap, str, "", str2, i, str3);
    }

    private static void addFileWithFootersToDropBox(DropBoxManager dropBoxManager, HashMap<String, Long> hashMap, String str, String str2, String str3, int i, String str4) throws IOException {
        if (dropBoxManager == null || !dropBoxManager.isTagEnabled(str4)) {
            return;
        }
        File file = new File(str3);
        long lastModified = file.lastModified();
        if (lastModified <= 0) {
            return;
        }
        if (hashMap.containsKey(str3) && hashMap.get(str3).longValue() == lastModified) {
            return;
        }
        hashMap.put(str3, Long.valueOf(lastModified));
        String readTextFile = FileUtils.readTextFile(file, i, "[[TRUNCATED]]\n");
        String str5 = str + readTextFile + str2;
        if (str4.equals(TAG_TOMBSTONE) && readTextFile.contains(">>> system_server <<<")) {
            addTextToDropBox(dropBoxManager, "system_server_native_crash", str5, str3, i);
        }
        addTextToDropBox(dropBoxManager, str4, str5, str3, i);
    }

    private static void addTextToDropBox(DropBoxManager dropBoxManager, String str, String str2, String str3, int i) {
        Slog.i(TAG, "Copying " + str3 + " to DropBox (" + str + ")");
        dropBoxManager.addText(str, str2);
        EventLog.writeEvent(DropboxLogTags.DROPBOX_FILE_COPY, str3, Integer.valueOf(i), str);
    }

    private static void addAuditErrorsToDropBox(DropBoxManager dropBoxManager, HashMap<String, Long> hashMap, String str, int i, String str2) throws IOException {
        if (dropBoxManager == null || !dropBoxManager.isTagEnabled(str2)) {
            return;
        }
        Slog.i(TAG, "Copying audit failures to DropBox");
        File file = new File("/proc/last_kmsg");
        long lastModified = file.lastModified();
        if (lastModified <= 0) {
            file = new File("/sys/fs/pstore/console-ramoops");
            lastModified = file.lastModified();
            if (lastModified <= 0) {
                file = new File("/sys/fs/pstore/console-ramoops-0");
                lastModified = file.lastModified();
            }
        }
        if (lastModified <= 0) {
            return;
        }
        if (hashMap.containsKey(str2) && hashMap.get(str2).longValue() == lastModified) {
            return;
        }
        hashMap.put(str2, Long.valueOf(lastModified));
        String readTextFile = FileUtils.readTextFile(file, i, "[[TRUNCATED]]\n");
        StringBuilder sb = new StringBuilder();
        for (String str3 : readTextFile.split("\n")) {
            if (str3.contains("audit")) {
                sb.append(str3 + "\n");
            }
        }
        Slog.i(TAG, "Copied " + sb.toString().length() + " worth of audits to DropBox");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(sb.toString());
        dropBoxManager.addText(str2, sb2.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void addFsckErrorsToDropBoxAndLogFsStat(DropBoxManager dropBoxManager, HashMap<String, Long> hashMap, String str, int i, String str2) throws IOException {
        boolean z;
        File file;
        if (dropBoxManager != null && dropBoxManager.isTagEnabled(str2)) {
            z = true;
            Slog.i(TAG, "Checking for fsck errors");
            file = new File("/dev/fscklogs/log");
            if (file.lastModified() > 0) {
                return;
            }
            String readTextFile = FileUtils.readTextFile(file, i, "[[TRUNCATED]]\n");
            Pattern compile = Pattern.compile(FS_STAT_PATTERN);
            String[] split = readTextFile.split("\n");
            boolean z2 = false;
            int i2 = 0;
            int i3 = 0;
            for (String str3 : split) {
                if (str3.contains(FSCK_FS_MODIFIED)) {
                    z2 = true;
                } else if (str3.contains("fs_stat")) {
                    Matcher matcher = compile.matcher(str3);
                    if (matcher.find()) {
                        handleFsckFsStat(matcher, split, i2, i3);
                        i2 = i3;
                    } else {
                        Slog.w(TAG, "cannot parse fs_stat:" + str3);
                    }
                }
                i3++;
            }
            if (z && z2) {
                addFileToDropBox(dropBoxManager, hashMap, str, "/dev/fscklogs/log", i, str2);
            }
            file.delete();
            return;
        }
        z = false;
        Slog.i(TAG, "Checking for fsck errors");
        file = new File("/dev/fscklogs/log");
        if (file.lastModified() > 0) {
        }
    }

    private static void logFsMountTime() {
        for (String str : MOUNT_DURATION_PROPS_POSTFIX) {
            int i = SystemProperties.getInt("ro.boottime.init.mount_all." + str, 0);
            if (i != 0) {
                MetricsLogger.histogram(null, "boot_mount_all_duration_" + str, i);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void logSystemServerShutdownTimeMetrics() {
        String readTextFile;
        File file = new File(SHUTDOWN_METRICS_FILE);
        if (file.exists()) {
            try {
                readTextFile = FileUtils.readTextFile(file, 0, null);
            } catch (IOException e) {
                Slog.e(TAG, "Problem reading " + file, e);
            }
            if (!TextUtils.isEmpty(readTextFile)) {
                String str = null;
                String str2 = null;
                String str3 = null;
                String str4 = null;
                for (String str5 : readTextFile.split(",")) {
                    String[] split = str5.split(":");
                    if (split.length != 2) {
                        Slog.e(TAG, "Wrong format of shutdown metrics - " + readTextFile);
                    } else {
                        if (split[0].startsWith(SHUTDOWN_TRON_METRICS_PREFIX)) {
                            logTronShutdownMetric(split[0], split[1]);
                            if (split[0].equals(METRIC_SYSTEM_SERVER)) {
                                str4 = split[1];
                            }
                        }
                        if (split[0].equals("reboot")) {
                            str = split[1];
                        } else if (split[0].equals("reason")) {
                            str2 = split[1];
                        } else if (split[0].equals(METRIC_SHUTDOWN_TIME_START)) {
                            str3 = split[1];
                        }
                    }
                }
                logStatsdShutdownAtom(str, str2, str3, str4);
            }
            file.delete();
        }
        readTextFile = null;
        if (!TextUtils.isEmpty(readTextFile)) {
        }
        file.delete();
    }

    private static void logTronShutdownMetric(String str, String str2) {
        try {
            int parseInt = Integer.parseInt(str2);
            if (parseInt >= 0) {
                MetricsLogger.histogram(null, str, parseInt);
            }
        } catch (NumberFormatException unused) {
            Slog.e(TAG, "Cannot parse metric " + str + " int value - " + str2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0047 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void logStatsdShutdownAtom(String str, String str2, String str3, String str4) {
        boolean z;
        String str5;
        long parseLong;
        long parseLong2;
        if (str != null) {
            if (!str.equals("y")) {
                if (!str.equals("n")) {
                    Slog.e(TAG, "Unexpected value for reboot : " + str);
                }
            } else {
                z = true;
                boolean z2 = z;
                if (str2 == null) {
                    str5 = str2;
                } else {
                    Slog.e(TAG, "No value received for shutdown reason");
                    str5 = "<EMPTY>";
                }
                if (str3 == null) {
                    try {
                        parseLong = Long.parseLong(str3);
                    } catch (NumberFormatException unused) {
                        Slog.e(TAG, "Cannot parse shutdown start time: " + str3);
                    }
                    if (str4 != null) {
                        try {
                            parseLong2 = Long.parseLong(str4);
                        } catch (NumberFormatException unused2) {
                            Slog.e(TAG, "Cannot parse shutdown duration: " + str3);
                        }
                        StatsLog.write(56, z2, str5, parseLong, parseLong2);
                    }
                    Slog.e(TAG, "No value received for shutdown duration");
                    parseLong2 = 0;
                    StatsLog.write(56, z2, str5, parseLong, parseLong2);
                }
                Slog.e(TAG, "No value received for shutdown start time");
                parseLong = 0;
                if (str4 != null) {
                }
                parseLong2 = 0;
                StatsLog.write(56, z2, str5, parseLong, parseLong2);
            }
        } else {
            Slog.e(TAG, "No value received for reboot");
        }
        z = false;
        boolean z22 = z;
        if (str2 == null) {
        }
        if (str3 == null) {
        }
        parseLong = 0;
        if (str4 != null) {
        }
        parseLong2 = 0;
        StatsLog.write(56, z22, str5, parseLong, parseLong2);
    }

    private static void logFsShutdownTime() {
        File file;
        String[] strArr = LAST_KMSG_FILES;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                file = null;
                break;
            }
            file = new File(strArr[i]);
            if (file.exists()) {
                break;
            } else {
                i++;
            }
        }
        if (file == null) {
            return;
        }
        try {
            Matcher matcher = Pattern.compile(LAST_SHUTDOWN_TIME_PATTERN, 8).matcher(FileUtils.readTextFile(file, -16384, null));
            if (matcher.find()) {
                MetricsLogger.histogram(null, "boot_fs_shutdown_duration", Integer.parseInt(matcher.group(1)));
                MetricsLogger.histogram(null, "boot_fs_shutdown_umount_stat", Integer.parseInt(matcher.group(2)));
                Slog.i(TAG, "boot_fs_shutdown," + matcher.group(1) + "," + matcher.group(2));
                return;
            }
            MetricsLogger.histogram(null, "boot_fs_shutdown_umount_stat", 4);
            Slog.w(TAG, "boot_fs_shutdown, string not found");
        } catch (IOException e) {
            Slog.w(TAG, "cannot read last msg", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0122, code lost:
    
        r12 = false;
        r14 = null;
     */
    @VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int fixFsckFsStat(String str, int i, String[] strArr, int i2, int i3) {
        boolean z;
        String str2;
        if ((i & 1024) != 0) {
            Pattern compile = Pattern.compile(FSCK_PASS_PATTERN);
            Pattern compile2 = Pattern.compile(FSCK_TREE_OPTIMIZATION_PATTERN);
            String str3 = "";
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            int i4 = i2;
            while (true) {
                z = true;
                if (i4 >= i3) {
                    break;
                }
                str2 = strArr[i4];
                if (str2.contains(FSCK_FS_MODIFIED)) {
                    break;
                }
                if (str2.startsWith("Pass ")) {
                    Matcher matcher = compile.matcher(str2);
                    if (matcher.find()) {
                        str3 = matcher.group(1);
                    }
                } else if (str2.startsWith("Inode ")) {
                    if (!compile2.matcher(str2).find() || !str3.equals(AppConstants.VALUE_SHOW)) {
                        break;
                    }
                    Slog.i(TAG, "fs_stat, partition:" + str + " found tree optimization:" + str2);
                    z2 = true;
                } else if (str2.startsWith("[QUOTA WARNING]") && str3.equals("5")) {
                    Slog.i(TAG, "fs_stat, partition:" + str + " found quota warning:" + str2);
                    if (!z2) {
                        z3 = true;
                        z = false;
                        break;
                    }
                    z3 = true;
                } else if (!str2.startsWith("Update quota info") || !str3.equals("5")) {
                    if (str2.startsWith("Timestamp(s) on inode") && str2.contains("beyond 2310-04-04 are likely pre-1970") && str3.equals(AppConstants.VALUE_SHOW)) {
                        Slog.i(TAG, "fs_stat, partition:" + str + " found timestamp adjustment:" + str2);
                        int i5 = i4 + 1;
                        if (strArr[i5].contains("Fix? yes")) {
                            i4 = i5;
                        }
                        z4 = true;
                    } else {
                        String trim = str2.trim();
                        if (!trim.isEmpty() && !str3.isEmpty()) {
                            str2 = trim;
                            break;
                        }
                    }
                }
                i4++;
            }
            if (z) {
                if (str2 != null) {
                    Slog.i(TAG, "fs_stat, partition:" + str + " fix:" + str2);
                }
            } else if (z3 && !z2) {
                Slog.i(TAG, "fs_stat, got quota fix without tree optimization, partition:" + str);
            } else if ((z2 && z3) || z4) {
                Slog.i(TAG, "fs_stat, partition:" + str + " fix ignored");
                return i & (-1025);
            }
        }
        return i;
    }

    private static void handleFsckFsStat(Matcher matcher, String[] strArr, int i, int i2) {
        String group = matcher.group(1);
        try {
            int fixFsckFsStat = fixFsckFsStat(group, Integer.decode(matcher.group(2)).intValue(), strArr, i, i2);
            MetricsLogger.histogram(null, "boot_fs_stat_" + group, fixFsckFsStat);
            Slog.i(TAG, "fs_stat, partition:" + group + " stat:0x" + Integer.toHexString(fixFsckFsStat));
        } catch (NumberFormatException unused) {
            Slog.w(TAG, "cannot parse fs_stat: partition:" + group + " stat:" + matcher.group(2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x015e, code lost:
    
        if (r2 != false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e8, code lost:
    
        if (r2 != false) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static HashMap<String, Long> readTimestamps() {
        HashMap<String, Long> hashMap;
        FileInputStream openRead;
        XmlPullParser newPullParser;
        int next;
        synchronized (sFile) {
            hashMap = new HashMap<>();
            boolean z = false;
            try {
                try {
                    openRead = sFile.openRead();
                    try {
                        newPullParser = Xml.newPullParser();
                        newPullParser.setInput(openRead, StandardCharsets.UTF_8.name());
                        do {
                            next = newPullParser.next();
                            if (next == 2) {
                                break;
                            }
                        } while (next != 1);
                    } finally {
                    }
                } catch (Throwable th) {
                    th = th;
                }
            } catch (FileNotFoundException unused) {
            } catch (IOException e) {
                e = e;
            } catch (IllegalStateException e2) {
                e = e2;
            } catch (NullPointerException e3) {
                e = e3;
            } catch (XmlPullParserException e4) {
                e = e4;
            }
            if (next != 2) {
                throw new IllegalStateException("no start tag found");
            }
            int depth = newPullParser.getDepth();
            while (true) {
                int next2 = newPullParser.next();
                if (next2 == 1 || (next2 == 3 && newPullParser.getDepth() <= depth)) {
                    break;
                }
                if (next2 != 3 && next2 != 4) {
                    if (newPullParser.getName().equals("log")) {
                        hashMap.put(newPullParser.getAttributeValue(null, "filename"), Long.valueOf(Long.valueOf(newPullParser.getAttributeValue(null, "timestamp")).longValue()));
                    } else {
                        Slog.w(TAG, "Unknown tag: " + newPullParser.getName());
                        XmlUtils.skipCurrentTag(newPullParser);
                    }
                }
            }
            if (openRead != null) {
                try {
                    openRead.close();
                } catch (FileNotFoundException unused2) {
                    z = true;
                    Slog.i(TAG, "No existing last log timestamp file " + sFile.getBaseFile() + "; starting empty");
                } catch (IOException e5) {
                    e = e5;
                    z = true;
                    Slog.w(TAG, "Failed parsing " + e);
                    if (!z) {
                        hashMap.clear();
                    }
                    return hashMap;
                } catch (IllegalStateException e6) {
                    e = e6;
                    z = true;
                    Slog.w(TAG, "Failed parsing " + e);
                    if (!z) {
                        hashMap.clear();
                    }
                    return hashMap;
                } catch (NullPointerException e7) {
                    e = e7;
                    z = true;
                    Slog.w(TAG, "Failed parsing " + e);
                    if (!z) {
                        hashMap.clear();
                    }
                    return hashMap;
                } catch (XmlPullParserException e8) {
                    e = e8;
                    z = true;
                    Slog.w(TAG, "Failed parsing " + e);
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                    if (!z) {
                        hashMap.clear();
                    }
                    throw th;
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void writeTimestamps(HashMap<String, Long> hashMap) {
        synchronized (sFile) {
            try {
                try {
                    FileOutputStream startWrite = sFile.startWrite();
                    try {
                        FastXmlSerializer fastXmlSerializer = new FastXmlSerializer();
                        fastXmlSerializer.setOutput(startWrite, StandardCharsets.UTF_8.name());
                        fastXmlSerializer.startDocument(null, true);
                        fastXmlSerializer.startTag(null, "log-files");
                        for (String str : hashMap.keySet()) {
                            fastXmlSerializer.startTag(null, "log");
                            fastXmlSerializer.attribute(null, "filename", str);
                            fastXmlSerializer.attribute(null, "timestamp", hashMap.get(str).toString());
                            fastXmlSerializer.endTag(null, "log");
                        }
                        fastXmlSerializer.endTag(null, "log-files");
                        fastXmlSerializer.endDocument();
                        sFile.finishWrite(startWrite);
                    } catch (IOException e) {
                        Slog.w(TAG, "Failed to write timestamp file, using the backup: " + e);
                        sFile.failWrite(startWrite);
                    }
                } catch (IOException e2) {
                    Slog.w(TAG, "Failed to write timestamp file: " + e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
