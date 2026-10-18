.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$1;
.super Ljava/lang/Object;
.source "MusicLayoutChildManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;

.field final synthetic val$imageView:Lcom/yftech/car/widget/media/view/MediaImageView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;Lcom/yftech/car/widget/media/view/MediaImageView;)V
    .locals 0

    .line 1480
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$1;->this$2:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;

    iput-object p2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$1;->val$imageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1483
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$1;->this$2:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;

    iget-object v0, v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    iget-object v0, v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

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

    .line 1485
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/view/ReflectedImage;->getReflectedViewId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1486
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$1;->this$2:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;

    iget-object v2, v2, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->access$3100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/view/ReflectedImage;->getReflectedViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1488
    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/view/ReflectedImage;->setReflectedImage(Landroid/view/View;)V

    return-void

    .line 1493
    :cond_1
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$1;->val$imageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {v2}, Lcom/yftech/car/widget/media/view/MediaImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/view/ReflectedImage;->isReflectedViewId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1494
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$1;->val$imageView:Lcom/yftech/car/widget/media/view/MediaImageView;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/view/ReflectedImage;->setReflectedImage(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method
