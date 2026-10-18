.class Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$11;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousAnimatedIntValue:I

.field final synthetic this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$11;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 564
    iput p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$11;->mPreviousAnimatedIntValue:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 568
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 569
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$11;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget v1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$11;->mPreviousAnimatedIntValue:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$11;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 575
    :goto_0
    iput p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$11;->mPreviousAnimatedIntValue:I

    return-void
.end method
