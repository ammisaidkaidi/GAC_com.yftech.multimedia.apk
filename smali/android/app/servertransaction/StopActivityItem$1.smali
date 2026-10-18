.class Landroid/app/servertransaction/StopActivityItem$1;
.super Ljava/lang/Object;
.source "StopActivityItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/StopActivityItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/servertransaction/StopActivityItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/StopActivityItem;
    .locals 1

    .line 101
    new-instance p0, Landroid/app/servertransaction/StopActivityItem;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/Parcel;Landroid/app/servertransaction/StopActivityItem$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/StopActivityItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/servertransaction/StopActivityItem;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/servertransaction/StopActivityItem;
    .locals 0

    .line 105
    new-array p0, p1, [Landroid/app/servertransaction/StopActivityItem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/StopActivityItem$1;->newArray(I)[Landroid/app/servertransaction/StopActivityItem;

    move-result-object p0

    return-object p0
.end method
