.class public final Landroid/location/GnssClock;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:I = 0x8

.field private static final HAS_BIAS_UNCERTAINTY:I = 0x10

.field private static final HAS_DRIFT:I = 0x20

.field private static final HAS_DRIFT_UNCERTAINTY:I = 0x40

.field private static final HAS_FULL_BIAS:I = 0x4

.field private static final HAS_LEAP_SECOND:I = 0x1

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field private mBiasNanos:D

.field private mBiasUncertaintyNanos:D

.field private mDriftNanosPerSecond:D

.field private mDriftUncertaintyNanosPerSecond:D

.field private mFlags:I

.field private mFullBiasNanos:J

.field private mHardwareClockDiscontinuityCount:I

.field private mLeapSecond:I

.field private mTimeNanos:J

.field private mTimeUncertaintyNanos:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 434
    new-instance v0, Landroid/location/GnssClock$1;

    invoke-direct {v0}, Landroid/location/GnssClock$1;-><init>()V

    sput-object v0, Landroid/location/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/GnssClock;I)I
    .locals 0

    .line 28
    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return p1
.end method

.method static synthetic access$102(Landroid/location/GnssClock;I)I
    .locals 0

    .line 28
    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return p1
.end method

.method static synthetic access$202(Landroid/location/GnssClock;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/GnssClock;D)D
    .locals 0

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/GnssClock;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GnssClock;D)D
    .locals 0

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GnssClock;D)D
    .locals 0

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GnssClock;D)D
    .locals 0

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GnssClock;D)D
    .locals 0

    .line 28
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GnssClock;I)I
    .locals 0

    .line 28
    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return p1
.end method

.method private initialize()V
    .locals 2

    const/4 v0, 0x0

    .line 521
    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 522
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetLeapSecond()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 523
    invoke-virtual {p0, v0, v1}, Landroid/location/GnssClock;->setTimeNanos(J)V

    .line 524
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetTimeUncertaintyNanos()V

    .line 525
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetFullBiasNanos()V

    .line 526
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasNanos()V

    .line 527
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasUncertaintyNanos()V

    .line 528
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftNanosPerSecond()V

    .line 529
    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftUncertaintyNanosPerSecond()V

    const/high16 v0, -0x80000000

    .line 530
    invoke-virtual {p0, v0}, Landroid/location/GnssClock;->setHardwareClockDiscontinuityCount(I)V

    return-void
.end method

.method private isFlagSet(I)Z
    .locals 0

    .line 542
    iget p0, p0, Landroid/location/GnssClock;->mFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetFlag(I)V
    .locals 1

    .line 538
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .locals 1

    .line 534
    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBiasNanos()D
    .locals 2

    .line 261
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide v0
.end method

.method public getBiasUncertaintyNanos()D
    .locals 2

    .line 301
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public getDriftNanosPerSecond()D
    .locals 2

    .line 345
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide v0
.end method

.method public getDriftUncertaintyNanosPerSecond()D
    .locals 2

    .line 383
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide v0
.end method

.method public getFullBiasNanos()J
    .locals 2

    .line 219
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide v0
.end method

.method public getHardwareClockDiscontinuityCount()I
    .locals 0

    .line 422
    iget p0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return p0
.end method

.method public getLeapSecond()I
    .locals 0

    .line 105
    iget p0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return p0
.end method

.method public getTimeNanos()J
    .locals 2

    .line 140
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide v0
.end method

.method public getTimeUncertaintyNanos()D
    .locals 2

    .line 171
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide v0
.end method

.method public hasBiasNanos()Z
    .locals 1

    const/16 v0, 0x8

    .line 246
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasBiasUncertaintyNanos()Z
    .locals 1

    const/16 v0, 0x10

    .line 289
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasDriftNanosPerSecond()Z
    .locals 1

    const/16 v0, 0x20

    .line 329
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasDriftUncertaintyNanosPerSecond()Z
    .locals 1

    const/16 v0, 0x40

    .line 373
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasFullBiasNanos()Z
    .locals 1

    const/4 v0, 0x4

    .line 198
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasLeapSecond()Z
    .locals 1

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasTimeUncertaintyNanos()Z
    .locals 1

    const/4 v0, 0x2

    .line 157
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    .line 85
    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    return-void
.end method

.method public resetBiasNanos()V
    .locals 2

    const/16 v0, 0x8

    .line 280
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 281
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-void
.end method

.method public resetBiasUncertaintyNanos()V
    .locals 2

    const/16 v0, 0x10

    .line 320
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 321
    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-void
.end method

.method public resetDriftNanosPerSecond()V
    .locals 2

    const/16 v0, 0x20

    .line 364
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 365
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-void
.end method

.method public resetDriftUncertaintyNanosPerSecond()V
    .locals 2

    const/16 v0, 0x40

    .line 402
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 403
    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-void
.end method

.method public resetFullBiasNanos()V
    .locals 2

    const/4 v0, 0x4

    .line 238
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 239
    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const/high16 v0, -0x80000000

    .line 125
    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return-void
.end method

.method public resetTimeUncertaintyNanos()V
    .locals 2

    const/4 v0, 0x2

    .line 190
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 191
    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-void
.end method

.method public set(Landroid/location/GnssClock;)V
    .locals 2

    .line 67
    iget v0, p1, Landroid/location/GnssClock;->mFlags:I

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    .line 68
    iget v0, p1, Landroid/location/GnssClock;->mLeapSecond:I

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    .line 69
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 70
    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    .line 71
    iget-wide v0, p1, Landroid/location/GnssClock;->mFullBiasNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    .line 72
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    .line 73
    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    .line 74
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    .line 75
    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    .line 76
    iget p1, p1, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return-void
.end method

.method public setBiasNanos(D)V
    .locals 1

    const/16 v0, 0x8

    .line 270
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 271
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-void
.end method

.method public setBiasUncertaintyNanos(D)V
    .locals 1

    const/16 v0, 0x10

    .line 310
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 311
    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-void
.end method

.method public setDriftNanosPerSecond(D)V
    .locals 1

    const/16 v0, 0x20

    .line 354
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 355
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-void
.end method

.method public setDriftUncertaintyNanosPerSecond(D)V
    .locals 1

    const/16 v0, 0x40

    .line 392
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 393
    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-void
.end method

.method public setFullBiasNanos(J)V
    .locals 1

    const/4 v0, 0x4

    .line 228
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 229
    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-void
.end method

.method public setHardwareClockDiscontinuityCount(I)V
    .locals 0

    .line 431
    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return-void
.end method

.method public setLeapSecond(I)V
    .locals 1

    const/4 v0, 0x1

    .line 114
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 115
    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return-void
.end method

.method public setTimeNanos(J)V
    .locals 0

    .line 149
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-void
.end method

.method public setTimeUncertaintyNanos(D)V
    .locals 1

    const/4 v0, 0x2

    .line 180
    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    .line 181
    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssClock:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "   %-15s = %s\n"

    const/4 v2, 0x2

    .line 484
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "LeapSecond"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasLeapSecond()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    .line 486
    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "TimeNanos"

    aput-object v8, v4, v5

    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeNanos:J

    .line 489
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    const-string v8, "TimeUncertaintyNanos"

    aput-object v8, v4, v2

    .line 491
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasTimeUncertaintyNanos()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v6

    :goto_1
    const/4 v9, 0x3

    aput-object v8, v4, v9

    .line 486
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %s\n"

    .line 493
    new-array v4, v2, [Ljava/lang/Object;

    const-string v8, "FullBiasNanos"

    aput-object v8, v4, v5

    .line 496
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasFullBiasNanos()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-wide v10, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object v8, v6

    :goto_2
    aput-object v8, v4, v7

    .line 493
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    .line 498
    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "BiasNanos"

    aput-object v8, v4, v5

    .line 501
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v10, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v6

    :goto_3
    aput-object v8, v4, v7

    const-string v8, "BiasUncertaintyNanos"

    aput-object v8, v4, v2

    .line 503
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-wide v10, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v6

    :goto_4
    aput-object v8, v4, v9

    .line 498
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    .line 505
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "DriftNanosPerSecond"

    aput-object v4, v3, v5

    .line 508
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v10, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, v6

    :goto_5
    aput-object v4, v3, v7

    const-string v4, "DriftUncertaintyNanosPerSecond"

    aput-object v4, v3, v2

    .line 510
    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-wide v10, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    :cond_6
    aput-object v6, v3, v9

    .line 505
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %s\n"

    .line 512
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "HardwareClockDiscontinuityCount"

    aput-object v3, v2, v5

    iget p0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    .line 515
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v7

    .line 512
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 461
    iget p2, p0, Landroid/location/GnssClock;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    iget p2, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 464
    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 465
    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 466
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 467
    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 468
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 469
    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 470
    iget p0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
