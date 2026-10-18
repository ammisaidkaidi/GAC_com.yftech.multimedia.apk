.class Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$1;
.super Ljava/lang/Object;
.source "AnimatedZoomableController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$1;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$1;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    iget-object v1, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$1;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getWorkingTransform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->calculateInterpolation(Landroid/graphics/Matrix;F)V

    .line 62
    iget-object p1, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$1;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    iget-object p0, p0, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController$1;->this$0:Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->getWorkingTransform()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;->access$001(Lcom/media/common/ui/widget/zoomable/AnimatedZoomableController;Landroid/graphics/Matrix;)V

    return-void
.end method
