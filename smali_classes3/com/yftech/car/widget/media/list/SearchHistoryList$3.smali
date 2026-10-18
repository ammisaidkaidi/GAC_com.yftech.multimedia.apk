.class Lcom/yftech/car/widget/media/list/SearchHistoryList$3;
.super Ljava/lang/Object;
.source "SearchHistoryList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/list/SearchHistoryList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/list/SearchHistoryList;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 354
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$000(Lcom/yftech/car/widget/media/list/SearchHistoryList;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 355
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$100(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    move-result-object p1

    if-nez p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    new-instance v0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {v2}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$200(Lcom/yftech/car/widget/media/list/SearchHistoryList;)I

    move-result v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {v3}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$000(Lcom/yftech/car/widget/media/list/SearchHistoryList;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;-><init>(Landroid/content/Context;II)V

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$102(Lcom/yftech/car/widget/media/list/SearchHistoryList;Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    .line 357
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$100(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$300(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setOnConfirmDialogListener(Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;)V

    .line 360
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$100(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {v0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$400(Lcom/yftech/car/widget/media/list/SearchHistoryList;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {v1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$500(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->show(ILandroid/util/Size;)V

    .line 361
    iget-object p1, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {p1}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$100(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-static {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->access$600(Lcom/yftech/car/widget/media/list/SearchHistoryList;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setCancelable(Z)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/list/SearchHistoryList$3;->this$0:Lcom/yftech/car/widget/media/list/SearchHistoryList;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/list/SearchHistoryList;->clearSearchList()V

    :goto_0
    return-void
.end method
