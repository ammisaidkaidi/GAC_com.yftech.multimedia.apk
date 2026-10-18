.class Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$4;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Lcom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->showView()V
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

    .line 403
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$4;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$4;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method public onDragStateChanged(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 416
    :pswitch_0
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object p1

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$4;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->pauseTimeout(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V

    goto :goto_0

    .line 420
    :pswitch_1
    invoke-static {}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->getInstance()Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;

    move-result-object p1

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$4;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mManagerCallback:Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;

    .line 421
    invoke-virtual {p1, p0}, Lcom/media/common/ui/widget/top_snackbar/SnackBarManager;->restoreTimeoutIfPaused(Lcom/media/common/ui/widget/top_snackbar/SnackBarManager$Callback;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
