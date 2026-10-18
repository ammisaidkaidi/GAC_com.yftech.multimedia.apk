.class Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;
.super Ljava/lang/Object;
.source "MediaFileAdapter.java"

# interfaces
.implements Lcom/yftech/car/widget/media/list/holder/MediaFileHolder$OnFileItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItem(Lcom/yftech/car/media/data/entity/MediaFile;I)V
    .locals 6

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MediaFileAdapter"

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItem->time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ";mCurrentTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v4}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$300(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$300(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x15e

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 537
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v2, v0, v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$302(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;J)J

    .line 538
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$400(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "MediaFileAdapter"

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItem->onItemFile->title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 542
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->setPlayListData(Ljava/util/List;I)V

    goto :goto_0

    .line 543
    :cond_0
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 544
    invoke-static {}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->setPlayListData(Ljava/util/List;J)V

    .line 546
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$400(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {v1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$000(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onListFile(Ljava/util/List;I)V

    .line 548
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$4;->this$0:Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->access$400(Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;->onItemFile(Lcom/yftech/car/media/data/entity/MediaFile;)V

    :cond_2
    return-void
.end method
