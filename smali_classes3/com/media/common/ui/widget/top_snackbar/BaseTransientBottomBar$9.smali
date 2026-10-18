.class Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$9;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$9;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 532
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$9;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->onViewShown()V

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
