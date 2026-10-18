.class public Lcom/yftech/libradio/dabui/DabFavorListActivity;
.super Lcom/yftech/libradio/dabui/DabPlayerActivity;
.source "DabFavorListActivity.java"

# interfaces
.implements Lcom/yftech/libradio/view/IDabFavorView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;,
        Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;,
        Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libradio/dabui/DabPlayerActivity<",
        "Lcom/yftech/libradio/presenter/DabFavorPresenter;",
        ">;",
        "Lcom/yftech/libradio/view/IDabFavorView;"
    }
.end annotation


# instance fields
.field private callback:Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;

.field private currentPlayIndex:I

.field private emptyView:Landroid/view/View;

.field private hasScrolledWithOffset:Z

.field private iv_toBoard:Landroid/widget/ImageView;

.field private mDabChannelInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

.field private mHanlder:Landroid/os/Handler;

.field private ptyStrs:[Ljava/lang/String;

.field private pullUp:Z

.field private rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabPlayerActivity;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->pullUp:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mDabChannelInfoList:Ljava/util/List;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mHanlder:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->pullUp:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/libradio/dabui/DabFavorListActivity;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->pullUp:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/libradio/dabui/DabFavorListActivity;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->currentPlayIndex:I

    return p0
.end method

.method static synthetic access$1302(Lcom/yftech/libradio/dabui/DabFavorListActivity;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->currentPlayIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/yftech/libradio/dabui/DabFavorListActivity;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/yftech/libradio/dabui/DabFavorListActivity;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->scrollToPlayingPosition(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mHanlder:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->iv_toBoard:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dabui/DabFavorListActivity;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->setBoardVisible(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mDabChannelInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libradio/dabui/DabFavorListActivity;)[Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->ptyStrs:[Ljava/lang/String;

    return-object p0
.end method

.method private scrollToPlayingPosition(I)V
    .locals 4

    .line 215
    iget-boolean v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->hasScrolledWithOffset:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 218
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 221
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 219
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 225
    :goto_1
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->hasScrolledWithOffset:Z

    :goto_2
    return-void
.end method

.method private setBoardVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 146
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->iv_toBoard:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->iv_toBoard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 149
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dabui/DabFavorListActivity$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity$3;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 157
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->iv_toBoard:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateLayout(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 164
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 167
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->createPresenter()Lcom/yftech/libradio/presenter/DabFavorPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/libradio/presenter/DabFavorPresenter;
    .locals 1

    .line 56
    new-instance v0, Lcom/yftech/libradio/presenter/DabFavorPresenter;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/presenter/DabFavorPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public displayFavorList(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 193
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    sget v2, Lcom/yftech/libradio/R$id;->tv_station_name_title:I

    invoke-virtual {p0, v2}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/yftech/libradio/R$string;->station_name_with_count:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {p0, v3, v1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iput p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->currentPlayIndex:I

    .line 200
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 202
    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->updateLayout(Z)V

    .line 203
    iget-object p2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 204
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->scrollToPlayingPosition(I)V

    return-void

    .line 194
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->updateLayout(Z)V

    .line 195
    sget p1, Lcom/yftech/libradio/R$id;->tv_station_name_title:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lcom/yftech/libradio/R$string;->station_name_with_count:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, p2, v1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-super {p0, p1}, Lcom/yftech/libradio/dabui/DabPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/yftech/libradio/R$layout;->activity_dab_favor_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->setContentView(I)V

    .line 63
    sget p1, Lcom/yftech/libradio/R$id;->rv_dab_favor_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    sget p1, Lcom/yftech/libradio/R$id;->favor_layout_no_content:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->emptyView:Landroid/view/View;

    .line 65
    new-instance p1, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity$FavorListAdapter;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;Lcom/yftech/libradio/dabui/DabFavorListActivity$1;)V

    .line 66
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 67
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 69
    sget p1, Lcom/yftech/libradio/R$id;->iv_toBoard:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->iv_toBoard:Landroid/widget/ImageView;

    .line 70
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->iv_toBoard:Landroid/widget/ImageView;

    new-instance v1, Lcom/yftech/libradio/dabui/DabFavorListActivity$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity$1;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/yftech/libradio/dabui/DabFavorListActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity$2;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 137
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerActivity;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/presenter/DabFavorPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/presenter/DabFavorPresenter;->getFavors()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 123
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerActivity;->onStart()V

    .line 124
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$array;->dab_ptys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->ptyStrs:[Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;Lcom/yftech/libradio/dabui/DabFavorListActivity$1;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->callback:Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;

    .line 126
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->callback:Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->mHanlder:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;Landroid/os/Handler;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerActivity;->onStop()V

    .line 132
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity;->callback:Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    return-void
.end method
