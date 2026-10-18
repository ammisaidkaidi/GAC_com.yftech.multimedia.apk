.class public Lcom/android/internal/os/WakelockPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "WakelockPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WakelockPowerCalculator"


# instance fields
.field private final mPowerWakelock:D

.field private mTotalAppWakelockTimeMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    const-string v0, "cpu.idle"

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 5

    .line 37
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object p2

    .line 38
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p5

    const/4 p6, 0x0

    const-wide/16 v0, 0x0

    move-wide v1, v0

    move v0, p6

    :goto_0
    if-ge v0, p5, :cond_1

    .line 40
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 44
    invoke-virtual {v3, p6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v3, p3, p4, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x3e8

    .line 49
    div-long/2addr v1, p2

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 50
    iget-wide p2, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    iget-wide p4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr p2, p4

    iput-wide p2, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    .line 53
    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    long-to-double p2, p2

    iget-wide p4, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    mul-double/2addr p2, p4

    const-wide p4, 0x414b774000000000L    # 3600000.0

    div-double/2addr p2, p4

    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    return-void
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 4

    .line 63
    invoke-virtual {p2, p5, p6}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide p5

    const-wide/16 v0, 0x3e8

    div-long/2addr p5, v0

    .line 64
    iget-wide v2, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    .line 65
    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide p2

    div-long/2addr p2, v0

    add-long/2addr v2, p2

    sub-long/2addr p5, v2

    const-wide/16 p2, 0x0

    cmp-long p2, p5, p2

    if-lez p2, :cond_0

    long-to-double p2, p5

    .line 67
    iget-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mPowerWakelock:D

    mul-double/2addr p2, v0

    const-wide v0, 0x414b774000000000L    # 3600000.0

    div-double/2addr p2, v0

    .line 72
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr v0, p5

    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 73
    iget-wide p4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr p4, p2

    iput-wide p4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/android/internal/os/WakelockPowerCalculator;->mTotalAppWakelockTimeMs:J

    return-void
.end method
