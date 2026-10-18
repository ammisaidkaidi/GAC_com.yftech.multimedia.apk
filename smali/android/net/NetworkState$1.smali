.class Landroid/net/NetworkState$1;
.super Ljava/lang/Object;
.source "NetworkState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/NetworkState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkState;
    .locals 0

    .line 88
    new-instance p0, Landroid/net/NetworkState;

    invoke-direct {p0, p1}, Landroid/net/NetworkState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Landroid/net/NetworkState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/NetworkState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/NetworkState;
    .locals 0

    .line 93
    new-array p0, p1, [Landroid/net/NetworkState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Landroid/net/NetworkState$1;->newArray(I)[Landroid/net/NetworkState;

    move-result-object p0

    return-object p0
.end method
