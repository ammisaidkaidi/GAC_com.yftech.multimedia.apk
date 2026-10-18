.class Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$1;
.super Ljava/lang/Object;
.source "TopSnackBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$1;->this$0:Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    iput-object p2, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 318
    iget-object p0, p0, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar$1;->this$0:Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->dispatchDismiss(I)V

    return-void
.end method
