.class Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DabAllStationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabAllStationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StationViewHolder"
.end annotation


# instance fields
.field private ivBackground:Landroid/view/View;

.field private ivPlayStatus:Landroid/widget/ImageView;

.field private ivStationIcon:Landroid/widget/ImageView;

.field private position:I

.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

.field private tvIndex:Landroid/widget/TextView;

.field private tvServiceGroup:Landroid/widget/TextView;

.field private tvStationName:Landroid/widget/TextView;

.field private tvStationType:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/yftech/libradio/dabui/DabAllStationFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 368
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    .line 369
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 370
    sget v0, Lcom/yftech/libradio/R$id;->iv_background:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->ivBackground:Landroid/view/View;

    .line 371
    sget v0, Lcom/yftech/libradio/R$id;->iv_play_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->ivPlayStatus:Landroid/widget/ImageView;

    .line 372
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->tvStationName:Landroid/widget/TextView;

    .line 373
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_type:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->tvStationType:Landroid/widget/TextView;

    .line 374
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_service_group:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->tvServiceGroup:Landroid/widget/TextView;

    .line 375
    sget v0, Lcom/yftech/libradio/R$id;->tv_index:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->tvIndex:Landroid/widget/TextView;

    .line 376
    sget v0, Lcom/yftech/libradio/R$id;->iv_station_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->ivStationIcon:Landroid/widget/ImageView;

    .line 377
    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder$1;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;Lcom/yftech/libradio/dabui/DabAllStationFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)I
    .locals 0

    .line 359
    iget p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->position:I

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;I)I
    .locals 0

    .line 359
    iput p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->position:I

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->ivStationIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->tvStationType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->tvStationName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->tvServiceGroup:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/view/View;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->ivBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->ivPlayStatus:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->tvIndex:Landroid/widget/TextView;

    return-object p0
.end method
