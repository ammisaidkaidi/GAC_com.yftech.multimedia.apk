.class Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$2;
.super Ljava/lang/Object;
.source "MediaDataModifyBtn.java"

# interfaces
.implements Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;


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

    .line 207
    iput-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$2;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$2;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$900(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$2;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-static {p1}, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;->access$900(Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/car/widget/media/text/MediaDataModifyBtn$2;->this$0:Lcom/yftech/car/widget/media/text/MediaDataModifyBtn;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
