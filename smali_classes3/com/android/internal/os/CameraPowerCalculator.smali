.class public Lcom/android/internal/os/CameraPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CameraPowerCalculator.java"


# instance fields
.field private final mCameraPowerOnAvg:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string v0, "camera.avg"

    .line 29
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/CameraPowerCalculator;->mCameraPowerOnAvg:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 0

    .line 38
    invoke-virtual {p2}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2, p3, p4, p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p2

    const-wide/16 p4, 0x3e8

    div-long/2addr p2, p4

    .line 41
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    long-to-double p2, p2

    .line 42
    iget-wide p4, p0, Lcom/android/internal/os/CameraPowerCalculator;->mCameraPowerOnAvg:D

    mul-double/2addr p2, p4

    const-wide p4, 0x414b774000000000L    # 3600000.0

    div-double/2addr p2, p4

    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    .line 44
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    const-wide/16 p2, 0x0

    .line 45
    iput-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    :goto_0
    return-void
.end method
