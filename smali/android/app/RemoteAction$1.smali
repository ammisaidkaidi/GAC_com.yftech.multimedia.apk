.class Landroid/app/RemoteAction$1;
.super Ljava/lang/Object;
.source "RemoteAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/RemoteAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/RemoteAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/RemoteAction;
    .locals 0

    .line 158
    new-instance p0, Landroid/app/RemoteAction;

    invoke-direct {p0, p1}, Landroid/app/RemoteAction;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Landroid/app/RemoteAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/RemoteAction;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/RemoteAction;
    .locals 0

    .line 161
    new-array p0, p1, [Landroid/app/RemoteAction;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Landroid/app/RemoteAction$1;->newArray(I)[Landroid/app/RemoteAction;

    move-result-object p0

    return-object p0
.end method
