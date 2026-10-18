.class Landroid/media/session/MediaSession$QueueItem$1;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession$QueueItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/session/MediaSession$QueueItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/session/MediaSession$QueueItem;
    .locals 1

    .line 1362
    new-instance p0, Landroid/media/session/MediaSession$QueueItem;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/os/Parcel;Landroid/media/session/MediaSession$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1358
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession$QueueItem$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/session/MediaSession$QueueItem;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/session/MediaSession$QueueItem;
    .locals 0

    .line 1367
    new-array p0, p1, [Landroid/media/session/MediaSession$QueueItem;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1358
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession$QueueItem$1;->newArray(I)[Landroid/media/session/MediaSession$QueueItem;

    move-result-object p0

    return-object p0
.end method
