.class Landroid/telephony/ims/ImsExternalCallState$1;
.super Ljava/lang/Object;
.source "ImsExternalCallState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsExternalCallState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ims/ImsExternalCallState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/ImsExternalCallState;
    .locals 0

    .line 103
    new-instance p0, Landroid/telephony/ims/ImsExternalCallState;

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsExternalCallState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsExternalCallState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/ImsExternalCallState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/ims/ImsExternalCallState;
    .locals 0

    .line 108
    new-array p0, p1, [Landroid/telephony/ims/ImsExternalCallState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsExternalCallState$1;->newArray(I)[Landroid/telephony/ims/ImsExternalCallState;

    move-result-object p0

    return-object p0
.end method
