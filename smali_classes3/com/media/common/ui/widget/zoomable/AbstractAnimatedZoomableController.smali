.class public abstract Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;
.super Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;
.source "AbstractAnimatedZoomableController.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final mCurrentValues:[F

.field private mIsAnimating:Z

.field private final mNewTransform:Landroid/graphics/Matrix;

.field private final mStartValues:[F

.field private final mStopValues:[F

.field private final mWorkingTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;-><init>(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V

    const/16 p1, 0x9

    .line 26
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mStartValues:[F

    .line 27
    new-array v0, p1, [F

    iput-object v0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mStopValues:[F

    .line 28
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mCurrentValues:[F

    .line 29
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mNewTransform:Landroid/graphics/Matrix;

    .line 30
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mWorkingTransform:Landroid/graphics/Matrix;

    return-void
.end method

.method private setTransformImmediate(Landroid/graphics/Matrix;)V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setTransformImmediate"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->stopAnimation()V

    .line 116
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mWorkingTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 117
    invoke-super {p0, p1}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->setTransform(Landroid/graphics/Matrix;)V

    .line 118
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getDetector()Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->restartGesture()V

    return-void
.end method


# virtual methods
.method protected calculateInterpolation(Landroid/graphics/Matrix;F)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mCurrentValues:[F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mStartValues:[F

    aget v3, v3, v0

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mStopValues:[F

    aget v3, v3, v0

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mCurrentValues:[F

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method protected abstract getLogTag()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected getStartValues()[F
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mStartValues:[F

    return-object p0
.end method

.method protected getStopValues()[F
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mStopValues:[F

    return-object p0
.end method

.method protected getWorkingTransform()Landroid/graphics/Matrix;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mWorkingTransform:Landroid/graphics/Matrix;

    return-object p0
.end method

.method protected isAnimating()Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mIsAnimating:Z

    return p0
.end method

.method public isIdentity()Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->isIdentity()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onGestureBegin(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onGestureBegin"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->stopAnimation()V

    .line 145
    invoke-super {p0, p1}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->onGestureBegin(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V

    return-void
.end method

.method public onGestureUpdate(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "onGestureUpdate %s"

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "(ignored)"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 154
    :cond_1
    invoke-super {p0, p1}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->onGestureUpdate(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->stopAnimation()V

    .line 40
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mWorkingTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 41
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mNewTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 42
    invoke-super {p0}, Lcom/media/common/ui/widget/zoomable/DefaultZoomableController;->reset()V

    return-void
.end method

.method protected setAnimating(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mIsAnimating:Z

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;JLjava/lang/Runnable;)V
    .locals 3
    .param p4    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setTransform: duration %d ms"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->setTransformImmediate(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->setTransformAnimated(Landroid/graphics/Matrix;JLjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public abstract setTransformAnimated(Landroid/graphics/Matrix;JLjava/lang/Runnable;)V
    .param p4    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected abstract stopAnimation()V
.end method

.method public zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 8

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 64
    invoke-virtual/range {v0 .. v7}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;IJLjava/lang/Runnable;)V

    return-void
.end method

.method public zoomToPoint(FLandroid/graphics/PointF;Landroid/graphics/PointF;IJLjava/lang/Runnable;)V
    .locals 6
    .param p7    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "zoomToPoint: duration %d ms"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mNewTransform:Landroid/graphics/Matrix;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->calculateZoomToPointTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    .line 90
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->mNewTransform:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, p5, p6, p7}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->setTransform(Landroid/graphics/Matrix;JLjava/lang/Runnable;)V

    return-void
.end method
