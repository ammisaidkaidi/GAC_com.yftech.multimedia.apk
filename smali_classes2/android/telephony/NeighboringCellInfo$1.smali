.class Landroid/telephony/NeighboringCellInfo$1;
.super Ljava/lang/Object;
.source "NeighboringCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/NeighboringCellInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/NeighboringCellInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/NeighboringCellInfo;
    .locals 0

    .line 292
    new-instance p0, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {p0, p1}, Landroid/telephony/NeighboringCellInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Landroid/telephony/NeighboringCellInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/NeighboringCellInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/NeighboringCellInfo;
    .locals 0

    .line 296
    new-array p0, p1, [Landroid/telephony/NeighboringCellInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 290
    invoke-virtual {p0, p1}, Landroid/telephony/NeighboringCellInfo$1;->newArray(I)[Landroid/telephony/NeighboringCellInfo;

    move-result-object p0

    return-object p0
.end method
