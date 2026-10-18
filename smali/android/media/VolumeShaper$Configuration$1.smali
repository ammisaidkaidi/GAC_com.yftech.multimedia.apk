.class Landroid/media/VolumeShaper$Configuration$1;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/VolumeShaper$Configuration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Configuration;
    .locals 10

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v1, :cond_0

    .line 507
    new-instance p0, Landroid/media/VolumeShaper$Configuration;

    invoke-direct {p0, v2}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    return-object p0

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 516
    new-array v7, p0, [F

    .line 517
    new-array v8, p0, [F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    aput v9, v7, v0

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    aput v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    new-instance p0, Landroid/media/VolumeShaper$Configuration;

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[FLandroid/media/VolumeShaper$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Configuration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/VolumeShaper$Configuration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/VolumeShaper$Configuration;
    .locals 0

    .line 536
    new-array p0, p1, [Landroid/media/VolumeShaper$Configuration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Configuration$1;->newArray(I)[Landroid/media/VolumeShaper$Configuration;

    move-result-object p0

    return-object p0
.end method
