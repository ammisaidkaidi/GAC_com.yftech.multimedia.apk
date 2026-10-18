.class public Lcom/yftech/car/widget/media/video/VideoDataPlayManager;
.super Ljava/lang/Object;
.source "VideoDataPlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;
    }
.end annotation


# static fields
.field private static mVideoDataPlayManager:Lcom/yftech/car/widget/media/video/VideoDataPlayManager;


# instance fields
.field private isPlaying:Z

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

.field private mPlayVideoId:J

.field private mPosition:I

.field private final mUpdateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mUpdateListenerList:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mPlayVideoId:J

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->isPlaying:Z

    return-void
.end method

.method public static getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;
    .locals 2

    .line 32
    sget-object v0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mVideoDataPlayManager:Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mVideoDataPlayManager:Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;-><init>()V

    sput-object v1, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mVideoDataPlayManager:Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mVideoDataPlayManager:Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    return-object v0
.end method


# virtual methods
.method public addPlayFinishCallback(Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;)V
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mUpdateListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearListData()V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mList:Ljava/util/List;

    return-object p0
.end method

.method public getPlayPosition()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mPosition:I

    return p0
.end method

.method public getPlayVideoId()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mPlayVideoId:J

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->isPlaying:Z

    return p0
.end method

.method public removePlayFinishCallback(Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mUpdateListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPlayListData(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;I)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    iput p2, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mPosition:I

    return-void
.end method

.method public setPlayVideoFile(Lcom/yftech/car/media/data/entity/MediaFile;)Lcom/yftech/car/widget/media/video/VideoDataPlayManager;
    .locals 2

    .line 64
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mPlayVideoId:J

    .line 65
    new-instance v0, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {v0, p1}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(Lcom/yftech/car/media/data/entity/MediaFile;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method public setPlayVideoId(J)Lcom/yftech/car/widget/media/video/VideoDataPlayManager;
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mPlayVideoId:J

    return-object p0
.end method

.method public setPlaying(Z)Lcom/yftech/car/widget/media/video/VideoDataPlayManager;
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->isPlaying:Z

    return-object p0
.end method

.method public updatePlayChange()V
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->mUpdateListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;

    .line 100
    invoke-interface {v0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;->onPlayChange()V

    goto :goto_0

    :cond_0
    return-void
.end method
