.class Lcom/yftech/libmedia/player/PlayActivity$7;
.super Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$7;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVehicleSpeedChanged(I)V
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVehicleSpeedChanged:Speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$7;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1e

    .line 427
    iput v1, v0, Landroid/os/Message;->what:I

    .line 428
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 429
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$7;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
