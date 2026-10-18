.class Landroid/hardware/usb/UsbEndpoint$1;
.super Ljava/lang/Object;
.source "UsbEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbEndpoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbEndpoint;
    .locals 3

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 143
    new-instance v2, Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {v2, p0, v0, v1, p1}, Landroid/hardware/usb/UsbEndpoint;-><init>(IIII)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbEndpoint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbEndpoint;
    .locals 0

    .line 147
    new-array p0, p1, [Landroid/hardware/usb/UsbEndpoint;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbEndpoint$1;->newArray(I)[Landroid/hardware/usb/UsbEndpoint;

    move-result-object p0

    return-object p0
.end method
