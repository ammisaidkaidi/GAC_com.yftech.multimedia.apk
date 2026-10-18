.class Landroid/accounts/AuthenticatorDescription$1;
.super Ljava/lang/Object;
.source "AuthenticatorDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AuthenticatorDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/accounts/AuthenticatorDescription;
    .locals 1

    .line 137
    new-instance p0, Landroid/accounts/AuthenticatorDescription;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/accounts/AuthenticatorDescription;-><init>(Landroid/os/Parcel;Landroid/accounts/AuthenticatorDescription$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Landroid/accounts/AuthenticatorDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 0

    .line 142
    new-array p0, p1, [Landroid/accounts/AuthenticatorDescription;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Landroid/accounts/AuthenticatorDescription$1;->newArray(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    return-object p0
.end method
