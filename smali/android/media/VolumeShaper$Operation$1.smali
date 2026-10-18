.class Landroid/media/VolumeShaper$Operation$1;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/VolumeShaper$Operation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Operation;
    .locals 3

    .line 1186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 1187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 1190
    new-instance v1, Landroid/media/VolumeShaper$Operation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p1, v2}, Landroid/media/VolumeShaper$Operation;-><init>(IIFLandroid/media/VolumeShaper$1;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1182
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Operation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Operation;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/VolumeShaper$Operation;
    .locals 0

    .line 1198
    new-array p0, p1, [Landroid/media/VolumeShaper$Operation;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1182
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Operation$1;->newArray(I)[Landroid/media/VolumeShaper$Operation;

    move-result-object p0

    return-object p0
.end method
