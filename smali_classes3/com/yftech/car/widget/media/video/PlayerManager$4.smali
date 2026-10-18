.class Lcom/yftech/car/widget/media/video/PlayerManager$4;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Lcom/example/ffmpeg/listener/MyOnErrorListener;


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

    .line 217
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager$4;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onError$0(Lcom/yftech/car/widget/media/video/PlayerManager$4;ILjava/lang/String;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$4;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    .line 224
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$4;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$4;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "PlayerManager"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onError: FFMPEG code=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",codeMsg=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$4;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager$4;->this$0:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk;

    invoke-direct {v1, p0, p1, p2}, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk;-><init>(Lcom/yftech/car/widget/media/video/PlayerManager$4;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
