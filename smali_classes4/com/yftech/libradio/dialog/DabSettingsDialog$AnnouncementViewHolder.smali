.class Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DabSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/DabSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnnouncementViewHolder"
.end annotation


# instance fields
.field private callback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

.field private checkBox:Landroid/widget/CheckBox;

.field private itemView:Landroid/view/View;

.field private position:I

.field private tvIndex:Landroid/widget/TextView;

.field private tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 430
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 431
    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->itemView:Landroid/view/View;

    .line 432
    iput-object p2, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->callback:Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;

    .line 433
    sget v0, Lcom/yftech/libradio/R$id;->tv_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->tvIndex:Landroid/widget/TextView;

    .line 434
    sget v0, Lcom/yftech/libradio/R$id;->tv_announcement_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->tvName:Landroid/widget/TextView;

    .line 435
    sget v0, Lcom/yftech/libradio/R$id;->ck_announcement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 436
    iget-object p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder$1;-><init>(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;Lcom/yftech/libradio/dialog/DabSettingsDialog$SwitchListCallback;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)I
    .locals 0

    .line 422
    iget p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->position:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;I)I
    .locals 0

    .line 422
    iput p1, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->position:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->tvIndex:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->tvName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;)Landroid/widget/CheckBox;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/yftech/libradio/dialog/DabSettingsDialog$AnnouncementViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object p0
.end method
