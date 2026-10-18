.class Landroid/hardware/display/AmbientBrightnessDayStats$1;
.super Ljava/lang/Object;
.source "AmbientBrightnessDayStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/AmbientBrightnessDayStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/display/AmbientBrightnessDayStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/AmbientBrightnessDayStats;
    .locals 1

    .line 129
    new-instance p0, Landroid/hardware/display/AmbientBrightnessDayStats;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/display/AmbientBrightnessDayStats;-><init>(Landroid/os/Parcel;Landroid/hardware/display/AmbientBrightnessDayStats$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientBrightnessDayStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/display/AmbientBrightnessDayStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/display/AmbientBrightnessDayStats;
    .locals 0

    .line 134
    new-array p0, p1, [Landroid/hardware/display/AmbientBrightnessDayStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Landroid/hardware/display/AmbientBrightnessDayStats$1;->newArray(I)[Landroid/hardware/display/AmbientBrightnessDayStats;

    move-result-object p0

    return-object p0
.end method
