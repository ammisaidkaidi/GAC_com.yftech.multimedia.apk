.class Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;
.super Ljava/lang/Object;
.source "VideoSeekViewImage.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 118
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p2, p3}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$002(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;Landroid/view/Surface;)Landroid/view/Surface;

    .line 119
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$100(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$100(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$000(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 121
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$200()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "VideoSeekViewImage"

    const-string p1, "onSurfaceTextureAvailable: setSurface  ----------------------------ok"

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "VideoSeekViewImage"

    const-string p1, "onSurfaceTextureAvailable: mMediaPlayer is null"

    .line 125
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 138
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$200()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VideoSeekViewImage"

    const-string v0, "onSurfaceTextureDestroyed: "

    .line 139
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$000(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-static {p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$000(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 143
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$1;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$002(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 131
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$200()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "VideoSeekViewImage"

    const-string p1, "onSurfaceTextureSizeChanged: "

    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
