.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "VideoPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.yftech.hicar.show"

    .line 443
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "isShow"

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 447
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.yftech.hicar.show:isShow="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result p2

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.yftech.hicar.show:speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    if-eqz v1, :cond_0

    .line 456
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    .line 457
    iget-boolean v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    .line 459
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.yftech.hicar.show:isDisplaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {v1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    if-eqz v1, :cond_1

    .line 466
    invoke-virtual {v1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 470
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-lt p2, v1, :cond_2

    return-void

    :cond_2
    if-nez v0, :cond_3

    return-void

    .line 485
    :cond_3
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$3;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    const/16 p2, 0x50

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 486
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_4
    return-void
.end method
