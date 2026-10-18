.class Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;
.super Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback$Stub;
.source "MediaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)V
    .locals 0

    .line 1769
    iput-object p1, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-direct {p0}, Lcom/yftech/car/media/data/callbacklibrary/ICarDataChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCopyFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1859
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1861
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    .line 1862
    invoke-interface {v2, p1, p2, p3}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onCopyFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCopyFileProgress(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1841
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1843
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    .line 1844
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onCopyFileProgress(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCopyFileStatusChange(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1850
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1852
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    .line 1853
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onCopyFileStatusChange(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeleteFile(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1826
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1828
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    if-nez p2, :cond_0

    .line 1830
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onDeleteSuccess(I)V

    goto :goto_1

    .line 1833
    :cond_0
    invoke-interface {v2, p1, p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onDeleteError(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMusicDataChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1790
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1792
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    .line 1793
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onMusicDataChange(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPhotoDataChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1808
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1810
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    .line 1811
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onPhotoDataChange(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScanStatusChange(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1781
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1783
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    .line 1784
    invoke-interface {v2, p1, p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onScanStatusChange(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSearchList(JLcom/yftech/car/media/data/descriptor/MemFdInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onTextDataChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1817
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1819
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    .line 1820
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onTextDataChange(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUsbStatusChange(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1772
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1774
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    .line 1775
    invoke-interface {v2, p1, p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onUsbStatusChange(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoDataChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1799
    iget-object v0, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1801
    iget-object v2, p0, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal$3;->this$0:Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;

    invoke-static {v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;->access$5100(Lcom/yftech/car/widget/media/manager/MediaDataManager$CarMediaDataManagerGlobal;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;

    .line 1802
    invoke-interface {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;->onVideoDataChange(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
