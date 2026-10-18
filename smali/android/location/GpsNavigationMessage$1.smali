.class Landroid/location/GpsNavigationMessage$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsNavigationMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;
    .locals 2

    .line 250
    new-instance p0, Landroid/location/GpsNavigationMessage;

    invoke-direct {p0}, Landroid/location/GpsNavigationMessage;-><init>()V

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/location/GpsNavigationMessage;->setType(B)V

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-virtual {p0, v0}, Landroid/location/GpsNavigationMessage;->setPrn(B)V

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Landroid/location/GpsNavigationMessage;->setMessageId(S)V

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Landroid/location/GpsNavigationMessage;->setSubmessageId(S)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 258
    new-array v0, v0, [B

    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 260
    invoke-virtual {p0, v0}, Landroid/location/GpsNavigationMessage;->setData([B)V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    int-to-short p1, p1

    .line 264
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage;->setStatus(S)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 266
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage;->setStatus(S)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessage;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/location/GpsNavigationMessage;
    .locals 0

    .line 274
    new-array p0, p1, [Landroid/location/GpsNavigationMessage;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessage$1;->newArray(I)[Landroid/location/GpsNavigationMessage;

    move-result-object p0

    return-object p0
.end method
