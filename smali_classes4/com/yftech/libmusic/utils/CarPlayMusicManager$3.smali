.class Lcom/yftech/libmusic/utils/CarPlayMusicManager$3;
.super Landroid/os/Handler;
.source "CarPlayMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/utils/CarPlayMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/utils/CarPlayMusicManager;Landroid/os/Looper;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$3;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 573
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MSG_CHECK_CARPLAY_SERVICE"

    .line 575
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 576
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$3;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$400(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-nez p1, :cond_2

    .line 577
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$3;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$900(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 578
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$3;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$900(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    :cond_1
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$3;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$900(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method
