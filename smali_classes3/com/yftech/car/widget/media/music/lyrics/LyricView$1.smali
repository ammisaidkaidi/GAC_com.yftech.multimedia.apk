.class Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;
.super Landroid/os/Handler;
.source "LyricView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/music/lyrics/LyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/music/lyrics/LyricView;Landroid/os/Looper;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 319
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$300(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$000(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$100(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$200(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)I

    move-result v0

    int-to-long v2, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x64

    :goto_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$400(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 322
    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {}, Lcom/yftech/car/widget/media/manager/MusicManager;->getInstance()Lcom/yftech/car/widget/media/manager/MusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/manager/MusicManager;->getCurrentPlayProgress()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->updateTimeMills(J)V

    goto :goto_1

    .line 324
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 325
    iget-object p1, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    iget-object p0, p0, Lcom/yftech/car/widget/media/music/lyrics/LyricView$1;->this$0:Lcom/yftech/car/widget/media/music/lyrics/LyricView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$500(Lcom/yftech/car/widget/media/music/lyrics/LyricView;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/car/widget/media/music/lyrics/LyricView;->access$600(Lcom/yftech/car/widget/media/music/lyrics/LyricView;I)V

    :cond_2
    :goto_1
    return-void
.end method
