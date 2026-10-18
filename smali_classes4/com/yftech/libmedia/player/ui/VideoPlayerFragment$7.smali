.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$7;
.super Lcom/yftech/car/input/CarInputManager$CarInputCallback;
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

    .line 853
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$7;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Lcom/yftech/car/input/CarInputManager$CarInputCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputKey(Lcom/yftech/car/input/CarKey;)V
    .locals 3

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInputKey:CarKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/input/CarKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "sys.atc.carplay.app.show_ui"

    const/4 v1, 0x0

    .line 859
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInputKey:isCarPlayDisplaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$7;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 869
    :cond_1
    iget v0, p1, Lcom/yftech/car/input/CarKey;->mAction:I

    if-nez v0, :cond_2

    .line 871
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$7;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 872
    iget p1, p1, Lcom/yftech/car/input/CarKey;->mCode:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 873
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$7;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
