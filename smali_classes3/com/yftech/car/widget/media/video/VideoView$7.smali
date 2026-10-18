.class Lcom/yftech/car/widget/media/video/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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

    .line 632
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$7;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 634
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$7;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-static {p0, p2}, Lcom/yftech/car/widget/media/video/VideoView;->access$1902(Lcom/yftech/car/widget/media/video/VideoView;I)I

    return-void
.end method
