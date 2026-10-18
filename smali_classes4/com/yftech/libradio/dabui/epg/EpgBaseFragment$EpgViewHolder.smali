.class Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EpgBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpgViewHolder"
.end annotation


# instance fields
.field private imgEpgIcon:Landroid/widget/ImageView;

.field private index:I

.field private ivEpgStatus:Landroid/widget/ImageView;

.field private ivPlayStatus:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

.field private tvEpgName:Landroid/widget/TextView;

.field private tvEpgTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Landroid/view/View;)V
    .locals 2
    .param p1    # Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 369
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    .line 370
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 371
    sget v0, Lcom/yftech/libradio/R$id;->iv_play_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->ivPlayStatus:Landroid/widget/ImageView;

    .line 372
    sget v0, Lcom/yftech/libradio/R$id;->tv_epg_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->tvEpgName:Landroid/widget/TextView;

    .line 373
    sget v0, Lcom/yftech/libradio/R$id;->tv_epg_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->tvEpgTime:Landroid/widget/TextView;

    .line 374
    sget v0, Lcom/yftech/libradio/R$id;->iv_epg_status:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->ivEpgStatus:Landroid/widget/ImageView;

    .line 375
    sget v0, Lcom/yftech/libradio/R$id;->iv_epg_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->imgEpgIcon:Landroid/widget/ImageView;

    .line 376
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->ivEpgStatus:Landroid/widget/ImageView;

    new-instance v1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder$2;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->tvEpgName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->tvEpgTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->ivPlayStatus:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->ivEpgStatus:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->imgEpgIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;)I
    .locals 0

    .line 362
    iget p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->index:I

    return p0
.end method

.method static synthetic access$902(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;I)I
    .locals 0

    .line 362
    iput p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;->index:I

    return p1
.end method
