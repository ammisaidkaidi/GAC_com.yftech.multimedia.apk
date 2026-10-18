.class Landroid/app/admin/ConnectEvent$1;
.super Ljava/lang/Object;
.source "ConnectEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ConnectEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/ConnectEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ConnectEvent;
    .locals 2

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    .line 82
    :cond_0
    new-instance p0, Landroid/app/admin/ConnectEvent;

    invoke-direct {p0, p1, v0}, Landroid/app/admin/ConnectEvent;-><init>(Landroid/os/Parcel;Landroid/app/admin/ConnectEvent$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/admin/ConnectEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ConnectEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/admin/ConnectEvent;
    .locals 0

    .line 87
    new-array p0, p1, [Landroid/app/admin/ConnectEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroid/app/admin/ConnectEvent$1;->newArray(I)[Landroid/app/admin/ConnectEvent;

    move-result-object p0

    return-object p0
.end method
