.class public Lcom/android/internal/os/WifiPowerEstimator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerEstimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerEstimator"


# instance fields
.field private mTotalAppWifiRunningTimeMs:J

.field private final mWifiPowerBatchScan:D

.field private final mWifiPowerOn:D

.field private final mWifiPowerPerPacket:D

.field private final mWifiPowerScan:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 34
    invoke-static {p1}, Lcom/android/internal/os/WifiPowerEstimator;->getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    const-string/jumbo v0, "wifi.on"

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    const-string/jumbo v0, "wifi.scan"

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    const-string/jumbo v0, "wifi.batchedscan"

    .line 37
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    return-void
.end method

.method private static getWifiPowerPerPacket(Lcom/android/internal/os/PowerProfile;)D
    .locals 4

    const-string/jumbo v0, "wifi.active"

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    const-wide v2, 0x404e848000000000L    # 61.03515625

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p7

    const/4 v6, 0x2

    .line 53
    invoke-virtual {v2, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    const/4 v7, 0x3

    .line 55
    invoke-virtual {v2, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 57
    invoke-virtual {v2, v6, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 59
    invoke-virtual {v2, v7, v5}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 62
    iget-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerPerPacket:D

    mul-double/2addr v6, v8

    .line 65
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 66
    iget-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    iget-wide v12, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v8, v12

    iput-wide v8, v0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    .line 67
    iget-wide v8, v1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    long-to-double v8, v8

    iget-wide v12, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    mul-double/2addr v8, v12

    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double/2addr v8, v12

    .line 69
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v14

    div-long/2addr v14, v10

    long-to-double v14, v14

    .line 70
    iget-wide v10, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerScan:D

    mul-double/2addr v14, v10

    div-double/2addr v14, v12

    const-wide/16 v10, 0x0

    const/16 v18, 0x0

    move-wide/from16 v22, v10

    move/from16 v10, v18

    move-wide/from16 v18, v22

    :goto_0
    const/4 v11, 0x5

    if-ge v10, v11, :cond_0

    .line 75
    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v20

    const-wide/16 v16, 0x3e8

    div-long v12, v20, v16

    long-to-double v11, v12

    .line 76
    iget-wide v2, v0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerBatchScan:D

    mul-double/2addr v11, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v11, v2

    add-double v18, v18, v11

    add-int/lit8 v10, v10, 0x1

    move-wide v12, v2

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    goto :goto_0

    :cond_0
    add-double/2addr v6, v8

    add-double/2addr v6, v14

    add-double v6, v6, v18

    .line 80
    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 0

    .line 90
    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    .line 92
    iget-wide p4, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    sub-long p4, p2, p4

    long-to-double p4, p4

    iget-wide p6, p0, Lcom/android/internal/os/WifiPowerEstimator;->mWifiPowerOn:D

    mul-double/2addr p4, p6

    const-wide p6, 0x414b774000000000L    # 3600000.0

    div-double/2addr p4, p6

    .line 94
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    const-wide/16 p2, 0x0

    .line 95
    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerEstimator;->mTotalAppWifiRunningTimeMs:J

    return-void
.end method
