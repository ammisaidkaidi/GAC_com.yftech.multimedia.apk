.class Lcom/media/common/util/MediaDataFastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "MediaDataFastScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/util/MediaDataFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/util/MediaDataFastScroller;


# direct methods
.method constructor <init>(Lcom/media/common/util/MediaDataFastScroller;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/media/common/util/MediaDataFastScroller$AnimatorUpdater;->this$0:Lcom/media/common/util/MediaDataFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 591
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 592
    iget-object v0, p0, Lcom/media/common/util/MediaDataFastScroller$AnimatorUpdater;->this$0:Lcom/media/common/util/MediaDataFastScroller;

    iget-object v0, v0, Lcom/media/common/util/MediaDataFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 593
    iget-object v0, p0, Lcom/media/common/util/MediaDataFastScroller$AnimatorUpdater;->this$0:Lcom/media/common/util/MediaDataFastScroller;

    iget-object v0, v0, Lcom/media/common/util/MediaDataFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 594
    iget-object p0, p0, Lcom/media/common/util/MediaDataFastScroller$AnimatorUpdater;->this$0:Lcom/media/common/util/MediaDataFastScroller;

    invoke-virtual {p0}, Lcom/media/common/util/MediaDataFastScroller;->requestRedraw()V

    return-void
.end method
