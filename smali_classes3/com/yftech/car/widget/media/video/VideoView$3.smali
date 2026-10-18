.class Lcom/yftech/car/widget/media/video/VideoView$3;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/VideoView;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/VideoView;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 492
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/video/VideoView;->access$302(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 506
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/yftech/car/widget/media/video/VideoView;->access$602(Lcom/yftech/car/widget/media/video/VideoView;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/yftech/car/widget/media/video/VideoView;->access$502(Lcom/yftech/car/widget/media/video/VideoView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/video/VideoView;->access$402(Lcom/yftech/car/widget/media/video/VideoView;Z)Z

    .line 509
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$700(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$700(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/VideoView;->access$800(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/car/widget/media/video/VideoView;->access$102(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 516
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$202(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 518
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$1000(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 520
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoView;->seekTo(I)V

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$100(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$200(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 524
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/VideoView;->access$100(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v3}, Lcom/yftech/car/widget/media/video/VideoView;->access$200(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 525
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$1100(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/VideoView;->access$100(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$1200(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v2}, Lcom/yftech/car/widget/media/video/VideoView;->access$200(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 529
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$1300(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 530
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoView;->start()V

    .line 531
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 532
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/MediaController;->show()V

    goto :goto_0

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    .line 535
    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_6

    .line 536
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 538
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 545
    :cond_5
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$1300(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 546
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$3;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->start()V

    :cond_6
    :goto_0
    return-void
.end method
