.class Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;
.super Ljava/lang/Object;
.source "DabLableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

.field final synthetic val$this$0:Lcom/yftech/libradio/dialog/DabLableDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;Lcom/yftech/libradio/dialog/DabLableDialog;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iput-object p2, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->val$this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 216
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iget-object p1, p1, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$600(Lcom/yftech/libradio/dialog/DabLableDialog;)Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 217
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->access$200(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 218
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iget-object p1, p1, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$100(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->access$300(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$400(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iget-object v0, v0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$400(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$700(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$700(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {v1}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$600(Lcom/yftech/libradio/dialog/DabLableDialog;)Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yftech/libradio/dialog/DabLableDialog$LabelListCallback;->onItemClicked(I)V

    .line 225
    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;->this$1:Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iget-object v1, v1, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-virtual {v1}, Lcom/yftech/libradio/dialog/DabLableDialog;->dismiss()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
