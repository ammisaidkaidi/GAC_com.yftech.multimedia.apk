.class Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;
.super Ljava/lang/Object;
.source "MusicLayoutChildManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)V
    .locals 0

    .line 1473
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1476
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->access$3000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    iget-object v0, v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1200(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/view/MediaImageView;

    .line 1478
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->access$3100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/view/MediaImageView;->setAlbumPicturesExist(Landroid/view/View;Z)V

    .line 1479
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->access$3000(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1480
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    iget-object v2, v2, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$1;

    invoke-direct {v3, p0, v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$1;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;Lcom/yftech/car/widget/media/view/MediaImageView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    iget-object v0, v0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1200(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/widget/media/view/MediaImageView;

    .line 1503
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->access$3100(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/widget/media/view/MediaImageView;->setAlbumPicturesExist(Landroid/view/View;Z)V

    .line 1504
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/view/MediaImageView;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/view/MediaImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1505
    iget-object v2, p0, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;->this$1:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;

    iget-object v2, v2, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable;->this$0:Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;

    invoke-static {v2}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;->access$1400(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$2;

    invoke-direct {v3, p0, v1}, Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1$2;-><init>(Lcom/yftech/car/widget/media/music/layout/MusicLayoutChildManager$MusicImageRunnable$1;Lcom/yftech/car/widget/media/view/MediaImageView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    return-void
.end method
