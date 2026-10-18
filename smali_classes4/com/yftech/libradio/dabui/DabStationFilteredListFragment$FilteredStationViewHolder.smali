.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DabStationFilteredListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilteredStationViewHolder"
.end annotation


# instance fields
.field private imgFrame:Landroid/widget/ImageView;

.field private ivStationIcon:Landroid/widget/ImageView;

.field private playIcon:Landroid/widget/ImageView;

.field private position:I

.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

.field private tvStationName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 391
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    .line 392
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 393
    sget v0, Lcom/yftech/libradio/R$id;->iv_filtered_list_frame:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->imgFrame:Landroid/widget/ImageView;

    .line 394
    sget v0, Lcom/yftech/libradio/R$id;->iv_filtered_list_play_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->playIcon:Landroid/widget/ImageView;

    .line 395
    sget v0, Lcom/yftech/libradio/R$id;->tv_filtered_list_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->tvStationName:Landroid/widget/TextView;

    .line 396
    sget v0, Lcom/yftech/libradio/R$id;->iv_filtered_list_background:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->ivStationIcon:Landroid/widget/ImageView;

    .line 397
    new-instance v0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder$1;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)I
    .locals 0

    .line 384
    iget p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->position:I

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;I)I
    .locals 0

    .line 384
    iput p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->position:I

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->ivStationIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->imgFrame:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->playIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;->tvStationName:Landroid/widget/TextView;

    return-object p0
.end method
