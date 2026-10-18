.class Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DabSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchRvAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
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
            "Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    .line 279
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    .line 351
    instance-of p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementSwitch;

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 315
    instance-of v0, p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 316
    check-cast p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;

    .line 317
    invoke-static {p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;->access$602(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;I)I

    .line 318
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;->access$700(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-virtual {v3}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->access$800(Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 320
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;->access$900(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;)Lcom/yftech/libradio/widget/RadioSwitcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/libradio/widget/RadioSwitcher;->setChecked(Z)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;->access$900(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;)Lcom/yftech/libradio/widget/RadioSwitcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/widget/RadioSwitcher;->setChecked(Z)V

    goto :goto_0

    .line 325
    :cond_1
    check-cast p1, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;

    .line 326
    invoke-static {p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1002(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;I)I

    .line 327
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1100(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1200(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-virtual {v3}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;->access$800(Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 330
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1300(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->access$1300(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
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

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/yftech/libradio/R$layout;->item_dab_announcement_switch:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 292
    new-instance p2, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V

    return-object p2

    .line 301
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/yftech/libradio/R$layout;->item_dab_settings_switch:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 302
    new-instance p2, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter$2;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsDialog$DabSwitch;",
            ">;)V"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 284
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
