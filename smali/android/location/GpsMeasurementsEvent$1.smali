.class Landroid/location/GpsMeasurementsEvent$1;
.super Ljava/lang/Object;
.source "GpsMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GpsMeasurementsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurementsEvent;
    .locals 2

    .line 110
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 112
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/GpsClock;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    new-array v0, v0, [Landroid/location/GpsMeasurement;

    .line 116
    sget-object v1, Landroid/location/GpsMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 118
    new-instance p1, Landroid/location/GpsMeasurementsEvent;

    invoke-direct {p1, p0, v0}, Landroid/location/GpsMeasurementsEvent;-><init>(Landroid/location/GpsClock;[Landroid/location/GpsMeasurement;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurementsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurementsEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/location/GpsMeasurementsEvent;
    .locals 0

    .line 123
    new-array p0, p1, [Landroid/location/GpsMeasurementsEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurementsEvent$1;->newArray(I)[Landroid/location/GpsMeasurementsEvent;

    move-result-object p0

    return-object p0
.end method
