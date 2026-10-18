.class Landroid/telephony/ims/ImsSuppServiceNotification$1;
.super Ljava/lang/Object;
.source "ImsSuppServiceNotification.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsSuppServiceNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ims/ImsSuppServiceNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/ImsSuppServiceNotification;
    .locals 0

    .line 100
    new-instance p0, Landroid/telephony/ims/ImsSuppServiceNotification;

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsSuppServiceNotification$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/ImsSuppServiceNotification;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/ims/ImsSuppServiceNotification;
    .locals 0

    .line 105
    new-array p0, p1, [Landroid/telephony/ims/ImsSuppServiceNotification;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsSuppServiceNotification$1;->newArray(I)[Landroid/telephony/ims/ImsSuppServiceNotification;

    move-result-object p0

    return-object p0
.end method
