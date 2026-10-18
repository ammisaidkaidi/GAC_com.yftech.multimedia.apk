.class Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;
.super Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;
.source "VideoLayoutChildManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->getOnDataChangeCallback()Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onScanStatusChange$1(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V
    .locals 1

    const/4 v0, 0x0

    .line 610
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    return-void
.end method

.method static synthetic lambda$onScanStatusChange$2(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V
    .locals 1

    const/4 v0, 0x1

    .line 621
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    return-void
.end method

.method public static synthetic lambda$onScanStatusChange$3(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;IZ)V
    .locals 6

    .line 584
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isUsbExists(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    if-nez p2, :cond_4

    .line 586
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 587
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 588
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 596
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsVideo(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 593
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileVideo(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 590
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderVideo(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 605
    :cond_1
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList()V

    .line 608
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 609
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v4

    if-eq v4, v0, :cond_3

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v4

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 610
    :cond_3
    new-instance v4, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$rBwDlqifOwy8FRSEmipgSiOo4FQ;

    invoke-direct {v4, v3}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$rBwDlqifOwy8FRSEmipgSiOo4FQ;-><init>(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 617
    :cond_4
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 618
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v2

    if-ne v2, p1, :cond_5

    .line 619
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 620
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v4

    if-eq v4, v0, :cond_7

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v4

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 621
    :cond_7
    new-instance v4, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9S7R0amdcEvKuTPVgPcLudNpyio;

    invoke-direct {v4, v3}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9S7R0amdcEvKuTPVgPcLudNpyio;-><init>(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 624
    :cond_8
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbLoadingScan()Z

    goto :goto_2

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$onUsbStatusChange$0(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;ZI)V
    .locals 8

    if-nez p1, :cond_7

    .line 545
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getVideoExistsDataIndex()[B

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 546
    array-length v2, p1

    if-lez v2, :cond_0

    .line 547
    aget-byte p1, p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 549
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 550
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 551
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->clearList()V

    if-eq p1, v1, :cond_2

    .line 553
    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->isMediaUsbDisconnectAutoSwitchIndex()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 554
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4, p1, v3}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;ILcom/yftech/car/widget/media/list/MediaDataList;)V

    .line 556
    :cond_2
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v4}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 557
    invoke-virtual {v5}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v6

    if-eq v6, v1, :cond_4

    invoke-virtual {v5}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v6

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 558
    :cond_4
    invoke-virtual {v5, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    goto :goto_1

    .line 563
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 564
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 565
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p1

    if-ne p2, p1, :cond_9

    .line 566
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->release()V

    .line 567
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setStorageDisconnect()V

    goto :goto_3

    .line 571
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 572
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyList()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->isMediaUsbDisconnectAutoSwitchIndex()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 573
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v1, p2, v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$500(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;ILcom/yftech/car/widget/media/list/MediaDataList;)V

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public onScanStatusChange(IZ)V
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$9oeAe0Ad9jdgMpsDT_JJ9KkRmxs;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;IZ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUsbStatusChange(IZ)V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$AOOkvI7y9GPP3L6XNM1tG3mQbE0;

    invoke-direct {v1, p0, p2, p1}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$VideoLayoutChildManager$2$AOOkvI7y9GPP3L6XNM1tG3mQbE0;-><init>(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onVideoDataChange(I)V
    .locals 3

    .line 635
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$2;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 636
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 637
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 645
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsVideo(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 642
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileVideo(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 639
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderVideo(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 654
    :cond_1
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList()V

    goto :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
