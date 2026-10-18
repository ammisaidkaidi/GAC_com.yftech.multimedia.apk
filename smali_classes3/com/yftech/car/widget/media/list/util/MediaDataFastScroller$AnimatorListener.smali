.class Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediaDataFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 551
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 574
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 559
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 560
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->mCanceled:Z

    return-void

    .line 563
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;

    iget-object p1, p1, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    .line 564
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;

    iput v0, p1, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;->mAnimationState:I

    .line 565
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;->setState(I)V

    goto :goto_0

    .line 567
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;

    const/4 v0, 0x2

    iput v0, p1, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;->mAnimationState:I

    .line 568
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller$AnimatorListener;->this$0:Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/util/MediaDataFastScroller;->requestRedraw()V

    :goto_0
    return-void
.end method
