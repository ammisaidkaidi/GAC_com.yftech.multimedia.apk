.class Lcom/yftech/car/widget/media/video/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 553
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 555
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$302(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 556
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$1302(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 557
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 558
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$1400(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 561
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$1400(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$800(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 563
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$000(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 564
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$1600(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$4;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoView;->access$1500(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/AudioFocusRequest;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_2
    return-void
.end method
