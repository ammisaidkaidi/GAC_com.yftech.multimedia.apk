.class Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RdsSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/RdsSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchViewHolder"
.end annotation


# instance fields
.field private callback:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;

.field private itemView:Landroid/view/View;

.field private position:I

.field private switcher:Lcom/yftech/libradio/widget/RadioSwitcher;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 260
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 261
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->itemView:Landroid/view/View;

    .line 262
    iput-object p2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->callback:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;

    .line 263
    sget v0, Lcom/yftech/libradio/R$id;->tv_switch_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->tvName:Landroid/widget/TextView;

    .line 264
    sget v0, Lcom/yftech/libradio/R$id;->item_dab_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/widget/RadioSwitcher;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->switcher:Lcom/yftech/libradio/widget/RadioSwitcher;

    .line 265
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->switcher:Lcom/yftech/libradio/widget/RadioSwitcher;

    new-instance v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder$1;-><init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libradio/widget/RadioSwitcher;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)Landroid/view/View;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)Lcom/yftech/libradio/widget/RadioSwitcher;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->switcher:Lcom/yftech/libradio/widget/RadioSwitcher;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)I
    .locals 0

    .line 252
    iget p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->position:I

    return p0
.end method

.method static synthetic access$802(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;I)I
    .locals 0

    .line 252
    iput p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->position:I

    return p1
.end method
