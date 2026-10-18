.class Landroid/media/session/PlaybackState$1;
.super Ljava/lang/Object;
.source "PlaybackState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/PlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/session/PlaybackState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/session/PlaybackState;
    .locals 1

    .line 643
    new-instance p0, Landroid/media/session/PlaybackState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/session/PlaybackState;-><init>(Landroid/os/Parcel;Landroid/media/session/PlaybackState$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 640
    invoke-virtual {p0, p1}, Landroid/media/session/PlaybackState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/session/PlaybackState;
    .locals 0

    .line 648
    new-array p0, p1, [Landroid/media/session/PlaybackState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 640
    invoke-virtual {p0, p1}, Landroid/media/session/PlaybackState$1;->newArray(I)[Landroid/media/session/PlaybackState;

    move-result-object p0

    return-object p0
.end method
