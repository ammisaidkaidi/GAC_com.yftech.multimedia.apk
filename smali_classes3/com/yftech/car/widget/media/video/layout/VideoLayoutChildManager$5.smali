.class Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;
.super Ljava/lang/Object;
.source "VideoLayoutChildManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 830
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "LayoutChildManager"

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "run getSystemUIToTheTimeAutoHidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->isSystemUIToTheTimeAutoHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isSystemUIToTheTimeAutoHidden()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityHide()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 839
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSystemUiVisibilityHide()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$000(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->isAutoCountdownHide(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1100(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;Z)V

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$1200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/text/VisibilityTextButton;

    .line 846
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager$5;->this$0:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;->access$200(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->isMediaDataListShow(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/text/VisibilityTextButton;->setVisibilityShow(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method
