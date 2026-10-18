.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;
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

    .line 495
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 498
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "test"

    .line 499
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "value"

    const/4 v0, -0x1

    .line 501
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    const/4 p2, 0x5

    if-ge v1, p2, :cond_5

    .line 505
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4$1;-><init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;I)V

    mul-int/lit8 v2, v1, 0x64

    int-to-long v2, v2

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "aaaa"

    .line 513
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x1e

    if-eqz v0, :cond_1

    const-string p1, "value"

    .line 514
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 515
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2102(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)I

    goto :goto_1

    :cond_1
    const-string v0, "bbbb"

    .line 516
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "value"

    .line 518
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_2

    .line 520
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    move-result-object p0

    new-instance p1, Lcom/yftech/car/input/CarKey;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v1}, Lcom/yftech/car/input/CarKey;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/yftech/car/input/CarInputManager$CarInputCallback;->onInputKey(Lcom/yftech/car/input/CarKey;)V

    goto :goto_1

    .line 522
    :cond_2
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/input/CarInputManager$CarInputCallback;

    move-result-object p0

    new-instance p1, Lcom/yftech/car/input/CarKey;

    const/4 p2, 0x2

    invoke-direct {p1, p2, v1}, Lcom/yftech/car/input/CarKey;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/yftech/car/input/CarInputManager$CarInputCallback;->onInputKey(Lcom/yftech/car/input/CarKey;)V

    goto :goto_1

    :cond_3
    const-string p2, "cccc"

    .line 524
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 526
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onVehicleSpeedChanged(I)V

    goto :goto_1

    :cond_4
    const-string p2, "dddd"

    .line 527
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 529
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$4;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onVehicleSpeedChanged(I)V

    :cond_5
    :goto_1
    return-void
.end method
