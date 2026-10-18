.class public Landroid/net/WifiLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "WifiLinkQualityInfo.java"


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mRssi:I

.field private mTxBad:J

.field private mTxGood:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    const v0, 0x7fffffff

    .line 29
    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    .line 34
    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    const-wide v0, 0x7fffffffffffffffL

    .line 37
    iput-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    .line 38
    iput-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/WifiLinkQualityInfo;
    .locals 3

    .line 61
    new-instance v0, Landroid/net/WifiLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/WifiLinkQualityInfo;-><init>()V

    .line 63
    invoke-virtual {v0, p0}, Landroid/net/WifiLinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    .line 65
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mType:I

    .line 66
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    .line 67
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    .line 68
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    .line 70
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public getRssi()I
    .locals 0

    .line 110
    iget p0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return p0
.end method

.method public getTxBad()J
    .locals 2

    .line 140
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-wide v0
.end method

.method public getTxGood()J
    .locals 2

    .line 125
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    .line 80
    iget p0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return p0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 117
    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    return-void
.end method

.method public setTxBad(J)V
    .locals 0

    .line 147
    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    return-void
.end method

.method public setTxGood(J)V
    .locals 0

    .line 132
    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 87
    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 v0, 0x2

    .line 46
    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 48
    iget p2, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget p2, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-object p0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
