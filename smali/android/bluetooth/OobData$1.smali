.class Landroid/bluetooth/OobData$1;
.super Ljava/lang/Object;
.source "OobData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/OobData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/OobData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/OobData;
    .locals 1

    .line 104
    new-instance p0, Landroid/bluetooth/OobData;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/bluetooth/OobData;-><init>(Landroid/os/Parcel;Landroid/bluetooth/OobData$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Landroid/bluetooth/OobData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/OobData;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/bluetooth/OobData;
    .locals 0

    .line 108
    new-array p0, p1, [Landroid/bluetooth/OobData;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Landroid/bluetooth/OobData$1;->newArray(I)[Landroid/bluetooth/OobData;

    move-result-object p0

    return-object p0
.end method
