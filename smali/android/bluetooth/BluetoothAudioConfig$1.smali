.class Landroid/bluetooth/BluetoothAudioConfig$1;
.super Ljava/lang/Object;
.source "BluetoothAudioConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAudioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothAudioConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    new-instance v1, Landroid/bluetooth/BluetoothAudioConfig;

    invoke-direct {v1, p0, v0, p1}, Landroid/bluetooth/BluetoothAudioConfig;-><init>(III)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAudioConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothAudioConfig;
    .locals 0

    .line 77
    new-array p0, p1, [Landroid/bluetooth/BluetoothAudioConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAudioConfig$1;->newArray(I)[Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object p0

    return-object p0
.end method
