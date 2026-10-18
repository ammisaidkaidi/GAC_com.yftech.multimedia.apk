.class Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException$1;
.super Ljava/lang/Object;
.source "SystemUpdatePolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;
    .locals 2

    .line 289
    new-instance p0, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;-><init>(ILjava/lang/String;Landroid/app/admin/SystemUpdatePolicy$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;
    .locals 0

    .line 294
    new-array p0, p1, [Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 286
    invoke-virtual {p0, p1}, Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException$1;->newArray(I)[Landroid/app/admin/SystemUpdatePolicy$ValidationFailedException;

    move-result-object p0

    return-object p0
.end method
