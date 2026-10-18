.class Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;FFFF)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1077
    iput p4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 1078
    iput p5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 1079
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 1080
    iput p2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 1081
    iput p3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    const-string p0, "TAG1"

    const-string/jumbo p1, "\u5df2\u70b9\u51fbAnimatedZoomRunnable"

    .line 1082
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private interpolate()F
    .locals 4

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    iget p0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    .line 1107
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 1108
    sget-object v0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1087
    iget-object v0, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1092
    :cond_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->interpolate()F

    move-result v1

    .line 1093
    iget v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    iget v3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    iget v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 1094
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    .line 1096
    iget-object v3, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-static {v3}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$200(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v5, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1097
    iget-object v2, p0, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;

    invoke-static {v2}, Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;->access$300(Lcom/yftech/car/widget/media/photo/photoview/PhotoViewAttacher;)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1101
    invoke-static {v0, p0}, Lcom/yftech/car/widget/media/photo/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
