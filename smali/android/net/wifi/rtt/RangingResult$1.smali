.class Landroid/net/wifi/rtt/RangingResult$1;
.super Ljava/lang/Object;
.source "RangingResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/RangingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/rtt/RangingResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingResult;
    .locals 13

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 340
    sget-object p0, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/MacAddress;

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 342
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 345
    new-instance v0, Landroid/net/wifi/aware/PeerHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/net/wifi/aware/PeerHandle;-><init>(I)V

    :cond_1
    move-object v3, v0

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    if-eqz p0, :cond_2

    .line 356
    new-instance p0, Landroid/net/wifi/rtt/RangingResult;

    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v11

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/wifi/aware/PeerHandle;IIIII[B[BJ)V

    return-object p0

    .line 359
    :cond_2
    new-instance p0, Landroid/net/wifi/rtt/RangingResult;

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v11

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/rtt/RangingResult;-><init>(ILandroid/net/MacAddress;IIIII[B[BJ)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/rtt/RangingResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/rtt/RangingResult;
    .locals 0

    .line 331
    new-array p0, p1, [Landroid/net/wifi/rtt/RangingResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Landroid/net/wifi/rtt/RangingResult$1;->newArray(I)[Landroid/net/wifi/rtt/RangingResult;

    move-result-object p0

    return-object p0
.end method
