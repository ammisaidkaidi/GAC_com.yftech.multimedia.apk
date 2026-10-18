.class Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DabLableDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabLableDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LableViewHolder"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

.field private tvLable:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/dialog/DabLableDialog;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/yftech/libradio/dialog/DabLableDialog;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 210
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->this$0:Lcom/yftech/libradio/dialog/DabLableDialog;

    .line 211
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 212
    sget v0, Lcom/yftech/libradio/R$id;->tv_dab_station_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->tvLable:Landroid/widget/TextView;

    .line 213
    iget-object p2, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->tvLable:Landroid/widget/TextView;

    new-instance v0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder$1;-><init>(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;Lcom/yftech/libradio/dialog/DabLableDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->tvLable:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;)I
    .locals 0

    .line 207
    iget p0, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->position:I

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;I)I
    .locals 0

    .line 207
    iput p1, p0, Lcom/yftech/libradio/dialog/DabLableDialog$LableViewHolder;->position:I

    return p1
.end method
