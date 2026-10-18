.class Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DabSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnouncementRvAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V
    .locals 1

    .line 383
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

    .line 384
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    return-void
.end method

.method static synthetic access$1400(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

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

    .line 380
    check-cast p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->onBindViewHolder(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;I)V
    .locals 2
    .param p1    # Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 407
    invoke-static {p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1002(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;I)I

    .line 408
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1200(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-virtual {v1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->access$800(Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 410
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1300(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 412
    :cond_0
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1300(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
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

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 394
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$layout;->item_dab_announcement_switch:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 395
    new-instance p2, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;",
            ">;)V"
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

    return-void
.end method
