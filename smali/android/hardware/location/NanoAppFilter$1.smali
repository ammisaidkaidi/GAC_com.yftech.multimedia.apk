.class Landroid/hardware/location/NanoAppFilter$1;
.super Ljava/lang/Object;
.source "NanoAppFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/NanoAppFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/location/NanoAppFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/NanoAppFilter;
    .locals 1

    .line 145
    new-instance p0, Landroid/hardware/location/NanoAppFilter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/location/NanoAppFilter;-><init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppFilter$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Landroid/hardware/location/NanoAppFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/NanoAppFilter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/location/NanoAppFilter;
    .locals 0

    .line 149
    new-array p0, p1, [Landroid/hardware/location/NanoAppFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-virtual {p0, p1}, Landroid/hardware/location/NanoAppFilter$1;->newArray(I)[Landroid/hardware/location/NanoAppFilter;

    move-result-object p0

    return-object p0
.end method
