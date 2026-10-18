.class Landroid/hardware/radio/RadioManager$FmBandConfig$1;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$FmBandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/RadioManager$FmBandConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$FmBandConfig;
    .locals 1

    .line 1105
    new-instance p0, Landroid/hardware/radio/RadioManager$FmBandConfig;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1103
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$FmBandConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$FmBandConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/radio/RadioManager$FmBandConfig;
    .locals 0

    .line 1109
    new-array p0, p1, [Landroid/hardware/radio/RadioManager$FmBandConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1103
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$FmBandConfig$1;->newArray(I)[Landroid/hardware/radio/RadioManager$FmBandConfig;

    move-result-object p0

    return-object p0
.end method
