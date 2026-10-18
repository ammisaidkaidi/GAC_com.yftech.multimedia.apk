.class Landroid/media/MediaPlayer2Impl$TrackInfoImpl$1;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/MediaPlayer2Impl$TrackInfoImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
    .locals 0

    .line 2026
    new-instance p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2023
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
    .locals 0

    .line 2031
    new-array p0, p1, [Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2023
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl$1;->newArray(I)[Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    move-result-object p0

    return-object p0
.end method
