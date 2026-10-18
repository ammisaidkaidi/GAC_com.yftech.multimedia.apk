.class public Lcom/android/internal/os/MediaPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MediaPowerCalculator.java"


# static fields
.field private static final MS_IN_HR:I = 0x36ee80


# instance fields
.field private final mAudioAveragePowerMa:D

.field private final mVideoAveragePowerMa:D


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    const-string v0, "audio"

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MediaPowerCalculator;->mAudioAveragePowerMa:D

    const-string/jumbo v0, "video"

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/MediaPowerCalculator;->mVideoAveragePowerMa:D

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move/from16 v4, p7

    .line 40
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    const-wide v6, 0x414b774000000000L    # 3600000.0

    const-wide/16 v8, 0x3e8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    if-nez v5, :cond_0

    .line 42
    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    .line 43
    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v5, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    div-long/2addr v14, v8

    .line 46
    iput-wide v14, v1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    long-to-double v14, v14

    .line 47
    iget-wide v8, v0, Lcom/android/internal/os/MediaPowerCalculator;->mAudioAveragePowerMa:D

    mul-double/2addr v14, v8

    div-double/2addr v14, v6

    iput-wide v14, v1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    .line 51
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v5

    if-nez v5, :cond_1

    .line 53
    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    .line 54
    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v5, v2, v3, v4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 57
    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    long-to-double v2, v2

    .line 58
    iget-wide v4, v0, Lcom/android/internal/os/MediaPowerCalculator;->mVideoAveragePowerMa:D

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    iput-wide v2, v1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    :goto_1
    return-void
.end method
