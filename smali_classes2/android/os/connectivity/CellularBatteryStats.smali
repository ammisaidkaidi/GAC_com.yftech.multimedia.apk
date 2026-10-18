.class public final Landroid/os/connectivity/CellularBatteryStats;
.super Ljava/lang/Object;
.source "CellularBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/CellularBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnergyConsumedMaMs:J

.field private mIdleTimeMs:J

.field private mKernelActiveTimeMs:J

.field private mLoggingDurationMs:J

.field private mNumBytesRx:J

.field private mNumBytesTx:J

.field private mNumPacketsRx:J

.field private mNumPacketsTx:J

.field private mRxTimeMs:J

.field private mSleepTimeMs:J

.field private mTimeInRatMs:[J

.field private mTimeInRxSignalStrengthLevelMs:[J

.field private mTxTimeMs:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroid/os/connectivity/CellularBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/CellularBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/CellularBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0}, Landroid/os/connectivity/CellularBatteryStats;->initialize()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-direct {p0}, Landroid/os/connectivity/CellularBatteryStats;->initialize()V

    .line 220
    invoke-virtual {p0, p1}, Landroid/os/connectivity/CellularBatteryStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/connectivity/CellularBatteryStats$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/os/connectivity/CellularBatteryStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private initialize()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 224
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    .line 225
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    .line 226
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    .line 227
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    .line 228
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    .line 229
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    .line 230
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    .line 231
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    .line 232
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    .line 233
    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    const/16 v2, 0x15

    .line 234
    new-array v2, v2, [J

    iput-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    .line 235
    iget-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v2, 0x5

    .line 236
    new-array v3, v2, [J

    iput-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    .line 237
    iget-object v3, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 238
    new-array v2, v2, [J

    iput-object v2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    .line 239
    iget-object p0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEnergyConsumedMaMs()J
    .locals 2

    .line 132
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public getIdleTimeMs()J
    .locals 2

    .line 124
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    return-wide v0
.end method

.method public getKernelActiveTimeMs()J
    .locals 2

    .line 100
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    return-wide v0
.end method

.method public getLoggingDurationMs()J
    .locals 2

    .line 96
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public getNumBytesRx()J
    .locals 2

    .line 116
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public getNumBytesTx()J
    .locals 2

    .line 108
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public getNumPacketsRx()J
    .locals 2

    .line 112
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public getNumPacketsTx()J
    .locals 2

    .line 104
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public getRxTimeMs()J
    .locals 2

    .line 128
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    return-wide v0
.end method

.method public getSleepTimeMs()J
    .locals 2

    .line 120
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    return-wide v0
.end method

.method public getTimeInRatMs()[J
    .locals 0

    .line 136
    iget-object p0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    return-object p0
.end method

.method public getTimeInRxSignalStrengthLevelMs()[J
    .locals 0

    .line 140
    iget-object p0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    return-object p0
.end method

.method public getTxTimeMs()[J
    .locals 0

    .line 144
    iget-object p0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    .line 90
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 91
    iget-object v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 92
    iget-object p0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readLongArray([J)V

    return-void
.end method

.method public setEnergyConsumedMaMs(J)V
    .locals 0

    .line 193
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    return-void
.end method

.method public setIdleTimeMs(J)V
    .locals 0

    .line 183
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    return-void
.end method

.method public setKernelActiveTimeMs(J)V
    .locals 0

    .line 153
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    return-void
.end method

.method public setLoggingDurationMs(J)V
    .locals 0

    .line 148
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    return-void
.end method

.method public setNumBytesRx(J)V
    .locals 0

    .line 173
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    return-void
.end method

.method public setNumBytesTx(J)V
    .locals 0

    .line 163
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    return-void
.end method

.method public setNumPacketsRx(J)V
    .locals 0

    .line 168
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    return-void
.end method

.method public setNumPacketsTx(J)V
    .locals 0

    .line 158
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    return-void
.end method

.method public setRxTimeMs(J)V
    .locals 0

    .line 188
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    return-void
.end method

.method public setSleepTimeMs(J)V
    .locals 0

    .line 178
    iput-wide p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    return-void
.end method

.method public setTimeInRatMs([J)V
    .locals 2

    .line 198
    array-length v0, p1

    const/16 v1, 0x15

    .line 199
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 198
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    return-void
.end method

.method public setTimeInRxSignalStrengthLevelMs([J)V
    .locals 2

    .line 204
    array-length v0, p1

    const/4 v1, 0x5

    .line 205
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 204
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    return-void
.end method

.method public setTxTimeMs([J)V
    .locals 2

    .line 210
    array-length v0, p1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 64
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mKernelActiveTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mSleepTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Landroid/os/connectivity/CellularBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-object p2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRatMs:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 75
    iget-object p2, p0, Landroid/os/connectivity/CellularBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 76
    iget-object p0, p0, Landroid/os/connectivity/CellularBatteryStats;->mTxTimeMs:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
