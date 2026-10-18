.class Landroid/hardware/camera2/CaptureRequest$1;
.super Ljava/lang/Object;
.source "CaptureRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CaptureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/camera2/CaptureRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/CaptureRequest;
    .locals 1

    .line 493
    new-instance p0, Landroid/hardware/camera2/CaptureRequest;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CaptureRequest;-><init>(Landroid/hardware/camera2/CaptureRequest$1;)V

    .line 494
    invoke-static {p0, p1}, Landroid/hardware/camera2/CaptureRequest;->access$100(Landroid/hardware/camera2/CaptureRequest;Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 490
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    .line 501
    new-array p0, p1, [Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 490
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$1;->newArray(I)[Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method
