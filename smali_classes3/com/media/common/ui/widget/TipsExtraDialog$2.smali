.class Lcom/media/common/ui/widget/TipsExtraDialog$2;
.super Ljava/lang/Object;
.source "TipsExtraDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/media/common/ui/widget/TipsExtraDialog;->initW(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/media/common/ui/widget/TipsExtraDialog;


# direct methods
.method constructor <init>(Lcom/media/common/ui/widget/TipsExtraDialog;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/media/common/ui/widget/TipsExtraDialog$2;->this$0:Lcom/media/common/ui/widget/TipsExtraDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/media/common/ui/widget/TipsExtraDialog$2;->this$0:Lcom/media/common/ui/widget/TipsExtraDialog;

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsExtraDialog;->access$000(Lcom/media/common/ui/widget/TipsExtraDialog;)Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/media/common/ui/widget/TipsExtraDialog$2;->this$0:Lcom/media/common/ui/widget/TipsExtraDialog;

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsExtraDialog;->access$000(Lcom/media/common/ui/widget/TipsExtraDialog;)Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/media/common/ui/widget/TipsExtraDialog$OnButtonClickListener;->onCancel()V

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/media/common/ui/widget/TipsExtraDialog$2;->this$0:Lcom/media/common/ui/widget/TipsExtraDialog;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/TipsExtraDialog;->dismissAllowingStateLoss()V

    return-void
.end method
