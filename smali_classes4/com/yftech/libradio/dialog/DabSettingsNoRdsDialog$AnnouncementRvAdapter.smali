.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DabSettingsNoRdsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnouncementRvAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V
    .locals 1

    .line 356
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

    .line 357
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    return-void
.end method

.method static synthetic access$1400(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;
    .locals 0

    .line 353
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

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

    .line 353
    check-cast p1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->onBindViewHolder(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;I)V
    .locals 2
    .param p1    # Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 380
    invoke-static {p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->access$1002(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;I)I

    .line 381
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->access$1200(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    invoke-virtual {v1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->access$800(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 383
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->access$1300(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 385
    :cond_0
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->access$1300(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;

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

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 367
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/yftech/libradio/R$layout;->item_dab_announcement_switch:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 368
    new-instance p2, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;",
            ">;)V"
        }
    .end annotation

    .line 361
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementRvAdapter;->dataList:Ljava/util/List;

    return-void
.end method
