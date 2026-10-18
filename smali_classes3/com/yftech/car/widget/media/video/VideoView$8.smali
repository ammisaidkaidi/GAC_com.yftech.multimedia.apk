.class Lcom/yftech/car/widget/media/video/VideoView$8;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    .line 684
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 688
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1, p3}, Lcom/yftech/car/widget/media/video/VideoView;->access$1102(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 689
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1, p4}, Lcom/yftech/car/widget/media/video/VideoView;->access$1202(Lcom/yftech/car/widget/media/video/VideoView;I)I

    .line 690
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$1300(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 691
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/VideoView;->access$100(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/VideoView;->access$200(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p3

    if-ne p3, p4, :cond_1

    move p2, v0

    .line 692
    :cond_1
    iget-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p3}, Lcom/yftech/car/widget/media/video/VideoView;->access$800(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 693
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$1000(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 694
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p2}, Lcom/yftech/car/widget/media/video/VideoView;->access$1000(Lcom/yftech/car/widget/media/video/VideoView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/yftech/car/widget/media/video/VideoView;->seekTo(I)V

    .line 696
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->start()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 702
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$2002(Lcom/yftech/car/widget/media/video/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 703
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoView;->access$2100(Lcom/yftech/car/widget/media/video/VideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 709
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$2002(Lcom/yftech/car/widget/media/video/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 710
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 711
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$8;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/video/VideoView;->access$2200(Lcom/yftech/car/widget/media/video/VideoView;Z)V

    return-void
.end method
