.class Landroid/net/lowpan/LowpanCredential$1;
.super Ljava/lang/Object;
.source "LowpanCredential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/lowpan/LowpanCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanCredential;
    .locals 1

    .line 160
    new-instance p0, Landroid/net/lowpan/LowpanCredential;

    invoke-direct {p0}, Landroid/net/lowpan/LowpanCredential;-><init>()V

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/lowpan/LowpanCredential;->access$002(Landroid/net/lowpan/LowpanCredential;[B)[B

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanCredential;->access$102(Landroid/net/lowpan/LowpanCredential;I)I

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/lowpan/LowpanCredential;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/lowpan/LowpanCredential;
    .locals 0

    .line 169
    new-array p0, p1, [Landroid/net/lowpan/LowpanCredential;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanCredential$1;->newArray(I)[Landroid/net/lowpan/LowpanCredential;

    move-result-object p0

    return-object p0
.end method
