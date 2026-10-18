.class Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;
.super Ljava/lang/Object;
.source "FullScreenImageActivity.java"

# interfaces
.implements Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/FullScreenImageActivity;->initW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClickDown()V
    .locals 4

    .line 393
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$900(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$1000(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-virtual {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 400
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6$1;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6$1;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;)V

    const-wide/16 v2, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDoubleTapMoving()V
    .locals 0

    const-string p0, "onDoubleTapMoving"

    .line 413
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onNext()V
    .locals 0

    return-void
.end method

.method public onPrev()V
    .locals 0

    return-void
.end method

.method public onSingleClick()V
    .locals 4

    const-string v0, "image on single click"

    .line 365
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-virtual {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 371
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$1100(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$000(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)V

    .line 375
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    :cond_0
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$000(Lcom/yftech/libgallery/ui/FullScreenImageActivity;I)V

    .line 384
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageActivity$6;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageActivity;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageActivity;->access$500(Lcom/yftech/libgallery/ui/FullScreenImageActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method
