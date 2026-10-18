.class final Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;
.super Lcom/google/android/material/behavior/SwipeDismissBehavior;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
        "Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Landroid/view/View;)Z
    .locals 0

    .line 718
    instance-of p0, p1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return p0
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 715
    check-cast p2, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 724
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 728
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 729
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 728
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->pauseTimeout(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V

    goto :goto_0

    .line 735
    :cond_0
    :pswitch_1
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$Behavior;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iget-object v1, v1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->restoreTimeoutIfPaused(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V

    .line 738
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
