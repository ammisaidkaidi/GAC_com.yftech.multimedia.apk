.class Lcom/media/common/util/FastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/util/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/util/FastScroller;


# direct methods
.method constructor <init>(Lcom/media/common/util/FastScroller;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/media/common/util/FastScroller$AnimatorUpdater;->this$0:Lcom/media/common/util/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 583
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 584
    iget-object v0, p0, Lcom/media/common/util/FastScroller$AnimatorUpdater;->this$0:Lcom/media/common/util/FastScroller;

    iget-object v0, v0, Lcom/media/common/util/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 585
    iget-object v0, p0, Lcom/media/common/util/FastScroller$AnimatorUpdater;->this$0:Lcom/media/common/util/FastScroller;

    iget-object v0, v0, Lcom/media/common/util/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 586
    iget-object p0, p0, Lcom/media/common/util/FastScroller$AnimatorUpdater;->this$0:Lcom/media/common/util/FastScroller;

    invoke-virtual {p0}, Lcom/media/common/util/FastScroller;->requestRedraw()V

    return-void
.end method
