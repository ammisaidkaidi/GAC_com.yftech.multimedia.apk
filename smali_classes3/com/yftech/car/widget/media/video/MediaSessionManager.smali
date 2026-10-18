.class public Lcom/yftech/car/widget/media/video/MediaSessionManager;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionManager.java"


# static fields
.field public static final METADATA_KEY_FOLDER:Ljava/lang/String; = "android.media.metadata.FOLDER"

.field private static final TAG:Ljava/lang/String; = "MediaSessionManager"


# instance fields
.field private mMediaSession:Landroid/media/session/MediaSession;

.field private final mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

.field private final mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;


# direct methods
.method public constructor <init>(Lcom/yftech/car/widget/media/video/BaseVideo;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    .line 25
    new-instance p1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    .line 27
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const-wide/16 v0, 0x736

    invoke-virtual {p0, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    const-string p0, "MediaSessionManager"

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onCommand: command=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string p0, "MediaSessionManager"

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCustomAction: action=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFastForward()V
    .locals 1

    const-string p0, "MediaSessionManager"

    const-string v0, "onFastForward: "

    .line 144
    invoke-static {p0, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "MediaSessionManager"

    const-string v1, "onPause: "

    .line 109
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    return-void
.end method

.method public onPlay()V
    .locals 2

    const-string v0, "MediaSessionManager"

    const-string v1, "onPlay: "

    .line 103
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string p0, "MediaSessionManager"

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlayFromSearch: query=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string p0, "MediaSessionManager"

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPrepareFromSearch: query=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRewind()V
    .locals 1

    const-string p0, "MediaSessionManager"

    const-string v0, "onRewind: "

    .line 139
    invoke-static {p0, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 3

    const-string v0, "MediaSessionManager"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekTo: pos=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayProgress(I)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    const-string v0, "MediaSessionManager"

    const-string v1, "onSkipToNext: "

    .line 121
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    const-string v0, "MediaSessionManager"

    const-string v1, "onSkipToPrevious: "

    .line 127
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "MediaSessionManager"

    const-string v1, "onStop: "

    .line 115
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setPlayState(I)Z

    return-void
.end method

.method public setActive(Z)V
    .locals 4

    const-string v0, "MediaSessionManager"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActive: isPlay=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    if-nez p1, :cond_0

    .line 50
    new-instance p1, Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "VideoPlayer"

    invoke-direct {p1, v1, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 54
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->isActive()Z

    move-result p1

    if-nez p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 61
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const-wide/16 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz p1, :cond_3

    .line 66
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 67
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 68
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p1}, Landroid/media/session/MediaSession;->release()V

    .line 69
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    :cond_3
    :goto_0
    return-void
.end method

.method public setPlaybackStateCompat(IIF)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    int-to-long v1, p2

    invoke-virtual {p0, p1, v1, v2, p3}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    :cond_0
    return-void
.end method

.method public updatePlay(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "MediaSessionManager"

    const-string/jumbo p1, "updatePlay: mediaFile is null"

    .line 156
    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "MediaSessionManager"

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMetadata: current play item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    .line 164
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    .line 165
    new-instance v4, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v4}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v5, "android.media.metadata.BT_FOLDER_TYPE"

    .line 166
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object v4

    const-string v5, "android.media.metadata.MEDIA_ID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 167
    invoke-virtual {v4, v5, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.ALBUM"

    .line 168
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.ARTIST"

    .line 169
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.GENRE"

    .line 170
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.MEDIA_URI"

    .line 171
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DURATION"

    .line 173
    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    const-string v1, "android.media.metadata.TITLE"

    .line 174
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    .line 176
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/MediaSessionManager;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_1
    return-void
.end method
