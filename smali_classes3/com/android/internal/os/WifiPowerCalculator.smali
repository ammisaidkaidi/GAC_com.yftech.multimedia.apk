.class public Lcom/android/internal/os/WifiPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WifiPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiPowerCalculator"


# instance fields
.field private final mIdleCurrentMa:D

.field private final mRxCurrentMa:D

.field private mTotalAppPowerDrain:D

.field private mTotalAppRunningTime:J

.field private final mTxCurrentMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    const-string/jumbo v0, "wifi.controller.idle"

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    const-string/jumbo v0, "wifi.controller.tx"

    .line 36
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    const-string/jumbo v0, "wifi.controller.rx"

    .line 37
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 8

    .line 43
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p4

    invoke-virtual {p4, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p4

    .line 49
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p6

    const/4 v0, 0x0

    aget-object p6, p6, v0

    invoke-virtual {p6, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 50
    invoke-virtual {p3}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p3

    invoke-virtual {p3, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    add-long v4, p4, v2

    add-long/2addr v4, v0

    .line 51
    iput-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 52
    iget-wide v4, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    long-to-double p3, p4

    .line 54
    iget-wide p5, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr p3, p5

    long-to-double p5, v0

    iget-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    mul-double/2addr p5, v0

    add-double/2addr p3, p5

    long-to-double p5, v2

    iget-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    mul-double/2addr p5, v0

    add-double/2addr p3, p5

    const-wide p5, 0x414b774000000000L    # 3600000.0

    div-double/2addr p3, p5

    iput-wide p3, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 57
    iget-wide p3, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    iget-wide p5, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr p3, p5

    iput-wide p3, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    const/4 p0, 0x2

    .line 59
    invoke-virtual {p2, p0, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide p3

    iput-wide p3, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    const/4 p3, 0x3

    .line 61
    invoke-virtual {p2, p3, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide p4

    iput-wide p4, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 63
    invoke-virtual {p2, p0, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide p4

    iput-wide p4, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 65
    invoke-virtual {p2, p3, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 8

    .line 77
    invoke-virtual {p2}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p3

    invoke-virtual {p3, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p3

    .line 80
    invoke-virtual {p2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object p5

    const/4 p6, 0x0

    aget-object p5, p5, p6

    invoke-virtual {p5, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide p5

    .line 81
    invoke-virtual {p2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v0

    add-long v2, p3, v0

    add-long/2addr v2, p5

    .line 83
    iget-wide v4, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 86
    invoke-virtual {p2}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object p2

    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v2, v4

    const-wide/16 v6, 0x0

    cmpl-double p2, v2, v6

    if-nez p2, :cond_0

    long-to-double p2, p3

    .line 90
    iget-wide v2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mIdleCurrentMa:D

    mul-double/2addr p2, v2

    long-to-double p4, p5

    iget-wide p6, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTxCurrentMa:D

    mul-double/2addr p4, p6

    add-double/2addr p2, p4

    long-to-double p4, v0

    iget-wide p6, p0, Lcom/android/internal/os/WifiPowerCalculator;->mRxCurrentMa:D

    mul-double/2addr p4, p6

    add-double/2addr p2, p4

    div-double v2, p2, v4

    .line 93
    :cond_0
    iget-wide p2, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    sub-double/2addr v2, p2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppPowerDrain:D

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Lcom/android/internal/os/WifiPowerCalculator;->mTotalAppRunningTime:J

    return-void
.end method
