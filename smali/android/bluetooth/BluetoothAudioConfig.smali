.class public final Landroid/bluetooth/BluetoothAudioConfig;
.super Ljava/lang/Object;
.source "BluetoothAudioConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothAudioConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAudioFormat:I

.field private final mChannelConfig:I

.field private final mSampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/bluetooth/BluetoothAudioConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAudioConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    .line 37
    iput p2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    .line 38
    iput p3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 43
    instance-of v0, p1, Landroid/bluetooth/BluetoothAudioConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 44
    check-cast p1, Landroid/bluetooth/BluetoothAudioConfig;

    .line 45
    iget v0, p1, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    iget v2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    iget v2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    if-ne v0, v2, :cond_0

    iget p1, p1, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    iget p0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getAudioFormat()I
    .locals 0

    .line 114
    iget p0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    return p0
.end method

.method public getChannelConfig()I
    .locals 0

    .line 104
    iget p0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    return p0
.end method

.method public getSampleRate()I
    .locals 0

    .line 94
    iget p0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 53
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iget p0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    shl-int/lit8 p0, p0, 0x1c

    or-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mSampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mChannelConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mAudioFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 83
    iget p2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget p2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget p0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
