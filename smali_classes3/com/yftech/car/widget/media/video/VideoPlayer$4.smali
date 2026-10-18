.class Lcom/yftech/car/widget/media/video/VideoPlayer$4;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V
    .locals 0

    .line 2166
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2169
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2171
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-object v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1200(Lcom/yftech/car/widget/media/video/VideoPlayer;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    .line 2172
    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    .line 2171
    invoke-virtual/range {v1 .. v6}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->loadSeekProgressImage(Ljava/lang/String;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1200(Lcom/yftech/car/widget/media/video/VideoPlayer;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    .line 2176
    invoke-static {v3}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {v4}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$1100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    .line 2175
    invoke-static {v0, v1, v2, v3, v4}, Lcom/yftech/car/media/video/util/VideoBitmapUtil;->loadVideo(Ljava/lang/String;JII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2179
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;->this$0:Lcom/yftech/car/widget/media/video/VideoPlayer;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->access$000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/os/Handler;

    move-result-object p0

    const/16 v1, 0x37

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method
