.class Landroid/net/CaptivePortal$1;
.super Ljava/lang/Object;
.source "CaptivePortal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/CaptivePortal;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/CaptivePortal;
    .locals 0

    .line 58
    new-instance p0, Landroid/net/CaptivePortal;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortal$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/CaptivePortal;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/CaptivePortal;
    .locals 0

    .line 63
    new-array p0, p1, [Landroid/net/CaptivePortal;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortal$1;->newArray(I)[Landroid/net/CaptivePortal;

    move-result-object p0

    return-object p0
.end method
