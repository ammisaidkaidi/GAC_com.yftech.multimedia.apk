.class Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pWfdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pWfdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pWfdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .locals 0

    .line 188
    new-instance p0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 189
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    .locals 0

    .line 194
    new-array p0, p1, [Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    move-result-object p0

    return-object p0
.end method
