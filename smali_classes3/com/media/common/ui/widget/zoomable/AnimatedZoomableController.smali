.class public Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;
.super Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;
.source "AnimatedZoomableController.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    sput-object v0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;-><init>(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V

    const/4 p1, 0x2

    .line 41
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 42
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$001(Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;Landroid/graphics/Matrix;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/media/common/ui/widget/zoomable/AbstractAnimatedZoomableController;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static newInstance()Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;
    .locals 2

    .line 35
    new-instance v0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    invoke-static {}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->newInstance()Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;-><init>(Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;)V

    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 104
    sget-object p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->TAG:Ljava/lang/Class;

    return-object p0
.end method

.method public setTransformAnimated(Landroid/graphics/Matrix;JLjava/lang/Runnable;)V
    .locals 3
    .param p4    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setTransformAnimated: duration %d ms"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->stopAnimation()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(Ljava/lang/Boolean;)V

    .line 52
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->isAnimating()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/facebook/common/internal/Preconditions;->checkState(Z)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->setAnimating(Z)V

    .line 54
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getTransform()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getStartValues()[F

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 56
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getStopValues()[F

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 57
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$1;

    invoke-direct {p2, p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$1;-><init>(Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;

    invoke-direct {p2, p0, p4}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;-><init>(Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 87
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stopAnimation()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "stopAnimation"

    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 98
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 99
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    return-void
.end method
