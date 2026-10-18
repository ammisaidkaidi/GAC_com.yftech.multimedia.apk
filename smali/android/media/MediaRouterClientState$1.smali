.class Landroid/media/MediaRouterClientState$1;
.super Ljava/lang/Object;
.source "MediaRouterClientState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouterClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/MediaRouterClientState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaRouterClientState;
    .locals 0

    .line 75
    new-instance p0, Landroid/media/MediaRouterClientState;

    invoke-direct {p0, p1}, Landroid/media/MediaRouterClientState;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/media/MediaRouterClientState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaRouterClientState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/MediaRouterClientState;
    .locals 0

    .line 80
    new-array p0, p1, [Landroid/media/MediaRouterClientState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Landroid/media/MediaRouterClientState$1;->newArray(I)[Landroid/media/MediaRouterClientState;

    move-result-object p0

    return-object p0
.end method
