.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$Uid;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$Counter;
    }
.end annotation


# static fields
.field private static final AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field public static final BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CELLULAR_CONTROLLER_NAME:Ljava/lang/String; = "Cellular"

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:I = 0x20

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x14

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final FOREGROUND_SERVICE:I = 0x16

.field private static final FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOBS_DEFERRED_DATA:Ljava/lang/String; = "jbd"

.field private static final JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field public static final JOB_FRESHNESS_BUCKETS:[J

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field public static final MAX_TRACKED_SCREEN_STATE:I = 0x4

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x15

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field private static final RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field public static final UID_TIMES_TYPE_ALL:Ljava/lang/String; = "A"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_AGGREGATE_MULTICAST_ENABLED:I = 0x17

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final WIFI_CONTROLLER_NAME:Ljava/lang/String; = "WiFi"

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field private static final WIFI_MULTICAST_DATA:Ljava/lang/String; = "wmc"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field private static final WIFI_MULTICAST_TOTAL_DATA:Ljava/lang/String; = "wmct"

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_STATE_OFF:I = 0x0

.field public static final WIFI_STATE_OFF_SCANNING:I = 0x1

.field public static final WIFI_STATE_ON_CONNECTED_P2P:I = 0x5

.field public static final WIFI_STATE_ON_CONNECTED_STA:I = 0x4

.field public static final WIFI_STATE_ON_CONNECTED_STA_P2P:I = 0x6

.field public static final WIFI_STATE_ON_DISCONNECTED:I = 0x3

.field public static final WIFI_STATE_ON_NO_NETWORKS:I = 0x2

.field public static final WIFI_STATE_SOFT_AP:I = 0x7

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field public static final WIFI_SUPPL_STATE_ASSOCIATED:I = 0x7

.field public static final WIFI_SUPPL_STATE_ASSOCIATING:I = 0x6

.field public static final WIFI_SUPPL_STATE_AUTHENTICATING:I = 0x5

.field public static final WIFI_SUPPL_STATE_COMPLETED:I = 0xa

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field public static final WIFI_SUPPL_STATE_DISCONNECTED:I = 0x1

.field public static final WIFI_SUPPL_STATE_DORMANT:I = 0xb

.field public static final WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final WIFI_SUPPL_STATE_GROUP_HANDSHAKE:I = 0x9

.field public static final WIFI_SUPPL_STATE_INACTIVE:I = 0x3

.field public static final WIFI_SUPPL_STATE_INTERFACE_DISABLED:I = 0x2

.field public static final WIFI_SUPPL_STATE_INVALID:I = 0x0

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_SUPPL_STATE_SCANNING:I = 0x4

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field public static final WIFI_SUPPL_STATE_UNINITIALIZED:I = 0xc

.field private static final sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 45

    const-string v0, "l"

    const-string v1, "c"

    const-string/jumbo v2, "u"

    .line 209
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 374
    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Landroid/os/BatteryStats;->JOB_FRESHNESS_BUCKETS:[J

    const-string v1, "dark"

    const-string v2, "dim"

    const-string v3, "medium"

    const-string v4, "light"

    const-string v5, "bright"

    .line 2066
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "2"

    const-string v4, "3"

    const-string v5, "4"

    .line 2070
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const-string v2, "none"

    const-string v3, "gprs"

    const-string v4, "edge"

    const-string/jumbo v5, "umts"

    const-string v6, "cdma"

    const-string v7, "evdo_0"

    const-string v8, "evdo_A"

    const-string v9, "1xrtt"

    const-string v10, "hsdpa"

    const-string v11, "hsupa"

    const-string v12, "hspa"

    const-string v13, "iden"

    const-string v14, "evdo_b"

    const-string v15, "lte"

    const-string v16, "ehrpd"

    const-string v17, "hspap"

    const-string v18, "gsm"

    const-string/jumbo v19, "td_scdma"

    const-string v20, "iwlan"

    const-string v21, "lte_ca"

    const-string v22, "other"

    .line 2281
    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const-string v2, "invalid"

    const-string v3, "disconn"

    const-string v4, "disabled"

    const-string v5, "inactive"

    const-string/jumbo v6, "scanning"

    const-string v7, "authenticating"

    const-string v8, "associating"

    const-string v9, "associated"

    const-string v10, "4-way-handshake"

    const-string v11, "group-handshake"

    const-string v12, "completed"

    const-string v13, "dormant"

    const-string/jumbo v14, "uninit"

    .line 2327
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    const-string v2, "inv"

    const-string v3, "dsc"

    const-string v4, "dis"

    const-string v5, "inact"

    const-string/jumbo v6, "scan"

    const-string v7, "auth"

    const-string v8, "ascing"

    const-string v9, "asced"

    const-string v10, "4-way"

    const-string v11, "group"

    const-string v12, "compl"

    const-string v13, "dorm"

    const-string/jumbo v14, "uninit"

    .line 2333
    filled-new-array/range {v2 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v1, 0x12

    .line 2339
    new-array v1, v1, [Landroid/os/BatteryStats$BitDescription;

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v3, "running"

    const-string/jumbo v4, "r"

    const/high16 v5, -0x80000000

    invoke-direct {v2, v5, v3, v4}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v4, "wake_lock"

    const-string/jumbo v5, "w"

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v2, v6, v4, v5}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v5, "sensor"

    const-string/jumbo v6, "s"

    const/high16 v7, 0x800000

    invoke-direct {v2, v7, v5, v6}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v6, "gps"

    const-string v7, "g"

    const/high16 v8, 0x20000000

    invoke-direct {v2, v8, v6, v7}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v7, "wifi_full_lock"

    const-string v8, "Wl"

    const/high16 v9, 0x10000000

    invoke-direct {v2, v9, v7, v8}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "wifi_scan"

    const-string v9, "Ws"

    const/high16 v10, 0x8000000

    invoke-direct {v2, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v8, "wifi_multicast"

    const-string v9, "Wm"

    const/high16 v10, 0x10000

    invoke-direct {v2, v10, v8, v9}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x6

    aput-object v2, v1, v8

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v9, "wifi_radio"

    const-string v10, "Wr"

    const/high16 v11, 0x4000000

    invoke-direct {v2, v11, v9, v10}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x7

    aput-object v2, v1, v9

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "mobile_radio"

    const-string v11, "Pr"

    const/high16 v12, 0x2000000

    invoke-direct {v2, v12, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x8

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "phone_scanning"

    const-string v12, "Psc"

    const/high16 v13, 0x200000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x9

    aput-object v2, v1, v11

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v12, "audio"

    const-string v13, "a"

    const/high16 v14, 0x400000

    invoke-direct {v2, v14, v12, v13}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xa

    aput-object v2, v1, v12

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v13, "screen"

    const-string v14, "S"

    const/high16 v15, 0x100000

    invoke-direct {v2, v15, v13, v14}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xb

    aput-object v2, v1, v13

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "plugged"

    const-string v15, "BP"

    const/high16 v13, 0x80000

    invoke-direct {v2, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xc

    aput-object v2, v1, v13

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "screen_doze"

    const-string v15, "Sd"

    const/high16 v13, 0x40000

    invoke-direct {v2, v13, v14, v15}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xd

    aput-object v2, v1, v13

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v17, "data_conn"

    const-string v18, "Pcn"

    sget-object v19, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v20, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    const/16 v15, 0x3e00

    const/16 v16, 0x9

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v2, v1, v14

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v18, "phone_state"

    const-string v19, "Pst"

    const-string v15, "in"

    const-string v14, "out"

    const-string v13, "emergency"

    const-string v12, "off"

    filled-new-array {v15, v14, v13, v12}, [Ljava/lang/String;

    move-result-object v20

    const-string v12, "in"

    const-string v13, "out"

    const-string v14, "em"

    const-string v15, "off"

    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/String;

    move-result-object v21

    const/16 v16, 0x1c0

    const/16 v17, 0x6

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v12, 0xf

    aput-object v2, v1, v12

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v16, "phone_signal_strength"

    const-string v17, "Pss"

    sget-object v18, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    const-string v12, "0"

    const-string v13, "1"

    const-string v14, "2"

    const-string v15, "3"

    const-string v11, "4"

    filled-new-array {v12, v13, v14, v15, v11}, [Ljava/lang/String;

    move-result-object v19

    const/16 v14, 0x38

    const/4 v15, 0x3

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v11, 0x10

    aput-object v2, v1, v11

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v15, "brightness"

    const-string v16, "Sb"

    sget-object v17, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v18, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    const/4 v13, 0x7

    const/4 v14, 0x0

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v11, 0x11

    aput-object v2, v1, v11

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const/16 v1, 0x10

    .line 2370
    new-array v1, v1, [Landroid/os/BatteryStats$BitDescription;

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "power_save"

    const-string/jumbo v12, "ps"

    const/high16 v13, -0x80000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "video"

    const-string/jumbo v12, "v"

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v4

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi_running"

    const-string v12, "Ww"

    const/high16 v13, 0x20000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "wifi"

    const-string v12, "W"

    const/high16 v13, 0x10000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "flashlight"

    const-string v12, "fl"

    const/high16 v13, 0x8000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v17, "device_idle"

    const-string v18, "di"

    const-string v11, "off"

    const-string v12, "light"

    const-string v13, "full"

    const-string v14, "???"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v19

    const-string v11, "off"

    const-string v12, "light"

    const-string v13, "full"

    const-string v14, "???"

    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v20

    const/high16 v15, 0x6000000

    const/16 v16, 0x19

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v2, v1, v0

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "charging"

    const-string v12, "ch"

    const/high16 v13, 0x1000000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v8

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "usb_data"

    const-string v12, "Ud"

    const/high16 v13, 0x40000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v9

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v11, "phone_in_call"

    const-string v12, "Pcl"

    const/high16 v13, 0x800000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v11, "bluetooth"

    const-string v12, "b"

    const/high16 v13, 0x400000

    invoke-direct {v2, v13, v11, v12}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x9

    aput-object v2, v1, v11

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v15, "wifi_signal_strength"

    const-string v16, "Wss"

    const-string v11, "0"

    const-string v12, "1"

    const-string v13, "2"

    const-string v14, "3"

    const-string v10, "4"

    filled-new-array {v11, v12, v13, v14, v10}, [Ljava/lang/String;

    move-result-object v17

    const-string v10, "0"

    const-string v11, "1"

    const-string v12, "2"

    const-string v13, "3"

    const-string v14, "4"

    filled-new-array {v10, v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v18

    const/16 v13, 0x70

    const/4 v14, 0x4

    move-object v12, v2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0xa

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v14, "wifi_suppl"

    const-string v15, "Wsp"

    sget-object v16, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v17, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    const/16 v12, 0xf

    const/4 v13, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0xb

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "camera"

    const-string v11, "ca"

    const/high16 v12, 0x200000

    invoke-direct {v2, v12, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xc

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "ble_scan"

    const-string v11, "bles"

    const/high16 v12, 0x100000

    invoke-direct {v2, v12, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xd

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v10, "cellular_high_tx_power"

    const-string v11, "Chtp"

    const/high16 v12, 0x80000

    invoke-direct {v2, v12, v10, v11}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xe

    aput-object v2, v1, v10

    new-instance v2, Landroid/os/BatteryStats$BitDescription;

    const-string v14, "gps_signal_quality"

    const-string v15, "Gss"

    const-string/jumbo v10, "poor"

    const-string v11, "good"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v10, "poor"

    const-string v11, "good"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v17

    const/16 v12, 0x80

    const/4 v13, 0x7

    move-object v11, v2

    invoke-direct/range {v11 .. v17}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v10, 0xf

    aput-object v2, v1, v10

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    const-string v23, "null"

    const-string/jumbo v24, "proc"

    const-string v25, "fg"

    const-string/jumbo v26, "top"

    const-string/jumbo v27, "sync"

    const-string/jumbo v28, "wake_lock_in"

    const-string v29, "job"

    const-string/jumbo v30, "user"

    const-string/jumbo v31, "userfg"

    const-string v32, "conn"

    const-string v33, "active"

    const-string/jumbo v34, "pkginst"

    const-string/jumbo v35, "pkgunin"

    const-string v36, "alarm"

    const-string/jumbo v37, "stats"

    const-string/jumbo v38, "pkginactive"

    const-string/jumbo v39, "pkgactive"

    const-string/jumbo v40, "tmpwhitelist"

    const-string/jumbo v41, "screenwake"

    const-string/jumbo v42, "wakeupap"

    const-string v43, "longwake"

    const-string v44, "est_capacity"

    .line 2400
    filled-new-array/range {v23 .. v44}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    const-string v23, "Enl"

    const-string v24, "Epr"

    const-string v25, "Efg"

    const-string v26, "Etp"

    const-string v27, "Esy"

    const-string v28, "Ewl"

    const-string v29, "Ejb"

    const-string v30, "Eur"

    const-string v31, "Euf"

    const-string v32, "Ecn"

    const-string v33, "Eac"

    const-string v34, "Epi"

    const-string v35, "Epu"

    const-string v36, "Eal"

    const-string v37, "Est"

    const-string v38, "Eai"

    const-string v39, "Eaa"

    const-string v40, "Etw"

    const-string v41, "Esw"

    const-string v42, "Ewa"

    const-string v43, "Elw"

    const-string v44, "Eec"

    .line 2406
    filled-new-array/range {v23 .. v44}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    .line 2417
    sget-object v1, Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;->INSTANCE:Landroid/os/-$$Lambda$IyvVQC-0mKtsfXbnO0kDL64hrk0;

    sput-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    .line 2418
    sget-object v1, Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;->INSTANCE:Landroid/os/-$$Lambda$q1UvBdLgHRZVzc68BxdksTmbuCw;

    sput-object v1, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v1, 0x16

    .line 2420
    new-array v1, v1, [Landroid/os/BatteryStats$IntToString;

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v5

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v6

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v7

    sget-object v2, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v2, v1, v0

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v0, v1, v8

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v0, v1, v9

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xc

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xf

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x13

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x14

    aput-object v0, v1, v2

    sget-object v0, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sput-object v1, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    const-string v3, "off"

    const-string/jumbo v4, "scanning"

    const-string v5, "no_net"

    const-string v6, "disconn"

    const-string/jumbo v7, "sta"

    const-string v8, "p2p"

    const-string/jumbo v9, "sta_p2p"

    const-string/jumbo v10, "soft_ap"

    .line 2476
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    const/16 v0, 0xa

    .line 2837
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 2849
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    const-string/jumbo v1, "screen off"

    const-string/jumbo v2, "screen off power save"

    const-string/jumbo v3, "screen off device idle"

    const-string/jumbo v4, "screen on"

    const-string/jumbo v5, "screen on power save"

    const-string/jumbo v6, "screen doze"

    const-string/jumbo v7, "screen doze power save"

    const-string/jumbo v8, "screen doze-suspend"

    const-string/jumbo v9, "screen doze-suspend power save"

    const-string/jumbo v10, "screen doze-suspend device idle"

    .line 2861
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x36ee80
        0x6ddd00
        0xdbba00
        0x1b77400
        0x7fffffffffffffffL
    .end array-data

    :array_1
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 355
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    if-eqz p0, :cond_0

    .line 3049
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    .line 3050
    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 3305
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 3306
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    .line 3307
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-eqz v1, :cond_1

    goto :goto_1

    .line 3311
    :cond_1
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p0

    array-length v1, p0

    move v5, v0

    :goto_0
    if-ge v5, v1, :cond_3

    aget-object v6, p0, v5

    .line 3312
    invoke-virtual {v6, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-eqz v6, :cond_2

    return v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 2

    .line 3331
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3335
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    const-string p1, ","

    .line 3336
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3337
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, ","

    .line 3338
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3339
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    const-string p1, ","

    .line 3340
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3341
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p1

    const-wide/32 v0, 0x36ee80

    div-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 3342
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object p4, p1, p3

    const-string v0, ","

    .line 3343
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3344
    invoke-virtual {p4, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 3346
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 8

    .line 3355
    invoke-static {p3, p4}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3359
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p1

    const-wide v0, 0x10300000001L

    .line 3362
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    .line 3361
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3364
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    .line 3363
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10300000003L

    .line 3366
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    div-long/2addr v4, v6

    .line 3365
    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3369
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p3

    const/4 v0, 0x0

    .line 3370
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 3371
    aget-object v1, p3, v0

    const-wide v4, 0x20b00000004L

    .line 3372
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10500000001L

    .line 3373
    invoke-virtual {p0, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3374
    invoke-virtual {v1, p4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    invoke-virtual {p0, v2, v3, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3375
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3378
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 13

    move-object v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    .line 6744
    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v5, v3, v9

    const/4 v11, 0x0

    if-ltz v5, :cond_1

    .line 6746
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " total time: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6747
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6748
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6749
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, " (from "

    .line 6750
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v11

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " steps)"

    .line 6751
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    move v12, v11

    .line 6753
    :goto_0
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v3, v3

    if-ge v12, v3, :cond_3

    .line 6754
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v3, v3, v12

    int-to-long v4, v3

    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v12

    int-to-long v6, v3

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v3

    cmp-long v5, v3, v9

    if-lez v5, :cond_2

    .line 6757
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6758
    sget-object v5, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v5, v5, v12

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " time: "

    .line 6759
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6760
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6761
    invoke-static {v2, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6762
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, " (from "

    .line 6763
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p6, v11

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " steps)"

    .line 6764
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 6774
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "Package changes:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 6775
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 6776
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$PackageChange;

    .line 6777
    iget-boolean v1, v0, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v1, :cond_1

    .line 6778
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Update "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " vers="

    .line 6779
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v0, Landroid/os/BatteryStats$PackageChange;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_1

    .line 6781
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Uninstall "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    return-void

    .line 6599
    :cond_0
    iget v2, v1, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    .line 6601
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v7, 0x10300000001L

    .line 6602
    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v9

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10500000002L

    .line 6603
    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6605
    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v7

    int-to-long v7, v7

    .line 6606
    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0x3

    and-long v13, v9, v11

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    const/4 v14, 0x3

    const/16 v17, 0x2

    const/16 v18, 0x1

    if-nez v13, :cond_1

    and-long/2addr v11, v7

    long-to-int v11, v11

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_0

    const/4 v11, 0x5

    goto :goto_1

    :pswitch_0
    const/4 v11, 0x4

    goto :goto_1

    :pswitch_1
    move v11, v14

    goto :goto_1

    :pswitch_2
    move/from16 v11, v18

    goto :goto_1

    :pswitch_3
    move/from16 v11, v17

    goto :goto_1

    :cond_1
    move v11, v3

    :goto_1
    const-wide v12, 0x10e00000003L

    .line 6628
    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide/16 v11, 0x4

    and-long v19, v9, v11

    cmp-long v13, v19, v15

    if-nez v13, :cond_3

    and-long/2addr v11, v7

    cmp-long v11, v11, v15

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v18, v17

    :goto_2
    move/from16 v11, v18

    goto :goto_3

    :cond_3
    move v11, v3

    :goto_3
    const-wide v12, 0x10e00000004L

    .line 6635
    invoke-virtual {v0, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide/16 v11, 0x8

    and-long/2addr v9, v11

    cmp-long v9, v9, v15

    if-nez v9, :cond_4

    and-long/2addr v7, v11

    cmp-long v7, v7, v15

    if-eqz v7, :cond_5

    move/from16 v14, v17

    goto :goto_4

    :cond_4
    move v14, v3

    :cond_5
    :goto_4
    const-wide v7, 0x10e00000005L

    .line 6642
    invoke-virtual {v0, v7, v8, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6644
    invoke-virtual {v0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 6518
    :cond_0
    iget v4, v2, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v4, :cond_1

    return v3

    :cond_1
    if-nez p4, :cond_2

    .line 6523
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v5, 0x5

    .line 6525
    new-array v5, v5, [Ljava/lang/String;

    move v6, v3

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_11

    .line 6527
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v8

    .line 6528
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v10

    .line 6529
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v11, v11

    .line 6530
    invoke-virtual {v2, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v13

    int-to-long v13, v13

    const-wide/16 v15, 0x8

    const-wide/16 v17, 0x4

    const-wide/16 v19, 0x3

    const-wide/16 v21, 0x0

    if-eqz p4, :cond_8

    .line 6532
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    .line 6533
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    and-long v8, v13, v19

    cmp-long v8, v8, v21

    const/4 v9, 0x2

    if-nez v8, :cond_3

    move/from16 v23, v4

    and-long v3, v11, v19

    long-to-int v3, v3

    add-int/2addr v3, v7

    packed-switch v3, :pswitch_data_0

    const-string v3, "?"

    aput-object v3, v5, v9

    goto :goto_1

    :pswitch_0
    const-string/jumbo v3, "sds"

    aput-object v3, v5, v9

    goto :goto_1

    :pswitch_1
    const-string/jumbo v3, "sd"

    aput-object v3, v5, v9

    goto :goto_1

    :pswitch_2
    const-string/jumbo v3, "s+"

    aput-object v3, v5, v9

    goto :goto_1

    :pswitch_3
    const-string/jumbo v3, "s-"

    aput-object v3, v5, v9

    goto :goto_1

    :cond_3
    move/from16 v23, v4

    const-string v3, ""

    aput-object v3, v5, v9

    :goto_1
    and-long v3, v13, v17

    cmp-long v3, v3, v21

    const/4 v4, 0x3

    if-nez v3, :cond_5

    and-long v7, v11, v17

    cmp-long v3, v7, v21

    if-eqz v3, :cond_4

    const-string v3, "p+"

    goto :goto_2

    :cond_4
    const-string v3, "p-"

    :goto_2
    aput-object v3, v5, v4

    goto :goto_3

    :cond_5
    const-string v3, ""

    aput-object v3, v5, v4

    :goto_3
    and-long v3, v13, v15

    cmp-long v3, v3, v21

    const/4 v4, 0x4

    if-nez v3, :cond_7

    and-long v7, v11, v15

    cmp-long v3, v7, v21

    if-eqz v3, :cond_6

    const-string v3, "i+"

    goto :goto_4

    :cond_6
    const-string v3, "i-"

    :goto_4
    aput-object v3, v5, v4

    goto :goto_5

    :cond_7
    const-string v3, ""

    aput-object v3, v5, v4

    :goto_5
    const-string v3, "i"

    .line 6555
    move-object v4, v5

    check-cast v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v7, v3, v1, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v7

    goto/16 :goto_c

    :cond_8
    move/from16 v23, v4

    .line 6557
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "#"

    .line 6558
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6559
    invoke-static {v8, v9, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, " to "

    .line 6560
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    and-long v8, v13, v19

    cmp-long v4, v8, v21

    if-nez v4, :cond_9

    const-string v4, " ("

    .line 6563
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v8, v11, v19

    long-to-int v4, v8

    add-int/2addr v4, v7

    packed-switch v4, :pswitch_data_1

    const-string/jumbo v4, "screen-?"

    .line 6569
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_4
    const-string/jumbo v4, "screen-doze-suspend"

    .line 6568
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_5
    const-string/jumbo v4, "screen-doze"

    .line 6567
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_6
    const-string/jumbo v4, "screen-on"

    .line 6566
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_7
    const-string/jumbo v4, "screen-off"

    .line 6565
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_6
    move v4, v7

    goto :goto_7

    :cond_9
    move v4, v3

    :goto_7
    and-long v8, v13, v17

    cmp-long v8, v8, v21

    if-nez v8, :cond_c

    if-eqz v4, :cond_a

    const-string v4, ", "

    goto :goto_8

    :cond_a
    const-string v4, " ("

    .line 6574
    :goto_8
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v8, v11, v17

    cmp-long v4, v8, v21

    if-eqz v4, :cond_b

    const-string/jumbo v4, "power-save-on"

    goto :goto_9

    :cond_b
    const-string/jumbo v4, "power-save-off"

    .line 6575
    :goto_9
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v4, v7

    :cond_c
    and-long v8, v13, v15

    cmp-long v8, v8, v21

    if-nez v8, :cond_f

    if-eqz v4, :cond_d

    const-string v4, ", "

    goto :goto_a

    :cond_d
    const-string v4, " ("

    .line 6580
    :goto_a
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-long v8, v11, v15

    cmp-long v4, v8, v21

    if-eqz v4, :cond_e

    const-string v4, "device-idle-on"

    goto :goto_b

    :cond_e
    const-string v4, "device-idle-off"

    .line 6581
    :goto_b
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v4, v7

    :cond_f
    if-eqz v4, :cond_10

    const-string v4, ")"

    .line 6586
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6588
    :cond_10
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    :goto_c
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v23

    goto/16 :goto_0

    :cond_11
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .locals 19

    move-object/from16 v7, p1

    .line 6656
    new-instance v8, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v8}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 6657
    new-instance v9, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v9}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-wide/16 v0, -0x1

    const/4 v10, 0x0

    move-object/from16 v11, p0

    move-wide v3, v0

    move v2, v10

    .line 6662
    :goto_0
    invoke-virtual {v11, v9}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v5

    const-wide/16 v12, 0x0

    if-eqz v5, :cond_8

    .line 6663
    iget-wide v5, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v3, v0, v12

    if-gez v3, :cond_0

    move-wide v14, v5

    goto :goto_1

    :cond_0
    move-wide v14, v0

    .line 6667
    :goto_1
    iget-wide v0, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v0, v0, p3

    if-ltz v0, :cond_7

    cmp-long v0, p3, v12

    const/16 v16, 0x1

    if-ltz v0, :cond_5

    if-nez v2, :cond_5

    .line 6669
    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3

    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    goto :goto_3

    .line 6677
    :cond_1
    iget-wide v3, v9, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v0, v3, v12

    if-eqz v0, :cond_5

    .line 6679
    iget-byte v12, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 6680
    iput-byte v1, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_2

    move/from16 v13, v16

    goto :goto_2

    :cond_2
    move v13, v10

    :goto_2
    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide v3, v14

    move-wide/from16 v17, v5

    move/from16 v5, p5

    move v6, v13

    .line 6681
    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 6683
    iput-byte v12, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_5

    :cond_3
    :goto_3
    move-wide/from16 v17, v5

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_4

    move/from16 v6, v16

    goto :goto_4

    :cond_4
    move v6, v10

    :goto_4
    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide v3, v14

    move/from16 v5, p5

    .line 6674
    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 6676
    iput-byte v10, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    :goto_5
    move/from16 v2, v16

    goto :goto_6

    :cond_5
    move-wide/from16 v17, v5

    :goto_6
    move v12, v2

    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_6

    move/from16 v6, v16

    goto :goto_7

    :cond_6
    move v6, v10

    :goto_7
    move-object v0, v8

    move-object/from16 v1, p1

    move-object v2, v9

    move-wide v3, v14

    move/from16 v5, p5

    .line 6720
    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move v2, v12

    goto :goto_8

    :cond_7
    move-wide/from16 v17, v5

    :goto_8
    move-wide v0, v14

    move-wide/from16 v3, v17

    goto/16 :goto_0

    :cond_8
    cmp-long v0, p3, v12

    if-ltz v0, :cond_a

    .line 6734
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    if-eqz p5, :cond_9

    const-string v0, "NEXT: "

    goto :goto_9

    :cond_9
    const-string v0, "  NEXT: "

    .line 6735
    :goto_9
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    add-long/2addr v3, v0

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    :cond_a
    return-void
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 3227
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 3228
    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p4, p2

    const/16 v0, 0x2c

    .line 3229
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3230
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 3232
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    .line 3208
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x2c

    .line 3209
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3210
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 3211
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3212
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3213
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 3214
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;Ljava/util/List;)V
    .locals 55
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "Lcom/android/internal/os/BatteryStatsHelper;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v0, p3

    .line 7113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 7114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    mul-long v10, v8, v3

    move-object/from16 v12, p0

    .line 7116
    invoke-virtual {v12, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v13

    .line 7118
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7120
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7121
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 7122
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 7123
    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 7125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7126
    invoke-virtual {v15, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7128
    :cond_0
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7132
    :cond_1
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 7133
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 7135
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 7136
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 7137
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v3, v5, :cond_2

    goto :goto_2

    .line 7141
    :cond_2
    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7145
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v5

    .line 7146
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_26

    move/from16 v16, v3

    const-wide v2, 0x20b00000005L

    .line 7148
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 7149
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid;

    move-wide/from16 v17, v2

    .line 7151
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    const-wide v4, 0x10500000001L

    .line 7152
    invoke-virtual {v7, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7155
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-virtual {v15, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 7157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    move/from16 v21, v1

    .line 7160
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 7161
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v22

    move/from16 v23, v2

    const/4 v2, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v4, v22

    :goto_4
    const-wide/16 v24, 0x0

    move-object/from16 v26, v3

    const-wide v2, 0x10900000001L

    if-ltz v4, :cond_8

    .line 7162
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7164
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 7165
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v22

    if-nez v22, :cond_5

    move-object/from16 v32, v1

    move/from16 v37, v4

    move-wide/from16 v30, v8

    move-wide/from16 v28, v10

    move-wide/from16 v35, v13

    move-object/from16 v10, v26

    goto/16 :goto_7

    :cond_5
    move-wide/from16 v30, v8

    move-wide/from16 v28, v10

    const-wide v10, 0x20b00000002L

    .line 7173
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 7174
    invoke-virtual {v7, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-object/from16 v10, v26

    .line 7176
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7178
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v11, 0x1

    sub-int/2addr v5, v11

    :goto_5
    if-ltz v5, :cond_7

    .line 7179
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v11, v22

    check-cast v11, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-object/from16 v32, v1

    const/4 v1, 0x0

    .line 7181
    invoke-virtual {v11, v13, v14, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    .line 7182
    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v12

    .line 7183
    invoke-virtual {v11, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v11

    cmp-long v22, v2, v24

    if-nez v22, :cond_6

    if-nez v12, :cond_6

    if-nez v11, :cond_6

    move/from16 v37, v4

    move-wide/from16 v35, v13

    goto :goto_6

    :cond_6
    move-wide/from16 v33, v2

    move-wide/from16 v35, v13

    const-wide v1, 0x20b00000002L

    .line 7188
    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 7190
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v7, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move/from16 v37, v4

    move-wide/from16 v1, v33

    const-wide v3, 0x10300000002L

    .line 7191
    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000003L

    .line 7192
    invoke-virtual {v7, v1, v2, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000004L

    .line 7193
    invoke-virtual {v7, v1, v2, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7195
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_6
    add-int/lit8 v5, v5, -0x1

    move-object/from16 v1, v32

    move-wide/from16 v13, v35

    move/from16 v4, v37

    const-wide v2, 0x10900000001L

    const/4 v11, 0x1

    move-object/from16 v12, p0

    goto :goto_5

    :cond_7
    move-object/from16 v32, v1

    move/from16 v37, v4

    move-wide/from16 v35, v13

    .line 7197
    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_7
    add-int/lit8 v4, v37, -0x1

    move-object v3, v10

    move-wide/from16 v10, v28

    move-wide/from16 v8, v30

    move-object/from16 v1, v32

    move-wide/from16 v13, v35

    const/4 v2, 0x1

    move-object/from16 v12, p0

    goto/16 :goto_4

    :cond_8
    move-object/from16 v32, v1

    move-wide/from16 v30, v8

    move-wide/from16 v28, v10

    move-wide/from16 v35, v13

    move-object/from16 v10, v26

    .line 7202
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v3, 0x20b00000002L

    .line 7203
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v8, 0x10900000001L

    .line 7204
    invoke-virtual {v7, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7205
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8

    :cond_9
    const-wide v3, 0x20b00000002L

    const-wide v8, 0x10900000001L

    .line 7209
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-wide v10, 0x10300000001L

    if-eqz v1, :cond_b

    .line 7210
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    move-wide/from16 v12, v30

    .line 7212
    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    .line 7213
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 7215
    invoke-virtual {v1, v12, v13}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v1

    goto :goto_9

    :cond_a
    move-wide/from16 v1, v24

    :goto_9
    const-wide v3, 0x10b00000018L

    .line 7216
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 7217
    invoke-virtual {v7, v10, v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v5, 0x10300000002L

    .line 7218
    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7219
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_a

    :cond_b
    move-wide/from16 v12, v30

    const-wide v5, 0x10300000002L

    :goto_a
    const-wide v1, 0x10b00000008L

    .line 7223
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v14, 0x0

    move-object v4, v0

    move-object/from16 v0, p1

    move-wide/from16 v5, v17

    move/from16 v8, v21

    move/from16 v9, v23

    move-object/from16 v38, v32

    const/16 v17, 0x0

    move-object/from16 v41, v4

    move-wide/from16 v39, v5

    move-object/from16 v6, v19

    move-object/from16 v18, v20

    move-wide/from16 v4, v28

    move-object/from16 v42, v6

    move/from16 v10, v17

    move v6, v14

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10b00000003L

    .line 7227
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 7226
    invoke-static {v7, v0, v1, v2, v10}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 7230
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_e

    const-wide v0, 0x10b00000006L

    .line 7232
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v1, 0x10b00000001L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v43, v4

    move-wide/from16 v4, v28

    .line 7234
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000002L

    .line 7237
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 7236
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    .line 7240
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 7239
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000004L

    .line 7243
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    .line 7242
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10500000005L

    .line 7246
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 7247
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_b

    :cond_c
    move v6, v10

    .line 7245
    :goto_b
    invoke-virtual {v7, v0, v1, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000006L

    .line 7249
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 7250
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    goto :goto_c

    :cond_d
    move v6, v10

    .line 7248
    :goto_c
    invoke-virtual {v7, v0, v1, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v0, v43

    .line 7252
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_e
    const-wide v1, 0x10b00000009L

    .line 7256
    invoke-virtual/range {v41 .. v41}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v4, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v0, 0x10b00000007L

    .line 7259
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    move-object/from16 v11, v41

    .line 7260
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    const-wide v4, 0x10300000001L

    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7261
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    const-wide v4, 0x10300000002L

    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7263
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v2

    if-eqz v2, :cond_10

    .line 7265
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v3

    if-eqz v3, :cond_10

    .line 7268
    array-length v6, v3

    array-length v14, v2

    if-ne v6, v14, :cond_10

    .line 7269
    invoke-virtual {v11, v10}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v6

    if-nez v6, :cond_f

    .line 7271
    array-length v6, v3

    new-array v6, v6, [J

    :cond_f
    move v14, v10

    .line 7273
    :goto_d
    array-length v10, v3

    if-ge v14, v10, :cond_10

    const-wide v4, 0x20b00000003L

    .line 7274
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    add-int/lit8 v10, v14, 0x1

    move-wide/from16 v45, v12

    const-wide v12, 0x10500000001L

    .line 7275
    invoke-virtual {v7, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7276
    aget-wide v12, v3, v14

    move/from16 v47, v8

    move/from16 v48, v9

    const-wide v8, 0x10300000002L

    invoke-virtual {v7, v8, v9, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7278
    aget-wide v8, v6, v14

    const-wide v12, 0x10300000003L

    invoke-virtual {v7, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7280
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move v14, v10

    move-wide/from16 v12, v45

    move/from16 v8, v47

    move/from16 v9, v48

    goto :goto_d

    :cond_10
    move/from16 v47, v8

    move/from16 v48, v9

    move-wide/from16 v45, v12

    const/4 v3, 0x0

    :goto_e
    const-wide v8, 0x10e00000001L

    const/4 v10, 0x7

    if-ge v3, v10, :cond_14

    const/4 v4, 0x0

    .line 7286
    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(II)[J

    move-result-object v5

    if-eqz v5, :cond_13

    .line 7287
    array-length v6, v5

    array-length v10, v2

    if-ne v6, v10, :cond_13

    .line 7288
    invoke-virtual {v11, v4, v3}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(II)[J

    move-result-object v6

    if-nez v6, :cond_11

    .line 7290
    array-length v4, v5

    new-array v6, v4, [J

    :cond_11
    const-wide v12, 0x20b00000004L

    .line 7292
    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 7293
    invoke-virtual {v7, v8, v9, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v4, 0x0

    .line 7294
    :goto_f
    array-length v8, v5

    if-ge v4, v8, :cond_12

    move-object/from16 v49, v15

    const-wide v8, 0x20b00000002L

    .line 7295
    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    add-int/lit8 v10, v4, 0x1

    const-wide v8, 0x10500000001L

    .line 7296
    invoke-virtual {v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7297
    aget-wide v8, v5, v4

    move/from16 v51, v10

    move-object/from16 v50, v11

    const-wide v10, 0x10300000002L

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7299
    aget-wide v8, v6, v4

    const-wide v10, 0x10300000003L

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7301
    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v15, v49

    move-object/from16 v11, v50

    move/from16 v4, v51

    goto :goto_f

    :cond_12
    move-object/from16 v50, v11

    move-object/from16 v49, v15

    const-wide v10, 0x10300000003L

    .line 7303
    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_10

    :cond_13
    move-object/from16 v50, v11

    move-object/from16 v49, v15

    const-wide v10, 0x10300000003L

    :goto_10
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v15, v49

    move-object/from16 v11, v50

    goto :goto_e

    :cond_14
    move v14, v10

    move-object/from16 v50, v11

    move-object/from16 v49, v15

    const-wide v10, 0x10300000003L

    const-wide v12, 0x20b00000002L

    .line 7306
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b0000000aL

    .line 7309
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v14, v10

    const-wide v10, 0x10300000002L

    move-wide/from16 v4, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000bL

    .line 7313
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000cL

    .line 7317
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7321
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x5

    .line 7322
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 7329
    :goto_11
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 7330
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    if-eqz v3, :cond_16

    const-wide v14, 0x20b00000010L

    .line 7332
    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 7334
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-wide v10, 0x10900000001L

    invoke-virtual {v7, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7336
    array-length v6, v1

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v6, :cond_15

    aget v11, v1, v10

    .line 7337
    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7338
    invoke-virtual {v7, v8, v9, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v12, 0x0

    .line 7339
    invoke-virtual {v3, v11, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    const-wide v12, 0x10500000002L

    invoke-virtual {v7, v12, v13, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7340
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v10, v10, 0x1

    const-wide v12, 0x20b00000002L

    goto :goto_12

    .line 7343
    :cond_15
    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    const-wide v10, 0x10300000002L

    const-wide v12, 0x20b00000002L

    const-wide v14, 0x10300000003L

    goto :goto_11

    :cond_17
    const-wide v12, 0x10500000002L

    .line 7348
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v10

    .line 7349
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v14, v0

    :goto_13
    if-ltz v14, :cond_18

    .line 7350
    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 7351
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    const-wide v0, 0x20b0000000fL

    .line 7352
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7354
    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v12, v4

    move-wide/from16 v4, v28

    .line 7356
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object v3, v15

    .line 7357
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7359
    invoke-virtual {v7, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v14, v14, -0x1

    const-wide v12, 0x10500000002L

    goto :goto_13

    :cond_18
    const-wide v0, 0x10b00000004L

    .line 7364
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    const/4 v3, 0x0

    .line 7363
    invoke-static {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b00000011L

    .line 7367
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    move-object/from16 v10, v50

    .line 7369
    invoke-virtual {v10, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    const-wide v12, 0x10300000001L

    .line 7368
    invoke-virtual {v7, v12, v13, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7371
    invoke-virtual {v10, v11, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    const-wide v12, 0x10300000002L

    .line 7370
    invoke-virtual {v7, v12, v13, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v12, 0x2

    .line 7373
    invoke-virtual {v10, v12, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    const-wide v13, 0x10300000003L

    .line 7372
    invoke-virtual {v7, v13, v14, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000004L

    const/4 v2, 0x3

    .line 7375
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 7374
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000005L

    const/4 v2, 0x4

    .line 7377
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 7376
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000006L

    const/4 v2, 0x5

    .line 7379
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 7378
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000007L

    .line 7381
    invoke-virtual {v10, v3, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 7380
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000008L

    .line 7383
    invoke-virtual {v10, v11, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 7382
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000009L

    .line 7385
    invoke-virtual {v10, v12, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 7384
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x1030000000aL

    const/4 v2, 0x3

    .line 7387
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 7386
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x1030000000bL

    .line 7389
    invoke-virtual {v10, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v13

    .line 7388
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x1050000000cL

    .line 7391
    invoke-virtual {v10, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v2

    .line 7390
    invoke-virtual {v7, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x1050000000dL

    .line 7393
    invoke-virtual {v10, v3}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v13

    .line 7392
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x1050000000eL

    .line 7395
    invoke-virtual {v10, v3}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v13

    .line 7394
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x1030000000fL

    const/4 v2, 0x6

    .line 7397
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 7396
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000010L

    const/4 v2, 0x7

    .line 7399
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 7398
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000011L

    const/16 v2, 0x8

    .line 7401
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 7400
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000012L

    const/16 v2, 0x9

    .line 7403
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    .line 7402
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000013L

    const/4 v2, 0x6

    .line 7405
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 7404
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000014L

    const/4 v2, 0x7

    .line 7407
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 7406
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000015L

    const/16 v2, 0x8

    .line 7409
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 7408
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000016L

    const/16 v2, 0x9

    .line 7411
    invoke-virtual {v10, v2, v3}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 7410
    invoke-virtual {v7, v4, v5, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7412
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-object/from16 v13, v42

    move/from16 v0, v48

    .line 7415
    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    if-eqz v0, :cond_19

    const-wide v1, 0x10b00000012L

    .line 7417
    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10100000001L

    .line 7418
    iget-wide v5, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v3, 0x10800000002L

    .line 7419
    iget-boolean v5, v0, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    invoke-virtual {v7, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v3, 0x10100000003L

    .line 7420
    iget-wide v5, v0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v3, 0x10100000004L

    .line 7421
    iget-wide v5, v0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 7423
    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7428
    :cond_19
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 7429
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v11

    :goto_14
    if-ltz v1, :cond_1a

    .line 7430
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Proc;

    const-wide v3, 0x20b00000013L

    .line 7431
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 7433
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-wide v14, 0x10900000001L

    invoke-virtual {v7, v14, v15, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v5, 0x0

    .line 7434
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v14

    move-object/from16 v52, v13

    const-wide v12, 0x10300000002L

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7435
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v12

    const-wide v14, 0x10300000003L

    invoke-virtual {v7, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v12, 0x10300000004L

    .line 7436
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v14

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v12, 0x10500000005L

    .line 7437
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v6

    invoke-virtual {v7, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000006L

    .line 7438
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v6

    invoke-virtual {v7, v12, v13, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000007L

    .line 7439
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v2

    invoke-virtual {v7, v12, v13, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7441
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v13, v52

    const/4 v12, 0x2

    goto :goto_14

    :cond_1a
    move-object/from16 v52, v13

    .line 7445
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v12

    const/4 v13, 0x0

    .line 7446
    :goto_15
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v13, v0, :cond_1c

    .line 7447
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Sensor;

    .line 7448
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-nez v3, :cond_1b

    move-object/from16 v53, v12

    const-wide v21, 0x10500000001L

    goto :goto_16

    .line 7452
    :cond_1b
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 7453
    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    const-wide v1, 0x20b00000015L

    .line 7454
    invoke-virtual {v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v1, 0x10500000001L

    .line 7456
    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v19, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v21, v1

    move-wide/from16 v1, v19

    move-object/from16 v53, v12

    move-wide v11, v4

    move-wide/from16 v4, v28

    .line 7458
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object v3, v14

    .line 7459
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7461
    invoke-virtual {v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_16
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v12, v53

    const/4 v11, 0x1

    goto :goto_15

    :cond_1c
    const/4 v0, 0x0

    const/4 v1, 0x7

    :goto_17
    if-ge v0, v1, :cond_1e

    move-wide/from16 v11, v28

    const/4 v2, 0x0

    .line 7466
    invoke-virtual {v10, v0, v11, v12, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    cmp-long v4, v2, v24

    if-nez v4, :cond_1d

    goto :goto_18

    :cond_1d
    const-wide v4, 0x20b00000014L

    .line 7470
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7471
    invoke-virtual {v7, v8, v9, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10300000002L

    .line 7472
    invoke-virtual {v7, v13, v14, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7473
    invoke-virtual {v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_18
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v28, v11

    goto :goto_17

    :cond_1e
    move-wide/from16 v11, v28

    .line 7477
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v13

    .line 7478
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v14, v0

    :goto_19
    if-ltz v14, :cond_1f

    .line 7479
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 7480
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v15

    const-wide v0, 0x20b00000016L

    .line 7481
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7483
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v1, 0x10900000001L

    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10b00000002L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v8, v4

    move-wide v4, v11

    .line 7485
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000003L

    move-object v3, v15

    .line 7486
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7488
    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v14, v14, -0x1

    const-wide v8, 0x10e00000001L

    goto :goto_19

    .line 7492
    :cond_1f
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    :goto_1a
    const/4 v1, 0x4

    if-ge v0, v1, :cond_21

    const/4 v1, 0x0

    .line 7494
    invoke-virtual {v10, v0, v1}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    if-eqz v2, :cond_20

    const-wide v3, 0x20b00000017L

    .line 7496
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10e00000001L

    .line 7497
    invoke-virtual {v7, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v8, 0x10500000002L

    .line 7498
    invoke-virtual {v7, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7499
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_1b

    :cond_20
    const-wide v5, 0x10e00000001L

    const-wide v8, 0x10500000002L

    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_21
    const-wide v8, 0x10500000002L

    const-wide v1, 0x10b0000000dL

    .line 7505
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v4, v11

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b0000000eL

    .line 7508
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7511
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v13

    .line 7512
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v14, v0

    :goto_1c
    if-ltz v14, :cond_23

    .line 7513
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/os/BatteryStats$Uid$Wakelock;

    const-wide v2, 0x20b00000019L

    .line 7514
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 7515
    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v2, 0x10900000001L

    invoke-virtual {v7, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10b00000002L

    .line 7516
    invoke-virtual {v15, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-wide v1, v2

    move-object v3, v6

    move-wide v8, v4

    move-wide v4, v11

    move/from16 v6, v17

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v0, 0x0

    .line 7518
    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v17

    if-eqz v17, :cond_22

    const-wide v1, 0x10b00000003L

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, v17

    move-wide v4, v11

    .line 7520
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v1, 0x10b00000004L

    .line 7521
    invoke-virtual/range {v17 .. v17}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    :cond_22
    const-wide v1, 0x10b00000005L

    const/4 v6, 0x2

    .line 7524
    invoke-virtual {v15, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-wide v4, v11

    move/from16 v17, v6

    move v6, v15

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7526
    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v14, v14, -0x1

    const/4 v1, 0x1

    const-wide v8, 0x10500000002L

    goto :goto_1c

    :cond_23
    const-wide v1, 0x10b0000001cL

    .line 7530
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v4, v11

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7534
    invoke-virtual/range {v38 .. v38}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_1d
    if-ltz v0, :cond_25

    move-object/from16 v2, v38

    .line 7535
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 7536
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 7537
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1e
    if-ltz v4, :cond_24

    const-wide v5, 0x20b0000001aL

    .line 7538
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 7539
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-wide v13, 0x10900000001L

    invoke-virtual {v7, v13, v14, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7541
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Counter;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    move-object/from16 v54, v2

    const-wide v1, 0x10500000002L

    .line 7540
    invoke-virtual {v7, v1, v2, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7542
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v2, v54

    const/4 v1, 0x1

    goto :goto_1e

    :cond_24
    move-object/from16 v54, v2

    const-wide v1, 0x10500000002L

    const/4 v9, 0x0

    const-wide v13, 0x10900000001L

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v38, v54

    const/4 v1, 0x1

    goto :goto_1d

    :cond_25
    const/4 v9, 0x0

    const-wide v0, 0x10b00000005L

    .line 7548
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v2

    .line 7547
    invoke-static {v7, v0, v1, v2, v9}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v0, 0x10b0000001bL

    .line 7551
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 7553
    invoke-virtual {v10, v11, v12, v9}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000001L

    .line 7552
    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000003L

    .line 7554
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-wide v4, v11

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v8, 0x0

    .line 7557
    invoke-virtual {v10, v11, v12, v8}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v0

    const-wide v2, 0x10300000002L

    .line 7556
    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10b00000004L

    .line 7558
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7560
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide/from16 v0, v39

    .line 7562
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v47, 0x1

    move-wide v10, v11

    move/from16 v3, v16

    move-object/from16 v5, v18

    move-wide/from16 v13, v35

    move-wide/from16 v8, v45

    move-object/from16 v15, v49

    move-object/from16 v4, v52

    move-object/from16 v12, p0

    goto/16 :goto_3

    :cond_26
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method private dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 7567
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-wide v2, 0x10500000001L

    const/16 v4, 0x20

    .line 7571
    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000002L

    .line 7572
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7574
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v4

    const-wide v5, 0x10900000003L

    .line 7573
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v9, 0x10900000004L

    .line 7576
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v4

    .line 7575
    invoke-virtual {v0, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v4, 0x0

    .line 7580
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v7

    if-ge v4, v7, :cond_1

    const-wide v10, 0x20b00000005L

    .line 7581
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 7582
    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v12, 0x10500000002L

    .line 7583
    invoke-virtual {v1, v4}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v7

    invoke-virtual {v0, v12, v13, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7585
    invoke-virtual {v1, v4}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v7

    .line 7584
    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 7586
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7590
    :cond_1
    new-instance v10, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v10}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 7591
    new-instance v11, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v11}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-wide/16 v2, -0x1

    move-wide v5, v2

    const/4 v4, 0x0

    .line 7596
    :goto_1
    invoke-virtual {v1, v11}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v7

    const-wide/16 v12, 0x0

    if-eqz v7, :cond_b

    .line 7597
    iget-wide v5, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v7, v2, v12

    if-gez v7, :cond_2

    move-wide v14, v5

    goto :goto_2

    :cond_2
    move-wide v14, v2

    .line 7601
    :goto_2
    iget-wide v2, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v2, v2, p3

    if-ltz v2, :cond_a

    cmp-long v2, p3, v12

    const/16 v16, 0x1

    if-ltz v2, :cond_8

    if-nez v4, :cond_8

    .line 7603
    iget-byte v2, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    iget-byte v2, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x7

    if-eq v2, v7, :cond_6

    iget-byte v2, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v7, 0x4

    if-eq v2, v7, :cond_6

    iget-byte v2, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v7, 0x8

    if-ne v2, v7, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v17, v10

    .line 7611
    iget-wide v9, v11, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v2, v9, v12

    if-eqz v2, :cond_5

    .line 7613
    iget-byte v9, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 7614
    iput-byte v3, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_4

    move/from16 v7, v16

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move-object v4, v11

    move-wide v12, v5

    move-wide v5, v14

    .line 7615
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    .line 7617
    iput-byte v9, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v4, v16

    goto :goto_6

    :cond_5
    move-wide v12, v5

    goto :goto_6

    :cond_6
    :goto_4
    move-wide v12, v5

    move-object/from16 v17, v10

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_7

    move/from16 v7, v16

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    :goto_5
    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move-object v4, v11

    move-wide v5, v14

    .line 7608
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    const/4 v9, 0x0

    .line 7610
    iput-byte v9, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v4, v16

    goto :goto_7

    :cond_8
    move-wide v12, v5

    move-object/from16 v17, v10

    :goto_6
    const/4 v9, 0x0

    :goto_7
    move v10, v4

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_9

    move/from16 v7, v16

    goto :goto_8

    :cond_9
    move v7, v9

    :goto_8
    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move-object v4, v11

    move-wide v5, v14

    .line 7654
    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Landroid/util/proto/ProtoOutputStream;Landroid/os/BatteryStats$HistoryItem;JZ)V

    move v4, v10

    move-wide v5, v12

    move-wide v2, v14

    move-object/from16 v10, v17

    goto/16 :goto_1

    :cond_a
    move-wide v12, v5

    const/4 v9, 0x0

    move-wide v2, v14

    goto/16 :goto_1

    :cond_b
    cmp-long v2, p3, v12

    if-ltz v2, :cond_c

    .line 7659
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    const-wide v2, 0x20900000006L

    .line 7660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NEXT: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7664
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0
.end method

.method private dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-wide v1, 0x10b00000006L

    .line 7669
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 7670
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    mul-long/2addr v1, v11

    .line 7671
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    mul-long v13, v3, v11

    const-wide v3, 0x10b00000001L

    .line 7676
    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 7677
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v5

    const-wide v11, 0x10300000001L

    invoke-virtual {v8, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7678
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v5

    const-wide v6, 0x10300000002L

    invoke-virtual {v8, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const/4 v5, 0x0

    .line 7680
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v17

    const-wide/16 v15, 0x3e8

    div-long v6, v17, v15

    const-wide v11, 0x10300000003L

    .line 7679
    invoke-virtual {v8, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7682
    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v6

    div-long/2addr v6, v15

    const-wide v11, 0x10300000004L

    .line 7681
    invoke-virtual {v8, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7684
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v6

    div-long/2addr v6, v15

    const-wide v11, 0x10300000005L

    .line 7683
    invoke-virtual {v8, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7686
    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v6

    div-long/2addr v6, v15

    const-wide v11, 0x10300000006L

    .line 7685
    invoke-virtual {v8, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7688
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v6

    div-long/2addr v6, v15

    const-wide v11, 0x10300000007L

    .line 7687
    invoke-virtual {v8, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7690
    invoke-virtual {v0, v1, v2, v5}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v1

    div-long/2addr v1, v15

    const-wide v6, 0x10300000008L

    .line 7689
    invoke-virtual {v8, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7692
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v1

    div-long/2addr v1, v15

    const-wide v11, 0x10300000009L

    .line 7691
    invoke-virtual {v8, v11, v12, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7694
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    const-wide v6, 0x1030000000aL

    .line 7693
    invoke-virtual {v8, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7696
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v1

    const-wide v6, 0x1030000000bL

    .line 7695
    invoke-virtual {v8, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7698
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v1

    const-wide v6, 0x1030000000cL

    .line 7697
    invoke-virtual {v8, v6, v7, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7699
    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b00000002L

    .line 7702
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 7704
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v3

    const-wide v6, 0x10500000001L

    .line 7703
    invoke-virtual {v8, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7706
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v3

    const-wide v6, 0x10500000002L

    .line 7705
    invoke-virtual {v8, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7708
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v3

    const-wide v6, 0x10500000003L

    .line 7707
    invoke-virtual {v8, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7710
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v3

    const-wide v6, 0x10500000004L

    .line 7709
    invoke-virtual {v8, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7712
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v3

    const-wide v6, 0x10500000005L

    .line 7711
    invoke-virtual {v8, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7714
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    const-wide v11, 0x10300000006L

    .line 7713
    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7716
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v3

    div-long/2addr v3, v6

    const-wide v11, 0x10300000007L

    .line 7715
    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7718
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v3

    div-long/2addr v3, v6

    const-wide v11, 0x10300000008L

    .line 7717
    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7720
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v3

    div-long/2addr v3, v6

    const-wide v11, 0x10300000009L

    .line 7719
    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7722
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v3

    div-long/2addr v3, v6

    const-wide v11, 0x1030000000aL

    .line 7721
    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7723
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7726
    invoke-virtual {v0, v13, v14}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v17, 0x0

    cmp-long v3, v1, v17

    if-ltz v3, :cond_0

    .line 7730
    div-long/2addr v1, v6

    const-wide v3, 0x10300000003L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    .line 7732
    :cond_0
    invoke-virtual {v0, v13, v14}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    cmp-long v3, v1, v17

    if-ltz v3, :cond_1

    .line 7735
    div-long/2addr v1, v6

    const-wide v3, 0x10300000004L

    invoke-virtual {v8, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    :cond_1
    const-wide v3, 0x10300000004L

    const/4 v1, -0x1

    .line 7737
    invoke-virtual {v8, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_0
    const-wide v1, 0x20b00000005L

    .line 7742
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v8, v1, v2, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    move v7, v5

    :goto_1
    const/16 v1, 0x15

    const-wide v2, 0x10e00000001L

    const/4 v6, 0x1

    if-ge v7, v1, :cond_5

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    const/16 v1, 0x14

    if-ne v7, v1, :cond_3

    move v1, v5

    goto :goto_3

    :cond_3
    move v1, v7

    :goto_3
    const-wide v11, 0x20b00000008L

    .line 7752
    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    if-eqz v6, :cond_4

    const-wide v1, 0x10800000002L

    .line 7754
    invoke-virtual {v8, v1, v2, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_4

    .line 7756
    :cond_4
    invoke-virtual {v8, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :goto_4
    const-wide v2, 0x10b00000003L

    .line 7758
    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move v15, v5

    move-wide v5, v13

    move/from16 v16, v7

    move/from16 v7, v21

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7760
    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v7, v16, 0x1

    move v5, v15

    const-wide v11, 0x1030000000aL

    goto :goto_1

    :cond_5
    move v15, v5

    const-wide v4, 0x20b00000006L

    .line 7764
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v1

    invoke-static {v8, v4, v5, v1}, Landroid/os/BatteryStats;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 7767
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7769
    array-length v4, v1

    move v5, v15

    :goto_5
    if-ge v5, v4, :cond_6

    aget-wide v11, v1, v5

    const-wide v2, 0x20300000007L

    .line 7770
    invoke-virtual {v8, v2, v3, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    add-int/lit8 v5, v5, 0x1

    const-wide v2, 0x10e00000001L

    goto :goto_5

    :cond_6
    const-wide v1, 0x10b00000009L

    .line 7776
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    .line 7775
    invoke-static {v8, v1, v2, v3, v15}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000aL

    .line 7780
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    .line 7779
    invoke-static {v8, v1, v2, v3, v15}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000cL

    .line 7783
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 7785
    invoke-virtual {v0, v15, v15}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const-wide v11, 0x10300000001L

    .line 7784
    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7787
    invoke-virtual {v0, v6, v15}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const-wide v11, 0x10300000002L

    .line 7786
    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7789
    invoke-virtual {v0, v15, v15}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v3

    const-wide v11, 0x10300000005L

    .line 7788
    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7791
    invoke-virtual {v0, v6, v15}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v3

    const-wide v11, 0x10300000006L

    .line 7790
    invoke-virtual {v8, v11, v12, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v11, 0x2

    .line 7793
    invoke-virtual {v0, v11, v15}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const-wide v6, 0x10300000003L

    .line 7792
    invoke-virtual {v8, v6, v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v3, 0x3

    .line 7795
    invoke-virtual {v0, v3, v15}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const-wide v5, 0x10300000004L

    .line 7794
    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000007L

    .line 7797
    invoke-virtual {v0, v11, v15}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v5

    .line 7796
    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000008L

    const/4 v5, 0x3

    .line 7799
    invoke-virtual {v0, v5, v15}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v5

    .line 7798
    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v3, 0x4

    .line 7801
    invoke-virtual {v0, v3, v15}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const-wide v5, 0x10300000009L

    .line 7800
    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v12, 0x5

    .line 7803
    invoke-virtual {v0, v12, v15}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const-wide v5, 0x1030000000aL

    .line 7802
    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7804
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b0000000bL

    .line 7808
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v3

    .line 7807
    invoke-static {v8, v1, v2, v3, v15}, Landroid/os/BatteryStats;->dumpControllerActivityProto(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-wide v1, 0x10b0000000dL

    .line 7812
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 7814
    invoke-virtual {v0, v13, v14, v15}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v3

    const-wide/16 v19, 0x3e8

    div-long v3, v3, v19

    const-wide v5, 0x10300000001L

    .line 7813
    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7816
    invoke-virtual {v0, v13, v14, v15}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v3

    div-long v3, v3, v19

    const-wide v5, 0x10300000002L

    .line 7815
    invoke-virtual {v8, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7817
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7820
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v1

    .line 7821
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-wide v2, 0x20b0000000eL

    .line 7822
    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v2, 0x10900000001L

    .line 7823
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10b00000002L

    .line 7824
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v11, v5

    const/4 v15, 0x1

    move-wide v5, v13

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7826
    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const/4 v11, 0x2

    const/4 v12, 0x5

    const/4 v15, 0x0

    goto :goto_6

    :cond_7
    const/4 v15, 0x1

    .line 7834
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    .line 7835
    :goto_7
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    .line 7836
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 7839
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 7840
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v15

    :goto_8
    if-ltz v6, :cond_a

    .line 7841
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 7843
    invoke-virtual {v7, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_8

    const/4 v12, 0x0

    .line 7845
    invoke-virtual {v11, v13, v14, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v21

    add-long v17, v17, v21

    goto :goto_9

    :cond_8
    const/4 v12, 0x0

    .line 7849
    :goto_9
    invoke-virtual {v7, v12}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 7851
    invoke-virtual {v7, v13, v14, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v21

    add-long v3, v3, v21

    :cond_9
    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    const-wide v1, 0x10b0000000fL

    .line 7856
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const/4 v5, 0x0

    .line 7858
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v6

    const-wide/16 v11, 0x3e8

    div-long/2addr v6, v11

    const-wide v11, 0x10300000001L

    .line 7857
    invoke-virtual {v8, v11, v12, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7860
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v6

    const-wide/16 v11, 0x3e8

    div-long/2addr v6, v11

    move-wide/from16 v23, v9

    const-wide v9, 0x10300000002L

    .line 7859
    invoke-virtual {v8, v9, v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7861
    div-long v6, v17, v11

    const-wide v9, 0x10300000003L

    invoke-virtual {v8, v9, v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7863
    div-long/2addr v3, v11

    const-wide v6, 0x10300000004L

    invoke-virtual {v8, v6, v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7866
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long/2addr v3, v11

    const-wide v6, 0x10300000005L

    .line 7865
    invoke-virtual {v8, v6, v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7868
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v3

    div-long/2addr v3, v11

    const-wide v6, 0x10300000006L

    .line 7867
    invoke-virtual {v8, v6, v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000007L

    .line 7870
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v6

    .line 7869
    invoke-virtual {v8, v3, v4, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10500000008L

    .line 7872
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v6

    div-long/2addr v6, v11

    .line 7871
    invoke-virtual {v8, v3, v4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7874
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v3

    div-long/2addr v3, v11

    const-wide v6, 0x10300000009L

    .line 7873
    invoke-virtual {v8, v6, v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7876
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v3

    div-long/2addr v3, v11

    const-wide v6, 0x1030000000aL

    .line 7875
    invoke-virtual {v8, v6, v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000000bL

    .line 7878
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v6

    .line 7877
    invoke-virtual {v8, v3, v4, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1030000000cL

    const/4 v6, 0x2

    .line 7880
    invoke-virtual {v0, v6, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v11

    .line 7879
    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000000dL

    .line 7882
    invoke-virtual {v0, v6, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    .line 7881
    invoke-virtual {v8, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x1030000000eL

    .line 7884
    invoke-virtual {v0, v6, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v11

    .line 7883
    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x1050000000fL

    .line 7886
    invoke-virtual {v0, v6, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    .line 7885
    invoke-virtual {v8, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000010L

    .line 7888
    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    .line 7887
    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000011L

    .line 7890
    invoke-virtual {v0, v15, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v11

    .line 7889
    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000012L

    .line 7892
    invoke-virtual {v0, v15, v5}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v7

    .line 7891
    invoke-virtual {v8, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000013L

    .line 7894
    invoke-virtual {v0, v15, v13, v14, v5}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v9

    div-long/2addr v9, v11

    .line 7893
    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000014L

    .line 7896
    invoke-virtual {v0, v15, v5}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v7

    .line 7895
    invoke-virtual {v8, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v3, 0x10300000015L

    .line 7898
    invoke-virtual {v0, v15}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v9

    .line 7897
    invoke-virtual {v8, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 7899
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7903
    invoke-virtual {v0, v13, v14, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v1

    .line 7904
    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v3

    const-wide v4, 0x10b00000017L

    .line 7905
    invoke-virtual {v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    .line 7906
    div-long/2addr v1, v9

    const-wide v9, 0x10300000001L

    invoke-virtual {v8, v9, v10, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10500000002L

    .line 7908
    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 7910
    invoke-virtual {v8, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7913
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v2, 0x0

    .line 7915
    :goto_a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 7916
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 7919
    sget-object v4, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v5, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const/4 v9, 0x0

    move v4, v9

    move v5, v4

    goto :goto_d

    :pswitch_0
    const/16 v5, 0xc

    goto :goto_b

    :pswitch_1
    const/16 v5, 0xb

    goto :goto_b

    :pswitch_2
    const/16 v5, 0xa

    goto :goto_b

    :pswitch_3
    const/16 v5, 0x9

    :goto_b
    const/4 v4, 0x0

    const/4 v9, 0x0

    goto :goto_d

    :pswitch_4
    const/16 v5, 0x8

    .line 7949
    iget v4, v3, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    goto :goto_d

    :pswitch_5
    const-wide v9, 0x10e00000001L

    goto/16 :goto_e

    :pswitch_6
    const/4 v9, 0x0

    const/4 v5, 0x6

    goto :goto_c

    :pswitch_7
    const/4 v9, 0x0

    const/4 v5, 0x7

    goto :goto_c

    :pswitch_8
    const/4 v9, 0x0

    move v4, v9

    const/4 v5, 0x5

    goto :goto_d

    :pswitch_9
    const/4 v9, 0x0

    const/4 v5, 0x4

    goto :goto_c

    :pswitch_a
    const/4 v9, 0x0

    const/4 v5, 0x3

    goto :goto_c

    :pswitch_b
    const/4 v9, 0x0

    move v5, v6

    goto :goto_c

    :pswitch_c
    const/4 v9, 0x0

    move v4, v9

    move v5, v15

    goto :goto_d

    :pswitch_d
    const/4 v9, 0x0

    const/16 v5, 0xd

    :goto_c
    move v4, v9

    :goto_d
    const-wide v10, 0x20b00000011L

    .line 7964
    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    move-wide/from16 v25, v10

    const-wide v9, 0x10e00000001L

    .line 7965
    invoke-virtual {v8, v9, v10, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x10500000002L

    .line 7966
    invoke-virtual {v8, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10100000003L

    .line 7967
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v8, v4, v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v4, 0x10800000004L

    .line 7968
    iget-boolean v7, v3, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    invoke-virtual {v8, v4, v5, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x10100000005L

    .line 7969
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-virtual {v8, v4, v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v4, 0x10100000006L

    .line 7970
    iget-wide v11, v3, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-virtual {v8, v4, v5, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    move-wide/from16 v3, v25

    .line 7972
    invoke-virtual {v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    :cond_c
    const-wide v9, 0x10e00000001L

    const-wide v1, 0x10b00000012L

    .line 7977
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10100000001L

    .line 7979
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v5

    .line 7978
    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v3, 0x10100000002L

    .line 7980
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v5

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v3, 0x10100000003L

    .line 7981
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v5

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    const-wide v3, 0x10100000004L

    .line 7982
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v5

    invoke-virtual {v8, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 7983
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7986
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v1

    .line 7987
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v11

    .line 7988
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/Map$Entry;

    const-wide v1, 0x20b00000013L

    .line 7989
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    const-wide v1, 0x10900000001L

    .line 7990
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10b00000002L

    .line 7992
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v9, v5

    move-wide v5, v13

    .line 7991
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const-wide v2, 0x10b00000003L

    .line 7994
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move-object/from16 v1, p1

    .line 7993
    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 7995
    invoke-virtual {v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v9, 0x10e00000001L

    goto :goto_f

    :cond_d
    const/4 v1, 0x5

    const/4 v9, 0x0

    :goto_10
    if-ge v9, v1, :cond_e

    const-wide v1, 0x20b00000014L

    .line 8000
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v1, 0x10e00000001L

    .line 8001
    invoke-virtual {v8, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    .line 8002
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v5, v13

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8004
    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x5

    goto :goto_10

    :cond_e
    const-wide v2, 0x10b00000015L

    .line 8008
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v5, v13

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    const/4 v1, 0x5

    const/4 v9, 0x0

    :goto_11
    if-ge v9, v1, :cond_f

    const-wide v1, 0x20b00000010L

    .line 8013
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v1, 0x10e00000001L

    .line 8014
    invoke-virtual {v8, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    .line 8015
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v5, v13

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8017
    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    const/4 v1, 0x5

    goto :goto_11

    .line 8021
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    .line 8022
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-wide v2, 0x20b00000016L

    .line 8023
    invoke-virtual {v8, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v2, 0x10900000001L

    .line 8024
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v2, 0x10b00000002L

    .line 8025
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v5, v13

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8026
    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_12

    :cond_10
    const/4 v9, 0x0

    const/4 v10, 0x5

    :goto_13
    if-ge v9, v10, :cond_11

    const-wide v1, 0x20b00000018L

    .line 8031
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    const-wide v1, 0x10e00000001L

    .line 8032
    invoke-virtual {v8, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    .line 8033
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v5, v13

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8035
    invoke-virtual {v8, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_11
    const/4 v9, 0x0

    :goto_14
    const/16 v1, 0x8

    if-ge v9, v1, :cond_12

    const-wide v1, 0x20b00000019L

    .line 8040
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v1, 0x10e00000001L

    .line 8041
    invoke-virtual {v8, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    .line 8042
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v5, v13

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8044
    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_12
    const/4 v9, 0x0

    :goto_15
    const/16 v1, 0xd

    if-ge v9, v1, :cond_13

    const-wide v1, 0x20b0000001aL

    .line 8049
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    const-wide v5, 0x10e00000001L

    .line 8050
    invoke-virtual {v8, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10b00000002L

    .line 8051
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-wide v15, v5

    move-wide v5, v13

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V

    .line 8053
    invoke-virtual {v8, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_13
    move-wide/from16 v1, v23

    .line 8056
    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6503
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6504
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6505
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6506
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x40

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6507
    invoke-static {p1, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6508
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6509
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const/4 p0, 0x1

    return p0
.end method

.method private static dumpTimer(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$Timer;JI)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    return-void

    .line 3273
    :cond_0
    invoke-virtual/range {p3 .. p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide v2

    move/from16 v4, p6

    .line 3274
    invoke-virtual {v1, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    const-wide/16 v5, 0x3e8

    .line 3275
    div-long v5, p4, v5

    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v7

    .line 3276
    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v9

    .line 3277
    invoke-virtual {v1, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v5

    const-wide/16 v11, 0x0

    cmp-long v1, v2, v11

    const-wide/16 v11, -0x1

    if-nez v1, :cond_1

    if-nez v4, :cond_1

    cmp-long v1, v7, v11

    if-nez v1, :cond_1

    cmp-long v1, v9, v11

    if-nez v1, :cond_1

    cmp-long v1, v5, v11

    if-eqz v1, :cond_5

    .line 3280
    :cond_1
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    const-wide v11, 0x10300000001L

    .line 3281
    invoke-virtual {p0, v11, v12, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x10300000002L

    .line 3282
    invoke-virtual {p0, v1, v2, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide/16 v1, -0x1

    cmp-long v3, v7, v1

    if-eqz v3, :cond_2

    const-wide v3, 0x10300000003L

    .line 3285
    invoke-virtual {p0, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_2
    cmp-long v3, v9, v1

    if-eqz v3, :cond_3

    const-wide v3, 0x10300000004L

    .line 3288
    invoke-virtual {p0, v3, v4, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_3
    cmp-long v1, v5, v1

    if-eqz v1, :cond_4

    const-wide v1, 0x10300000005L

    .line 3291
    invoke-virtual {p0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3293
    :cond_4
    invoke-virtual {p0, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_5
    return-void
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 2

    if-eqz p4, :cond_1

    .line 3250
    invoke-virtual {p4, p5, p6, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p5

    invoke-static {p5, p6}, Landroid/os/BatteryStats;->roundUsToMs(J)J

    move-result-wide p5

    .line 3251
    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p4

    const-wide/16 v0, 0x0

    cmp-long p7, p5, v0

    if-nez p7, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 p7, 0x2

    .line 3253
    new-array p7, p7, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p7, v0

    const/4 p5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p7, p5

    invoke-static {p0, p1, p2, p3, p7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 3002
    div-long v2, p1, v0

    .line 3003
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    .line 3004
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms "

    .line 3005
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 3009
    div-long v2, p1, v0

    .line 3010
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v2, v0

    sub-long/2addr p1, v2

    .line 3011
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    .line 3012
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 10

    const-wide/32 v0, 0x15180

    .line 2974
    div-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2976
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "d "

    .line 2977
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v6, 0x18

    mul-long/2addr v0, v6

    sub-long v6, p1, v0

    const-wide/16 v8, 0xe10

    .line 2981
    div-long/2addr v6, v8

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    cmp-long v8, v0, v2

    if-eqz v8, :cond_2

    .line 2983
    :cond_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "h "

    .line 2984
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    sub-long v6, p1, v0

    .line 2988
    div-long/2addr v6, v4

    cmp-long v8, v6, v2

    if-nez v8, :cond_3

    cmp-long v8, v0, v2

    if-eqz v8, :cond_4

    .line 2990
    :cond_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "m "

    .line 2991
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    cmp-long v4, p1, v2

    if-nez v4, :cond_5

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    :cond_5
    sub-long/2addr p1, v0

    .line 2996
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s "

    .line 2997
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method public static mapToInternalProcessState(I)I
    .locals 3

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 v2, 0x5

    if-gt p0, v2, :cond_3

    return v0

    :cond_3
    const/16 v0, 0xa

    if-gt p0, v0, :cond_4

    return v1

    :cond_4
    const/16 v0, 0xb

    if-gt p0, v0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const/16 v0, 0xc

    if-gt p0, v0, :cond_6

    return v2

    :cond_6
    const/4 p0, 0x6

    return p0
.end method

.method static printBitDescriptions(Ljava/lang/StringBuilder;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 5

    xor-int/2addr p1, p2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 6041
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_a

    .line 6042
    aget-object v2, p4, v0

    .line 6043
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_9

    if-eqz p5, :cond_1

    const-string v3, " "

    goto :goto_1

    :cond_1
    const-string v3, ","

    .line 6044
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6045
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v3, :cond_5

    .line 6046
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_2

    const-string v3, "+"

    goto :goto_2

    :cond_2
    const-string v3, "-"

    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_3

    .line 6047
    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6048
    iget v2, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_9

    if-eqz p3, :cond_9

    const-string v1, "="

    .line 6050
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_4

    .line 6052
    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, ":\""

    .line 6053
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6054
    iget-object v1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    .line 6055
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 6057
    :cond_4
    iget v1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v1, 0x1

    goto :goto_7

    :cond_5
    if-eqz p5, :cond_6

    .line 6061
    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-object v3, v2, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 6062
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6063
    iget v3, v2, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v3, p2

    iget v4, v2, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int/2addr v3, v4

    .line 6064
    iget-object v4, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v4, :cond_8

    if-ltz v3, :cond_8

    iget-object v4, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    if-eqz p5, :cond_7

    .line 6065
    iget-object v2, v2, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_6

    :cond_7
    iget-object v2, v2, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v2, v2, v3

    :goto_6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 6067
    :cond_8
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v1, :cond_d

    if-eqz p3, :cond_d

    if-eqz p5, :cond_b

    const-string p1, " wake_lock="

    goto :goto_8

    :cond_b
    const-string p1, ",w="

    .line 6073
    :goto_8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_c

    .line 6075
    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, p1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string p1, ":\""

    .line 6076
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6077
    iget-object p1, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    .line 6078
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 6080
    :cond_c
    iget p1, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_d
    :goto_9
    return-void
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p6

    .line 3393
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    .line 3394
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v7

    .line 3395
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v9

    .line 3398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-virtual {v0, v11, v12, v4}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v11

    div-long/2addr v11, v13

    .line 3400
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    :goto_0
    if-ge v15, v14, :cond_0

    move/from16 v18, v14

    aget-object v14, v13, v15

    .line 3401
    invoke-virtual {v14, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v19

    add-long v16, v16, v19

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v18

    goto :goto_0

    :cond_0
    const-string v13, "WiFi"

    .line 3404
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 3405
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getScanTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    const/4 v15, 0x0

    .line 3406
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3407
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "     "

    .line 3408
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " Scan time:  "

    .line 3410
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3411
    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v15, "("

    .line 3412
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3413
    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    .line 3414
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3415
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-long v13, v5, v7

    add-long v13, v13, v16

    sub-long v13, v11, v13

    const/4 v15, 0x0

    .line 3419
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3420
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "     "

    .line 3421
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3422
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " Sleep time:  "

    .line 3423
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3424
    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v15, "("

    .line 3425
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3426
    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    .line 3427
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3428
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string v13, "Cellular"

    .line 3431
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 3432
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getSleepTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    const/4 v15, 0x0

    .line 3433
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3434
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "     "

    .line 3435
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " Sleep time:  "

    .line 3437
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3438
    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v15, "("

    .line 3439
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3440
    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ")"

    .line 3441
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3442
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const/4 v13, 0x0

    .line 3445
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3446
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "     "

    .line 3447
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " Idle time:   "

    .line 3449
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3450
    invoke-static {v2, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v13, "("

    .line 3451
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3452
    invoke-virtual {v0, v5, v6, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    .line 3453
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3454
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 3456
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3457
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "     "

    .line 3458
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3459
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Rx time:     "

    .line 3460
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3461
    invoke-static {v2, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "("

    .line 3462
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3463
    invoke-virtual {v0, v7, v8, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    .line 3464
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3465
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 3467
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3468
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "     "

    .line 3469
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3470
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Tx time:     "

    .line 3471
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, -0x1

    .line 3474
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x32c7c276

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "Cellular"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v15, 0x0

    :cond_4
    :goto_1
    if-eqz v15, :cond_5

    const-string v5, "[0]"

    const-string v6, "[1]"

    const-string v7, "[2]"

    const-string v8, "[3]"

    const-string v13, "[4]"

    .line 3484
    filled-new-array {v5, v6, v7, v8, v13}, [Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    const-string v5, "   less than 0dBm: "

    const-string v6, "   0dBm to 8dBm: "

    const-string v7, "   8dBm to 15dBm: "

    const-string v8, "   15dBm to 20dBm: "

    const-string v13, "   above 20dBm: "

    .line 3476
    filled-new-array {v5, v6, v7, v8, v13}, [Ljava/lang/String;

    move-result-object v5

    .line 3487
    :goto_2
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    array-length v6, v6

    array-length v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_6

    .line 3489
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_7

    .line 3491
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v13

    const/4 v8, 0x0

    .line 3492
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3493
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    "

    .line 3494
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    aget-object v8, v5, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    .line 3496
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3497
    invoke-static {v2, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v8, "("

    .line 3498
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3499
    invoke-virtual {v0, v13, v14, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    .line 3500
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3504
    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    .line 3505
    invoke-static {v2, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "("

    .line 3506
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3507
    invoke-virtual {v0, v4, v5, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 3508
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3509
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v0, v9, v4

    if-lez v0, :cond_8

    const/4 v0, 0x0

    .line 3513
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3514
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     "

    .line 3515
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Battery drain: "

    .line 3517
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v3, v9

    const-wide v5, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v5

    .line 3518
    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    .line 3517
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mAh"

    .line 3519
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1

    .line 3385
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3386
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    :cond_0
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 2

    long-to-float p0, p2

    const-string p2, ""

    const/high16 p3, 0x46200000    # 10240.0f

    cmpl-float v0, p0, p3

    const/high16 v1, 0x44800000    # 1024.0f

    if-ltz v0, :cond_0

    const-string p2, "KB"

    div-float/2addr p0, v1

    :cond_0
    cmpl-float v0, p0, p3

    if-ltz v0, :cond_1

    const-string p2, "MB"

    div-float/2addr p0, v1

    :cond_1
    cmpl-float v0, p0, p3

    if-ltz v0, :cond_2

    const-string p2, "GB"

    div-float/2addr p0, v1

    :cond_2
    cmpl-float v0, p0, p3

    if-ltz v0, :cond_3

    const-string p2, "TB"

    div-float/2addr p0, v1

    :cond_3
    cmpl-float p3, p0, p3

    if-ltz p3, :cond_4

    const-string p2, "PB"

    div-float/2addr p0, v1

    :cond_4
    float-to-int p0, p0

    .line 6494
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 6495
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 3127
    invoke-virtual {p2, p3, p4, p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 3129
    invoke-virtual {p2, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p5

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_3

    .line 3131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3132
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "    "

    .line 3133
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3134
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, ": "

    .line 3135
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    invoke-static {p1, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo p6, "realtime ("

    .line 3137
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3138
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " times)"

    .line 3139
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3140
    div-long/2addr p3, v3

    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide p5

    cmp-long p7, p5, v5

    if-ltz p7, :cond_0

    const-string p7, " max="

    .line 3142
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3143
    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3145
    :cond_0
    invoke-virtual {p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 3146
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide p2

    cmp-long p4, p2, v5

    if-ltz p4, :cond_1

    const-string p4, " (running for "

    .line 3148
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3149
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "ms)"

    .line 3150
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, " (running)"

    .line 3152
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_5

    .line 3070
    invoke-static {p1, p2, p3, p5}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    .line 3072
    invoke-virtual {p1, p5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result p5

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 3074
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    if-eqz p4, :cond_0

    .line 3077
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x20

    .line 3078
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 p4, 0x28

    .line 3080
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3081
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " times)"

    .line 3082
    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 p4, 0x3e8

    .line 3083
    div-long/2addr p2, p4

    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide p4

    cmp-long p6, p4, v2

    if-ltz p6, :cond_1

    const-string p6, " max="

    .line 3085
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3086
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3089
    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide p4

    cmp-long p6, p4, v0

    if-lez p6, :cond_2

    const-string p6, " actual="

    .line 3091
    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3092
    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3094
    :cond_2
    invoke-virtual {p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 3095
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide p1

    cmp-long p3, p1, v2

    if-ltz p3, :cond_3

    const-string p3, " (running for "

    .line 3097
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms)"

    .line 3099
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p1, " (running)"

    .line 3101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    const-string p0, ", "

    return-object p0

    :cond_5
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_0

    .line 3181
    invoke-virtual {v1, v2, v3, v5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v8

    .line 3182
    invoke-virtual {v1, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 3183
    div-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v10

    .line 3184
    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v12

    .line 3185
    invoke-virtual {v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v1

    move-wide v2, v1

    move-object/from16 v1, p6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move-object/from16 v1, p6

    move-wide v2, v8

    move-wide v10, v2

    move-wide v12, v10

    .line 3187
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v14, 0x1f4

    add-long/2addr v8, v14

    .line 3188
    div-long/2addr v8, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    .line 3189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    .line 3190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, ""

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3191
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3193
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3195
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    .line 3200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3201
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_2
    const-string v0, ","

    return-object v0
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .locals 0

    .line 4301
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 0

    .line 4305
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static roundUsToMs(J)J
    .locals 2

    const-wide/16 v0, 0x1f4

    add-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    .line 3043
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .locals 6

    .line 3528
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 122

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 3538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v11, 0x3e8

    mul-long/2addr v1, v11

    .line 3539
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long v6, v13, v11

    .line 3541
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v4

    .line 3542
    invoke-virtual {v0, v1, v2, v9}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v15

    .line 3543
    invoke-virtual {v0, v6, v7, v9}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v17

    .line 3544
    invoke-virtual {v0, v1, v2, v9}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v19

    .line 3545
    invoke-virtual {v0, v6, v7, v9}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v21

    .line 3547
    invoke-virtual {v0, v6, v7, v9}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v23

    .line 3548
    invoke-virtual {v0, v1, v2, v9}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v1

    .line 3549
    invoke-virtual {v0, v6, v7, v9}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v25

    .line 3550
    invoke-virtual {v0, v6, v7, v9}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v27

    .line 3551
    invoke-virtual {v0, v6, v7, v9}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v29

    .line 3552
    invoke-virtual {v0, v6, v7, v9}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v31

    const/4 v3, 0x1

    .line 3553
    invoke-virtual {v0, v3, v6, v7, v9}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v33

    const/4 v11, 0x2

    .line 3555
    invoke-virtual {v0, v11, v6, v7, v9}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v37

    .line 3557
    invoke-virtual {v0, v3, v6, v7, v9}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v39

    .line 3559
    invoke-virtual {v0, v11, v6, v7, v9}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v41

    .line 3561
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v12

    .line 3562
    invoke-virtual {v0, v6, v7, v9}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v43

    .line 3563
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v45

    .line 3564
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v47

    .line 3565
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v49

    .line 3566
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v51

    .line 3567
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v53

    .line 3569
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3571
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v3

    move-wide/from16 v55, v13

    .line 3572
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 3574
    sget-object v14, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    aget-object v14, v14, v9

    move-wide/from16 v57, v4

    const-string v4, "bt"

    const/16 v5, 0xc

    .line 3577
    new-array v5, v5, [Ljava/lang/Object;

    if-nez v9, :cond_0

    .line 3578
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v59

    :goto_0
    move-object/from16 v60, v11

    goto :goto_1

    :cond_0
    const-string v59, "N/A"

    goto :goto_0

    :goto_1
    const/4 v11, 0x0

    aput-object v59, v5, v11

    const-wide/16 v35, 0x3e8

    div-long v17, v17, v35

    .line 3579
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v18, 0x1

    aput-object v17, v5, v18

    div-long v15, v15, v35

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v5, v16

    div-long v23, v23, v35

    .line 3580
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/4 v11, 0x3

    aput-object v15, v5, v11

    div-long v1, v1, v35

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v15, 0x4

    aput-object v1, v5, v15

    .line 3581
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v5, v2

    div-long v21, v21, v35

    .line 3582
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v5, v2

    div-long v19, v19, v35

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v5, v2

    .line 3583
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v5, v2

    .line 3584
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v5, v2

    const/16 v1, 0xb

    const-wide/16 v16, 0x3e8

    div-long v27, v27, v16

    .line 3585
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v5, v1

    const/4 v1, 0x0

    .line 3577
    invoke-static {v8, v1, v14, v4, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v13, :cond_4

    .line 3593
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid;

    .line 3596
    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 3597
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v2, 0x1

    sub-int/2addr v5, v2

    :goto_3
    if-ltz v5, :cond_3

    .line 3598
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v15, v22

    check-cast v15, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 3600
    invoke-virtual {v15, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 3602
    invoke-virtual {v11, v6, v7, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v22

    add-long v18, v18, v22

    :cond_1
    const/4 v2, 0x0

    .line 3606
    invoke-virtual {v15, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 3608
    invoke-virtual {v11, v6, v7, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v22

    add-long v20, v20, v22

    :cond_2
    add-int/lit8 v5, v5, -0x1

    const/4 v2, 0x1

    const/4 v11, 0x3

    const/4 v15, 0x4

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa

    const/4 v11, 0x3

    const/4 v15, 0x4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 3615
    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v4

    const/4 v11, 0x1

    .line 3616
    invoke-virtual {v0, v11, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v22

    const/4 v2, 0x2

    .line 3617
    invoke-virtual {v0, v2, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v27

    const/4 v15, 0x3

    .line 3618
    invoke-virtual {v0, v15, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v65

    .line 3619
    invoke-virtual {v0, v1, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v67

    .line 3620
    invoke-virtual {v0, v11, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v69

    .line 3621
    invoke-virtual {v0, v2, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v71

    .line 3622
    invoke-virtual {v0, v15, v9}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v73

    const/4 v15, 0x4

    .line 3623
    invoke-virtual {v0, v15, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v75

    const/4 v15, 0x5

    .line 3624
    invoke-virtual {v0, v15, v9}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v77

    const-string v15, "gn"

    const/16 v2, 0xa

    .line 3625
    new-array v11, v2, [Ljava/lang/Object;

    .line 3626
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v11, v1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v11, v4

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v11, v5

    invoke-static/range {v65 .. v66}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v11, v5

    .line 3627
    invoke-static/range {v67 .. v68}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v11, v5

    invoke-static/range {v69 .. v70}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v11, v5

    invoke-static/range {v71 .. v72}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v22, 0x6

    aput-object v1, v11, v22

    invoke-static/range {v73 .. v74}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v23, 0x7

    aput-object v1, v11, v23

    .line 3628
    invoke-static/range {v75 .. v76}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v24, 0x8

    aput-object v1, v11, v24

    invoke-static/range {v77 .. v78}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v27, 0x9

    aput-object v1, v11, v27

    const/4 v1, 0x0

    .line 3625
    invoke-static {v8, v1, v14, v15, v11}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v11, 0x0

    const-string v15, "gmcd"

    .line 3632
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v28

    move-object/from16 v1, p2

    move/from16 v79, v13

    move/from16 v13, v22

    move v2, v11

    move-object v11, v3

    move-object v3, v14

    move v13, v4

    move-wide/from16 v80, v57

    move-object v4, v15

    move v15, v5

    move-object/from16 v5, v28

    move-object/from16 v82, v14

    move-wide v13, v6

    move/from16 v6, p3

    .line 3631
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3635
    invoke-virtual {v0, v13, v14, v9}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v1

    .line 3636
    invoke-virtual {v0, v13, v14, v9}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v3

    const-string v5, "gwfl"

    .line 3637
    new-array v6, v15, [Ljava/lang/Object;

    const-wide/16 v22, 0x3e8

    div-long v1, v1, v22

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v6, v2

    div-long v3, v3, v22

    .line 3638
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v6, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v6, v3

    move-object/from16 v7, v82

    .line 3637
    invoke-static {v8, v2, v7, v5, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    const-string v4, "gwfcd"

    .line 3641
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v1, p2

    move-object v3, v7

    move/from16 v6, p3

    .line 3640
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string v4, "gble"

    .line 3645
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    .line 3644
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    const-string v1, "m"

    const/16 v2, 0x15

    .line 3648
    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    div-long v25, v25, v3

    .line 3649
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    div-long v43, v43, v3

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v2, v6

    div-long v18, v18, v3

    .line 3650
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v2, v6

    div-long v20, v20, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 3651
    invoke-virtual {v0, v13, v14, v9}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v2, v6

    .line 3652
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v5

    div-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v15

    div-long v29, v29, v3

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v2, v6

    div-long v31, v31, v3

    .line 3653
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v2, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v12, 0x8

    aput-object v5, v2, v12

    div-long v37, v37, v3

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v2, v6

    const/4 v5, 0x2

    .line 3654
    invoke-virtual {v0, v5, v9}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v6, 0xa

    aput-object v18, v2, v6

    const/16 v18, 0xb

    div-long v41, v41, v3

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v18

    const/16 v3, 0xc

    .line 3655
    invoke-virtual {v0, v5, v9}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    .line 3656
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    .line 3657
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v4

    const-wide/16 v18, 0x3e8

    div-long v4, v4, v18

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    div-long v33, v33, v18

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const/4 v4, 0x1

    .line 3658
    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x11

    div-long v39, v39, v18

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x12

    .line 3659
    invoke-virtual {v0, v4, v9}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x13

    .line 3660
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const/4 v4, 0x2

    .line 3661
    invoke-virtual {v0, v4}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    .line 3648
    invoke-static {v8, v3, v7, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3664
    new-array v1, v15, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v15, :cond_5

    .line 3666
    invoke-virtual {v0, v2, v13, v14, v9}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v3

    const-wide/16 v18, 0x3e8

    div-long v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    const-string v2, "br"

    const/4 v3, 0x0

    .line 3668
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3671
    new-array v1, v15, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v15, :cond_6

    .line 3673
    invoke-virtual {v0, v2, v13, v14, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v3

    const-wide/16 v18, 0x3e8

    div-long v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const-wide/16 v18, 0x3e8

    const-string/jumbo v2, "sgt"

    const/4 v3, 0x0

    .line 3675
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v2, "sst"

    const/4 v4, 0x1

    .line 3676
    new-array v5, v4, [Ljava/lang/Object;

    .line 3677
    invoke-virtual {v0, v13, v14, v9}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v20

    div-long v20, v20, v18

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v3

    .line 3676
    invoke-static {v8, v3, v7, v2, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_6
    if-ge v2, v15, :cond_7

    .line 3679
    invoke-virtual {v0, v2, v9}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    const-string/jumbo v2, "sgc"

    .line 3681
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x15

    .line 3684
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_7
    const/16 v3, 0x15

    if-ge v2, v3, :cond_8

    .line 3686
    invoke-virtual {v0, v2, v13, v14, v9}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v3

    const-wide/16 v18, 0x3e8

    div-long v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_8
    const-string v2, "dct"

    const/4 v3, 0x0

    .line 3688
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_8
    const/16 v4, 0x15

    if-ge v2, v4, :cond_9

    .line 3690
    invoke-virtual {v0, v2, v9}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    const-string v2, "dcc"

    .line 3692
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3695
    new-array v1, v12, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v12, :cond_a

    .line 3697
    invoke-virtual {v0, v2, v13, v14, v9}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v3

    const-wide/16 v18, 0x3e8

    div-long v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    const-string/jumbo v2, "wst"

    const/4 v3, 0x0

    .line 3699
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_a
    if-ge v2, v12, :cond_b

    .line 3701
    invoke-virtual {v0, v2, v9}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_b
    const-string/jumbo v2, "wsc"

    .line 3703
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0xd

    .line 3706
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_b
    const/16 v3, 0xd

    if-ge v2, v3, :cond_c

    .line 3708
    invoke-virtual {v0, v2, v13, v14, v9}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v3

    const-wide/16 v18, 0x3e8

    div-long v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_c
    const-string/jumbo v2, "wsst"

    const/4 v3, 0x0

    .line 3710
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_c
    const/16 v4, 0xd

    if-ge v2, v4, :cond_d

    .line 3712
    invoke-virtual {v0, v2, v9}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_d
    const-string/jumbo v2, "wssc"

    .line 3714
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3717
    new-array v1, v15, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v15, :cond_e

    .line 3719
    invoke-virtual {v0, v2, v13, v14, v9}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v3

    const-wide/16 v18, 0x3e8

    div-long v3, v3, v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_e
    const-string/jumbo v2, "wsgt"

    const/4 v3, 0x0

    .line 3721
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    :goto_e
    if-ge v2, v15, :cond_f

    .line 3723
    invoke-virtual {v0, v2, v9}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_f
    const-string/jumbo v2, "wsgc"

    .line 3725
    invoke-static {v8, v3, v7, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3729
    invoke-virtual {v0, v13, v14, v9}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v1

    .line 3730
    invoke-virtual {v0, v9}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v4

    const-string/jumbo v5, "wmct"

    const/4 v12, 0x2

    .line 3731
    new-array v15, v12, [Ljava/lang/Object;

    const-wide/16 v18, 0x3e8

    div-long v1, v1, v18

    .line 3732
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v15, v3

    .line 3733
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v15, v2

    .line 3731
    invoke-static {v8, v3, v7, v5, v15}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v9, v12, :cond_10

    const-string v1, "lv"

    .line 3736
    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 3737
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 3736
    invoke-static {v8, v3, v7, v1, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    if-ne v9, v12, :cond_11

    const-string v1, "dc"

    .line 3741
    new-array v2, v6, [Ljava/lang/Object;

    .line 3742
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 3743
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3744
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-wide/16 v3, 0x3e8

    div-long v45, v45, v3

    .line 3745
    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v12, 0x4

    aput-object v5, v2, v12

    div-long v47, v47, v3

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v12, 0x5

    aput-object v5, v2, v12

    .line 3746
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x6

    aput-object v5, v2, v12

    div-long v49, v49, v3

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v12, 0x7

    aput-object v5, v2, v12

    div-long v51, v51, v3

    .line 3747
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v12, 0x8

    aput-object v5, v2, v12

    div-long v53, v53, v3

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const/4 v3, 0x0

    .line 3741
    invoke-static {v8, v3, v7, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v12, 0x7

    const/16 v15, 0x9

    goto :goto_f

    :cond_11
    const-string v1, "dc"

    .line 3749
    new-array v2, v6, [Ljava/lang/Object;

    .line 3750
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 3751
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 3752
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-wide/16 v3, 0x3e8

    div-long v45, v45, v3

    .line 3753
    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v12, 0x4

    aput-object v5, v2, v12

    div-long v47, v47, v3

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v12, 0x5

    aput-object v5, v2, v12

    .line 3754
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v12, 0x6

    aput-object v5, v2, v12

    div-long v49, v49, v3

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v12, 0x7

    aput-object v5, v2, v12

    div-long v51, v51, v3

    .line 3755
    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v15, 0x8

    aput-object v5, v2, v15

    div-long v53, v53, v3

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v15, 0x9

    aput-object v3, v2, v15

    const/4 v3, 0x0

    .line 3749
    invoke-static {v8, v3, v7, v1, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_f
    const-wide/16 v18, 0x1f4

    if-gez v10, :cond_13

    .line 3759
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v1

    .line 3760
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 3761
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_10
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Ljava/util/Map$Entry;

    move-object/from16 v5, v60

    const/4 v1, 0x0

    .line 3762
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3763
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/os/BatteryStats$Timer;

    const/16 v22, 0x0

    const-string v23, ""

    move-object v1, v5

    move-wide v3, v13

    move-object/from16 v83, v5

    move-object/from16 v5, v22

    move/from16 v6, p3

    move-object v15, v7

    move-object/from16 v7, v23

    invoke-static/range {v1 .. v7}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string v1, "kwl"

    const/4 v2, 0x2

    .line 3764
    new-array v3, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3765
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual/range {v83 .. v83}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v3, v5

    .line 3764
    invoke-static {v8, v4, v15, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v7, v15

    move-object/from16 v60, v83

    const/16 v6, 0xa

    const/16 v15, 0x9

    goto :goto_10

    :cond_12
    move-object v15, v7

    move-object/from16 v83, v60

    .line 3768
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    .line 3769
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 3770
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3773
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v3, v13, v14, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    .line 3774
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    const-string/jumbo v6, "wr"

    const/4 v7, 0x3

    .line 3775
    new-array v12, v7, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v84, v1

    const-string v1, "\""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3776
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v12, v2

    add-long v3, v3, v18

    const-wide/16 v20, 0x3e8

    div-long v3, v3, v20

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v12, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v12, v3

    .line 3775
    invoke-static {v8, v2, v15, v6, v12}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v1, v84

    const/4 v12, 0x7

    goto :goto_11

    :cond_13
    move-object v15, v7

    move-object/from16 v83, v60

    .line 3781
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v1

    .line 3782
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v2

    .line 3783
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 3784
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object/from16 v12, v83

    const/4 v4, 0x0

    .line 3785
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3786
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    .line 3787
    invoke-virtual {v4, v13, v14, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v5, v5, v18

    const-wide/16 v20, 0x3e8

    div-long v5, v5, v20

    .line 3788
    invoke-virtual {v4, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    .line 3789
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Timer;

    if-eqz v7, :cond_15

    .line 3791
    invoke-virtual {v7, v13, v14, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v22

    add-long v22, v22, v18

    div-long v22, v22, v20

    :cond_15
    if-eqz v7, :cond_16

    .line 3793
    invoke-virtual {v7, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    :cond_16
    const-string/jumbo v7, "rpm"

    move-object/from16 v85, v1

    move-object/from16 v86, v2

    const/4 v1, 0x3

    .line 3799
    new-array v2, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v87, v13

    const-string v13, "\""

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3800
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v2, v4

    .line 3799
    invoke-static {v8, v3, v15, v7, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v83, v12

    move-object/from16 v1, v85

    move-object/from16 v2, v86

    move-wide/from16 v13, v87

    goto/16 :goto_12

    :cond_17
    move-wide/from16 v87, v13

    move-object/from16 v12, v83

    const/4 v3, 0x0

    .line 3805
    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v2, p1

    move/from16 v4, p5

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 3806
    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v13, -0x1

    .line 3807
    invoke-virtual {v1, v9, v13}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 3808
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 3809
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18

    const-string/jumbo v3, "pws"

    const/4 v4, 0x4

    .line 3810
    new-array v5, v4, [Ljava/lang/Object;

    .line 3811
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 3812
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v5, v7

    .line 3813
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v5, v7

    .line 3814
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v5, v4

    .line 3810
    invoke-static {v8, v6, v15, v3, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3816
    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_18

    .line 3817
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    .line 3819
    sget-object v5, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v6, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    const-string v5, "???"

    goto :goto_14

    :pswitch_0
    const-string v5, "memory"

    goto :goto_14

    :pswitch_1
    const-string v5, "camera"

    goto :goto_14

    :pswitch_2
    const-string v5, "over"

    goto :goto_14

    :pswitch_3
    const-string/jumbo v5, "unacc"

    goto :goto_14

    .line 3849
    :pswitch_4
    iget v3, v4, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    const-string/jumbo v5, "user"

    goto :goto_14

    .line 3845
    :pswitch_5
    iget-object v3, v4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    const-string/jumbo v5, "uid"

    goto :goto_14

    :pswitch_6
    const-string v5, "flashlight"

    goto :goto_14

    :pswitch_7
    const-string/jumbo v5, "scrn"

    goto :goto_14

    :pswitch_8
    const-string v5, "blue"

    goto :goto_14

    :pswitch_9
    const-string/jumbo v5, "wifi"

    goto :goto_14

    :pswitch_a
    const-string/jumbo v5, "phone"

    goto :goto_14

    :pswitch_b
    const-string v5, "cell"

    goto :goto_14

    :pswitch_c
    const-string v5, "idle"

    goto :goto_14

    :pswitch_d
    const-string v5, "ambi"

    :goto_14
    const-string/jumbo v6, "pwi"

    const/4 v7, 0x5

    .line 3867
    new-array v14, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v14, v7

    iget-wide v9, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 3868
    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v14, v7

    .line 3869
    iget-boolean v5, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v14, v7

    iget-wide v9, v4, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 3870
    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aput-object v5, v14, v7

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 3871
    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v14, v5

    .line 3867
    invoke-static {v8, v3, v15, v6, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v9, p3

    move/from16 v10, p4

    goto/16 :goto_13

    .line 3875
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v9

    if-eqz v9, :cond_1b

    const/4 v0, 0x0

    .line 3877
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    .line 3878
    :goto_15
    array-length v1, v9

    if-ge v0, v1, :cond_1a

    .line 3879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_19

    const-string v2, ""

    goto :goto_16

    :cond_19
    const-string v2, ","

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v9, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_1a
    const-string v0, "gcf"

    const/4 v1, 0x1

    .line 3881
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v8, v3, v15, v0, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    move/from16 v10, v79

    const/4 v14, 0x0

    :goto_17
    if-ge v14, v10, :cond_61

    .line 3886
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    move/from16 v6, p4

    if-ltz v6, :cond_1c

    if-eq v7, v6, :cond_1c

    move-object/from16 v118, v9

    move/from16 v89, v10

    move-object/from16 v92, v11

    move-object/from16 v117, v12

    move/from16 v94, v14

    move-wide/from16 v113, v55

    move-wide/from16 v120, v80

    move-wide/from16 v115, v87

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v10, 0x4

    const/4 v12, 0x3

    const/16 v20, 0x8

    const/16 v21, 0x9

    const/16 v22, 0x0

    const/16 v23, 0x1

    :goto_18
    const/16 v24, 0x2

    const-wide/16 v25, 0x3e8

    goto/16 :goto_52

    .line 3890
    :cond_1c
    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/BatteryStats$Uid;

    const/4 v0, 0x0

    move/from16 v4, p3

    .line 3893
    invoke-virtual {v5, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 3894
    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v20

    const/4 v13, 0x2

    .line 3895
    invoke-virtual {v5, v13, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v22

    const/4 v13, 0x3

    .line 3896
    invoke-virtual {v5, v13, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v24

    .line 3897
    invoke-virtual {v5, v0, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v26

    .line 3898
    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v28

    .line 3899
    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v30

    .line 3900
    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v0

    .line 3901
    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v32

    const/4 v3, 0x2

    .line 3902
    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v37

    .line 3903
    invoke-virtual {v5, v13, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v39

    .line 3904
    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v41

    const/4 v3, 0x4

    .line 3905
    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v43

    const/4 v3, 0x5

    .line 3906
    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v45

    const/4 v3, 0x6

    .line 3908
    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v47

    const/4 v13, 0x7

    .line 3910
    invoke-virtual {v5, v13, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v49

    const/16 v13, 0x8

    .line 3912
    invoke-virtual {v5, v13, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v51

    const/16 v13, 0x9

    .line 3913
    invoke-virtual {v5, v13, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v53

    .line 3914
    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v57

    const/4 v3, 0x7

    .line 3916
    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v59

    const/16 v3, 0x8

    .line 3918
    invoke-virtual {v5, v3, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v61

    .line 3920
    invoke-virtual {v5, v13, v4}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v63

    cmp-long v3, v1, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v20, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v22, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v24, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v26, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v28, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v37, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v39, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v30, v16

    if-gtz v3, :cond_1e

    if-gtz v0, :cond_1e

    cmp-long v3, v43, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v45, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v32, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v41, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v47, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v49, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v51, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v53, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v57, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v59, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v61, v16

    if-gtz v3, :cond_1e

    cmp-long v3, v63, v16

    if-lez v3, :cond_1d

    goto :goto_19

    :cond_1d
    const/16 v2, 0xa

    goto/16 :goto_1a

    :cond_1e
    :goto_19
    const-string v3, "nt"

    const/16 v13, 0x16

    .line 3931
    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v13, v2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v13, v2

    .line 3932
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v13, v2

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v13, v2

    .line 3933
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v13, v2

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v13, v2

    .line 3934
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v13, v2

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v13, v2

    .line 3935
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v13, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v13, v1

    .line 3936
    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v2, 0xa

    aput-object v0, v13, v2

    const/16 v0, 0xb

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0xc

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0xd

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0xe

    .line 3937
    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0xf

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0x10

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0x11

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0x12

    .line 3938
    invoke-static/range {v57 .. v58}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0x13

    invoke-static/range {v59 .. v60}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0x14

    invoke-static/range {v61 .. v62}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    const/16 v0, 0x15

    invoke-static/range {v63 .. v64}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v13, v0

    .line 3931
    invoke-static {v8, v7, v15, v3, v13}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1a
    const-string v3, "mcd"

    .line 3944
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v13

    move-object/from16 v0, p2

    move v1, v7

    move/from16 v89, v10

    move v10, v2

    move-object v2, v15

    move v10, v4

    move-object v4, v13

    move-object v13, v5

    move/from16 v5, p3

    .line 3943
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    move-wide/from16 v4, v87

    .line 3947
    invoke-virtual {v13, v4, v5, v10}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    .line 3948
    invoke-virtual {v13, v4, v5, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v2

    .line 3949
    invoke-virtual {v13, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v20

    .line 3950
    invoke-virtual {v13, v10}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v21

    .line 3952
    invoke-virtual {v13, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v22

    add-long v22, v22, v18

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    .line 3953
    invoke-virtual {v13, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v26

    add-long v26, v26, v18

    div-long v26, v26, v24

    .line 3955
    invoke-virtual {v13, v4, v5, v10}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v24

    cmp-long v28, v0, v16

    if-nez v28, :cond_20

    cmp-long v28, v2, v16

    if-nez v28, :cond_20

    if-nez v20, :cond_20

    if-nez v21, :cond_20

    cmp-long v28, v22, v16

    if-nez v28, :cond_20

    cmp-long v28, v26, v16

    if-nez v28, :cond_20

    cmp-long v28, v24, v16

    if-eqz v28, :cond_1f

    goto :goto_1b

    :cond_1f
    move-wide/from16 v90, v4

    goto :goto_1c

    :cond_20
    :goto_1b
    move-wide/from16 v90, v4

    const-string/jumbo v4, "wfl"

    const/16 v5, 0xa

    .line 3959
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v6, v2

    .line 3960
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v6, v2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v6, v2

    .line 3961
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v6, v1

    .line 3962
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v6, v1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x8

    aput-object v0, v6, v1

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    aput-object v0, v6, v1

    .line 3959
    invoke-static {v8, v7, v15, v4, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1c
    const-string/jumbo v3, "wfcd"

    .line 3966
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v4

    move-object/from16 v0, p2

    move v1, v7

    move-object v2, v15

    move-wide/from16 v5, v90

    move-object/from16 v92, v11

    move-object/from16 v93, v12

    move-wide v11, v5

    move/from16 v5, p3

    .line 3965
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3968
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 3971
    invoke-virtual {v0, v11, v12, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    add-long v1, v1, v18

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    cmp-long v3, v1, v16

    if-eqz v3, :cond_29

    .line 3974
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    .line 3975
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 3976
    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    move/from16 v20, v5

    move-wide/from16 v5, v55

    goto :goto_1d

    :cond_21
    move-wide/from16 v5, v55

    const/16 v20, 0x0

    .line 3978
    :goto_1d
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v21

    if-eqz v4, :cond_22

    .line 3980
    invoke-virtual {v4, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v23

    goto :goto_1e

    :cond_22
    move-wide/from16 v23, v16

    .line 3982
    :goto_1e
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 3983
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v0

    goto :goto_1f

    :cond_23
    const/4 v0, 0x0

    .line 3984
    :goto_1f
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 3985
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v4

    move/from16 v94, v14

    goto :goto_20

    :cond_24
    move/from16 v94, v14

    const/4 v4, 0x0

    .line 3987
    :goto_20
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    if-eqz v14, :cond_25

    .line 3989
    invoke-virtual {v14, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v25

    goto :goto_21

    :cond_25
    move-wide/from16 v25, v16

    :goto_21
    if-eqz v14, :cond_26

    .line 3991
    invoke-virtual {v14, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v27

    goto :goto_22

    :cond_26
    move-wide/from16 v27, v16

    .line 3994
    :goto_22
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v14

    if-eqz v14, :cond_27

    .line 3996
    invoke-virtual {v14, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v29

    goto :goto_23

    :cond_27
    move-wide/from16 v29, v16

    :goto_23
    if-eqz v14, :cond_28

    .line 3998
    invoke-virtual {v14, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v31

    goto :goto_24

    :cond_28
    move-wide/from16 v31, v16

    :goto_24
    const-string v14, "blem"

    move-wide/from16 v95, v5

    const/16 v5, 0xb

    .line 4000
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 4001
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v5, v2

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v5, v2

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    aput-object v0, v5, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x6

    aput-object v0, v5, v1

    .line 4002
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v5, v1

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v20, 0x8

    aput-object v0, v5, v20

    .line 4003
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v21, 0x9

    aput-object v0, v5, v21

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    aput-object v0, v5, v1

    .line 4000
    invoke-static {v8, v7, v15, v14, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    :cond_29
    move/from16 v94, v14

    move-wide/from16 v95, v55

    const/16 v20, 0x8

    const/16 v21, 0x9

    :goto_25
    const-string v3, "ble"

    .line 4008
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v4

    move-object/from16 v0, p2

    move v1, v7

    move-object v2, v15

    move-wide/from16 v97, v11

    move-wide/from16 v11, v95

    move/from16 v5, p3

    .line 4007
    invoke-static/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4010
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    .line 4011
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_26
    if-ge v2, v0, :cond_2b

    .line 4014
    invoke-virtual {v13, v2, v10}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v0

    .line 4015
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    if-eqz v0, :cond_2a

    const/4 v3, 0x1

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x4

    goto :goto_26

    :cond_2b
    if-eqz v3, :cond_2c

    const-string/jumbo v0, "ua"

    .line 4019
    invoke-static {v8, v7, v15, v0, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4023
    :cond_2c
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 4024
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    .line 4026
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v1

    .line 4027
    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 4029
    invoke-virtual {v0, v11, v12}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v3

    goto :goto_27

    :cond_2d
    move-wide/from16 v3, v16

    :goto_27
    const-string v0, "awl"

    const/4 v5, 0x2

    .line 4030
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v6, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v6, v2

    invoke-static {v8, v7, v15, v0, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_28

    :cond_2e
    const/4 v2, 0x1

    .line 4033
    :goto_28
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v14

    .line 4034
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v2

    move v6, v0

    :goto_29
    if-ltz v6, :cond_34

    .line 4035
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v22, ""

    move-object/from16 v4, v93

    const/4 v3, 0x0

    .line 4037
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4038
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v23, "f"

    move-object v0, v4

    move-object/from16 v99, v9

    move v9, v3

    move-wide/from16 v2, v97

    move-object/from16 v100, v4

    move-object/from16 v4, v23

    move-object v9, v5

    move/from16 v5, p3

    move-wide/from16 v101, v11

    move v11, v6

    move-object/from16 v6, v22

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    .line 4040
    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v12

    const-string v4, "p"

    move-object/from16 v0, v100

    move-object v1, v12

    .line 4041
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v12, :cond_2f

    .line 4043
    invoke-virtual {v12}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    :goto_2a
    move-object v1, v0

    goto :goto_2b

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2a

    :goto_2b
    const-string v4, "bp"

    move-object/from16 v0, v100

    move-wide/from16 v2, v97

    move/from16 v5, p3

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    .line 4045
    invoke-virtual {v9, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "w"

    move-object/from16 v0, v100

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4049
    invoke-virtual/range {v100 .. v100}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_33

    .line 4050
    invoke-virtual {v14, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2c

    .line 4051
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_30

    const/16 v1, 0x2c

    const/16 v2, 0x5f

    .line 4052
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_30
    const/16 v9, 0xa

    .line 4054
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_31

    const/16 v1, 0x5f

    .line 4055
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_31
    const/16 v1, 0xd

    .line 4057
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_32

    const/16 v1, 0xd

    const/16 v2, 0x5f

    .line 4058
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_32
    const-string/jumbo v1, "wl"

    const/4 v2, 0x2

    .line 4060
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v3, v2

    invoke-virtual/range {v100 .. v100}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {v8, v7, v15, v1, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2c

    :cond_33
    const/16 v9, 0xa

    :goto_2c
    add-int/lit8 v6, v11, -0x1

    move-object/from16 v9, v99

    move-object/from16 v93, v100

    move-wide/from16 v11, v101

    const/4 v2, 0x1

    goto/16 :goto_29

    :cond_34
    move-object/from16 v99, v9

    move-wide/from16 v101, v11

    move-object/from16 v100, v93

    const/16 v9, 0xa

    .line 4065
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_35

    move-wide/from16 v11, v97

    .line 4068
    invoke-virtual {v0, v11, v12, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 4069
    invoke-virtual {v0, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    cmp-long v3, v1, v16

    if-lez v3, :cond_36

    const-string/jumbo v3, "wmc"

    const/4 v4, 0x2

    .line 4071
    new-array v5, v4, [Ljava/lang/Object;

    .line 4072
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    .line 4071
    invoke-static {v8, v7, v15, v3, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d

    :cond_35
    move-wide/from16 v11, v97

    :cond_36
    const/4 v1, 0x1

    .line 4076
    :goto_2d
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 4077
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2e
    if-ltz v2, :cond_3a

    .line 4078
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Timer;

    .line 4080
    invoke-virtual {v1, v11, v12, v10}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    add-long v3, v3, v18

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 4081
    invoke-virtual {v1, v10}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4082
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_37

    move-wide/from16 v9, v101

    .line 4084
    invoke-virtual {v1, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v22

    goto :goto_2f

    :cond_37
    move-wide/from16 v9, v101

    const-wide/16 v22, -0x1

    :goto_2f
    if-eqz v1, :cond_38

    move-wide/from16 v103, v9

    move/from16 v9, p3

    .line 4085
    invoke-virtual {v1, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    goto :goto_30

    :cond_38
    move-wide/from16 v103, v9

    move/from16 v9, p3

    const/4 v1, -0x1

    :goto_30
    cmp-long v6, v3, v16

    if-eqz v6, :cond_39

    const-string/jumbo v6, "sy"

    const/4 v10, 0x5

    .line 4087
    new-array v14, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v14, v10

    .line 4088
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v14, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v14, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v14, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v14, v3

    .line 4087
    invoke-static {v8, v7, v15, v6, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_39
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v101, v103

    const/16 v9, 0xa

    move/from16 v10, p3

    goto/16 :goto_2e

    :cond_3a
    move-wide/from16 v103, v101

    .line 4092
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 4093
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_31
    if-ltz v1, :cond_3e

    .line 4094
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move/from16 v9, p3

    .line 4096
    invoke-virtual {v2, v11, v12, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    add-long v3, v3, v18

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 4097
    invoke-virtual {v2, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    .line 4098
    invoke-virtual {v2}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_3b

    move-wide/from16 v105, v11

    move-wide/from16 v10, v103

    .line 4100
    invoke-virtual {v2, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v22

    goto :goto_32

    :cond_3b
    move-wide/from16 v105, v11

    move-wide/from16 v10, v103

    const-wide/16 v22, -0x1

    :goto_32
    if-eqz v2, :cond_3c

    .line 4101
    invoke-virtual {v2, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    goto :goto_33

    :cond_3c
    const/4 v2, -0x1

    :goto_33
    cmp-long v6, v3, v16

    if-eqz v6, :cond_3d

    const-string v6, "jb"

    const/4 v12, 0x5

    .line 4103
    new-array v14, v12, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v107, v10

    const-string v10, "\""

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v14, v11

    .line 4104
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v14, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v14, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v14, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v14, v3

    .line 4103
    invoke-static {v8, v7, v15, v6, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    :cond_3d
    move-wide/from16 v107, v10

    :goto_34
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v11, v105

    move-wide/from16 v103, v107

    goto/16 :goto_31

    :cond_3e
    move-wide/from16 v105, v11

    move-wide/from16 v107, v103

    move/from16 v9, p3

    .line 4108
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 4109
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_35
    if-ltz v1, :cond_40

    .line 4110
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-eqz v2, :cond_3f

    const-string v3, "jbc"

    const/4 v4, 0x6

    .line 4112
    new-array v5, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4113
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 4114
    invoke-virtual {v2, v6, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v5, v10

    .line 4115
    invoke-virtual {v2, v10, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x2

    aput-object v4, v5, v10

    .line 4116
    invoke-virtual {v2, v10, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x3

    aput-object v4, v5, v10

    .line 4117
    invoke-virtual {v2, v10, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x4

    aput-object v4, v5, v10

    .line 4118
    invoke-virtual {v2, v10, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v5, v4

    .line 4112
    invoke-static {v8, v7, v15, v3, v5}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_35

    :cond_40
    move-object/from16 v10, v100

    .line 4123
    invoke-virtual {v13, v10, v9}, Landroid/os/BatteryStats$Uid;->getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V

    .line 4124
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_41

    const-string v0, "jbd"

    const/4 v1, 0x1

    .line 4125
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v8, v7, v15, v0, v2}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    const-string v3, "fla"

    .line 4128
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    move-object/from16 v0, p2

    move v1, v7

    move-object v2, v15

    move-wide/from16 v5, v105

    move v11, v7

    move/from16 v7, p3

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v3, "cam"

    .line 4130
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    move v1, v11

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string/jumbo v3, "vid"

    .line 4132
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v3, "aud"

    .line 4134
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 4137
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v0

    .line 4138
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_36
    if-ge v2, v1, :cond_46

    .line 4140
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Sensor;

    .line 4141
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 4142
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-eqz v5, :cond_45

    move-wide/from16 v6, v105

    .line 4145
    invoke-virtual {v5, v6, v7, v9}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v22

    add-long v22, v22, v18

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    cmp-long v12, v22, v16

    if-eqz v12, :cond_44

    .line 4148
    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v12

    .line 4149
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 4150
    invoke-virtual {v3, v9}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    move-object/from16 v109, v10

    move-wide/from16 v9, v107

    goto :goto_37

    :cond_42
    move-object/from16 v109, v10

    move-wide/from16 v9, v107

    const/4 v14, 0x0

    .line 4152
    :goto_37
    invoke-virtual {v5, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v24

    if-eqz v3, :cond_43

    .line 4154
    invoke-virtual {v3, v9, v10}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v26

    goto :goto_38

    :cond_43
    move-wide/from16 v26, v16

    :goto_38
    const-string/jumbo v3, "sr"

    move-object/from16 v110, v0

    const/4 v5, 0x6

    .line 4155
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v0, v5

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    .line 4156
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v0, v5

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    .line 4155
    invoke-static {v8, v11, v15, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3a

    :cond_44
    move-object/from16 v110, v0

    move-object/from16 v109, v10

    goto :goto_39

    :cond_45
    move-object/from16 v110, v0

    move-object/from16 v109, v10

    move-wide/from16 v6, v105

    :goto_39
    move-wide/from16 v9, v107

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v105, v6

    move-wide/from16 v107, v9

    move-object/from16 v10, v109

    move-object/from16 v0, v110

    move/from16 v9, p3

    goto/16 :goto_36

    :cond_46
    move-object/from16 v109, v10

    move-wide/from16 v6, v105

    move-wide/from16 v9, v107

    const-string/jumbo v3, "vib"

    .line 4161
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    move-object/from16 v0, p2

    move v1, v11

    move-object v2, v15

    move-wide/from16 v111, v6

    move-wide/from16 v5, v111

    move/from16 v7, p3

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v3, "fg"

    .line 4164
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const-string v3, "fgs"

    .line 4167
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    invoke-static/range {v0 .. v7}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    const/4 v0, 0x7

    .line 4170
    new-array v1, v0, [Ljava/lang/Object;

    move-wide/from16 v3, v16

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v0, :cond_47

    move-wide v5, v9

    move-wide/from16 v9, v111

    move/from16 v0, p3

    .line 4173
    invoke-virtual {v13, v2, v9, v10, v0}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v22

    add-long v3, v3, v22

    add-long v22, v22, v18

    const-wide/16 v24, 0x3e8

    .line 4175
    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v1, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x7

    move-wide v9, v5

    goto :goto_3b

    :cond_47
    move-wide v5, v9

    move-wide/from16 v9, v111

    move/from16 v0, p3

    cmp-long v2, v3, v16

    if-lez v2, :cond_48

    const-string/jumbo v2, "st"

    .line 4178
    invoke-static {v8, v11, v15, v2, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4181
    :cond_48
    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v1

    .line 4182
    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v3

    cmp-long v7, v1, v16

    if-gtz v7, :cond_4a

    cmp-long v7, v3, v16

    if-lez v7, :cond_49

    goto :goto_3c

    :cond_49
    const/4 v2, 0x0

    goto :goto_3d

    :cond_4a
    :goto_3c
    const-string v7, "cpu"

    const/4 v12, 0x3

    .line 4184
    new-array v14, v12, [Ljava/lang/Object;

    const-wide/16 v22, 0x3e8

    div-long v1, v1, v22

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v14, v2

    div-long v3, v3, v22

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v14, v3

    .line 4185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v14, v3

    .line 4184
    invoke-static {v8, v11, v15, v7, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3d
    if-eqz v99, :cond_57

    .line 4190
    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v1

    if-eqz v1, :cond_51

    .line 4193
    array-length v3, v1

    move-object/from16 v4, v99

    array-length v7, v4

    if-ne v3, v7, :cond_50

    move-object/from16 v3, v109

    .line 4194
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x0

    .line 4195
    :goto_3e
    array-length v7, v1

    if-ge v2, v7, :cond_4c

    .line 4196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_4b

    const-string v12, ""

    goto :goto_3f

    :cond_4b
    const-string v12, ","

    :goto_3f
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v113, v5

    aget-wide v5, v1, v2

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v5, v113

    goto :goto_3e

    :cond_4c
    move-wide/from16 v113, v5

    .line 4198
    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v2

    if-eqz v2, :cond_4e

    const/4 v5, 0x0

    .line 4200
    :goto_40
    array-length v6, v2

    if-ge v5, v6, :cond_4d

    .line 4201
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v115, v9

    aget-wide v9, v2, v5

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v9, v115

    goto :goto_40

    :cond_4d
    move-wide/from16 v115, v9

    goto :goto_42

    :cond_4e
    move-wide/from16 v115, v9

    const/4 v2, 0x0

    .line 4204
    :goto_41
    array-length v5, v1

    if-ge v2, v5, :cond_4f

    const-string v5, ",0"

    .line 4205
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_4f
    :goto_42
    const-string v2, "ctf"

    const/4 v5, 0x3

    .line 4208
    new-array v6, v5, [Ljava/lang/Object;

    const-string v5, "A"

    const/4 v7, 0x0

    aput-object v5, v6, v7

    array-length v1, v1

    .line 4209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v6, v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v6, v5

    .line 4208
    invoke-static {v8, v11, v15, v2, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_44

    :cond_50
    move-wide/from16 v113, v5

    move-wide/from16 v115, v9

    goto :goto_43

    :cond_51
    move-wide/from16 v113, v5

    move-wide/from16 v115, v9

    move-object/from16 v4, v99

    :goto_43
    move-object/from16 v3, v109

    :goto_44
    const/4 v1, 0x0

    :goto_45
    const/4 v2, 0x7

    if-ge v1, v2, :cond_58

    .line 4213
    invoke-virtual {v13, v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(II)[J

    move-result-object v2

    if-eqz v2, :cond_56

    .line 4214
    array-length v5, v2

    array-length v6, v4

    if-ne v5, v6, :cond_56

    const/4 v5, 0x0

    .line 4215
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v5, 0x0

    .line 4216
    :goto_46
    array-length v6, v2

    if-ge v5, v6, :cond_53

    .line 4217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v5, :cond_52

    const-string v7, ""

    goto :goto_47

    :cond_52
    const-string v7, ","

    :goto_47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v2, v5

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 4219
    :cond_53
    invoke-virtual {v13, v0, v1}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(II)[J

    move-result-object v5

    if-eqz v5, :cond_54

    const/4 v6, 0x0

    .line 4222
    :goto_48
    array-length v7, v5

    if-ge v6, v7, :cond_55

    .line 4223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, v5, v6

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_54
    const/4 v5, 0x0

    .line 4226
    :goto_49
    array-length v6, v2

    if-ge v5, v6, :cond_55

    const-string v6, ",0"

    .line 4227
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_55
    const-string v5, "ctf"

    const/4 v6, 0x3

    .line 4230
    new-array v7, v6, [Ljava/lang/Object;

    sget-object v6, Landroid/os/BatteryStats$Uid;->UID_PROCESS_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v9, 0x0

    aput-object v6, v7, v9

    array-length v2, v2

    .line 4231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v7, v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v7, v6

    .line 4230
    invoke-static {v8, v11, v15, v5, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_45

    :cond_57
    move-wide/from16 v113, v5

    move-wide/from16 v115, v9

    move-object/from16 v4, v99

    move-object/from16 v3, v109

    .line 4237
    :cond_58
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v1

    .line 4238
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    :goto_4a
    if-ltz v2, :cond_5b

    .line 4239
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Proc;

    .line 4241
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v6

    .line 4242
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v9

    .line 4243
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v22

    .line 4244
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v12

    .line 4245
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v14

    .line 4246
    invoke-virtual {v5, v0}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v5

    cmp-long v24, v6, v16

    if-nez v24, :cond_5a

    cmp-long v24, v9, v16

    if-nez v24, :cond_5a

    cmp-long v24, v22, v16

    if-nez v24, :cond_5a

    if-nez v12, :cond_5a

    if-nez v5, :cond_5a

    if-eqz v14, :cond_59

    goto :goto_4b

    :cond_59
    move-object/from16 v117, v3

    move-object/from16 v118, v4

    move-object/from16 v119, v13

    goto :goto_4c

    :cond_5a
    :goto_4b
    move-object/from16 v117, v3

    const-string/jumbo v3, "pr"

    move-object/from16 v118, v4

    const/4 v4, 0x7

    .line 4250
    new-array v0, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v119, v13

    const-string v13, "\""

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v0, v13

    .line 4251
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v0, v6

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v0, v6

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v0, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v0, v5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v0, v5

    .line 4250
    invoke-static {v8, v11, v15, v3, v0}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4c
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v3, v117

    move-object/from16 v4, v118

    move-object/from16 v13, v119

    move/from16 v0, p3

    goto/16 :goto_4a

    :cond_5b
    move-object/from16 v117, v3

    move-object/from16 v118, v4

    move-object/from16 v119, v13

    .line 4256
    invoke-virtual/range {v119 .. v119}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 4257
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_4d
    if-ltz v1, :cond_60

    .line 4258
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 4260
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 4261
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    sub-int/2addr v5, v2

    const/4 v2, 0x0

    :goto_4e
    if-ltz v5, :cond_5c

    .line 4262
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    move/from16 v7, p3

    invoke-virtual {v6, v7}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    add-int/2addr v2, v6

    .line 4264
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v10, 0x2c

    const/16 v12, 0x5f

    invoke-virtual {v9, v10, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "wua"

    const/4 v12, 0x2

    .line 4265
    new-array v13, v12, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v13, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v9, 0x1

    aput-object v6, v13, v9

    invoke-static {v8, v11, v15, v10, v13}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_4e

    :cond_5c
    move/from16 v7, p3

    const/4 v9, 0x1

    .line 4267
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 4268
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v9

    :goto_4f
    if-ltz v4, :cond_5f

    .line 4269
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v9, v80

    .line 4270
    invoke-virtual {v5, v9, v10, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v12

    .line 4271
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v6

    .line 4272
    invoke-virtual {v5, v7}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v5

    cmp-long v14, v12, v16

    if-nez v14, :cond_5e

    if-nez v6, :cond_5e

    if-eqz v5, :cond_5d

    goto :goto_50

    :cond_5d
    move-wide/from16 v120, v9

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v10, 0x4

    const/4 v12, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x2

    const-wide/16 v25, 0x3e8

    goto :goto_51

    :cond_5e
    :goto_50
    const-string v14, "apk"

    move-wide/from16 v120, v9

    const/4 v7, 0x6

    .line 4274
    new-array v9, v7, [Ljava/lang/Object;

    .line 4275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v22, 0x0

    aput-object v10, v9, v22

    .line 4276
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    const/16 v23, 0x1

    aput-object v10, v9, v23

    .line 4277
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    const/16 v24, 0x2

    aput-object v10, v9, v24

    const-wide/16 v25, 0x3e8

    div-long v12, v12, v25

    .line 4278
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v9, v12

    .line 4279
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x4

    aput-object v6, v9, v10

    .line 4280
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v9, v6

    .line 4274
    invoke-static {v8, v11, v15, v14, v9}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_51
    add-int/lit8 v4, v4, -0x1

    move-wide/from16 v80, v120

    move/from16 v7, p3

    goto :goto_4f

    :cond_5f
    move-wide/from16 v120, v80

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v10, 0x4

    const/4 v12, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x2

    const-wide/16 v25, 0x3e8

    add-int/lit8 v1, v1, -0x1

    move/from16 v2, v23

    goto/16 :goto_4d

    :cond_60
    move/from16 v23, v2

    move-wide/from16 v120, v80

    const/4 v6, 0x5

    const/4 v7, 0x6

    const/4 v10, 0x4

    const/4 v12, 0x3

    const/16 v22, 0x0

    goto/16 :goto_18

    :goto_52
    add-int/lit8 v14, v94, 0x1

    move/from16 v10, v89

    move-object/from16 v11, v92

    move-wide/from16 v55, v113

    move-wide/from16 v87, v115

    move-object/from16 v12, v117

    move-object/from16 v9, v118

    move-wide/from16 v80, v120

    const/4 v13, -0x1

    goto/16 :goto_17

    :cond_61
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    .line 6987
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    const-string v1, "i"

    const-string/jumbo v2, "vers"

    const/4 v3, 0x4

    .line 6989
    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x20

    .line 6990
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v3, v9

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x1

    aput-object v4, v3, v10

    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x2

    aput-object v4, v3, v11

    .line 6991
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 6989
    invoke-static {v0, v9, v1, v2, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6993
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    and-int/lit8 v1, p4, 0x18

    if-eqz v1, :cond_1

    .line 6996
    invoke-virtual {p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v9

    .line 6998
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x9

    .line 6999
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    const-string v3, "hsp"

    .line 7000
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 7001
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ","

    .line 7002
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7003
    invoke-virtual {p0, v1}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ",\""

    .line 7004
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7005
    invoke-virtual {p0, v1}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    .line 7006
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    .line 7007
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 7008
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "\""

    .line 7009
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7010
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-wide/from16 v4, p5

    .line 7012
    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7014
    invoke-virtual {p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    :cond_1
    :goto_1
    and-int/lit8 v1, p4, 0x8

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-eqz v8, :cond_6

    .line 7024
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move v2, v9

    .line 7025
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 7026
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 7027
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7028
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 7027
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_3

    .line 7030
    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Landroid/util/MutableBoolean;

    invoke-direct {v6, v9}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7031
    iget v5, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7033
    :cond_3
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7035
    :cond_4
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 7036
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 7037
    new-array v4, v11, [Ljava/lang/String;

    move v5, v9

    :goto_3
    if-ge v5, v3, :cond_6

    .line 7039
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 7040
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    if-eqz v8, :cond_5

    .line 7041
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/util/MutableBoolean;

    iget-boolean v11, v11, Landroid/util/MutableBoolean;->value:Z

    if-nez v11, :cond_5

    .line 7042
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/util/MutableBoolean;

    iput-boolean v10, v11, Landroid/util/MutableBoolean;->value:Z

    move v11, v9

    .line 7043
    :goto_4
    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 7044
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v9

    .line 7045
    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v4, v10

    const-string v12, "i"

    const-string/jumbo v13, "uid"

    .line 7046
    move-object v14, v4

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v0, v9, v12, v13, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    and-int/lit8 v1, p4, 0x4

    if-nez v1, :cond_a

    const-string v1, ""

    const-string v2, "dsd"

    .line 7053
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 7054
    new-array v1, v10, [Ljava/lang/String;

    .line 7055
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v2

    const-wide/16 v11, 0x0

    cmp-long v6, v2, v11

    if-ltz v6, :cond_7

    .line 7057
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "i"

    const-string v3, "dtr"

    .line 7058
    move-object v6, v1

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v0, v9, v2, v3, v6}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    const-string v2, ""

    const-string v3, "csd"

    .line 7061
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v6

    invoke-static {v0, v2, v3, v6, v10}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 7062
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    cmp-long v4, v2, v11

    if-ltz v4, :cond_8

    .line 7064
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "i"

    const-string v3, "ctr"

    .line 7065
    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v9, v2, v3, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const/4 v4, 0x0

    const/4 v5, -0x1

    and-int/lit8 v1, p4, 0x40

    if-eqz v1, :cond_9

    move v6, v10

    goto :goto_5

    :cond_9
    move v6, v9

    :goto_5
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 7068
    invoke-virtual/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    :cond_a
    return-void
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    .line 6793
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 v1, p3, 0xe

    if-eqz v1, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    and-int/lit8 v1, p3, 0x8

    const-wide/16 v12, 0x0

    if-nez v1, :cond_1

    if-nez v11, :cond_6

    .line 6799
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v1

    int-to-long v1, v1

    .line 6800
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v3

    int-to-long v3, v3

    .line 6801
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    const-string v5, "Battery History ("

    .line 6803
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v3

    .line 6804
    div-long/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v5, "% used, "

    .line 6805
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6806
    invoke-direct {v8, v0, v3, v4}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v3, " used of "

    .line 6807
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6808
    invoke-direct {v8, v0, v1, v2}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, ", "

    .line 6809
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6810
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " strings using "

    .line 6811
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6812
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v8, v0, v1, v2}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v1, "):"

    .line 6813
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p5

    .line 6814
    invoke-direct/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    .line 6815
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6817
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    throw v0

    .line 6821
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6823
    :try_start_1
    new-instance v14, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v14}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    const-string v1, "Old battery History:"

    .line 6824
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6825
    new-instance v15, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v15}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    const-wide/16 v1, -0x1

    .line 6827
    :goto_2
    invoke-virtual {v8, v14}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v3

    if-eqz v3, :cond_5

    cmp-long v3, v1, v12

    if-gez v3, :cond_3

    .line 6829
    iget-wide v1, v14, Landroid/os/BatteryStats$HistoryItem;->time:J

    :cond_3
    move-wide/from16 v16, v1

    const/4 v6, 0x0

    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    move-object v1, v15

    move-object/from16 v2, p2

    move-object v3, v14

    move-wide/from16 v4, v16

    .line 6831
    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    move-wide/from16 v1, v16

    goto :goto_2

    .line 6833
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6835
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    goto :goto_4

    :catchall_1
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    throw v0

    :cond_6
    :goto_4
    if-eqz v11, :cond_7

    and-int/lit8 v1, p3, 0x6

    if-nez v1, :cond_7

    return-void

    :cond_7
    if-nez v11, :cond_d

    .line 6845
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    .line 6846
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 6848
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    if-ge v5, v2, :cond_c

    .line 6850
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid;

    .line 6851
    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v7

    if-eqz v7, :cond_b

    move v14, v6

    const/4 v6, 0x0

    .line 6853
    :goto_6
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_a

    .line 6854
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Uid$Pid;

    if-nez v14, :cond_8

    const-string v14, "Per-PID Stats:"

    .line 6856
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v14, 0x1

    .line 6859
    :cond_8
    iget-wide v12, v9, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget v10, v9, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v10, :cond_9

    .line 6860
    iget-wide v9, v9, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v9, v3, v9

    goto :goto_7

    :cond_9
    const-wide/16 v9, 0x0

    :goto_7
    add-long/2addr v12, v9

    const-string v9, "  PID "

    .line 6861
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(I)V

    const-string v9, " wake time: "

    .line 6862
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6863
    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v9, ""

    .line 6864
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    const-wide/16 v12, 0x0

    goto :goto_6

    :cond_a
    move v6, v14

    :cond_b
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v12, 0x0

    goto :goto_5

    :cond_c
    if-eqz v6, :cond_d

    .line 6869
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_d
    if-eqz v11, :cond_e

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_13

    :cond_e
    const-string v1, "  "

    const-string v2, "Discharge step durations:"

    .line 6875
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    const/4 v4, 0x0

    .line 6874
    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    const-wide/16 v9, 0x3e8

    if-eqz v1, :cond_11

    .line 6877
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-long/2addr v1, v9

    .line 6876
    invoke-virtual {v8, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_f

    const-string v3, "  Estimated discharge time remaining: "

    .line 6879
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6880
    div-long/2addr v1, v9

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6881
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6883
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v7

    const/4 v5, 0x0

    .line 6884
    :goto_8
    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v1, v1

    if-ge v5, v1, :cond_10

    const-string v2, "  Estimated "

    .line 6885
    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v1, v5

    const-string v4, " time: "

    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v1, v1, v5

    int-to-long v13, v1

    sget-object v1, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v1, v1, v5

    int-to-long v9, v1

    const/16 v17, 0x0

    move-object v12, v7

    move-wide v15, v9

    .line 6886
    invoke-virtual/range {v12 .. v17}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v9

    move-object/from16 v1, p2

    move v12, v5

    move-wide v5, v9

    .line 6885
    invoke-static/range {v1 .. v6}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    add-int/lit8 v5, v12, 0x1

    const-wide/16 v9, 0x3e8

    goto :goto_8

    .line 6889
    :cond_10
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_11
    const-string v1, "  "

    const-string v2, "Charge step durations:"

    .line 6892
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v3

    const/4 v4, 0x0

    .line 6891
    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 6894
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 6893
    invoke-virtual {v8, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_12

    const-string v5, "  Estimated charge time remaining: "

    .line 6896
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6897
    div-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6898
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6900
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_13
    const/16 v9, 0x40

    if-eqz v11, :cond_15

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_14

    goto :goto_9

    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_11

    :cond_15
    :goto_9
    const-string v1, "Daily stats:"

    .line 6904
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Current start time: "

    .line 6905
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    .line 6907
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v2

    .line 6906
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6907
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6906
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Next min deadline: "

    .line 6908
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    .line 6910
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v2

    .line 6909
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6910
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6909
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Next max deadline: "

    .line 6911
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "yyyy-MM-dd-HH-mm-ss"

    .line 6913
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v2

    .line 6912
    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6913
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6912
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6914
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v12, 0x1

    .line 6915
    new-array v13, v12, [I

    .line 6916
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v5

    .line 6917
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v14

    .line 6918
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v7

    .line 6919
    iget v1, v5, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_16

    iget v1, v14, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v1, :cond_16

    if-eqz v7, :cond_1b

    :cond_16
    and-int/lit8 v1, p3, 0x4

    if-nez v1, :cond_18

    if-nez v11, :cond_17

    goto :goto_a

    :cond_17
    const-string v1, "  Current daily steps:"

    .line 6933
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "    "

    const-string v4, "Discharge"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v10

    move-object v7, v13

    .line 6934
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v3, "    "

    const-string v4, "Charge"

    move-object v5, v14

    .line 6936
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_c

    :cond_18
    :goto_a
    const-string v1, "    "

    const-string v2, "  Current daily discharge step durations:"

    const/4 v3, 0x0

    .line 6921
    invoke-static {v0, v1, v2, v5, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v3, "      "

    const-string v4, "Discharge"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v10

    move-object v12, v7

    move-object v7, v13

    .line 6923
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_b

    :cond_19
    move-object v12, v7

    :goto_b
    const-string v1, "    "

    const-string v2, "  Current daily charge step durations:"

    const/4 v3, 0x0

    .line 6926
    invoke-static {v0, v1, v2, v14, v3}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v3, "      "

    const-string v4, "Charge"

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v5, v14

    move-object v6, v10

    move-object v7, v13

    .line 6928
    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_1a
    const-string v1, "    "

    .line 6931
    invoke-direct {v8, v0, v1, v12}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1b
    :goto_c
    const/4 v1, 0x0

    .line 6942
    :goto_d
    invoke-virtual {v8, v1}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v12

    if-eqz v12, :cond_21

    add-int/lit8 v14, v1, 0x1

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_1c

    .line 6945
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_1c
    const-string v2, "  Daily from "

    .line 6947
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    .line 6948
    iget-wide v3, v12, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " to "

    .line 6949
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "yyyy-MM-dd-HH-mm-ss"

    .line 6950
    iget-wide v3, v12, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ":"

    .line 6951
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v1, :cond_1e

    if-nez v11, :cond_1d

    goto :goto_e

    :cond_1d
    const-string v3, "    "

    const-string v4, "Discharge"

    .line 6965
    iget-object v5, v12, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v10

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const-string v3, "    "

    const-string v4, "Charge"

    .line 6967
    iget-object v5, v12, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    const/4 v15, 0x0

    goto :goto_10

    :cond_1e
    :goto_e
    const-string v1, "      "

    const-string v2, "    Discharge step durations:"

    .line 6953
    iget-object v3, v12, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    const-string v3, "        "

    const-string v4, "Discharge"

    .line 6955
    iget-object v5, v12, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v10

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    :cond_1f
    const-string v1, "      "

    const-string v2, "    Charge step durations:"

    .line 6958
    iget-object v3, v12, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v7, 0x0

    invoke-static {v0, v1, v2, v3, v7}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v3, "        "

    const-string v4, "Charge"

    .line 6960
    iget-object v5, v12, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v6, v10

    move v15, v7

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto :goto_f

    :cond_20
    move v15, v7

    :goto_f
    const-string v1, "    "

    .line 6963
    iget-object v2, v12, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    invoke-direct {v8, v0, v1, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_10
    move v1, v14

    goto/16 :goto_d

    :cond_21
    const/4 v15, 0x0

    .line 6971
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :goto_11
    if-eqz v11, :cond_22

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_24

    :cond_22
    const-string v1, "Statistics since last charge:"

    .line 6974
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  System starts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currently on battery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6976
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6975
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, ""

    const/4 v5, 0x0

    and-int/lit8 v1, p3, 0x40

    if-eqz v1, :cond_23

    const/4 v7, 0x1

    goto :goto_12

    :cond_23
    move v7, v15

    :goto_12
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p4

    .line 6977
    invoke-virtual/range {v1 .. v7}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 6979
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_24
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 7

    .line 4313
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 226

    move-object/from16 v7, p0

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    move/from16 v13, p4

    move/from16 v11, p5

    .line 4319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v16, 0x3e8

    mul-long v0, v0, v16

    .line 4320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    mul-long v9, v2, v16

    const-wide/16 v18, 0x1f4

    add-long v2, v9, v18

    .line 4321
    div-long v5, v2, v16

    .line 4322
    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v3

    move-wide/from16 v20, v3

    .line 4324
    invoke-virtual {v7, v0, v1, v13}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v2

    move-wide/from16 v22, v5

    .line 4325
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v5

    .line 4326
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v11

    .line 4327
    invoke-virtual {v7, v0, v1, v13}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v24

    .line 4328
    invoke-virtual {v7, v0, v1, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v0

    move-wide/from16 v26, v0

    .line 4329
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v0

    .line 4331
    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v28

    .line 4332
    invoke-virtual {v7, v9, v10}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v30

    move-wide/from16 v32, v0

    .line 4333
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v0

    .line 4335
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4337
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v4

    move-wide/from16 v34, v9

    .line 4338
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 4340
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v10

    move-object/from16 v36, v4

    const/4 v4, 0x0

    if-lez v10, :cond_0

    .line 4342
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4343
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Estimated battery capacity: "

    .line 4344
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v37, v9

    int-to-double v9, v10

    .line 4345
    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh"

    .line 4346
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4347
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v37, v9

    .line 4350
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    const/16 v10, 0x3e8

    if-lez v4, :cond_1

    const/4 v9, 0x0

    .line 4352
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4353
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  Min learned battery capacity: "

    .line 4354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4355
    div-int/2addr v4, v10

    move-wide/from16 v38, v11

    int-to-double v10, v4

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh"

    .line 4356
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4357
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-wide/from16 v38, v11

    .line 4359
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v9, 0x0

    .line 4361
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4362
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  Max learned battery capacity: "

    .line 4363
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3e8

    .line 4364
    div-int/2addr v4, v10

    int-to-double v11, v4

    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh"

    .line 4365
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4366
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/16 v10, 0x3e8

    :goto_2
    const/4 v4, 0x0

    .line 4369
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4370
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Time on battery: "

    .line 4371
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4372
    div-long v11, v5, v16

    invoke-static {v8, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v40, v11

    move-wide/from16 v10, v38

    .line 4373
    invoke-virtual {v7, v5, v6, v10, v11}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") realtime, "

    .line 4374
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4375
    div-long v12, v2, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "("

    .line 4376
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") uptime"

    .line 4377
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4378
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4380
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4381
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Time on battery screen off: "

    .line 4382
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4383
    div-long v2, v32, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v32

    .line 4384
    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") realtime, "

    .line 4385
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4386
    div-long v2, v26, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "("

    .line 4387
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v26

    .line 4388
    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") uptime"

    .line 4389
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4390
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4392
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4393
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Time on battery screen doze: "

    .line 4394
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4395
    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4396
    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 4397
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4398
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4400
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4401
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total run time: "

    .line 4402
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4403
    div-long v11, v10, v16

    invoke-static {v8, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "realtime, "

    .line 4404
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4405
    div-long v0, v24, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "uptime"

    .line 4406
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4407
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v24, 0x0

    cmp-long v0, v28, v24

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    .line 4409
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4410
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Battery time remaining: "

    .line 4411
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4412
    div-long v0, v28, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4413
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    cmp-long v0, v30, v24

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    .line 4416
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4417
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Charge time remaining: "

    .line 4418
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4419
    div-long v0, v30, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4420
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    move/from16 v13, p4

    .line 4423
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischarge(I)J

    move-result-wide v0

    cmp-long v2, v0, v24

    const-wide v3, 0x408f400000000000L    # 1000.0

    if-ltz v2, :cond_5

    const/4 v2, 0x0

    .line 4425
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4426
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Discharge: "

    .line 4427
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v9, v0

    div-double/2addr v9, v3

    .line 4428
    invoke-static {v9, v10}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAh"

    .line 4429
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4430
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4433
    :cond_5
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenOff(I)J

    move-result-wide v9

    cmp-long v2, v9, v24

    if-ltz v2, :cond_6

    const/4 v2, 0x0

    .line 4435
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4436
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Screen off discharge: "

    .line 4437
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v11, v9

    div-double/2addr v11, v3

    .line 4438
    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAh"

    .line 4439
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4440
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4443
    :cond_6
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeScreenDoze(I)J

    move-result-wide v11

    cmp-long v2, v11, v24

    if-ltz v2, :cond_7

    const/4 v2, 0x0

    .line 4445
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4446
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Screen doze discharge: "

    .line 4447
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v11, v11

    div-double/2addr v11, v3

    .line 4448
    invoke-static {v11, v12}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAh"

    .line 4449
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4450
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    sub-long/2addr v0, v9

    cmp-long v2, v0, v24

    if-ltz v2, :cond_8

    const/4 v2, 0x0

    .line 4455
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4456
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Screen on discharge: "

    .line 4457
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v0, v0

    div-double/2addr v0, v3

    .line 4458
    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    .line 4459
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4460
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4463
    :cond_8
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeLightDoze(I)J

    move-result-wide v0

    cmp-long v2, v0, v24

    if-ltz v2, :cond_9

    const/4 v2, 0x0

    .line 4465
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4466
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Device light doze discharge: "

    .line 4467
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v0, v0

    div-double/2addr v0, v3

    .line 4468
    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    .line 4469
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4470
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4473
    :cond_9
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getUahDischargeDeepDoze(I)J

    move-result-wide v0

    cmp-long v2, v0, v24

    if-ltz v2, :cond_a

    const/4 v2, 0x0

    .line 4475
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4476
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Device deep doze discharge: "

    .line 4477
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v0, v0

    div-double/2addr v0, v3

    .line 4478
    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAh"

    .line 4479
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4480
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    const-string v0, "  Start clock time: "

    .line 4483
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd-HH-mm-ss"

    .line 4484
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v9, v34

    .line 4486
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v0

    .line 4487
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v2

    .line 4488
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v11

    const/4 v4, 0x1

    move-wide/from16 v42, v11

    .line 4489
    invoke-virtual {v7, v4, v9, v10, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v11

    move-wide/from16 v44, v11

    const/4 v11, 0x2

    move-wide/from16 v46, v2

    .line 4491
    invoke-virtual {v7, v11, v9, v10, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v2

    move-wide/from16 v48, v2

    .line 4493
    invoke-virtual {v7, v4, v9, v10, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v2

    move-wide/from16 v50, v5

    .line 4495
    invoke-virtual {v7, v11, v9, v10, v13}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v4

    .line 4497
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v11

    .line 4498
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    .line 4499
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    const/4 v6, 0x0

    .line 4500
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4501
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  Screen on: "

    .line 4502
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v52, v11

    div-long v11, v0, v16

    invoke-static {v8, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "("

    .line 4503
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v50

    invoke-virtual {v7, v0, v1, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") "

    .line 4504
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x, Interactive: "

    .line 4505
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v54, v4

    div-long v4, v46, v16

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "("

    .line 4506
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v46

    invoke-virtual {v7, v4, v5, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    .line 4507
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4508
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4509
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4510
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Screen brightnesses:"

    .line 4511
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x5

    if-ge v4, v6, :cond_c

    move-wide/from16 v56, v2

    .line 4514
    invoke-virtual {v7, v4, v9, v10, v13}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    cmp-long v6, v2, v24

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    const-string v5, "\n    "

    .line 4518
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4519
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4521
    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    .line 4522
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4523
    div-long v5, v2, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "("

    .line 4524
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4525
    invoke-virtual {v7, v2, v3, v0, v1}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    .line 4526
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v2, v56

    goto :goto_3

    :cond_c
    move-wide/from16 v56, v2

    if-nez v5, :cond_d

    const-string v0, " (no activity)"

    .line 4528
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4529
    :cond_d
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    cmp-long v0, v42, v24

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 4531
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4532
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Power save mode enabled: "

    .line 4533
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4534
    div-long v0, v42, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 4535
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v42

    .line 4536
    invoke-virtual {v7, v0, v1, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 4537
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4538
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    cmp-long v0, v56, v24

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 4541
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4542
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device light idling: "

    .line 4543
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4544
    div-long v2, v56, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 4545
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v56

    .line 4546
    invoke-virtual {v7, v0, v1, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    .line 4547
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    .line 4548
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4549
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    cmp-long v0, v44, v24

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 4552
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4553
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode light time: "

    .line 4554
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4555
    div-long v0, v44, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 4556
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v44

    .line 4557
    invoke-virtual {v7, v0, v1, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    .line 4558
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 4559
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    .line 4560
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- longest "

    .line 4561
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4562
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4563
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    cmp-long v0, v54, v24

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 4566
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4567
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Device full idling: "

    .line 4568
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4569
    div-long v4, v54, v16

    invoke-static {v8, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 4570
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v54

    .line 4571
    invoke-virtual {v7, v0, v1, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    .line 4572
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    .line 4573
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4574
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    cmp-long v0, v48, v24

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 4577
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4578
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Idle mode full time: "

    .line 4579
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4580
    div-long v2, v48, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 4581
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v48

    .line 4582
    invoke-virtual {v7, v0, v1, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    .line 4583
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    .line 4584
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    .line 4585
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- longest "

    .line 4586
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4587
    invoke-virtual {v7, v0}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v1

    invoke-static {v8, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4588
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    cmp-long v0, v52, v24

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 4591
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4592
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Active phone call: "

    .line 4593
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v0, v52, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 4594
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v52

    invoke-virtual {v7, v0, v1, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    .line 4595
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4597
    :cond_13
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v0

    if-eqz v0, :cond_14

    .line 4599
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Connectivity changes: "

    .line 4600
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4607
    :cond_14
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v1, v24

    move-wide/from16 v26, v1

    move/from16 v4, v37

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v4, :cond_19

    move-object/from16 v3, v36

    .line 4610
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/BatteryStats$Uid;

    .line 4613
    invoke-virtual/range {v28 .. v28}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    .line 4614
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v29

    move-object/from16 v58, v3

    const/4 v3, 0x1

    add-int/lit8 v29, v29, -0x1

    move-wide/from16 v224, v1

    move/from16 v1, v29

    move-wide/from16 v29, v26

    move-wide/from16 v26, v224

    :goto_6
    if-ltz v1, :cond_18

    .line 4615
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Wakelock;

    move/from16 v59, v4

    .line 4617
    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 4619
    invoke-virtual {v4, v9, v10, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    add-long v26, v26, v3

    :cond_15
    const/4 v3, 0x0

    .line 4623
    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 4625
    invoke-virtual {v2, v9, v10, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    cmp-long v31, v3, v24

    if-lez v31, :cond_17

    move/from16 v37, p5

    if-gez v37, :cond_16

    move-wide/from16 v60, v11

    .line 4632
    new-instance v11, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v32, v12

    check-cast v32, Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v33

    move-object/from16 v31, v11

    move-object/from16 v34, v2

    move-wide/from16 v35, v3

    invoke-direct/range {v31 .. v36}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    move-wide/from16 v60, v11

    :goto_7
    add-long v29, v29, v3

    goto :goto_8

    :cond_17
    move-wide/from16 v60, v11

    move/from16 v37, p5

    :goto_8
    add-int/lit8 v1, v1, -0x1

    move/from16 v4, v59

    move-wide/from16 v11, v60

    const/4 v3, 0x1

    goto :goto_6

    :cond_18
    move/from16 v59, v4

    move-wide/from16 v60, v11

    move/from16 v37, p5

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v1, v26

    move-wide/from16 v26, v29

    move-object/from16 v36, v58

    const/4 v6, 0x5

    goto/16 :goto_5

    :cond_19
    move/from16 v59, v4

    move-wide/from16 v60, v11

    move-object/from16 v58, v36

    const/4 v0, 0x0

    move/from16 v37, p5

    .line 4641
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v3

    const/4 v6, 0x1

    .line 4642
    invoke-virtual {v7, v6, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v11

    move-wide/from16 v62, v1

    const/4 v6, 0x2

    .line 4643
    invoke-virtual {v7, v6, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    const/4 v2, 0x3

    move-wide/from16 v64, v0

    .line 4644
    invoke-virtual {v7, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/from16 v66, v0

    const/4 v2, 0x0

    .line 4645
    invoke-virtual {v7, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v68, v0

    const/4 v2, 0x1

    .line 4646
    invoke-virtual {v7, v2, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v70, v0

    .line 4647
    invoke-virtual {v7, v6, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v72, v0

    const/4 v6, 0x3

    .line 4648
    invoke-virtual {v7, v6, v13}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v1

    const/4 v0, 0x4

    move-object/from16 v74, v5

    .line 4649
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v5

    move-wide/from16 v75, v5

    const/4 v0, 0x5

    .line 4650
    invoke-virtual {v7, v0, v13}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v5

    cmp-long v0, v62, v24

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    .line 4653
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4654
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total full wakelock time: "

    .line 4655
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v28, v62, v18

    move-wide/from16 v77, v1

    div-long v0, v28, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 4657
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_1a
    move-wide/from16 v77, v1

    :goto_9
    cmp-long v0, v26, v24

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 4661
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4662
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Total partial wakelock time: "

    .line 4663
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v26, v26, v18

    div-long v0, v26, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 4665
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4669
    :cond_1b
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockTime(JI)J

    move-result-wide v0

    .line 4670
    invoke-virtual {v7, v13}, Landroid/os/BatteryStats;->getWifiMulticastWakelockCount(I)I

    move-result v2

    cmp-long v26, v0, v24

    if-eqz v26, :cond_1c

    move-wide/from16 v79, v5

    const/4 v5, 0x0

    .line 4672
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4673
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  Total WiFi Multicast wakelock Count: "

    .line 4674
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4675
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4676
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4678
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4679
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Total WiFi Multicast wakelock time: "

    .line 4680
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v0, v0, v18

    .line 4681
    div-long v0, v0, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 4682
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_1c
    move-wide/from16 v79, v5

    :goto_a
    const-string v0, ""

    .line 4685
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4686
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4687
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4688
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  CONNECTIVITY POWER SUMMARY START"

    .line 4689
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4690
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4692
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4693
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4694
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Logging duration for connectivity statistics: "

    .line 4695
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v40

    .line 4696
    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4697
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4699
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4700
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Cellular Statistics:"

    .line 4701
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4702
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4704
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4705
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4706
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular kernel active time: "

    .line 4707
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4708
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v5

    .line 4709
    div-long v0, v5, v16

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 4710
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v60

    invoke-virtual {v7, v5, v6, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 4711
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4712
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular data received: "

    .line 4714
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular data sent: "

    .line 4715
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v11, v12}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Cellular packets received: "

    .line 4716
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v68

    invoke-virtual {v15, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Cellular packets sent: "

    .line 4717
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v70

    invoke-virtual {v15, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    const/4 v0, 0x0

    .line 4719
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4720
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular Radio Access Technology:"

    .line 4721
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_b
    const/16 v4, 0x15

    if-ge v0, v4, :cond_1e

    .line 4724
    invoke-virtual {v7, v0, v9, v10, v13}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v11

    cmp-long v4, v11, v24

    if-nez v4, :cond_1d

    goto :goto_c

    :cond_1d
    const-string v3, "\n       "

    .line 4728
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4729
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4731
    sget-object v3, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 4732
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4733
    div-long v3, v11, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "("

    .line 4734
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4735
    invoke-virtual {v7, v11, v12, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    .line 4736
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1e
    if-nez v3, :cond_1f

    const-string v0, " (no activity)"

    .line 4738
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4739
    :cond_1f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4741
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4742
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Cellular Rx signal strength (RSRP):"

    .line 4743
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "very poor (less than -128dBm): "

    const-string/jumbo v3, "poor (-128dBm to -118dBm): "

    const-string v11, "moderate (-118dBm to -108dBm): "

    const-string v12, "good (-108dBm to -98dBm): "

    const-string v4, "great (greater than -98dBm): "

    .line 4744
    filled-new-array {v0, v3, v11, v12, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 4751
    array-length v3, v0

    const/4 v11, 0x5

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v12, 0x0

    :goto_d
    if-ge v4, v3, :cond_21

    move/from16 v81, v12

    .line 4754
    invoke-virtual {v7, v4, v9, v10, v13}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v11

    cmp-long v26, v11, v24

    if-nez v26, :cond_20

    move/from16 v82, v3

    move-wide/from16 v83, v5

    move/from16 v12, v81

    goto :goto_e

    :cond_20
    move/from16 v82, v3

    const-string v3, "\n       "

    .line 4758
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4759
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4761
    aget-object v3, v0, v4

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 4762
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v83, v5

    .line 4763
    div-long v5, v11, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "("

    .line 4764
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4765
    invoke-virtual {v7, v11, v12, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    .line 4766
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    :goto_e
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v82

    move-wide/from16 v5, v83

    const/4 v11, 0x5

    goto :goto_d

    :cond_21
    move-wide/from16 v83, v5

    move/from16 v81, v12

    if-nez v81, :cond_22

    const-string v0, " (no activity)"

    .line 4768
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4769
    :cond_22
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Cellular"

    .line 4772
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-wide/from16 v11, v64

    move-wide/from16 v85, v66

    move-wide/from16 v87, v72

    const/4 v6, 0x4

    move-object/from16 v0, p0

    move-wide/from16 v26, v1

    move-wide/from16 v2, v77

    move-object/from16 v1, p2

    move-wide/from16 v89, v2

    const/4 v3, 0x3

    const/16 v28, 0x1

    move-object v2, v8

    move-wide/from16 v91, v20

    move-object/from16 v20, v58

    move-object/from16 v3, p3

    move-wide/from16 v94, v11

    move-object/from16 v93, v20

    move/from16 v12, v28

    move/from16 v20, v59

    const/4 v11, 0x0

    move-wide/from16 v96, v22

    move-wide/from16 v98, v26

    move-object/from16 v100, v74

    move-wide/from16 v101, v75

    move-wide/from16 v103, v79

    move-wide/from16 v105, v83

    move/from16 v6, p4

    .line 4771
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4774
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4775
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4776
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  Wifi Statistics:"

    .line 4777
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4778
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4780
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4781
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4782
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi kernel active time: "

    .line 4783
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4784
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiActiveTime(JI)J

    move-result-wide v0

    .line 4785
    div-long v2, v0, v16

    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "("

    .line 4786
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v98

    invoke-virtual {v7, v0, v1, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 4787
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4788
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi data received: "

    .line 4790
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v94

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi data sent: "

    .line 4791
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v85

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "     Wifi packets received: "

    .line 4792
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v87

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "     Wifi packets sent: "

    .line 4793
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v89

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 4795
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4796
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi states:"

    .line 4797
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v11

    move v1, v0

    :goto_f
    const/16 v2, 0x8

    if-ge v0, v2, :cond_24

    .line 4800
    invoke-virtual {v7, v0, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v2

    cmp-long v4, v2, v24

    if-nez v4, :cond_23

    goto :goto_10

    :cond_23
    const-string v1, "\n       "

    .line 4804
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4806
    sget-object v1, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 4807
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4808
    div-long v12, v2, v16

    invoke-static {v8, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v1, "("

    .line 4809
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4810
    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    .line 4811
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_10
    add-int/lit8 v0, v0, 0x1

    const/4 v12, 0x1

    move/from16 v13, p4

    goto :goto_f

    :cond_24
    if-nez v1, :cond_25

    const-string v0, " (no activity)"

    .line 4813
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4814
    :cond_25
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4816
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4817
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi supplicant states:"

    .line 4818
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v11

    move v1, v0

    :goto_11
    const/16 v2, 0xd

    if-ge v0, v2, :cond_27

    move/from16 v13, p4

    .line 4821
    invoke-virtual {v7, v0, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v2

    cmp-long v4, v2, v24

    if-nez v4, :cond_26

    goto :goto_12

    :cond_26
    const-string v1, "\n       "

    .line 4825
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4827
    sget-object v1, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 4828
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4829
    div-long v11, v2, v16

    invoke-static {v8, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v1, "("

    .line 4830
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4831
    invoke-virtual {v7, v2, v3, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    .line 4832
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_12
    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x0

    goto :goto_11

    :cond_27
    move/from16 v13, p4

    if-nez v1, :cond_28

    const-string v0, " (no activity)"

    .line 4834
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4835
    :cond_28
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4837
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4838
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     Wifi Rx signal strength (RSSI):"

    .line 4839
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "very poor (less than -88.75dBm): "

    const-string/jumbo v1, "poor (-88.75 to -77.5dBm): "

    const-string v2, "moderate (-77.5dBm to -66.25dBm): "

    const-string v3, "good (-66.25dBm to -55dBm): "

    const-string v4, "great (greater than -55dBm): "

    .line 4840
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 4847
    array-length v1, v0

    const/4 v11, 0x5

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_13
    if-ge v2, v1, :cond_2a

    .line 4850
    invoke-virtual {v7, v2, v9, v10, v13}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v11

    cmp-long v4, v11, v24

    if-nez v4, :cond_29

    goto :goto_14

    :cond_29
    const-string v3, "\n    "

    .line 4854
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4855
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "     "

    .line 4857
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4858
    aget-object v3, v0, v2

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4859
    div-long v3, v11, v16

    invoke-static {v8, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v3, "("

    .line 4860
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4861
    invoke-virtual {v7, v11, v12, v5, v6}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    .line 4862
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_14
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x5

    goto :goto_13

    :cond_2a
    if-nez v3, :cond_2b

    const-string v0, " (no activity)"

    .line 4864
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4865
    :cond_2b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "WiFi"

    .line 4868
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v3, p3

    move-wide/from16 v107, v5

    move-object v5, v11

    move/from16 v6, p4

    .line 4867
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4870
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4871
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4872
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  GPS Statistics:"

    .line 4873
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4874
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4876
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4877
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "     GPS signal quality (Top 4 Average CN0):"

    .line 4878
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "poor (less than 20 dBHz): "

    const-string v1, "good (greater than 20 dBHz): "

    .line 4879
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 4882
    array-length v1, v0

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_2c

    .line 4885
    invoke-virtual {v7, v2, v9, v10, v13}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v3

    const-string v5, "\n    "

    .line 4886
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4887
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    .line 4888
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4889
    aget-object v5, v0, v2

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4890
    div-long v5, v3, v16

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "("

    .line 4891
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v107

    .line 4892
    invoke-virtual {v7, v3, v4, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    .line 4893
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2c
    move-wide/from16 v11, v107

    .line 4895
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4897
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getGpsBatteryDrainMaMs()J

    move-result-wide v0

    cmp-long v2, v0, v24

    if-lez v2, :cond_2d

    .line 4899
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4900
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4901
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "     Battery Drain (mAh): "

    .line 4902
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v0, v0

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    .line 4903
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4904
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4907
    :cond_2d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4908
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4909
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  CONNECTIVITY POWER SUMMARY END"

    .line 4910
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4911
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 4912
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4914
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Bluetooth total received: "

    .line 4915
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v101

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ", sent: "

    .line 4916
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v103

    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4918
    invoke-virtual {v7, v9, v10, v13}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v0

    div-long v0, v0, v16

    const/4 v2, 0x0

    .line 4919
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4920
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Bluetooth scan time: "

    .line 4921
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4922
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "Bluetooth"

    .line 4924
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v8

    move-object/from16 v3, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4927
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v6, 0x2

    if-ne v13, v6, :cond_2f

    .line 4930
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4931
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device is currently unplugged"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4932
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Discharge cycle start level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4933
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4934
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Discharge cycle current level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4935
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_16

    .line 4937
    :cond_2e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device is currently plugged into power"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4938
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Last discharge cycle start level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4939
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4940
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Last discharge cycle end level: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4941
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4943
    :goto_16
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4944
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4945
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4946
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4947
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4948
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, " "

    .line 4949
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17

    .line 4951
    :cond_2f
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Device battery use since last full charge"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4952
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (lower bound): "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4953
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4954
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged (upper bound): "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4955
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4956
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen on: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4957
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4958
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen off: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4959
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4960
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Amount discharged while screen doze: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4961
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4962
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4965
    :goto_17
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v1, p1

    move/from16 v2, p6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 4966
    invoke-virtual {v0, v7}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 v5, -0x1

    .line 4967
    invoke-virtual {v0, v13, v5}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 4968
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 4969
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_41

    .line 4970
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Estimated power use (mAh):"

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4971
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Capacity: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4972
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v2

    invoke-direct {v7, v15, v2, v3}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v2, ", Computed drain: "

    .line 4973
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v2

    invoke-direct {v7, v15, v2, v3}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v2, ", actual drain: "

    .line 4974
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v2

    invoke-direct {v7, v15, v2, v3}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4975
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v21

    cmpl-double v2, v2, v21

    if-eqz v2, :cond_30

    const-string v2, "-"

    .line 4976
    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v2

    invoke-direct {v7, v15, v2, v3}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4978
    :cond_30
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const/4 v2, 0x0

    .line 4979
    :goto_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 4980
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    .line 4981
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4982
    sget-object v4, Landroid/os/BatteryStats$2;->$SwitchMap$com$android$internal$os$BatterySipper$DrainType:[I

    iget-object v5, v3, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    const-string v4, "    ???: "

    .line 5026
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_19

    :pswitch_0
    const-string v4, "    Camera: "

    .line 5023
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_1
    const-string v4, "    Over-counted: "

    .line 5020
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_2
    const-string v4, "    Unaccounted: "

    .line 5017
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_3
    const-string v4, "    User "

    .line 5013
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 5014
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_4
    const-string v4, "    Uid "

    .line 5008
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5009
    iget-object v4, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-static {v15, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, ": "

    .line 5010
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_5
    const-string v4, "    Flashlight: "

    .line 5005
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_6
    const-string v4, "    Screen: "

    .line 5002
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_7
    const-string v4, "    Bluetooth: "

    .line 4999
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_8
    const-string v4, "    Wifi: "

    .line 4996
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_9
    const-string v4, "    Phone calls: "

    .line 4993
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_a
    const-string v4, "    Cell standby: "

    .line 4990
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_b
    const-string v4, "    Idle: "

    .line 4987
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19

    :pswitch_c
    const-string v4, "    Ambient display: "

    .line 4984
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5029
    :goto_19
    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-direct {v7, v15, v4, v5}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5031
    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v6, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v4, v4, v6

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_3b

    const-string v4, " ("

    .line 5035
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v109, v9

    .line 5036
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_31

    const-string v4, " usage="

    .line 5037
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5038
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v7, p0

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    goto :goto_1a

    :cond_31
    move-object/from16 v7, p0

    .line 5040
    :goto_1a
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_32

    const-string v4, " cpu="

    .line 5041
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5042
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5044
    :cond_32
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_33

    const-string v4, " wake="

    .line 5045
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5046
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5048
    :cond_33
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_34

    const-string v4, " radio="

    .line 5049
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5050
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5052
    :cond_34
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_35

    const-string v4, " wifi="

    .line 5053
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5054
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5056
    :cond_35
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_36

    const-string v4, " bt="

    .line 5057
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5058
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5060
    :cond_36
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_37

    const-string v4, " gps="

    .line 5061
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5062
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5064
    :cond_37
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_38

    const-string v4, " sensor="

    .line 5065
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5066
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5068
    :cond_38
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_39

    const-string v4, " camera="

    .line 5069
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5070
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5072
    :cond_39
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_3a

    const-string v4, " flash="

    .line 5073
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5074
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-direct {v7, v15, v9, v10}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_3a
    const-string v4, " )"

    .line 5076
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1b

    :cond_3b
    move-wide/from16 v109, v9

    move-object/from16 v7, p0

    .line 5080
    :goto_1b
    iget-wide v9, v3, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    iget-wide v5, v3, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v4, v9, v5

    if-eqz v4, :cond_3e

    const-string v4, " Including smearing: "

    .line 5081
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5082
    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    invoke-direct {v7, v15, v4, v5}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    const-string v4, " ("

    .line 5083
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5084
    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    const-wide/16 v9, 0x0

    cmpl-double v4, v4, v9

    if-eqz v4, :cond_3c

    const-string v4, " screen="

    .line 5085
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5086
    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-direct {v7, v15, v4, v5}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 5088
    :cond_3c
    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    cmpl-double v4, v4, v9

    if-eqz v4, :cond_3d

    const-string v4, " proportional="

    .line 5089
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5090
    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-direct {v7, v15, v4, v5}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    :cond_3d
    const-string v4, " )"

    .line 5092
    invoke-virtual {v15, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5094
    :cond_3e
    iget-boolean v3, v3, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v3, :cond_3f

    const-string v3, " Excluded from smearing"

    .line 5095
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5098
    :cond_3f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v9, v109

    const/4 v5, -0x1

    const/4 v6, 0x2

    goto/16 :goto_18

    :cond_40
    move-wide/from16 v109, v9

    .line 5100
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_1c

    :cond_41
    move-wide/from16 v109, v9

    .line 5103
    :goto_1c
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 5104
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_43

    .line 5105
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Per-app mobile ms per packet:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-wide/from16 v2, v24

    const/4 v1, 0x0

    .line 5107
    :goto_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_42

    .line 5108
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    const/4 v5, 0x0

    .line 5109
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5110
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Uid "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5111
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v8, v5}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v5, ": "

    .line 5112
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    .line 5113
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v9, v4, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v5, v9

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " packets over "

    .line 5114
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-static {v8, v5, v6}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    const-string v5, ") "

    .line 5115
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5116
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5117
    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_42
    const/4 v1, 0x0

    .line 5119
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5120
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    TOTAL TIME: "

    .line 5121
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5122
    invoke-static {v8, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 5123
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3, v11, v12}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 5124
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5125
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5126
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5129
    :cond_43
    new-instance v9, Landroid/os/BatteryStats$1;

    invoke-direct {v9, v7}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    if-gez v37, :cond_4e

    .line 5146
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    .line 5147
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_49

    .line 5148
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5150
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5151
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v5, v109

    .line 5152
    invoke-static {v2, v5, v6, v13}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v30

    cmp-long v3, v30, v24

    if-lez v3, :cond_44

    .line 5154
    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v27, v1

    check-cast v27, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v26, v3

    move-object/from16 v29, v2

    invoke-direct/range {v26 .. v31}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    move-wide/from16 v109, v5

    goto :goto_1e

    :cond_45
    move-wide/from16 v5, v109

    .line 5157
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 5158
    invoke-static {v10, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5159
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All kernel wake locks:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5160
    :goto_1f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_47

    .line 5161
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$TimerEntry;

    const-string v21, ": "

    const/4 v1, 0x0

    .line 5163
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5164
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Kernel Wake lock "

    .line 5165
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5166
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5167
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/16 v22, 0x0

    move-object v0, v8

    move-wide v2, v5

    move/from16 v23, v4

    move-object/from16 v4, v22

    move-wide/from16 v111, v5

    const/16 v22, -0x1

    move/from16 v5, p4

    const/16 v26, 0x2

    move-object/from16 v6, v21

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ": "

    .line 5169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, " realtime"

    .line 5170
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5172
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_46
    add-int/lit8 v4, v23, 0x1

    move-wide/from16 v5, v111

    goto :goto_1f

    :cond_47
    move-wide/from16 v111, v5

    const/16 v22, -0x1

    const/16 v26, 0x2

    .line 5175
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_21

    :cond_48
    move-wide/from16 v111, v5

    goto :goto_20

    :cond_49
    move-wide/from16 v111, v109

    :goto_20
    const/16 v22, -0x1

    const/16 v26, 0x2

    .line 5179
    :goto_21
    invoke-virtual/range {v100 .. v100}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4b

    move-object/from16 v10, v100

    .line 5180
    invoke-static {v10, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5181
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  All partial wake locks:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 5182
    :goto_22
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4a

    .line 5183
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$TimerEntry;

    const/4 v1, 0x0

    .line 5184
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "  Wake lock "

    .line 5185
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5186
    iget v1, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v8, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, " "

    .line 5187
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5188
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5189
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/4 v4, 0x0

    const-string v21, ": "

    move-object v0, v8

    move-wide/from16 v2, v111

    move/from16 v5, p4

    move/from16 v23, v6

    move-object/from16 v6, v21

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string v0, " realtime"

    .line 5190
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5191
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v23, 0x1

    goto :goto_22

    .line 5193
    :cond_4a
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 5194
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5197
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    .line 5198
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_4f

    .line 5199
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  All wakeup reasons:"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5200
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5201
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5202
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    .line 5203
    new-instance v3, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v28, v1

    check-cast v28, Ljava/lang/String;

    const/16 v29, 0x0

    .line 5204
    invoke-virtual {v2, v13}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    int-to-long v4, v1

    move-object/from16 v27, v3

    move-object/from16 v30, v2

    move-wide/from16 v31, v4

    invoke-direct/range {v27 .. v32}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    .line 5203
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 5206
    :cond_4c
    invoke-static {v10, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v9, 0x0

    .line 5207
    :goto_24
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4d

    .line 5208
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$TimerEntry;

    const/4 v1, 0x0

    .line 5210
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5211
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Wakeup reason "

    .line 5212
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5213
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5214
    iget-object v1, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    const/4 v4, 0x0

    const-string v6, ": "

    move-object v0, v8

    move-wide/from16 v2, v111

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string v0, " realtime"

    .line 5215
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5216
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 5218
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_25

    :cond_4e
    move-wide/from16 v111, v109

    const/16 v22, -0x1

    const/16 v26, 0x2

    .line 5222
    :cond_4f
    :goto_25
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 5223
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_51

    const-string v1, "  Memory Stats"

    .line 5224
    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5225
    :goto_26
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    const/4 v2, 0x0

    .line 5226
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "  Bandwidth "

    .line 5227
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5228
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Time "

    .line 5229
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5230
    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v4, v111

    invoke-virtual {v3, v4, v5, v13}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5231
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_50
    move-wide/from16 v4, v111

    const/4 v2, 0x0

    .line 5233
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_27

    :cond_51
    move-wide/from16 v4, v111

    const/4 v2, 0x0

    .line 5236
    :goto_27
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v0

    .line 5237
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_53

    .line 5238
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  Resource Power Manager Stats"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5239
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_52

    .line 5240
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5242
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/BatteryStats$Timer;

    move-object v6, v8

    move-object/from16 v8, p2

    move/from16 v1, v20

    move-object v9, v6

    const/16 v2, 0x3e8

    move-object/from16 v115, v0

    move-wide/from16 v113, v11

    move/from16 v2, v37

    const/4 v0, 0x0

    move-wide v11, v4

    move/from16 v13, p4

    move-object/from16 v14, p3

    move-object v15, v3

    .line 5243
    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-object v8, v6

    move-wide/from16 v11, v113

    move-object/from16 v15, p2

    const/16 v26, 0x2

    move v2, v0

    move-object/from16 v0, v115

    goto :goto_28

    :cond_52
    move v0, v2

    move-object v6, v8

    move-wide/from16 v113, v11

    move/from16 v1, v20

    move/from16 v2, v37

    .line 5246
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_29

    :cond_53
    move v0, v2

    move-object v6, v8

    move-wide/from16 v113, v11

    move/from16 v1, v20

    move/from16 v2, v37

    .line 5264
    :goto_29
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v3

    if-eqz v3, :cond_55

    .line 5266
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, "  CPU freqs:"

    .line 5267
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v0

    .line 5268
    :goto_2a
    array-length v9, v3

    if-ge v8, v9, :cond_54

    .line 5269
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v10, v3, v8

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 5271
    :cond_54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v15, p2

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5272
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2b

    :cond_55
    move-object/from16 v15, p2

    :goto_2b
    move v14, v0

    :goto_2c
    if-ge v14, v1, :cond_cd

    move-object/from16 v13, v93

    .line 5276
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ltz v2, :cond_56

    if-eq v3, v2, :cond_56

    const/16 v8, 0x3e8

    if-eq v3, v8, :cond_57

    move/from16 v20, v1

    move-wide/from16 v219, v4

    move/from16 v21, v8

    move-object/from16 v216, v13

    move/from16 v32, v14

    move-object v1, v15

    move-wide/from16 v11, v91

    move-wide/from16 v217, v96

    move-wide/from16 v29, v105

    move-wide/from16 v26, v113

    move-object/from16 v7, p3

    move/from16 v9, p4

    const/4 v10, 0x2

    const/16 v23, 0x3

    const/16 v28, 0x5

    const/16 v31, 0x1

    const/16 v33, 0x4

    move v4, v0

    goto/16 :goto_6f

    :cond_56
    const/16 v8, 0x3e8

    .line 5281
    :cond_57
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 5283
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "  "

    .line 5284
    invoke-virtual {v15, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5285
    invoke-static {v15, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v3, ":"

    .line 5286
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v12, p4

    .line 5289
    invoke-virtual {v11, v0, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v9

    move-wide/from16 v116, v9

    const/4 v3, 0x1

    .line 5290
    invoke-virtual {v11, v3, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    move-wide/from16 v118, v4

    const/4 v10, 0x2

    .line 5291
    invoke-virtual {v11, v10, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v3

    move/from16 v120, v1

    const/4 v5, 0x3

    .line 5292
    invoke-virtual {v11, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-object/from16 v122, v13

    move/from16 v121, v14

    const/4 v5, 0x4

    .line 5293
    invoke-virtual {v11, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    move-wide/from16 v123, v13

    const/4 v10, 0x5

    .line 5294
    invoke-virtual {v11, v10, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    move-wide/from16 v125, v0

    const/4 v5, 0x0

    .line 5296
    invoke-virtual {v11, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/from16 v127, v3

    const/4 v5, 0x1

    .line 5297
    invoke-virtual {v11, v5, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v2

    move-wide/from16 v129, v13

    const/4 v4, 0x2

    .line 5298
    invoke-virtual {v11, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    move-wide/from16 v131, v13

    const/4 v4, 0x3

    .line 5299
    invoke-virtual {v11, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v13

    .line 5301
    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v4

    .line 5302
    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v10

    move-wide/from16 v135, v4

    move-wide/from16 v133, v13

    move-wide/from16 v13, v118

    .line 5304
    invoke-virtual {v11, v13, v14, v12}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v4

    move-wide/from16 v137, v4

    .line 5305
    invoke-virtual {v11, v13, v14, v12}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v4

    move-wide/from16 v139, v4

    .line 5306
    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v5

    .line 5307
    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v4

    move/from16 v142, v4

    move/from16 v141, v5

    .line 5309
    invoke-virtual {v11, v13, v14}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v4

    move-wide/from16 v143, v4

    .line 5310
    invoke-virtual {v11, v13, v14}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v4

    move-wide/from16 v145, v4

    .line 5311
    invoke-virtual {v11, v13, v14, v12}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v4

    move-wide/from16 v147, v4

    .line 5313
    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v4

    move-wide/from16 v149, v13

    .line 5314
    invoke-virtual {v11, v12}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v13

    cmp-long v20, v116, v24

    if-gtz v20, :cond_59

    cmp-long v20, v8, v24

    if-gtz v20, :cond_59

    cmp-long v20, v0, v24

    if-gtz v20, :cond_59

    cmp-long v20, v2, v24

    if-lez v20, :cond_58

    goto :goto_2d

    :cond_58
    move-wide/from16 v151, v13

    goto :goto_2e

    .line 5318
    :cond_59
    :goto_2d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "    Mobile network: "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v151, v13

    move-wide/from16 v12, v116

    .line 5319
    invoke-virtual {v7, v12, v13}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, " received, "

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5320
    invoke-virtual {v7, v8, v9}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " sent (packets "

    .line 5321
    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " received, "

    .line 5322
    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " sent)"

    invoke-virtual {v15, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2e
    cmp-long v8, v135, v24

    if-gtz v8, :cond_5b

    if-lez v10, :cond_5a

    goto :goto_2f

    :cond_5a
    move-wide/from16 v153, v4

    move-wide/from16 v12, v105

    move-object/from16 v14, p3

    goto :goto_30

    :cond_5b
    :goto_2f
    const/4 v8, 0x0

    .line 5325
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v14, p3

    .line 5326
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    Mobile radio active: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5327
    div-long v8, v135, v16

    invoke-static {v6, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v12, "("

    .line 5328
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v153, v4

    move-wide/from16 v12, v105

    move-wide/from16 v4, v135

    .line 5329
    invoke-virtual {v7, v4, v5, v12, v13}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") "

    .line 5330
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr v0, v2

    cmp-long v2, v0, v24

    if-nez v2, :cond_5c

    const-wide/16 v0, 0x1

    :cond_5c
    const-string v2, " @ "

    .line 5335
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v2, v8

    long-to-double v0, v0

    div-double/2addr v2, v0

    .line 5336
    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mspp"

    .line 5337
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5338
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_30
    cmp-long v0, v153, v24

    if-lez v0, :cond_5d

    const/4 v0, 0x0

    .line 5342
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5343
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Mobile radio AP wakeups: "

    .line 5344
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v153

    .line 5345
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5346
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_31

    :cond_5d
    const/4 v0, 0x0

    .line 5349
    :goto_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cellular"

    .line 5350
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v5

    move v10, v0

    move-wide/from16 v8, v125

    move-object/from16 v0, p0

    move/from16 v20, v120

    move-object/from16 v1, p2

    const/16 v21, 0x3e8

    move-object v2, v6

    move-object/from16 v155, v11

    move-wide/from16 v156, v12

    move-wide/from16 v10, v127

    const/4 v13, 0x1

    move-wide/from16 v13, v137

    move-wide/from16 v160, v139

    move/from16 v12, v142

    move-wide/from16 v162, v143

    move-wide/from16 v164, v145

    move-wide/from16 v166, v147

    move-wide/from16 v158, v149

    const/16 v23, 0x3

    move/from16 v168, v12

    move/from16 v12, v141

    move-object/from16 v169, v6

    move/from16 v6, p4

    .line 5349
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v10, v24

    if-gtz v0, :cond_5e

    cmp-long v0, v8, v24

    if-gtz v0, :cond_5e

    cmp-long v0, v131, v24

    if-gtz v0, :cond_5e

    cmp-long v0, v133, v24

    if-lez v0, :cond_5f

    .line 5353
    :cond_5e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Wi-Fi network: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5354
    invoke-virtual {v7, v10, v11}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5355
    invoke-virtual {v7, v8, v9}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent (packets "

    .line 5356
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v131

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " received, "

    .line 5357
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v133

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " sent)"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5f
    cmp-long v0, v13, v24

    if-nez v0, :cond_61

    move-wide/from16 v0, v160

    cmp-long v2, v0, v24

    if-nez v2, :cond_62

    if-nez v12, :cond_62

    if-nez v168, :cond_62

    move-wide/from16 v2, v162

    cmp-long v4, v2, v24

    if-nez v4, :cond_63

    move-wide/from16 v4, v164

    cmp-long v6, v4, v24

    if-nez v6, :cond_64

    move-wide/from16 v8, v166

    cmp-long v6, v8, v24

    if-eqz v6, :cond_60

    goto :goto_32

    :cond_60
    move-wide/from16 v2, v113

    move-wide/from16 v9, v158

    move-object/from16 v11, v169

    move-object/from16 v14, p3

    goto/16 :goto_33

    :cond_61
    move-wide/from16 v0, v160

    :cond_62
    move-wide/from16 v2, v162

    :cond_63
    move-wide/from16 v4, v164

    :cond_64
    move-wide/from16 v8, v166

    :goto_32
    move-object/from16 v11, v169

    const/4 v6, 0x0

    .line 5363
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    move-wide/from16 v170, v4

    move-wide v4, v13

    move-object/from16 v14, p3

    .line 5364
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Wifi Running: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v172, v2

    .line 5365
    div-long v2, v8, v16

    invoke-static {v11, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "("

    .line 5366
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v113

    invoke-virtual {v7, v8, v9, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")\n"

    .line 5367
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5368
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    Full Wifi Lock: "

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5369
    div-long v8, v4, v16

    invoke-static {v11, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v6, "("

    .line 5370
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")\n"

    .line 5371
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5372
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Wifi Scan (blamed): "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5373
    div-long v4, v0, v16

    invoke-static {v11, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v4, "("

    .line 5374
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    .line 5375
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5376
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x\n"

    .line 5377
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5379
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Wifi Scan (actual): "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5380
    div-long v4, v172, v16

    invoke-static {v11, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 5381
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v158

    const/4 v0, 0x0

    .line 5382
    invoke-virtual {v7, v9, v10, v0}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    move-wide/from16 v0, v172

    .line 5381
    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    .line 5383
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5384
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x\n"

    .line 5385
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5386
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Background Wifi Scan: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5387
    div-long v4, v170, v16

    invoke-static {v11, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "("

    .line 5388
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 5389
    invoke-virtual {v7, v9, v10, v0}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v4

    move-wide/from16 v0, v170

    .line 5388
    invoke-virtual {v7, v0, v1, v4, v5}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    .line 5390
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v168

    .line 5391
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    .line 5392
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5393
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_33
    cmp-long v0, v151, v24

    if-lez v0, :cond_65

    const/4 v0, 0x0

    .line 5397
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5398
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    WiFi AP wakeups: "

    .line 5399
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v151

    .line 5400
    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5401
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5404
    :cond_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WiFi"

    .line 5405
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v26, v2

    move-object v2, v11

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move/from16 v6, p4

    .line 5404
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    cmp-long v0, v123, v24

    if-gtz v0, :cond_66

    cmp-long v0, v129, v24

    if-lez v0, :cond_67

    .line 5408
    :cond_66
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    Bluetooth network: "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v123

    .line 5409
    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " received, "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v0, v129

    .line 5410
    invoke-virtual {v7, v0, v1}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " sent"

    .line 5411
    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5414
    :cond_67
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_79

    move/from16 v12, p4

    .line 5417
    invoke-virtual {v0, v9, v10, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    add-long v1, v1, v18

    div-long v1, v1, v16

    cmp-long v3, v1, v24

    if-eqz v3, :cond_79

    .line 5420
    invoke-virtual {v0, v12}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    .line 5421
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 5422
    invoke-virtual {v4, v12}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    move v8, v5

    move-wide/from16 v174, v9

    move-wide/from16 v5, v96

    goto :goto_34

    :cond_68
    move-wide/from16 v174, v9

    move-wide/from16 v5, v96

    const/4 v8, 0x0

    .line 5424
    :goto_34
    invoke-virtual {v0, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v9

    if-eqz v4, :cond_69

    .line 5426
    invoke-virtual {v4, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    move/from16 v176, v8

    move-wide/from16 v7, v28

    goto :goto_35

    :cond_69
    move/from16 v176, v8

    move-wide/from16 v7, v24

    .line 5428
    :goto_35
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v13

    if-eqz v13, :cond_6a

    .line 5429
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v13

    goto :goto_36

    :cond_6a
    const/4 v13, 0x0

    .line 5430
    :goto_36
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v28

    if-eqz v28, :cond_6b

    .line 5431
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v15

    goto :goto_37

    :cond_6b
    const/4 v15, 0x0

    .line 5433
    :goto_37
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_6c

    .line 5435
    invoke-virtual {v12, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    move-wide/from16 v177, v28

    goto :goto_38

    :cond_6c
    move-wide/from16 v177, v24

    :goto_38
    if-eqz v12, :cond_6d

    .line 5437
    invoke-virtual {v12, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v28

    move-object/from16 v181, v12

    move-wide/from16 v179, v28

    goto :goto_39

    :cond_6d
    move-object/from16 v181, v12

    move-wide/from16 v179, v24

    .line 5440
    :goto_39
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v12

    if-eqz v12, :cond_6e

    .line 5442
    invoke-virtual {v12, v5, v6}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    move-wide/from16 v182, v28

    goto :goto_3a

    :cond_6e
    move-wide/from16 v182, v24

    :goto_3a
    if-eqz v12, :cond_6f

    .line 5444
    invoke-virtual {v12, v5, v6}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v28

    move-wide/from16 v184, v5

    move-wide/from16 v186, v28

    :goto_3b
    const/4 v5, 0x0

    goto :goto_3c

    :cond_6f
    move-wide/from16 v184, v5

    move-wide/from16 v186, v24

    goto :goto_3b

    .line 5446
    :goto_3c
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    cmp-long v5, v9, v1

    if-eqz v5, :cond_71

    .line 5448
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Bluetooth Scan (total blamed realtime): "

    .line 5449
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5450
    invoke-static {v11, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v1, " ("

    .line 5451
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5452
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " times)"

    .line 5453
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5454
    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, " (currently running)"

    .line 5455
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    const-string v1, "\n"

    .line 5457
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5460
    :cond_71
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    Bluetooth Scan (total actual realtime): "

    .line 5461
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5462
    invoke-static {v11, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v1, " ("

    .line 5463
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5464
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " times)"

    .line 5465
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5466
    invoke-virtual {v0}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, " (currently running)"

    .line 5467
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_72
    const-string v0, "\n"

    .line 5469
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, v7, v24

    if-gtz v0, :cond_73

    if-lez v176, :cond_75

    .line 5471
    :cond_73
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Bluetooth Scan (background realtime): "

    .line 5472
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5473
    invoke-static {v11, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " ("

    .line 5474
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v176

    .line 5475
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " times)"

    .line 5476
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_74

    .line 5477
    invoke-virtual {v4}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_74

    const-string v0, " (currently running in background)"

    .line 5478
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    const-string v0, "\n"

    .line 5480
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5483
    :cond_75
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Bluetooth Scan Results: "

    .line 5484
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5485
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ("

    .line 5486
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5487
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in background)"

    .line 5488
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v177

    cmp-long v2, v0, v24

    if-gtz v2, :cond_76

    move-wide/from16 v2, v182

    cmp-long v4, v2, v24

    if-lez v4, :cond_78

    goto :goto_3d

    :cond_76
    move-wide/from16 v2, v182

    :goto_3d
    const-string v4, "\n"

    .line 5491
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5492
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    Unoptimized Bluetooth Scan (realtime): "

    .line 5493
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5494
    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    .line 5495
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v179

    .line 5496
    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, ")"

    .line 5497
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v181, :cond_77

    .line 5499
    invoke-virtual/range {v181 .. v181}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, " (currently running unoptimized)"

    .line 5500
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    if-eqz v12, :cond_78

    cmp-long v0, v2, v24

    if-lez v0, :cond_78

    const-string v0, "\n"

    .line 5503
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5504
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Unoptimized Bluetooth Scan (background realtime): "

    .line 5505
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5506
    invoke-static {v11, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, " (max "

    .line 5507
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v186

    .line 5508
    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, ")"

    .line 5509
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5510
    invoke-virtual {v12}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, " (currently running unoptimized in background)"

    .line 5511
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5515
    :cond_78
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v7, p2

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_3e

    :cond_79
    move-wide/from16 v174, v9

    move-object v7, v15

    move-wide/from16 v184, v96

    const/4 v4, 0x0

    .line 5522
    :goto_3e
    invoke-virtual/range {v155 .. v155}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v15, 0x4

    :goto_3f
    if-ge v0, v15, :cond_7c

    move-object/from16 v13, v155

    move/from16 v12, p4

    .line 5525
    invoke-virtual {v13, v0, v12}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v2

    if-eqz v2, :cond_7b

    if-nez v1, :cond_7a

    const/4 v3, 0x0

    .line 5528
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "    User activity: "

    .line 5529
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_40

    :cond_7a
    const-string v3, ", "

    .line 5532
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5534
    :goto_40
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    .line 5535
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5536
    sget-object v2, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7b
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v155, v13

    goto :goto_3f

    :cond_7c
    move-object/from16 v13, v155

    move/from16 v12, p4

    if-eqz v1, :cond_7e

    .line 5540
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    :cond_7d
    move-object/from16 v13, v155

    move/from16 v12, p4

    const/4 v15, 0x4

    .line 5545
    :cond_7e
    :goto_41
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v8

    .line 5549
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v9, v0

    move-wide/from16 v0, v24

    move-wide v2, v0

    move-wide v5, v2

    move-wide/from16 v188, v5

    const/4 v10, 0x0

    :goto_42
    if-ltz v9, :cond_80

    .line 5550
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    const-string v28, ": "

    const/4 v15, 0x0

    .line 5552
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5553
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "    Wake lock "

    .line 5554
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5555
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    .line 5556
    invoke-virtual {v4, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v29

    const-string v15, "full"

    move-object/from16 v190, v13

    move-wide v13, v0

    move-object v0, v11

    move-object/from16 v1, v29

    move-object/from16 v191, v8

    move/from16 v192, v9

    move-wide v8, v2

    move-wide/from16 v2, v174

    move-wide/from16 v193, v13

    move-object v13, v4

    move-object v4, v15

    move-wide v14, v5

    move-wide/from16 v195, v184

    move/from16 v5, p4

    move-object/from16 v6, v28

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    .line 5558
    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v28

    const-string v4, "partial"

    move-object v0, v11

    move-object/from16 v1, v28

    .line 5559
    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v28, :cond_7f

    .line 5561
    invoke-virtual/range {v28 .. v28}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    :goto_43
    move-object v1, v0

    goto :goto_44

    :cond_7f
    const/4 v0, 0x0

    goto :goto_43

    :goto_44
    const-string v4, "background partial"

    move-object v0, v11

    move-wide/from16 v2, v174

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x2

    .line 5563
    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string/jumbo v4, "window"

    move-object v0, v11

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v5, 0x12

    .line 5565
    invoke-virtual {v13, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    const-string v4, "draw"

    move/from16 v5, p4

    invoke-static/range {v0 .. v6}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string v0, " realtime"

    .line 5567
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5568
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    const/4 v0, 0x1

    .line 5572
    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v12}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    add-long v5, v14, v0

    const/4 v0, 0x0

    .line 5574
    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v1

    invoke-static {v1, v2, v3, v12}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v0

    add-long/2addr v0, v8

    const/4 v4, 0x2

    .line 5576
    invoke-virtual {v13, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v8

    invoke-static {v8, v2, v3, v12}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v8

    add-long v8, v193, v8

    const/16 v14, 0x12

    .line 5578
    invoke-virtual {v13, v14}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v13

    invoke-static {v13, v2, v3, v12}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v13

    move-wide/from16 v197, v5

    move-wide/from16 v4, v188

    add-long v188, v4, v13

    add-int/lit8 v4, v192, -0x1

    move-object/from16 v13, v190

    move-wide/from16 v184, v195

    move-wide/from16 v5, v197

    move-object/from16 v14, p3

    const/4 v15, 0x4

    move-wide v2, v0

    move-wide v0, v8

    move-object/from16 v8, v191

    move v9, v4

    const/4 v4, 0x1

    goto/16 :goto_42

    :cond_80
    move-wide/from16 v193, v0

    move-wide v8, v2

    move v0, v4

    move-wide v14, v5

    move-object/from16 v190, v13

    move-wide/from16 v2, v174

    move-wide/from16 v195, v184

    move-wide/from16 v4, v188

    const/4 v1, 0x1

    const/4 v6, 0x2

    if-le v10, v1, :cond_90

    .line 5586
    invoke-virtual/range {v190 .. v190}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_82

    .line 5587
    invoke-virtual/range {v190 .. v190}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    move-wide/from16 v6, v195

    .line 5590
    invoke-virtual {v1, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    .line 5591
    invoke-virtual {v1}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    if-eqz v1, :cond_81

    .line 5593
    invoke-virtual {v1, v6, v7}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v30

    goto :goto_45

    :cond_81
    move-wide/from16 v30, v24

    :goto_45
    move/from16 v199, v0

    move-wide/from16 v200, v6

    move-wide/from16 v0, v28

    move-wide/from16 v6, v30

    goto :goto_46

    :cond_82
    move/from16 v199, v0

    move-wide/from16 v0, v24

    move-wide v6, v0

    move-wide/from16 v200, v195

    :goto_46
    cmp-long v10, v0, v24

    if-nez v10, :cond_84

    cmp-long v13, v6, v24

    if-nez v13, :cond_84

    cmp-long v13, v14, v24

    if-nez v13, :cond_84

    cmp-long v13, v8, v24

    if-nez v13, :cond_84

    cmp-long v13, v193, v24

    if-eqz v13, :cond_83

    goto :goto_47

    :cond_83
    move-wide/from16 v202, v2

    move-wide/from16 v2, v200

    move-object/from16 v1, p2

    goto/16 :goto_49

    :cond_84
    :goto_47
    const/4 v13, 0x0

    .line 5599
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    move-wide/from16 v202, v2

    move-wide/from16 v2, v193

    move-object/from16 v13, p3

    .line 5600
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "    TOTAL wake: "

    .line 5601
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v13, v14, v24

    if-eqz v13, :cond_85

    .line 5605
    invoke-static {v11, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v13, "full"

    .line 5606
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    goto :goto_48

    :cond_85
    const/4 v13, 0x0

    :goto_48
    cmp-long v14, v8, v24

    if-eqz v14, :cond_87

    if-eqz v13, :cond_86

    const-string v13, ", "

    .line 5610
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5613
    :cond_86
    invoke-static {v11, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v8, "blamed partial"

    .line 5614
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    :cond_87
    if-eqz v10, :cond_89

    if-eqz v13, :cond_88

    const-string v8, ", "

    .line 5618
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5621
    :cond_88
    invoke-static {v11, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "actual partial"

    .line 5622
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    :cond_89
    cmp-long v0, v6, v24

    if-eqz v0, :cond_8b

    if-eqz v13, :cond_8a

    const-string v0, ", "

    .line 5626
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5629
    :cond_8a
    invoke-static {v11, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "actual background partial"

    .line 5630
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    :cond_8b
    cmp-long v0, v2, v24

    if-eqz v0, :cond_8d

    if-eqz v13, :cond_8c

    const-string v0, ", "

    .line 5634
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5637
    :cond_8c
    invoke-static {v11, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "window"

    .line 5638
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    :cond_8d
    cmp-long v0, v4, v24

    if-eqz v0, :cond_8f

    if-eqz v13, :cond_8e

    const-string v0, ","

    .line 5642
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5645
    :cond_8e
    invoke-static {v11, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v0, "draw"

    .line 5646
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8f
    const-string v0, " realtime"

    .line 5648
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5649
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v2, v200

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_49

    :cond_90
    move/from16 v199, v0

    move-wide/from16 v202, v2

    move-object v1, v7

    move-wide/from16 v2, v195

    .line 5654
    :goto_49
    invoke-virtual/range {v190 .. v190}, Landroid/os/BatteryStats$Uid;->getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_91

    move-wide/from16 v4, v202

    .line 5656
    invoke-virtual {v0, v4, v5, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    .line 5657
    invoke-virtual {v0, v12}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v0

    cmp-long v8, v6, v24

    if-lez v8, :cond_92

    const/4 v8, 0x0

    .line 5660
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v13, p3

    .line 5661
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "    WiFi Multicast Wakelock"

    .line 5662
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " count = "

    .line 5663
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5664
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " time = "

    .line 5665
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v6, v6, v18

    .line 5666
    div-long v6, v6, v16

    invoke-static {v11, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 5667
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4a

    :cond_91
    move-wide/from16 v4, v202

    :cond_92
    move-object/from16 v13, p3

    .line 5671
    :goto_4a
    invoke-virtual/range {v190 .. v190}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5672
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_4b
    if-ltz v6, :cond_97

    .line 5673
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Timer;

    .line 5675
    invoke-virtual {v9, v4, v5, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    add-long v14, v14, v18

    div-long v14, v14, v16

    .line 5676
    invoke-virtual {v9, v12}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v10

    .line 5677
    invoke-virtual {v9}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v9

    if-eqz v9, :cond_93

    .line 5679
    invoke-virtual {v9, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v7

    goto :goto_4c

    :cond_93
    const-wide/16 v7, -0x1

    :goto_4c
    if-eqz v9, :cond_94

    .line 5680
    invoke-virtual {v9, v12}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v9

    move-wide/from16 v204, v2

    :goto_4d
    const/4 v2, 0x0

    goto :goto_4e

    :cond_94
    move-wide/from16 v204, v2

    move/from16 v9, v22

    goto :goto_4d

    .line 5681
    :goto_4e
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5682
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    Sync "

    .line 5683
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5684
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 5685
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v14, v24

    if-eqz v2, :cond_95

    .line 5687
    invoke-static {v11, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v2, "realtime ("

    .line 5688
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5689
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times)"

    .line 5690
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v2, v7, v24

    if-lez v2, :cond_96

    const-string v2, ", "

    .line 5692
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5693
    invoke-static {v11, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v2, "background ("

    .line 5694
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5695
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times)"

    .line 5696
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4f

    :cond_95
    const-string v2, "(not used)"

    .line 5699
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5701
    :cond_96
    :goto_4f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, -0x1

    move-wide/from16 v2, v204

    const/16 v199, 0x1

    goto/16 :goto_4b

    :cond_97
    move-wide/from16 v204, v2

    .line 5705
    invoke-virtual/range {v190 .. v190}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5706
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_50
    if-ltz v2, :cond_9c

    .line 5707
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Timer;

    .line 5709
    invoke-virtual {v3, v4, v5, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v9

    add-long v9, v9, v18

    div-long v9, v9, v16

    .line 5710
    invoke-virtual {v3, v12}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    .line 5711
    invoke-virtual {v3}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_98

    move-wide/from16 v14, v204

    .line 5713
    invoke-virtual {v3, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    move-wide/from16 v7, v28

    goto :goto_51

    :cond_98
    move-wide/from16 v14, v204

    const-wide/16 v7, -0x1

    :goto_51
    if-eqz v3, :cond_99

    .line 5714
    invoke-virtual {v3, v12}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v3

    move-wide/from16 v206, v4

    :goto_52
    const/4 v4, 0x0

    goto :goto_53

    :cond_99
    move-wide/from16 v206, v4

    move/from16 v3, v22

    goto :goto_52

    .line 5715
    :goto_53
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5716
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Job "

    .line 5717
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5718
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 5719
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, v9, v24

    if-eqz v5, :cond_9a

    .line 5721
    invoke-static {v11, v9, v10}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "realtime ("

    .line 5722
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5723
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " times)"

    .line 5724
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v5, v7, v24

    if-lez v5, :cond_9b

    const-string v5, ", "

    .line 5726
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5727
    invoke-static {v11, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "background ("

    .line 5728
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5729
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times)"

    .line 5730
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    :cond_9a
    const-string v3, "(not used)"

    .line 5733
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5735
    :cond_9b
    :goto_54
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v204, v14

    move-wide/from16 v4, v206

    const/16 v199, 0x1

    goto/16 :goto_50

    :cond_9c
    move-wide/from16 v206, v4

    move-wide/from16 v14, v204

    const/4 v4, 0x0

    .line 5739
    invoke-virtual/range {v190 .. v190}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5740
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_55
    if-ltz v2, :cond_9f

    .line 5741
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseIntArray;

    if-eqz v5, :cond_9e

    .line 5743
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "    Job Completions "

    .line 5744
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5745
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ":"

    .line 5746
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v6, v4

    .line 5747
    :goto_56
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_9d

    const-string v7, " "

    .line 5748
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5749
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "("

    .line 5750
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5751
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v7, "x)"

    .line 5752
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 5754
    :cond_9d
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    :cond_9e
    add-int/lit8 v2, v2, -0x1

    goto :goto_55

    :cond_9f
    move-object/from16 v2, v190

    .line 5758
    invoke-virtual {v2, v11, v12}, Landroid/os/BatteryStats$Uid;->getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V

    .line 5759
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a0

    const-string v0, "    Jobs deferred on launch "

    .line 5760
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5763
    :cond_a0
    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v0, "Flashlight"

    move-object/from16 v8, p2

    move-wide/from16 v5, v206

    move-object v9, v11

    const/4 v7, 0x2

    const/16 v28, 0x5

    move-object/from16 v209, v2

    move-object/from16 v208, v11

    move v2, v12

    move-wide/from16 v29, v156

    move-wide v11, v5

    move/from16 v31, v3

    move-object/from16 v3, v122

    move/from16 v13, p4

    move-wide/from16 v210, v14

    move/from16 v32, v121

    move-object/from16 v15, p3

    move-object/from16 v14, p3

    move-object v7, v15

    const/16 v33, 0x4

    move-object v15, v0

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int v0, v199, v0

    .line 5765
    invoke-virtual/range {v209 .. v209}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Camera"

    move-object/from16 v9, v208

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 5767
    invoke-virtual/range {v209 .. v209}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Video"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 5769
    invoke-virtual/range {v209 .. v209}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Audio"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 5772
    invoke-virtual/range {v209 .. v209}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v8

    .line 5773
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    move/from16 v34, v0

    move v0, v4

    :goto_57
    if-ge v0, v9, :cond_a9

    .line 5775
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid$Sensor;

    .line 5776
    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-object/from16 v15, v208

    .line 5777
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5778
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "    Sensor "

    .line 5779
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5780
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v11

    const/16 v12, -0x2710

    if-ne v11, v12, :cond_a1

    const-string v11, "GPS"

    .line 5782
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_58

    .line 5784
    :cond_a1
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_58
    const-string v11, ": "

    .line 5786
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5788
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v11

    if-eqz v11, :cond_a7

    .line 5791
    invoke-virtual {v11, v5, v6, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long v12, v12, v18

    div-long v12, v12, v16

    .line 5793
    invoke-virtual {v11, v2}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v14

    .line 5794
    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    if-eqz v10, :cond_a2

    .line 5795
    invoke-virtual {v10, v2}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v34

    move-wide/from16 v212, v5

    move-object/from16 v214, v8

    move/from16 v215, v9

    move/from16 v6, v34

    :goto_59
    move-wide/from16 v4, v210

    goto :goto_5a

    :cond_a2
    move-wide/from16 v212, v5

    move-object/from16 v214, v8

    move/from16 v215, v9

    move v6, v4

    goto :goto_59

    .line 5797
    :goto_5a
    invoke-virtual {v11, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v8

    if-eqz v10, :cond_a3

    .line 5799
    invoke-virtual {v10, v4, v5}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    goto :goto_5b

    :cond_a3
    move-wide/from16 v10, v24

    :goto_5b
    cmp-long v34, v12, v24

    if-eqz v34, :cond_a6

    cmp-long v34, v8, v12

    if-eqz v34, :cond_a4

    .line 5804
    invoke-static {v15, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v12, "blamed realtime, "

    .line 5805
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5808
    :cond_a4
    invoke-static {v15, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v8, "realtime ("

    .line 5809
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5810
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " times)"

    .line 5811
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v8, v10, v24

    if-nez v8, :cond_a5

    if-lez v6, :cond_a8

    :cond_a5
    const-string v8, ", "

    .line 5814
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5815
    invoke-static {v15, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v8, "background ("

    .line 5816
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5817
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " times)"

    .line 5818
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_a6
    const-string v6, "(not used)"

    .line 5821
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_a7
    move-wide/from16 v212, v5

    move-object/from16 v214, v8

    move/from16 v215, v9

    move-wide/from16 v4, v210

    const-string v6, "(not used)"

    .line 5824
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5827
    :cond_a8
    :goto_5c
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v210, v4

    move-object/from16 v208, v15

    move/from16 v34, v31

    move-wide/from16 v5, v212

    move-object/from16 v8, v214

    move/from16 v9, v215

    const/4 v4, 0x0

    goto/16 :goto_57

    :cond_a9
    move-wide/from16 v212, v5

    move-object/from16 v15, v208

    move-wide/from16 v4, v210

    .line 5831
    invoke-virtual/range {v209 .. v209}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v0, "Vibrator"

    move-object/from16 v8, p2

    move-object v9, v15

    move-wide/from16 v11, v212

    move/from16 v13, p4

    move-object/from16 v14, p3

    move-object v6, v15

    move-object v15, v0

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int v0, v34, v0

    .line 5833
    invoke-virtual/range {v209 .. v209}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground activities"

    move-object v9, v6

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v0, v8

    .line 5835
    invoke-virtual/range {v209 .. v209}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v10

    const-string v15, "Foreground services"

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v15}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v0, v8

    move v10, v0

    move-wide/from16 v8, v24

    const/4 v0, 0x0

    :goto_5d
    const/4 v11, 0x7

    if-ge v0, v11, :cond_ab

    move-object/from16 v13, v209

    move-wide/from16 v11, v212

    .line 5840
    invoke-virtual {v13, v0, v11, v12, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v14

    cmp-long v34, v14, v24

    if-lez v34, :cond_aa

    add-long/2addr v8, v14

    const/4 v10, 0x0

    .line 5843
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5844
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "    "

    .line 5845
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5846
    sget-object v10, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for: "

    .line 5847
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v14, v14, v18

    .line 5848
    div-long v14, v14, v16

    invoke-static {v6, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5849
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v10, v31

    :cond_aa
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v212, v11

    move-object/from16 v209, v13

    goto :goto_5d

    :cond_ab
    move-object/from16 v13, v209

    move-wide/from16 v11, v212

    cmp-long v0, v8, v24

    if-lez v0, :cond_ac

    const/4 v0, 0x0

    .line 5854
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5855
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Total running: "

    .line 5856
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v8, v8, v18

    .line 5857
    div-long v8, v8, v16

    invoke-static {v6, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5858
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5861
    :cond_ac
    invoke-virtual {v13, v2}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v8

    .line 5862
    invoke-virtual {v13, v2}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v14

    cmp-long v0, v8, v24

    if-gtz v0, :cond_ad

    cmp-long v0, v14, v24

    if-lez v0, :cond_ae

    :cond_ad
    const/4 v0, 0x0

    .line 5864
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5865
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    Total cpu time: u="

    .line 5866
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5867
    div-long v8, v8, v16

    invoke-static {v6, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v0, "s="

    .line 5868
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5869
    div-long v14, v14, v16

    invoke-static {v6, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5870
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5873
    :cond_ae
    invoke-virtual {v13, v2}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v0

    if-eqz v0, :cond_b0

    const/4 v8, 0x0

    .line 5875
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, "    Total cpu time per freq:"

    .line 5876
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    .line 5877
    :goto_5e
    array-length v9, v0

    if-ge v8, v9, :cond_af

    .line 5878
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v14, v0, v8

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    .line 5880
    :cond_af
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5882
    :cond_b0
    invoke-virtual {v13, v2}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v0

    if-eqz v0, :cond_b2

    const/4 v8, 0x0

    .line 5884
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v8, "    Total screen-off cpu time per freq:"

    .line 5885
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    .line 5886
    :goto_5f
    array-length v9, v0

    if-ge v8, v9, :cond_b1

    .line 5887
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v14, v0, v8

    invoke-virtual {v9, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_5f

    .line 5889
    :cond_b1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b2
    const/4 v0, 0x0

    :goto_60
    const/4 v8, 0x7

    if-ge v0, v8, :cond_b7

    .line 5893
    invoke-virtual {v13, v2, v0}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(II)[J

    move-result-object v8

    if-eqz v8, :cond_b4

    const/4 v9, 0x0

    .line 5895
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5896
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    Cpu times per freq at state "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v14, v14, v0

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    .line 5898
    :goto_61
    array-length v14, v8

    if-ge v9, v14, :cond_b3

    .line 5899
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v216, v3

    move-wide/from16 v217, v4

    aget-wide v3, v8, v9

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v216

    move-wide/from16 v4, v217

    goto :goto_61

    :cond_b3
    move-object/from16 v216, v3

    move-wide/from16 v217, v4

    .line 5901
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_62

    :cond_b4
    move-object/from16 v216, v3

    move-wide/from16 v217, v4

    .line 5904
    :goto_62
    invoke-virtual {v13, v2, v0}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(II)[J

    move-result-object v3

    if-eqz v3, :cond_b6

    const/4 v4, 0x0

    .line 5906
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5907
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   Screen-off cpu times per freq at state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 5909
    :goto_63
    array-length v5, v3

    if-ge v4, v5, :cond_b5

    .line 5910
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v8, v3, v4

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 5912
    :cond_b5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v216

    move-wide/from16 v4, v217

    goto/16 :goto_60

    :cond_b7
    move-object/from16 v216, v3

    move-wide/from16 v217, v4

    .line 5917
    invoke-virtual {v13}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5918
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v10

    :goto_64
    if-ltz v3, :cond_c5

    .line 5919
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Proc;

    .line 5926
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    .line 5927
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v14

    move-wide/from16 v219, v11

    .line 5928
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v10

    .line 5929
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v12

    move/from16 v221, v4

    .line 5930
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v4

    move-object/from16 v222, v13

    .line 5931
    invoke-virtual {v5, v2}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v13

    if-nez v2, :cond_b8

    .line 5933
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v34

    move/from16 v2, v34

    goto :goto_65

    :cond_b8
    const/4 v2, 0x0

    :goto_65
    cmp-long v34, v8, v24

    if-nez v34, :cond_ba

    cmp-long v34, v14, v24

    if-nez v34, :cond_ba

    cmp-long v34, v10, v24

    if-nez v34, :cond_ba

    if-nez v12, :cond_ba

    if-nez v2, :cond_ba

    if-nez v4, :cond_ba

    if-eqz v13, :cond_b9

    goto :goto_66

    :cond_b9
    move/from16 v4, v221

    const/4 v10, 0x2

    goto/16 :goto_6b

    :cond_ba
    :goto_66
    move-object/from16 v223, v5

    const/4 v5, 0x0

    .line 5937
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5938
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "    Proc "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5939
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5940
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      CPU: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5941
    invoke-static {v6, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v5, "usr + "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5942
    invoke-static {v6, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "krn ; "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5943
    invoke-static {v6, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string v5, "fg"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v12, :cond_bb

    if-nez v4, :cond_bb

    if-eqz v13, :cond_c0

    :cond_bb
    const-string v5, "\n"

    .line 5945
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "      "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_bc

    .line 5949
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " starts"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v31

    goto :goto_67

    :cond_bc
    const/4 v5, 0x0

    :goto_67
    if-eqz v4, :cond_be

    if-eqz v5, :cond_bd

    const-string v5, ", "

    .line 5953
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5956
    :cond_bd
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " crashes"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v31

    :cond_be
    if-eqz v13, :cond_c0

    if-eqz v5, :cond_bf

    const-string v4, ", "

    .line 5960
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5962
    :cond_bf
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " anrs"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5965
    :cond_c0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_68
    if-ge v4, v2, :cond_c4

    move-object/from16 v5, v223

    .line 5967
    invoke-virtual {v5, v4}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v8

    if-eqz v8, :cond_c2

    .line 5969
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v9, "      * Killed for "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5970
    iget v9, v8, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c1

    const-string v9, "cpu"

    .line 5971
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_69

    :cond_c1
    const-string/jumbo v9, "unknown"

    .line 5973
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_69
    const-string v9, " use: "

    .line 5975
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5976
    iget-wide v11, v8, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    invoke-static {v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v9, " over "

    .line 5977
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5978
    iget-wide v11, v8, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    invoke-static {v11, v12, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5979
    iget-wide v11, v8, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    cmp-long v9, v11, v24

    if-eqz v9, :cond_c3

    const-string v9, " ("

    .line 5980
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5981
    iget-wide v11, v8, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v13, 0x64

    mul-long/2addr v11, v13

    iget-wide v8, v8, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v11, v8

    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, "%)"

    .line 5982
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6a

    :cond_c2
    const/4 v10, 0x2

    :cond_c3
    :goto_6a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v223, v5

    goto :goto_68

    :cond_c4
    const/4 v10, 0x2

    move/from16 v4, v31

    :goto_6b
    add-int/lit8 v3, v3, -0x1

    move-wide/from16 v11, v219

    move-object/from16 v13, v222

    move/from16 v2, p4

    goto/16 :goto_64

    :cond_c5
    move/from16 v221, v4

    move-wide/from16 v219, v11

    move-object/from16 v222, v13

    const/4 v10, 0x2

    .line 5991
    invoke-virtual/range {v222 .. v222}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5992
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v3, v221

    :goto_6c
    if-ltz v2, :cond_cb

    .line 5993
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    Apk "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    .line 5994
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5996
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    .line 5997
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v4

    .line 5998
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    const/4 v8, 0x0

    :goto_6d
    if-ltz v5, :cond_c6

    .line 5999
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "      Wakeup alarm "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6000
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ": "

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6001
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Counter;

    move/from16 v9, p4

    invoke-virtual {v8, v9}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " times"

    .line 6002
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, -0x1

    move/from16 v8, v31

    goto :goto_6d

    :cond_c6
    move/from16 v9, p4

    .line 6005
    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v3

    .line 6006
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_6e
    if-ltz v4, :cond_c9

    .line 6007
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    move-wide/from16 v11, v91

    .line 6008
    invoke-virtual {v5, v11, v12, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v13

    .line 6009
    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v15

    .line 6010
    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v5

    cmp-long v34, v13, v24

    if-nez v34, :cond_c7

    if-nez v15, :cond_c7

    if-eqz v5, :cond_c8

    :cond_c7
    const/4 v8, 0x0

    .line 6012
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6013
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      Service "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6014
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6015
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "        Created for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6016
    div-long v13, v13, v16

    invoke-static {v6, v13, v14}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v8, "uptime\n"

    .line 6017
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6018
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "        Starts: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6019
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", launches: "

    .line 6020
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6021
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v8, v31

    :cond_c8
    add-int/lit8 v4, v4, -0x1

    move-wide/from16 v91, v11

    goto :goto_6e

    :cond_c9
    move-wide/from16 v11, v91

    const/4 v4, 0x0

    if-nez v8, :cond_ca

    .line 6026
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "      (nothing executed)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ca
    add-int/lit8 v2, v2, -0x1

    move-wide/from16 v91, v11

    move/from16 v3, v31

    goto/16 :goto_6c

    :cond_cb
    move-wide/from16 v11, v91

    const/4 v4, 0x0

    move/from16 v9, p4

    if-nez v3, :cond_cc

    .line 6031
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    (nothing executed)"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_cc
    :goto_6f
    add-int/lit8 v14, v32, 0x1

    move/from16 v2, p5

    move-object v15, v1

    move v0, v4

    move-wide/from16 v91, v11

    move/from16 v1, v20

    move-wide/from16 v113, v26

    move-wide/from16 v105, v29

    move-object/from16 v93, v216

    move-wide/from16 v96, v217

    move-wide/from16 v4, v219

    move-object/from16 v7, p0

    goto/16 :goto_2c

    :cond_cd
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    .line 7080
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 7081
    invoke-virtual {p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    and-int/lit8 p2, p4, 0x18

    if-eqz p2, :cond_0

    .line 7084
    invoke-direct {p0, v0, p4, p5, p6}, Landroid/os/BatteryStats;->dumpProtoHistoryLocked(Landroid/util/proto/ProtoOutputStream;IJ)V

    .line 7085
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :cond_0
    const-wide p5, 0x10b00000001L

    .line 7089
    invoke-virtual {v0, p5, p6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p5

    const-wide v1, 0x10500000001L

    const/16 p2, 0x20

    .line 7091
    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10300000002L

    .line 7092
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10900000003L

    .line 7093
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v1, 0x10900000004L

    .line 7094
    invoke-virtual {p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    and-int/lit8 p2, p4, 0x4

    if-nez p2, :cond_2

    .line 7097
    new-instance p2, Lcom/android/internal/os/BatteryStatsHelper;

    and-int/lit8 p4, p4, 0x40

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    move p4, v1

    :goto_0
    invoke-direct {p2, p1, v1, p4}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 7099
    invoke-virtual {p2, p0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const/4 p1, -0x1

    .line 7100
    invoke-virtual {p2, v1, p1}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 7102
    invoke-direct {p0, v0, p2, p3}, Landroid/os/BatteryStats;->dumpProtoAppsLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;Ljava/util/List;)V

    .line 7103
    invoke-direct {p0, v0, p2}, Landroid/os/BatteryStats;->dumpProtoSystemLocked(Landroid/util/proto/ProtoOutputStream;Lcom/android/internal/os/BatteryStatsHelper;)V

    .line 7106
    :cond_2
    invoke-virtual {v0, p5, p6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 7107
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method final formatBytesLocked(J)Ljava/lang/String;
    .locals 6

    .line 3026
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-wide/16 v2, 0x400

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 3029
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v0, p1, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 3031
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p1, p1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3032
    iget-object p0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v3, 0x40000000

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    .line 3034
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p1, p1

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3035
    iget-object p0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3037
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string v3, "%.2fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p1, p1

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3038
    iget-object p0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-string p0, "--%"

    return-object p0

    :cond_0
    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    .line 3020
    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3021
    iget-object p2, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string p4, "%.1f%%"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, p3

    invoke-virtual {p2, p4, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 3022
    iget-object p0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanTime(JI)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCpuFreqs()[J
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenDoze()I
.end method

.method public abstract getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getGpsBatteryDrainMaMs()J
.end method

.method public abstract getGpsSignalQualityTime(IJI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray<",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMaxLearnedBatteryCapacity()I
.end method

.method public abstract getMinLearnedBatteryCapacity()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneDataConnectionTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTimer()Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method protected abstract getPhoneSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenBrightnessTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getScreenDozeCount(I)I
.end method

.method public abstract getScreenDozeTime(JI)J
.end method

.method public abstract getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUahDischarge(I)J
.end method

.method public abstract getUahDischargeDeepDoze(I)J
.end method

.method public abstract getUahDischargeLightDoze(I)J
.end method

.method public abstract getUahDischargeScreenDoze(I)J
.end method

.method public abstract getUahDischargeScreenOff(I)J
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiActiveTime(JI)J
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiMulticastWakelockCount(I)I
.end method

.method public abstract getWifiMulticastWakelockTime(JI)J
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiSignalStrengthTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateTimer(I)Landroid/os/BatteryStats$Timer;
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .locals 0

    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
