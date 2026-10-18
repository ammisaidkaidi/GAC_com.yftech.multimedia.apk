.class Landroid/app/timezone/DistroFormatVersion$1;
.super Ljava/lang/Object;
.source "DistroFormatVersion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/DistroFormatVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/timezone/DistroFormatVersion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/DistroFormatVersion;
    .locals 1

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 52
    new-instance v0, Landroid/app/timezone/DistroFormatVersion;

    invoke-direct {v0, p0, p1}, Landroid/app/timezone/DistroFormatVersion;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/timezone/DistroFormatVersion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezone/DistroFormatVersion;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/timezone/DistroFormatVersion;
    .locals 0

    .line 56
    new-array p0, p1, [Landroid/app/timezone/DistroFormatVersion;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/timezone/DistroFormatVersion$1;->newArray(I)[Landroid/app/timezone/DistroFormatVersion;

    move-result-object p0

    return-object p0
.end method
