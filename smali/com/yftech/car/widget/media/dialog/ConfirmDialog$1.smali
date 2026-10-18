.class Lcom/yftech/car/widget/media/dialog/ConfirmDialog$1;
.super Ljava/lang/Object;
.source "ConfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/dialog/ConfirmDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$1;->this$0:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$1;->this$0:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-static {p1}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->access$000(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$1;->this$0:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-static {p1}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->access$000(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;->onConfirm(Z)V

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$1;->this$0:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->access$102(Lcom/yftech/car/widget/media/dialog/ConfirmDialog;Z)Z

    .line 164
    iget-object p0, p0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog$1;->this$0:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->dismiss()V

    return-void
.end method
