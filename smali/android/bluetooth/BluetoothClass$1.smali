.class Landroid/bluetooth/BluetoothClass$1;
.super Ljava/lang/Object;
.source "BluetoothClass.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothClass;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothClass;
    .locals 0

    .line 96
    new-instance p0, Landroid/bluetooth/BluetoothClass;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/bluetooth/BluetoothClass;
    .locals 0

    .line 100
    new-array p0, p1, [Landroid/bluetooth/BluetoothClass;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass$1;->newArray(I)[Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    return-object p0
.end method
