.class Lcom/yftech/car/widget/media/video/PlayerManager$2;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Lcom/example/ffmpeg/listener/MyOnParparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/video/PlayerManager;->initFFMPEGListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/PlayerManager;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/PlayerManager;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onParpared$0(Lcom/yftech/car/widget/media/video/PlayerManager$2;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    .line 196
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$202(Lcom/yftech/car/widget/media/video/PlayerManager;Z)Z

    .line 198
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$300(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/example/ffmpeg/FFmpeg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$300(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/example/ffmpeg/FFmpeg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/example/ffmpeg/FFmpeg;->getVideoWidth()I

    move-result v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$300(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/example/ffmpeg/FFmpeg;

    move-result-object p0

    invoke-virtual {p0}, Lcom/example/ffmpeg/FFmpeg;->getVideoHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->onPrepared(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onParpared()V
    .locals 2

    const-string v0, "PlayerManager"

    const-string v1, "onParpared: "

    .line 192
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$2;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$2$8JYpHmmvFB_lBx1ldvS7SE9XyL4;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$2$8JYpHmmvFB_lBx1ldvS7SE9XyL4;-><init>(Lcom/yftech/car/widget/media/video/PlayerManager$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
