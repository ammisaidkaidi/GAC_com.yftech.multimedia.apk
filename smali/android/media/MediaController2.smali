.class public Landroid/media/MediaController2;
.super Ljava/lang/Object;
.source "MediaController2.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaController2$PlaybackInfo;,
        Landroid/media/MediaController2$ControllerCallback;
    }
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaController2Provider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaController2;->createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaController2Provider;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    .line 358
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->initialize()V

    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 0

    .line 755
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->addPlaylistItem_impl(ILandroid/media/MediaItem2;)V

    return-void
.end method

.method public adjustVolume(II)V
    .locals 0

    .line 580
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->adjustVolume_impl(II)V

    return-void
.end method

.method public close()V
    .locals 0

    .line 374
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->close_impl()V

    return-void
.end method

.method createProvider(Landroid/content/Context;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaController2Provider;
    .locals 6

    .line 364
    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/media/update/StaticProvider;->createMediaController2(Landroid/content/Context;Landroid/media/MediaController2;Landroid/media/SessionToken2;Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/update/MediaController2Provider;

    move-result-object p0

    return-object p0
.end method

.method public fastForward()V
    .locals 0

    .line 425
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->fastForward_impl()V

    return-void
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 651
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getBufferedPosition_impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferingState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentMediaItem()Landroid/media/MediaItem2;
    .locals 0

    .line 788
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getCurrentMediaItem_impl()Landroid/media/MediaItem2;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 611
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getCurrentPosition_impl()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackInfo()Landroid/media/MediaController2$PlaybackInfo;
    .locals 0

    .line 660
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getPlaybackInfo_impl()Landroid/media/MediaController2$PlaybackInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackSpeed()F
    .locals 0

    .line 621
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getPlaybackSpeed_impl()F

    move-result p0

    return p0
.end method

.method public getPlayerState()I
    .locals 0

    .line 599
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getPlayerState_impl()I

    move-result p0

    return p0
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 703
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getPlaylist_impl()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPlaylistMetadata()Landroid/media/MediaMetadata2;
    .locals 0

    .line 739
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getPlaylistMetadata_impl()Landroid/media/MediaMetadata2;

    move-result-object p0

    return-object p0
.end method

.method public getProvider()Landroid/media/update/MediaController2Provider;
    .locals 0

    .line 381
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    return-object p0
.end method

.method public getRepeatMode()I
    .locals 0

    .line 831
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getRepeatMode_impl()I

    move-result p0

    return p0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 0

    .line 589
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getSessionActivity_impl()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getSessionToken()Landroid/media/SessionToken2;
    .locals 0

    .line 388
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getSessionToken_impl()Landroid/media/SessionToken2;

    move-result-object p0

    return-object p0
.end method

.method public getShuffleMode()I
    .locals 0

    .line 857
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->getShuffleMode_impl()I

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    .line 395
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->isConnected_impl()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 403
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->pause_impl()V

    return-void
.end method

.method public play()V
    .locals 0

    .line 399
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->play_impl()V

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 469
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->playFromMediaId_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 479
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->playFromSearch_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 490
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->playFromUri_impl(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepare()V
    .locals 0

    .line 418
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->prepare_impl()V

    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 506
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->prepareFromMediaId_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 522
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->prepareFromSearch_impl(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .line 538
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->prepareFromUri_impl(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public removePlaylistItem(Landroid/media/MediaItem2;)V
    .locals 0

    .line 767
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1}, Landroid/media/update/MediaController2Provider;->removePlaylistItem_impl(Landroid/media/MediaItem2;)V

    return-void
.end method

.method public replacePlaylistItem(ILandroid/media/MediaItem2;)V
    .locals 0

    .line 778
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->replacePlaylistItem_impl(ILandroid/media/MediaItem2;)V

    return-void
.end method

.method public rewind()V
    .locals 0

    .line 432
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->rewind_impl()V

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    .line 441
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->seekTo_impl(J)V

    return-void
.end method

.method public sendCustomCommand(Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 688
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2, p3}, Landroid/media/update/MediaController2Provider;->sendCustomCommand_impl(Landroid/media/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 0

    return-void
.end method

.method public setPlaylist(Ljava/util/List;Landroid/media/MediaMetadata2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaItem2;",
            ">;",
            "Landroid/media/MediaMetadata2;",
            ")V"
        }
    .end annotation

    .line 719
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->setPlaylist_impl(Ljava/util/List;Landroid/media/MediaMetadata2;)V

    return-void
.end method

.method public setRating(Ljava/lang/String;Landroid/media/Rating2;)V
    .locals 0

    .line 676
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->setRating_impl(Ljava/lang/String;Landroid/media/Rating2;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 844
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1}, Landroid/media/update/MediaController2Provider;->setRepeatMode_impl(I)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 0

    .line 869
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1}, Landroid/media/update/MediaController2Provider;->setShuffleMode_impl(I)V

    return-void
.end method

.method public setVolumeTo(II)V
    .locals 0

    .line 557
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1, p2}, Landroid/media/update/MediaController2Provider;->setVolumeTo_impl(II)V

    return-void
.end method

.method public skipBackward()V
    .locals 0

    return-void
.end method

.method public skipForward()V
    .locals 0

    return-void
.end method

.method public skipToNextItem()V
    .locals 0

    .line 806
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->skipToNextItem_impl()V

    return-void
.end method

.method public skipToPlaylistItem(Landroid/media/MediaItem2;)V
    .locals 0

    .line 817
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1}, Landroid/media/update/MediaController2Provider;->skipToPlaylistItem_impl(Landroid/media/MediaItem2;)V

    return-void
.end method

.method public skipToPreviousItem()V
    .locals 0

    .line 797
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->skipToPreviousItem_impl()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 407
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider;->stop_impl()V

    return-void
.end method

.method public updatePlaylistMetadata(Landroid/media/MediaMetadata2;)V
    .locals 0

    .line 728
    iget-object p0, p0, Landroid/media/MediaController2;->mProvider:Landroid/media/update/MediaController2Provider;

    invoke-interface {p0, p1}, Landroid/media/update/MediaController2Provider;->updatePlaylistMetadata_impl(Landroid/media/MediaMetadata2;)V

    return-void
.end method
