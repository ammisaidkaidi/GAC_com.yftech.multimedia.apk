.class Landroid/media/session/MediaSession$Token$1;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/session/MediaSession$Token;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/session/MediaSession$Token;
    .locals 0

    .line 752
    new-instance p0, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 749
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession$Token$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/session/MediaSession$Token;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/media/session/MediaSession$Token;
    .locals 0

    .line 757
    new-array p0, p1, [Landroid/media/session/MediaSession$Token;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 749
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession$Token$1;->newArray(I)[Landroid/media/session/MediaSession$Token;

    move-result-object p0

    return-object p0
.end method
