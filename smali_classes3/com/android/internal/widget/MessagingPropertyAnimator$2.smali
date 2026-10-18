.class Lcom/android/internal/widget/MessagingPropertyAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MessagingPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MessagingPropertyAnimator;->startTopAnimation(Landroid/view/View;IILandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 160
    iget-object p1, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->val$v:Landroid/view/View;

    const v0, 0x102043b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 161
    iget-object p0, p0, Lcom/android/internal/widget/MessagingPropertyAnimator$2;->val$v:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/widget/MessagingPropertyAnimator;->setClippingDeactivated(Landroid/view/View;Z)V

    return-void
.end method
