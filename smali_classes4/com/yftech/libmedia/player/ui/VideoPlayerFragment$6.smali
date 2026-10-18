.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;
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

    .line 700
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "com.yftech.avmservice.SHOW_STATE"

    .line 703
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "air_control_show"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_0
    const-string p1, "isShow"

    const/4 v0, 0x0

    .line 704
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 706
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Rec Back Car status isShow = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPagePlaying = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isBackCarToPause = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1200(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", player.isPlaying() = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isPlaying()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isScreenSaver:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 707
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1202(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    .line 708
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 710
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 711
    :cond_1
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    goto :goto_0

    .line 714
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 715
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$6;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    :cond_3
    :goto_0
    return-void
.end method
