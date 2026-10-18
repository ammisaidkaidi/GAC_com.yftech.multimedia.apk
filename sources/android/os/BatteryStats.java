package android.os;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.SystemProto;
import android.os.UidProto;
import android.provider.SettingsStringUtil;
import android.provider.Telephony;
import android.service.notification.ZenModeConfig;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionPlan;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.util.ArrayMap;
import android.util.LongSparseArray;
import android.util.MutableBoolean;
import android.util.Pair;
import android.util.Printer;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TimeUtils;
import android.util.proto.ProtoOutputStream;
import android.view.Menu;
import android.view.SurfaceControl;
import android.view.textclassifier.TextClassifier;
import com.android.internal.annotations.VisibleForTesting;
import com.android.internal.os.BatterySipper;
import com.android.internal.os.BatteryStatsHelper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes2.dex */
public abstract class BatteryStats implements Parcelable {
    private static final String AGGREGATED_WAKELOCK_DATA = "awl";
    public static final int AGGREGATED_WAKE_TYPE_PARTIAL = 20;
    private static final String APK_DATA = "apk";
    private static final String AUDIO_DATA = "aud";
    public static final int AUDIO_TURNED_ON = 15;
    private static final String BATTERY_DATA = "bt";
    private static final String BATTERY_DISCHARGE_DATA = "dc";
    private static final String BATTERY_LEVEL_DATA = "lv";
    private static final int BATTERY_STATS_CHECKIN_VERSION = 9;
    private static final String BLUETOOTH_CONTROLLER_DATA = "ble";
    private static final String BLUETOOTH_MISC_DATA = "blem";
    public static final int BLUETOOTH_SCAN_ON = 19;
    public static final int BLUETOOTH_UNOPTIMIZED_SCAN_ON = 21;
    private static final long BYTES_PER_GB = 1073741824;
    private static final long BYTES_PER_KB = 1024;
    private static final long BYTES_PER_MB = 1048576;
    private static final String CAMERA_DATA = "cam";
    public static final int CAMERA_TURNED_ON = 17;
    private static final String CELLULAR_CONTROLLER_NAME = "Cellular";
    private static final String CHARGE_STEP_DATA = "csd";
    private static final String CHARGE_TIME_REMAIN_DATA = "ctr";
    static final int CHECKIN_VERSION = 32;
    private static final String CPU_DATA = "cpu";
    private static final String CPU_TIMES_AT_FREQ_DATA = "ctf";
    private static final String DATA_CONNECTION_COUNT_DATA = "dcc";
    public static final int DATA_CONNECTION_NONE = 0;
    public static final int DATA_CONNECTION_OTHER = 20;
    private static final String DATA_CONNECTION_TIME_DATA = "dct";
    public static final int DEVICE_IDLE_MODE_DEEP = 2;
    public static final int DEVICE_IDLE_MODE_LIGHT = 1;
    public static final int DEVICE_IDLE_MODE_OFF = 0;
    private static final String DISCHARGE_STEP_DATA = "dsd";
    private static final String DISCHARGE_TIME_REMAIN_DATA = "dtr";
    public static final int DUMP_CHARGED_ONLY = 2;
    public static final int DUMP_DAILY_ONLY = 4;
    public static final int DUMP_DEVICE_WIFI_ONLY = 64;
    public static final int DUMP_HISTORY_ONLY = 8;
    public static final int DUMP_INCLUDE_HISTORY = 16;
    public static final int DUMP_VERBOSE = 32;
    private static final String FLASHLIGHT_DATA = "fla";
    public static final int FLASHLIGHT_TURNED_ON = 16;
    public static final int FOREGROUND_ACTIVITY = 10;
    public static final int FOREGROUND_SERVICE = 22;
    private static final String FOREGROUND_SERVICE_DATA = "fgs";
    public static final int FULL_WIFI_LOCK = 5;
    private static final String GLOBAL_BLUETOOTH_CONTROLLER_DATA = "gble";
    private static final String GLOBAL_CPU_FREQ_DATA = "gcf";
    private static final String GLOBAL_MODEM_CONTROLLER_DATA = "gmcd";
    private static final String GLOBAL_NETWORK_DATA = "gn";
    private static final String GLOBAL_WIFI_CONTROLLER_DATA = "gwfcd";
    private static final String GLOBAL_WIFI_DATA = "gwfl";
    private static final String HISTORY_DATA = "h";
    private static final String HISTORY_STRING_POOL = "hsp";
    public static final int JOB = 14;
    private static final String JOBS_DEFERRED_DATA = "jbd";
    private static final String JOB_COMPLETION_DATA = "jbc";
    private static final String JOB_DATA = "jb";
    private static final String KERNEL_WAKELOCK_DATA = "kwl";
    private static final boolean LOCAL_LOGV = false;
    public static final int MAX_TRACKED_SCREEN_STATE = 4;
    private static final String MISC_DATA = "m";
    private static final String MODEM_CONTROLLER_DATA = "mcd";
    public static final int NETWORK_BT_RX_DATA = 4;
    public static final int NETWORK_BT_TX_DATA = 5;
    private static final String NETWORK_DATA = "nt";
    public static final int NETWORK_MOBILE_BG_RX_DATA = 6;
    public static final int NETWORK_MOBILE_BG_TX_DATA = 7;
    public static final int NETWORK_MOBILE_RX_DATA = 0;
    public static final int NETWORK_MOBILE_TX_DATA = 1;
    public static final int NETWORK_WIFI_BG_RX_DATA = 8;
    public static final int NETWORK_WIFI_BG_TX_DATA = 9;
    public static final int NETWORK_WIFI_RX_DATA = 2;
    public static final int NETWORK_WIFI_TX_DATA = 3;
    public static final int NUM_DATA_CONNECTION_TYPES = 21;
    public static final int NUM_NETWORK_ACTIVITY_TYPES = 10;
    public static final int NUM_SCREEN_BRIGHTNESS_BINS = 5;
    public static final int NUM_WIFI_SIGNAL_STRENGTH_BINS = 5;
    public static final int NUM_WIFI_STATES = 8;
    public static final int NUM_WIFI_SUPPL_STATES = 13;
    private static final String POWER_USE_ITEM_DATA = "pwi";
    private static final String POWER_USE_SUMMARY_DATA = "pws";
    private static final String PROCESS_DATA = "pr";
    public static final int PROCESS_STATE = 12;
    private static final String RESOURCE_POWER_MANAGER_DATA = "rpm";
    public static final String RESULT_RECEIVER_CONTROLLER_KEY = "controller_activity";
    public static final int SCREEN_BRIGHTNESS_BRIGHT = 4;
    public static final int SCREEN_BRIGHTNESS_DARK = 0;
    private static final String SCREEN_BRIGHTNESS_DATA = "br";
    public static final int SCREEN_BRIGHTNESS_DIM = 1;
    public static final int SCREEN_BRIGHTNESS_LIGHT = 3;
    public static final int SCREEN_BRIGHTNESS_MEDIUM = 2;
    protected static final boolean SCREEN_OFF_RPM_STATS_ENABLED = false;
    public static final int SENSOR = 3;
    private static final String SENSOR_DATA = "sr";
    public static final String SERVICE_NAME = "batterystats";
    private static final String SIGNAL_SCANNING_TIME_DATA = "sst";
    private static final String SIGNAL_STRENGTH_COUNT_DATA = "sgc";
    private static final String SIGNAL_STRENGTH_TIME_DATA = "sgt";
    private static final String STATE_TIME_DATA = "st";
    public static final int STATS_CURRENT = 1;
    public static final int STATS_SINCE_CHARGED = 0;
    public static final int STATS_SINCE_UNPLUGGED = 2;
    public static final long STEP_LEVEL_INITIAL_MODE_MASK = 71776119061217280L;
    public static final int STEP_LEVEL_INITIAL_MODE_SHIFT = 48;
    public static final long STEP_LEVEL_LEVEL_MASK = 280375465082880L;
    public static final int STEP_LEVEL_LEVEL_SHIFT = 40;
    public static final int STEP_LEVEL_MODE_DEVICE_IDLE = 8;
    public static final int STEP_LEVEL_MODE_POWER_SAVE = 4;
    public static final int STEP_LEVEL_MODE_SCREEN_STATE = 3;
    public static final long STEP_LEVEL_MODIFIED_MODE_MASK = -72057594037927936L;
    public static final int STEP_LEVEL_MODIFIED_MODE_SHIFT = 56;
    public static final long STEP_LEVEL_TIME_MASK = 1099511627775L;
    public static final int SYNC = 13;
    private static final String SYNC_DATA = "sy";
    private static final String TAG = "BatteryStats";
    private static final String UID_DATA = "uid";

    @VisibleForTesting
    public static final String UID_TIMES_TYPE_ALL = "A";
    private static final String USER_ACTIVITY_DATA = "ua";
    private static final String VERSION_DATA = "vers";
    private static final String VIBRATOR_DATA = "vib";
    public static final int VIBRATOR_ON = 9;
    private static final String VIDEO_DATA = "vid";
    public static final int VIDEO_TURNED_ON = 8;
    private static final String WAKELOCK_DATA = "wl";
    private static final String WAKEUP_ALARM_DATA = "wua";
    private static final String WAKEUP_REASON_DATA = "wr";
    public static final int WAKE_TYPE_DRAW = 18;
    public static final int WAKE_TYPE_FULL = 1;
    public static final int WAKE_TYPE_PARTIAL = 0;
    public static final int WAKE_TYPE_WINDOW = 2;
    public static final int WIFI_AGGREGATE_MULTICAST_ENABLED = 23;
    public static final int WIFI_BATCHED_SCAN = 11;
    private static final String WIFI_CONTROLLER_DATA = "wfcd";
    private static final String WIFI_CONTROLLER_NAME = "WiFi";
    private static final String WIFI_DATA = "wfl";
    private static final String WIFI_MULTICAST_DATA = "wmc";
    public static final int WIFI_MULTICAST_ENABLED = 7;
    private static final String WIFI_MULTICAST_TOTAL_DATA = "wmct";
    public static final int WIFI_RUNNING = 4;
    public static final int WIFI_SCAN = 6;
    private static final String WIFI_SIGNAL_STRENGTH_COUNT_DATA = "wsgc";
    private static final String WIFI_SIGNAL_STRENGTH_TIME_DATA = "wsgt";
    private static final String WIFI_STATE_COUNT_DATA = "wsc";
    public static final int WIFI_STATE_OFF = 0;
    public static final int WIFI_STATE_OFF_SCANNING = 1;
    public static final int WIFI_STATE_ON_CONNECTED_P2P = 5;
    public static final int WIFI_STATE_ON_CONNECTED_STA = 4;
    public static final int WIFI_STATE_ON_CONNECTED_STA_P2P = 6;
    public static final int WIFI_STATE_ON_DISCONNECTED = 3;
    public static final int WIFI_STATE_ON_NO_NETWORKS = 2;
    public static final int WIFI_STATE_SOFT_AP = 7;
    private static final String WIFI_STATE_TIME_DATA = "wst";
    public static final int WIFI_SUPPL_STATE_ASSOCIATED = 7;
    public static final int WIFI_SUPPL_STATE_ASSOCIATING = 6;
    public static final int WIFI_SUPPL_STATE_AUTHENTICATING = 5;
    public static final int WIFI_SUPPL_STATE_COMPLETED = 10;
    private static final String WIFI_SUPPL_STATE_COUNT_DATA = "wssc";
    public static final int WIFI_SUPPL_STATE_DISCONNECTED = 1;
    public static final int WIFI_SUPPL_STATE_DORMANT = 11;
    public static final int WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE = 8;
    public static final int WIFI_SUPPL_STATE_GROUP_HANDSHAKE = 9;
    public static final int WIFI_SUPPL_STATE_INACTIVE = 3;
    public static final int WIFI_SUPPL_STATE_INTERFACE_DISABLED = 2;
    public static final int WIFI_SUPPL_STATE_INVALID = 0;
    public static final int WIFI_SUPPL_STATE_SCANNING = 4;
    private static final String WIFI_SUPPL_STATE_TIME_DATA = "wsst";
    public static final int WIFI_SUPPL_STATE_UNINITIALIZED = 12;
    private final StringBuilder mFormatBuilder = new StringBuilder(32);
    private final Formatter mFormatter = new Formatter(this.mFormatBuilder);
    private static final String[] STAT_NAMES = {"l", "c", "u"};
    public static final long[] JOB_FRESHNESS_BUCKETS = {DateUtils.HOUR_IN_MILLIS, 7200000, 14400000, 28800000, SubscriptionPlan.BYTES_UNLIMITED};
    static final String[] SCREEN_BRIGHTNESS_NAMES = {"dark", "dim", "medium", "light", "bright"};
    static final String[] SCREEN_BRIGHTNESS_SHORT_NAMES = {"0", "1", "2", "3", "4"};
    static final String[] DATA_CONNECTION_NAMES = {"none", "gprs", "edge", "umts", "cdma", "evdo_0", "evdo_A", "1xrtt", "hsdpa", "hsupa", "hspa", "iden", "evdo_b", "lte", "ehrpd", "hspap", "gsm", "td_scdma", "iwlan", "lte_ca", TextClassifier.TYPE_OTHER};
    static final String[] WIFI_SUPPL_STATE_NAMES = {"invalid", "disconn", "disabled", "inactive", "scanning", "authenticating", "associating", "associated", "4-way-handshake", "group-handshake", "completed", "dormant", "uninit"};
    static final String[] WIFI_SUPPL_STATE_SHORT_NAMES = {"inv", "dsc", "dis", "inact", "scan", "auth", "ascing", "asced", "4-way", "group", "compl", "dorm", "uninit"};
    public static final BitDescription[] HISTORY_STATE_DESCRIPTIONS = {new BitDescription(Integer.MIN_VALUE, "running", "r"), new BitDescription(1073741824, "wake_lock", "w"), new BitDescription(8388608, "sensor", "s"), new BitDescription(536870912, "gps", "g"), new BitDescription(268435456, "wifi_full_lock", "Wl"), new BitDescription(134217728, "wifi_scan", "Ws"), new BitDescription(65536, "wifi_multicast", "Wm"), new BitDescription(67108864, "wifi_radio", "Wr"), new BitDescription(33554432, "mobile_radio", "Pr"), new BitDescription(2097152, "phone_scanning", "Psc"), new BitDescription(4194304, "audio", "a"), new BitDescription(1048576, "screen", "S"), new BitDescription(524288, BatteryManager.EXTRA_PLUGGED, "BP"), new BitDescription(262144, "screen_doze", "Sd"), new BitDescription(HistoryItem.STATE_DATA_CONNECTION_MASK, 9, "data_conn", "Pcn", DATA_CONNECTION_NAMES, DATA_CONNECTION_NAMES), new BitDescription(448, 6, "phone_state", "Pst", new String[]{"in", "out", "emergency", "off"}, new String[]{"in", "out", "em", "off"}), new BitDescription(56, 3, "phone_signal_strength", "Pss", SignalStrength.SIGNAL_STRENGTH_NAMES, new String[]{"0", "1", "2", "3", "4"}), new BitDescription(7, 0, "brightness", "Sb", SCREEN_BRIGHTNESS_NAMES, SCREEN_BRIGHTNESS_SHORT_NAMES)};
    public static final BitDescription[] HISTORY_STATE2_DESCRIPTIONS = {new BitDescription(Integer.MIN_VALUE, "power_save", "ps"), new BitDescription(1073741824, "video", Telephony.BaseMmsColumns.MMS_VERSION), new BitDescription(536870912, "wifi_running", "Ww"), new BitDescription(268435456, "wifi", "W"), new BitDescription(134217728, "flashlight", "fl"), new BitDescription(HistoryItem.STATE2_DEVICE_IDLE_MASK, 25, "device_idle", "di", new String[]{"off", "light", "full", "???"}, new String[]{"off", "light", "full", "???"}), new BitDescription(16777216, "charging", "ch"), new BitDescription(262144, "usb_data", "Ud"), new BitDescription(8388608, "phone_in_call", "Pcl"), new BitDescription(4194304, "bluetooth", "b"), new BitDescription(112, 4, "wifi_signal_strength", "Wss", new String[]{"0", "1", "2", "3", "4"}, new String[]{"0", "1", "2", "3", "4"}), new BitDescription(15, 0, "wifi_suppl", "Wsp", WIFI_SUPPL_STATE_NAMES, WIFI_SUPPL_STATE_SHORT_NAMES), new BitDescription(2097152, "camera", "ca"), new BitDescription(1048576, "ble_scan", "bles"), new BitDescription(524288, "cellular_high_tx_power", "Chtp"), new BitDescription(128, 7, "gps_signal_quality", "Gss", new String[]{"poor", "good"}, new String[]{"poor", "good"})};
    private static final String FOREGROUND_ACTIVITY_DATA = "fg";
    public static final String[] HISTORY_EVENT_NAMES = {"null", "proc", FOREGROUND_ACTIVITY_DATA, "top", "sync", "wake_lock_in", "job", "user", "userfg", "conn", "active", "pkginst", "pkgunin", ZenModeConfig.IS_ALARM_PATH, "stats", "pkginactive", "pkgactive", "tmpwhitelist", "screenwake", "wakeupap", "longwake", "est_capacity"};
    public static final String[] HISTORY_EVENT_CHECKIN_NAMES = {"Enl", "Epr", "Efg", "Etp", "Esy", "Ewl", "Ejb", "Eur", "Euf", "Ecn", "Eac", "Epi", "Epu", "Eal", "Est", "Eai", "Eaa", "Etw", "Esw", "Ewa", "Elw", "Eec"};
    private static final IntToString sUidToString = new IntToString() { // from class: android.os.-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0
        @Override // android.os.BatteryStats.IntToString
        public final String applyAsString(int i) {
            return UserHandle.formatUid(i);
        }
    };
    private static final IntToString sIntToString = new IntToString() { // from class: android.os.-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw
        @Override // android.os.BatteryStats.IntToString
        public final String applyAsString(int i) {
            return Integer.toString(i);
        }
    };
    public static final IntToString[] HISTORY_EVENT_INT_FORMATTERS = {sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sUidToString, sIntToString};
    static final String[] WIFI_STATE_NAMES = {"off", "scanning", "no_net", "disconn", "sta", "p2p", "sta_p2p", "soft_ap"};
    public static final int[] STEP_LEVEL_MODES_OF_INTEREST = {7, 15, 11, 7, 7, 7, 7, 7, 15, 11};
    public static final int[] STEP_LEVEL_MODE_VALUES = {0, 4, 8, 1, 5, 2, 6, 3, 7, 11};
    public static final String[] STEP_LEVEL_MODE_LABELS = {"screen off", "screen off power save", "screen off device idle", "screen on", "screen on power save", "screen doze", "screen doze power save", "screen doze-suspend", "screen doze-suspend power save", "screen doze-suspend device idle"};

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class ControllerActivityCounter {
        public abstract LongCounter getIdleTimeCounter();

        public abstract LongCounter getPowerCounter();

        public abstract LongCounter getRxTimeCounter();

        public abstract LongCounter getScanTimeCounter();

        public abstract LongCounter getSleepTimeCounter();

        public abstract LongCounter[] getTxTimeCounters();
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class Counter {
        public abstract int getCountLocked(int i);

        public abstract void logState(Printer printer, String str);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class DailyItem {
        public LevelStepTracker mChargeSteps;
        public LevelStepTracker mDischargeSteps;
        public long mEndTime;
        public ArrayList<PackageChange> mPackageChanges;
        public long mStartTime;
    }

    @FunctionalInterface
    /* loaded from: /home/user/work/dex/classes2.dex */
    public interface IntToString {
        String applyAsString(int i);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class LongCounter {
        public abstract long getCountLocked(int i);

        public abstract void logState(Printer printer, String str);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class LongCounterArray {
        public abstract long[] getCountsLocked(int i);

        public abstract void logState(Printer printer, String str);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class PackageChange {
        public String mPackageName;
        public boolean mUpdate;
        public long mVersionCode;
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class Timer {
        public abstract int getCountLocked(int i);

        public long getCurrentDurationMsLocked(long j) {
            return -1L;
        }

        public long getMaxDurationMsLocked(long j) {
            return -1L;
        }

        public Timer getSubTimer() {
            return null;
        }

        public abstract long getTimeSinceMarkLocked(long j);

        public long getTotalDurationMsLocked(long j) {
            return -1L;
        }

        public abstract long getTotalTimeLocked(long j, int i);

        public boolean isRunningLocked() {
            return false;
        }

        public abstract void logState(Printer printer, String str);
    }

    public static int mapToInternalProcessState(int i) {
        if (i == 19) {
            return 19;
        }
        if (i == 2) {
            return 0;
        }
        if (i == 3) {
            return 1;
        }
        if (i <= 5) {
            return 2;
        }
        if (i <= 10) {
            return 3;
        }
        if (i <= 11) {
            return 4;
        }
        return i <= 12 ? 5 : 6;
    }

    public abstract void commitCurrentHistoryBatchLocked();

    public abstract long computeBatteryRealtime(long j, int i);

    public abstract long computeBatteryScreenOffRealtime(long j, int i);

    public abstract long computeBatteryScreenOffUptime(long j, int i);

    public abstract long computeBatteryTimeRemaining(long j);

    public abstract long computeBatteryUptime(long j, int i);

    public abstract long computeChargeTimeRemaining(long j);

    public abstract long computeRealtime(long j, int i);

    public abstract long computeUptime(long j, int i);

    public abstract void finishIteratingHistoryLocked();

    public abstract void finishIteratingOldHistoryLocked();

    public abstract long getBatteryRealtime(long j);

    public abstract long getBatteryUptime(long j);

    public abstract ControllerActivityCounter getBluetoothControllerActivity();

    public abstract long getBluetoothScanTime(long j, int i);

    public abstract long getCameraOnTime(long j, int i);

    public abstract LevelStepTracker getChargeLevelStepTracker();

    public abstract long[] getCpuFreqs();

    public abstract long getCurrentDailyStartTime();

    public abstract LevelStepTracker getDailyChargeLevelStepTracker();

    public abstract LevelStepTracker getDailyDischargeLevelStepTracker();

    public abstract DailyItem getDailyItemLocked(int i);

    public abstract ArrayList<PackageChange> getDailyPackageChanges();

    public abstract int getDeviceIdleModeCount(int i, int i2);

    public abstract long getDeviceIdleModeTime(int i, long j, int i2);

    public abstract int getDeviceIdlingCount(int i, int i2);

    public abstract long getDeviceIdlingTime(int i, long j, int i2);

    public abstract int getDischargeAmount(int i);

    public abstract int getDischargeAmountScreenDoze();

    public abstract int getDischargeAmountScreenDozeSinceCharge();

    public abstract int getDischargeAmountScreenOff();

    public abstract int getDischargeAmountScreenOffSinceCharge();

    public abstract int getDischargeAmountScreenOn();

    public abstract int getDischargeAmountScreenOnSinceCharge();

    public abstract int getDischargeCurrentLevel();

    public abstract LevelStepTracker getDischargeLevelStepTracker();

    public abstract int getDischargeStartLevel();

    public abstract String getEndPlatformVersion();

    public abstract int getEstimatedBatteryCapacity();

    public abstract long getFlashlightOnCount(int i);

    public abstract long getFlashlightOnTime(long j, int i);

    public abstract long getGlobalWifiRunningTime(long j, int i);

    public abstract long getGpsBatteryDrainMaMs();

    public abstract long getGpsSignalQualityTime(int i, long j, int i2);

    public abstract int getHighDischargeAmountSinceCharge();

    public abstract long getHistoryBaseTime();

    public abstract int getHistoryStringPoolBytes();

    public abstract int getHistoryStringPoolSize();

    public abstract String getHistoryTagPoolString(int i);

    public abstract int getHistoryTagPoolUid(int i);

    public abstract int getHistoryTotalSize();

    public abstract int getHistoryUsedSize();

    public abstract long getInteractiveTime(long j, int i);

    public abstract boolean getIsOnBattery();

    public abstract LongSparseArray<? extends Timer> getKernelMemoryStats();

    public abstract Map<String, ? extends Timer> getKernelWakelockStats();

    public abstract long getLongestDeviceIdleModeTime(int i);

    public abstract int getLowDischargeAmountSinceCharge();

    public abstract int getMaxLearnedBatteryCapacity();

    public abstract int getMinLearnedBatteryCapacity();

    public abstract long getMobileRadioActiveAdjustedTime(int i);

    public abstract int getMobileRadioActiveCount(int i);

    public abstract long getMobileRadioActiveTime(long j, int i);

    public abstract int getMobileRadioActiveUnknownCount(int i);

    public abstract long getMobileRadioActiveUnknownTime(int i);

    public abstract ControllerActivityCounter getModemControllerActivity();

    public abstract long getNetworkActivityBytes(int i, int i2);

    public abstract long getNetworkActivityPackets(int i, int i2);

    public abstract boolean getNextHistoryLocked(HistoryItem historyItem);

    public abstract long getNextMaxDailyDeadline();

    public abstract long getNextMinDailyDeadline();

    public abstract boolean getNextOldHistoryLocked(HistoryItem historyItem);

    public abstract int getNumConnectivityChange(int i);

    public abstract int getParcelVersion();

    public abstract int getPhoneDataConnectionCount(int i, int i2);

    public abstract long getPhoneDataConnectionTime(int i, long j, int i2);

    public abstract Timer getPhoneDataConnectionTimer(int i);

    public abstract int getPhoneOnCount(int i);

    public abstract long getPhoneOnTime(long j, int i);

    public abstract long getPhoneSignalScanningTime(long j, int i);

    public abstract Timer getPhoneSignalScanningTimer();

    public abstract int getPhoneSignalStrengthCount(int i, int i2);

    public abstract long getPhoneSignalStrengthTime(int i, long j, int i2);

    protected abstract Timer getPhoneSignalStrengthTimer(int i);

    public abstract int getPowerSaveModeEnabledCount(int i);

    public abstract long getPowerSaveModeEnabledTime(long j, int i);

    public abstract Map<String, ? extends Timer> getRpmStats();

    public abstract long getScreenBrightnessTime(int i, long j, int i2);

    public abstract Timer getScreenBrightnessTimer(int i);

    public abstract int getScreenDozeCount(int i);

    public abstract long getScreenDozeTime(long j, int i);

    public abstract Map<String, ? extends Timer> getScreenOffRpmStats();

    public abstract int getScreenOnCount(int i);

    public abstract long getScreenOnTime(long j, int i);

    public abstract long getStartClockTime();

    public abstract int getStartCount();

    public abstract String getStartPlatformVersion();

    public abstract long getUahDischarge(int i);

    public abstract long getUahDischargeDeepDoze(int i);

    public abstract long getUahDischargeLightDoze(int i);

    public abstract long getUahDischargeScreenDoze(int i);

    public abstract long getUahDischargeScreenOff(int i);

    public abstract SparseArray<? extends Uid> getUidStats();

    public abstract Map<String, ? extends Timer> getWakeupReasonStats();

    public abstract long getWifiActiveTime(long j, int i);

    public abstract ControllerActivityCounter getWifiControllerActivity();

    public abstract int getWifiMulticastWakelockCount(int i);

    public abstract long getWifiMulticastWakelockTime(long j, int i);

    public abstract long getWifiOnTime(long j, int i);

    public abstract int getWifiSignalStrengthCount(int i, int i2);

    public abstract long getWifiSignalStrengthTime(int i, long j, int i2);

    public abstract Timer getWifiSignalStrengthTimer(int i);

    public abstract int getWifiStateCount(int i, int i2);

    public abstract long getWifiStateTime(int i, long j, int i2);

    public abstract Timer getWifiStateTimer(int i);

    public abstract int getWifiSupplStateCount(int i, int i2);

    public abstract long getWifiSupplStateTime(int i, long j, int i2);

    public abstract Timer getWifiSupplStateTimer(int i);

    public abstract boolean hasBluetoothActivityReporting();

    public abstract boolean hasModemActivityReporting();

    public abstract boolean hasWifiActivityReporting();

    public void prepareForDumpLocked() {
    }

    public abstract boolean startIteratingHistoryLocked();

    public abstract boolean startIteratingOldHistoryLocked();

    public abstract void writeToParcelWithoutUids(Parcel parcel, int i);

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static abstract class Uid {
        public static final int NUM_PROCESS_STATE = 7;
        public static final int NUM_USER_ACTIVITY_TYPES = 4;
        public static final int NUM_WIFI_BATCHED_SCAN_BINS = 5;
        public static final int PROCESS_STATE_BACKGROUND = 3;
        public static final int PROCESS_STATE_CACHED = 6;
        public static final int PROCESS_STATE_FOREGROUND = 2;
        public static final int PROCESS_STATE_FOREGROUND_SERVICE = 1;
        public static final int PROCESS_STATE_HEAVY_WEIGHT = 5;
        public static final int PROCESS_STATE_TOP = 0;
        public static final int PROCESS_STATE_TOP_SLEEPING = 4;
        static final String[] PROCESS_STATE_NAMES = {"Top", "Fg Service", "Foreground", "Background", "Top Sleeping", "Heavy Weight", "Cached"};

        @VisibleForTesting
        public static final String[] UID_PROCESS_TYPES = {"T", "FS", "F", "B", "TS", "HW", "C"};
        public static final int[] CRITICAL_PROC_STATES = {0, 1, 2};
        static final String[] USER_ACTIVITY_TYPES = {TextClassifier.TYPE_OTHER, "button", "touch", "accessibility"};

        /* loaded from: /home/user/work/dex/classes2.dex */
        public static abstract class Pkg {

            /* loaded from: /home/user/work/dex/classes2.dex */
            public static abstract class Serv {
                public abstract int getLaunches(int i);

                public abstract long getStartTime(long j, int i);

                public abstract int getStarts(int i);
            }

            public abstract ArrayMap<String, ? extends Serv> getServiceStats();

            public abstract ArrayMap<String, ? extends Counter> getWakeupAlarmStats();
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        public static abstract class Proc {

            /* loaded from: /home/user/work/dex/classes2.dex */
            public static class ExcessivePower {
                public static final int TYPE_CPU = 2;
                public static final int TYPE_WAKE = 1;
                public long overTime;
                public int type;
                public long usedTime;
            }

            public abstract int countExcessivePowers();

            public abstract ExcessivePower getExcessivePower(int i);

            public abstract long getForegroundTime(int i);

            public abstract int getNumAnrs(int i);

            public abstract int getNumCrashes(int i);

            public abstract int getStarts(int i);

            public abstract long getSystemTime(int i);

            public abstract long getUserTime(int i);

            public abstract boolean isActive();
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        public static abstract class Sensor {
            public static final int GPS = -10000;

            public abstract int getHandle();

            public abstract Timer getSensorBackgroundTime();

            public abstract Timer getSensorTime();
        }

        /* loaded from: /home/user/work/dex/classes2.dex */
        public static abstract class Wakelock {
            public abstract Timer getWakeTime(int i);
        }

        public abstract Timer getAggregatedPartialWakelockTimer();

        public abstract Timer getAudioTurnedOnTimer();

        public abstract ControllerActivityCounter getBluetoothControllerActivity();

        public abstract Timer getBluetoothScanBackgroundTimer();

        public abstract Counter getBluetoothScanResultBgCounter();

        public abstract Counter getBluetoothScanResultCounter();

        public abstract Timer getBluetoothScanTimer();

        public abstract Timer getBluetoothUnoptimizedScanBackgroundTimer();

        public abstract Timer getBluetoothUnoptimizedScanTimer();

        public abstract Timer getCameraTurnedOnTimer();

        public abstract long getCpuActiveTime();

        public abstract long[] getCpuClusterTimes();

        public abstract long[] getCpuFreqTimes(int i);

        public abstract long[] getCpuFreqTimes(int i, int i2);

        public abstract void getDeferredJobsCheckinLineLocked(StringBuilder sb, int i);

        public abstract void getDeferredJobsLineLocked(StringBuilder sb, int i);

        public abstract Timer getFlashlightTurnedOnTimer();

        public abstract Timer getForegroundActivityTimer();

        public abstract Timer getForegroundServiceTimer();

        public abstract long getFullWifiLockTime(long j, int i);

        public abstract ArrayMap<String, SparseIntArray> getJobCompletionStats();

        public abstract ArrayMap<String, ? extends Timer> getJobStats();

        public abstract int getMobileRadioActiveCount(int i);

        public abstract long getMobileRadioActiveTime(int i);

        public abstract long getMobileRadioApWakeupCount(int i);

        public abstract ControllerActivityCounter getModemControllerActivity();

        public abstract Timer getMulticastWakelockStats();

        public abstract long getNetworkActivityBytes(int i, int i2);

        public abstract long getNetworkActivityPackets(int i, int i2);

        public abstract ArrayMap<String, ? extends Pkg> getPackageStats();

        public abstract SparseArray<? extends Pid> getPidStats();

        public abstract long getProcessStateTime(int i, long j, int i2);

        public abstract Timer getProcessStateTimer(int i);

        public abstract ArrayMap<String, ? extends Proc> getProcessStats();

        public abstract long[] getScreenOffCpuFreqTimes(int i);

        public abstract long[] getScreenOffCpuFreqTimes(int i, int i2);

        public abstract SparseArray<? extends Sensor> getSensorStats();

        public abstract ArrayMap<String, ? extends Timer> getSyncStats();

        public abstract long getSystemCpuTimeUs(int i);

        public abstract long getTimeAtCpuSpeed(int i, int i2, int i3);

        public abstract int getUid();

        public abstract int getUserActivityCount(int i, int i2);

        public abstract long getUserCpuTimeUs(int i);

        public abstract Timer getVibratorOnTimer();

        public abstract Timer getVideoTurnedOnTimer();

        public abstract ArrayMap<String, ? extends Wakelock> getWakelockStats();

        public abstract int getWifiBatchedScanCount(int i, int i2);

        public abstract long getWifiBatchedScanTime(int i, long j, int i2);

        public abstract ControllerActivityCounter getWifiControllerActivity();

        public abstract long getWifiMulticastTime(long j, int i);

        public abstract long getWifiRadioApWakeupCount(int i);

        public abstract long getWifiRunningTime(long j, int i);

        public abstract long getWifiScanActualTime(long j);

        public abstract int getWifiScanBackgroundCount(int i);

        public abstract long getWifiScanBackgroundTime(long j);

        public abstract Timer getWifiScanBackgroundTimer();

        public abstract int getWifiScanCount(int i);

        public abstract long getWifiScanTime(long j, int i);

        public abstract Timer getWifiScanTimer();

        public abstract boolean hasNetworkActivity();

        public abstract boolean hasUserActivity();

        public abstract void noteActivityPausedLocked(long j);

        public abstract void noteActivityResumedLocked(long j);

        public abstract void noteFullWifiLockAcquiredLocked(long j);

        public abstract void noteFullWifiLockReleasedLocked(long j);

        public abstract void noteUserActivityLocked(int i);

        public abstract void noteWifiBatchedScanStartedLocked(int i, long j);

        public abstract void noteWifiBatchedScanStoppedLocked(long j);

        public abstract void noteWifiMulticastDisabledLocked(long j);

        public abstract void noteWifiMulticastEnabledLocked(long j);

        public abstract void noteWifiRunningLocked(long j);

        public abstract void noteWifiScanStartedLocked(long j);

        public abstract void noteWifiScanStoppedLocked(long j);

        public abstract void noteWifiStoppedLocked(long j);

        /* loaded from: /home/user/work/dex/classes2.dex */
        public class Pid {
            public int mWakeNesting;
            public long mWakeStartMs;
            public long mWakeSumMs;

            public Pid() {
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class LevelStepTracker {
        public long mLastStepTime = -1;
        public int mNumStepDurations;
        public final long[] mStepDurations;

        public LevelStepTracker(int i) {
            this.mStepDurations = new long[i];
        }

        public LevelStepTracker(int i, long[] jArr) {
            this.mNumStepDurations = i;
            this.mStepDurations = new long[i];
            System.arraycopy(jArr, 0, this.mStepDurations, 0, i);
        }

        public long getDurationAt(int i) {
            return BatteryStats.STEP_LEVEL_TIME_MASK & this.mStepDurations[i];
        }

        public int getLevelAt(int i) {
            return (int) ((BatteryStats.STEP_LEVEL_LEVEL_MASK & this.mStepDurations[i]) >> 40);
        }

        public int getInitModeAt(int i) {
            return (int) ((BatteryStats.STEP_LEVEL_INITIAL_MODE_MASK & this.mStepDurations[i]) >> 48);
        }

        public int getModModeAt(int i) {
            return (int) ((BatteryStats.STEP_LEVEL_MODIFIED_MODE_MASK & this.mStepDurations[i]) >> 56);
        }

        private void appendHex(long j, int i, StringBuilder sb) {
            boolean z = false;
            while (i >= 0) {
                int i2 = (int) ((j >> i) & 15);
                i -= 4;
                if (z || i2 != 0) {
                    z = true;
                    if (i2 >= 0 && i2 <= 9) {
                        sb.append((char) (i2 + 48));
                    } else {
                        sb.append((char) ((i2 + 97) - 10));
                    }
                }
            }
        }

        public void encodeEntryAt(int i, StringBuilder sb) {
            long j = this.mStepDurations[i];
            long j2 = BatteryStats.STEP_LEVEL_TIME_MASK & j;
            int i2 = (int) ((BatteryStats.STEP_LEVEL_LEVEL_MASK & j) >> 40);
            int i3 = (int) ((BatteryStats.STEP_LEVEL_INITIAL_MODE_MASK & j) >> 48);
            int i4 = (int) ((j & BatteryStats.STEP_LEVEL_MODIFIED_MODE_MASK) >> 56);
            switch ((i3 & 3) + 1) {
                case 1:
                    sb.append('f');
                    break;
                case 2:
                    sb.append('o');
                    break;
                case 3:
                    sb.append(DateFormat.DATE);
                    break;
                case 4:
                    sb.append(DateFormat.TIME_ZONE);
                    break;
            }
            if ((i3 & 4) != 0) {
                sb.append('p');
            }
            if ((i3 & 8) != 0) {
                sb.append('i');
            }
            switch ((i4 & 3) + 1) {
                case 1:
                    sb.append('F');
                    break;
                case 2:
                    sb.append('O');
                    break;
                case 3:
                    sb.append('D');
                    break;
                case 4:
                    sb.append('Z');
                    break;
            }
            if ((i4 & 4) != 0) {
                sb.append('P');
            }
            if ((i4 & 8) != 0) {
                sb.append('I');
            }
            sb.append('-');
            appendHex(i2, 4, sb);
            sb.append('-');
            appendHex(j2, 36, sb);
        }

        public void decodeEntryAt(int i, String str) {
            char charAt;
            char charAt2;
            int length = str.length();
            int i2 = 0;
            long j = 0;
            while (i2 < length && (charAt2 = str.charAt(i2)) != '-') {
                i2++;
                switch (charAt2) {
                    case 'D':
                        j |= 144115188075855872L;
                        break;
                    case 'F':
                        j |= 0;
                        break;
                    case 'I':
                        j |= 576460752303423488L;
                        break;
                    case 'O':
                        j |= 72057594037927936L;
                        break;
                    case 'P':
                        j |= 288230376151711744L;
                        break;
                    case 'Z':
                        j |= 216172782113783808L;
                        break;
                    case 'd':
                        j |= 562949953421312L;
                        break;
                    case 'f':
                        j |= 0;
                        break;
                    case 'i':
                        j |= 2251799813685248L;
                        break;
                    case 'o':
                        j |= 281474976710656L;
                        break;
                    case 'p':
                        j |= 1125899906842624L;
                        break;
                    case 'z':
                        j |= 844424930131968L;
                        break;
                }
            }
            int i3 = i2 + 1;
            long j2 = 0;
            while (i3 < length && (charAt = str.charAt(i3)) != '-') {
                i3++;
                j2 <<= 4;
                if (charAt >= '0' && charAt <= '9') {
                    j2 += charAt - '0';
                } else if (charAt >= 'a' && charAt <= 'f') {
                    j2 += (charAt - 'a') + 10;
                } else if (charAt >= 'A' && charAt <= 'F') {
                    j2 += (charAt - 'A') + 10;
                }
            }
            int i4 = i3 + 1;
            long j3 = j | ((j2 << 40) & BatteryStats.STEP_LEVEL_LEVEL_MASK);
            long j4 = 0;
            while (i4 < length) {
                char charAt3 = str.charAt(i4);
                if (charAt3 == '-') {
                    this.mStepDurations[i] = (j4 & BatteryStats.STEP_LEVEL_TIME_MASK) | j3;
                }
                i4++;
                j4 <<= 4;
                if (charAt3 >= '0' && charAt3 <= '9') {
                    j4 += charAt3 - '0';
                } else if (charAt3 >= 'a' && charAt3 <= 'f') {
                    j4 += (charAt3 - 'a') + 10;
                } else if (charAt3 >= 'A' && charAt3 <= 'F') {
                    j4 += (charAt3 - 'A') + 10;
                }
            }
            this.mStepDurations[i] = (j4 & BatteryStats.STEP_LEVEL_TIME_MASK) | j3;
        }

        public void init() {
            this.mLastStepTime = -1L;
            this.mNumStepDurations = 0;
        }

        public void clearTime() {
            this.mLastStepTime = -1L;
        }

        public long computeTimePerLevel() {
            long[] jArr = this.mStepDurations;
            int i = this.mNumStepDurations;
            if (i <= 0) {
                return -1L;
            }
            long j = 0;
            for (int i2 = 0; i2 < i; i2++) {
                j += jArr[i2] & BatteryStats.STEP_LEVEL_TIME_MASK;
            }
            return j / i;
        }

        public long computeTimeEstimate(long j, long j2, int[] iArr) {
            long[] jArr = this.mStepDurations;
            int i = this.mNumStepDurations;
            if (i <= 0) {
                return -1L;
            }
            long j3 = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                long j4 = (jArr[i3] & BatteryStats.STEP_LEVEL_INITIAL_MODE_MASK) >> 48;
                if ((((jArr[i3] & BatteryStats.STEP_LEVEL_MODIFIED_MODE_MASK) >> 56) & j) == 0 && (j4 & j) == j2) {
                    i2++;
                    j3 += jArr[i3] & BatteryStats.STEP_LEVEL_TIME_MASK;
                }
            }
            if (i2 <= 0) {
                return -1L;
            }
            if (iArr != null) {
                iArr[0] = i2;
            }
            return (j3 / i2) * 100;
        }

        public void addLevelSteps(int i, long j, long j2) {
            int i2 = this.mNumStepDurations;
            long j3 = this.mLastStepTime;
            if (j3 >= 0 && i > 0) {
                long[] jArr = this.mStepDurations;
                long j4 = j2 - j3;
                for (int i3 = 0; i3 < i; i3++) {
                    System.arraycopy(jArr, 0, jArr, 1, jArr.length - 1);
                    long j5 = j4 / (i - i3);
                    j4 -= j5;
                    long j6 = BatteryStats.STEP_LEVEL_TIME_MASK;
                    if (j5 <= BatteryStats.STEP_LEVEL_TIME_MASK) {
                        j6 = j5;
                    }
                    jArr[0] = j6 | j;
                }
                i2 += i;
                if (i2 > jArr.length) {
                    i2 = jArr.length;
                }
            }
            this.mNumStepDurations = i2;
            this.mLastStepTime = j2;
        }

        public void readFromParcel(Parcel parcel) {
            int readInt = parcel.readInt();
            if (readInt > this.mStepDurations.length) {
                throw new ParcelFormatException("more step durations than available: " + readInt);
            }
            this.mNumStepDurations = readInt;
            for (int i = 0; i < readInt; i++) {
                this.mStepDurations[i] = parcel.readLong();
            }
        }

        public void writeToParcel(Parcel parcel) {
            int i = this.mNumStepDurations;
            parcel.writeInt(i);
            for (int i2 = 0; i2 < i; i2++) {
                parcel.writeLong(this.mStepDurations[i2]);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class HistoryTag {
        public int poolIdx;
        public String string;
        public int uid;

        public void setTo(HistoryTag historyTag) {
            this.string = historyTag.string;
            this.uid = historyTag.uid;
            this.poolIdx = historyTag.poolIdx;
        }

        public void setTo(String str, int i) {
            this.string = str;
            this.uid = i;
            this.poolIdx = -1;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.string);
            parcel.writeInt(this.uid);
        }

        public void readFromParcel(Parcel parcel) {
            this.string = parcel.readString();
            this.uid = parcel.readInt();
            this.poolIdx = -1;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            HistoryTag historyTag = (HistoryTag) obj;
            return this.uid == historyTag.uid && this.string.equals(historyTag.string);
        }

        public int hashCode() {
            return (this.string.hashCode() * 31) + this.uid;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class HistoryStepDetails {
        public int appCpuSTime1;
        public int appCpuSTime2;
        public int appCpuSTime3;
        public int appCpuUTime1;
        public int appCpuUTime2;
        public int appCpuUTime3;
        public int appCpuUid1;
        public int appCpuUid2;
        public int appCpuUid3;
        public int statIOWaitTime;
        public int statIdlTime;
        public int statIrqTime;
        public String statPlatformIdleState;
        public int statSoftIrqTime;
        public String statSubsystemPowerState;
        public int statSystemTime;
        public int statUserTime;
        public int systemTime;
        public int userTime;

        public HistoryStepDetails() {
            clear();
        }

        public void clear() {
            this.systemTime = 0;
            this.userTime = 0;
            this.appCpuUid3 = -1;
            this.appCpuUid2 = -1;
            this.appCpuUid1 = -1;
            this.appCpuSTime3 = 0;
            this.appCpuUTime3 = 0;
            this.appCpuSTime2 = 0;
            this.appCpuUTime2 = 0;
            this.appCpuSTime1 = 0;
            this.appCpuUTime1 = 0;
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.userTime);
            parcel.writeInt(this.systemTime);
            parcel.writeInt(this.appCpuUid1);
            parcel.writeInt(this.appCpuUTime1);
            parcel.writeInt(this.appCpuSTime1);
            parcel.writeInt(this.appCpuUid2);
            parcel.writeInt(this.appCpuUTime2);
            parcel.writeInt(this.appCpuSTime2);
            parcel.writeInt(this.appCpuUid3);
            parcel.writeInt(this.appCpuUTime3);
            parcel.writeInt(this.appCpuSTime3);
            parcel.writeInt(this.statUserTime);
            parcel.writeInt(this.statSystemTime);
            parcel.writeInt(this.statIOWaitTime);
            parcel.writeInt(this.statIrqTime);
            parcel.writeInt(this.statSoftIrqTime);
            parcel.writeInt(this.statIdlTime);
            parcel.writeString(this.statPlatformIdleState);
            parcel.writeString(this.statSubsystemPowerState);
        }

        public void readFromParcel(Parcel parcel) {
            this.userTime = parcel.readInt();
            this.systemTime = parcel.readInt();
            this.appCpuUid1 = parcel.readInt();
            this.appCpuUTime1 = parcel.readInt();
            this.appCpuSTime1 = parcel.readInt();
            this.appCpuUid2 = parcel.readInt();
            this.appCpuUTime2 = parcel.readInt();
            this.appCpuSTime2 = parcel.readInt();
            this.appCpuUid3 = parcel.readInt();
            this.appCpuUTime3 = parcel.readInt();
            this.appCpuSTime3 = parcel.readInt();
            this.statUserTime = parcel.readInt();
            this.statSystemTime = parcel.readInt();
            this.statIOWaitTime = parcel.readInt();
            this.statIrqTime = parcel.readInt();
            this.statSoftIrqTime = parcel.readInt();
            this.statIdlTime = parcel.readInt();
            this.statPlatformIdleState = parcel.readString();
            this.statSubsystemPowerState = parcel.readString();
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class HistoryItem implements Parcelable {
        public static final byte CMD_CURRENT_TIME = 5;
        public static final byte CMD_NULL = -1;
        public static final byte CMD_OVERFLOW = 6;
        public static final byte CMD_RESET = 7;
        public static final byte CMD_SHUTDOWN = 8;
        public static final byte CMD_START = 4;
        public static final byte CMD_UPDATE = 0;
        public static final int EVENT_ACTIVE = 10;
        public static final int EVENT_ALARM = 13;
        public static final int EVENT_ALARM_FINISH = 16397;
        public static final int EVENT_ALARM_START = 32781;
        public static final int EVENT_COLLECT_EXTERNAL_STATS = 14;
        public static final int EVENT_CONNECTIVITY_CHANGED = 9;
        public static final int EVENT_COUNT = 22;
        public static final int EVENT_FLAG_FINISH = 16384;
        public static final int EVENT_FLAG_START = 32768;
        public static final int EVENT_FOREGROUND = 2;
        public static final int EVENT_FOREGROUND_FINISH = 16386;
        public static final int EVENT_FOREGROUND_START = 32770;
        public static final int EVENT_JOB = 6;
        public static final int EVENT_JOB_FINISH = 16390;
        public static final int EVENT_JOB_START = 32774;
        public static final int EVENT_LONG_WAKE_LOCK = 20;
        public static final int EVENT_LONG_WAKE_LOCK_FINISH = 16404;
        public static final int EVENT_LONG_WAKE_LOCK_START = 32788;
        public static final int EVENT_NONE = 0;
        public static final int EVENT_PACKAGE_ACTIVE = 16;
        public static final int EVENT_PACKAGE_INACTIVE = 15;
        public static final int EVENT_PACKAGE_INSTALLED = 11;
        public static final int EVENT_PACKAGE_UNINSTALLED = 12;
        public static final int EVENT_PROC = 1;
        public static final int EVENT_PROC_FINISH = 16385;
        public static final int EVENT_PROC_START = 32769;
        public static final int EVENT_SCREEN_WAKE_UP = 18;
        public static final int EVENT_SYNC = 4;
        public static final int EVENT_SYNC_FINISH = 16388;
        public static final int EVENT_SYNC_START = 32772;
        public static final int EVENT_TEMP_WHITELIST = 17;
        public static final int EVENT_TEMP_WHITELIST_FINISH = 16401;
        public static final int EVENT_TEMP_WHITELIST_START = 32785;
        public static final int EVENT_TOP = 3;
        public static final int EVENT_TOP_FINISH = 16387;
        public static final int EVENT_TOP_START = 32771;
        public static final int EVENT_TYPE_MASK = -49153;
        public static final int EVENT_USER_FOREGROUND = 8;
        public static final int EVENT_USER_FOREGROUND_FINISH = 16392;
        public static final int EVENT_USER_FOREGROUND_START = 32776;
        public static final int EVENT_USER_RUNNING = 7;
        public static final int EVENT_USER_RUNNING_FINISH = 16391;
        public static final int EVENT_USER_RUNNING_START = 32775;
        public static final int EVENT_WAKEUP_AP = 19;
        public static final int EVENT_WAKE_LOCK = 5;
        public static final int EVENT_WAKE_LOCK_FINISH = 16389;
        public static final int EVENT_WAKE_LOCK_START = 32773;
        public static final int MOST_INTERESTING_STATES = 1835008;
        public static final int MOST_INTERESTING_STATES2 = -1749024768;
        public static final int SETTLE_TO_ZERO_STATES = -1900544;
        public static final int SETTLE_TO_ZERO_STATES2 = 1748959232;
        public static final int STATE2_BLUETOOTH_ON_FLAG = 4194304;
        public static final int STATE2_BLUETOOTH_SCAN_FLAG = 1048576;
        public static final int STATE2_CAMERA_FLAG = 2097152;
        public static final int STATE2_CELLULAR_HIGH_TX_POWER_FLAG = 524288;
        public static final int STATE2_CHARGING_FLAG = 16777216;
        public static final int STATE2_DEVICE_IDLE_MASK = 100663296;
        public static final int STATE2_DEVICE_IDLE_SHIFT = 25;
        public static final int STATE2_FLASHLIGHT_FLAG = 134217728;
        public static final int STATE2_GPS_SIGNAL_QUALITY_MASK = 128;
        public static final int STATE2_GPS_SIGNAL_QUALITY_SHIFT = 7;
        public static final int STATE2_PHONE_IN_CALL_FLAG = 8388608;
        public static final int STATE2_POWER_SAVE_FLAG = Integer.MIN_VALUE;
        public static final int STATE2_USB_DATA_LINK_FLAG = 262144;
        public static final int STATE2_VIDEO_ON_FLAG = 1073741824;
        public static final int STATE2_WIFI_ON_FLAG = 268435456;
        public static final int STATE2_WIFI_RUNNING_FLAG = 536870912;
        public static final int STATE2_WIFI_SIGNAL_STRENGTH_MASK = 112;
        public static final int STATE2_WIFI_SIGNAL_STRENGTH_SHIFT = 4;
        public static final int STATE2_WIFI_SUPPL_STATE_MASK = 15;
        public static final int STATE2_WIFI_SUPPL_STATE_SHIFT = 0;
        public static final int STATE_AUDIO_ON_FLAG = 4194304;
        public static final int STATE_BATTERY_PLUGGED_FLAG = 524288;
        public static final int STATE_BRIGHTNESS_MASK = 7;
        public static final int STATE_BRIGHTNESS_SHIFT = 0;
        public static final int STATE_CPU_RUNNING_FLAG = Integer.MIN_VALUE;
        public static final int STATE_DATA_CONNECTION_MASK = 15872;
        public static final int STATE_DATA_CONNECTION_SHIFT = 9;
        public static final int STATE_GPS_ON_FLAG = 536870912;
        public static final int STATE_MOBILE_RADIO_ACTIVE_FLAG = 33554432;
        public static final int STATE_PHONE_SCANNING_FLAG = 2097152;
        public static final int STATE_PHONE_SIGNAL_STRENGTH_MASK = 56;
        public static final int STATE_PHONE_SIGNAL_STRENGTH_SHIFT = 3;
        public static final int STATE_PHONE_STATE_MASK = 448;
        public static final int STATE_PHONE_STATE_SHIFT = 6;
        private static final int STATE_RESERVED_0 = 16777216;
        public static final int STATE_SCREEN_DOZE_FLAG = 262144;
        public static final int STATE_SCREEN_ON_FLAG = 1048576;
        public static final int STATE_SENSOR_ON_FLAG = 8388608;
        public static final int STATE_WAKE_LOCK_FLAG = 1073741824;
        public static final int STATE_WIFI_FULL_LOCK_FLAG = 268435456;
        public static final int STATE_WIFI_MULTICAST_ON_FLAG = 65536;
        public static final int STATE_WIFI_RADIO_ACTIVE_FLAG = 67108864;
        public static final int STATE_WIFI_SCAN_FLAG = 134217728;
        public int batteryChargeUAh;
        public byte batteryHealth;
        public byte batteryLevel;
        public byte batteryPlugType;
        public byte batteryStatus;
        public short batteryTemperature;
        public char batteryVoltage;
        public byte cmd;
        public long currentTime;
        public int eventCode;
        public HistoryTag eventTag;
        public final HistoryTag localEventTag;
        public final HistoryTag localWakeReasonTag;
        public final HistoryTag localWakelockTag;
        public HistoryItem next;
        public int numReadInts;
        public int states;
        public int states2;
        public HistoryStepDetails stepDetails;
        public long time;
        public HistoryTag wakeReasonTag;
        public HistoryTag wakelockTag;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean isDeltaData() {
            return this.cmd == 0;
        }

        public HistoryItem() {
            this.cmd = (byte) -1;
            this.localWakelockTag = new HistoryTag();
            this.localWakeReasonTag = new HistoryTag();
            this.localEventTag = new HistoryTag();
        }

        public HistoryItem(long j, Parcel parcel) {
            this.cmd = (byte) -1;
            this.localWakelockTag = new HistoryTag();
            this.localWakeReasonTag = new HistoryTag();
            this.localEventTag = new HistoryTag();
            this.time = j;
            this.numReadInts = 2;
            readFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.time);
            parcel.writeInt((this.cmd & CMD_NULL) | ((this.batteryLevel << 8) & 65280) | ((this.batteryStatus << 16) & SurfaceControl.FX_SURFACE_MASK) | ((this.batteryHealth << 20) & 15728640) | ((this.batteryPlugType << 24) & 251658240) | (this.wakelockTag != null ? 268435456 : 0) | (this.wakeReasonTag != null ? 536870912 : 0) | (this.eventCode != 0 ? 1073741824 : 0));
            parcel.writeInt((this.batteryTemperature & 65535) | ((this.batteryVoltage << 16) & Menu.CATEGORY_MASK));
            parcel.writeInt(this.batteryChargeUAh);
            parcel.writeInt(this.states);
            parcel.writeInt(this.states2);
            if (this.wakelockTag != null) {
                this.wakelockTag.writeToParcel(parcel, i);
            }
            if (this.wakeReasonTag != null) {
                this.wakeReasonTag.writeToParcel(parcel, i);
            }
            if (this.eventCode != 0) {
                parcel.writeInt(this.eventCode);
                this.eventTag.writeToParcel(parcel, i);
            }
            if (this.cmd == 5 || this.cmd == 7) {
                parcel.writeLong(this.currentTime);
            }
        }

        public void readFromParcel(Parcel parcel) {
            int dataPosition = parcel.dataPosition();
            int readInt = parcel.readInt();
            this.cmd = (byte) (readInt & 255);
            this.batteryLevel = (byte) ((readInt >> 8) & 255);
            this.batteryStatus = (byte) ((readInt >> 16) & 15);
            this.batteryHealth = (byte) ((readInt >> 20) & 15);
            this.batteryPlugType = (byte) ((readInt >> 24) & 15);
            int readInt2 = parcel.readInt();
            this.batteryTemperature = (short) (readInt2 & 65535);
            this.batteryVoltage = (char) ((readInt2 >> 16) & 65535);
            this.batteryChargeUAh = parcel.readInt();
            this.states = parcel.readInt();
            this.states2 = parcel.readInt();
            if ((268435456 & readInt) != 0) {
                this.wakelockTag = this.localWakelockTag;
                this.wakelockTag.readFromParcel(parcel);
            } else {
                this.wakelockTag = null;
            }
            if ((536870912 & readInt) != 0) {
                this.wakeReasonTag = this.localWakeReasonTag;
                this.wakeReasonTag.readFromParcel(parcel);
            } else {
                this.wakeReasonTag = null;
            }
            if ((readInt & 1073741824) != 0) {
                this.eventCode = parcel.readInt();
                this.eventTag = this.localEventTag;
                this.eventTag.readFromParcel(parcel);
            } else {
                this.eventCode = 0;
                this.eventTag = null;
            }
            if (this.cmd == 5 || this.cmd == 7) {
                this.currentTime = parcel.readLong();
            } else {
                this.currentTime = 0L;
            }
            this.numReadInts += (parcel.dataPosition() - dataPosition) / 4;
        }

        public void clear() {
            this.time = 0L;
            this.cmd = (byte) -1;
            this.batteryLevel = (byte) 0;
            this.batteryStatus = (byte) 0;
            this.batteryHealth = (byte) 0;
            this.batteryPlugType = (byte) 0;
            this.batteryTemperature = (short) 0;
            this.batteryVoltage = (char) 0;
            this.batteryChargeUAh = 0;
            this.states = 0;
            this.states2 = 0;
            this.wakelockTag = null;
            this.wakeReasonTag = null;
            this.eventCode = 0;
            this.eventTag = null;
        }

        public void setTo(HistoryItem historyItem) {
            this.time = historyItem.time;
            this.cmd = historyItem.cmd;
            setToCommon(historyItem);
        }

        public void setTo(long j, byte b, HistoryItem historyItem) {
            this.time = j;
            this.cmd = b;
            setToCommon(historyItem);
        }

        private void setToCommon(HistoryItem historyItem) {
            this.batteryLevel = historyItem.batteryLevel;
            this.batteryStatus = historyItem.batteryStatus;
            this.batteryHealth = historyItem.batteryHealth;
            this.batteryPlugType = historyItem.batteryPlugType;
            this.batteryTemperature = historyItem.batteryTemperature;
            this.batteryVoltage = historyItem.batteryVoltage;
            this.batteryChargeUAh = historyItem.batteryChargeUAh;
            this.states = historyItem.states;
            this.states2 = historyItem.states2;
            if (historyItem.wakelockTag != null) {
                this.wakelockTag = this.localWakelockTag;
                this.wakelockTag.setTo(historyItem.wakelockTag);
            } else {
                this.wakelockTag = null;
            }
            if (historyItem.wakeReasonTag != null) {
                this.wakeReasonTag = this.localWakeReasonTag;
                this.wakeReasonTag.setTo(historyItem.wakeReasonTag);
            } else {
                this.wakeReasonTag = null;
            }
            this.eventCode = historyItem.eventCode;
            if (historyItem.eventTag != null) {
                this.eventTag = this.localEventTag;
                this.eventTag.setTo(historyItem.eventTag);
            } else {
                this.eventTag = null;
            }
            this.currentTime = historyItem.currentTime;
        }

        public boolean sameNonEvent(HistoryItem historyItem) {
            return this.batteryLevel == historyItem.batteryLevel && this.batteryStatus == historyItem.batteryStatus && this.batteryHealth == historyItem.batteryHealth && this.batteryPlugType == historyItem.batteryPlugType && this.batteryTemperature == historyItem.batteryTemperature && this.batteryVoltage == historyItem.batteryVoltage && this.batteryChargeUAh == historyItem.batteryChargeUAh && this.states == historyItem.states && this.states2 == historyItem.states2 && this.currentTime == historyItem.currentTime;
        }

        public boolean same(HistoryItem historyItem) {
            if (!sameNonEvent(historyItem) || this.eventCode != historyItem.eventCode) {
                return false;
            }
            if (this.wakelockTag != historyItem.wakelockTag && (this.wakelockTag == null || historyItem.wakelockTag == null || !this.wakelockTag.equals(historyItem.wakelockTag))) {
                return false;
            }
            if (this.wakeReasonTag != historyItem.wakeReasonTag && (this.wakeReasonTag == null || historyItem.wakeReasonTag == null || !this.wakeReasonTag.equals(historyItem.wakeReasonTag))) {
                return false;
            }
            if (this.eventTag != historyItem.eventTag) {
                return (this.eventTag == null || historyItem.eventTag == null || !this.eventTag.equals(historyItem.eventTag)) ? false : true;
            }
            return true;
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class HistoryEventTracker {
        private final HashMap<String, SparseIntArray>[] mActiveEvents = new HashMap[22];

        public boolean updateState(int i, String str, int i2, int i3) {
            SparseIntArray sparseIntArray;
            int indexOfKey;
            if ((32768 & i) == 0) {
                if ((i & 16384) == 0) {
                    return true;
                }
                HashMap<String, SparseIntArray> hashMap = this.mActiveEvents[i & HistoryItem.EVENT_TYPE_MASK];
                if (hashMap == null || (sparseIntArray = hashMap.get(str)) == null || (indexOfKey = sparseIntArray.indexOfKey(i2)) < 0) {
                    return false;
                }
                sparseIntArray.removeAt(indexOfKey);
                if (sparseIntArray.size() > 0) {
                    return true;
                }
                hashMap.remove(str);
                return true;
            }
            int i4 = i & HistoryItem.EVENT_TYPE_MASK;
            HashMap<String, SparseIntArray> hashMap2 = this.mActiveEvents[i4];
            if (hashMap2 == null) {
                hashMap2 = new HashMap<>();
                this.mActiveEvents[i4] = hashMap2;
            }
            SparseIntArray sparseIntArray2 = hashMap2.get(str);
            if (sparseIntArray2 == null) {
                sparseIntArray2 = new SparseIntArray();
                hashMap2.put(str, sparseIntArray2);
            }
            if (sparseIntArray2.indexOfKey(i2) >= 0) {
                return false;
            }
            sparseIntArray2.put(i2, i3);
            return true;
        }

        public void removeEvents(int i) {
            this.mActiveEvents[i & HistoryItem.EVENT_TYPE_MASK] = null;
        }

        public HashMap<String, SparseIntArray> getStateForEvent(int i) {
            return this.mActiveEvents[i];
        }
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class BitDescription {
        public final int mask;
        public final String name;
        public final int shift;
        public final String shortName;
        public final String[] shortValues;
        public final String[] values;

        public BitDescription(int i, String str, String str2) {
            this.mask = i;
            this.shift = -1;
            this.name = str;
            this.shortName = str2;
            this.values = null;
            this.shortValues = null;
        }

        public BitDescription(int i, int i2, String str, String str2, String[] strArr, String[] strArr2) {
            this.mask = i;
            this.shift = i2;
            this.name = str;
            this.shortName = str2;
            this.values = strArr;
            this.shortValues = strArr2;
        }
    }

    private static final void formatTimeRaw(StringBuilder sb, long j) {
        long j2 = j / 86400;
        if (j2 != 0) {
            sb.append(j2);
            sb.append("d ");
        }
        long j3 = j2 * 60 * 60 * 24;
        long j4 = (j - j3) / 3600;
        if (j4 != 0 || j3 != 0) {
            sb.append(j4);
            sb.append("h ");
        }
        long j5 = j3 + (j4 * 60 * 60);
        long j6 = (j - j5) / 60;
        if (j6 != 0 || j5 != 0) {
            sb.append(j6);
            sb.append("m ");
        }
        long j7 = j5 + (j6 * 60);
        if (j == 0 && j7 == 0) {
            return;
        }
        sb.append(j - j7);
        sb.append("s ");
    }

    public static final void formatTimeMs(StringBuilder sb, long j) {
        long j2 = j / 1000;
        formatTimeRaw(sb, j2);
        sb.append(j - (j2 * 1000));
        sb.append("ms ");
    }

    public static final void formatTimeMsNoSpace(StringBuilder sb, long j) {
        long j2 = j / 1000;
        formatTimeRaw(sb, j2);
        sb.append(j - (j2 * 1000));
        sb.append("ms");
    }

    public final String formatRatioLocked(long j, long j2) {
        if (j2 == 0) {
            return "--%";
        }
        this.mFormatBuilder.setLength(0);
        this.mFormatter.format("%.1f%%", Float.valueOf((((float) j) / ((float) j2)) * 100.0f));
        return this.mFormatBuilder.toString();
    }

    final String formatBytesLocked(long j) {
        this.mFormatBuilder.setLength(0);
        if (j < 1024) {
            return j + "B";
        }
        if (j < 1048576) {
            this.mFormatter.format("%.2fKB", Double.valueOf(j / 1024.0d));
            return this.mFormatBuilder.toString();
        }
        if (j < BYTES_PER_GB) {
            this.mFormatter.format("%.2fMB", Double.valueOf(j / 1048576.0d));
            return this.mFormatBuilder.toString();
        }
        this.mFormatter.format("%.2fGB", Double.valueOf(j / 1.073741824E9d));
        return this.mFormatBuilder.toString();
    }

    private static long roundUsToMs(long j) {
        return (j + 500) / 1000;
    }

    private static long computeWakeLock(Timer timer, long j, int i) {
        if (timer != null) {
            return (timer.getTotalTimeLocked(j, i) + 500) / 1000;
        }
        return 0L;
    }

    private static final String printWakeLock(StringBuilder sb, Timer timer, long j, String str, int i, String str2) {
        if (timer != null) {
            long computeWakeLock = computeWakeLock(timer, j, i);
            int countLocked = timer.getCountLocked(i);
            if (computeWakeLock != 0) {
                sb.append(str2);
                formatTimeMs(sb, computeWakeLock);
                if (str != null) {
                    sb.append(str);
                    sb.append(' ');
                }
                sb.append('(');
                sb.append(countLocked);
                sb.append(" times)");
                long j2 = j / 1000;
                long maxDurationMsLocked = timer.getMaxDurationMsLocked(j2);
                if (maxDurationMsLocked >= 0) {
                    sb.append(" max=");
                    sb.append(maxDurationMsLocked);
                }
                long totalDurationMsLocked = timer.getTotalDurationMsLocked(j2);
                if (totalDurationMsLocked > computeWakeLock) {
                    sb.append(" actual=");
                    sb.append(totalDurationMsLocked);
                }
                if (!timer.isRunningLocked()) {
                    return ", ";
                }
                long currentDurationMsLocked = timer.getCurrentDurationMsLocked(j2);
                if (currentDurationMsLocked >= 0) {
                    sb.append(" (running for ");
                    sb.append(currentDurationMsLocked);
                    sb.append("ms)");
                    return ", ";
                }
                sb.append(" (running)");
                return ", ";
            }
        }
        return str2;
    }

    private static final boolean printTimer(PrintWriter printWriter, StringBuilder sb, Timer timer, long j, int i, String str, String str2) {
        if (timer != null) {
            long totalTimeLocked = (timer.getTotalTimeLocked(j, i) + 500) / 1000;
            int countLocked = timer.getCountLocked(i);
            if (totalTimeLocked != 0) {
                sb.setLength(0);
                sb.append(str);
                sb.append("    ");
                sb.append(str2);
                sb.append(": ");
                formatTimeMs(sb, totalTimeLocked);
                sb.append("realtime (");
                sb.append(countLocked);
                sb.append(" times)");
                long j2 = j / 1000;
                long maxDurationMsLocked = timer.getMaxDurationMsLocked(j2);
                if (maxDurationMsLocked >= 0) {
                    sb.append(" max=");
                    sb.append(maxDurationMsLocked);
                }
                if (timer.isRunningLocked()) {
                    long currentDurationMsLocked = timer.getCurrentDurationMsLocked(j2);
                    if (currentDurationMsLocked >= 0) {
                        sb.append(" (running for ");
                        sb.append(currentDurationMsLocked);
                        sb.append("ms)");
                    } else {
                        sb.append(" (running)");
                    }
                }
                printWriter.println(sb.toString());
                return true;
            }
        }
        return false;
    }

    private static final String printWakeLockCheckin(StringBuilder sb, Timer timer, long j, String str, int i, String str2) {
        int i2;
        String str3;
        long j2;
        long j3;
        long j4;
        String str4;
        long j5 = 0;
        if (timer != null) {
            j5 = timer.getTotalTimeLocked(j, i);
            i2 = timer.getCountLocked(i);
            long j6 = j / 1000;
            j3 = timer.getCurrentDurationMsLocked(j6);
            j4 = timer.getMaxDurationMsLocked(j6);
            j2 = timer.getTotalDurationMsLocked(j6);
            str3 = str2;
        } else {
            i2 = 0;
            str3 = str2;
            j2 = 0;
            j3 = 0;
            j4 = 0;
        }
        sb.append(str3);
        sb.append((j5 + 500) / 1000);
        sb.append(',');
        if (str != null) {
            str4 = str + ",";
        } else {
            str4 = TextClassifier.TYPE_UNKNOWN;
        }
        sb.append(str4);
        sb.append(i2);
        sb.append(',');
        sb.append(j3);
        sb.append(',');
        sb.append(j4);
        if (str == null) {
            return ",";
        }
        sb.append(',');
        sb.append(j2);
        return ",";
    }

    private static final void dumpLineHeader(PrintWriter printWriter, int i, String str, String str2) {
        printWriter.print(9);
        printWriter.print(',');
        printWriter.print(i);
        printWriter.print(',');
        printWriter.print(str);
        printWriter.print(',');
        printWriter.print(str2);
    }

    private static final void dumpLine(PrintWriter printWriter, int i, String str, String str2, Object... objArr) {
        dumpLineHeader(printWriter, i, str, str2);
        for (Object obj : objArr) {
            printWriter.print(',');
            printWriter.print(obj);
        }
        printWriter.println();
    }

    private static final void dumpTimer(PrintWriter printWriter, int i, String str, String str2, Timer timer, long j, int i2) {
        if (timer != null) {
            long roundUsToMs = roundUsToMs(timer.getTotalTimeLocked(j, i2));
            int countLocked = timer.getCountLocked(i2);
            if (roundUsToMs == 0 && countLocked == 0) {
                return;
            }
            dumpLine(printWriter, i, str, str2, Long.valueOf(roundUsToMs), Integer.valueOf(countLocked));
        }
    }

    private static void dumpTimer(ProtoOutputStream protoOutputStream, long j, Timer timer, long j2, int i) {
        if (timer == null) {
            return;
        }
        long roundUsToMs = roundUsToMs(timer.getTotalTimeLocked(j2, i));
        int countLocked = timer.getCountLocked(i);
        long j3 = j2 / 1000;
        long maxDurationMsLocked = timer.getMaxDurationMsLocked(j3);
        long currentDurationMsLocked = timer.getCurrentDurationMsLocked(j3);
        long totalDurationMsLocked = timer.getTotalDurationMsLocked(j3);
        if (roundUsToMs == 0 && countLocked == 0 && maxDurationMsLocked == -1 && currentDurationMsLocked == -1 && totalDurationMsLocked == -1) {
            return;
        }
        long start = protoOutputStream.start(j);
        protoOutputStream.write(1112396529665L, roundUsToMs);
        protoOutputStream.write(1112396529666L, countLocked);
        if (maxDurationMsLocked != -1) {
            protoOutputStream.write(1112396529667L, maxDurationMsLocked);
        }
        if (currentDurationMsLocked != -1) {
            protoOutputStream.write(1112396529668L, currentDurationMsLocked);
        }
        if (totalDurationMsLocked != -1) {
            protoOutputStream.write(1112396529669L, totalDurationMsLocked);
        }
        protoOutputStream.end(start);
    }

    private static boolean controllerActivityHasData(ControllerActivityCounter controllerActivityCounter, int i) {
        if (controllerActivityCounter == null) {
            return false;
        }
        if (controllerActivityCounter.getIdleTimeCounter().getCountLocked(i) != 0 || controllerActivityCounter.getRxTimeCounter().getCountLocked(i) != 0 || controllerActivityCounter.getPowerCounter().getCountLocked(i) != 0) {
            return true;
        }
        for (LongCounter longCounter : controllerActivityCounter.getTxTimeCounters()) {
            if (longCounter.getCountLocked(i) != 0) {
                return true;
            }
        }
        return false;
    }

    private static final void dumpControllerActivityLine(PrintWriter printWriter, int i, String str, String str2, ControllerActivityCounter controllerActivityCounter, int i2) {
        if (controllerActivityHasData(controllerActivityCounter, i2)) {
            dumpLineHeader(printWriter, i, str, str2);
            printWriter.print(",");
            printWriter.print(controllerActivityCounter.getIdleTimeCounter().getCountLocked(i2));
            printWriter.print(",");
            printWriter.print(controllerActivityCounter.getRxTimeCounter().getCountLocked(i2));
            printWriter.print(",");
            printWriter.print(controllerActivityCounter.getPowerCounter().getCountLocked(i2) / DateUtils.HOUR_IN_MILLIS);
            for (LongCounter longCounter : controllerActivityCounter.getTxTimeCounters()) {
                printWriter.print(",");
                printWriter.print(longCounter.getCountLocked(i2));
            }
            printWriter.println();
        }
    }

    private static void dumpControllerActivityProto(ProtoOutputStream protoOutputStream, long j, ControllerActivityCounter controllerActivityCounter, int i) {
        if (controllerActivityHasData(controllerActivityCounter, i)) {
            long start = protoOutputStream.start(j);
            protoOutputStream.write(1112396529665L, controllerActivityCounter.getIdleTimeCounter().getCountLocked(i));
            protoOutputStream.write(1112396529666L, controllerActivityCounter.getRxTimeCounter().getCountLocked(i));
            protoOutputStream.write(1112396529667L, controllerActivityCounter.getPowerCounter().getCountLocked(i) / DateUtils.HOUR_IN_MILLIS);
            LongCounter[] txTimeCounters = controllerActivityCounter.getTxTimeCounters();
            for (int i2 = 0; i2 < txTimeCounters.length; i2++) {
                LongCounter longCounter = txTimeCounters[i2];
                long start2 = protoOutputStream.start(2246267895812L);
                protoOutputStream.write(1120986464257L, i2);
                protoOutputStream.write(1112396529666L, longCounter.getCountLocked(i));
                protoOutputStream.end(start2);
            }
            protoOutputStream.end(start);
        }
    }

    private final void printControllerActivityIfInteresting(PrintWriter printWriter, StringBuilder sb, String str, String str2, ControllerActivityCounter controllerActivityCounter, int i) {
        if (controllerActivityHasData(controllerActivityCounter, i)) {
            printControllerActivity(printWriter, sb, str, str2, controllerActivityCounter, i);
        }
    }

    private final void printControllerActivity(PrintWriter printWriter, StringBuilder sb, String str, String str2, ControllerActivityCounter controllerActivityCounter, int i) {
        String[] strArr;
        long countLocked = controllerActivityCounter.getIdleTimeCounter().getCountLocked(i);
        long countLocked2 = controllerActivityCounter.getRxTimeCounter().getCountLocked(i);
        long countLocked3 = controllerActivityCounter.getPowerCounter().getCountLocked(i);
        long computeBatteryRealtime = computeBatteryRealtime(SystemClock.elapsedRealtime() * 1000, i) / 1000;
        LongCounter[] txTimeCounters = controllerActivityCounter.getTxTimeCounters();
        int i2 = 0;
        long j = 0;
        for (int length = txTimeCounters.length; i2 < length; length = length) {
            j += txTimeCounters[i2].getCountLocked(i);
            i2++;
        }
        if (str2.equals(WIFI_CONTROLLER_NAME)) {
            long countLocked4 = controllerActivityCounter.getScanTimeCounter().getCountLocked(i);
            sb.setLength(0);
            sb.append(str);
            sb.append("     ");
            sb.append(str2);
            sb.append(" Scan time:  ");
            formatTimeMs(sb, countLocked4);
            sb.append("(");
            sb.append(formatRatioLocked(countLocked4, computeBatteryRealtime));
            sb.append(")");
            printWriter.println(sb.toString());
            long j2 = computeBatteryRealtime - ((countLocked + countLocked2) + j);
            sb.setLength(0);
            sb.append(str);
            sb.append("     ");
            sb.append(str2);
            sb.append(" Sleep time:  ");
            formatTimeMs(sb, j2);
            sb.append("(");
            sb.append(formatRatioLocked(j2, computeBatteryRealtime));
            sb.append(")");
            printWriter.println(sb.toString());
        }
        if (str2.equals(CELLULAR_CONTROLLER_NAME)) {
            long countLocked5 = controllerActivityCounter.getSleepTimeCounter().getCountLocked(i);
            sb.setLength(0);
            sb.append(str);
            sb.append("     ");
            sb.append(str2);
            sb.append(" Sleep time:  ");
            formatTimeMs(sb, countLocked5);
            sb.append("(");
            sb.append(formatRatioLocked(countLocked5, computeBatteryRealtime));
            sb.append(")");
            printWriter.println(sb.toString());
        }
        sb.setLength(0);
        sb.append(str);
        sb.append("     ");
        sb.append(str2);
        sb.append(" Idle time:   ");
        formatTimeMs(sb, countLocked);
        sb.append("(");
        sb.append(formatRatioLocked(countLocked, computeBatteryRealtime));
        sb.append(")");
        printWriter.println(sb.toString());
        sb.setLength(0);
        sb.append(str);
        sb.append("     ");
        sb.append(str2);
        sb.append(" Rx time:     ");
        formatTimeMs(sb, countLocked2);
        sb.append("(");
        sb.append(formatRatioLocked(countLocked2, computeBatteryRealtime));
        sb.append(")");
        printWriter.println(sb.toString());
        sb.setLength(0);
        sb.append(str);
        sb.append("     ");
        sb.append(str2);
        sb.append(" Tx time:     ");
        char c = 65535;
        if (str2.hashCode() == -851952246 && str2.equals(CELLULAR_CONTROLLER_NAME)) {
            c = 0;
        }
        if (c == 0) {
            strArr = new String[]{"   less than 0dBm: ", "   0dBm to 8dBm: ", "   8dBm to 15dBm: ", "   15dBm to 20dBm: ", "   above 20dBm: "};
        } else {
            strArr = new String[]{"[0]", "[1]", "[2]", "[3]", "[4]"};
        }
        int min = Math.min(controllerActivityCounter.getTxTimeCounters().length, strArr.length);
        if (min > 1) {
            printWriter.println(sb.toString());
            for (int i3 = 0; i3 < min; i3++) {
                long countLocked6 = controllerActivityCounter.getTxTimeCounters()[i3].getCountLocked(i);
                sb.setLength(0);
                sb.append(str);
                sb.append("    ");
                sb.append(strArr[i3]);
                sb.append(" ");
                formatTimeMs(sb, countLocked6);
                sb.append("(");
                sb.append(formatRatioLocked(countLocked6, computeBatteryRealtime));
                sb.append(")");
                printWriter.println(sb.toString());
            }
        } else {
            long countLocked7 = controllerActivityCounter.getTxTimeCounters()[0].getCountLocked(i);
            formatTimeMs(sb, countLocked7);
            sb.append("(");
            sb.append(formatRatioLocked(countLocked7, computeBatteryRealtime));
            sb.append(")");
            printWriter.println(sb.toString());
        }
        if (countLocked3 > 0) {
            sb.setLength(0);
            sb.append(str);
            sb.append("     ");
            sb.append(str2);
            sb.append(" Battery drain: ");
            sb.append(BatteryStatsHelper.makemAh(countLocked3 / 3600000.0d));
            sb.append("mAh");
            printWriter.println(sb.toString());
        }
    }

    public final void dumpCheckinLocked(Context context, PrintWriter printWriter, int i, int i2) {
        dumpCheckinLocked(context, printWriter, i, i2, BatteryStatsHelper.checkWifiOnly(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:253:0x0bd7  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0bfd  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x0c36  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0cfb  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0d32  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0dc6  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x0e5e  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0ed2  */
    /* JADX WARN: Removed duplicated region for block: B:346:0x0f1b  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x0fe5 A[LOOP:25: B:367:0x0fe3->B:368:0x0fe5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:372:0x100a  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x101c  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x1048  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x10e7  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x117c  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x122a  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x1168  */
    /* JADX WARN: Removed duplicated region for block: B:488:0x0d24  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0c29  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void dumpCheckinLocked(Context context, PrintWriter printWriter, int i, int i2, boolean z) {
        String str;
        StringBuilder sb;
        char c;
        int i3;
        long j;
        SparseArray<? extends Uid> sparseArray;
        int i4;
        long j2;
        int i5;
        int size;
        long[] jArr;
        Timer multicastWakelockStats;
        long j3;
        int i6;
        int size2;
        int size3;
        int size4;
        StringBuilder sb2;
        int size5;
        int i7;
        int i8;
        long j4;
        int i9;
        long userCpuTimeUs;
        long systemCpuTimeUs;
        int i10;
        long j5;
        long j6;
        long[] jArr2;
        StringBuilder sb3;
        int size6;
        StringBuilder sb4;
        long[] jArr3;
        int size7;
        long j7;
        long j8;
        StringBuilder sb5;
        long[] jArr4;
        Uid uid;
        int i11;
        SparseArray<? extends Uid.Sensor> sparseArray2;
        StringBuilder sb6;
        long j9;
        long j10;
        int i12;
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        long j16;
        long j17;
        int i13;
        long j18;
        int i14;
        int i15;
        String str2;
        long uptimeMillis = SystemClock.uptimeMillis() * 1000;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j19 = elapsedRealtime * 1000;
        long batteryUptime = getBatteryUptime(uptimeMillis);
        long computeBatteryUptime = computeBatteryUptime(uptimeMillis, i);
        long computeBatteryRealtime = computeBatteryRealtime(j19, i);
        long computeBatteryScreenOffUptime = computeBatteryScreenOffUptime(uptimeMillis, i);
        long computeBatteryScreenOffRealtime = computeBatteryScreenOffRealtime(j19, i);
        long computeRealtime = computeRealtime(j19, i);
        long computeUptime = computeUptime(uptimeMillis, i);
        long screenOnTime = getScreenOnTime(j19, i);
        long screenDozeTime = getScreenDozeTime(j19, i);
        long interactiveTime = getInteractiveTime(j19, i);
        long powerSaveModeEnabledTime = getPowerSaveModeEnabledTime(j19, i);
        long deviceIdleModeTime = getDeviceIdleModeTime(1, j19, i);
        long deviceIdleModeTime2 = getDeviceIdleModeTime(2, j19, i);
        long deviceIdlingTime = getDeviceIdlingTime(1, j19, i);
        long deviceIdlingTime2 = getDeviceIdlingTime(2, j19, i);
        int numConnectivityChange = getNumConnectivityChange(i);
        long phoneOnTime = getPhoneOnTime(j19, i);
        long uahDischarge = getUahDischarge(i);
        long uahDischargeScreenOff = getUahDischargeScreenOff(i);
        long uahDischargeScreenDoze = getUahDischargeScreenDoze(i);
        long uahDischargeLightDoze = getUahDischargeLightDoze(i);
        long uahDischargeDeepDoze = getUahDischargeDeepDoze(i);
        StringBuilder sb7 = new StringBuilder(128);
        SparseArray<? extends Uid> uidStats = getUidStats();
        long j20 = elapsedRealtime;
        int size8 = uidStats.size();
        String str3 = STAT_NAMES[i];
        Object[] objArr = new Object[12];
        StringBuilder sb8 = sb7;
        objArr[0] = i == 0 ? Integer.valueOf(getStartCount()) : "N/A";
        objArr[1] = Long.valueOf(computeBatteryRealtime / 1000);
        objArr[2] = Long.valueOf(computeBatteryUptime / 1000);
        objArr[3] = Long.valueOf(computeRealtime / 1000);
        objArr[4] = Long.valueOf(computeUptime / 1000);
        objArr[5] = Long.valueOf(getStartClockTime());
        objArr[6] = Long.valueOf(computeBatteryScreenOffRealtime / 1000);
        objArr[7] = Long.valueOf(computeBatteryScreenOffUptime / 1000);
        objArr[8] = Integer.valueOf(getEstimatedBatteryCapacity());
        objArr[9] = Integer.valueOf(getMinLearnedBatteryCapacity());
        objArr[10] = Integer.valueOf(getMaxLearnedBatteryCapacity());
        objArr[11] = Long.valueOf(screenDozeTime / 1000);
        dumpLine(printWriter, 0, str3, BATTERY_DATA, objArr);
        long j21 = 0;
        long j22 = 0;
        for (int i16 = 0; i16 < size8; i16++) {
            ArrayMap<String, ? extends Uid.Wakelock> wakelockStats = uidStats.valueAt(i16).getWakelockStats();
            int i17 = 1;
            int size9 = wakelockStats.size() - 1;
            while (size9 >= 0) {
                Uid.Wakelock valueAt = wakelockStats.valueAt(size9);
                Timer wakeTime = valueAt.getWakeTime(i17);
                if (wakeTime != null) {
                    j21 += wakeTime.getTotalTimeLocked(j19, i);
                }
                Timer wakeTime2 = valueAt.getWakeTime(0);
                if (wakeTime2 != null) {
                    j22 += wakeTime2.getTotalTimeLocked(j19, i);
                }
                size9--;
                i17 = 1;
            }
        }
        dumpLine(printWriter, 0, str3, GLOBAL_NETWORK_DATA, Long.valueOf(getNetworkActivityBytes(0, i)), Long.valueOf(getNetworkActivityBytes(1, i)), Long.valueOf(getNetworkActivityBytes(2, i)), Long.valueOf(getNetworkActivityBytes(3, i)), Long.valueOf(getNetworkActivityPackets(0, i)), Long.valueOf(getNetworkActivityPackets(1, i)), Long.valueOf(getNetworkActivityPackets(2, i)), Long.valueOf(getNetworkActivityPackets(3, i)), Long.valueOf(getNetworkActivityBytes(4, i)), Long.valueOf(getNetworkActivityBytes(5, i)));
        SparseArray<? extends Uid> sparseArray3 = uidStats;
        long j23 = batteryUptime;
        long j24 = j19;
        dumpControllerActivityLine(printWriter, 0, str3, GLOBAL_MODEM_CONTROLLER_DATA, getModemControllerActivity(), i);
        String str4 = str3;
        dumpLine(printWriter, 0, str4, GLOBAL_WIFI_DATA, Long.valueOf(getWifiOnTime(j24, i) / 1000), Long.valueOf(getGlobalWifiRunningTime(j24, i) / 1000), 0, 0, 0);
        dumpControllerActivityLine(printWriter, 0, str4, GLOBAL_WIFI_CONTROLLER_DATA, getWifiControllerActivity(), i);
        dumpControllerActivityLine(printWriter, 0, str4, GLOBAL_BLUETOOTH_CONTROLLER_DATA, getBluetoothControllerActivity(), i);
        dumpLine(printWriter, 0, str4, MISC_DATA, Long.valueOf(screenOnTime / 1000), Long.valueOf(phoneOnTime / 1000), Long.valueOf(j21 / 1000), Long.valueOf(j22 / 1000), Long.valueOf(getMobileRadioActiveTime(j24, i) / 1000), Long.valueOf(getMobileRadioActiveAdjustedTime(i) / 1000), Long.valueOf(interactiveTime / 1000), Long.valueOf(powerSaveModeEnabledTime / 1000), Integer.valueOf(numConnectivityChange), Long.valueOf(deviceIdleModeTime2 / 1000), Integer.valueOf(getDeviceIdleModeCount(2, i)), Long.valueOf(deviceIdlingTime2 / 1000), Integer.valueOf(getDeviceIdlingCount(2, i)), Integer.valueOf(getMobileRadioActiveCount(i)), Long.valueOf(getMobileRadioActiveUnknownTime(i) / 1000), Long.valueOf(deviceIdleModeTime / 1000), Integer.valueOf(getDeviceIdleModeCount(1, i)), Long.valueOf(deviceIdlingTime / 1000), Integer.valueOf(getDeviceIdlingCount(1, i)), Long.valueOf(getLongestDeviceIdleModeTime(1)), Long.valueOf(getLongestDeviceIdleModeTime(2)));
        Object[] objArr2 = new Object[5];
        for (int i18 = 0; i18 < 5; i18++) {
            objArr2[i18] = Long.valueOf(getScreenBrightnessTime(i18, j24, i) / 1000);
        }
        dumpLine(printWriter, 0, str4, SCREEN_BRIGHTNESS_DATA, objArr2);
        Object[] objArr3 = new Object[5];
        for (int i19 = 0; i19 < 5; i19++) {
            objArr3[i19] = Long.valueOf(getPhoneSignalStrengthTime(i19, j24, i) / 1000);
        }
        dumpLine(printWriter, 0, str4, SIGNAL_STRENGTH_TIME_DATA, objArr3);
        dumpLine(printWriter, 0, str4, SIGNAL_SCANNING_TIME_DATA, Long.valueOf(getPhoneSignalScanningTime(j24, i) / 1000));
        for (int i20 = 0; i20 < 5; i20++) {
            objArr3[i20] = Integer.valueOf(getPhoneSignalStrengthCount(i20, i));
        }
        dumpLine(printWriter, 0, str4, SIGNAL_STRENGTH_COUNT_DATA, objArr3);
        Object[] objArr4 = new Object[21];
        for (int i21 = 0; i21 < 21; i21++) {
            objArr4[i21] = Long.valueOf(getPhoneDataConnectionTime(i21, j24, i) / 1000);
        }
        dumpLine(printWriter, 0, str4, DATA_CONNECTION_TIME_DATA, objArr4);
        for (int i22 = 0; i22 < 21; i22++) {
            objArr4[i22] = Integer.valueOf(getPhoneDataConnectionCount(i22, i));
        }
        dumpLine(printWriter, 0, str4, DATA_CONNECTION_COUNT_DATA, objArr4);
        Object[] objArr5 = new Object[8];
        for (int i23 = 0; i23 < 8; i23++) {
            objArr5[i23] = Long.valueOf(getWifiStateTime(i23, j24, i) / 1000);
        }
        dumpLine(printWriter, 0, str4, WIFI_STATE_TIME_DATA, objArr5);
        for (int i24 = 0; i24 < 8; i24++) {
            objArr5[i24] = Integer.valueOf(getWifiStateCount(i24, i));
        }
        dumpLine(printWriter, 0, str4, WIFI_STATE_COUNT_DATA, objArr5);
        Object[] objArr6 = new Object[13];
        for (int i25 = 0; i25 < 13; i25++) {
            objArr6[i25] = Long.valueOf(getWifiSupplStateTime(i25, j24, i) / 1000);
        }
        dumpLine(printWriter, 0, str4, WIFI_SUPPL_STATE_TIME_DATA, objArr6);
        for (int i26 = 0; i26 < 13; i26++) {
            objArr6[i26] = Integer.valueOf(getWifiSupplStateCount(i26, i));
        }
        dumpLine(printWriter, 0, str4, WIFI_SUPPL_STATE_COUNT_DATA, objArr6);
        Object[] objArr7 = new Object[5];
        for (int i27 = 0; i27 < 5; i27++) {
            objArr7[i27] = Long.valueOf(getWifiSignalStrengthTime(i27, j24, i) / 1000);
        }
        dumpLine(printWriter, 0, str4, WIFI_SIGNAL_STRENGTH_TIME_DATA, objArr7);
        for (int i28 = 0; i28 < 5; i28++) {
            objArr7[i28] = Integer.valueOf(getWifiSignalStrengthCount(i28, i));
        }
        dumpLine(printWriter, 0, str4, WIFI_SIGNAL_STRENGTH_COUNT_DATA, objArr7);
        dumpLine(printWriter, 0, str4, WIFI_MULTICAST_TOTAL_DATA, Long.valueOf(getWifiMulticastWakelockTime(j24, i) / 1000), Integer.valueOf(getWifiMulticastWakelockCount(i)));
        if (i == 2) {
            dumpLine(printWriter, 0, str4, BATTERY_LEVEL_DATA, Integer.valueOf(getDischargeStartLevel()), Integer.valueOf(getDischargeCurrentLevel()));
        }
        if (i == 2) {
            dumpLine(printWriter, 0, str4, BATTERY_DISCHARGE_DATA, Integer.valueOf(getDischargeStartLevel() - getDischargeCurrentLevel()), Integer.valueOf(getDischargeStartLevel() - getDischargeCurrentLevel()), Integer.valueOf(getDischargeAmountScreenOn()), Integer.valueOf(getDischargeAmountScreenOff()), Long.valueOf(uahDischarge / 1000), Long.valueOf(uahDischargeScreenOff / 1000), Integer.valueOf(getDischargeAmountScreenDoze()), Long.valueOf(uahDischargeScreenDoze / 1000), Long.valueOf(uahDischargeLightDoze / 1000), Long.valueOf(uahDischargeDeepDoze / 1000));
        } else {
            dumpLine(printWriter, 0, str4, BATTERY_DISCHARGE_DATA, Integer.valueOf(getLowDischargeAmountSinceCharge()), Integer.valueOf(getHighDischargeAmountSinceCharge()), Integer.valueOf(getDischargeAmountScreenOnSinceCharge()), Integer.valueOf(getDischargeAmountScreenOffSinceCharge()), Long.valueOf(uahDischarge / 1000), Long.valueOf(uahDischargeScreenOff / 1000), Integer.valueOf(getDischargeAmountScreenDozeSinceCharge()), Long.valueOf(uahDischargeScreenDoze / 1000), Long.valueOf(uahDischargeLightDoze / 1000), Long.valueOf(uahDischargeDeepDoze / 1000));
        }
        if (i2 < 0) {
            Map<String, ? extends Timer> kernelWakelockStats = getKernelWakelockStats();
            if (kernelWakelockStats.size() > 0) {
                for (Map.Entry<String, ? extends Timer> entry : kernelWakelockStats.entrySet()) {
                    StringBuilder sb9 = sb8;
                    sb9.setLength(0);
                    String str5 = str4;
                    printWakeLockCheckin(sb9, entry.getValue(), j24, null, i, TextClassifier.TYPE_UNKNOWN);
                    dumpLine(printWriter, 0, str5, KERNEL_WAKELOCK_DATA, "\"" + entry.getKey() + "\"", sb9.toString());
                    str4 = str5;
                    sb8 = sb9;
                }
            }
            str = str4;
            sb = sb8;
            Map<String, ? extends Timer> wakeupReasonStats = getWakeupReasonStats();
            if (wakeupReasonStats.size() > 0) {
                for (Iterator<Map.Entry<String, ? extends Timer>> it = wakeupReasonStats.entrySet().iterator(); it.hasNext(); it = it) {
                    Map.Entry<String, ? extends Timer> next = it.next();
                    dumpLine(printWriter, 0, str, WAKEUP_REASON_DATA, "\"" + next.getKey() + "\"", Long.valueOf((next.getValue().getTotalTimeLocked(j24, i) + 500) / 1000), Integer.valueOf(next.getValue().getCountLocked(i)));
                }
            }
        } else {
            str = str4;
            sb = sb8;
        }
        Map<String, ? extends Timer> rpmStats = getRpmStats();
        Map<String, ? extends Timer> screenOffRpmStats = getScreenOffRpmStats();
        if (rpmStats.size() > 0) {
            Iterator<Map.Entry<String, ? extends Timer>> it2 = rpmStats.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<String, ? extends Timer> next2 = it2.next();
                StringBuilder sb10 = sb;
                sb10.setLength(0);
                Timer value = next2.getValue();
                long totalTimeLocked = (value.getTotalTimeLocked(j24, i) + 500) / 1000;
                int countLocked = value.getCountLocked(i);
                Timer timer = screenOffRpmStats.get(next2.getKey());
                if (timer != null) {
                    long totalTimeLocked2 = (timer.getTotalTimeLocked(j24, i) + 500) / 1000;
                }
                if (timer != null) {
                    timer.getCountLocked(i);
                }
                dumpLine(printWriter, 0, str, RESOURCE_POWER_MANAGER_DATA, "\"" + next2.getKey() + "\"", Long.valueOf(totalTimeLocked), Integer.valueOf(countLocked));
                sb = sb10;
                it2 = it2;
                screenOffRpmStats = screenOffRpmStats;
                j24 = j24;
            }
        }
        long j25 = j24;
        StringBuilder sb11 = sb;
        BatteryStatsHelper batteryStatsHelper = new BatteryStatsHelper(context, false, z);
        batteryStatsHelper.create(this);
        batteryStatsHelper.refreshStats(i, -1);
        List usageList = batteryStatsHelper.getUsageList();
        if (usageList != null && usageList.size() > 0) {
            dumpLine(printWriter, 0, str, POWER_USE_SUMMARY_DATA, BatteryStatsHelper.makemAh(batteryStatsHelper.getPowerProfile().getBatteryCapacity()), BatteryStatsHelper.makemAh(batteryStatsHelper.getComputedPower()), BatteryStatsHelper.makemAh(batteryStatsHelper.getMinDrainedPower()), BatteryStatsHelper.makemAh(batteryStatsHelper.getMaxDrainedPower()));
            int i29 = 0;
            for (int i30 = 0; i30 < usageList.size(); i30++) {
                BatterySipper batterySipper = (BatterySipper) usageList.get(i30);
                switch (AnonymousClass2.$SwitchMap$com$android$internal$os$BatterySipper$DrainType[batterySipper.drainType.ordinal()]) {
                    case 1:
                        str2 = "ambi";
                        break;
                    case 2:
                        str2 = "idle";
                        break;
                    case 3:
                        str2 = "cell";
                        break;
                    case 4:
                        str2 = "phone";
                        break;
                    case 5:
                        str2 = "wifi";
                        break;
                    case 6:
                        str2 = "blue";
                        break;
                    case 7:
                        str2 = "scrn";
                        break;
                    case 8:
                        str2 = "flashlight";
                        break;
                    case 9:
                        i29 = batterySipper.uidObj.getUid();
                        str2 = UID_DATA;
                        break;
                    case 10:
                        i29 = UserHandle.getUid(batterySipper.userId, 0);
                        str2 = "user";
                        break;
                    case 11:
                        str2 = "unacc";
                        break;
                    case 12:
                        str2 = "over";
                        break;
                    case 13:
                        str2 = "camera";
                        break;
                    case 14:
                        str2 = "memory";
                        break;
                    default:
                        str2 = "???";
                        break;
                }
                dumpLine(printWriter, i29, str, POWER_USE_ITEM_DATA, str2, BatteryStatsHelper.makemAh(batterySipper.totalPowerMah), Integer.valueOf(batterySipper.shouldHide ? 1 : 0), BatteryStatsHelper.makemAh(batterySipper.screenPowerMah), BatteryStatsHelper.makemAh(batterySipper.proportionalSmearMah));
            }
        }
        long[] cpuFreqs = getCpuFreqs();
        if (cpuFreqs != null) {
            sb11.setLength(0);
            int i31 = 0;
            while (i31 < cpuFreqs.length) {
                StringBuilder sb12 = new StringBuilder();
                sb12.append(i31 == 0 ? TextClassifier.TYPE_UNKNOWN : ",");
                sb12.append(cpuFreqs[i31]);
                sb11.append(sb12.toString());
                i31++;
            }
            dumpLine(printWriter, 0, str, GLOBAL_CPU_FREQ_DATA, sb11.toString());
        }
        int i32 = size8;
        int i33 = 0;
        while (i33 < i32) {
            int keyAt = sparseArray3.keyAt(i33);
            if (i2 < 0 || keyAt == i2) {
                Uid valueAt2 = sparseArray3.valueAt(i33);
                long networkActivityBytes = valueAt2.getNetworkActivityBytes(0, i);
                long networkActivityBytes2 = valueAt2.getNetworkActivityBytes(1, i);
                long networkActivityBytes3 = valueAt2.getNetworkActivityBytes(2, i);
                long networkActivityBytes4 = valueAt2.getNetworkActivityBytes(3, i);
                long networkActivityPackets = valueAt2.getNetworkActivityPackets(0, i);
                long networkActivityPackets2 = valueAt2.getNetworkActivityPackets(1, i);
                long mobileRadioActiveTime = valueAt2.getMobileRadioActiveTime(i);
                int mobileRadioActiveCount = valueAt2.getMobileRadioActiveCount(i);
                long mobileRadioApWakeupCount = valueAt2.getMobileRadioApWakeupCount(i);
                long networkActivityPackets3 = valueAt2.getNetworkActivityPackets(2, i);
                long networkActivityPackets4 = valueAt2.getNetworkActivityPackets(3, i);
                long wifiRadioApWakeupCount = valueAt2.getWifiRadioApWakeupCount(i);
                long networkActivityBytes5 = valueAt2.getNetworkActivityBytes(4, i);
                long networkActivityBytes6 = valueAt2.getNetworkActivityBytes(5, i);
                long networkActivityBytes7 = valueAt2.getNetworkActivityBytes(6, i);
                long networkActivityBytes8 = valueAt2.getNetworkActivityBytes(7, i);
                long networkActivityBytes9 = valueAt2.getNetworkActivityBytes(8, i);
                long networkActivityBytes10 = valueAt2.getNetworkActivityBytes(9, i);
                long networkActivityPackets5 = valueAt2.getNetworkActivityPackets(6, i);
                long networkActivityPackets6 = valueAt2.getNetworkActivityPackets(7, i);
                long networkActivityPackets7 = valueAt2.getNetworkActivityPackets(8, i);
                long networkActivityPackets8 = valueAt2.getNetworkActivityPackets(9, i);
                if (networkActivityBytes > 0 || networkActivityBytes2 > 0 || networkActivityBytes3 > 0 || networkActivityBytes4 > 0 || networkActivityPackets > 0 || networkActivityPackets2 > 0 || networkActivityPackets3 > 0 || networkActivityPackets4 > 0 || mobileRadioActiveTime > 0 || mobileRadioActiveCount > 0 || networkActivityBytes5 > 0 || networkActivityBytes6 > 0 || mobileRadioApWakeupCount > 0 || wifiRadioApWakeupCount > 0 || networkActivityBytes7 > 0 || networkActivityBytes8 > 0 || networkActivityBytes9 > 0 || networkActivityBytes10 > 0 || networkActivityPackets5 > 0 || networkActivityPackets6 > 0 || networkActivityPackets7 > 0 || networkActivityPackets8 > 0) {
                    c = '\n';
                    dumpLine(printWriter, keyAt, str, NETWORK_DATA, Long.valueOf(networkActivityBytes), Long.valueOf(networkActivityBytes2), Long.valueOf(networkActivityBytes3), Long.valueOf(networkActivityBytes4), Long.valueOf(networkActivityPackets), Long.valueOf(networkActivityPackets2), Long.valueOf(networkActivityPackets3), Long.valueOf(networkActivityPackets4), Long.valueOf(mobileRadioActiveTime), Integer.valueOf(mobileRadioActiveCount), Long.valueOf(networkActivityBytes5), Long.valueOf(networkActivityBytes6), Long.valueOf(mobileRadioApWakeupCount), Long.valueOf(wifiRadioApWakeupCount), Long.valueOf(networkActivityBytes7), Long.valueOf(networkActivityBytes8), Long.valueOf(networkActivityBytes9), Long.valueOf(networkActivityBytes10), Long.valueOf(networkActivityPackets5), Long.valueOf(networkActivityPackets6), Long.valueOf(networkActivityPackets7), Long.valueOf(networkActivityPackets8));
                } else {
                    c = '\n';
                }
                i3 = i32;
                int i34 = i;
                Uid uid2 = valueAt2;
                dumpControllerActivityLine(printWriter, keyAt, str, MODEM_CONTROLLER_DATA, valueAt2.getModemControllerActivity(), i);
                long j26 = j25;
                long fullWifiLockTime = uid2.getFullWifiLockTime(j26, i34);
                long wifiScanTime = uid2.getWifiScanTime(j26, i34);
                int wifiScanCount = uid2.getWifiScanCount(i34);
                int wifiScanBackgroundCount = uid2.getWifiScanBackgroundCount(i34);
                long wifiScanActualTime = (uid2.getWifiScanActualTime(j26) + 500) / 1000;
                long wifiScanBackgroundTime = (uid2.getWifiScanBackgroundTime(j26) + 500) / 1000;
                long wifiRunningTime = uid2.getWifiRunningTime(j26, i34);
                if (fullWifiLockTime == 0 && wifiScanTime == 0 && wifiScanCount == 0 && wifiScanBackgroundCount == 0 && wifiScanActualTime == 0 && wifiScanBackgroundTime == 0 && wifiRunningTime == 0) {
                    j = j26;
                } else {
                    j = j26;
                    dumpLine(printWriter, keyAt, str, WIFI_DATA, Long.valueOf(fullWifiLockTime), Long.valueOf(wifiScanTime), Long.valueOf(wifiRunningTime), Integer.valueOf(wifiScanCount), 0, 0, 0, Integer.valueOf(wifiScanBackgroundCount), Long.valueOf(wifiScanActualTime), Long.valueOf(wifiScanBackgroundTime));
                }
                long j27 = j;
                sparseArray = sparseArray3;
                StringBuilder sb13 = sb11;
                dumpControllerActivityLine(printWriter, keyAt, str, WIFI_CONTROLLER_DATA, uid2.getWifiControllerActivity(), i);
                Timer bluetoothScanTimer = uid2.getBluetoothScanTimer();
                if (bluetoothScanTimer != null) {
                    long totalTimeLocked3 = (bluetoothScanTimer.getTotalTimeLocked(j27, i34) + 500) / 1000;
                    if (totalTimeLocked3 != 0) {
                        int countLocked2 = bluetoothScanTimer.getCountLocked(i34);
                        Timer bluetoothScanBackgroundTimer = uid2.getBluetoothScanBackgroundTimer();
                        if (bluetoothScanBackgroundTimer != null) {
                            i14 = bluetoothScanBackgroundTimer.getCountLocked(i34);
                            j18 = j20;
                        } else {
                            j18 = j20;
                            i14 = 0;
                        }
                        long totalDurationMsLocked = bluetoothScanTimer.getTotalDurationMsLocked(j18);
                        long totalDurationMsLocked2 = bluetoothScanBackgroundTimer != null ? bluetoothScanBackgroundTimer.getTotalDurationMsLocked(j18) : 0L;
                        int countLocked3 = uid2.getBluetoothScanResultCounter() != null ? uid2.getBluetoothScanResultCounter().getCountLocked(i34) : 0;
                        if (uid2.getBluetoothScanResultBgCounter() != null) {
                            i15 = uid2.getBluetoothScanResultBgCounter().getCountLocked(i34);
                            i4 = i33;
                        } else {
                            i4 = i33;
                            i15 = 0;
                        }
                        Timer bluetoothUnoptimizedScanTimer = uid2.getBluetoothUnoptimizedScanTimer();
                        long totalDurationMsLocked3 = bluetoothUnoptimizedScanTimer != null ? bluetoothUnoptimizedScanTimer.getTotalDurationMsLocked(j18) : 0L;
                        long maxDurationMsLocked = bluetoothUnoptimizedScanTimer != null ? bluetoothUnoptimizedScanTimer.getMaxDurationMsLocked(j18) : 0L;
                        Timer bluetoothUnoptimizedScanBackgroundTimer = uid2.getBluetoothUnoptimizedScanBackgroundTimer();
                        j2 = j18;
                        dumpLine(printWriter, keyAt, str, BLUETOOTH_MISC_DATA, Long.valueOf(totalTimeLocked3), Integer.valueOf(countLocked2), Integer.valueOf(i14), Long.valueOf(totalDurationMsLocked), Long.valueOf(totalDurationMsLocked2), Integer.valueOf(countLocked3), Integer.valueOf(i15), Long.valueOf(totalDurationMsLocked3), Long.valueOf(bluetoothUnoptimizedScanBackgroundTimer != null ? bluetoothUnoptimizedScanBackgroundTimer.getTotalDurationMsLocked(j18) : 0L), Long.valueOf(maxDurationMsLocked), Long.valueOf(bluetoothUnoptimizedScanBackgroundTimer != null ? bluetoothUnoptimizedScanBackgroundTimer.getMaxDurationMsLocked(j18) : 0L));
                        long j28 = j2;
                        dumpControllerActivityLine(printWriter, keyAt, str, BLUETOOTH_CONTROLLER_DATA, uid2.getBluetoothControllerActivity(), i);
                        if (uid2.hasUserActivity()) {
                            Object[] objArr8 = new Object[4];
                            int i35 = 0;
                            boolean z2 = false;
                            for (int i36 = 4; i35 < i36; i36 = 4) {
                                int userActivityCount = uid2.getUserActivityCount(i35, i34);
                                objArr8[i35] = Integer.valueOf(userActivityCount);
                                if (userActivityCount != 0) {
                                    z2 = true;
                                }
                                i35++;
                            }
                            if (z2) {
                                dumpLine(printWriter, keyAt, str, USER_ACTIVITY_DATA, objArr8);
                            }
                        }
                        if (uid2.getAggregatedPartialWakelockTimer() == null) {
                            Timer aggregatedPartialWakelockTimer = uid2.getAggregatedPartialWakelockTimer();
                            long totalDurationMsLocked4 = aggregatedPartialWakelockTimer.getTotalDurationMsLocked(j28);
                            Timer subTimer = aggregatedPartialWakelockTimer.getSubTimer();
                            i5 = 1;
                            dumpLine(printWriter, keyAt, str, AGGREGATED_WAKELOCK_DATA, Long.valueOf(totalDurationMsLocked4), Long.valueOf(subTimer != null ? subTimer.getTotalDurationMsLocked(j28) : 0L));
                        } else {
                            i5 = 1;
                        }
                        ArrayMap<String, ? extends Uid.Wakelock> wakelockStats2 = uid2.getWakelockStats();
                        size = wakelockStats2.size() - i5;
                        while (size >= 0) {
                            Uid.Wakelock valueAt3 = wakelockStats2.valueAt(size);
                            StringBuilder sb14 = sb13;
                            sb14.setLength(0);
                            long[] jArr5 = cpuFreqs;
                            long j29 = j28;
                            int i37 = size;
                            String printWakeLockCheckin = printWakeLockCheckin(sb14, valueAt3.getWakeTime(i5), j27, "f", i, TextClassifier.TYPE_UNKNOWN);
                            Timer wakeTime3 = valueAt3.getWakeTime(0);
                            printWakeLockCheckin(sb14, valueAt3.getWakeTime(2), j27, "w", i, printWakeLockCheckin(sb14, wakeTime3 != null ? wakeTime3.getSubTimer() : null, j27, "bp", i, printWakeLockCheckin(sb14, wakeTime3, j27, "p", i, printWakeLockCheckin)));
                            if (sb14.length() > 0) {
                                String keyAt2 = wakelockStats2.keyAt(i37);
                                if (keyAt2.indexOf(44) >= 0) {
                                    keyAt2 = keyAt2.replace(',', '_');
                                }
                                if (keyAt2.indexOf(10) >= 0) {
                                    keyAt2 = keyAt2.replace('\n', '_');
                                }
                                if (keyAt2.indexOf(13) >= 0) {
                                    keyAt2 = keyAt2.replace('\r', '_');
                                }
                                dumpLine(printWriter, keyAt, str, WAKELOCK_DATA, keyAt2, sb14.toString());
                            }
                            size = i37 - 1;
                            cpuFreqs = jArr5;
                            sb13 = sb14;
                            j28 = j29;
                            i5 = 1;
                        }
                        jArr = cpuFreqs;
                        long j30 = j28;
                        StringBuilder sb15 = sb13;
                        multicastWakelockStats = uid2.getMulticastWakelockStats();
                        if (multicastWakelockStats == null) {
                            j3 = j27;
                            long totalTimeLocked4 = multicastWakelockStats.getTotalTimeLocked(j3, i34) / 1000;
                            int countLocked4 = multicastWakelockStats.getCountLocked(i34);
                            if (totalTimeLocked4 > 0) {
                                i6 = 1;
                                dumpLine(printWriter, keyAt, str, WIFI_MULTICAST_DATA, Long.valueOf(totalTimeLocked4), Integer.valueOf(countLocked4));
                                ArrayMap<String, ? extends Timer> syncStats = uid2.getSyncStats();
                                size2 = syncStats.size() - i6;
                                while (size2 >= 0) {
                                    Timer valueAt4 = syncStats.valueAt(size2);
                                    long totalTimeLocked5 = (valueAt4.getTotalTimeLocked(j3, i34) + 500) / 1000;
                                    int countLocked5 = valueAt4.getCountLocked(i34);
                                    Timer subTimer2 = valueAt4.getSubTimer();
                                    if (subTimer2 != null) {
                                        j15 = j30;
                                        j16 = subTimer2.getTotalDurationMsLocked(j15);
                                    } else {
                                        j15 = j30;
                                        j16 = -1;
                                    }
                                    if (subTimer2 != null) {
                                        j17 = j15;
                                        i13 = subTimer2.getCountLocked(i);
                                    } else {
                                        j17 = j15;
                                        i13 = -1;
                                    }
                                    if (totalTimeLocked5 != 0) {
                                        dumpLine(printWriter, keyAt, str, SYNC_DATA, "\"" + syncStats.keyAt(size2) + "\"", Long.valueOf(totalTimeLocked5), Integer.valueOf(countLocked5), Long.valueOf(j16), Integer.valueOf(i13));
                                    }
                                    size2--;
                                    j30 = j17;
                                    i34 = i;
                                }
                                long j31 = j30;
                                ArrayMap<String, ? extends Timer> jobStats = uid2.getJobStats();
                                size3 = jobStats.size() - 1;
                                while (size3 >= 0) {
                                    Timer valueAt5 = jobStats.valueAt(size3);
                                    long totalTimeLocked6 = (valueAt5.getTotalTimeLocked(j3, i) + 500) / 1000;
                                    int countLocked6 = valueAt5.getCountLocked(i);
                                    Timer subTimer3 = valueAt5.getSubTimer();
                                    if (subTimer3 != null) {
                                        j11 = j3;
                                        j12 = j31;
                                        j13 = subTimer3.getTotalDurationMsLocked(j12);
                                    } else {
                                        j11 = j3;
                                        j12 = j31;
                                        j13 = -1;
                                    }
                                    int countLocked7 = subTimer3 != null ? subTimer3.getCountLocked(i) : -1;
                                    if (totalTimeLocked6 != 0) {
                                        StringBuilder sb16 = new StringBuilder();
                                        j14 = j12;
                                        sb16.append("\"");
                                        sb16.append(jobStats.keyAt(size3));
                                        sb16.append("\"");
                                        dumpLine(printWriter, keyAt, str, JOB_DATA, sb16.toString(), Long.valueOf(totalTimeLocked6), Integer.valueOf(countLocked6), Long.valueOf(j13), Integer.valueOf(countLocked7));
                                    } else {
                                        j14 = j12;
                                    }
                                    size3--;
                                    j3 = j11;
                                    j31 = j14;
                                }
                                long j32 = j3;
                                long j33 = j31;
                                int i38 = i;
                                ArrayMap<String, SparseIntArray> jobCompletionStats = uid2.getJobCompletionStats();
                                for (size4 = jobCompletionStats.size() - 1; size4 >= 0; size4--) {
                                    SparseIntArray valueAt6 = jobCompletionStats.valueAt(size4);
                                    if (valueAt6 != null) {
                                        dumpLine(printWriter, keyAt, str, JOB_COMPLETION_DATA, "\"" + jobCompletionStats.keyAt(size4) + "\"", Integer.valueOf(valueAt6.get(0, 0)), Integer.valueOf(valueAt6.get(1, 0)), Integer.valueOf(valueAt6.get(2, 0)), Integer.valueOf(valueAt6.get(3, 0)), Integer.valueOf(valueAt6.get(4, 0)));
                                    }
                                }
                                sb2 = sb15;
                                uid2.getDeferredJobsCheckinLineLocked(sb2, i38);
                                if (sb2.length() > 0) {
                                    dumpLine(printWriter, keyAt, str, JOBS_DEFERRED_DATA, sb2.toString());
                                }
                                String str6 = str;
                                dumpTimer(printWriter, keyAt, str6, FLASHLIGHT_DATA, uid2.getFlashlightTurnedOnTimer(), j32, i);
                                dumpTimer(printWriter, keyAt, str6, CAMERA_DATA, uid2.getCameraTurnedOnTimer(), j32, i);
                                dumpTimer(printWriter, keyAt, str6, VIDEO_DATA, uid2.getVideoTurnedOnTimer(), j32, i);
                                dumpTimer(printWriter, keyAt, str6, AUDIO_DATA, uid2.getAudioTurnedOnTimer(), j32, i);
                                SparseArray<? extends Uid.Sensor> sensorStats = uid2.getSensorStats();
                                size5 = sensorStats.size();
                                i7 = 0;
                                while (i7 < size5) {
                                    Uid.Sensor valueAt7 = sensorStats.valueAt(i7);
                                    int keyAt3 = sensorStats.keyAt(i7);
                                    Timer sensorTime = valueAt7.getSensorTime();
                                    if (sensorTime != null) {
                                        j9 = j32;
                                        long totalTimeLocked7 = (sensorTime.getTotalTimeLocked(j9, i38) + 500) / 1000;
                                        if (totalTimeLocked7 != 0) {
                                            int countLocked8 = sensorTime.getCountLocked(i38);
                                            Timer sensorBackgroundTime = valueAt7.getSensorBackgroundTime();
                                            if (sensorBackgroundTime != null) {
                                                i12 = sensorBackgroundTime.getCountLocked(i38);
                                                sb6 = sb2;
                                                j10 = j33;
                                            } else {
                                                sb6 = sb2;
                                                j10 = j33;
                                                i12 = 0;
                                            }
                                            sparseArray2 = sensorStats;
                                            dumpLine(printWriter, keyAt, str, SENSOR_DATA, Integer.valueOf(keyAt3), Long.valueOf(totalTimeLocked7), Integer.valueOf(countLocked8), Integer.valueOf(i12), Long.valueOf(sensorTime.getTotalDurationMsLocked(j10)), Long.valueOf(sensorBackgroundTime != null ? sensorBackgroundTime.getTotalDurationMsLocked(j10) : 0L));
                                            i7++;
                                            j32 = j9;
                                            j33 = j10;
                                            sb2 = sb6;
                                            sensorStats = sparseArray2;
                                            i38 = i;
                                        } else {
                                            sparseArray2 = sensorStats;
                                            sb6 = sb2;
                                        }
                                    } else {
                                        sparseArray2 = sensorStats;
                                        sb6 = sb2;
                                        j9 = j32;
                                    }
                                    j10 = j33;
                                    i7++;
                                    j32 = j9;
                                    j33 = j10;
                                    sb2 = sb6;
                                    sensorStats = sparseArray2;
                                    i38 = i;
                                }
                                StringBuilder sb17 = sb2;
                                long j34 = j32;
                                long j35 = j33;
                                String str7 = str;
                                dumpTimer(printWriter, keyAt, str7, VIBRATOR_DATA, uid2.getVibratorOnTimer(), j34, i);
                                dumpTimer(printWriter, keyAt, str7, FOREGROUND_ACTIVITY_DATA, uid2.getForegroundActivityTimer(), j34, i);
                                dumpTimer(printWriter, keyAt, str7, FOREGROUND_SERVICE_DATA, uid2.getForegroundServiceTimer(), j34, i);
                                i8 = 7;
                                Object[] objArr9 = new Object[7];
                                j4 = 0;
                                i9 = 0;
                                while (i9 < i8) {
                                    long processStateTime = uid2.getProcessStateTime(i9, j34, i);
                                    j4 += processStateTime;
                                    objArr9[i9] = Long.valueOf((processStateTime + 500) / 1000);
                                    i9++;
                                    i8 = 7;
                                    j35 = j35;
                                }
                                long j36 = j35;
                                long j37 = j34;
                                int i39 = i;
                                if (j4 > 0) {
                                    dumpLine(printWriter, keyAt, str, "st", objArr9);
                                }
                                userCpuTimeUs = uid2.getUserCpuTimeUs(i39);
                                systemCpuTimeUs = uid2.getSystemCpuTimeUs(i39);
                                if (userCpuTimeUs <= 0 || systemCpuTimeUs > 0) {
                                    i10 = 0;
                                    dumpLine(printWriter, keyAt, str, CPU_DATA, Long.valueOf(userCpuTimeUs / 1000), Long.valueOf(systemCpuTimeUs / 1000), 0);
                                } else {
                                    i10 = 0;
                                }
                                if (jArr != null) {
                                    long[] cpuFreqTimes = uid2.getCpuFreqTimes(i39);
                                    if (cpuFreqTimes != null) {
                                        jArr2 = jArr;
                                        if (cpuFreqTimes.length == jArr2.length) {
                                            sb3 = sb17;
                                            sb3.setLength(i10);
                                            int i40 = 0;
                                            while (i40 < cpuFreqTimes.length) {
                                                StringBuilder sb18 = new StringBuilder();
                                                sb18.append(i40 == 0 ? TextClassifier.TYPE_UNKNOWN : ",");
                                                sb18.append(cpuFreqTimes[i40]);
                                                sb3.append(sb18.toString());
                                                i40++;
                                                j36 = j36;
                                            }
                                            j5 = j36;
                                            long[] screenOffCpuFreqTimes = uid2.getScreenOffCpuFreqTimes(i39);
                                            if (screenOffCpuFreqTimes != null) {
                                                int i41 = 0;
                                                while (i41 < screenOffCpuFreqTimes.length) {
                                                    sb3.append("," + screenOffCpuFreqTimes[i41]);
                                                    i41++;
                                                    j37 = j37;
                                                }
                                                j6 = j37;
                                            } else {
                                                j6 = j37;
                                                for (int i42 = 0; i42 < cpuFreqTimes.length; i42++) {
                                                    sb3.append(",0");
                                                }
                                            }
                                            dumpLine(printWriter, keyAt, str, CPU_TIMES_AT_FREQ_DATA, UID_TIMES_TYPE_ALL, Integer.valueOf(cpuFreqTimes.length), sb3.toString());
                                            for (i11 = 0; i11 < 7; i11++) {
                                                long[] cpuFreqTimes2 = uid2.getCpuFreqTimes(i39, i11);
                                                if (cpuFreqTimes2 != null && cpuFreqTimes2.length == jArr2.length) {
                                                    sb3.setLength(0);
                                                    int i43 = 0;
                                                    while (i43 < cpuFreqTimes2.length) {
                                                        StringBuilder sb19 = new StringBuilder();
                                                        sb19.append(i43 == 0 ? TextClassifier.TYPE_UNKNOWN : ",");
                                                        sb19.append(cpuFreqTimes2[i43]);
                                                        sb3.append(sb19.toString());
                                                        i43++;
                                                    }
                                                    long[] screenOffCpuFreqTimes2 = uid2.getScreenOffCpuFreqTimes(i39, i11);
                                                    if (screenOffCpuFreqTimes2 != null) {
                                                        for (long j38 : screenOffCpuFreqTimes2) {
                                                            sb3.append("," + j38);
                                                        }
                                                    } else {
                                                        for (int i44 = 0; i44 < cpuFreqTimes2.length; i44++) {
                                                            sb3.append(",0");
                                                        }
                                                    }
                                                    dumpLine(printWriter, keyAt, str, CPU_TIMES_AT_FREQ_DATA, Uid.UID_PROCESS_TYPES[i11], Integer.valueOf(cpuFreqTimes2.length), sb3.toString());
                                                }
                                            }
                                        } else {
                                            j5 = j36;
                                            j6 = j37;
                                        }
                                    } else {
                                        j5 = j36;
                                        j6 = j37;
                                        jArr2 = jArr;
                                    }
                                    sb3 = sb17;
                                    while (i11 < 7) {
                                    }
                                } else {
                                    j5 = j36;
                                    j6 = j37;
                                    jArr2 = jArr;
                                    sb3 = sb17;
                                }
                                ArrayMap<String, ? extends Uid.Proc> processStats = uid2.getProcessStats();
                                size6 = processStats.size() - 1;
                                while (size6 >= 0) {
                                    Uid.Proc valueAt8 = processStats.valueAt(size6);
                                    long userTime = valueAt8.getUserTime(i39);
                                    long systemTime = valueAt8.getSystemTime(i39);
                                    long foregroundTime = valueAt8.getForegroundTime(i39);
                                    int starts = valueAt8.getStarts(i39);
                                    int numCrashes = valueAt8.getNumCrashes(i39);
                                    int numAnrs = valueAt8.getNumAnrs(i39);
                                    if (userTime == 0 && systemTime == 0 && foregroundTime == 0 && starts == 0 && numAnrs == 0 && numCrashes == 0) {
                                        sb5 = sb3;
                                        jArr4 = jArr2;
                                        uid = uid2;
                                    } else {
                                        sb5 = sb3;
                                        jArr4 = jArr2;
                                        StringBuilder sb20 = new StringBuilder();
                                        uid = uid2;
                                        sb20.append("\"");
                                        sb20.append(processStats.keyAt(size6));
                                        sb20.append("\"");
                                        dumpLine(printWriter, keyAt, str, PROCESS_DATA, sb20.toString(), Long.valueOf(userTime), Long.valueOf(systemTime), Long.valueOf(foregroundTime), Integer.valueOf(starts), Integer.valueOf(numAnrs), Integer.valueOf(numCrashes));
                                    }
                                    size6--;
                                    sb3 = sb5;
                                    jArr2 = jArr4;
                                    uid2 = uid;
                                    i39 = i;
                                }
                                sb4 = sb3;
                                jArr3 = jArr2;
                                ArrayMap<String, ? extends Uid.Pkg> packageStats = uid2.getPackageStats();
                                int i45 = 1;
                                size7 = packageStats.size() - 1;
                                while (size7 >= 0) {
                                    Uid.Pkg valueAt9 = packageStats.valueAt(size7);
                                    ArrayMap<String, ? extends Counter> wakeupAlarmStats = valueAt9.getWakeupAlarmStats();
                                    int i46 = 0;
                                    for (int size10 = wakeupAlarmStats.size() - i45; size10 >= 0; size10--) {
                                        int countLocked9 = wakeupAlarmStats.valueAt(size10).getCountLocked(i);
                                        i46 += countLocked9;
                                        dumpLine(printWriter, keyAt, str, WAKEUP_ALARM_DATA, wakeupAlarmStats.keyAt(size10).replace(',', '_'), Integer.valueOf(countLocked9));
                                    }
                                    int i47 = i;
                                    ArrayMap<String, ? extends Uid.Pkg.Serv> serviceStats = valueAt9.getServiceStats();
                                    int size11 = serviceStats.size() - 1;
                                    while (size11 >= 0) {
                                        Uid.Pkg.Serv valueAt10 = serviceStats.valueAt(size11);
                                        long j39 = j23;
                                        long startTime = valueAt10.getStartTime(j39, i47);
                                        int starts2 = valueAt10.getStarts(i47);
                                        int launches = valueAt10.getLaunches(i47);
                                        if (startTime == 0 && starts2 == 0 && launches == 0) {
                                            j8 = j39;
                                        } else {
                                            j8 = j39;
                                            dumpLine(printWriter, keyAt, str, APK_DATA, Integer.valueOf(i46), packageStats.keyAt(size7), serviceStats.keyAt(size11), Long.valueOf(startTime / 1000), Integer.valueOf(starts2), Integer.valueOf(launches));
                                        }
                                        size11--;
                                        j23 = j8;
                                        i47 = i;
                                    }
                                    size7--;
                                    i45 = 1;
                                }
                                j7 = j23;
                            }
                        } else {
                            j3 = j27;
                        }
                        i6 = 1;
                        ArrayMap<String, ? extends Timer> syncStats2 = uid2.getSyncStats();
                        size2 = syncStats2.size() - i6;
                        while (size2 >= 0) {
                        }
                        long j312 = j30;
                        ArrayMap<String, ? extends Timer> jobStats2 = uid2.getJobStats();
                        size3 = jobStats2.size() - 1;
                        while (size3 >= 0) {
                        }
                        long j322 = j3;
                        long j332 = j312;
                        int i382 = i;
                        ArrayMap<String, SparseIntArray> jobCompletionStats2 = uid2.getJobCompletionStats();
                        while (size4 >= 0) {
                        }
                        sb2 = sb15;
                        uid2.getDeferredJobsCheckinLineLocked(sb2, i382);
                        if (sb2.length() > 0) {
                        }
                        String str62 = str;
                        dumpTimer(printWriter, keyAt, str62, FLASHLIGHT_DATA, uid2.getFlashlightTurnedOnTimer(), j322, i);
                        dumpTimer(printWriter, keyAt, str62, CAMERA_DATA, uid2.getCameraTurnedOnTimer(), j322, i);
                        dumpTimer(printWriter, keyAt, str62, VIDEO_DATA, uid2.getVideoTurnedOnTimer(), j322, i);
                        dumpTimer(printWriter, keyAt, str62, AUDIO_DATA, uid2.getAudioTurnedOnTimer(), j322, i);
                        SparseArray<? extends Uid.Sensor> sensorStats2 = uid2.getSensorStats();
                        size5 = sensorStats2.size();
                        i7 = 0;
                        while (i7 < size5) {
                        }
                        StringBuilder sb172 = sb2;
                        long j342 = j322;
                        long j352 = j332;
                        String str72 = str;
                        dumpTimer(printWriter, keyAt, str72, VIBRATOR_DATA, uid2.getVibratorOnTimer(), j342, i);
                        dumpTimer(printWriter, keyAt, str72, FOREGROUND_ACTIVITY_DATA, uid2.getForegroundActivityTimer(), j342, i);
                        dumpTimer(printWriter, keyAt, str72, FOREGROUND_SERVICE_DATA, uid2.getForegroundServiceTimer(), j342, i);
                        i8 = 7;
                        Object[] objArr92 = new Object[7];
                        j4 = 0;
                        i9 = 0;
                        while (i9 < i8) {
                        }
                        long j362 = j352;
                        long j372 = j342;
                        int i392 = i;
                        if (j4 > 0) {
                        }
                        userCpuTimeUs = uid2.getUserCpuTimeUs(i392);
                        systemCpuTimeUs = uid2.getSystemCpuTimeUs(i392);
                        if (userCpuTimeUs <= 0) {
                        }
                        i10 = 0;
                        dumpLine(printWriter, keyAt, str, CPU_DATA, Long.valueOf(userCpuTimeUs / 1000), Long.valueOf(systemCpuTimeUs / 1000), 0);
                        if (jArr != null) {
                        }
                        ArrayMap<String, ? extends Uid.Proc> processStats2 = uid2.getProcessStats();
                        size6 = processStats2.size() - 1;
                        while (size6 >= 0) {
                        }
                        sb4 = sb3;
                        jArr3 = jArr2;
                        ArrayMap<String, ? extends Uid.Pkg> packageStats2 = uid2.getPackageStats();
                        int i452 = 1;
                        size7 = packageStats2.size() - 1;
                        while (size7 >= 0) {
                        }
                        j7 = j23;
                    }
                }
                i4 = i33;
                j2 = j20;
                long j282 = j2;
                dumpControllerActivityLine(printWriter, keyAt, str, BLUETOOTH_CONTROLLER_DATA, uid2.getBluetoothControllerActivity(), i);
                if (uid2.hasUserActivity()) {
                }
                if (uid2.getAggregatedPartialWakelockTimer() == null) {
                }
                ArrayMap<String, ? extends Uid.Wakelock> wakelockStats22 = uid2.getWakelockStats();
                size = wakelockStats22.size() - i5;
                while (size >= 0) {
                }
                jArr = cpuFreqs;
                long j302 = j282;
                StringBuilder sb152 = sb13;
                multicastWakelockStats = uid2.getMulticastWakelockStats();
                if (multicastWakelockStats == null) {
                }
                i6 = 1;
                ArrayMap<String, ? extends Timer> syncStats22 = uid2.getSyncStats();
                size2 = syncStats22.size() - i6;
                while (size2 >= 0) {
                }
                long j3122 = j302;
                ArrayMap<String, ? extends Timer> jobStats22 = uid2.getJobStats();
                size3 = jobStats22.size() - 1;
                while (size3 >= 0) {
                }
                long j3222 = j3;
                long j3322 = j3122;
                int i3822 = i;
                ArrayMap<String, SparseIntArray> jobCompletionStats22 = uid2.getJobCompletionStats();
                while (size4 >= 0) {
                }
                sb2 = sb152;
                uid2.getDeferredJobsCheckinLineLocked(sb2, i3822);
                if (sb2.length() > 0) {
                }
                String str622 = str;
                dumpTimer(printWriter, keyAt, str622, FLASHLIGHT_DATA, uid2.getFlashlightTurnedOnTimer(), j3222, i);
                dumpTimer(printWriter, keyAt, str622, CAMERA_DATA, uid2.getCameraTurnedOnTimer(), j3222, i);
                dumpTimer(printWriter, keyAt, str622, VIDEO_DATA, uid2.getVideoTurnedOnTimer(), j3222, i);
                dumpTimer(printWriter, keyAt, str622, AUDIO_DATA, uid2.getAudioTurnedOnTimer(), j3222, i);
                SparseArray<? extends Uid.Sensor> sensorStats22 = uid2.getSensorStats();
                size5 = sensorStats22.size();
                i7 = 0;
                while (i7 < size5) {
                }
                StringBuilder sb1722 = sb2;
                long j3422 = j3222;
                long j3522 = j3322;
                String str722 = str;
                dumpTimer(printWriter, keyAt, str722, VIBRATOR_DATA, uid2.getVibratorOnTimer(), j3422, i);
                dumpTimer(printWriter, keyAt, str722, FOREGROUND_ACTIVITY_DATA, uid2.getForegroundActivityTimer(), j3422, i);
                dumpTimer(printWriter, keyAt, str722, FOREGROUND_SERVICE_DATA, uid2.getForegroundServiceTimer(), j3422, i);
                i8 = 7;
                Object[] objArr922 = new Object[7];
                j4 = 0;
                i9 = 0;
                while (i9 < i8) {
                }
                long j3622 = j3522;
                long j3722 = j3422;
                int i3922 = i;
                if (j4 > 0) {
                }
                userCpuTimeUs = uid2.getUserCpuTimeUs(i3922);
                systemCpuTimeUs = uid2.getSystemCpuTimeUs(i3922);
                if (userCpuTimeUs <= 0) {
                }
                i10 = 0;
                dumpLine(printWriter, keyAt, str, CPU_DATA, Long.valueOf(userCpuTimeUs / 1000), Long.valueOf(systemCpuTimeUs / 1000), 0);
                if (jArr != null) {
                }
                ArrayMap<String, ? extends Uid.Proc> processStats22 = uid2.getProcessStats();
                size6 = processStats22.size() - 1;
                while (size6 >= 0) {
                }
                sb4 = sb3;
                jArr3 = jArr2;
                ArrayMap<String, ? extends Uid.Pkg> packageStats22 = uid2.getPackageStats();
                int i4522 = 1;
                size7 = packageStats22.size() - 1;
                while (size7 >= 0) {
                }
                j7 = j23;
            } else {
                jArr3 = cpuFreqs;
                i3 = i32;
                sparseArray = sparseArray3;
                sb4 = sb11;
                i4 = i33;
                j5 = j20;
                j7 = j23;
                j6 = j25;
            }
            i33 = i4 + 1;
            i32 = i3;
            sparseArray3 = sparseArray;
            j20 = j5;
            j25 = j6;
            sb11 = sb4;
            cpuFreqs = jArr3;
            j23 = j7;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.os.BatteryStats$2, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$android$internal$os$BatterySipper$DrainType = new int[BatterySipper.DrainType.values().length];

        static {
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.AMBIENT_DISPLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.IDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.CELL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.PHONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.WIFI.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.BLUETOOTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.SCREEN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.FLASHLIGHT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.APP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.USER.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.UNACCOUNTED.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.OVERCOUNTED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.CAMERA.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$internal$os$BatterySipper$DrainType[BatterySipper.DrainType.MEMORY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes2.dex */
    public static final class TimerEntry {
        final int mId;
        final String mName;
        final long mTime;
        final Timer mTimer;

        TimerEntry(String str, int i, Timer timer, long j) {
            this.mName = str;
            this.mId = i;
            this.mTimer = timer;
            this.mTime = j;
        }
    }

    private void printmAh(PrintWriter printWriter, double d) {
        printWriter.print(BatteryStatsHelper.makemAh(d));
    }

    private void printmAh(StringBuilder sb, double d) {
        sb.append(BatteryStatsHelper.makemAh(d));
    }

    public final void dumpLocked(Context context, PrintWriter printWriter, String str, int i, int i2) {
        dumpLocked(context, printWriter, str, i, i2, BatteryStatsHelper.checkWifiOnly(context));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r2v129 long, still in use, count: 2, list:
          (r2v129 long) from 0x1662: PHI (r2v128 long) = (r2v127 long), (r2v129 long) binds: [B:765:0x1660, B:432:0x165d] A[DONT_GENERATE, DONT_INLINE]
          (r2v129 long) from 0x165b: CMP_L (r2v129 long), (0 long) A[WRAPPED]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:114)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1083)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1083)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1083)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1083)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1083)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1083)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1083)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1540)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0f8c  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0fee  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x14aa  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x14ec  */
    /* JADX WARN: Removed duplicated region for block: B:392:0x151a  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x16d5  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x1731  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x1810  */
    /* JADX WARN: Removed duplicated region for block: B:481:0x18fb  */
    /* JADX WARN: Removed duplicated region for block: B:486:0x1943  */
    /* JADX WARN: Removed duplicated region for block: B:507:0x19db  */
    /* JADX WARN: Removed duplicated region for block: B:528:0x1a7e  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x1ad9  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x1b47  */
    /* JADX WARN: Removed duplicated region for block: B:580:0x1c54  */
    /* JADX WARN: Removed duplicated region for block: B:589:0x1c98  */
    /* JADX WARN: Removed duplicated region for block: B:592:0x1cbe  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x1ceb  */
    /* JADX WARN: Removed duplicated region for block: B:604:0x1d1e  */
    /* JADX WARN: Removed duplicated region for block: B:613:0x1d4f  */
    /* JADX WARN: Removed duplicated region for block: B:636:0x1e0f  */
    /* JADX WARN: Removed duplicated region for block: B:691:0x1f5c  */
    /* JADX WARN: Removed duplicated region for block: B:715:0x2048  */
    /* JADX WARN: Removed duplicated region for block: B:717:0x2050 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:720:0x1933  */
    /* JADX WARN: Removed duplicated region for block: B:752:0x18ee  */
    /* JADX WARN: Removed duplicated region for block: B:753:0x1718  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void dumpLocked(android.content.Context r227, java.io.PrintWriter r228, java.lang.String r229, int r230, int r231, boolean r232) {
        /*
            Method dump skipped, instructions count: 8328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.os.BatteryStats.dumpLocked(android.content.Context, java.io.PrintWriter, java.lang.String, int, int, boolean):void");
    }

    static void printBitDescriptions(StringBuilder sb, int i, int i2, HistoryTag historyTag, BitDescription[] bitDescriptionArr, boolean z) {
        int i3 = i ^ i2;
        if (i3 == 0) {
            return;
        }
        boolean z2 = false;
        for (BitDescription bitDescription : bitDescriptionArr) {
            if ((bitDescription.mask & i3) != 0) {
                sb.append(z ? " " : ",");
                if (bitDescription.shift < 0) {
                    sb.append((bitDescription.mask & i2) != 0 ? "+" : "-");
                    sb.append(z ? bitDescription.name : bitDescription.shortName);
                    if (bitDescription.mask == 1073741824 && historyTag != null) {
                        sb.append("=");
                        if (z) {
                            UserHandle.formatUid(sb, historyTag.uid);
                            sb.append(":\"");
                            sb.append(historyTag.string);
                            sb.append("\"");
                        } else {
                            sb.append(historyTag.poolIdx);
                        }
                        z2 = true;
                    }
                } else {
                    sb.append(z ? bitDescription.name : bitDescription.shortName);
                    sb.append("=");
                    int i4 = (bitDescription.mask & i2) >> bitDescription.shift;
                    if (bitDescription.values != null && i4 >= 0 && i4 < bitDescription.values.length) {
                        sb.append(z ? bitDescription.values[i4] : bitDescription.shortValues[i4]);
                    } else {
                        sb.append(i4);
                    }
                }
            }
        }
        if (z2 || historyTag == null) {
            return;
        }
        sb.append(z ? " wake_lock=" : ",w=");
        if (z) {
            UserHandle.formatUid(sb, historyTag.uid);
            sb.append(":\"");
            sb.append(historyTag.string);
            sb.append("\"");
            return;
        }
        sb.append(historyTag.poolIdx);
    }

    /* loaded from: /home/user/work/dex/classes2.dex */
    public static class HistoryPrinter {
        int oldState = 0;
        int oldState2 = 0;
        int oldLevel = -1;
        int oldStatus = -1;
        int oldHealth = -1;
        int oldPlug = -1;
        int oldTemp = -1;
        int oldVolt = -1;
        int oldChargeMAh = -1;
        long lastTime = -1;

        void reset() {
            this.oldState2 = 0;
            this.oldState = 0;
            this.oldLevel = -1;
            this.oldStatus = -1;
            this.oldHealth = -1;
            this.oldPlug = -1;
            this.oldTemp = -1;
            this.oldVolt = -1;
            this.oldChargeMAh = -1;
        }

        public void printNextItem(PrintWriter printWriter, HistoryItem historyItem, long j, boolean z, boolean z2) {
            printWriter.print(printNextItem(historyItem, j, z, z2));
        }

        public void printNextItem(ProtoOutputStream protoOutputStream, HistoryItem historyItem, long j, boolean z) {
            String[] split = printNextItem(historyItem, j, true, z).split("\n");
            for (String str : split) {
                protoOutputStream.write(2237677961222L, str);
            }
        }

        private String printNextItem(HistoryItem historyItem, long j, boolean z, boolean z2) {
            String[] strArr;
            StringBuilder sb = new StringBuilder();
            if (!z) {
                sb.append("  ");
                TimeUtils.formatDuration(historyItem.time - j, sb, 19);
                sb.append(" (");
                sb.append(historyItem.numReadInts);
                sb.append(") ");
            } else {
                sb.append(9);
                sb.append(',');
                sb.append(BatteryStats.HISTORY_DATA);
                sb.append(',');
                if (this.lastTime < 0) {
                    sb.append(historyItem.time - j);
                } else {
                    sb.append(historyItem.time - this.lastTime);
                }
                this.lastTime = historyItem.time;
            }
            if (historyItem.cmd == 4) {
                if (z) {
                    sb.append(SettingsStringUtil.DELIMITER);
                }
                sb.append("START\n");
                reset();
            } else if (historyItem.cmd == 5 || historyItem.cmd == 7) {
                if (z) {
                    sb.append(SettingsStringUtil.DELIMITER);
                }
                if (historyItem.cmd == 7) {
                    sb.append("RESET:");
                    reset();
                }
                sb.append("TIME:");
                if (z) {
                    sb.append(historyItem.currentTime);
                    sb.append("\n");
                } else {
                    sb.append(" ");
                    sb.append(DateFormat.format("yyyy-MM-dd-HH-mm-ss", historyItem.currentTime).toString());
                    sb.append("\n");
                }
            } else if (historyItem.cmd == 8) {
                if (z) {
                    sb.append(SettingsStringUtil.DELIMITER);
                }
                sb.append("SHUTDOWN\n");
            } else if (historyItem.cmd == 6) {
                if (z) {
                    sb.append(SettingsStringUtil.DELIMITER);
                }
                sb.append("*OVERFLOW*\n");
            } else {
                if (!z) {
                    if (historyItem.batteryLevel < 10) {
                        sb.append("00");
                    } else if (historyItem.batteryLevel < 100) {
                        sb.append("0");
                    }
                    sb.append(historyItem.batteryLevel);
                    if (z2) {
                        sb.append(" ");
                        if (historyItem.states >= 0) {
                            if (historyItem.states < 16) {
                                sb.append("0000000");
                            } else if (historyItem.states < 256) {
                                sb.append("000000");
                            } else if (historyItem.states < 4096) {
                                sb.append("00000");
                            } else if (historyItem.states < 65536) {
                                sb.append("0000");
                            } else if (historyItem.states < 1048576) {
                                sb.append("000");
                            } else if (historyItem.states < 16777216) {
                                sb.append("00");
                            } else if (historyItem.states < 268435456) {
                                sb.append("0");
                            }
                        }
                        sb.append(Integer.toHexString(historyItem.states));
                    }
                } else if (this.oldLevel != historyItem.batteryLevel) {
                    this.oldLevel = historyItem.batteryLevel;
                    sb.append(",Bl=");
                    sb.append(historyItem.batteryLevel);
                }
                if (this.oldStatus != historyItem.batteryStatus) {
                    this.oldStatus = historyItem.batteryStatus;
                    sb.append(z ? ",Bs=" : " status=");
                    switch (this.oldStatus) {
                        case 1:
                            sb.append(z ? "?" : "unknown");
                            break;
                        case 2:
                            sb.append(z ? "c" : "charging");
                            break;
                        case 3:
                            sb.append(z ? "d" : "discharging");
                            break;
                        case 4:
                            sb.append(z ? "n" : "not-charging");
                            break;
                        case 5:
                            sb.append(z ? "f" : "full");
                            break;
                        default:
                            sb.append(this.oldStatus);
                            break;
                    }
                }
                if (this.oldHealth != historyItem.batteryHealth) {
                    this.oldHealth = historyItem.batteryHealth;
                    sb.append(z ? ",Bh=" : " health=");
                    switch (this.oldHealth) {
                        case 1:
                            sb.append(z ? "?" : "unknown");
                            break;
                        case 2:
                            sb.append(z ? "g" : "good");
                            break;
                        case 3:
                            sb.append(z ? BatteryStats.HISTORY_DATA : "overheat");
                            break;
                        case 4:
                            sb.append(z ? "d" : "dead");
                            break;
                        case 5:
                            sb.append(z ? Telephony.BaseMmsColumns.MMS_VERSION : "over-voltage");
                            break;
                        case 6:
                            sb.append(z ? "f" : "failure");
                            break;
                        case 7:
                            sb.append(z ? "c" : "cold");
                            break;
                        default:
                            sb.append(this.oldHealth);
                            break;
                    }
                }
                if (this.oldPlug != historyItem.batteryPlugType) {
                    this.oldPlug = historyItem.batteryPlugType;
                    sb.append(z ? ",Bp=" : " plug=");
                    int i = this.oldPlug;
                    if (i != 4) {
                        switch (i) {
                            case 0:
                                sb.append(z ? "n" : "none");
                                break;
                            case 1:
                                sb.append(z ? "a" : "ac");
                                break;
                            case 2:
                                sb.append(z ? "u" : "usb");
                                break;
                            default:
                                sb.append(this.oldPlug);
                                break;
                        }
                    } else {
                        sb.append(z ? "w" : "wireless");
                    }
                }
                if (this.oldTemp != historyItem.batteryTemperature) {
                    this.oldTemp = historyItem.batteryTemperature;
                    sb.append(z ? ",Bt=" : " temp=");
                    sb.append(this.oldTemp);
                }
                if (this.oldVolt != historyItem.batteryVoltage) {
                    this.oldVolt = historyItem.batteryVoltage;
                    sb.append(z ? ",Bv=" : " volt=");
                    sb.append(this.oldVolt);
                }
                int i2 = historyItem.batteryChargeUAh / 1000;
                if (this.oldChargeMAh != i2) {
                    this.oldChargeMAh = i2;
                    sb.append(z ? ",Bcc=" : " charge=");
                    sb.append(this.oldChargeMAh);
                }
                BatteryStats.printBitDescriptions(sb, this.oldState, historyItem.states, historyItem.wakelockTag, BatteryStats.HISTORY_STATE_DESCRIPTIONS, !z);
                BatteryStats.printBitDescriptions(sb, this.oldState2, historyItem.states2, null, BatteryStats.HISTORY_STATE2_DESCRIPTIONS, !z);
                if (historyItem.wakeReasonTag != null) {
                    if (z) {
                        sb.append(",wr=");
                        sb.append(historyItem.wakeReasonTag.poolIdx);
                    } else {
                        sb.append(" wake_reason=");
                        sb.append(historyItem.wakeReasonTag.uid);
                        sb.append(":\"");
                        sb.append(historyItem.wakeReasonTag.string);
                        sb.append("\"");
                    }
                }
                if (historyItem.eventCode != 0) {
                    sb.append(z ? "," : " ");
                    if ((historyItem.eventCode & 32768) != 0) {
                        sb.append("+");
                    } else if ((historyItem.eventCode & 16384) != 0) {
                        sb.append("-");
                    }
                    if (z) {
                        strArr = BatteryStats.HISTORY_EVENT_CHECKIN_NAMES;
                    } else {
                        strArr = BatteryStats.HISTORY_EVENT_NAMES;
                    }
                    int i3 = historyItem.eventCode & HistoryItem.EVENT_TYPE_MASK;
                    if (i3 >= 0 && i3 < strArr.length) {
                        sb.append(strArr[i3]);
                    } else {
                        sb.append(z ? "Ev" : ZenModeConfig.EVENT_PATH);
                        sb.append(i3);
                    }
                    sb.append("=");
                    if (z) {
                        sb.append(historyItem.eventTag.poolIdx);
                    } else {
                        sb.append(BatteryStats.HISTORY_EVENT_INT_FORMATTERS[i3].applyAsString(historyItem.eventTag.uid));
                        sb.append(":\"");
                        sb.append(historyItem.eventTag.string);
                        sb.append("\"");
                    }
                }
                sb.append("\n");
                if (historyItem.stepDetails != null) {
                    if (!z) {
                        sb.append("                 Details: cpu=");
                        sb.append(historyItem.stepDetails.userTime);
                        sb.append("u+");
                        sb.append(historyItem.stepDetails.systemTime);
                        sb.append("s");
                        if (historyItem.stepDetails.appCpuUid1 >= 0) {
                            sb.append(" (");
                            printStepCpuUidDetails(sb, historyItem.stepDetails.appCpuUid1, historyItem.stepDetails.appCpuUTime1, historyItem.stepDetails.appCpuSTime1);
                            if (historyItem.stepDetails.appCpuUid2 >= 0) {
                                sb.append(", ");
                                printStepCpuUidDetails(sb, historyItem.stepDetails.appCpuUid2, historyItem.stepDetails.appCpuUTime2, historyItem.stepDetails.appCpuSTime2);
                            }
                            if (historyItem.stepDetails.appCpuUid3 >= 0) {
                                sb.append(", ");
                                printStepCpuUidDetails(sb, historyItem.stepDetails.appCpuUid3, historyItem.stepDetails.appCpuUTime3, historyItem.stepDetails.appCpuSTime3);
                            }
                            sb.append(')');
                        }
                        sb.append("\n");
                        sb.append("                          /proc/stat=");
                        sb.append(historyItem.stepDetails.statUserTime);
                        sb.append(" usr, ");
                        sb.append(historyItem.stepDetails.statSystemTime);
                        sb.append(" sys, ");
                        sb.append(historyItem.stepDetails.statIOWaitTime);
                        sb.append(" io, ");
                        sb.append(historyItem.stepDetails.statIrqTime);
                        sb.append(" irq, ");
                        sb.append(historyItem.stepDetails.statSoftIrqTime);
                        sb.append(" sirq, ");
                        sb.append(historyItem.stepDetails.statIdlTime);
                        sb.append(" idle");
                        int i4 = historyItem.stepDetails.statUserTime + historyItem.stepDetails.statSystemTime + historyItem.stepDetails.statIOWaitTime + historyItem.stepDetails.statIrqTime + historyItem.stepDetails.statSoftIrqTime;
                        int i5 = historyItem.stepDetails.statIdlTime + i4;
                        if (i5 > 0) {
                            sb.append(" (");
                            sb.append(String.format("%.1f%%", Float.valueOf((i4 / i5) * 100.0f)));
                            sb.append(" of ");
                            StringBuilder sb2 = new StringBuilder(64);
                            BatteryStats.formatTimeMsNoSpace(sb2, i5 * 10);
                            sb.append((CharSequence) sb2);
                            sb.append(")");
                        }
                        sb.append(", PlatformIdleStat ");
                        sb.append(historyItem.stepDetails.statPlatformIdleState);
                        sb.append("\n");
                        sb.append(", SubsystemPowerState ");
                        sb.append(historyItem.stepDetails.statSubsystemPowerState);
                        sb.append("\n");
                    } else {
                        sb.append(9);
                        sb.append(',');
                        sb.append(BatteryStats.HISTORY_DATA);
                        sb.append(",0,Dcpu=");
                        sb.append(historyItem.stepDetails.userTime);
                        sb.append(SettingsStringUtil.DELIMITER);
                        sb.append(historyItem.stepDetails.systemTime);
                        if (historyItem.stepDetails.appCpuUid1 >= 0) {
                            printStepCpuUidCheckinDetails(sb, historyItem.stepDetails.appCpuUid1, historyItem.stepDetails.appCpuUTime1, historyItem.stepDetails.appCpuSTime1);
                            if (historyItem.stepDetails.appCpuUid2 >= 0) {
                                printStepCpuUidCheckinDetails(sb, historyItem.stepDetails.appCpuUid2, historyItem.stepDetails.appCpuUTime2, historyItem.stepDetails.appCpuSTime2);
                            }
                            if (historyItem.stepDetails.appCpuUid3 >= 0) {
                                printStepCpuUidCheckinDetails(sb, historyItem.stepDetails.appCpuUid3, historyItem.stepDetails.appCpuUTime3, historyItem.stepDetails.appCpuSTime3);
                            }
                        }
                        sb.append("\n");
                        sb.append(9);
                        sb.append(',');
                        sb.append(BatteryStats.HISTORY_DATA);
                        sb.append(",0,Dpst=");
                        sb.append(historyItem.stepDetails.statUserTime);
                        sb.append(',');
                        sb.append(historyItem.stepDetails.statSystemTime);
                        sb.append(',');
                        sb.append(historyItem.stepDetails.statIOWaitTime);
                        sb.append(',');
                        sb.append(historyItem.stepDetails.statIrqTime);
                        sb.append(',');
                        sb.append(historyItem.stepDetails.statSoftIrqTime);
                        sb.append(',');
                        sb.append(historyItem.stepDetails.statIdlTime);
                        sb.append(',');
                        if (historyItem.stepDetails.statPlatformIdleState != null) {
                            sb.append(historyItem.stepDetails.statPlatformIdleState);
                            if (historyItem.stepDetails.statSubsystemPowerState != null) {
                                sb.append(',');
                            }
                        }
                        if (historyItem.stepDetails.statSubsystemPowerState != null) {
                            sb.append(historyItem.stepDetails.statSubsystemPowerState);
                        }
                        sb.append("\n");
                    }
                }
                this.oldState = historyItem.states;
                this.oldState2 = historyItem.states2;
            }
            return sb.toString();
        }

        private void printStepCpuUidDetails(StringBuilder sb, int i, int i2, int i3) {
            UserHandle.formatUid(sb, i);
            sb.append("=");
            sb.append(i2);
            sb.append("u+");
            sb.append(i3);
            sb.append("s");
        }

        private void printStepCpuUidCheckinDetails(StringBuilder sb, int i, int i2, int i3) {
            sb.append('/');
            sb.append(i);
            sb.append(SettingsStringUtil.DELIMITER);
            sb.append(i2);
            sb.append(SettingsStringUtil.DELIMITER);
            sb.append(i3);
        }
    }

    private void printSizeValue(PrintWriter printWriter, long j) {
        float f = (float) j;
        String str = TextClassifier.TYPE_UNKNOWN;
        if (f >= 10240.0f) {
            str = "KB";
            f /= 1024.0f;
        }
        if (f >= 10240.0f) {
            str = "MB";
            f /= 1024.0f;
        }
        if (f >= 10240.0f) {
            str = "GB";
            f /= 1024.0f;
        }
        if (f >= 10240.0f) {
            str = "TB";
            f /= 1024.0f;
        }
        if (f >= 10240.0f) {
            str = "PB";
            f /= 1024.0f;
        }
        printWriter.print((int) f);
        printWriter.print(str);
    }

    private static boolean dumpTimeEstimate(PrintWriter printWriter, String str, String str2, String str3, long j) {
        if (j < 0) {
            return false;
        }
        printWriter.print(str);
        printWriter.print(str2);
        printWriter.print(str3);
        StringBuilder sb = new StringBuilder(64);
        formatTimeMs(sb, j);
        printWriter.print(sb);
        printWriter.println();
        return true;
    }

    private static boolean dumpDurationSteps(PrintWriter printWriter, String str, String str2, LevelStepTracker levelStepTracker, boolean z) {
        int i;
        int i2;
        char c;
        char c2 = 0;
        if (levelStepTracker == null || (i = levelStepTracker.mNumStepDurations) <= 0) {
            return false;
        }
        if (!z) {
            printWriter.println(str2);
        }
        String[] strArr = new String[5];
        int i3 = 0;
        for (i = levelStepTracker.mNumStepDurations; i3 < i; i = i2) {
            long durationAt = levelStepTracker.getDurationAt(i3);
            int levelAt = levelStepTracker.getLevelAt(i3);
            long initModeAt = levelStepTracker.getInitModeAt(i3);
            long modModeAt = levelStepTracker.getModModeAt(i3);
            if (z) {
                strArr[c2] = Long.toString(durationAt);
                strArr[1] = Integer.toString(levelAt);
                if ((modModeAt & 3) == 0) {
                    i2 = i;
                    switch (((int) (initModeAt & 3)) + 1) {
                        case 1:
                            strArr[2] = "s-";
                            break;
                        case 2:
                            strArr[2] = "s+";
                            break;
                        case 3:
                            strArr[2] = "sd";
                            break;
                        case 4:
                            strArr[2] = "sds";
                            break;
                        default:
                            strArr[2] = "?";
                            break;
                    }
                } else {
                    i2 = i;
                    strArr[2] = TextClassifier.TYPE_UNKNOWN;
                }
                if ((modModeAt & 4) == 0) {
                    strArr[3] = (initModeAt & 4) != 0 ? "p+" : "p-";
                } else {
                    strArr[3] = TextClassifier.TYPE_UNKNOWN;
                }
                if ((modModeAt & 8) == 0) {
                    strArr[4] = (initModeAt & 8) != 0 ? "i+" : "i-";
                } else {
                    strArr[4] = TextClassifier.TYPE_UNKNOWN;
                }
                dumpLine(printWriter, 0, "i", str2, strArr);
                c2 = 0;
            } else {
                i2 = i;
                printWriter.print(str);
                printWriter.print("#");
                printWriter.print(i3);
                printWriter.print(": ");
                TimeUtils.formatDuration(durationAt, printWriter);
                printWriter.print(" to ");
                printWriter.print(levelAt);
                if ((modModeAt & 3) == 0) {
                    printWriter.print(" (");
                    switch (((int) (initModeAt & 3)) + 1) {
                        case 1:
                            printWriter.print("screen-off");
                            break;
                        case 2:
                            printWriter.print("screen-on");
                            break;
                        case 3:
                            printWriter.print("screen-doze");
                            break;
                        case 4:
                            printWriter.print("screen-doze-suspend");
                            break;
                        default:
                            printWriter.print("screen-?");
                            break;
                    }
                    c = 1;
                } else {
                    c = c2;
                }
                if ((modModeAt & 4) == 0) {
                    printWriter.print(c != 0 ? ", " : " (");
                    printWriter.print((initModeAt & 4) != 0 ? "power-save-on" : "power-save-off");
                    c = 1;
                }
                if ((modModeAt & 8) == 0) {
                    printWriter.print(c != 0 ? ", " : " (");
                    printWriter.print((initModeAt & 8) != 0 ? "device-idle-on" : "device-idle-off");
                    c = 1;
                }
                if (c != 0) {
                    printWriter.print(")");
                }
                printWriter.println();
            }
            i3++;
        }
        return true;
    }

    private static void dumpDurationSteps(ProtoOutputStream protoOutputStream, long j, LevelStepTracker levelStepTracker) {
        int i;
        if (levelStepTracker == null) {
            return;
        }
        int i2 = levelStepTracker.mNumStepDurations;
        for (int i3 = 0; i3 < i2; i3++) {
            long start = protoOutputStream.start(j);
            protoOutputStream.write(1112396529665L, levelStepTracker.getDurationAt(i3));
            protoOutputStream.write(1120986464258L, levelStepTracker.getLevelAt(i3));
            long initModeAt = levelStepTracker.getInitModeAt(i3);
            long modModeAt = levelStepTracker.getModModeAt(i3);
            int i4 = 3;
            if ((modModeAt & 3) == 0) {
                switch (((int) (3 & initModeAt)) + 1) {
                    case 1:
                        i = 2;
                        break;
                    case 2:
                        i = 1;
                        break;
                    case 3:
                        i = 3;
                        break;
                    case 4:
                        i = 4;
                        break;
                    default:
                        i = 5;
                        break;
                }
            } else {
                i = 0;
            }
            protoOutputStream.write(1159641169923L, i);
            protoOutputStream.write(1159641169924L, (modModeAt & 4) == 0 ? (4 & initModeAt) == 0 ? 2 : 1 : 0);
            if ((modModeAt & 8) != 0) {
                i4 = 0;
            } else if ((initModeAt & 8) != 0) {
                i4 = 2;
            }
            protoOutputStream.write(1159641169925L, i4);
            protoOutputStream.end(start);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dumpHistoryLocked(PrintWriter printWriter, int i, long j, boolean z) {
        long j2;
        HistoryPrinter historyPrinter = new HistoryPrinter();
        HistoryItem historyItem = new HistoryItem();
        long j3 = -1;
        long j4 = -1;
        boolean z2 = false;
        while (getNextHistoryLocked(historyItem)) {
            long j5 = historyItem.time;
            long j6 = j3 < 0 ? j5 : j3;
            if (historyItem.time >= j) {
                if (j >= 0 && !z2) {
                    if (historyItem.cmd == 5 || historyItem.cmd == 7 || historyItem.cmd == 4 || historyItem.cmd == 8) {
                        j2 = j5;
                        historyPrinter.printNextItem(printWriter, historyItem, j6, z, (i & 32) != 0);
                        historyItem.cmd = (byte) 0;
                    } else if (historyItem.currentTime != 0) {
                        byte b = historyItem.cmd;
                        historyItem.cmd = (byte) 5;
                        j2 = j5;
                        historyPrinter.printNextItem(printWriter, historyItem, j6, z, (i & 32) != 0);
                        historyItem.cmd = b;
                    }
                    z2 = true;
                    boolean z3 = z2;
                    historyPrinter.printNextItem(printWriter, historyItem, j6, z, (i & 32) == 0);
                    z2 = z3;
                }
                j2 = j5;
                boolean z32 = z2;
                historyPrinter.printNextItem(printWriter, historyItem, j6, z, (i & 32) == 0);
                z2 = z32;
            } else {
                j2 = j5;
            }
            j3 = j6;
            j4 = j2;
        }
        if (j >= 0) {
            commitCurrentHistoryBatchLocked();
            printWriter.print(z ? "NEXT: " : "  NEXT: ");
            printWriter.println(j4 + 1);
        }
    }

    private void dumpDailyLevelStepSummary(PrintWriter printWriter, String str, String str2, LevelStepTracker levelStepTracker, StringBuilder sb, int[] iArr) {
        if (levelStepTracker == null) {
            return;
        }
        long computeTimeEstimate = levelStepTracker.computeTimeEstimate(0L, 0L, iArr);
        if (computeTimeEstimate >= 0) {
            printWriter.print(str);
            printWriter.print(str2);
            printWriter.print(" total time: ");
            sb.setLength(0);
            formatTimeMs(sb, computeTimeEstimate);
            printWriter.print(sb);
            printWriter.print(" (from ");
            printWriter.print(iArr[0]);
            printWriter.println(" steps)");
        }
        for (int i = 0; i < STEP_LEVEL_MODES_OF_INTEREST.length; i++) {
            long computeTimeEstimate2 = levelStepTracker.computeTimeEstimate(STEP_LEVEL_MODES_OF_INTEREST[i], STEP_LEVEL_MODE_VALUES[i], iArr);
            if (computeTimeEstimate2 > 0) {
                printWriter.print(str);
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.print(STEP_LEVEL_MODE_LABELS[i]);
                printWriter.print(" time: ");
                sb.setLength(0);
                formatTimeMs(sb, computeTimeEstimate2);
                printWriter.print(sb);
                printWriter.print(" (from ");
                printWriter.print(iArr[0]);
                printWriter.println(" steps)");
            }
        }
    }

    private void dumpDailyPackageChanges(PrintWriter printWriter, String str, ArrayList<PackageChange> arrayList) {
        if (arrayList == null) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Package changes:");
        for (int i = 0; i < arrayList.size(); i++) {
            PackageChange packageChange = arrayList.get(i);
            if (packageChange.mUpdate) {
                printWriter.print(str);
                printWriter.print("  Update ");
                printWriter.print(packageChange.mPackageName);
                printWriter.print(" vers=");
                printWriter.println(packageChange.mVersionCode);
            } else {
                printWriter.print(str);
                printWriter.print("  Uninstall ");
                printWriter.println(packageChange.mPackageName);
            }
        }
    }

    public void dumpLocked(Context context, PrintWriter printWriter, int i, int i2, long j) {
        ArrayList<PackageChange> arrayList;
        boolean z;
        prepareForDumpLocked();
        boolean z2 = (i & 14) != 0;
        if ((i & 8) != 0 || !z2) {
            long historyTotalSize = getHistoryTotalSize();
            long historyUsedSize = getHistoryUsedSize();
            if (startIteratingHistoryLocked()) {
                try {
                    printWriter.print("Battery History (");
                    printWriter.print((100 * historyUsedSize) / historyTotalSize);
                    printWriter.print("% used, ");
                    printSizeValue(printWriter, historyUsedSize);
                    printWriter.print(" used of ");
                    printSizeValue(printWriter, historyTotalSize);
                    printWriter.print(", ");
                    printWriter.print(getHistoryStringPoolSize());
                    printWriter.print(" strings using ");
                    printSizeValue(printWriter, getHistoryStringPoolBytes());
                    printWriter.println("):");
                    dumpHistoryLocked(printWriter, i, j, false);
                    printWriter.println();
                } finally {
                    finishIteratingHistoryLocked();
                }
            }
            if (startIteratingOldHistoryLocked()) {
                try {
                    HistoryItem historyItem = new HistoryItem();
                    printWriter.println("Old battery History:");
                    HistoryPrinter historyPrinter = new HistoryPrinter();
                    long j2 = -1;
                    while (getNextOldHistoryLocked(historyItem)) {
                        if (j2 < 0) {
                            j2 = historyItem.time;
                        }
                        long j3 = j2;
                        historyPrinter.printNextItem(printWriter, historyItem, j3, false, (i & 32) != 0);
                        j2 = j3;
                    }
                    printWriter.println();
                } finally {
                    finishIteratingOldHistoryLocked();
                }
            }
        }
        if (z2 && (i & 6) == 0) {
            return;
        }
        if (!z2) {
            SparseArray<? extends Uid> uidStats = getUidStats();
            int size = uidStats.size();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            boolean z3 = false;
            for (int i3 = 0; i3 < size; i3++) {
                SparseArray<? extends Uid.Pid> pidStats = uidStats.valueAt(i3).getPidStats();
                if (pidStats != null) {
                    boolean z4 = z3;
                    for (int i4 = 0; i4 < pidStats.size(); i4++) {
                        Uid.Pid valueAt = pidStats.valueAt(i4);
                        if (!z4) {
                            printWriter.println("Per-PID Stats:");
                            z4 = true;
                        }
                        long j4 = valueAt.mWakeSumMs + (valueAt.mWakeNesting > 0 ? elapsedRealtime - valueAt.mWakeStartMs : 0L);
                        printWriter.print("  PID ");
                        printWriter.print(pidStats.keyAt(i4));
                        printWriter.print(" wake time: ");
                        TimeUtils.formatDuration(j4, printWriter);
                        printWriter.println(TextClassifier.TYPE_UNKNOWN);
                    }
                    z3 = z4;
                }
            }
            if (z3) {
                printWriter.println();
            }
        }
        if (!z2 || (i & 2) != 0) {
            if (dumpDurationSteps(printWriter, "  ", "Discharge step durations:", getDischargeLevelStepTracker(), false)) {
                long computeBatteryTimeRemaining = computeBatteryTimeRemaining(SystemClock.elapsedRealtime() * 1000);
                if (computeBatteryTimeRemaining >= 0) {
                    printWriter.print("  Estimated discharge time remaining: ");
                    TimeUtils.formatDuration(computeBatteryTimeRemaining / 1000, printWriter);
                    printWriter.println();
                }
                LevelStepTracker dischargeLevelStepTracker = getDischargeLevelStepTracker();
                for (int i5 = 0; i5 < STEP_LEVEL_MODES_OF_INTEREST.length; i5++) {
                    dumpTimeEstimate(printWriter, "  Estimated ", STEP_LEVEL_MODE_LABELS[i5], " time: ", dischargeLevelStepTracker.computeTimeEstimate(STEP_LEVEL_MODES_OF_INTEREST[i5], STEP_LEVEL_MODE_VALUES[i5], null));
                }
                printWriter.println();
            }
            if (dumpDurationSteps(printWriter, "  ", "Charge step durations:", getChargeLevelStepTracker(), false)) {
                long computeChargeTimeRemaining = computeChargeTimeRemaining(SystemClock.elapsedRealtime() * 1000);
                if (computeChargeTimeRemaining >= 0) {
                    printWriter.print("  Estimated charge time remaining: ");
                    TimeUtils.formatDuration(computeChargeTimeRemaining / 1000, printWriter);
                    printWriter.println();
                }
                printWriter.println();
            }
        }
        if (z2 && (i & 4) == 0) {
            z = false;
        } else {
            printWriter.println("Daily stats:");
            printWriter.print("  Current start time: ");
            printWriter.println(DateFormat.format("yyyy-MM-dd-HH-mm-ss", getCurrentDailyStartTime()).toString());
            printWriter.print("  Next min deadline: ");
            printWriter.println(DateFormat.format("yyyy-MM-dd-HH-mm-ss", getNextMinDailyDeadline()).toString());
            printWriter.print("  Next max deadline: ");
            printWriter.println(DateFormat.format("yyyy-MM-dd-HH-mm-ss", getNextMaxDailyDeadline()).toString());
            StringBuilder sb = new StringBuilder(64);
            int[] iArr = new int[1];
            LevelStepTracker dailyDischargeLevelStepTracker = getDailyDischargeLevelStepTracker();
            LevelStepTracker dailyChargeLevelStepTracker = getDailyChargeLevelStepTracker();
            ArrayList<PackageChange> dailyPackageChanges = getDailyPackageChanges();
            if (dailyDischargeLevelStepTracker.mNumStepDurations > 0 || dailyChargeLevelStepTracker.mNumStepDurations > 0 || dailyPackageChanges != null) {
                if ((i & 4) != 0 || !z2) {
                    if (dumpDurationSteps(printWriter, "    ", "  Current daily discharge step durations:", dailyDischargeLevelStepTracker, false)) {
                        arrayList = dailyPackageChanges;
                        dumpDailyLevelStepSummary(printWriter, "      ", "Discharge", dailyDischargeLevelStepTracker, sb, iArr);
                    } else {
                        arrayList = dailyPackageChanges;
                    }
                    if (dumpDurationSteps(printWriter, "    ", "  Current daily charge step durations:", dailyChargeLevelStepTracker, false)) {
                        dumpDailyLevelStepSummary(printWriter, "      ", "Charge", dailyChargeLevelStepTracker, sb, iArr);
                    }
                    dumpDailyPackageChanges(printWriter, "    ", arrayList);
                } else {
                    printWriter.println("  Current daily steps:");
                    dumpDailyLevelStepSummary(printWriter, "    ", "Discharge", dailyDischargeLevelStepTracker, sb, iArr);
                    dumpDailyLevelStepSummary(printWriter, "    ", "Charge", dailyChargeLevelStepTracker, sb, iArr);
                }
            }
            int i6 = 0;
            while (true) {
                DailyItem dailyItemLocked = getDailyItemLocked(i6);
                if (dailyItemLocked == null) {
                    break;
                }
                int i7 = i6 + 1;
                int i8 = i & 4;
                if (i8 != 0) {
                    printWriter.println();
                }
                printWriter.print("  Daily from ");
                printWriter.print(DateFormat.format("yyyy-MM-dd-HH-mm-ss", dailyItemLocked.mStartTime).toString());
                printWriter.print(" to ");
                printWriter.print(DateFormat.format("yyyy-MM-dd-HH-mm-ss", dailyItemLocked.mEndTime).toString());
                printWriter.println(SettingsStringUtil.DELIMITER);
                if (i8 != 0 || !z2) {
                    if (dumpDurationSteps(printWriter, "      ", "    Discharge step durations:", dailyItemLocked.mDischargeSteps, false)) {
                        dumpDailyLevelStepSummary(printWriter, "        ", "Discharge", dailyItemLocked.mDischargeSteps, sb, iArr);
                    }
                    if (dumpDurationSteps(printWriter, "      ", "    Charge step durations:", dailyItemLocked.mChargeSteps, false)) {
                        dumpDailyLevelStepSummary(printWriter, "        ", "Charge", dailyItemLocked.mChargeSteps, sb, iArr);
                    }
                    dumpDailyPackageChanges(printWriter, "    ", dailyItemLocked.mPackageChanges);
                } else {
                    dumpDailyLevelStepSummary(printWriter, "    ", "Discharge", dailyItemLocked.mDischargeSteps, sb, iArr);
                    dumpDailyLevelStepSummary(printWriter, "    ", "Charge", dailyItemLocked.mChargeSteps, sb, iArr);
                }
                i6 = i7;
            }
            z = false;
            printWriter.println();
        }
        if (z2 && (i & 2) == 0) {
            return;
        }
        printWriter.println("Statistics since last charge:");
        printWriter.println("  System starts: " + getStartCount() + ", currently on battery: " + getIsOnBattery());
        dumpLocked(context, printWriter, TextClassifier.TYPE_UNKNOWN, 0, i2, (i & 64) != 0 ? true : z);
        printWriter.println();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dumpCheckinLocked(Context context, PrintWriter printWriter, List<ApplicationInfo> list, int i, long j) {
        prepareForDumpLocked();
        dumpLine(printWriter, 0, "i", VERSION_DATA, 32, Integer.valueOf(getParcelVersion()), getStartPlatformVersion(), getEndPlatformVersion());
        getHistoryBaseTime();
        SystemClock.elapsedRealtime();
        if ((i & 24) != 0 && startIteratingHistoryLocked()) {
            for (int i2 = 0; i2 < getHistoryStringPoolSize(); i2++) {
                try {
                    printWriter.print(9);
                    printWriter.print(',');
                    printWriter.print(HISTORY_STRING_POOL);
                    printWriter.print(',');
                    printWriter.print(i2);
                    printWriter.print(",");
                    printWriter.print(getHistoryTagPoolUid(i2));
                    printWriter.print(",\"");
                    printWriter.print(getHistoryTagPoolString(i2).replace("\\", "\\\\").replace("\"", "\\\""));
                    printWriter.print("\"");
                    printWriter.println();
                } finally {
                    finishIteratingHistoryLocked();
                }
            }
            dumpHistoryLocked(printWriter, i, j, true);
        }
        if ((i & 8) != 0) {
            return;
        }
        if (list != null) {
            SparseArray sparseArray = new SparseArray();
            for (int i3 = 0; i3 < list.size(); i3++) {
                ApplicationInfo applicationInfo = list.get(i3);
                Pair pair = (Pair) sparseArray.get(UserHandle.getAppId(applicationInfo.uid));
                if (pair == null) {
                    pair = new Pair(new ArrayList(), new MutableBoolean(false));
                    sparseArray.put(UserHandle.getAppId(applicationInfo.uid), pair);
                }
                ((ArrayList) pair.first).add(applicationInfo.packageName);
            }
            SparseArray<? extends Uid> uidStats = getUidStats();
            int size = uidStats.size();
            String[] strArr = new String[2];
            for (int i4 = 0; i4 < size; i4++) {
                int appId = UserHandle.getAppId(uidStats.keyAt(i4));
                Pair pair2 = (Pair) sparseArray.get(appId);
                if (pair2 != null && !((MutableBoolean) pair2.second).value) {
                    ((MutableBoolean) pair2.second).value = true;
                    for (int i5 = 0; i5 < ((ArrayList) pair2.first).size(); i5++) {
                        strArr[0] = Integer.toString(appId);
                        strArr[1] = (String) ((ArrayList) pair2.first).get(i5);
                        dumpLine(printWriter, 0, "i", UID_DATA, strArr);
                    }
                }
            }
        }
        if ((i & 4) == 0) {
            dumpDurationSteps(printWriter, TextClassifier.TYPE_UNKNOWN, DISCHARGE_STEP_DATA, getDischargeLevelStepTracker(), true);
            String[] strArr2 = new String[1];
            long computeBatteryTimeRemaining = computeBatteryTimeRemaining(SystemClock.elapsedRealtime() * 1000);
            if (computeBatteryTimeRemaining >= 0) {
                strArr2[0] = Long.toString(computeBatteryTimeRemaining);
                dumpLine(printWriter, 0, "i", DISCHARGE_TIME_REMAIN_DATA, strArr2);
            }
            dumpDurationSteps(printWriter, TextClassifier.TYPE_UNKNOWN, CHARGE_STEP_DATA, getChargeLevelStepTracker(), true);
            long computeChargeTimeRemaining = computeChargeTimeRemaining(SystemClock.elapsedRealtime() * 1000);
            if (computeChargeTimeRemaining >= 0) {
                strArr2[0] = Long.toString(computeChargeTimeRemaining);
                dumpLine(printWriter, 0, "i", CHARGE_TIME_REMAIN_DATA, strArr2);
            }
            dumpCheckinLocked(context, printWriter, 0, -1, (i & 64) != 0);
        }
    }

    public void dumpProtoLocked(Context context, FileDescriptor fileDescriptor, List<ApplicationInfo> list, int i, long j) {
        ProtoOutputStream protoOutputStream = new ProtoOutputStream(fileDescriptor);
        prepareForDumpLocked();
        if ((i & 24) != 0) {
            dumpProtoHistoryLocked(protoOutputStream, i, j);
            protoOutputStream.flush();
            return;
        }
        long start = protoOutputStream.start(1146756268033L);
        protoOutputStream.write(1120986464257L, 32);
        protoOutputStream.write(1112396529666L, getParcelVersion());
        protoOutputStream.write(1138166333443L, getStartPlatformVersion());
        protoOutputStream.write(1138166333444L, getEndPlatformVersion());
        if ((i & 4) == 0) {
            BatteryStatsHelper batteryStatsHelper = new BatteryStatsHelper(context, false, (i & 64) != 0);
            batteryStatsHelper.create(this);
            batteryStatsHelper.refreshStats(0, -1);
            dumpProtoAppsLocked(protoOutputStream, batteryStatsHelper, list);
            dumpProtoSystemLocked(protoOutputStream, batteryStatsHelper);
        }
        protoOutputStream.end(start);
        protoOutputStream.flush();
    }

    private void dumpProtoAppsLocked(ProtoOutputStream protoOutputStream, BatteryStatsHelper batteryStatsHelper, List<ApplicationInfo> list) {
        ArrayList arrayList;
        long j;
        SparseArray<? extends Uid.Sensor> sparseArray;
        Uid uid;
        SparseArray sparseArray2;
        long[] cpuFreqTimes;
        long j2;
        long j3;
        ArrayList arrayList2;
        ArrayMap<String, ? extends Uid.Pkg> arrayMap;
        int i;
        long j4;
        long j5;
        int i2;
        long uptimeMillis = SystemClock.uptimeMillis() * 1000;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j6 = elapsedRealtime * 1000;
        long batteryUptime = getBatteryUptime(uptimeMillis);
        SparseArray sparseArray3 = new SparseArray();
        if (list != null) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                ApplicationInfo applicationInfo = list.get(i3);
                int appId = UserHandle.getAppId(applicationInfo.uid);
                ArrayList arrayList3 = (ArrayList) sparseArray3.get(appId);
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                    sparseArray3.put(appId, arrayList3);
                }
                arrayList3.add(applicationInfo.packageName);
            }
        }
        SparseArray sparseArray4 = new SparseArray();
        List usageList = batteryStatsHelper.getUsageList();
        if (usageList != null) {
            for (int i4 = 0; i4 < usageList.size(); i4++) {
                BatterySipper batterySipper = (BatterySipper) usageList.get(i4);
                if (batterySipper.drainType == BatterySipper.DrainType.APP) {
                    sparseArray4.put(batterySipper.uidObj.getUid(), batterySipper);
                }
            }
        }
        SparseArray<? extends Uid> uidStats = getUidStats();
        int size = uidStats.size();
        int i5 = 0;
        while (i5 < size) {
            int i6 = size;
            long start = protoOutputStream.start(2246267895813L);
            Uid valueAt = uidStats.valueAt(i5);
            int keyAt = uidStats.keyAt(i5);
            SparseArray sparseArray5 = sparseArray4;
            SparseArray<? extends Uid> sparseArray6 = uidStats;
            protoOutputStream.write(1120986464257L, keyAt);
            ArrayList arrayList4 = (ArrayList) sparseArray3.get(UserHandle.getAppId(keyAt));
            if (arrayList4 == null) {
                arrayList4 = new ArrayList();
            }
            int i7 = i5;
            ArrayMap<String, ? extends Uid.Pkg> packageStats = valueAt.getPackageStats();
            int size2 = packageStats.size() - 1;
            while (true) {
                arrayList = arrayList4;
                if (size2 < 0) {
                    break;
                }
                String keyAt2 = packageStats.keyAt(size2);
                ArrayMap<String, ? extends Uid.Pkg.Serv> serviceStats = packageStats.valueAt(size2).getServiceStats();
                if (serviceStats.size() == 0) {
                    arrayMap = packageStats;
                    i = size2;
                    j2 = elapsedRealtime;
                    j3 = j6;
                    j4 = batteryUptime;
                    arrayList2 = arrayList;
                } else {
                    j2 = elapsedRealtime;
                    j3 = j6;
                    long start2 = protoOutputStream.start(2246267895810L);
                    protoOutputStream.write(1138166333441L, keyAt2);
                    arrayList2 = arrayList;
                    arrayList2.remove(keyAt2);
                    int size3 = serviceStats.size() - 1;
                    while (size3 >= 0) {
                        Uid.Pkg.Serv valueAt2 = serviceStats.valueAt(size3);
                        ArrayMap<String, ? extends Uid.Pkg> arrayMap2 = packageStats;
                        long roundUsToMs = roundUsToMs(valueAt2.getStartTime(batteryUptime, 0));
                        int starts = valueAt2.getStarts(0);
                        int launches = valueAt2.getLaunches(0);
                        if (roundUsToMs == 0 && starts == 0 && launches == 0) {
                            i2 = size2;
                            j5 = batteryUptime;
                        } else {
                            j5 = batteryUptime;
                            long start3 = protoOutputStream.start(2246267895810L);
                            protoOutputStream.write(1138166333441L, serviceStats.keyAt(size3));
                            i2 = size2;
                            protoOutputStream.write(1112396529666L, roundUsToMs);
                            protoOutputStream.write(1120986464259L, starts);
                            protoOutputStream.write(1120986464260L, launches);
                            protoOutputStream.end(start3);
                        }
                        size3--;
                        packageStats = arrayMap2;
                        batteryUptime = j5;
                        size2 = i2;
                    }
                    arrayMap = packageStats;
                    i = size2;
                    j4 = batteryUptime;
                    protoOutputStream.end(start2);
                }
                size2 = i - 1;
                arrayList4 = arrayList2;
                j6 = j3;
                elapsedRealtime = j2;
                packageStats = arrayMap;
                batteryUptime = j4;
            }
            ArrayMap<String, ? extends Uid.Pkg> arrayMap3 = packageStats;
            long j7 = elapsedRealtime;
            long j8 = j6;
            long j9 = batteryUptime;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                long start4 = protoOutputStream.start(2246267895810L);
                protoOutputStream.write(1138166333441L, str);
                protoOutputStream.end(start4);
            }
            if (valueAt.getAggregatedPartialWakelockTimer() != null) {
                Timer aggregatedPartialWakelockTimer = valueAt.getAggregatedPartialWakelockTimer();
                j = j7;
                long totalDurationMsLocked = aggregatedPartialWakelockTimer.getTotalDurationMsLocked(j);
                Timer subTimer = aggregatedPartialWakelockTimer.getSubTimer();
                long totalDurationMsLocked2 = subTimer != null ? subTimer.getTotalDurationMsLocked(j) : 0L;
                long start5 = protoOutputStream.start(1146756268056L);
                protoOutputStream.write(1112396529665L, totalDurationMsLocked);
                protoOutputStream.write(1112396529666L, totalDurationMsLocked2);
                protoOutputStream.end(start5);
            } else {
                j = j7;
            }
            int i8 = i7;
            int i9 = keyAt;
            ArrayMap<String, ? extends Uid.Pkg> arrayMap4 = arrayMap3;
            dumpTimer(protoOutputStream, 1146756268040L, valueAt.getAudioTurnedOnTimer(), j8, 0);
            dumpControllerActivityProto(protoOutputStream, 1146756268035L, valueAt.getBluetoothControllerActivity(), 0);
            Timer bluetoothScanTimer = valueAt.getBluetoothScanTimer();
            if (bluetoothScanTimer != null) {
                long start6 = protoOutputStream.start(1146756268038L);
                dumpTimer(protoOutputStream, 1146756268033L, bluetoothScanTimer, j8, 0);
                dumpTimer(protoOutputStream, 1146756268034L, valueAt.getBluetoothScanBackgroundTimer(), j8, 0);
                dumpTimer(protoOutputStream, 1146756268035L, valueAt.getBluetoothUnoptimizedScanTimer(), j8, 0);
                dumpTimer(protoOutputStream, 1146756268036L, valueAt.getBluetoothUnoptimizedScanBackgroundTimer(), j8, 0);
                protoOutputStream.write(1120986464261L, valueAt.getBluetoothScanResultCounter() != null ? valueAt.getBluetoothScanResultCounter().getCountLocked(0) : 0);
                protoOutputStream.write(1120986464262L, valueAt.getBluetoothScanResultBgCounter() != null ? valueAt.getBluetoothScanResultBgCounter().getCountLocked(0) : 0);
                protoOutputStream.end(start6);
            }
            dumpTimer(protoOutputStream, 1146756268041L, valueAt.getCameraTurnedOnTimer(), j8, 0);
            long start7 = protoOutputStream.start(1146756268039L);
            Uid uid2 = valueAt;
            protoOutputStream.write(1112396529665L, roundUsToMs(uid2.getUserCpuTimeUs(0)));
            protoOutputStream.write(1112396529666L, roundUsToMs(uid2.getSystemCpuTimeUs(0)));
            long[] cpuFreqs = getCpuFreqs();
            if (cpuFreqs != null && (cpuFreqTimes = uid2.getCpuFreqTimes(0)) != null && cpuFreqTimes.length == cpuFreqs.length) {
                long[] screenOffCpuFreqTimes = uid2.getScreenOffCpuFreqTimes(0);
                if (screenOffCpuFreqTimes == null) {
                    screenOffCpuFreqTimes = new long[cpuFreqTimes.length];
                }
                int i10 = 0;
                while (i10 < cpuFreqTimes.length) {
                    long start8 = protoOutputStream.start(2246267895811L);
                    int i11 = i10 + 1;
                    protoOutputStream.write(1120986464257L, i11);
                    protoOutputStream.write(1112396529666L, cpuFreqTimes[i10]);
                    protoOutputStream.write(1112396529667L, screenOffCpuFreqTimes[i10]);
                    protoOutputStream.end(start8);
                    i10 = i11;
                    j = j;
                    i8 = i8;
                    i9 = i9;
                }
            }
            int i12 = i8;
            int i13 = i9;
            long j10 = j;
            int i14 = 0;
            while (i14 < 7) {
                long[] cpuFreqTimes2 = uid2.getCpuFreqTimes(0, i14);
                if (cpuFreqTimes2 == null || cpuFreqTimes2.length != cpuFreqs.length) {
                    uid = uid2;
                    sparseArray2 = sparseArray3;
                } else {
                    long[] screenOffCpuFreqTimes2 = uid2.getScreenOffCpuFreqTimes(0, i14);
                    if (screenOffCpuFreqTimes2 == null) {
                        screenOffCpuFreqTimes2 = new long[cpuFreqTimes2.length];
                    }
                    long start9 = protoOutputStream.start(2246267895812L);
                    protoOutputStream.write(1159641169921L, i14);
                    int i15 = 0;
                    while (i15 < cpuFreqTimes2.length) {
                        long start10 = protoOutputStream.start(2246267895810L);
                        int i16 = i15 + 1;
                        protoOutputStream.write(1120986464257L, i16);
                        protoOutputStream.write(1112396529666L, cpuFreqTimes2[i15]);
                        protoOutputStream.write(1112396529667L, screenOffCpuFreqTimes2[i15]);
                        protoOutputStream.end(start10);
                        sparseArray3 = sparseArray3;
                        uid2 = uid2;
                        i15 = i16;
                    }
                    uid = uid2;
                    sparseArray2 = sparseArray3;
                    protoOutputStream.end(start9);
                }
                i14++;
                sparseArray3 = sparseArray2;
                uid2 = uid;
            }
            Uid uid3 = uid2;
            SparseArray sparseArray7 = sparseArray3;
            long j11 = 2246267895810L;
            protoOutputStream.end(start7);
            dumpTimer(protoOutputStream, 1146756268042L, uid3.getFlashlightTurnedOnTimer(), j8, 0);
            dumpTimer(protoOutputStream, 1146756268043L, uid3.getForegroundActivityTimer(), j8, 0);
            dumpTimer(protoOutputStream, 1146756268044L, uid3.getForegroundServiceTimer(), j8, 0);
            ArrayMap<String, SparseIntArray> jobCompletionStats = uid3.getJobCompletionStats();
            int[] iArr = {0, 1, 2, 3, 4};
            int i17 = 0;
            while (i17 < jobCompletionStats.size()) {
                SparseIntArray valueAt3 = jobCompletionStats.valueAt(i17);
                if (valueAt3 != null) {
                    long start11 = protoOutputStream.start(2246267895824L);
                    protoOutputStream.write(1138166333441L, jobCompletionStats.keyAt(i17));
                    int length = iArr.length;
                    int i18 = 0;
                    while (i18 < length) {
                        int i19 = iArr[i18];
                        long start12 = protoOutputStream.start(j11);
                        protoOutputStream.write(1159641169921L, i19);
                        protoOutputStream.write(1120986464258L, valueAt3.get(i19, 0));
                        protoOutputStream.end(start12);
                        i18++;
                        j11 = 2246267895810L;
                    }
                    protoOutputStream.end(start11);
                }
                i17++;
                j11 = 2246267895810L;
            }
            ArrayMap<String, ? extends Timer> jobStats = uid3.getJobStats();
            for (int size4 = jobStats.size() - 1; size4 >= 0; size4--) {
                Timer valueAt4 = jobStats.valueAt(size4);
                Timer subTimer2 = valueAt4.getSubTimer();
                long start13 = protoOutputStream.start(2246267895823L);
                protoOutputStream.write(1138166333441L, jobStats.keyAt(size4));
                dumpTimer(protoOutputStream, 1146756268034L, valueAt4, j8, 0);
                dumpTimer(protoOutputStream, 1146756268035L, subTimer2, j8, 0);
                protoOutputStream.end(start13);
            }
            dumpControllerActivityProto(protoOutputStream, 1146756268036L, uid3.getModemControllerActivity(), 0);
            long start14 = protoOutputStream.start(1146756268049L);
            protoOutputStream.write(1112396529665L, uid3.getNetworkActivityBytes(0, 0));
            protoOutputStream.write(1112396529666L, uid3.getNetworkActivityBytes(1, 0));
            protoOutputStream.write(1112396529667L, uid3.getNetworkActivityBytes(2, 0));
            protoOutputStream.write(1112396529668L, uid3.getNetworkActivityBytes(3, 0));
            protoOutputStream.write(1112396529669L, uid3.getNetworkActivityBytes(4, 0));
            protoOutputStream.write(1112396529670L, uid3.getNetworkActivityBytes(5, 0));
            protoOutputStream.write(1112396529671L, uid3.getNetworkActivityPackets(0, 0));
            protoOutputStream.write(1112396529672L, uid3.getNetworkActivityPackets(1, 0));
            protoOutputStream.write(1112396529673L, uid3.getNetworkActivityPackets(2, 0));
            protoOutputStream.write(1112396529674L, uid3.getNetworkActivityPackets(3, 0));
            protoOutputStream.write(1112396529675L, roundUsToMs(uid3.getMobileRadioActiveTime(0)));
            protoOutputStream.write(1120986464268L, uid3.getMobileRadioActiveCount(0));
            protoOutputStream.write(1120986464269L, uid3.getMobileRadioApWakeupCount(0));
            protoOutputStream.write(UidProto.Network.WIFI_WAKEUP_COUNT, uid3.getWifiRadioApWakeupCount(0));
            protoOutputStream.write(UidProto.Network.MOBILE_BYTES_BG_RX, uid3.getNetworkActivityBytes(6, 0));
            protoOutputStream.write(1112396529680L, uid3.getNetworkActivityBytes(7, 0));
            protoOutputStream.write(1112396529681L, uid3.getNetworkActivityBytes(8, 0));
            protoOutputStream.write(UidProto.Network.WIFI_BYTES_BG_TX, uid3.getNetworkActivityBytes(9, 0));
            protoOutputStream.write(1112396529683L, uid3.getNetworkActivityPackets(6, 0));
            protoOutputStream.write(1112396529684L, uid3.getNetworkActivityPackets(7, 0));
            protoOutputStream.write(1112396529685L, uid3.getNetworkActivityPackets(8, 0));
            protoOutputStream.write(UidProto.Network.WIFI_PACKETS_BG_TX, uid3.getNetworkActivityPackets(9, 0));
            protoOutputStream.end(start14);
            SparseArray sparseArray8 = sparseArray5;
            BatterySipper batterySipper2 = (BatterySipper) sparseArray8.get(i13);
            if (batterySipper2 != null) {
                long start15 = protoOutputStream.start(1146756268050L);
                protoOutputStream.write(1103806595073L, batterySipper2.totalPowerMah);
                protoOutputStream.write(1133871366146L, batterySipper2.shouldHide);
                protoOutputStream.write(1103806595075L, batterySipper2.screenPowerMah);
                protoOutputStream.write(1103806595076L, batterySipper2.proportionalSmearMah);
                protoOutputStream.end(start15);
            }
            ArrayMap<String, ? extends Uid.Proc> processStats = uid3.getProcessStats();
            int size5 = processStats.size() - 1;
            while (size5 >= 0) {
                Uid.Proc valueAt5 = processStats.valueAt(size5);
                long start16 = protoOutputStream.start(2246267895827L);
                protoOutputStream.write(1138166333441L, processStats.keyAt(size5));
                protoOutputStream.write(1112396529666L, valueAt5.getUserTime(0));
                protoOutputStream.write(1112396529667L, valueAt5.getSystemTime(0));
                protoOutputStream.write(1112396529668L, valueAt5.getForegroundTime(0));
                protoOutputStream.write(1120986464261L, valueAt5.getStarts(0));
                protoOutputStream.write(1120986464262L, valueAt5.getNumAnrs(0));
                protoOutputStream.write(1120986464263L, valueAt5.getNumCrashes(0));
                protoOutputStream.end(start16);
                size5--;
                sparseArray8 = sparseArray8;
            }
            SparseArray sparseArray9 = sparseArray8;
            SparseArray<? extends Uid.Sensor> sensorStats = uid3.getSensorStats();
            int i20 = 0;
            while (i20 < sensorStats.size()) {
                Uid.Sensor valueAt6 = sensorStats.valueAt(i20);
                Timer sensorTime = valueAt6.getSensorTime();
                if (sensorTime == null) {
                    sparseArray = sensorStats;
                } else {
                    Timer sensorBackgroundTime = valueAt6.getSensorBackgroundTime();
                    int keyAt3 = sensorStats.keyAt(i20);
                    long start17 = protoOutputStream.start(UidProto.SENSORS);
                    protoOutputStream.write(1120986464257L, keyAt3);
                    sparseArray = sensorStats;
                    dumpTimer(protoOutputStream, 1146756268034L, sensorTime, j8, 0);
                    dumpTimer(protoOutputStream, 1146756268035L, sensorBackgroundTime, j8, 0);
                    protoOutputStream.end(start17);
                }
                i20++;
                sensorStats = sparseArray;
            }
            int i21 = 0;
            while (i21 < 7) {
                long j12 = j8;
                long roundUsToMs2 = roundUsToMs(uid3.getProcessStateTime(i21, j12, 0));
                if (roundUsToMs2 != 0) {
                    long start18 = protoOutputStream.start(2246267895828L);
                    protoOutputStream.write(1159641169921L, i21);
                    protoOutputStream.write(1112396529666L, roundUsToMs2);
                    protoOutputStream.end(start18);
                }
                i21++;
                j8 = j12;
            }
            long j13 = j8;
            ArrayMap<String, ? extends Timer> syncStats = uid3.getSyncStats();
            for (int size6 = syncStats.size() - 1; size6 >= 0; size6--) {
                Timer valueAt7 = syncStats.valueAt(size6);
                Timer subTimer3 = valueAt7.getSubTimer();
                long start19 = protoOutputStream.start(2246267895830L);
                protoOutputStream.write(1138166333441L, syncStats.keyAt(size6));
                dumpTimer(protoOutputStream, 1146756268034L, valueAt7, j13, 0);
                dumpTimer(protoOutputStream, 1146756268035L, subTimer3, j13, 0);
                protoOutputStream.end(start19);
            }
            if (uid3.hasUserActivity()) {
                for (int i22 = 0; i22 < 4; i22++) {
                    int userActivityCount = uid3.getUserActivityCount(i22, 0);
                    if (userActivityCount != 0) {
                        long start20 = protoOutputStream.start(UidProto.USER_ACTIVITY);
                        protoOutputStream.write(1159641169921L, i22);
                        protoOutputStream.write(1120986464258L, userActivityCount);
                        protoOutputStream.end(start20);
                    }
                }
            }
            dumpTimer(protoOutputStream, 1146756268045L, uid3.getVibratorOnTimer(), j13, 0);
            dumpTimer(protoOutputStream, 1146756268046L, uid3.getVideoTurnedOnTimer(), j13, 0);
            ArrayMap<String, ? extends Uid.Wakelock> wakelockStats = uid3.getWakelockStats();
            int i23 = 1;
            int size7 = wakelockStats.size() - 1;
            while (size7 >= 0) {
                Uid.Wakelock valueAt8 = wakelockStats.valueAt(size7);
                long start21 = protoOutputStream.start(2246267895833L);
                protoOutputStream.write(1138166333441L, wakelockStats.keyAt(size7));
                dumpTimer(protoOutputStream, 1146756268034L, valueAt8.getWakeTime(i23), j13, 0);
                Timer wakeTime = valueAt8.getWakeTime(0);
                if (wakeTime != null) {
                    dumpTimer(protoOutputStream, 1146756268035L, wakeTime, j13, 0);
                    dumpTimer(protoOutputStream, 1146756268036L, wakeTime.getSubTimer(), j13, 0);
                }
                dumpTimer(protoOutputStream, 1146756268037L, valueAt8.getWakeTime(2), j13, 0);
                protoOutputStream.end(start21);
                size7--;
                i23 = 1;
            }
            dumpTimer(protoOutputStream, 1146756268060L, uid3.getMulticastWakelockStats(), j13, 0);
            int i24 = 1;
            int size8 = arrayMap4.size() - 1;
            while (size8 >= 0) {
                ArrayMap<String, ? extends Uid.Pkg> arrayMap5 = arrayMap4;
                ArrayMap<String, ? extends Counter> wakeupAlarmStats = arrayMap5.valueAt(size8).getWakeupAlarmStats();
                int size9 = wakeupAlarmStats.size() - i24;
                while (size9 >= 0) {
                    long start22 = protoOutputStream.start(2246267895834L);
                    protoOutputStream.write(1138166333441L, wakeupAlarmStats.keyAt(size9));
                    protoOutputStream.write(1120986464258L, wakeupAlarmStats.valueAt(size9).getCountLocked(0));
                    protoOutputStream.end(start22);
                    size9--;
                    arrayMap5 = arrayMap5;
                }
                size8--;
                arrayMap4 = arrayMap5;
                i24 = 1;
            }
            dumpControllerActivityProto(protoOutputStream, 1146756268037L, uid3.getWifiControllerActivity(), 0);
            long start23 = protoOutputStream.start(1146756268059L);
            protoOutputStream.write(1112396529665L, roundUsToMs(uid3.getFullWifiLockTime(j13, 0)));
            dumpTimer(protoOutputStream, 1146756268035L, uid3.getWifiScanTimer(), j13, 0);
            protoOutputStream.write(1112396529666L, roundUsToMs(uid3.getWifiRunningTime(j13, 0)));
            dumpTimer(protoOutputStream, 1146756268036L, uid3.getWifiScanBackgroundTimer(), j13, 0);
            protoOutputStream.end(start23);
            protoOutputStream.end(start);
            i5 = i12 + 1;
            j6 = j13;
            size = i6;
            uidStats = sparseArray6;
            batteryUptime = j9;
            elapsedRealtime = j10;
            sparseArray3 = sparseArray7;
            sparseArray4 = sparseArray9;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dumpProtoHistoryLocked(ProtoOutputStream protoOutputStream, int i, long j) {
        long j2;
        HistoryPrinter historyPrinter;
        boolean z;
        if (startIteratingHistoryLocked()) {
            protoOutputStream.write(1120986464257L, 32);
            protoOutputStream.write(1112396529666L, getParcelVersion());
            protoOutputStream.write(1138166333443L, getStartPlatformVersion());
            protoOutputStream.write(1138166333444L, getEndPlatformVersion());
            for (int i2 = 0; i2 < getHistoryStringPoolSize(); i2++) {
                try {
                    long start = protoOutputStream.start(2246267895813L);
                    protoOutputStream.write(1120986464257L, i2);
                    protoOutputStream.write(1120986464258L, getHistoryTagPoolUid(i2));
                    protoOutputStream.write(1138166333443L, getHistoryTagPoolString(i2));
                    protoOutputStream.end(start);
                } finally {
                    finishIteratingHistoryLocked();
                }
            }
            HistoryPrinter historyPrinter2 = new HistoryPrinter();
            HistoryItem historyItem = new HistoryItem();
            long j3 = -1;
            long j4 = -1;
            boolean z2 = false;
            while (getNextHistoryLocked(historyItem)) {
                j4 = historyItem.time;
                long j5 = j3 < 0 ? j4 : j3;
                if (historyItem.time >= j) {
                    if (j < 0 || z2) {
                        j2 = j4;
                        historyPrinter = historyPrinter2;
                    } else {
                        if (historyItem.cmd != 5 && historyItem.cmd != 7 && historyItem.cmd != 4 && historyItem.cmd != 8) {
                            historyPrinter = historyPrinter2;
                            if (historyItem.currentTime != 0) {
                                byte b = historyItem.cmd;
                                historyItem.cmd = (byte) 5;
                                j2 = j4;
                                historyPrinter.printNextItem(protoOutputStream, historyItem, j5, (i & 32) != 0);
                                historyItem.cmd = b;
                                z2 = true;
                            } else {
                                j2 = j4;
                            }
                        }
                        j2 = j4;
                        historyPrinter = historyPrinter2;
                        historyPrinter.printNextItem(protoOutputStream, historyItem, j5, (i & 32) != 0);
                        z = false;
                        historyItem.cmd = (byte) 0;
                        z2 = true;
                        boolean z3 = z2;
                        historyPrinter.printNextItem(protoOutputStream, historyItem, j5, (i & 32) == 0 ? true : z);
                        z2 = z3;
                        j4 = j2;
                        j3 = j5;
                        historyPrinter2 = historyPrinter;
                    }
                    z = false;
                    boolean z32 = z2;
                    historyPrinter.printNextItem(protoOutputStream, historyItem, j5, (i & 32) == 0 ? true : z);
                    z2 = z32;
                    j4 = j2;
                    j3 = j5;
                    historyPrinter2 = historyPrinter;
                } else {
                    j3 = j5;
                }
            }
            if (j >= 0) {
                commitCurrentHistoryBatchLocked();
                protoOutputStream.write(2237677961222L, "NEXT: " + (j4 + 1));
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:56:0x04c1. Please report as an issue. */
    private void dumpProtoSystemLocked(ProtoOutputStream protoOutputStream, BatteryStatsHelper batteryStatsHelper) {
        int i;
        int i2;
        int i3;
        int i4;
        long start = protoOutputStream.start(1146756268038L);
        long uptimeMillis = SystemClock.uptimeMillis() * 1000;
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long start2 = protoOutputStream.start(1146756268033L);
        protoOutputStream.write(1112396529665L, getStartClockTime());
        protoOutputStream.write(1112396529666L, getStartCount());
        int i5 = 0;
        protoOutputStream.write(1112396529667L, computeRealtime(elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1112396529668L, computeUptime(uptimeMillis, 0) / 1000);
        protoOutputStream.write(1112396529669L, computeBatteryRealtime(elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1112396529670L, computeBatteryUptime(uptimeMillis, 0) / 1000);
        protoOutputStream.write(1112396529671L, computeBatteryScreenOffRealtime(elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1112396529672L, computeBatteryScreenOffUptime(uptimeMillis, 0) / 1000);
        protoOutputStream.write(1112396529673L, getScreenDozeTime(elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1112396529674L, getEstimatedBatteryCapacity());
        protoOutputStream.write(1112396529675L, getMinLearnedBatteryCapacity());
        protoOutputStream.write(1112396529676L, getMaxLearnedBatteryCapacity());
        protoOutputStream.end(start2);
        long start3 = protoOutputStream.start(1146756268034L);
        protoOutputStream.write(1120986464257L, getLowDischargeAmountSinceCharge());
        protoOutputStream.write(1120986464258L, getHighDischargeAmountSinceCharge());
        protoOutputStream.write(1120986464259L, getDischargeAmountScreenOnSinceCharge());
        protoOutputStream.write(1120986464260L, getDischargeAmountScreenOffSinceCharge());
        protoOutputStream.write(1120986464261L, getDischargeAmountScreenDozeSinceCharge());
        protoOutputStream.write(1112396529670L, getUahDischarge(0) / 1000);
        protoOutputStream.write(1112396529671L, getUahDischargeScreenOff(0) / 1000);
        protoOutputStream.write(1112396529672L, getUahDischargeScreenDoze(0) / 1000);
        protoOutputStream.write(1112396529673L, getUahDischargeLightDoze(0) / 1000);
        protoOutputStream.write(1112396529674L, getUahDischargeDeepDoze(0) / 1000);
        protoOutputStream.end(start3);
        long computeChargeTimeRemaining = computeChargeTimeRemaining(elapsedRealtime);
        long j = 0;
        if (computeChargeTimeRemaining >= 0) {
            protoOutputStream.write(1112396529667L, computeChargeTimeRemaining / 1000);
        } else {
            long computeBatteryTimeRemaining = computeBatteryTimeRemaining(elapsedRealtime);
            if (computeBatteryTimeRemaining >= 0) {
                protoOutputStream.write(1112396529668L, computeBatteryTimeRemaining / 1000);
            } else {
                protoOutputStream.write(1112396529668L, -1);
            }
        }
        dumpDurationSteps(protoOutputStream, 2246267895813L, getChargeLevelStepTracker());
        int i6 = 0;
        while (true) {
            if (i6 >= 21) {
                break;
            }
            boolean z = i6 != 0 ? i5 : true;
            int i7 = i6 == 20 ? i5 : i6;
            long start4 = protoOutputStream.start(2246267895816L);
            if (z) {
                protoOutputStream.write(1133871366146L, z);
            } else {
                protoOutputStream.write(1159641169921L, i7);
            }
            dumpTimer(protoOutputStream, 1146756268035L, getPhoneDataConnectionTimer(i6), elapsedRealtime, 0);
            protoOutputStream.end(start4);
            i6++;
            i5 = i5;
        }
        int i8 = i5;
        dumpDurationSteps(protoOutputStream, 2246267895814L, getDischargeLevelStepTracker());
        long[] cpuFreqs = getCpuFreqs();
        if (cpuFreqs != null) {
            int length = cpuFreqs.length;
            for (int i9 = i8; i9 < length; i9++) {
                protoOutputStream.write(SystemProto.CPU_FREQUENCY, cpuFreqs[i9]);
            }
        }
        dumpControllerActivityProto(protoOutputStream, 1146756268041L, getBluetoothControllerActivity(), i8);
        dumpControllerActivityProto(protoOutputStream, 1146756268042L, getModemControllerActivity(), i8);
        long start5 = protoOutputStream.start(1146756268044L);
        protoOutputStream.write(1112396529665L, getNetworkActivityBytes(i8, i8));
        protoOutputStream.write(1112396529666L, getNetworkActivityBytes(1, i8));
        protoOutputStream.write(1112396529669L, getNetworkActivityPackets(i8, i8));
        protoOutputStream.write(1112396529670L, getNetworkActivityPackets(1, i8));
        protoOutputStream.write(1112396529667L, getNetworkActivityBytes(2, i8));
        protoOutputStream.write(1112396529668L, getNetworkActivityBytes(3, i8));
        protoOutputStream.write(1112396529671L, getNetworkActivityPackets(2, i8));
        protoOutputStream.write(1112396529672L, getNetworkActivityPackets(3, i8));
        protoOutputStream.write(1112396529673L, getNetworkActivityBytes(4, i8));
        protoOutputStream.write(1112396529674L, getNetworkActivityBytes(5, i8));
        protoOutputStream.end(start5);
        dumpControllerActivityProto(protoOutputStream, 1146756268043L, getWifiControllerActivity(), i8);
        long start6 = protoOutputStream.start(1146756268045L);
        protoOutputStream.write(1112396529665L, getWifiOnTime(elapsedRealtime, i8) / 1000);
        protoOutputStream.write(1112396529666L, getGlobalWifiRunningTime(elapsedRealtime, i8) / 1000);
        protoOutputStream.end(start6);
        for (Map.Entry<String, ? extends Timer> entry : getKernelWakelockStats().entrySet()) {
            long start7 = protoOutputStream.start(2246267895822L);
            protoOutputStream.write(1138166333441L, entry.getKey());
            dumpTimer(protoOutputStream, 1146756268034L, entry.getValue(), elapsedRealtime, 0);
            protoOutputStream.end(start7);
        }
        SparseArray<? extends Uid> uidStats = getUidStats();
        long j2 = 0;
        for (int i10 = 0; i10 < uidStats.size(); i10++) {
            ArrayMap<String, ? extends Uid.Wakelock> wakelockStats = uidStats.valueAt(i10).getWakelockStats();
            for (int size = wakelockStats.size() - 1; size >= 0; size--) {
                Uid.Wakelock valueAt = wakelockStats.valueAt(size);
                Timer wakeTime = valueAt.getWakeTime(1);
                if (wakeTime != null) {
                    i4 = 0;
                    j += wakeTime.getTotalTimeLocked(elapsedRealtime, 0);
                } else {
                    i4 = 0;
                }
                Timer wakeTime2 = valueAt.getWakeTime(i4);
                if (wakeTime2 != null) {
                    j2 += wakeTime2.getTotalTimeLocked(elapsedRealtime, i4);
                }
            }
        }
        long start8 = protoOutputStream.start(1146756268047L);
        protoOutputStream.write(1112396529665L, getScreenOnTime(elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1112396529666L, getPhoneOnTime(elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1112396529667L, j / 1000);
        protoOutputStream.write(1112396529668L, j2 / 1000);
        protoOutputStream.write(1112396529669L, getMobileRadioActiveTime(elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1112396529670L, getMobileRadioActiveAdjustedTime(0) / 1000);
        protoOutputStream.write(1120986464263L, getMobileRadioActiveCount(0));
        protoOutputStream.write(1120986464264L, getMobileRadioActiveUnknownTime(0) / 1000);
        protoOutputStream.write(1112396529673L, getInteractiveTime(elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1112396529674L, getPowerSaveModeEnabledTime(elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1120986464267L, getNumConnectivityChange(0));
        protoOutputStream.write(1112396529676L, getDeviceIdleModeTime(2, elapsedRealtime, 0) / 1000);
        protoOutputStream.write(1120986464269L, getDeviceIdleModeCount(2, 0));
        protoOutputStream.write(SystemProto.Misc.DEEP_DOZE_IDLING_DURATION_MS, getDeviceIdlingTime(2, elapsedRealtime, 0) / 1000);
        protoOutputStream.write(SystemProto.Misc.DEEP_DOZE_IDLING_COUNT, getDeviceIdlingCount(2, 0));
        protoOutputStream.write(1112396529680L, getLongestDeviceIdleModeTime(2));
        protoOutputStream.write(1112396529681L, getDeviceIdleModeTime(1, elapsedRealtime, 0) / 1000);
        protoOutputStream.write(SystemProto.Misc.LIGHT_DOZE_COUNT, getDeviceIdleModeCount(1, 0));
        protoOutputStream.write(1112396529683L, getDeviceIdlingTime(1, elapsedRealtime, 0) / 1000);
        protoOutputStream.write(SystemProto.Misc.LIGHT_DOZE_IDLING_COUNT, getDeviceIdlingCount(1, 0));
        protoOutputStream.write(1112396529685L, getLongestDeviceIdleModeTime(1));
        protoOutputStream.end(start8);
        long wifiMulticastWakelockTime = getWifiMulticastWakelockTime(elapsedRealtime, 0);
        int wifiMulticastWakelockCount = getWifiMulticastWakelockCount(0);
        long start9 = protoOutputStream.start(1146756268055L);
        protoOutputStream.write(1112396529665L, wifiMulticastWakelockTime / 1000);
        protoOutputStream.write(1120986464258L, wifiMulticastWakelockCount);
        protoOutputStream.end(start9);
        List usageList = batteryStatsHelper.getUsageList();
        if (usageList != null) {
            for (int i11 = 0; i11 < usageList.size(); i11++) {
                BatterySipper batterySipper = (BatterySipper) usageList.get(i11);
                switch (AnonymousClass2.$SwitchMap$com$android$internal$os$BatterySipper$DrainType[batterySipper.drainType.ordinal()]) {
                    case 1:
                        i = 0;
                        i2 = 13;
                        i3 = i;
                        long start10 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start10);
                        break;
                    case 2:
                        i3 = 0;
                        i2 = 1;
                        long start102 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start102);
                        break;
                    case 3:
                        i = 0;
                        i2 = 2;
                        i3 = i;
                        long start1022 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start1022);
                        break;
                    case 4:
                        i = 0;
                        i2 = 3;
                        i3 = i;
                        long start10222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start10222);
                        break;
                    case 5:
                        i = 0;
                        i2 = 4;
                        i3 = i;
                        long start102222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start102222);
                        break;
                    case 6:
                        i3 = 0;
                        i2 = 5;
                        long start1022222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start1022222);
                        break;
                    case 7:
                        i = 0;
                        i2 = 7;
                        i3 = i;
                        long start10222222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start10222222);
                        break;
                    case 8:
                        i = 0;
                        i2 = 6;
                        i3 = i;
                        long start102222222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start102222222);
                        break;
                    case 9:
                        break;
                    case 10:
                        i2 = 8;
                        i3 = UserHandle.getUid(batterySipper.userId, 0);
                        long start1022222222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start1022222222);
                        break;
                    case 11:
                        i2 = 9;
                        i3 = 0;
                        long start10222222222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start10222222222);
                        break;
                    case 12:
                        i2 = 10;
                        i3 = 0;
                        long start102222222222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start102222222222);
                        break;
                    case 13:
                        i2 = 11;
                        i3 = 0;
                        long start1022222222222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start1022222222222);
                        break;
                    case 14:
                        i2 = 12;
                        i3 = 0;
                        long start10222222222222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start10222222222222);
                        break;
                    default:
                        i3 = 0;
                        i2 = 0;
                        long start102222222222222 = protoOutputStream.start(SystemProto.POWER_USE_ITEM);
                        protoOutputStream.write(1159641169921L, i2);
                        protoOutputStream.write(1120986464258L, i3);
                        protoOutputStream.write(1103806595075L, batterySipper.totalPowerMah);
                        protoOutputStream.write(1133871366148L, batterySipper.shouldHide);
                        protoOutputStream.write(SystemProto.PowerUseItem.SCREEN_POWER_MAH, batterySipper.screenPowerMah);
                        protoOutputStream.write(SystemProto.PowerUseItem.PROPORTIONAL_SMEAR_MAH, batterySipper.proportionalSmearMah);
                        protoOutputStream.end(start102222222222222);
                        break;
                }
            }
        }
        long start11 = protoOutputStream.start(1146756268050L);
        protoOutputStream.write(1103806595073L, batteryStatsHelper.getPowerProfile().getBatteryCapacity());
        protoOutputStream.write(SystemProto.PowerUseSummary.COMPUTED_POWER_MAH, batteryStatsHelper.getComputedPower());
        protoOutputStream.write(1103806595075L, batteryStatsHelper.getMinDrainedPower());
        protoOutputStream.write(1103806595076L, batteryStatsHelper.getMaxDrainedPower());
        protoOutputStream.end(start11);
        Map<String, ? extends Timer> rpmStats = getRpmStats();
        Map<String, ? extends Timer> screenOffRpmStats = getScreenOffRpmStats();
        for (Map.Entry<String, ? extends Timer> entry2 : rpmStats.entrySet()) {
            long start12 = protoOutputStream.start(2246267895827L);
            protoOutputStream.write(1138166333441L, entry2.getKey());
            dumpTimer(protoOutputStream, 1146756268034L, entry2.getValue(), elapsedRealtime, 0);
            dumpTimer(protoOutputStream, 1146756268035L, screenOffRpmStats.get(entry2.getKey()), elapsedRealtime, 0);
            protoOutputStream.end(start12);
        }
        int i12 = 0;
        for (int i13 = 5; i12 < i13; i13 = 5) {
            long start13 = protoOutputStream.start(2246267895828L);
            protoOutputStream.write(1159641169921L, i12);
            dumpTimer(protoOutputStream, 1146756268034L, getScreenBrightnessTimer(i12), elapsedRealtime, 0);
            protoOutputStream.end(start13);
            i12++;
        }
        dumpTimer(protoOutputStream, 1146756268053L, getPhoneSignalScanningTimer(), elapsedRealtime, 0);
        int i14 = 0;
        for (int i15 = 5; i14 < i15; i15 = 5) {
            long start14 = protoOutputStream.start(2246267895824L);
            protoOutputStream.write(1159641169921L, i14);
            dumpTimer(protoOutputStream, 1146756268034L, getPhoneSignalStrengthTimer(i14), elapsedRealtime, 0);
            protoOutputStream.end(start14);
            i14++;
        }
        for (Map.Entry<String, ? extends Timer> entry3 : getWakeupReasonStats().entrySet()) {
            long start15 = protoOutputStream.start(2246267895830L);
            protoOutputStream.write(1138166333441L, entry3.getKey());
            dumpTimer(protoOutputStream, 1146756268034L, entry3.getValue(), elapsedRealtime, 0);
            protoOutputStream.end(start15);
        }
        for (int i16 = 0; i16 < 5; i16++) {
            long start16 = protoOutputStream.start(SystemProto.WIFI_SIGNAL_STRENGTH);
            protoOutputStream.write(1159641169921L, i16);
            dumpTimer(protoOutputStream, 1146756268034L, getWifiSignalStrengthTimer(i16), elapsedRealtime, 0);
            protoOutputStream.end(start16);
        }
        for (int i17 = 0; i17 < 8; i17++) {
            long start17 = protoOutputStream.start(2246267895833L);
            protoOutputStream.write(1159641169921L, i17);
            dumpTimer(protoOutputStream, 1146756268034L, getWifiStateTimer(i17), elapsedRealtime, 0);
            protoOutputStream.end(start17);
        }
        for (int i18 = 0; i18 < 13; i18++) {
            long start18 = protoOutputStream.start(2246267895834L);
            protoOutputStream.write(1159641169921L, i18);
            dumpTimer(protoOutputStream, 1146756268034L, getWifiSupplStateTimer(i18), elapsedRealtime, 0);
            protoOutputStream.end(start18);
        }
        protoOutputStream.end(start);
    }
}
