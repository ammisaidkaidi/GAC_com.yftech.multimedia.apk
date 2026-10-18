.class Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;
.super Ljava/lang/Object;
.source "FullScreenImageFragment.java"

# interfaces
.implements Lcom/media/common/ui/widget/zoomable/DoubleTapGestureListener$OnSingleClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/ui/FullScreenImageFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClickDown()V
    .locals 4

    .line 539
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    iget-object v1, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1200(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1300(Lcom/yftech/libgallery/ui/FullScreenImageFragment;Z)V

    .line 543
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 545
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9$1;

    invoke-direct {v1, p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9$1;-><init>(Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;)V

    const-wide/16 v2, 0x82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDoubleTapMoving()V
    .locals 0

    const-string p0, "onDoubleTapMoving"

    .line 558
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onNext()V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$700(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method

.method public onPrev()V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$800(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    return-void
.end method

.method public onSingleClick()V
    .locals 4

    const-string v0, "image on single click"

    .line 512
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-virtual {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 518
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$1400(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$000(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)V

    .line 522
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    :cond_0
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$000(Lcom/yftech/libgallery/ui/FullScreenImageFragment;I)V

    .line 530
    iget-object v0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {v0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    iget-object p0, p0, Lcom/yftech/libgallery/ui/FullScreenImageFragment$9;->this$0:Lcom/yftech/libgallery/ui/FullScreenImageFragment;

    invoke-static {p0}, Lcom/yftech/libgallery/ui/FullScreenImageFragment;->access$600(Lcom/yftech/libgallery/ui/FullScreenImageFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method
