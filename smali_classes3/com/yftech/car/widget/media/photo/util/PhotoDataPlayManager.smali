.class public Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;
.super Ljava/lang/Object;
.source "PhotoDataPlayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager$OnMediaDataListUpdateListener;
    }
.end annotation


# static fields
.field private static mVideoDataPlayManager:Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;


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

.field private mPlayId:J

.field private final mUpdateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager$OnMediaDataListUpdateListener;",
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

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mUpdateListenerList:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 48
    iput-wide v0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mPlayId:J

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->isPlaying:Z

    return-void
.end method

.method public static getInstance()Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;
    .locals 2

    .line 32
    sget-object v0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mVideoDataPlayManager:Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mVideoDataPlayManager:Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    invoke-direct {v1}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;-><init>()V

    sput-object v1, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mVideoDataPlayManager:Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

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
    sget-object v0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mVideoDataPlayManager:Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    return-object v0
.end method


# virtual methods
.method public addPlayFinishCallback(Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager$OnMediaDataListUpdateListener;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mUpdateListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearListData()V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getMediaFile()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method public getPlayId()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mPlayId:J

    return-wide v0
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

    .line 121
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    return-object p0
.end method

.method public getPlayPosition()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 112
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mPlayId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isPlaying()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->isPlaying:Z

    return p0
.end method

.method public removeMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 101
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 103
    iget-object p1, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->updatePlayChange()V

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public removePlayFinishCallback(Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager$OnMediaDataListUpdateListener;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mUpdateListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 59
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    .line 60
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mPlayId:J

    return-void
.end method

.method public setPlayId(J)Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;
    .locals 4

    .line 64
    iput-wide p1, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mPlayId:J

    .line 65
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 66
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 67
    new-instance p1, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p1, v1}, Lcom/yftech/car/media/data/entity/MediaFile;-><init>(Lcom/yftech/car/media/data/entity/MediaFile;)V

    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mMediaFile:Lcom/yftech/car/media/data/entity/MediaFile;

    :cond_1
    return-object p0
.end method

.method public setPlayListData(Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;J)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 92
    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 93
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_2
    iput-wide p2, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mPlayId:J

    return-void
.end method

.method public setPlaying(Z)Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->isPlaying:Z

    return-object p0
.end method

.method public updatePlayChange()V
    .locals 1

    .line 129
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->mUpdateListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager$OnMediaDataListUpdateListener;

    .line 130
    invoke-interface {v0}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager$OnMediaDataListUpdateListener;->onPlayChange()V

    goto :goto_0

    :cond_0
    return-void
.end method
