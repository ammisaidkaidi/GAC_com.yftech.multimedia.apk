.class public final Landroid/bluetooth/le/PeriodicAdvertisingReport;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/PeriodicAdvertisingReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_COMPLETE:I = 0x0

.field public static final DATA_INCOMPLETE_TRUNCATED:I = 0x2


# instance fields
.field private mData:Landroid/bluetooth/le/ScanRecord;

.field private mDataStatus:I

.field private mRssi:I

.field private mSyncHandle:I

.field private mTimestampNanos:J

.field private mTxPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;

    invoke-direct {v0}, Landroid/bluetooth/le/PeriodicAdvertisingReport$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILandroid/bluetooth/le/ScanRecord;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    .line 61
    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    .line 62
    iput p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    .line 63
    iput p4, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    .line 64
    iput-object p5, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/PeriodicAdvertisingReport$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    check-cast p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 159
    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    iget v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    iget v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    iget v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    iget v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    iget-object v3, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 163
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    iget-wide p0, p1, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getData()Landroid/bluetooth/le/ScanRecord;
    .locals 0

    .line 135
    iget-object p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    return-object p0
.end method

.method public getDataStatus()I
    .locals 0

    .line 127
    iget p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    return p0
.end method

.method public getRssi()I
    .locals 0

    .line 119
    iget p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    return p0
.end method

.method public getSyncHandle()I
    .locals 0

    .line 104
    iget p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    return p0
.end method

.method public getTimestampNanos()J
    .locals 2

    .line 142
    iget-wide v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    return-wide v0
.end method

.method public getTxPower()I
    .locals 0

    .line 112
    iget p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    .line 147
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeriodicAdvertisingReport{syncHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    .line 171
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 73
    iget p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mSyncHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mTxPower:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mDataStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 78
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object p0, p0, Landroid/bluetooth/le/PeriodicAdvertisingReport;->mData:Landroid/bluetooth/le/ScanRecord;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 81
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method
