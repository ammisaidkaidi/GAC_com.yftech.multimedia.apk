.class Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$3;
.super Ljava/lang/Object;
.source "PhotoLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/photo/button/PhotoButton$OnClickFunctionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickFunction(II)V
    .locals 6

    .line 513
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataList;

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 514
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v2

    if-ne p1, v2, :cond_0

    :cond_1
    const/16 v2, 0x3ee

    if-eq p2, v2, :cond_3

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    add-int/lit8 v3, p2, -0x64

    if-ltz v3, :cond_5

    const/4 v4, 0x4

    if-gt v3, v4, :cond_5

    .line 541
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v4

    .line 542
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbIndex(I)V

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_1

    .line 551
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsPhoto(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 548
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFilePhoto(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 545
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderPhoto(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto/16 :goto_1

    .line 554
    :cond_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getPhotoDirectory(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    const-string v2, "LayoutChildManager"

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initView: mediaDataList mediaDefaultList=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    add-int/lit16 v3, p2, -0x3e8

    .line 526
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 527
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsPhoto(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_1

    :pswitch_4
    add-int/lit16 v3, p2, -0x3e8

    .line 522
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 523
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFilePhoto(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_1

    :pswitch_5
    add-int/lit16 v3, p2, -0x3e8

    .line 518
    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 519
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderPhoto(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_1

    :cond_3
    add-int/lit16 v2, p2, -0x3e8

    .line 530
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setMediaDefaultList(I)V

    .line 531
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->isMediaListClickMemoryDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList()V

    goto :goto_1

    .line 534
    :cond_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getPhotoDirectory(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateDirectoryList(Ljava/util/List;)V

    .line 561
    :cond_5
    :goto_1
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v2

    .line 562
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$3;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v3}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$700(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x3e8

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/car/widget/media/photo/button/PhotoButton;

    add-int/2addr v5, v2

    .line 563
    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->isFunction(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/yftech/car/widget/media/photo/button/PhotoButton;->setSelected(Z)V

    goto :goto_2

    :cond_6
    if-lt p2, v5, :cond_0

    const/4 v2, 0x0

    .line 566
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
