.class public Lcom/yftech/libradio/dabui/DabAllStationFragment;
.super Lcom/yftech/libradio/dabui/DabPlayerFragment;
.source "DabAllStationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;,
        Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;,
        Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;
    }
.end annotation


# instance fields
.field private callback:Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;

.field private currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

.field private dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

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

.field private mHanlder:Landroid/os/Handler;

.field private ptyStrs:[Ljava/lang/String;

.field private pullUp:Z

.field private rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

.field private tvNameAndCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->pullUp:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mDabChannelInfoList:Ljava/util/List;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mHanlder:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mDabChannelInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/DabAllStationFragment;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->hasScrolledWithOffset:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/libradio/dabui/DabAllStationFragment;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->hasScrolledWithOffset:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/yftech/libradio/dabui/DabAllStationFragment;)[Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->ptyStrs:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mHanlder:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->updatePlayInfoView()V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->pullUp:Z

    return p0
.end method

.method static synthetic access$702(Lcom/yftech/libradio/dabui/DabAllStationFragment;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->pullUp:Z

    return p1
.end method

.method static synthetic access$800(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->iv_toBoard:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/libradio/dabui/DabAllStationFragment;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->setBoardVisible(Z)V

    return-void
.end method

.method private setBoardVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 205
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->iv_toBoard:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->iv_toBoard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 208
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->iv_toBoard:Landroid/widget/ImageView;

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

    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment$4;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 215
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 216
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->iv_toBoard:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateLayout(Z)V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->tvNameAndCount:Landroid/widget/TextView;

    sget v3, Lcom/yftech/libradio/R$string;->station_name_with_count:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 224
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->tvNameAndCount:Landroid/widget/TextView;

    sget v3, Lcom/yftech/libradio/R$string;->station_name_with_count:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 228
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePlayInfoView()V
    .locals 5

    .line 240
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "updatePlayInfoView,currentPlayInfo is null ----"

    .line 242
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    .line 246
    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v1

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    .line 247
    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    return-void

    .line 251
    :cond_1
    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    .line 253
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mHanlder:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment$5;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected initView(Landroid/view/View;)V
    .locals 5

    .line 108
    sget v0, Lcom/yftech/libradio/R$id;->rv_all_stationg_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    sget v0, Lcom/yftech/libradio/R$id;->layout_no_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->emptyView:Landroid/view/View;

    .line 110
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_name_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->tvNameAndCount:Landroid/widget/TextView;

    .line 111
    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationListAdapter;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;Lcom/yftech/libradio/dabui/DabAllStationFragment$1;)V

    .line 112
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 113
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 114
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    sget v0, Lcom/yftech/libradio/R$id;->iv_toBoard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->iv_toBoard:Landroid/widget/ImageView;

    .line 116
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->iv_toBoard:Landroid/widget/ImageView;

    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment$2;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$3;

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$3;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 102
    sget p0, Lcom/yftech/libradio/R$layout;->fragment_dab_list_all_station:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    .line 194
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onPause()V

    const-string v0, "onPause------"

    .line 195
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->callback:Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 197
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/DabDataManager;->unregisterObservor(Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 169
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onResume()V

    const-string v0, "onResume------"

    .line 170
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yftech/libradio/R$array;->dab_ptys:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->ptyStrs:[Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;Lcom/yftech/libradio/dabui/DabAllStationFragment$1;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->callback:Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;

    .line 173
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->callback:Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mHanlder:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;Landroid/os/Handler;)V

    .line 174
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->init()V

    .line 177
    :cond_0
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/DabDataManager;->registerObservor(Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;)V

    .line 178
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->getDabChannelInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 179
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 181
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->updateLayout(Z)V

    .line 183
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->rvAllStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 184
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->updatePlayInfoView()V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->updateLayout(Z)V

    :cond_2
    :goto_0
    return-void
.end method
