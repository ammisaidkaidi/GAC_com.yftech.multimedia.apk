.class Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;
.super Ljava/lang/Object;
.source "VideoSeekViewImage.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/VideoSeekViewImage;
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

    .line 486
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 489
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$200()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VideoSeekViewImage"

    const-string v0, "onPrepared: "

    .line 490
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$302(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;Z)Z

    .line 493
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$402(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;Z)Z

    .line 494
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$502(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;I)I

    .line 500
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoSeekViewImage$2;->this$0:Lcom/yftech/car/widget/media/video/VideoSeekViewImage;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->access$500(Lcom/yftech/car/widget/media/video/VideoSeekViewImage;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/video/VideoSeekViewImage;->setPlayProgress(I)V

    return-void
.end method
