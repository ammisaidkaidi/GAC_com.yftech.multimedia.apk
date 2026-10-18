.class public final Landroid/os/connectivity/WifiBatteryStats;
.super Ljava/lang/Object;
.source "WifiBatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/connectivity/WifiBatteryStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEnergyConsumedMaMs:J

.field private mIdleTimeMs:J

.field private mKernelActiveTimeMs:J

.field private mLoggingDurationMs:J

.field private mNumAppScanRequest:J

.field private mNumBytesRx:J

.field private mNumBytesTx:J

.field private mNumPacketsRx:J

.field private mNumPacketsTx:J

.field private mRxTimeMs:J

.field private mScanTimeMs:J

.field private mSleepTimeMs:J

.field private mTimeInRxSignalStrengthLevelMs:[J

.field private mTimeInStateMs:[J

.field private mTimeInSupplicantStateMs:[J

.field private mTxTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroid/os/connectivity/WifiBatteryStats$1;

    invoke-direct {v0}, Landroid/os/connectivity/WifiBatteryStats$1;-><init>()V

    sput-object v0, Landroid/os/connectivity/WifiBatteryStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-direct {p0}, Landroid/os/connectivity/WifiBatteryStats;->initialize()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    invoke-direct {p0}, Landroid/os/connectivity/WifiBatteryStats;->initialize()V

    .line 254
    invoke-virtual {p0, p1}, Landroid/os/connectivity/WifiBatteryStats;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/connectivity/WifiBatteryStats$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroid/os/connectivity/WifiBatteryStats;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private initialize()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 258
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMs:J

    .line 259
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMs:J

    .line 260
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    .line 261
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    .line 262
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    .line 263
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    .line 264
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMs:J

    .line 265
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMs:J

    .line 266
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMs:J

    .line 267
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMs:J

    .line 268
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMs:J

    .line 269
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMs:J

    .line 270
    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumAppScanRequest:J

    const/16 v2, 0x8

    .line 271
    new-array v2, v2, [J

    iput-object v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMs:[J

    .line 272
    iget-object v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMs:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    const/4 v2, 0x5

    .line 273
    new-array v2, v2, [J

    iput-object v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    .line 274
    iget-object v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    const/16 v2, 0xd

    .line 275
    new-array v2, v2, [J

    iput-object v2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMs:[J

    .line 276
    iget-object p0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMs:[J

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

    .line 146
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMs:J

    return-wide v0
.end method

.method public getIdleTimeMs()J
    .locals 2

    .line 134
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMs:J

    return-wide v0
.end method

.method public getKernelActiveTimeMs()J
    .locals 2

    .line 106
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMs:J

    return-wide v0
.end method

.method public getLoggingDurationMs()J
    .locals 2

    .line 102
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMs:J

    return-wide v0
.end method

.method public getNumAppScanRequest()J
    .locals 2

    .line 150
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumAppScanRequest:J

    return-wide v0
.end method

.method public getNumBytesRx()J
    .locals 2

    .line 122
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    return-wide v0
.end method

.method public getNumBytesTx()J
    .locals 2

    .line 114
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    return-wide v0
.end method

.method public getNumPacketsRx()J
    .locals 2

    .line 118
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    return-wide v0
.end method

.method public getNumPacketsTx()J
    .locals 2

    .line 110
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    return-wide v0
.end method

.method public getRxTimeMs()J
    .locals 2

    .line 138
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMs:J

    return-wide v0
.end method

.method public getScanTimeMs()J
    .locals 2

    .line 130
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMs:J

    return-wide v0
.end method

.method public getSleepTimeMs()J
    .locals 2

    .line 126
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMs:J

    return-wide v0
.end method

.method public getTimeInRxSignalStrengthLevelMs()[J
    .locals 0

    .line 158
    iget-object p0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    return-object p0
.end method

.method public getTimeInStateMs()[J
    .locals 0

    .line 154
    iget-object p0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMs:[J

    return-object p0
.end method

.method public getTimeInSupplicantStateMs()[J
    .locals 0

    .line 162
    iget-object p0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMs:[J

    return-object p0
.end method

.method public getTxTimeMs()J
    .locals 2

    .line 142
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMs:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMs:J

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMs:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMs:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMs:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMs:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMs:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMs:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMs:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumAppScanRequest:J

    .line 96
    iget-object v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 97
    iget-object v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 98
    iget-object p0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMs:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readLongArray([J)V

    return-void
.end method

.method public setEnergyConsumedMaMs(J)V
    .locals 0

    .line 221
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMs:J

    return-void
.end method

.method public setIdleTimeMs(J)V
    .locals 0

    .line 206
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMs:J

    return-void
.end method

.method public setKernelActiveTimeMs(J)V
    .locals 0

    .line 171
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMs:J

    return-void
.end method

.method public setLoggingDurationMs(J)V
    .locals 0

    .line 166
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMs:J

    return-void
.end method

.method public setNumAppScanRequest(J)V
    .locals 0

    .line 226
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumAppScanRequest:J

    return-void
.end method

.method public setNumBytesRx(J)V
    .locals 0

    .line 191
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    return-void
.end method

.method public setNumBytesTx(J)V
    .locals 0

    .line 181
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    return-void
.end method

.method public setNumPacketsRx(J)V
    .locals 0

    .line 186
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    return-void
.end method

.method public setNumPacketsTx(J)V
    .locals 0

    .line 176
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    return-void
.end method

.method public setRxTimeMs(J)V
    .locals 0

    .line 211
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMs:J

    return-void
.end method

.method public setScanTimeMs(J)V
    .locals 0

    .line 201
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMs:J

    return-void
.end method

.method public setSleepTimeMs(J)V
    .locals 0

    .line 196
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMs:J

    return-void
.end method

.method public setTimeInRxSignalStrengthLevelMs([J)V
    .locals 2

    .line 237
    array-length v0, p1

    const/4 v1, 0x5

    .line 238
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 237
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    return-void
.end method

.method public setTimeInStateMs([J)V
    .locals 2

    .line 231
    array-length v0, p1

    const/16 v1, 0x8

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 231
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMs:[J

    return-void
.end method

.method public setTimeInSupplicantStateMs([J)V
    .locals 2

    .line 243
    array-length v0, p1

    const/16 v1, 0xd

    .line 244
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 243
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object p1

    iput-object p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMs:[J

    return-void
.end method

.method public setTxTimeMs(J)V
    .locals 0

    .line 216
    iput-wide p1, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMs:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 64
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mLoggingDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 65
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mKernelActiveTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 66
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesTx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumPacketsRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumBytesRx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mSleepTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mScanTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mIdleTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mRxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTxTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mEnergyConsumedMaMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v0, p0, Landroid/os/connectivity/WifiBatteryStats;->mNumAppScanRequest:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-object p2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInStateMs:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 78
    iget-object p2, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInRxSignalStrengthLevelMs:[J

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 79
    iget-object p0, p0, Landroid/os/connectivity/WifiBatteryStats;->mTimeInSupplicantStateMs:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
