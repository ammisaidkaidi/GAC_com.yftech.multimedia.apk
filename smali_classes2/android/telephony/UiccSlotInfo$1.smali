.class Landroid/telephony/UiccSlotInfo$1;
.super Ljava/lang/Object;
.source "UiccSlotInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/UiccSlotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/UiccSlotInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UiccSlotInfo;
    .locals 1

    .line 68
    new-instance p0, Landroid/telephony/UiccSlotInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telephony/UiccSlotInfo;-><init>(Landroid/os/Parcel;Landroid/telephony/UiccSlotInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Landroid/telephony/UiccSlotInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/UiccSlotInfo;
    .locals 0

    .line 73
    new-array p0, p1, [Landroid/telephony/UiccSlotInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Landroid/telephony/UiccSlotInfo$1;->newArray(I)[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    return-object p0
.end method
