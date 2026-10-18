.class Landroid/telephony/SignalStrength$1;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalStrength;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 356
    new-instance p0, Landroid/telephony/SignalStrength;

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrength;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/telephony/SignalStrength;
    .locals 0

    .line 360
    new-array p0, p1, [Landroid/telephony/SignalStrength;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 354
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength$1;->newArray(I)[Landroid/telephony/SignalStrength;

    move-result-object p0

    return-object p0
.end method
