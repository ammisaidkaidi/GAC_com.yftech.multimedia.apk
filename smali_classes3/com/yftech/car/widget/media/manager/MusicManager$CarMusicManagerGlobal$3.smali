.class Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;
.super Lcom/yftech/car/media/music/ICarMusicCallback$Stub;
.source "MusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)V
    .locals 0

    .line 1352
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-direct {p0}, Lcom/yftech/car/media/music/ICarMusicCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onCollectChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1436
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1438
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1439
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onCollectChange(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCurrentPlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1361
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4502(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;Lcom/yftech/car/media/data/entity/MediaFile;)Lcom/yftech/car/media/data/entity/MediaFile;

    .line 1362
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1365
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onChangePlayMusic(Lcom/yftech/car/media/data/entity/MediaFile;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayError(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1445
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1448
    iget-object v3, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v3}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1449
    invoke-interface {v3, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onPlayError(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public onPlayListChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1458
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1460
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1461
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onPlayListChange(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayListState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1427
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1429
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1430
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onPlayListState(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1389
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1391
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1392
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onChangePlayMode(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlayPause(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1398
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1400
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1401
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onChangePlaying(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPlaybackParams(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1418
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1420
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1421
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onPlaybackParams(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPrepared(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1380
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1382
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1383
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onPrepared(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1371
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1373
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1374
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onChangeProgress(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStopPlay(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1408
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1410
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;->access$4600(Lcom/yftech/car/widget/media/manager/MusicManager$CarMusicManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;

    .line 1411
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MusicManager$OnMusicControlListener;->onStopPlay(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
