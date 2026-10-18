.class Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DabFavorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabFavorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StationViewHolder"
.end annotation


# instance fields
.field private imgStationIcon:Landroid/widget/ImageView;

.field private index:I

.field private ivBackground:Landroid/widget/ImageView;

.field private ivFavorIcon:Landroid/widget/ImageView;

.field private ivPlayStatus:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

.field private tvServiceGroup:Landroid/widget/TextView;

.field private tvStationName:Landroid/widget/TextView;

.field private tvStationType:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/yftech/libradio/dabui/DabFavorListActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 310
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    .line 311
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 312
    sget v0, Lcom/yftech/libradio/R$id;->iv_background:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->ivBackground:Landroid/widget/ImageView;

    .line 313
    sget v0, Lcom/yftech/libradio/R$id;->iv_play_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->ivPlayStatus:Landroid/widget/ImageView;

    .line 314
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->tvStationName:Landroid/widget/TextView;

    .line 315
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_type:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->tvStationType:Landroid/widget/TextView;

    .line 316
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_service_group:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->tvServiceGroup:Landroid/widget/TextView;

    .line 317
    sget v0, Lcom/yftech/libradio/R$id;->iv_station_favor_flag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->ivFavorIcon:Landroid/widget/ImageView;

    .line 318
    sget v0, Lcom/yftech/libradio/R$id;->iv_station_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->imgStationIcon:Landroid/widget/ImageView;

    .line 319
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->ivFavorIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$1;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;Lcom/yftech/libradio/dabui/DabFavorListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    new-instance v0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$2;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;Lcom/yftech/libradio/dabui/DabFavorListActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->tvStationType:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->tvStationName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->tvServiceGroup:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->ivBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->ivPlayStatus:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)I
    .locals 0

    .line 301
    iget p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->index:I

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;I)I
    .locals 0

    .line 301
    iput p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->index:I

    return p1
.end method

.method static synthetic access$800(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->imgStationIcon:Landroid/widget/ImageView;

    return-object p0
.end method
