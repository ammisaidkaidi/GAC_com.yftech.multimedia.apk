.class Landroid/os/VibrationEffect$OneShot$1;
.super Ljava/lang/Object;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect$OneShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/VibrationEffect$OneShot;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect$OneShot;
    .locals 0

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 426
    new-instance p0, Landroid/os/VibrationEffect$OneShot;

    invoke-direct {p0, p1}, Landroid/os/VibrationEffect$OneShot;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$OneShot$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/VibrationEffect$OneShot;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/os/VibrationEffect$OneShot;
    .locals 0

    .line 430
    new-array p0, p1, [Landroid/os/VibrationEffect$OneShot;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 421
    invoke-virtual {p0, p1}, Landroid/os/VibrationEffect$OneShot$1;->newArray(I)[Landroid/os/VibrationEffect$OneShot;

    move-result-object p0

    return-object p0
.end method
