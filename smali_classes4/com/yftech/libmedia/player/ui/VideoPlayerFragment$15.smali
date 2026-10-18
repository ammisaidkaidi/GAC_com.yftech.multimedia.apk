.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;
.super Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;
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

    .line 1770
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Lcom/yftech/car/screen/CarScreenManager$CarScreenCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedDayNightMode(I)V
    .locals 1

    .line 1801
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChangedDayNightMode:mode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onChangedScreenBrightness(ZI)V
    .locals 2

    .line 1774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedScreenBrightness:open="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isOpen="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", isPagePlaying="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1778
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p2

    if-ne p2, p1, :cond_0

    return-void

    .line 1781
    :cond_0
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_1

    .line 1784
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$600(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1785
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    goto :goto_0

    .line 1788
    :cond_1
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1789
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$100(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Lcom/yftech/car/widget/media/video/VideoPlayer;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayState(I)Z

    .line 1792
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$15;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1102(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;Z)Z

    :cond_3
    return-void
.end method
