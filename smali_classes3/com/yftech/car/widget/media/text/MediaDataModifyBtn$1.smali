.class Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;
.super Ljava/lang/Object;
.source "MediaDataModifyBtn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 192
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$000(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 193
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$100(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    move-result-object p1

    if-nez p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    new-instance v0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget-object v1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {v2}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$200(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)I

    move-result v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {v3}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$000(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;-><init>(Landroid/content/Context;II)V

    invoke-static {p1, v0}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$102(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;Lcom/yftech/car/widget/media/dialog/ConfirmDialog;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    .line 195
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$100(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {v0}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$300(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setOnConfirmDialogListener(Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;)V

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$100(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    move-result-object v0

    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$400(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)I

    move-result v1

    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$500(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)I

    move-result v2

    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$600(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$700(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Landroid/util/Size;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->show(IIJLandroid/util/Size;)V

    .line 198
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$100(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p0}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$800(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setCancelable(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "MediaDataModifyBtn"

    const-string v0, "onClick: mModifyClickDialogLayoutId == -1"

    .line 200
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$900(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$1;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method
