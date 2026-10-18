.class Lcom/media/common/util/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/util/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/media/common/util/FastScroller;


# direct methods
.method constructor <init>(Lcom/media/common/util/FastScroller;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->this$0:Lcom/media/common/util/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 550
    iput-boolean p1, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 573
    iput-boolean p1, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 558
    iget-boolean p1, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 559
    iput-boolean v0, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->mCanceled:Z

    return-void

    .line 562
    :cond_0
    iget-object p1, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->this$0:Lcom/media/common/util/FastScroller;

    iget-object p1, p1, Lcom/media/common/util/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1

    .line 563
    iget-object p1, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->this$0:Lcom/media/common/util/FastScroller;

    iput v0, p1, Lcom/media/common/util/FastScroller;->mAnimationState:I

    .line 564
    iget-object p0, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->this$0:Lcom/media/common/util/FastScroller;

    invoke-virtual {p0, v0}, Lcom/media/common/util/FastScroller;->setState(I)V

    goto :goto_0

    .line 566
    :cond_1
    iget-object p1, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->this$0:Lcom/media/common/util/FastScroller;

    const/4 v0, 0x2

    iput v0, p1, Lcom/media/common/util/FastScroller;->mAnimationState:I

    .line 567
    iget-object p0, p0, Lcom/media/common/util/FastScroller$AnimatorListener;->this$0:Lcom/media/common/util/FastScroller;

    invoke-virtual {p0}, Lcom/media/common/util/FastScroller;->requestRedraw()V

    :goto_0
    return-void
.end method
