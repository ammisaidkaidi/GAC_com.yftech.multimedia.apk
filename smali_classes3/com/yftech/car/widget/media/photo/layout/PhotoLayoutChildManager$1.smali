.class Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;
.super Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;
.source "PhotoLayoutChildManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->getOnDataChangeCallback()Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;
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

    .line 312
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeCallback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onScanStatusChange$1(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V
    .locals 1

    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    return-void
.end method

.method public static synthetic lambda$onScanStatusChange$2(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 3

    .line 367
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

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

    .line 368
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

    .line 369
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->setUsbLoadingScan()Z

    return-void
.end method

.method public static synthetic lambda$onUsbStatusChange$0(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 3

    .line 319
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->clearList()V

    .line 320
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

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

    .line 321
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
    const/4 v1, 0x0

    .line 322
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->setLoadingStatus(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onPhotoDataChange(I)V
    .locals 4

    const-string v0, "LayoutChildManager"

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPhotoDataChange updateFileList: usbIndex=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

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

    .line 385
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsPhoto(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 391
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFilePhoto(I)Ljava/util/List;

    move-result-object v1

    .line 392
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->equalsFileList(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 393
    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 388
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderPhoto(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 400
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;

    invoke-direct {v1, v0}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

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

.method public onScanStatusChange(IZ)V
    .locals 5

    .line 334
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->isUsbExists(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_5

    .line 336
    iget-object p2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 337
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 349
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getArtistsPhoto(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 343
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFilePhoto(I)Ljava/util/List;

    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->equalsFileList(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 345
    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 340
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getFolderPhoto(I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFolderList(Ljava/util/List;Z)V

    goto :goto_0

    .line 352
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;

    invoke-direct {v1, v0}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$CZB4jbJKe4H7VHMQ0XTlIdVSXzU;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 355
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/widget/media/view/MediaImageLoading;

    .line 356
    invoke-virtual {v2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->getMediaDataListId()I

    move-result v3

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getId()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 357
    :cond_4
    new-instance v3, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$1$ajGKjFcKKbcppF1Q0CnkhwB4294;

    invoke-direct {v3, v2}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$1$ajGKjFcKKbcppF1Q0CnkhwB4294;-><init>(Lcom/yftech/car/widget/media/view/MediaImageLoading;)V

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/view/MediaImageLoading;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 364
    :cond_5
    iget-object p2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 365
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 366
    new-instance v1, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$1$4xGRWnIaZtxyKR_tF8CPjtErdjI;

    invoke-direct {v1, p0, v0}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$1$4xGRWnIaZtxyKR_tF8CPjtErdjI;-><init>(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUsbStatusChange(IZ)V
    .locals 2

    if-nez p2, :cond_1

    .line 316
    iget-object p2, p0, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;

    invoke-static {p2}, Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 317
    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getUsbIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 318
    new-instance v1, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$1$UxiGZAI7XTbZBgoKmNLCBt9xG34;

    invoke-direct {v1, p0, v0}, Lcom/yftech/car/widget/media/photo/layout/-$$Lambda$PhotoLayoutChildManager$1$UxiGZAI7XTbZBgoKmNLCBt9xG34;-><init>(Lcom/yftech/car/widget/media/photo/layout/PhotoLayoutChildManager$1;Lcom/yftech/car/widget/media/list/MediaDataList;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
