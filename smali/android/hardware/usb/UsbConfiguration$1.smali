.class Landroid/hardware/usb/UsbConfiguration$1;
.super Ljava/lang/Object;
.source "UsbConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbConfiguration;
    .locals 4

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    const-class v3, Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 176
    new-instance v3, Landroid/hardware/usb/UsbConfiguration;

    invoke-direct {v3, p0, v0, v1, v2}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    .line 177
    invoke-virtual {v3, p1}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/usb/UsbConfiguration;
    .locals 0

    .line 182
    new-array p0, p1, [Landroid/hardware/usb/UsbConfiguration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbConfiguration$1;->newArray(I)[Landroid/hardware/usb/UsbConfiguration;

    move-result-object p0

    return-object p0
.end method
