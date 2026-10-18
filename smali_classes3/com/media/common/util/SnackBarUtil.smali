.class public Lcom/media/common/util/SnackBarUtil;
.super Ljava/lang/Object;
.source "SnackBarUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showFailMessage(Landroid/view/View;II)V
    .locals 1

    .line 56
    sget v0, Lcom/media/common/ui/widget/R$layout;->design_snackbar_fail:I

    invoke-static {p0, v0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;III)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->show()V

    return-void
.end method

.method public static showFailMessage(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 49
    sget v0, Lcom/media/common/ui/widget/R$layout;->design_snackbar_fail:I

    invoke-static {p0, v0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;ILjava/lang/CharSequence;I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->show()V

    return-void
.end method

.method public static showFailMessage(Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;II)V
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->main:Landroid/view/View;

    sget v0, Lcom/media/common/ui/widget/R$layout;->design_snackbar_fail:I

    invoke-static {p0, v0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;III)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->show()V

    return-void
.end method

.method public static showFailMessage(Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;Ljava/lang/String;I)V
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->main:Landroid/view/View;

    sget v0, Lcom/media/common/ui/widget/R$layout;->design_snackbar_fail:I

    invoke-static {p0, v0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;ILjava/lang/CharSequence;I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->show()V

    return-void
.end method

.method public static showNormalMessage(Landroid/view/View;II)V
    .locals 1

    .line 28
    sget v0, Lcom/media/common/ui/widget/R$layout;->design_snackbar_normal:I

    invoke-static {p0, v0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;III)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->show()V

    return-void
.end method

.method public static showNormalMessage(Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    .line 21
    sget v0, Lcom/media/common/ui/widget/R$layout;->design_snackbar_normal:I

    invoke-static {p0, v0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;ILjava/lang/CharSequence;I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->show()V

    return-void
.end method

.method public static showNormalMessage(Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;II)V
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->main:Landroid/view/View;

    sget v0, Lcom/media/common/ui/widget/R$layout;->design_snackbar_normal:I

    invoke-static {p0, v0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;III)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->show()V

    return-void
.end method

.method public static showNormalMessage(Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;Ljava/lang/String;I)V
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->main:Landroid/view/View;

    sget v0, Lcom/media/common/ui/widget/R$layout;->design_snackbar_normal:I

    invoke-static {p0, v0, p1, p2}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->make(Landroid/view/View;ILjava/lang/CharSequence;I)Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/ui/widget/top_snackbar/TopSnackBar;->show()V

    return-void
.end method
