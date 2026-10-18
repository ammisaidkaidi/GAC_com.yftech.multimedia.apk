.class Lcom/yftech/car/widget/media/video/VideoView$5;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 570
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$5;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView$5;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoView;->access$1700(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$5;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoView;->access$1700(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
