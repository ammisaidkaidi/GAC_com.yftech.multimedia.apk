.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;->onResourceStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;

.field final synthetic val$isDisplaying:Z

.field final synthetic val$speed:I


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;ZI)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;

    iput-boolean p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;->val$isDisplaying:Z

    iput p3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;->val$speed:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1005
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;

    iget-object v0, v0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;

    iget-object v0, v0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResourceStateChanged:isPageDisplaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1010
    iget-boolean v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;

    iget-object v0, v0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1012
    iget-boolean v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;->val$isDisplaying:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1013
    iget v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;->val$speed:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1015
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10$1;->this$1:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;

    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$10;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
