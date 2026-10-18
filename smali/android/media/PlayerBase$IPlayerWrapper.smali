.class Landroid/media/PlayerBase$IPlayerWrapper;
.super Landroid/media/IPlayer$Stub;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/PlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPlayerWrapper"
.end annotation


# instance fields
.field private final mWeakPB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/PlayerBase;)V
    .locals 1

    .line 440
    invoke-direct {p0}, Landroid/media/IPlayer$Stub;-><init>()V

    .line 441
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    .locals 0

    .line 496
    iget-object p0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/PlayerBase;

    if-eqz p0, :cond_0

    .line 498
    invoke-virtual {p0, p1, p2}, Landroid/media/PlayerBase;->playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 454
    iget-object p0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/PlayerBase;

    if-eqz p0, :cond_0

    .line 456
    invoke-virtual {p0}, Landroid/media/PlayerBase;->playerPause()V

    :cond_0
    return-void
.end method

.method public setPan(F)V
    .locals 0

    .line 478
    iget-object p0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/PlayerBase;

    if-eqz p0, :cond_0

    .line 480
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetPan(F)V

    :cond_0
    return-void
.end method

.method public setStartDelayMs(I)V
    .locals 0

    .line 486
    iget-object p0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/PlayerBase;

    if-eqz p0, :cond_0

    .line 488
    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    :cond_0
    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 470
    iget-object p0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/PlayerBase;

    if-eqz p0, :cond_0

    .line 472
    invoke-virtual {p0, p1, p1}, Landroid/media/PlayerBase;->baseSetVolume(FF)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 446
    iget-object p0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/PlayerBase;

    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/media/PlayerBase;->playerStart()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 462
    iget-object p0, p0, Landroid/media/PlayerBase$IPlayerWrapper;->mWeakPB:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/PlayerBase;

    if-eqz p0, :cond_0

    .line 464
    invoke-virtual {p0}, Landroid/media/PlayerBase;->playerStop()V

    :cond_0
    return-void
.end method
