.class public abstract Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;
.super Lcom/yftech/libradio/dabui/DabPlayerFragment;
.source "DabStationFilteredListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;,
        Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationViewHolder;,
        Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;
    }
.end annotation


# static fields
.field private static final DAB_SP_NAME:Ljava/lang/String; = "com.yf.dab.preferences"


# instance fields
.field private callback:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;

.field private currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

.field private dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

.field private emptyView:Landroid/view/View;

.field private iv_toBoard:Landroid/widget/ImageView;

.field protected mDabChannelInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterDabChannelInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHanlder:Landroid/os/Handler;

.field protected mLock:Ljava/lang/Object;

.field protected preferences:Landroid/content/SharedPreferences;

.field private pullUp:Z

.field protected rvStationList:Landroidx/recyclerview/widget/RecyclerView;

.field protected tvLableName:Landroid/widget/TextView;

.field private viewLableSet:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->pullUp:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mDabChannelInfoList:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mFilterDabChannelInfoList:Ljava/util/List;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mHanlder:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$1;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mFilterDabChannelInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->updatePlayInfoView(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mHanlder:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->isRTL()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->pullUp:Z

    return p0
.end method

.method static synthetic access$502(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->pullUp:Z

    return p1
.end method

.method static synthetic access$600(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->iv_toBoard:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->setBoardVisible(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->emptyView:Landroid/view/View;

    return-object p0
.end method

.method private isRTL()Z
    .locals 1

    .line 334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ar"

    .line 335
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setBoardVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 225
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->iv_toBoard:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->iv_toBoard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 228
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->iv_toBoard:Landroid/widget/ImageView;

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

    new-instance v0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$6;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$6;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 236
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->iv_toBoard:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updatePlayInfoView(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "TAG"

    const-string p1, "updatePlayInfoView: dabPlayInfo null"

    .line 267
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    invoke-virtual {p0, v0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->isSameDabPlayInfo(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 274
    :cond_1
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->currentPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    .line 275
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mHanlder:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$8;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected abstract filterDabChannleList()V
.end method

.method protected getDabChannelInfo(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Lcom/yftech/libradio/bean/DabChannelInfo;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 312
    :goto_0
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mFilterDabChannelInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 313
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mFilterDabChannelInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 314
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 315
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 316
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v3

    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v4

    if-ne v3, v4, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected abstract getFilterString()Ljava/lang/String;
.end method

.method protected initView(Landroid/view/View;)V
    .locals 5

    .line 109
    sget v0, Lcom/yftech/libradio/R$id;->rv_station_list_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    sget v0, Lcom/yftech/libradio/R$id;->layout_lable_set:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->viewLableSet:Landroid/view/View;

    .line 111
    sget v0, Lcom/yftech/libradio/R$id;->tv_list_lable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->tvLableName:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/yftech/libradio/R$id;->layout_no_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->emptyView:Landroid/view/View;

    .line 113
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 114
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 115
    new-instance v1, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$FilteredStationAdapter;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$1;)V

    .line 116
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$2;

    invoke-direct {v2, p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$2;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 127
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->viewLableSet:Landroid/view/View;

    new-instance v2, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$3;

    invoke-direct {v2, p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$3;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v1, Lcom/yftech/libradio/R$id;->iv_toBoard:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->iv_toBoard:Landroid/widget/ImageView;

    .line 134
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->iv_toBoard:Landroid/widget/ImageView;

    new-instance v1, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$4;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$4;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;

    invoke-direct {v1, p0, v0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$5;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected isSameDabPlayInfo(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Z
    .locals 4

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v0

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p0

    :cond_2
    :goto_0
    return p0
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 103
    sget p0, Lcom/yftech/libradio/R$layout;->fragment_dab_list_filtered_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 97
    invoke-super {p0, p1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.yf.dab.preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected abstract onLabelButtonCliked()V
.end method

.method public onPause()V
    .locals 2

    .line 213
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onPause()V

    const-string v0, "onPause------"

    .line 214
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->callback:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->callback:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;

    .line 217
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/DabDataManager;->unregisterObservor(Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 188
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onResume()V

    const-string v0, "onResume------"

    .line 189
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->init()V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->getFilterString()Ljava/lang/String;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->tvLableName:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->getDabChannelInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 199
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mDabChannelInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 200
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->filterDabChannleList()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 200
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->rvStationList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->emptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :goto_1
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/DabDataManager;->registerObservor(Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;)V

    .line 207
    new-instance v0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$1;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->callback:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;

    .line 208
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->callback:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mHanlder:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;Landroid/os/Handler;)V

    return-void
.end method

.method protected updateLabelText(Lcom/yftech/libradio/bean/DabChannelInfo;)V
    .locals 0

    return-void
.end method

.method protected updateLayoutWithData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->mHanlder:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$7;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
