.class Lcom/yftech/car/widget/media/video/PlayerManager$1;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Lcom/example/ffmpeg/listener/MyOnCompleteListener;


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

    .line 173
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$1;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onComplete$0(Lcom/yftech/car/widget/media/video/PlayerManager$1;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$1;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$1;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->onCompletion()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    const-string v0, "PlayerManager"

    const-string v1, " onComplete: "

    .line 176
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$1;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$1;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$1$1YYxbSiWUHYChPEX_Tq25SnNU8g;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$1$1YYxbSiWUHYChPEX_Tq25SnNU8g;-><init>(Lcom/yftech/car/widget/media/video/PlayerManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
