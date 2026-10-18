.class Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DabSettingsNoRdsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnouncementViewHolder"
.end annotation


# instance fields
.field private callback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

.field private checkBox:Landroid/widget/CheckBox;

.field private itemView:Landroid/view/View;

.field private position:I

.field private tvIndex:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 403
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 404
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->itemView:Landroid/view/View;

    .line 405
    iput-object p2, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->callback:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;

    .line 406
    sget v0, Lcom/yftech/libradio/R$id;->tv_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->tvIndex:Landroid/widget/TextView;

    .line 407
    sget v0, Lcom/yftech/libradio/R$id;->tv_announcement_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->tvName:Landroid/widget/TextView;

    .line 408
    sget v0, Lcom/yftech/libradio/R$id;->ck_announcement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 409
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$SwitchListCallback;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)I
    .locals 0

    .line 395
    iget p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->position:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;I)I
    .locals 0

    .line 395
    iput p1, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->position:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->tvIndex:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog$AnnouncementViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object p0
.end method
