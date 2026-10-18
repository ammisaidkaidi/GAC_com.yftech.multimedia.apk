.class Lcom/yftech/car/widget/media/video/VideoView$9;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/video/VideoView;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
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

    .line 973
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView$9;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 0

    .line 976
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView$9;->this$0:Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->invalidate()V

    return-void
.end method
