.class Landroid/net/MacAddress$1;
.super Ljava/lang/Object;
.source "MacAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MacAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/MacAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/MacAddress;
    .locals 2

    .line 166
    new-instance p0, Landroid/net/MacAddress;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/net/MacAddress;-><init>(JLandroid/net/MacAddress$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Landroid/net/MacAddress$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/MacAddress;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/MacAddress;
    .locals 0

    .line 170
    new-array p0, p1, [Landroid/net/MacAddress;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Landroid/net/MacAddress$1;->newArray(I)[Landroid/net/MacAddress;

    move-result-object p0

    return-object p0
.end method
