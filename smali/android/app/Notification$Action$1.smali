.class Landroid/app/Notification$Action$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/Notification$Action;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/Notification$Action;
    .locals 1

    .line 1744
    new-instance p0, Landroid/app/Notification$Action;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Action;-><init>(Landroid/os/Parcel;Landroid/app/Notification$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1742
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/Notification$Action;
    .locals 0

    .line 1747
    new-array p0, p1, [Landroid/app/Notification$Action;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1742
    invoke-virtual {p0, p1}, Landroid/app/Notification$Action$1;->newArray(I)[Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method
