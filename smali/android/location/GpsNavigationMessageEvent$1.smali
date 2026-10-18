.class Landroid/location/GpsNavigationMessageEvent$1;
.super Ljava/lang/Object;
.source "GpsNavigationMessageEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsNavigationMessageEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsNavigationMessageEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessageEvent;
    .locals 0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 92
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/GpsNavigationMessage;

    .line 93
    new-instance p1, Landroid/location/GpsNavigationMessageEvent;

    invoke-direct {p1, p0}, Landroid/location/GpsNavigationMessageEvent;-><init>(Landroid/location/GpsNavigationMessage;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessageEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsNavigationMessageEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/location/GpsNavigationMessageEvent;
    .locals 0

    .line 98
    new-array p0, p1, [Landroid/location/GpsNavigationMessageEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Landroid/location/GpsNavigationMessageEvent$1;->newArray(I)[Landroid/location/GpsNavigationMessageEvent;

    move-result-object p0

    return-object p0
.end method
