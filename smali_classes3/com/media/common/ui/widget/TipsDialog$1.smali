.class Lcom/media/common/ui/widget/TipsDialog$1;
.super Ljava/lang/Object;
.source "TipsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/TipsDialog;->initW(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/TipsDialog;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/TipsDialog;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/media/common/ui/widget/TipsDialog$1;->this$0:Lcom/media/common/ui/widget/TipsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/media/common/ui/widget/TipsDialog$1;->this$0:Lcom/media/common/ui/widget/TipsDialog;

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->access$000(Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/media/common/ui/widget/TipsDialog$1;->this$0:Lcom/media/common/ui/widget/TipsDialog;

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->access$000(Lcom/media/common/ui/widget/TipsDialog;)Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;->onConfirm()V

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/media/common/ui/widget/TipsDialog$1;->this$0:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsDialog;->dismissAllowingStateLoss()V

    return-void
.end method
