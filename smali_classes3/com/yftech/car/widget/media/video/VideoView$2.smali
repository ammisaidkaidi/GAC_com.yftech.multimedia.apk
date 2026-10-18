.class Lcom/yftech/car/widget/media/video/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 479
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$2;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 481
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoView$2;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/yftech/car/widget/media/video/VideoView;->access$102(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 482
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoView$2;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$202(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 483
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$2;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$100(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$2;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$200(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 484
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$2;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoView$2;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/VideoView;->access$100(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView$2;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/VideoView;->access$200(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 485
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$2;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->requestLayout()V

    :cond_0
    return-void
.end method
