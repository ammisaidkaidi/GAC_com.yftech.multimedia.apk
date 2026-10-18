.class Landroid/net/IpSecAlgorithm$1;
.super Ljava/lang/Object;
.source "IpSecAlgorithm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/IpSecAlgorithm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecAlgorithm;
    .locals 2

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 201
    new-instance v1, Landroid/net/IpSecAlgorithm;

    invoke-direct {v1, p0, v0, p1}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Landroid/net/IpSecAlgorithm$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecAlgorithm;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/IpSecAlgorithm;
    .locals 0

    .line 205
    new-array p0, p1, [Landroid/net/IpSecAlgorithm;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Landroid/net/IpSecAlgorithm$1;->newArray(I)[Landroid/net/IpSecAlgorithm;

    move-result-object p0

    return-object p0
.end method
