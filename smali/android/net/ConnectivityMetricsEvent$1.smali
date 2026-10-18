.class Landroid/net/ConnectivityMetricsEvent$1;
.super Ljava/lang/Object;
.source "ConnectivityMetricsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityMetricsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ConnectivityMetricsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityMetricsEvent;
    .locals 1

    .line 57
    new-instance p0, Landroid/net/ConnectivityMetricsEvent;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/ConnectivityMetricsEvent;-><init>(Landroid/os/Parcel;Landroid/net/ConnectivityMetricsEvent$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityMetricsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ConnectivityMetricsEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/ConnectivityMetricsEvent;
    .locals 0

    .line 61
    new-array p0, p1, [Landroid/net/ConnectivityMetricsEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityMetricsEvent$1;->newArray(I)[Landroid/net/ConnectivityMetricsEvent;

    move-result-object p0

    return-object p0
.end method
