.class Landroid/accounts/AccountManagerResponse$1;
.super Ljava/lang/Object;
.source "AccountManagerResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/accounts/AccountManagerResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/accounts/AccountManagerResponse;
    .locals 0

    .line 72
    new-instance p0, Landroid/accounts/AccountManagerResponse;

    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManagerResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/accounts/AccountManagerResponse;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/accounts/AccountManagerResponse;
    .locals 0

    .line 76
    new-array p0, p1, [Landroid/accounts/AccountManagerResponse;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManagerResponse$1;->newArray(I)[Landroid/accounts/AccountManagerResponse;

    move-result-object p0

    return-object p0
.end method
