.class public Landroid/location/GpsMeasurement;
.super Ljava/lang/Object;
.source "GpsMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final ADR_ALL:S = 0x7s

.field public static final ADR_STATE_CYCLE_SLIP:S = 0x4s

.field public static final ADR_STATE_RESET:S = 0x2s

.field public static final ADR_STATE_UNKNOWN:S = 0x0s

.field public static final ADR_STATE_VALID:S = 0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final GPS_MEASUREMENT_HAS_UNCORRECTED_PSEUDORANGE_RATE:I = 0x40000

.field private static final HAS_AZIMUTH:I = 0x8

.field private static final HAS_AZIMUTH_UNCERTAINTY:I = 0x10

.field private static final HAS_BIT_NUMBER:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_CODE_PHASE:I = 0x80

.field private static final HAS_CODE_PHASE_UNCERTAINTY:I = 0x100

.field private static final HAS_DOPPLER_SHIFT:I = 0x8000

.field private static final HAS_DOPPLER_SHIFT_UNCERTAINTY:I = 0x10000

.field private static final HAS_ELEVATION:I = 0x2

.field private static final HAS_ELEVATION_UNCERTAINTY:I = 0x4

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_PSEUDORANGE:I = 0x20

.field private static final HAS_PSEUDORANGE_UNCERTAINTY:I = 0x40

.field private static final HAS_SNR:I = 0x1

.field private static final HAS_TIME_FROM_LAST_BIT:I = 0x4000

.field private static final HAS_USED_IN_FIX:I = 0x20000

.field public static final LOSS_OF_LOCK_CYCLE_SLIP:B = 0x2t

.field public static final LOSS_OF_LOCK_OK:B = 0x1t

.field public static final LOSS_OF_LOCK_UNKNOWN:B = 0x0t

.field public static final MULTIPATH_INDICATOR_DETECTED:B = 0x1t

.field public static final MULTIPATH_INDICATOR_NOT_USED:B = 0x2t

.field public static final MULTIPATH_INDICATOR_UNKNOWN:B = 0x0t

.field private static final STATE_ALL:S = 0x1fs

.field public static final STATE_BIT_SYNC:S = 0x2s

.field public static final STATE_CODE_LOCK:S = 0x1s

.field public static final STATE_MSEC_AMBIGUOUS:S = 0x10s

.field public static final STATE_SUBFRAME_SYNC:S = 0x4s

.field public static final STATE_TOW_DECODED:S = 0x8s

.field public static final STATE_UNKNOWN:S


# instance fields
.field private mAccumulatedDeltaRangeInMeters:D

.field private mAccumulatedDeltaRangeState:S

.field private mAccumulatedDeltaRangeUncertaintyInMeters:D

.field private mAzimuthInDeg:D

.field private mAzimuthUncertaintyInDeg:D

.field private mBitNumber:I

.field private mCarrierCycles:J

.field private mCarrierFrequencyInHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0InDbHz:D

.field private mCodePhaseInChips:D

.field private mCodePhaseUncertaintyInChips:D

.field private mDopplerShiftInHz:D

.field private mDopplerShiftUncertaintyInHz:D

.field private mElevationInDeg:D

.field private mElevationUncertaintyInDeg:D

.field private mFlags:I

.field private mLossOfLock:B

.field private mMultipathIndicator:B

.field private mPrn:B

.field private mPseudorangeInMeters:D

.field private mPseudorangeRateInMetersPerSec:D

.field private mPseudorangeRateUncertaintyInMetersPerSec:D

.field private mPseudorangeUncertaintyInMeters:D

.field private mReceivedGpsTowInNs:J

.field private mReceivedGpsTowUncertaintyInNs:J

.field private mSnrInDb:D

.field private mState:S

.field private mTimeFromLastBitInMs:S

.field private mTimeOffsetInNs:D

.field private mUsedInFix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1160
    new-instance v0, Landroid/location/GpsMeasurement$1;

    invoke-direct {v0}, Landroid/location/GpsMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GpsMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    return-void
.end method

.method static synthetic access$002(Landroid/location/GpsMeasurement;I)I
    .locals 0

    .line 29
    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return p1
.end method

.method static synthetic access$1002(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide p1
.end method

.method static synthetic access$102(Landroid/location/GpsMeasurement;B)B
    .locals 0

    .line 29
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return p1
.end method

.method static synthetic access$1102(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide p1
.end method

.method static synthetic access$1202(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide p1
.end method

.method static synthetic access$1302(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide p1
.end method

.method static synthetic access$1402(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide p1
.end method

.method static synthetic access$1502(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide p1
.end method

.method static synthetic access$1602(Landroid/location/GpsMeasurement;F)F
    .locals 0

    .line 29
    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return p1
.end method

.method static synthetic access$1702(Landroid/location/GpsMeasurement;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method static synthetic access$1802(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method static synthetic access$1902(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method static synthetic access$2002(Landroid/location/GpsMeasurement;B)B
    .locals 0

    .line 29
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return p1
.end method

.method static synthetic access$202(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide p1
.end method

.method static synthetic access$2102(Landroid/location/GpsMeasurement;I)I
    .locals 0

    .line 29
    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return p1
.end method

.method static synthetic access$2202(Landroid/location/GpsMeasurement;S)S
    .locals 0

    .line 29
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return p1
.end method

.method static synthetic access$2302(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide p1
.end method

.method static synthetic access$2402(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide p1
.end method

.method static synthetic access$2502(Landroid/location/GpsMeasurement;B)B
    .locals 0

    .line 29
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return p1
.end method

.method static synthetic access$2602(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method static synthetic access$2702(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide p1
.end method

.method static synthetic access$2802(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide p1
.end method

.method static synthetic access$2902(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide p1
.end method

.method static synthetic access$3002(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/GpsMeasurement;S)S
    .locals 0

    .line 29
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return p1
.end method

.method static synthetic access$3102(Landroid/location/GpsMeasurement;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return p1
.end method

.method static synthetic access$402(Landroid/location/GpsMeasurement;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide p1
.end method

.method static synthetic access$502(Landroid/location/GpsMeasurement;J)J
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide p1
.end method

.method static synthetic access$702(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide p1
.end method

.method static synthetic access$802(Landroid/location/GpsMeasurement;D)D
    .locals 0

    .line 29
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide p1
.end method

.method static synthetic access$902(Landroid/location/GpsMeasurement;S)S
    .locals 0

    .line 29
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return p1
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .locals 4

    .line 441
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    if-nez v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    .line 444
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const-string v1, "Valid|"

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_1
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const-string v1, "Reset|"

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    :cond_2
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const-string v1, "CycleSlip|"

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_3
    iget-short p0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    and-int/lit8 p0, p0, -0x8

    if-lez p0, :cond_4

    const-string v1, "Other("

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")|"

    .line 458
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLossOfLockString()Ljava/lang/String;
    .locals 2

    .line 795
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    packed-switch v0, :pswitch_data_0

    .line 803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "CycleSlip"

    return-object p0

    :pswitch_1
    const-string p0, "Ok"

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

.method private getMultipathIndicatorString()Ljava/lang/String;
    .locals 2

    .line 960
    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    packed-switch v0, :pswitch_data_0

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "NotUsed"

    return-object p0

    :pswitch_1
    const-string p0, "Detected"

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

.method private getStateString()Ljava/lang/String;
    .locals 4

    .line 289
    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    if-nez v0, :cond_0

    const-string p0, "Unknown"

    return-object p0

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const-string v1, "CodeLock|"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_1
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_2

    const-string v1, "BitSync|"

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_2
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/4 v3, 0x4

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const-string v1, "SubframeSync|"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_3
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    const-string v1, "TowDecoded|"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_4
    iget-short v1, p0, Landroid/location/GpsMeasurement;->mState:S

    const/16 v3, 0x10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_5

    const-string v1, "MsecAmbiguous"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_5
    iget-short p0, p0, Landroid/location/GpsMeasurement;->mState:S

    and-int/lit8 p0, p0, -0x20

    if-lez p0, :cond_6

    const-string v1, "Other("

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")|"

    .line 312
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initialize()V
    .locals 3

    const/4 v0, 0x0

    .line 1368
    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    const/16 v1, -0x80

    .line 1369
    invoke-virtual {p0, v1}, Landroid/location/GpsMeasurement;->setPrn(B)V

    const-wide/high16 v1, -0x3c20000000000000L    # -9.223372036854776E18

    .line 1370
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setTimeOffsetInNs(D)V

    .line 1371
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setState(S)V

    const-wide/high16 v1, -0x8000000000000000L

    .line 1372
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setReceivedGpsTowInNs(J)V

    const-wide v1, 0x7fffffffffffffffL

    .line 1373
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setReceivedGpsTowUncertaintyInNs(J)V

    const-wide/16 v1, 0x1

    .line 1374
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setCn0InDbHz(D)V

    .line 1375
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setPseudorangeRateInMetersPerSec(D)V

    .line 1376
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setPseudorangeRateUncertaintyInMetersPerSec(D)V

    .line 1377
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeState(S)V

    .line 1378
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeInMeters(D)V

    .line 1379
    invoke-virtual {p0, v1, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeUncertaintyInMeters(D)V

    .line 1380
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeInMeters()V

    .line 1381
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeUncertaintyInMeters()V

    .line 1382
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseInChips()V

    .line 1383
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseUncertaintyInChips()V

    .line 1384
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierFrequencyInHz()V

    .line 1385
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierCycles()V

    .line 1386
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhase()V

    .line 1387
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhaseUncertainty()V

    .line 1388
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setLossOfLock(B)V

    .line 1389
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetBitNumber()V

    .line 1390
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetTimeFromLastBitInMs()V

    .line 1391
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftInHz()V

    .line 1392
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftUncertaintyInHz()V

    .line 1393
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setMultipathIndicator(B)V

    .line 1394
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetSnrInDb()V

    .line 1395
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationInDeg()V

    .line 1396
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationUncertaintyInDeg()V

    .line 1397
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthInDeg()V

    .line 1398
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthUncertaintyInDeg()V

    .line 1399
    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setUsedInFix(Z)V

    return-void
.end method

.method private isFlagSet(I)Z
    .locals 0

    .line 1411
    iget p0, p0, Landroid/location/GpsMeasurement;->mFlags:I

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

    .line 1407
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .locals 1

    .line 1403
    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAccumulatedDeltaRangeInMeters()D
    .locals 2

    .line 476
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()S
    .locals 0

    .line 426
    iget-short p0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return p0
.end method

.method public getAccumulatedDeltaRangeUncertaintyInMeters()D
    .locals 2

    .line 493
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getAzimuthInDeg()D
    .locals 2

    .line 1089
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide v0
.end method

.method public getAzimuthUncertaintyInDeg()D
    .locals 2

    .line 1124
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide v0
.end method

.method public getBitNumber()I
    .locals 0

    .line 820
    iget p0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return p0
.end method

.method public getCarrierCycles()J
    .locals 2

    .line 687
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyInHz()F
    .locals 0

    .line 654
    iget p0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return p0
.end method

.method public getCarrierPhase()D
    .locals 2

    .line 724
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .locals 2

    .line 757
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0InDbHz()D
    .locals 2

    .line 361
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide v0
.end method

.method public getCodePhaseInChips()D
    .locals 2

    .line 588
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide v0
.end method

.method public getCodePhaseUncertaintyInChips()D
    .locals 2

    .line 621
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide v0
.end method

.method public getDopplerShiftInHz()D
    .locals 2

    .line 889
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide v0
.end method

.method public getDopplerShiftUncertaintyInHz()D
    .locals 2

    .line 922
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide v0
.end method

.method public getElevationInDeg()D
    .locals 2

    .line 1019
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide v0
.end method

.method public getElevationUncertaintyInDeg()D
    .locals 2

    .line 1054
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide v0
.end method

.method public getLossOfLock()B
    .locals 0

    .line 780
    iget-byte p0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return p0
.end method

.method public getMultipathIndicator()B
    .locals 0

    .line 945
    iget-byte p0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return p0
.end method

.method public getPrn()B
    .locals 0

    .line 235
    iget-byte p0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return p0
.end method

.method public getPseudorangeInMeters()D
    .locals 2

    .line 519
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide v0
.end method

.method public getPseudorangeRateInMetersPerSec()D
    .locals 2

    .line 385
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyInMetersPerSec()D
    .locals 2

    .line 410
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeUncertaintyInMeters()D
    .locals 2

    .line 553
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getReceivedGpsTowInNs()J
    .locals 2

    .line 330
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide v0
.end method

.method public getReceivedGpsTowUncertaintyInNs()J
    .locals 2

    .line 344
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .locals 2

    .line 985
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()S
    .locals 0

    .line 274
    iget-short p0, p0, Landroid/location/GpsMeasurement;->mState:S

    return p0
.end method

.method public getTimeFromLastBitInMs()S
    .locals 0

    .line 853
    iget-short p0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return p0
.end method

.method public getTimeOffsetInNs()D
    .locals 2

    .line 257
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide v0
.end method

.method public hasAzimuthInDeg()Z
    .locals 1

    const/16 v0, 0x8

    .line 1077
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasAzimuthUncertaintyInDeg()Z
    .locals 1

    const/16 v0, 0x10

    .line 1112
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasBitNumber()Z
    .locals 1

    const/16 v0, 0x2000

    .line 811
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasCarrierCycles()Z
    .locals 1

    const/16 v0, 0x400

    .line 677
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasCarrierFrequencyInHz()Z
    .locals 1

    const/16 v0, 0x200

    .line 644
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasCarrierPhase()Z
    .locals 1

    const/16 v0, 0x800

    .line 710
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1

    const/16 v0, 0x1000

    .line 747
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasCodePhaseInChips()Z
    .locals 1

    const/16 v0, 0x80

    .line 576
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasCodePhaseUncertaintyInChips()Z
    .locals 1

    const/16 v0, 0x100

    .line 611
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasDopplerShiftInHz()Z
    .locals 1

    const v0, 0x8000

    .line 876
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasDopplerShiftUncertaintyInHz()Z
    .locals 1

    const/high16 v0, 0x10000

    .line 912
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasElevationInDeg()Z
    .locals 1

    const/4 v0, 0x2

    .line 1008
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasElevationUncertaintyInDeg()Z
    .locals 1

    const/4 v0, 0x4

    .line 1042
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasPseudorangeInMeters()Z
    .locals 1

    const/16 v0, 0x20

    .line 509
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasPseudorangeUncertaintyInMeters()Z
    .locals 1

    const/16 v0, 0x40

    .line 542
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasSnrInDb()Z
    .locals 1

    const/4 v0, 0x1

    .line 976
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public hasTimeFromLastBitInMs()Z
    .locals 1

    const/16 v0, 0x4000

    .line 843
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    return p0
.end method

.method public isPseudorangeRateCorrected()Z
    .locals 1

    const/high16 v0, 0x40000

    .line 402
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isUsedInFix()Z
    .locals 0

    .line 1150
    iget-boolean p0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return p0
.end method

.method public reset()V
    .locals 0

    .line 227
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    return-void
.end method

.method public resetAzimuthInDeg()V
    .locals 2

    const/16 v0, 0x8

    .line 1104
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1105
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-void
.end method

.method public resetAzimuthUncertaintyInDeg()V
    .locals 2

    const/16 v0, 0x10

    .line 1139
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1140
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-void
.end method

.method public resetBitNumber()V
    .locals 1

    const/16 v0, 0x2000

    .line 835
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const/high16 v0, -0x80000000

    .line 836
    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return-void
.end method

.method public resetCarrierCycles()V
    .locals 2

    const/16 v0, 0x400

    .line 702
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 703
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public resetCarrierFrequencyInHz()V
    .locals 1

    const/16 v0, 0x200

    .line 669
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 670
    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return-void
.end method

.method public resetCarrierPhase()V
    .locals 2

    const/16 v0, 0x800

    .line 739
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 740
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .locals 2

    const/16 v0, 0x1000

    .line 772
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 773
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public resetCodePhaseInChips()V
    .locals 2

    const/16 v0, 0x80

    .line 603
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 604
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-void
.end method

.method public resetCodePhaseUncertaintyInChips()V
    .locals 2

    const/16 v0, 0x100

    .line 636
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 637
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-void
.end method

.method public resetDopplerShiftInHz()V
    .locals 2

    const v0, 0x8000

    .line 904
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 905
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-void
.end method

.method public resetDopplerShiftUncertaintyInHz()V
    .locals 2

    const/high16 v0, 0x10000

    .line 937
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 938
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-void
.end method

.method public resetElevationInDeg()V
    .locals 2

    const/4 v0, 0x2

    .line 1034
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1035
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-void
.end method

.method public resetElevationUncertaintyInDeg()V
    .locals 2

    const/4 v0, 0x4

    .line 1069
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1070
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-void
.end method

.method public resetPseudorangeInMeters()V
    .locals 2

    const/16 v0, 0x20

    .line 534
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 535
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-void
.end method

.method public resetPseudorangeUncertaintyInMeters()V
    .locals 2

    const/16 v0, 0x40

    .line 568
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 569
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-void
.end method

.method public resetSnrInDb()V
    .locals 2

    const/4 v0, 0x1

    .line 1000
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 1001
    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-void
.end method

.method public resetTimeFromLastBitInMs()V
    .locals 1

    const/16 v0, 0x4000

    .line 868
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const/16 v0, -0x8000

    .line 869
    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return-void
.end method

.method public set(Landroid/location/GpsMeasurement;)V
    .locals 2

    .line 187
    iget v0, p1, Landroid/location/GpsMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    .line 188
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mPrn:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    .line 189
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    .line 190
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    .line 191
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 192
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 193
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    .line 194
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 195
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 197
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    .line 198
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 199
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 201
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    .line 202
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    .line 203
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    .line 204
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    .line 205
    iget v0, p1, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    .line 206
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    .line 207
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    .line 208
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    .line 209
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mLossOfLock:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    .line 210
    iget v0, p1, Landroid/location/GpsMeasurement;->mBitNumber:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    .line 211
    iget-short v0, p1, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    .line 212
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    .line 213
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    .line 214
    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    .line 215
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    .line 216
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    .line 217
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    .line 218
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    .line 219
    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    .line 220
    iget-boolean p1, p1, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return-void
.end method

.method public setAccumulatedDeltaRangeInMeters(D)V
    .locals 0

    .line 483
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-void
.end method

.method public setAccumulatedDeltaRangeState(S)V
    .locals 0

    .line 433
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyInMeters(D)V
    .locals 0

    .line 502
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-void
.end method

.method public setAzimuthInDeg(D)V
    .locals 1

    const/16 v0, 0x8

    .line 1096
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1097
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-void
.end method

.method public setAzimuthUncertaintyInDeg(D)V
    .locals 1

    const/16 v0, 0x10

    .line 1131
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1132
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-void
.end method

.method public setBitNumber(I)V
    .locals 1

    const/16 v0, 0x2000

    .line 827
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 828
    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return-void
.end method

.method public setCarrierCycles(J)V
    .locals 1

    const/16 v0, 0x400

    .line 694
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 695
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public setCarrierFrequencyInHz(F)V
    .locals 1

    const/16 v0, 0x200

    .line 661
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 662
    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return-void
.end method

.method public setCarrierPhase(D)V
    .locals 1

    const/16 v0, 0x800

    .line 731
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 732
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .locals 1

    const/16 v0, 0x1000

    .line 764
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 765
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public setCn0InDbHz(D)V
    .locals 0

    .line 368
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-void
.end method

.method public setCodePhaseInChips(D)V
    .locals 1

    const/16 v0, 0x80

    .line 595
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 596
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-void
.end method

.method public setCodePhaseUncertaintyInChips(D)V
    .locals 1

    const/16 v0, 0x100

    .line 628
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 629
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-void
.end method

.method public setDopplerShiftInHz(D)V
    .locals 1

    const v0, 0x8000

    .line 896
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 897
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-void
.end method

.method public setDopplerShiftUncertaintyInHz(D)V
    .locals 1

    const/high16 v0, 0x10000

    .line 929
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 930
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-void
.end method

.method public setElevationInDeg(D)V
    .locals 1

    const/4 v0, 0x2

    .line 1026
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1027
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-void
.end method

.method public setElevationUncertaintyInDeg(D)V
    .locals 1

    const/4 v0, 0x4

    .line 1061
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 1062
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-void
.end method

.method public setLossOfLock(B)V
    .locals 0

    .line 787
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return-void
.end method

.method public setMultipathIndicator(B)V
    .locals 0

    .line 952
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return-void
.end method

.method public setPrn(B)V
    .locals 0

    .line 242
    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return-void
.end method

.method public setPseudorangeInMeters(D)V
    .locals 1

    const/16 v0, 0x20

    .line 526
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 527
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-void
.end method

.method public setPseudorangeRateInMetersPerSec(D)V
    .locals 0

    .line 392
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-void
.end method

.method public setPseudorangeRateUncertaintyInMetersPerSec(D)V
    .locals 0

    .line 417
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-void
.end method

.method public setPseudorangeUncertaintyInMeters(D)V
    .locals 1

    const/16 v0, 0x40

    .line 560
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 561
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-void
.end method

.method public setReceivedGpsTowInNs(J)V
    .locals 0

    .line 337
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-void
.end method

.method public setReceivedGpsTowUncertaintyInNs(J)V
    .locals 0

    .line 351
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-void
.end method

.method public setSnrInDb(D)V
    .locals 1

    const/4 v0, 0x1

    .line 992
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 993
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-void
.end method

.method public setState(S)V
    .locals 0

    .line 281
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return-void
.end method

.method public setTimeFromLastBitInMs(S)V
    .locals 1

    const/16 v0, 0x4000

    .line 860
    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    .line 861
    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return-void
.end method

.method public setTimeOffsetInNs(D)V
    .locals 0

    .line 264
    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-void
.end method

.method public setUsedInFix(Z)V
    .locals 0

    .line 1157
    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GpsMeasurement:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "   %-29s = %s\n"

    const/4 v2, 0x2

    .line 1253
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Prn"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-byte v4, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1255
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "TimeOffsetInNs"

    aput-object v4, v3, v5

    iget-wide v7, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1257
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "State"

    aput-object v4, v3, v5

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    .line 1259
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "ReceivedGpsTowInNs"

    aput-object v7, v4, v5

    iget-wide v7, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    .line 1262
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "ReceivedGpsTowUncertaintyInNs"

    aput-object v7, v4, v2

    iget-wide v7, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    .line 1264
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v4, v8

    .line 1259
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1266
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "Cn0InDbHz"

    aput-object v7, v4, v5

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1268
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "PseudorangeRateInMetersPerSec"

    aput-object v7, v4, v5

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    .line 1271
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "PseudorangeRateUncertaintyInMetersPerSec"

    aput-object v7, v4, v2

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    .line 1273
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v8

    .line 1268
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1274
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "PseudorangeRateIsCorrected"

    aput-object v7, v4, v5

    .line 1277
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->isPseudorangeRateCorrected()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1274
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1279
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "AccumulatedDeltaRangeState"

    aput-object v7, v4, v5

    .line 1282
    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1279
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1284
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "AccumulatedDeltaRangeInMeters"

    aput-object v7, v4, v5

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    .line 1287
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "AccumulatedDeltaRangeUncertaintyInMeters"

    aput-object v7, v4, v2

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    .line 1289
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v8

    .line 1284
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1291
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "PseudorangeInMeters"

    aput-object v7, v4, v5

    .line 1294
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeInMeters()Z

    move-result v7

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v9

    :goto_0
    aput-object v7, v4, v6

    const-string v7, "PseudorangeUncertaintyInMeters"

    aput-object v7, v4, v2

    .line 1296
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeUncertaintyInMeters()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v9

    :goto_1
    aput-object v7, v4, v8

    .line 1291
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1298
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "CodePhaseInChips"

    aput-object v7, v4, v5

    .line 1301
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseInChips()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_2

    :cond_2
    move-object v7, v9

    :goto_2
    aput-object v7, v4, v6

    const-string v7, "CodePhaseUncertaintyInChips"

    aput-object v7, v4, v2

    .line 1303
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseUncertaintyInChips()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v9

    :goto_3
    aput-object v7, v4, v8

    .line 1298
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1305
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "CarrierFrequencyInHz"

    aput-object v7, v4, v5

    .line 1308
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierFrequencyInHz()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_4

    :cond_4
    move-object v7, v9

    :goto_4
    aput-object v7, v4, v6

    .line 1305
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1310
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "CarrierCycles"

    aput-object v7, v4, v5

    .line 1313
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierCycles()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object v7, v9

    :goto_5
    aput-object v7, v4, v6

    .line 1310
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1315
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "CarrierPhase"

    aput-object v7, v4, v5

    .line 1318
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhase()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_6

    :cond_6
    move-object v7, v9

    :goto_6
    aput-object v7, v4, v6

    const-string v7, "CarrierPhaseUncertainty"

    aput-object v7, v4, v2

    .line 1320
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_7

    :cond_7
    move-object v7, v9

    :goto_7
    aput-object v7, v4, v8

    .line 1315
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1322
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "LossOfLock"

    aput-object v7, v4, v5

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getLossOfLockString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1324
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "BitNumber"

    aput-object v7, v4, v5

    .line 1327
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasBitNumber()Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_8

    :cond_8
    move-object v7, v9

    :goto_8
    aput-object v7, v4, v6

    .line 1324
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1329
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "TimeFromLastBitInMs"

    aput-object v7, v4, v5

    .line 1332
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasTimeFromLastBitInMs()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-short v7, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    goto :goto_9

    :cond_9
    move-object v7, v9

    :goto_9
    aput-object v7, v4, v6

    .line 1329
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1334
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "DopplerShiftInHz"

    aput-object v7, v4, v5

    .line 1337
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftInHz()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_a

    :cond_a
    move-object v7, v9

    :goto_a
    aput-object v7, v4, v6

    const-string v7, "DopplerShiftUncertaintyInHz"

    aput-object v7, v4, v2

    .line 1339
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftUncertaintyInHz()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_b

    :cond_b
    move-object v7, v9

    :goto_b
    aput-object v7, v4, v8

    .line 1334
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1341
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "MultipathIndicator"

    aput-object v7, v4, v5

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1343
    new-array v4, v2, [Ljava/lang/Object;

    const-string v7, "SnrInDb"

    aput-object v7, v4, v5

    .line 1346
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasSnrInDb()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_c

    :cond_c
    move-object v7, v9

    :goto_c
    aput-object v7, v4, v6

    .line 1343
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1348
    new-array v4, v3, [Ljava/lang/Object;

    const-string v7, "ElevationInDeg"

    aput-object v7, v4, v5

    .line 1351
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationInDeg()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_d

    :cond_d
    move-object v7, v9

    :goto_d
    aput-object v7, v4, v6

    const-string v7, "ElevationUncertaintyInDeg"

    aput-object v7, v4, v2

    .line 1353
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationUncertaintyInDeg()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    goto :goto_e

    :cond_e
    move-object v7, v9

    :goto_e
    aput-object v7, v4, v8

    .line 1348
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %-25s   %-40s = %s\n"

    .line 1355
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "AzimuthInDeg"

    aput-object v4, v3, v5

    .line 1358
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthInDeg()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-wide v10, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_f

    :cond_f
    move-object v4, v9

    :goto_f
    aput-object v4, v3, v6

    const-string v4, "AzimuthUncertaintyInDeg"

    aput-object v4, v3, v2

    .line 1360
    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthUncertaintyInDeg()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-wide v9, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    :cond_10
    aput-object v9, v3, v8

    .line 1355
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   %-29s = %s\n"

    .line 1362
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "UsedInFix"

    aput-object v3, v2, v5

    iget-boolean p0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1208
    iget p2, p0, Landroid/location/GpsMeasurement;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    iget-byte p2, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1210
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1211
    iget-short p2, p0, Landroid/location/GpsMeasurement;->mState:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1213
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1214
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1215
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1216
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1217
    iget-short p2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1219
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1220
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1221
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1222
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1223
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1224
    iget p2, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1225
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1226
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1227
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1228
    iget-byte p2, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1229
    iget p2, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    iget-short p2, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1232
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1233
    iget-byte p2, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1234
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1235
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1236
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1237
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1238
    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1239
    iget-boolean p0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
