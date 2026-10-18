.class Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;
.super Ljava/lang/Object;
.source "VideoLayoutChildManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;
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

    .line 852
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayChange()V
    .locals 4

    .line 855
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 856
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/list/MediaDataList;

    .line 857
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->getMediaDefaultList()I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->isEmptyList()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 858
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 859
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getPlayList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateFileList(Ljava/util/List;Z)V

    goto :goto_0

    .line 862
    :cond_1
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->notifyDataSetChanged()V

    .line 863
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/MediaDataList;->updateListPosition()V

    goto :goto_0

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$6;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1300(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$UgO9eYxT97kOnmC8PBbvbaoP3OE;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/video/layout/-$$Lambda$UgO9eYxT97kOnmC8PBbvbaoP3OE;-><init>(Lcom/yftech/car/widget/media/video/VideoDataPlayManager$OnMediaDataListUpdateListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method
