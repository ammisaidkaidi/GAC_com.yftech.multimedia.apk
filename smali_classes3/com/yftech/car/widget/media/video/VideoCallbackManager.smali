.class public Lcom/yftech/car/widget/media/video/VideoCallbackManager;
.super Ljava/lang/Object;
.source "VideoCallbackManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallbackManager"


# instance fields
.field private final mVideoCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 38
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 42
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "VideoCallbackManager"

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " addCallback: mVideoCallbackList=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 49
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "NullPointerException callback == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loadSeekProgressImage(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
    .locals 8

    .line 369
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    .line 372
    invoke-interface/range {v2 .. v7}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->loadSeekProgressImage(Ljava/lang/String;JII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    monitor-exit v0

    return-object v1

    .line 377
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAudioFocusChange(I)Z
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 348
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onAudioFocusChange(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 352
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return v1
.end method

.method public onDoubleClick(Z)V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 268
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 269
    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onDoubleClick(Z)V

    goto :goto_0

    .line 271
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onInfo(II)Z
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 235
    invoke-interface {v2, p1, p2}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onInfo(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 239
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return v1
.end method

.method public onPlayChange(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 68
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->setPlayVideoFile(Lcom/yftech/car/media/data/entity/MediaFile;)Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    .line 69
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 72
    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onPlayChange(Lcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_0

    .line 74
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPlayError(I)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 311
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 312
    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onPlayError(I)V

    goto :goto_0

    .line 314
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPlayException(I)Z
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 329
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onPlayException(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 333
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return v1
.end method

.method public onPlayMode(I)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 133
    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onPlayMode(I)V

    goto :goto_0

    .line 135
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPlaySequenceCompletion()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 282
    invoke-interface {v1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onPlaySequenceCompletion()V

    goto :goto_0

    .line 284
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPlaybackParams(F)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 296
    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onPlaybackParams(F)V

    goto :goto_0

    .line 298
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPlayerError(II)Z
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 197
    invoke-interface {v2, p1, p2}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onPlayerError(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 201
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return v1
.end method

.method public onPlayingChange(Z)V
    .locals 2

    .line 161
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->setPlaying(Z)Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    .line 162
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 165
    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onPlayingChange(Z)V

    goto :goto_0

    .line 167
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onPrepared(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 115
    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onPrepared(I)V

    goto :goto_0

    .line 117
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onProgress(I)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 86
    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onProgress(I)V

    goto :goto_0

    .line 88
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onScaleType(I)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 150
    invoke-interface {v1, p1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onScaleType(I)V

    goto :goto_0

    .line 152
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onSlideProgress(ZIJZ)V
    .locals 8

    .line 252
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    .line 255
    invoke-interface/range {v2 .. v7}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onSlideProgress(ZIJZ)V

    goto :goto_0

    .line 257
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onStartTrackingTouch(IZ)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 101
    invoke-interface {v1, p1, p2}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onStartTrackingTouch(IZ)V

    goto :goto_0

    .line 103
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public onStorageDisconnect()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;

    .line 361
    invoke-interface {v1}, Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;->onStorageDisconnect()V

    goto :goto_0

    .line 363
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public removeCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    const-string p1, "VideoCallbackManager"

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeCallback: isRemove=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->mVideoCallbackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method
