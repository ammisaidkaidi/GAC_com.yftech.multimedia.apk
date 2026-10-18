.class Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;I)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$10;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iput p2, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$10;->val$event:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 560
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$10;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iget p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$10;->val$event:I

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 555
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$10;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-static {p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->access$000(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0xb4

    invoke-interface {p0, p1, v0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$ContentViewCallback;->animateContentOut(II)V

    return-void
.end method
