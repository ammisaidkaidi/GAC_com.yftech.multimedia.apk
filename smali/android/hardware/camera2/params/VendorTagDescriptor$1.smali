.class Landroid/hardware/camera2/params/VendorTagDescriptor$1;
.super Ljava/lang/Object;
.source "VendorTagDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/VendorTagDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/camera2/params/VendorTagDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptor;
    .locals 2

    const/4 p0, 0x0

    .line 40
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/params/VendorTagDescriptor;

    invoke-direct {v0, p1, p0}, Landroid/hardware/camera2/params/VendorTagDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/camera2/params/VendorTagDescriptor$1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "VendorTagDescriptor"

    const-string v1, "Exception creating VendorTagDescriptor from parcel"

    .line 43
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptor;
    .locals 0

    .line 50
    new-array p0, p1, [Landroid/hardware/camera2/params/VendorTagDescriptor;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/VendorTagDescriptor$1;->newArray(I)[Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object p0

    return-object p0
.end method
