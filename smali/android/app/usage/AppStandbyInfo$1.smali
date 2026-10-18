.class Landroid/app/usage/AppStandbyInfo$1;
.super Ljava/lang/Object;
.source "AppStandbyInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/AppStandbyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/usage/AppStandbyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/AppStandbyInfo;
    .locals 1

    .line 56
    new-instance p0, Landroid/app/usage/AppStandbyInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/usage/AppStandbyInfo;-><init>(Landroid/os/Parcel;Landroid/app/usage/AppStandbyInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/usage/AppStandbyInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/usage/AppStandbyInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/app/usage/AppStandbyInfo;
    .locals 0

    .line 61
    new-array p0, p1, [Landroid/app/usage/AppStandbyInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/usage/AppStandbyInfo$1;->newArray(I)[Landroid/app/usage/AppStandbyInfo;

    move-result-object p0

    return-object p0
.end method
