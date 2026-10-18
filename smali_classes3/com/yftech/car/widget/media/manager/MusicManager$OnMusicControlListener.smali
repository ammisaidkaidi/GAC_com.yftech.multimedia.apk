.class public interface abstract Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;
.super Ljava/lang/Object;
.source "MusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMusicControlListener"
.end annotation


# virtual methods
.method public abstract onChangePlayMode(I)V
.end method

.method public abstract onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V
.end method

.method public abstract onChangePlaying(Z)V
.end method

.method public abstract onChangeProgress(I)V
.end method

.method public abstract onCollectChange(I)V
.end method

.method public abstract onPlayError(I)Z
.end method

.method public abstract onPlayListChange(I)V
.end method

.method public abstract onPlayListState(Z)V
.end method

.method public abstract onPlaybackParams(F)V
.end method

.method public abstract onPrepared(I)V
.end method

.method public abstract onStopPlay(Z)V
.end method
