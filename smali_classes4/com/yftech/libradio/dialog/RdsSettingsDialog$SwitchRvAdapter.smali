.class Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RdsSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/RdsSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchRvAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_MAIN_ITEM:I = 0x1

.field private static final VIEW_TYPE_SUB_ITEM:I = 0x2


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private switchListCallback:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;)V
    .locals 1

    .line 207
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    .line 208
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;)Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    check-cast p1, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->onBindViewHolder(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;I)V
    .locals 3
    .param p1    # Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    invoke-static {p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->access$802(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;I)I

    .line 233
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-static {v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->access$900(Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    invoke-static {p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->access$1000(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->access$1000(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :goto_0
    invoke-static {p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->access$1100(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-virtual {v2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;->access$300(Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 240
    invoke-static {p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->access$1200(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)Lcom/yftech/libradio/widget/RadioSwitcher;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/widget/RadioSwitcher;->setChecked(Z)V

    goto :goto_1

    .line 242
    :cond_1
    invoke-static {p1}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;->access$1200(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;)Lcom/yftech/libradio/widget/RadioSwitcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/widget/RadioSwitcher;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 219
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$layout;->item_dab_settings_switch:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 220
    new-instance p2, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;

    new-instance v0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter$1;-><init>(Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchListCallback;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/RdsSettingsDialog$RdsSwitch;",
            ">;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object p0, p0, Lcom/yftech/libradio/dialog/RdsSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
