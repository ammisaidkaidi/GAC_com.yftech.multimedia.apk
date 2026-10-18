.class Lcom/yftech/car/widget/media/list/MediaDataList$3;
.super Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;
.source "MediaDataList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/list/MediaDataList;->getOnItemFileListener(Landroid/content/Context;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/content/Context;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iput-object p2, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCheckBoxStatus$0(Lcom/yftech/car/widget/media/list/MediaDataList$3;IZ)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onCheckBoxStatus(IZ)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$300(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$300(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;->onCheckBoxStatus(IZ)V

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getDataListSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 500
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0, p1, p2}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$700(Lcom/yftech/car/widget/media/list/MediaDataList;IZ)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$onListSizeChange$1(Lcom/yftech/car/widget/media/list/MediaDataList$3;I)V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onListSizeChange(I)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$300(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$300(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;->onListSizeChange(I)V

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->notifyDataSetChangedList()V

    if-lez p1, :cond_2

    .line 516
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedSize(Z)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->isCheckBox()Z

    move-result p0

    invoke-static {p1, v0, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$700(Lcom/yftech/car/widget/media/list/MediaDataList;IZ)V

    goto :goto_2

    .line 518
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$800(Lcom/yftech/car/widget/media/list/MediaDataList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    .line 519
    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->setVisibility(I)V

    goto :goto_0

    .line 521
    :cond_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$900(Lcom/yftech/car/widget/media/list/MediaDataList;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/widget/media/text/MediaDataListText;

    const-string v0, "MediaDataList"

    const-string v2, " onListSizeChange: MediaDataListText GONE"

    .line 522
    invoke-static {v0, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/text/MediaDataListText;->setVisibility(I)V

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getMediaListType()I
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$000(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result p0

    return p0
.end method

.method public getSearchFlags()I
    .locals 0

    .line 487
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$500(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result p0

    return p0
.end method

.method public onCheckBoxStatus(IZ)V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    new-instance v1, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$3$chWa3rhFMzOtrU-mUtfxVx1gd84;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$3$chWa3rhFMzOtrU-mUtfxVx1gd84;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList$3;IZ)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onItemFile(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 6

    .line 439
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-nez v0, :cond_5

    .line 440
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$000(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v0

    const/16 v4, 0x64

    const/4 v5, 0x6

    if-ne v0, v4, :cond_2

    .line 441
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getMusicType()I

    move-result v0

    .line 442
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v1

    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_1

    :cond_0
    const/4 v0, 0x7

    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    goto :goto_0

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$000(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 444
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/yftech/car/widget/media/manager/MusicManager;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    goto :goto_0

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$000(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_4

    .line 446
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    goto :goto_0

    .line 448
    :cond_4
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$000(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/yftech/car/widget/media/manager/MusicManager;->start(Lcom/yftech/car/media/data/entity/MediaFile;I)Z

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$100(Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/content/Context;)V

    goto :goto_1

    .line 451
    :cond_5
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 452
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$100(Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/content/Context;)V

    goto :goto_1

    .line 453
    :cond_6
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 454
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFolderPath()Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v1, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$200(Lcom/yftech/car/widget/media/list/MediaDataList;Ljava/lang/String;)V

    goto :goto_1

    .line 456
    :cond_7
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 457
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$100(Lcom/yftech/car/widget/media/list/MediaDataList;Landroid/content/Context;)V

    .line 459
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    if-eq v0, v2, :cond_a

    .line 460
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$300(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 461
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$300(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;->onItemFile(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 463
    :cond_9
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 464
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onItemFile(Lcom/yftech/car/media/data/entity/MediaFile;)V

    :cond_a
    return-void
.end method

.method public onListFile(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;I)V"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$400(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onListFile(Ljava/util/List;I)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$300(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 476
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$300(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/list/MediaDataList$OnItemChangeListener;->onListFile(Ljava/util/List;I)V

    :cond_1
    return-void
.end method

.method public onListSizeChange(I)V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$3;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    new-instance v1, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$3$ypRBDwFLiBIJIqOImmIOllwHmmM;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/list/-$$Lambda$MediaDataList$3$ypRBDwFLiBIJIqOImmIOllwHmmM;-><init>(Lcom/yftech/car/widget/media/list/MediaDataList$3;I)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
