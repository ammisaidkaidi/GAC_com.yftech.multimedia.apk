.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;
.super Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;
.source "MusicLayoutChildManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->getOnDataChangeCallback()Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onScanStatusChange$0(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V
    .locals 1

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    return-void
.end method

.method public static synthetic lambda$onScanStatusChange$1(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 3

    .line 584
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$900(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

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

    check-cast v0, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 585
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    :cond_1
    const/4 v1, 0x1

    .line 586
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    goto :goto_0

    .line 589
    :cond_2
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbLoadingScan()Z

    return-void
.end method

.method public static synthetic lambda$onUsbStatusChange$2(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/list/MediaDataList;I)V
    .locals 3

    .line 650
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->clearList()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 651
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->isMediaUsbDisconnectAutoSwitchIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v1, p2, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;ILcom/yftech/car/widget/media/list/MediaDataList;)V

    .line 655
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$900(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 656
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_2
    const/4 v1, 0x0

    .line 657
    invoke-virtual {p2, v1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic lambda$onUsbStatusChange$3(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/view/MediaImageView;)V
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1900(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/view/ReflectedImage;

    .line 677
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/view/ReflectedImage;->getReflectedViewId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 678
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/view/ReflectedImage;->getReflectedViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 680
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/view/ReflectedImage;->setReflectedImage(Landroid/view/View;)V

    return-void

    .line 685
    :cond_1
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/view/MediaImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/view/ReflectedImage;->isReflectedViewId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/view/ReflectedImage;->setReflectedImage(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic lambda$onUsbStatusChange$4(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;)V
    .locals 4

    .line 703
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1600(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaFileTextView;

    .line 704
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->isMediaFileInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/MediaFileTextView;->updateMediaFile(Lcom/yftech/car/media/data/entity/MediaFile;)V

    goto :goto_0

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/MediaPlayTime;

    const-wide/16 v2, 0xa

    .line 709
    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateDuration(J)V

    const-wide/16 v2, 0x0

    .line 710
    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/text/MediaPlayTime;->updateProgress(J)V

    goto :goto_1

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1700(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/view/MediaSeekBar;

    .line 713
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setMax(I)V

    .line 714
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/view/MediaSeekBar;->setProgress(I)V

    goto :goto_2

    .line 717
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 718
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 719
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public onMusicDataChange(I)V
    .locals 4

    .line 600
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;->onMusicDataChange(I)V

    .line 601
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "LayoutChildManager"

    const-string p1, "onMusicDataChange: isMusicDataLoading is true"

    .line 602
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 607
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 608
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 625
    :pswitch_0
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;

    invoke-direct {v2, v1}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 622
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getGenreMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 619
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getAlbumsMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 616
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 613
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 610
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderMusic(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 630
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1002(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onScanStatusChange(IZ)V
    .locals 5

    .line 546
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isUsbExists(I)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p2, :cond_4

    .line 548
    iget-object p2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 549
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 567
    :pswitch_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;

    invoke-direct {v1, v0}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 564
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getGenreMusic(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 561
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getAlbumsMusic(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 558
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsMusic(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 555
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFileMusic(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 552
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderMusic(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 570
    :cond_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    .line 573
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$900(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 574
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v3

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 575
    :cond_3
    new-instance v3, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$598ba1FeGejOOfD9-mny8-6gENA;

    invoke-direct {v3, v2}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$598ba1FeGejOOfD9-mny8-6gENA;-><init>(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 581
    :cond_4
    iget-object p2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 582
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v1

    if-ne v1, p1, :cond_5

    .line 583
    new-instance v1, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$ks1HDNlTwAh8bCtAzL-JAUWhEQI;

    invoke-direct {v1, p0, v0}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$ks1HDNlTwAh8bCtAzL-JAUWhEQI;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUsbStatusChange(IZ)V
    .locals 4

    .line 636
    invoke-super {p0, p1, p2}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;->onUsbStatusChange(IZ)V

    if-nez p2, :cond_4

    const/4 p2, -0x1

    .line 640
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getMusicExistsDataIndex()[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 641
    array-length v2, v0

    if-lez v2, :cond_0

    .line 642
    aget-byte p2, v0, v1

    :cond_0
    const-string v0, "LayoutChildManager"

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onUsbStatusChange: usbIndex=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",index=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 647
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 649
    new-instance v3, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo;

    invoke-direct {v3, p0, v2, p2}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$0lFzQAzElTCBsZ_u7J70iFeqYbo;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/list/MediaDataList;I)V

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 665
    :cond_2
    iget-object p2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 667
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result p2

    const-string v0, "LayoutChildManager"

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUsbStatusChange: playUsbIndex=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",usbIndex=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p2, p1, :cond_6

    .line 670
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1200(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/widget/media/view/MediaImageView;

    .line 671
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lcom/yftech/car/widget/media/view/MediaImageView;->setAlbumPicturesExist(Landroid/view/View;Z)V

    .line 672
    invoke-virtual {p2}, Lcom/yftech/car/widget/media/view/MediaImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 673
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$4Za-Yj0UjNlbVEfmCE6Lt1KjrlA;

    invoke-direct {v2, p0, p2}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$4Za-Yj0UjNlbVEfmCE6Lt1KjrlA;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;Lcom/yftech/car/widget/media/view/MediaImageView;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 691
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const-string p2, "<unknown>"

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/data/entity/MediaFile;->setFolder(Ljava/lang/String;)V

    .line 692
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const-string p2, "<unknown>"

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/data/entity/MediaFile;->setTitle(Ljava/lang/String;)V

    .line 693
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const-string p2, "<unknown>"

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/data/entity/MediaFile;->setArtist(Ljava/lang/String;)V

    .line 694
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const-string p2, "<unknown>"

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/data/entity/MediaFile;->setAlbum(Ljava/lang/String;)V

    .line 695
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const-string p2, "<unknown>"

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/data/entity/MediaFile;->setGenre(Ljava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const-string p2, "<unknown>"

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/data/entity/MediaFile;->setFileName(Ljava/lang/String;)V

    .line 697
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 698
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setCurrentTime(I)V

    .line 699
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setSize(J)V

    .line 700
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/media/data/entity/MediaFile;->setId(J)V

    .line 701
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    const-string p2, "<unknown>"

    invoke-virtual {p1, p2}, Lcom/yftech/car/media/data/entity/MediaFile;->setData(Ljava/lang/String;)V

    .line 702
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$ALiX1UV8pOwy_XjCCEN6IMBEQz8;

    invoke-direct {p2, p0}, Lcom/yftech/car/widget/media/music/layout/-$$Lambda$MusicLayoutChildManager$4$ALiX1UV8pOwy_XjCCEN6IMBEQz8;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 726
    :cond_4
    iget-object p2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$800(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 727
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyList()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->isMediaUsbDisconnectAutoSwitchIndex()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 728
    iget-object v1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$4;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v1, p1, v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1500(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;ILcom/yftech/car/widget/media/list/MediaDataList;)V

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method
