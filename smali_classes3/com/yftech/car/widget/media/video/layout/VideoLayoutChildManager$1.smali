.class Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$1;
.super Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;
.source "VideoLayoutChildManager.java"


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

    .line 145
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/list/adapter/MediaFileAdapter$OnItemFileListener;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 148
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isOnTouchClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$1;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->startPlayList(Ljava/util/List;I)Z

    :cond_0
    return-void
.end method
