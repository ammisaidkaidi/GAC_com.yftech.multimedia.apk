.class Landroid/telephony/mbms/UriPathPair$1;
.super Ljava/lang/Object;
.source "UriPathPair.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/mbms/UriPathPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/mbms/UriPathPair;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/mbms/UriPathPair;
    .locals 1

    .line 60
    new-instance p0, Landroid/telephony/mbms/UriPathPair;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/mbms/UriPathPair;-><init>(Landroid/os/Parcel;Landroid/telephony/mbms/UriPathPair$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/UriPathPair$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/mbms/UriPathPair;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/mbms/UriPathPair;
    .locals 0

    .line 65
    new-array p0, p1, [Landroid/telephony/mbms/UriPathPair;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Landroid/telephony/mbms/UriPathPair$1;->newArray(I)[Landroid/telephony/mbms/UriPathPair;

    move-result-object p0

    return-object p0
.end method
