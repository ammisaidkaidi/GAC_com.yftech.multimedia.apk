.class Lcom/yftech/car/widget/media/list/MediaDataList$10;
.super Ljava/lang/Object;
.source "MediaDataList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/MediaDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/MediaDataList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/MediaDataList;)V
    .locals 0

    .line 2030
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2033
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->getScrollState()I

    move-result v0

    if-nez v0, :cond_6

    .line 2035
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1600(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 2036
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/manager/MusicManager;->getPlayMusic()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object v0

    .line 2037
    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1700(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v2}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedPosition(Lcom/yftech/car/media/data/entity/MediaFile;)I

    move-result v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1700(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto/16 :goto_0

    .line 2040
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedPosition(Lcom/yftech/car/media/data/entity/MediaFile;)I

    move-result p0

    invoke-static {v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1800(Lcom/yftech/car/widget/media/list/MediaDataList;I)V

    goto/16 :goto_0

    .line 2042
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1600(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2043
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1700(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 2044
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v1

    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getPlayVideoId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedPosition(J)I

    move-result v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1700(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto/16 :goto_0

    .line 2046
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p0

    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getPlayVideoId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedPosition(J)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1800(Lcom/yftech/car/widget/media/list/MediaDataList;I)V

    goto :goto_0

    .line 2048
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1600(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 2049
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1700(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 2050
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object v1

    invoke-static {}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getPlayId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedPosition(J)I

    move-result v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1700(Lcom/yftech/car/widget/media/list/MediaDataList;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 2052
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$600(Lcom/yftech/car/widget/media/list/MediaDataList;)Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;

    move-result-object p0

    invoke-static {}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/photo/util/PhotoDataPlayManager;->getPlayId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter;->getSelectedPosition(J)I

    move-result p0

    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/list/MediaDataList;->access$1800(Lcom/yftech/car/widget/media/list/MediaDataList;I)V

    goto :goto_0

    .line 2055
    :cond_5
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/MediaDataList$10;->this$0:Lcom/yftech/car/widget/media/list/MediaDataList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/yftech/car/widget/media/list/MediaDataList;->scrollToPositionWithOffset(II)V

    goto :goto_0

    :cond_6
    const-string p0, "MediaDataList"

    .line 2058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateListPosition: scrollState=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
