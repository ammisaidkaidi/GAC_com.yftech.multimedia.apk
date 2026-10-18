.class public Lcom/yftech/libradio/RadioListActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "RadioListActivity.java"

# interfaces
.implements Lcom/yftech/libradio/view/IRadioSearchChannelDialogView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity<",
        "Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;",
        ">;",
        "Lcom/yftech/libradio/view/IRadioSearchChannelDialogView;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final ARG_PARAM1:Ljava/lang/String; = "band"


# instance fields
.field private afEnable:Z

.field private band:I

.field private currentPsString:Ljava/lang/String;

.field private currentPtyStr:Ljava/lang/String;

.field private hasScrolledWithOffset:Z

.field private iv_toBoard:Landroid/widget/ImageView;

.field private layoutTitle:Landroid/view/View;

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

.field private mHanlder:Landroid/os/Handler;

.field private mRdsInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/yftech/car/media/radio/rds/entity/RdsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTpEnable:Z

.field private pb_list:Landroid/widget/ProgressBar;

.field private ptyEnable:Z

.field private ptyStrs:[Ljava/lang/String;

.field private pullUp:Z

.field private radioSearchChannelAdapter:Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

.field private rdsDataManagerCallback:Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;

.field private rdsEnable:Z

.field private rl_search_fail:Landroid/widget/RelativeLayout;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;

.field private taValid:Z

.field private tvRadioName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->mHanlder:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioListActivity;->pullUp:Z

    .line 437
    new-instance v0, Lcom/yftech/libradio/RadioListActivity$5;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioListActivity$5;-><init>(Lcom/yftech/libradio/RadioListActivity;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    .line 544
    new-instance v0, Lcom/yftech/libradio/RadioListActivity$6;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioListActivity$6;-><init>(Lcom/yftech/libradio/RadioListActivity;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->rdsDataManagerCallback:Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/RadioListActivity;)Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->radioSearchChannelAdapter:Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/RadioListActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioListActivity;->pullUp:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/libradio/RadioListActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioListActivity;->mTpEnable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/libradio/RadioListActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioListActivity;->pullUp:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/RadioListActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioListActivity;->afEnable:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/libradio/RadioListActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioListActivity;->afEnable:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/libradio/RadioListActivity;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->currentPtyStr:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/yftech/libradio/RadioListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->currentPtyStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/yftech/libradio/RadioListActivity;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->currentPsString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/yftech/libradio/RadioListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->currentPsString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/yftech/libradio/RadioListActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioListActivity;->taValid:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/yftech/libradio/RadioListActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioListActivity;->taValid:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/yftech/libradio/RadioListActivity;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/yftech/libradio/RadioListActivity;->band:I

    return p0
.end method

.method static synthetic access$1600(Lcom/yftech/libradio/RadioListActivity;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->mHanlder:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/libradio/RadioListActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/libradio/RadioListActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/RadioListActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->iv_toBoard:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libradio/RadioListActivity;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioListActivity;->setBoardVisible(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/libradio/RadioListActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioListActivity;->rdsEnable:Z

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/libradio/RadioListActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/yftech/libradio/RadioListActivity;->rdsEnable:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/libradio/RadioListActivity;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/yftech/libradio/RadioListActivity;->ptyEnable:Z

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->mRdsInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$802(Lcom/yftech/libradio/RadioListActivity;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->mRdsInfoMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$900(Lcom/yftech/libradio/RadioListActivity;)[Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->ptyStrs:[Ljava/lang/String;

    return-object p0
.end method

.method private initView()V
    .locals 2

    .line 146
    sget v0, Lcom/yftech/libradio/R$id;->layout_radio_search:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    sget v0, Lcom/yftech/libradio/R$id;->layout_title:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->layoutTitle:Landroid/view/View;

    .line 149
    sget v0, Lcom/yftech/libradio/R$id;->layout_no_content:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->rl_search_fail:Landroid/widget/RelativeLayout;

    .line 150
    sget v0, Lcom/yftech/libradio/R$id;->pb_list:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->pb_list:Landroid/widget/ProgressBar;

    .line 151
    sget v0, Lcom/yftech/libradio/R$id;->rv_radio_list:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 153
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 154
    new-instance v0, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;-><init>(Lcom/yftech/libradio/RadioListActivity;)V

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->radioSearchChannelAdapter:Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    .line 155
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->radioSearchChannelAdapter:Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    new-instance v1, Lcom/yftech/libradio/RadioListActivity$1;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioListActivity$1;-><init>(Lcom/yftech/libradio/RadioListActivity;)V

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$OnItemClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity;->radioSearchChannelAdapter:Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 169
    sget v0, Lcom/yftech/libradio/R$id;->tv_station_name_num:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->tvRadioName:Landroid/widget/TextView;

    .line 170
    sget v0, Lcom/yftech/libradio/R$id;->iv_toBoard:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->iv_toBoard:Landroid/widget/ImageView;

    .line 171
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->iv_toBoard:Landroid/widget/ImageView;

    new-instance v1, Lcom/yftech/libradio/RadioListActivity$2;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioListActivity$2;-><init>(Lcom/yftech/libradio/RadioListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/yftech/libradio/RadioListActivity$3;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/RadioListActivity$3;-><init>(Lcom/yftech/libradio/RadioListActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private scrollToPlayingPosition(I)V
    .locals 4

    .line 308
    iget-boolean v0, p0, Lcom/yftech/libradio/RadioListActivity;->hasScrolledWithOffset:Z

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 311
    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity;->radioSearchChannelAdapter:Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    invoke-virtual {v2}, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 314
    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 316
    :cond_2
    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_1

    .line 312
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 318
    :goto_1
    iput-boolean v0, p0, Lcom/yftech/libradio/RadioListActivity;->hasScrolledWithOffset:Z

    :goto_2
    return-void
.end method

.method private setBoardVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 236
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->iv_toBoard:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->iv_toBoard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 240
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->iv_toBoard:Landroid/widget/ImageView;

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

    new-instance v0, Lcom/yftech/libradio/RadioListActivity$4;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioListActivity$4;-><init>(Lcom/yftech/libradio/RadioListActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 249
    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->iv_toBoard:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioListActivity;->createPresenter()Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;
    .locals 1

    .line 80
    new-instance v0, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public displaySearchList(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/entity/DataOfRadio;",
            ">;)V"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->pb_list:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 256
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getRdsPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->currentPsString:Ljava/lang/String;

    .line 257
    sget v0, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->currentPtyStr:Ljava/lang/String;

    .line 258
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getRdsPty()I

    move-result v0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,psString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/libradio/RadioListActivity;->currentPsString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-ltz v0, :cond_0

    .line 260
    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity;->ptyStrs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity;->ptyStrs:[Ljava/lang/String;

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->currentPtyStr:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 272
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {}, Lcom/yftech/libradio/rds/RdsDataManager;->getInstance()Lcom/yftech/libradio/rds/RdsDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libradio/rds/RdsDataManager;->getRdsInfoList()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/yftech/libradio/RadioListActivity;->mRdsInfoMap:Ljava/util/Map;

    .line 283
    iget-object v3, p0, Lcom/yftech/libradio/RadioListActivity;->tvRadioName:Landroid/widget/TextView;

    sget v4, Lcom/yftech/libradio/R$string;->station_name_with_count:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/yftech/libradio/RadioListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->rl_search_fail:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->layoutTitle:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->radioSearchChannelAdapter:Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    if-eqz v0, :cond_4

    .line 288
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->radioSearchChannelAdapter:Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    invoke-virtual {v0, p1, v2}, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->setPlayingIndex(IZ)V

    .line 290
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->radioSearchChannelAdapter:Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;

    invoke-virtual {v0, p2}, Lcom/yftech/libradio/RadioListActivity$RadioListAdapter;->setNewData(Ljava/util/List;)V

    if-ltz p1, :cond_4

    .line 294
    invoke-direct {p0, p1}, Lcom/yftech/libradio/RadioListActivity;->scrollToPlayingPosition(I)V

    goto :goto_1

    .line 273
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-lez p1, :cond_3

    return-void

    .line 277
    :cond_3
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->rl_search_fail:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 279
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->layoutTitle:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->tvRadioName:Landroid/widget/TextView;

    sget p2, Lcom/yftech/libradio/R$string;->station_name_with_count:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/yftech/libradio/RadioListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->layout_radio_search:I

    if-ne p1, v0, :cond_1

    .line 325
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "iv_search or tv_title quick click"

    .line 326
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 329
    :cond_0
    sget p1, Lcom/yftech/libradio/R$string;->radio_channel_search_dialog_search_scanning:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/RadioListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/yftech/libradio/RadioListActivity;->band:I

    invoke-static {p1, v0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->newInstance(Ljava/lang/String;I)Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    move-result-object p1

    .line 330
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/yftech/libradio/dialog/RadioSearchingDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libradio/dialog/RadioSearchingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget p1, Lcom/yftech/libradio/R$layout;->activity_radio_list:I

    invoke-virtual {p0, p1}, Lcom/yftech/libradio/RadioListActivity;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "band"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/RadioListActivity;->band:I

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate() band:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/libradio/RadioListActivity;->band:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/yftech/libradio/R$array;->dab_ptys:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/RadioListActivity;->ptyStrs:[Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/yftech/libradio/RadioListActivity;->initView()V

    .line 92
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRdsPresent()Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    iput-boolean v1, p0, Lcom/yftech/libradio/RadioListActivity;->rdsEnable:Z

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libradio/RadioListActivity;->rdsEnable:Z

    const-string p1, "yf_radio_app_data"

    .line 96
    invoke-virtual {p0, p1, v1}, Lcom/yftech/libradio/RadioListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "yf_sp_tp_show"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libradio/RadioListActivity;->mTpEnable:Z

    const-string p1, "yf_radio_app_data"

    .line 97
    invoke-virtual {p0, p1, v1}, Lcom/yftech/libradio/RadioListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "yf_sp_pty_show"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libradio/RadioListActivity;->ptyEnable:Z

    .line 98
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libradio/RadioListActivity;->afEnable:Z

    .line 99
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/radio/CarRadioManager;->isRdsCommonStatusEnable(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libradio/RadioListActivity;->taValid:Z

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 111
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onDestroy()V

    const-string p0, "onDestroy()"

    .line 112
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 105
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "band"

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/RadioListActivity;->band:I

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "band:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/libradio/RadioListActivity;->band:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onPause()V

    const-string v0, "onPause()"

    .line 134
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    .line 136
    invoke-static {}, Lcom/yftech/libradio/rds/RdsDataManager;->getInstance()Lcom/yftech/libradio/rds/RdsDataManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity;->rdsDataManagerCallback:Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/rds/RdsDataManager;->unregisterObservor(Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onResume()V

    const-string v0, "onResume()"

    .line 123
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->mCarRadioControlCallback:Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;

    invoke-static {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;)V

    .line 125
    invoke-static {}, Lcom/yftech/libradio/rds/RdsDataManager;->getInstance()Lcom/yftech/libradio/rds/RdsDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity;->rdsDataManagerCallback:Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/libradio/rds/RdsDataManager;->registerObservor(Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;)V

    .line 126
    sget v0, Lcom/yftech/libradio/R$id;->tv_pty_title:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/RadioListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yftech/libradio/RadioListActivity;->ptyEnable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/yftech/libradio/RadioListActivity;->band:I

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/yftech/libradio/RadioListActivity;->pb_list:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    invoke-virtual {p0}, Lcom/yftech/libradio/RadioListActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    iget p0, p0, Lcom/yftech/libradio/RadioListActivity;->band:I

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getSearchList(I)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onStop()V

    const-string p0, "onStop()"

    .line 142
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
