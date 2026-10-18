.class public Landroid/location/GpsClock;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:S = 0x8s

.field private static final HAS_BIAS_UNCERTAINTY:S = 0x10s

.field private static final HAS_DRIFT:S = 0x20s

.field private static final HAS_DRIFT_UNCERTAINTY:S = 0x40s

.field private static final HAS_FULL_BIAS:S = 0x4s

.field private static final HAS_LEAP_SECOND:S = 0x1s

.field private static final HAS_NO_FLAGS:S = 0x0s

.field private static final HAS_TIME_UNCERTAINTY:S = 0x2s

.field public static final TYPE_GPS_TIME:B = 0x2t

.field public static final TYPE_LOCAL_HW_TIME:B = 0x1t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mBiasInNs:D

.field private mBiasUncertaintyInNs:D

.field private mDriftInNsPerSec:D

.field private mDriftUncertaintyInNsPerSec:D

.field private mFlags:S

.field private mFullBiasInNs:J

.field private mLeapSecond:S

.field private mTimeInNs:J

.field private mTimeUncertaintyInNs:D

.field private mType:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 397
    new-instance v0, Landroid/location/GpsClock$1;

    invoke-direct {v0}, Landroid/location/GpsClock$1;-><init>()V

    sput-object v0, Landroid/location/GpsClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/GpsClock;S)S
    .locals 0

    .line 30
    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return p1
.end method

.method static synthetic access$102(Landroid/location/GpsClock;S)S
    .locals 0

    .line 30
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return p1
.end method

.method static synthetic access$202(Landroid/location/GpsClock;B)B
    .locals 0

    .line 30
    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return p1
.end method

.method static synthetic access$302(Landroid/location/GpsClock;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/GpsClock;D)D
    .locals 0

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GpsClock;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GpsClock;D)D
    .locals 0

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GpsClock;D)D
    .locals 0

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GpsClock;D)D
    .locals 0

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GpsClock;D)D
    .locals 0

    .line 30
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide p1
.end method

.method private getTypeString()Ljava/lang/String;
    .locals 2

    .line 118
    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    packed-switch v0, :pswitch_data_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "GpsTime"

    return-object p0

    :pswitch_1
    const-string p0, "LocalHwClock"

    return-object p0

    :pswitch_2
    const-string p0, "Unknown"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    const/4 v0, 0x0

    .line 480
    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 481
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetLeapSecond()V

    .line 482
    invoke-virtual {p0, v0}, Landroid/location/GpsClock;->setType(B)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 483
    invoke-virtual {p0, v0, v1}, Landroid/location/GpsClock;->setTimeInNs(J)V

    .line 484
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetTimeUncertaintyInNs()V

    .line 485
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetFullBiasInNs()V

    .line 486
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasInNs()V

    .line 487
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasUncertaintyInNs()V

    .line 488
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftInNsPerSec()V

    .line 489
    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftUncertaintyInNsPerSec()V

    return-void
.end method

.method private isFlagSet(S)Z
    .locals 0

    .line 501
    iget-short p0, p0, Landroid/location/GpsClock;->mFlags:S

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetFlag(S)V
    .locals 1

    .line 497
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    not-int p1, p1

    and-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return-void
.end method

.method private setFlag(S)V
    .locals 1

    .line 493
    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    or-int/2addr p1, v0

    int-to-short p1, p1

    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBiasInNs()D
    .locals 2

    .line 280
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide v0
.end method

.method public getBiasUncertaintyInNs()D
    .locals 2

    .line 312
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide v0
.end method

.method public getDriftInNsPerSec()D
    .locals 2

    .line 346
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide v0
.end method

.method public getDriftUncertaintyInNsPerSec()D
    .locals 2

    .line 378
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide v0
.end method

.method public getFullBiasInNs()J
    .locals 2

    .line 247
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide v0
.end method

.method public getLeapSecond()S
    .locals 0

    .line 145
    iget-short p0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return p0
.end method

.method public getTimeInNs()J
    .locals 2

    .line 182
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide v0
.end method

.method public getTimeUncertaintyInNs()D
    .locals 2

    .line 206
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide v0
.end method

.method public getType()B
    .locals 0

    .line 103
    iget-byte p0, p0, Landroid/location/GpsClock;->mType:B

    return p0
.end method

.method public hasBiasInNs()Z
    .locals 1

    const/16 v0, 0x8

    .line 270
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result p0

    return p0
.end method

.method public hasBiasUncertaintyInNs()Z
    .locals 1

    const/16 v0, 0x10

    .line 303
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result p0

    return p0
.end method

.method public hasDriftInNsPerSec()Z
    .locals 1

    const/16 v0, 0x20

    .line 335
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result p0

    return p0
.end method

.method public hasDriftUncertaintyInNsPerSec()Z
    .locals 1

    const/16 v0, 0x40

    .line 369
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result p0

    return p0
.end method

.method public hasFullBiasInNs()Z
    .locals 1

    const/4 v0, 0x4

    .line 229
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result p0

    return p0
.end method

.method public hasLeapSecond()Z
    .locals 1

    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result p0

    return p0
.end method

.method public hasTimeUncertaintyInNs()Z
    .locals 1

    const/4 v0, 0x2

    .line 196
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    .line 96
    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    return-void
.end method

.method public resetBiasInNs()V
    .locals 2

    const/16 v0, 0x8

    .line 295
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 296
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-void
.end method

.method public resetBiasUncertaintyInNs()V
    .locals 2

    const/16 v0, 0x10

    .line 327
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 328
    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-void
.end method

.method public resetDriftInNsPerSec()V
    .locals 2

    const/16 v0, 0x20

    .line 361
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 362
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-void
.end method

.method public resetDriftUncertaintyInNsPerSec()V
    .locals 2

    const/16 v0, 0x40

    .line 393
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 394
    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method public resetFullBiasInNs()V
    .locals 2

    const/4 v0, 0x4

    .line 262
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 263
    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-void
.end method

.method public resetLeapSecond()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const/16 v0, -0x8000

    .line 161
    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return-void
.end method

.method public resetTimeUncertaintyInNs()V
    .locals 2

    const/4 v0, 0x2

    .line 221
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 222
    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-void
.end method

.method public set(Landroid/location/GpsClock;)V
    .locals 2

    .line 80
    iget-short v0, p1, Landroid/location/GpsClock;->mFlags:S

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    .line 81
    iget-short v0, p1, Landroid/location/GpsClock;->mLeapSecond:S

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    .line 82
    iget-byte v0, p1, Landroid/location/GpsClock;->mType:B

    iput-byte v0, p0, Landroid/location/GpsClock;->mType:B

    .line 83
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 84
    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    .line 85
    iget-wide v0, p1, Landroid/location/GpsClock;->mFullBiasInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    .line 86
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    .line 87
    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    .line 88
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    .line 89
    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method public setBiasInNs(D)V
    .locals 1

    const/16 v0, 0x8

    .line 287
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 288
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-void
.end method

.method public setBiasUncertaintyInNs(D)V
    .locals 1

    const/16 v0, 0x10

    .line 319
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 320
    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-void
.end method

.method public setDriftInNsPerSec(D)V
    .locals 1

    const/16 v0, 0x20

    .line 353
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 354
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-void
.end method

.method public setDriftUncertaintyInNsPerSec(D)V
    .locals 1

    const/16 v0, 0x40

    .line 385
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 386
    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method public setFullBiasInNs(J)V
    .locals 1

    const/4 v0, 0x4

    .line 254
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 255
    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-void
.end method

.method public setLeapSecond(S)V
    .locals 1

    const/4 v0, 0x1

    .line 152
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 153
    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return-void
.end method

.method public setTimeInNs(J)V
    .locals 0

    .line 189
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-void
.end method

.method public setTimeUncertaintyInNs(D)V
    .locals 1

    const/4 v0, 0x2

    .line 213
    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    .line 214
    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-void
.end method

.method public setType(B)V
    .locals 0

    .line 110
    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GpsClock:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "   %-15s = %s\n"

    const/4 v2, 0x2

    .line 446
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Type"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-direct {p0}, Landroid/location/GpsClock;->getTypeString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %s\n"

    .line 448
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "LeapSecond"

    aput-object v4, v3, v5

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasLeapSecond()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    iget-short v4, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v7

    :goto_0
    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    .line 450
    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "TimeInNs"

    aput-object v8, v4, v5

    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeInNs:J

    .line 453
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v6

    const-string v8, "TimeUncertaintyInNs"

    aput-object v8, v4, v2

    .line 455
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasTimeUncertaintyInNs()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v7

    :goto_1
    const/4 v9, 0x3

    aput-object v8, v4, v9

    .line 450
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %s\n"

    .line 457
    new-array v4, v2, [Ljava/lang/Object;

    const-string v8, "FullBiasInNs"

    aput-object v8, v4, v5

    .line 460
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasFullBiasInNs()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-wide v10, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_2
    move-object v8, v7

    :goto_2
    aput-object v8, v4, v6

    .line 457
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    .line 462
    new-array v4, v3, [Ljava/lang/Object;

    const-string v8, "BiasInNs"

    aput-object v8, v4, v5

    .line 465
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasInNs()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-wide v10, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_3

    :cond_3
    move-object v8, v7

    :goto_3
    aput-object v8, v4, v6

    const-string v8, "BiasUncertaintyInNs"

    aput-object v8, v4, v2

    .line 467
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasUncertaintyInNs()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-wide v10, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v7

    :goto_4
    aput-object v8, v4, v9

    .line 462
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-15s = %-25s   %-26s = %s\n"

    .line 469
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "DriftInNsPerSec"

    aput-object v4, v3, v5

    .line 472
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftInNsPerSec()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v4, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, v7

    :goto_5
    aput-object v4, v3, v6

    const-string v4, "DriftUncertaintyInNsPerSec"

    aput-object v4, v3, v2

    .line 474
    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftUncertaintyInNsPerSec()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-wide v4, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    :cond_6
    aput-object v7, v3, v9

    .line 469
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 423
    iget-short p2, p0, Landroid/location/GpsClock;->mFlags:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget-short p2, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget-byte p2, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 426
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 427
    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 428
    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 429
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 430
    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 431
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 432
    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
