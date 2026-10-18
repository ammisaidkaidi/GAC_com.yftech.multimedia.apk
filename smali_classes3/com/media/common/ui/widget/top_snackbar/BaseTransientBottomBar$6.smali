.class Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$6;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 466
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$6;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 469
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$6;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    iget-object p1, p1, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->mView:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 471
    iget-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$6;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-virtual {p1}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 473
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$6;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_0

    .line 476
    :cond_0
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar$6;->this$0:Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/BaseTransientBottomBar;->onViewShown()V

    :goto_0
    return-void
.end method
