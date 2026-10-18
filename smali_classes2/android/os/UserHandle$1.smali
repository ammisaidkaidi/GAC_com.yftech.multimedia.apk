.class Landroid/os/UserHandle$1;
.super Ljava/lang/Object;
.source "UserHandle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/UserHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;
    .locals 0

    .line 471
    new-instance p0, Landroid/os/UserHandle;

    invoke-direct {p0, p1}, Landroid/os/UserHandle;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-virtual {p0, p1}, Landroid/os/UserHandle$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/UserHandle;
    .locals 0

    .line 475
    new-array p0, p1, [Landroid/os/UserHandle;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-virtual {p0, p1}, Landroid/os/UserHandle$1;->newArray(I)[Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method
