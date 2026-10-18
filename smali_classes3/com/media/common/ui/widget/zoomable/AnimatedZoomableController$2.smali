.class Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnimatedZoomableController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->setTransformAnimated(Landroid/graphics/Matrix;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

.field final synthetic val$onAnimationComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;Ljava/lang/Runnable;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    iput-object p2, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->val$onAnimationComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private onAnimationStopped()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->val$onAnimationComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->val$onAnimationComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->setAnimating(Z)V

    .line 84
    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getDetector()Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/gestures/TransformGestureDetector;->restartGesture()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v0, "setTransformAnimated: animation cancelled"

    invoke-static {p1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->onAnimationStopped()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getLogTag()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v0, "setTransformAnimated: animation finished"

    invoke-static {p1, v0}, Lcom/facebook/common/logging/FLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$2;->onAnimationStopped()V

    return-void
.end method
