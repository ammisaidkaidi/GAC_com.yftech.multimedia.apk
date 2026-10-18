.class Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;
.super Ljava/lang/Object;
.source "BluetoothAvrcpPlayerSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothAvrcpPlayerSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 1

    .line 124
    new-instance p0, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings;-><init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothAvrcpPlayerSettings;
    .locals 0

    .line 128
    new-array p0, p1, [Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAvrcpPlayerSettings$1;->newArray(I)[Landroid/bluetooth/BluetoothAvrcpPlayerSettings;

    move-result-object p0

    return-object p0
.end method
