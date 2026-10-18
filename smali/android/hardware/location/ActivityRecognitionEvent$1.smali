.class Landroid/hardware/location/ActivityRecognitionEvent$1;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ActivityRecognitionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/location/ActivityRecognitionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ActivityRecognitionEvent;
    .locals 3

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 58
    new-instance p1, Landroid/hardware/location/ActivityRecognitionEvent;

    invoke-direct {p1, p0, v0, v1, v2}, Landroid/hardware/location/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityRecognitionEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ActivityRecognitionEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/location/ActivityRecognitionEvent;
    .locals 0

    .line 63
    new-array p0, p1, [Landroid/hardware/location/ActivityRecognitionEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityRecognitionEvent$1;->newArray(I)[Landroid/hardware/location/ActivityRecognitionEvent;

    move-result-object p0

    return-object p0
.end method
