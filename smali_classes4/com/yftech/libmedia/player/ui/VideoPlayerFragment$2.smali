.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;
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

    .line 404
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.systemui.screenview"

    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isShow"

    .line 410
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 411
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p2, v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1002(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 412
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.systemui.screenview:isShow="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isScreenSaver:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 414
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const-string p2, "1"

    .line 415
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 416
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 417
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    goto :goto_0

    .line 420
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "com.systemui.screenview:isBtCall="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",isPagePlaying:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    .line 421
    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isBackCarToPause:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    .line 422
    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 420
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 423
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1800(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 424
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$2;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    :cond_1
    :goto_0
    return-void
.end method
