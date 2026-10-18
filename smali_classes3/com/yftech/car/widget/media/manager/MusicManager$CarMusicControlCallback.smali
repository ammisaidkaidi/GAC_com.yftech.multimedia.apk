.class public abstract Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicControlCallback;
.super Ljava/lang/Object;
.source "MusicManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarMusicControlCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePlayMode(I)V
    .locals 0

    return-void
.end method

.method public onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 0

    return-void
.end method

.method public onChangePlaying(Z)V
    .locals 0

    return-void
.end method

.method public onChangeProgress(I)V
    .locals 0

    return-void
.end method

.method public onCollectChange(I)V
    .locals 0

    return-void
.end method

.method public onPlayError(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPlayListChange(I)V
    .locals 0

    return-void
.end method

.method public onPlayListState(Z)V
    .locals 0

    return-void
.end method

.method public onPlaybackParams(F)V
    .locals 0

    return-void
.end method

.method public onPrepared(I)V
    .locals 0

    return-void
.end method

.method public onStopPlay(Z)V
    .locals 0

    return-void
.end method
