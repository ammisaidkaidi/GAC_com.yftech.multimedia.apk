.class Lcom/yftech/libgallery/view/ClipImageView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ClipImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libgallery/view/ClipImageView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libgallery/view/ClipImageView;


# direct methods
.method constructor <init>(Lcom/yftech/libgallery/view/ClipImageView;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/yftech/libgallery/view/ClipImageView$1;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 107
    iget-object p0, p0, Lcom/yftech/libgallery/view/ClipImageView$1;->this$0:Lcom/yftech/libgallery/view/ClipImageView;

    invoke-virtual {p0}, Lcom/yftech/libgallery/view/ClipImageView;->getZoomableController()Lcom/media/common/ui/widget/zoomable/ZoomableController;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;

    .line 108
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get e.getX(), e.getY()"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "get y:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 109
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v3, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 110
    invoke-virtual {v0, v3}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mapViewToImage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 111
    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getMaxScaleFactor()F

    move-result v1

    const-string p0, "hhc"

    .line 114
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSingleTapConfirmed: maxScale = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "   minScale "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getScaleFactor()F

    move-result p0

    add-float/2addr v4, v1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v4, p1

    cmpg-float p0, p0, v4

    if-gez p0, :cond_0

    const/4 v4, 0x7

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    .line 116
    invoke-virtual/range {v0 .. v7}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;IJLjava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 118
    invoke-virtual/range {v0 .. v7}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;IJLjava/lang/Runnable;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
