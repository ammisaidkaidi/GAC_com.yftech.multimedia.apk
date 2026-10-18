.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DabSettingsNoRdsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;
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
            "Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;",
            ">;"
        }
    .end annotation
.end field

.field private switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V
    .locals 1

    .line 251
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    .line 252
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;)Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->switchListCallback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    .line 324
    instance-of p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementSwitch;

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

    .line 288
    instance-of v0, p1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 289
    check-cast p1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;

    .line 290
    invoke-static {p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;->access$602(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;I)I

    .line 291
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;->access$700(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    invoke-virtual {v3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->access$800(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 293
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;->access$900(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;)Lcom/yftech/libradio/widget/RadioSwitcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/libradio/widget/RadioSwitcher;->setChecked(Z)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;->access$900(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;)Lcom/yftech/libradio/widget/RadioSwitcher;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/widget/RadioSwitcher;->setChecked(Z)V

    goto :goto_0

    .line 298
    :cond_1
    check-cast p1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;

    .line 299
    invoke-static {p1, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->access$1002(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;I)I

    .line 300
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->access$1100(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->access$1200(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    invoke-virtual {v3}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;->access$800(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 303
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->access$1300(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 305
    :cond_2
    invoke-static {p1}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->access$1300(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;

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

    .line 264
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/yftech/libradio/R$layout;->item_dab_announcement_switch:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 265
    new-instance p2, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V

    return-object p2

    .line 274
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/yftech/libradio/R$layout;->item_dab_settings_switch:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 275
    new-instance p2, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter$2;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchViewHolder;-><init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$DabSwitch;",
            ">;)V"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchRvAdapter;->dataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
