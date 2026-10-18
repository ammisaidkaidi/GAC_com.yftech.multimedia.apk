.class public Lcom/android/internal/os/SensorPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "SensorPowerCalculator.java"


# instance fields
.field private final mGpsPower:D

.field private final mSensors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;Landroid/os/BatteryStats;JI)V
    .locals 6

    .line 32
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const/4 v0, -0x1

    .line 33
    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-wide v3, p4

    move v5, p6

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/SensorPowerCalculator;->getAverageGpsPower(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;JI)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPower:D

    return-void
.end method

.method private getAverageGpsPower(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;JI)D
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "gps.on"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 71
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePowerOrDefault(Ljava/lang/String;D)D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_0

    return-wide v4

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v6, v2

    const-wide/16 v8, 0x0

    :goto_0
    const/4 v10, 0x2

    if-ge v1, v10, :cond_1

    move-object/from16 v10, p2

    move-wide/from16 v11, p3

    move/from16 v13, p5

    .line 79
    invoke-virtual {v10, v1, v11, v12, v13}, Landroid/os/BatteryStats;->getGpsSignalQualityTime(IJI)J

    move-result-wide v14

    add-long/2addr v6, v14

    const-string v4, "gps.signalqualitybased"

    .line 81
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    long-to-double v14, v14

    mul-double/2addr v4, v14

    add-double/2addr v8, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    cmp-long v0, v6, v2

    if-eqz v0, :cond_2

    long-to-double v0, v6

    div-double v4, v8, v0

    move-wide/from16 v16, v4

    goto :goto_1

    :cond_2
    const-wide/16 v16, 0x0

    :goto_1
    return-wide v16
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 8

    .line 41
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object p2

    .line 42
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p5

    const/4 p6, 0x0

    move v0, p6

    :goto_0
    if-ge v0, p5, :cond_3

    .line 44
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$Uid$Sensor;

    .line 45
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 46
    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 47
    invoke-virtual {v1, p3, p4, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const/16 v1, -0x2710

    if-eq v2, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v5, p6

    :goto_1
    if-ge v5, v1, :cond_2

    .line 57
    iget-object v6, p0, Lcom/android/internal/os/SensorPowerCalculator;->mSensors:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    .line 58
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getHandle()I

    move-result v7

    if-ne v7, v2, :cond_0

    .line 59
    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    long-to-float v3, v3

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getPower()F

    move-result v4

    mul-float/2addr v3, v4

    const v4, 0x4a5bba00    # 3600000.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    add-double/2addr v1, v3

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    :cond_1
    iput-wide v3, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    .line 52
    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    long-to-double v1, v1

    iget-wide v3, p0, Lcom/android/internal/os/SensorPowerCalculator;->mGpsPower:D

    mul-double/2addr v1, v3

    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double/2addr v1, v3

    iput-wide v1, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
