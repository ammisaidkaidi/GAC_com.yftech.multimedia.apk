.class Landroid/hardware/location/ActivityChangedEvent$1;
.super Ljava/lang/Object;
.source "ActivityChangedEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ActivityChangedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/location/ActivityChangedEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ActivityChangedEvent;
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 54
    new-array p0, p0, [Landroid/hardware/location/ActivityRecognitionEvent;

    .line 56
    sget-object v0, Landroid/hardware/location/ActivityRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 58
    new-instance p1, Landroid/hardware/location/ActivityChangedEvent;

    invoke-direct {p1, p0}, Landroid/hardware/location/ActivityChangedEvent;-><init>([Landroid/hardware/location/ActivityRecognitionEvent;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityChangedEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ActivityChangedEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/location/ActivityChangedEvent;
    .locals 0

    .line 63
    new-array p0, p1, [Landroid/hardware/location/ActivityChangedEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityChangedEvent$1;->newArray(I)[Landroid/hardware/location/ActivityChangedEvent;

    move-result-object p0

    return-object p0
.end method
