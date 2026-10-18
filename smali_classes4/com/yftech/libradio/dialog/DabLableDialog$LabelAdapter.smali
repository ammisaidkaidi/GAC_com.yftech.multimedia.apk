.class Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DabLableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabLableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabLableDialog;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dialog/DabLableDialog;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dialog/DabLableDialog;Lcom/yftech/libradio/dialog/DabLableDialog$1;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$100(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 171
    check-cast p1, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    .line 172
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$100(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->access$200(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-static {p1, p2}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->access$302(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;I)I

    .line 175
    iget-object p2, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {p2}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$400(Lcom/yftech/libradio/dialog/DabLableDialog;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 176
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->access$200(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->access$200(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 180
    :goto_0
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->access$200(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 181
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabLableDialog;->access$500(Lcom/yftech/libradio/dialog/DabLableDialog;)Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    const/high16 v0, 0x43880000    # 272.0f

    cmpg-float v0, p0, v0

    const/16 v1, 0x3e

    if-gtz v0, :cond_1

    const/16 p0, 0x122

    .line 187
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 188
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    const/high16 v0, 0x44110000    # 580.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2

    const/16 p0, 0x256

    .line 190
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 191
    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    const/16 p0, 0x38a

    .line 193
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p0, -0x2

    .line 194
    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    :goto_1
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->access$200(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 165
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$layout;->item_dab_lable:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 166
    new-instance p2, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LabelAdapter;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    invoke-direct {p2, p0, p1}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog;Landroid/view/View;)V

    return-object p2
.end method
