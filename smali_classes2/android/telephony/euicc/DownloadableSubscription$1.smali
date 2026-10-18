.class Landroid/telephony/euicc/DownloadableSubscription$1;
.super Ljava/lang/Object;
.source "DownloadableSubscription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/euicc/DownloadableSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/euicc/DownloadableSubscription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/euicc/DownloadableSubscription;
    .locals 1

    .line 44
    new-instance p0, Landroid/telephony/euicc/DownloadableSubscription;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Landroid/os/Parcel;Landroid/telephony/euicc/DownloadableSubscription$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/telephony/euicc/DownloadableSubscription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/euicc/DownloadableSubscription;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/euicc/DownloadableSubscription;
    .locals 0

    .line 49
    new-array p0, p1, [Landroid/telephony/euicc/DownloadableSubscription;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/telephony/euicc/DownloadableSubscription$1;->newArray(I)[Landroid/telephony/euicc/DownloadableSubscription;

    move-result-object p0

    return-object p0
.end method
