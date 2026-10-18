.class public Lcom/android/internal/os/MobileRadioPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MobileRadioPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MobileRadioPowerController"


# instance fields
.field private final mPowerBins:[D

.field private final mPowerRadioOn:D

.field private final mPowerScan:D

.field private mStats:Landroid/os/BatteryStats;

.field private mTotalAppMobileActiveMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V
    .locals 11

    .line 52
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const/4 v0, 0x5

    .line 26
    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    const-string/jumbo v0, "radio.active"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 54
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v0, v3, v1

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 56
    iput-wide v3, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    goto :goto_1

    :cond_0
    const-string v0, "modem.controller.rx"

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v3, v5

    move v0, v7

    .line 60
    :goto_0
    iget-object v9, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v9, v9

    if-ge v0, v9, :cond_1

    const-string v9, "modem.controller.tx"

    .line 61
    invoke-virtual {p1, v9, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v9

    add-double/2addr v3, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v0, v0

    add-int/2addr v0, v8

    int-to-double v9, v0

    div-double/2addr v3, v9

    iput-wide v3, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    :goto_1
    const-string/jumbo v0, "radio.on"

    .line 66
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v3

    cmpl-double v0, v3, v1

    if-eqz v0, :cond_2

    .line 68
    :goto_2
    iget-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v0, v0

    if-ge v7, v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    const-string/jumbo v1, "radio.on"

    invoke-virtual {p1, v1, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v1

    aput-wide v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "modem.controller.idle"

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    .line 73
    iget-object v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    const-wide/high16 v3, 0x4039000000000000L    # 25.0

    mul-double/2addr v3, v0

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v3, v9

    aput-wide v3, v2, v7

    .line 74
    :goto_3
    iget-object v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v2, v2

    if-ge v8, v2, :cond_3

    .line 75
    iget-object v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x4070000000000000L    # 256.0

    div-double v9, v0, v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    aput-wide v3, v2, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "radio.scanning"

    .line 79
    invoke-virtual {p1, v0, v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    .line 80
    iput-object p2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method private getMobilePowerPerPacket(JI)D
    .locals 8

    .line 36
    iget-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v2

    .line 38
    iget-object v4, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p3}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v4

    .line 40
    iget-object v6, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, p3}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 44
    iget-object p0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    const-wide/16 p2, 0x0

    cmp-long v6, v4, p2

    if-eqz v6, :cond_0

    cmp-long p2, p0, p2

    if-eqz p2, :cond_0

    long-to-double p2, v4

    long-to-double p0, p0

    div-double/2addr p2, p0

    goto :goto_0

    :cond_0
    const-wide p2, 0x40286a0000000000L    # 12.20703125

    :goto_0
    div-double/2addr v0, p2

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 4

    const/4 p5, 0x0

    .line 87
    invoke-virtual {p2, p5, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    const/4 p6, 0x1

    .line 89
    invoke-virtual {p2, p6, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 91
    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 92
    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v0

    iput v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 93
    invoke-virtual {p2, p5, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 95
    invoke-virtual {p2, p6, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide p5

    iput-wide p5, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 98
    iget-wide p5, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    const-wide/16 v0, 0x0

    cmp-long p2, p5, v0

    if-lez p2, :cond_0

    .line 101
    iget-wide p2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    iget-wide p4, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr p2, p4

    iput-wide p2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    .line 102
    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double p2, p2

    iget-wide p4, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    mul-double/2addr p2, p4

    const-wide p4, 0x414b774000000000L    # 3600000.0

    div-double/2addr p2, p4

    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    goto :goto_0

    .line 106
    :cond_0
    iget-wide p5, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr p5, v0

    long-to-double p5, p5

    .line 107
    invoke-direct {p0, p3, p4, p7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->getMobilePowerPerPacket(JI)D

    move-result-wide p2

    mul-double/2addr p5, p2

    iput-wide p5, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    :goto_0
    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p7

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    .line 123
    :goto_0
    iget-object v6, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    array-length v6, v6

    const-wide v17, 0x414b774000000000L    # 3600000.0

    const-wide/16 v19, 0x3e8

    if-ge v10, v6, :cond_1

    .line 124
    invoke-virtual {v2, v10, v3, v4, v5}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v6

    div-long v6, v6, v19

    long-to-double v8, v6

    move-wide/from16 v21, v15

    .line 126
    iget-object v15, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    aget-wide v19, v15, v10

    mul-double v8, v8, v19

    div-double v8, v8, v17

    add-double/2addr v11, v8

    add-long/2addr v13, v6

    if-nez v10, :cond_0

    move-wide v15, v6

    goto :goto_1

    :cond_0
    move-wide/from16 v15, v21

    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move-wide/from16 v21, v15

    .line 138
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v6

    div-long v6, v6, v19

    long-to-double v6, v6

    .line 140
    iget-wide v8, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    mul-double/2addr v6, v8

    div-double v6, v6, v17

    add-double/2addr v11, v6

    .line 146
    iget-object v6, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v6, v3, v4, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v3

    div-long v3, v3, v19

    .line 147
    iget-wide v6, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    sub-long/2addr v3, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_2

    .line 149
    iget-wide v8, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    long-to-double v6, v3

    mul-double/2addr v8, v6

    div-double v8, v8, v17

    add-double/2addr v11, v8

    :cond_2
    const-wide/16 v6, 0x0

    cmpl-double v0, v11, v6

    if-eqz v0, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v0, v13, v6

    if-eqz v0, :cond_3

    move-wide/from16 v8, v21

    long-to-double v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    long-to-double v8, v13

    div-double/2addr v6, v8

    .line 154
    iput-wide v6, v1, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    .line 156
    :cond_3
    iput-wide v3, v1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 157
    invoke-virtual {v2, v5}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    move-result v0

    iput v0, v1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 158
    iput-wide v11, v1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    :cond_4
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 164
    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    return-void
.end method

.method public reset(Landroid/os/BatteryStats;)V
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset()V

    .line 169
    iput-object p1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    return-void
.end method
