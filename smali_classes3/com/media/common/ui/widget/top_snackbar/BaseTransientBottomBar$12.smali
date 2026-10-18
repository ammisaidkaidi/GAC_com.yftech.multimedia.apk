.class Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$12;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    .line 584
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$12;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iput p2, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$12;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 587
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$12;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iget p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$12;->val$event:I

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
