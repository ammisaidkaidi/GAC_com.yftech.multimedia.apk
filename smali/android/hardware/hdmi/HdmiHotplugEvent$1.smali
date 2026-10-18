.class Landroid/hardware/hdmi/HdmiHotplugEvent$1;
.super Ljava/lang/Object;
.source "HdmiHotplugEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiHotplugEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/hdmi/HdmiHotplugEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiHotplugEvent;
    .locals 1

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    new-instance p1, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {p1, p0, v0}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/hdmi/HdmiHotplugEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/hdmi/HdmiHotplugEvent;
    .locals 0

    .line 103
    new-array p0, p1, [Landroid/hardware/hdmi/HdmiHotplugEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroid/hardware/hdmi/HdmiHotplugEvent$1;->newArray(I)[Landroid/hardware/hdmi/HdmiHotplugEvent;

    move-result-object p0

    return-object p0
.end method
