.class public Landroid/bluetooth/SdpMnsRecord;
.super Ljava/lang/Object;
.source "SdpMnsRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mL2capPsm:I

.field private final mProfileVersion:I

.field private final mRfcommChannelNumber:I

.field private final mServiceName:Ljava/lang/String;

.field private final mSupportedFeatures:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Landroid/bluetooth/SdpMnsRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpMnsRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpMnsRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    .line 34
    iput p2, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    .line 35
    iput p4, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    .line 36
    iput-object p5, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    .line 37
    iput p3, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getL2capPsm()I
    .locals 0

    .line 56
    iget p0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    return p0
.end method

.method public getProfileVersion()I
    .locals 0

    .line 72
    iget p0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    return p0
.end method

.method public getRfcommChannelNumber()I
    .locals 0

    .line 60
    iget p0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    return p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedFeatures()I
    .locals 0

    .line 64
    iget p0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Bluetooth MNS SDP Record:\n"

    .line 87
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "RFCOMM Chan Number: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    if-eq v1, v2, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "L2CAP PSM: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Service Name: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_2
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    if-eq v1, v2, :cond_3

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Supported features: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :cond_3
    iget v1, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    if-eq v1, v2, :cond_4

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Profile_version: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 77
    iget p2, p0, Landroid/bluetooth/SdpMnsRecord;->mRfcommChannelNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget p2, p0, Landroid/bluetooth/SdpMnsRecord;->mL2capPsm:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object p2, p0, Landroid/bluetooth/SdpMnsRecord;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget p2, p0, Landroid/bluetooth/SdpMnsRecord;->mSupportedFeatures:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget p0, p0, Landroid/bluetooth/SdpMnsRecord;->mProfileVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
