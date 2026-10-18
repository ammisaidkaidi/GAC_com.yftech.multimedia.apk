.class Lcom/android/internal/telephony/CellNetworkScanResult$1;
.super Ljava/lang/Object;
.source "CellNetworkScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CellNetworkScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/CellNetworkScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 1

    .line 119
    new-instance p0, Lcom/android/internal/telephony/CellNetworkScanResult;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CellNetworkScanResult;-><init>(Landroid/os/Parcel;Lcom/android/internal/telephony/CellNetworkScanResult$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CellNetworkScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 0

    .line 123
    new-array p0, p1, [Lcom/android/internal/telephony/CellNetworkScanResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CellNetworkScanResult$1;->newArray(I)[Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object p0

    return-object p0
.end method
