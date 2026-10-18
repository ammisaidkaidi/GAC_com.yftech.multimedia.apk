.class Landroid/net/IpSecConfig$1;
.super Ljava/lang/Object;
.source "IpSecConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/IpSecConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecConfig;
    .locals 1

    .line 300
    new-instance p0, Landroid/net/IpSecConfig;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/IpSecConfig;-><init>(Landroid/os/Parcel;Landroid/net/IpSecConfig$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Landroid/net/IpSecConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/IpSecConfig;
    .locals 0

    .line 304
    new-array p0, p1, [Landroid/net/IpSecConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 298
    invoke-virtual {p0, p1}, Landroid/net/IpSecConfig$1;->newArray(I)[Landroid/net/IpSecConfig;

    move-result-object p0

    return-object p0
.end method
