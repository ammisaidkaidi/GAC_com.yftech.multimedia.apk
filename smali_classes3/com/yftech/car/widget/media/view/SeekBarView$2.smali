.class Lcom/yftech/car/widget/media/view/SeekBarView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/car/widget/media/view/SeekBarView;->getTargetAnimator(Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/view/SeekBarView;

.field final synthetic val$anim:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/view/SeekBarView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/yftech/car/widget/media/view/SeekBarView$2;->this$0:Lcom/yftech/car/widget/media/view/SeekBarView;

    iput-object p2, p0, Lcom/yftech/car/widget/media/view/SeekBarView$2;->val$anim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/yftech/car/widget/media/view/SeekBarView$2;->val$anim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    return-void
.end method
