.class public abstract Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "EpgBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgViewHolder;,
        Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;
    }
.end annotation


# static fields
.field private static final MSG_SORT_LIST:I = 0xaa2b


# instance fields
.field private callback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private conflictDialog:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;

.field protected currentDate:Ljava/util/Calendar;

.field private emptyView:Landroid/view/View;

.field private ivLast:Landroid/widget/ImageView;

.field private ivNext:Landroid/widget/ImageView;

.field private iv_toBoard:Landroid/widget/ImageView;

.field private mFilterdProgrammeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/dab/entity/epg/Programme;",
            ">;"
        }
    .end annotation
.end field

.field protected mHanlder:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private pullUp:Z

.field private rvEpgList:Landroidx/recyclerview/widget/RecyclerView;

.field private selectedDate:Ljava/util/Calendar;

.field private tvSelectedDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mFilterdProgrammeList:Ljava/util/List;

    .line 52
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    .line 53
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->pullUp:Z

    .line 59
    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mHanlder:Landroid/os/Handler;

    .line 493
    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$6;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$6;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->callback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/Calendar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Lcom/yftech/car/media/radio/dab/entity/epg/Programme;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->isSubscribeConflict(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->conflictDialog:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;)Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->conflictDialog:Lcom/yftech/libradio/dabui/epg/EpgSubcribeConflictDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->pullUp:Z

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->pullUp:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->rvEpgList:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->iv_toBoard:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->setBoardVisible(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mFilterdProgrammeList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)Landroid/view/View;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->emptyView:Landroid/view/View;

    return-object p0
.end method

.method private isSubscribeConflict(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Lcom/yftech/car/media/radio/dab/entity/epg/Programme;
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 467
    :cond_0
    invoke-static {p1}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->getTime(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Ljava/util/Calendar;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "programmeTime is null ---"

    .line 469
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object p0

    .line 472
    :cond_1
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEpgProgrammeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 473
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 477
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/radio/dab/entity/epg/Programme;

    .line 478
    invoke-static {v1}, Lcom/yftech/libradio/dabui/epg/EpgUtils;->getTime(Lcom/yftech/car/media/radio/dab/entity/epg/Programme;)Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    .line 482
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_3

    const/4 v3, 0x2

    .line 483
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_3

    const/4 v3, 0x5

    .line 484
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_3

    const/16 v3, 0xb

    .line 485
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_3

    const/16 v3, 0xc

    .line 486
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v4, v2, :cond_3

    return-object v1

    :cond_5
    return-object p0

    :cond_6
    :goto_1
    const-string p1, "subscribedProgrammeList is empty ---"

    .line 474
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method private setBoardVisible(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 179
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->iv_toBoard:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->iv_toBoard:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 183
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->iv_toBoard:Landroid/widget/ImageView;

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

    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$4;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->iv_toBoard:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 192
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->iv_toBoard:Landroid/widget/ImageView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateSelectedProgramme()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->rvEpgList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mHanlder:Landroid/os/Handler;

    const v1, 0xaa2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->getProgrammeList(Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method abstract getProgrammeList(Ljava/util/Calendar;)V
.end method

.method abstract getTipsForEmptyContent()Ljava/lang/String;
.end method

.method protected initView(Landroid/view/View;)V
    .locals 5

    .line 101
    sget v0, Lcom/yftech/libradio/R$id;->pb_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 102
    sget v0, Lcom/yftech/libradio/R$id;->rv_dab_epg_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->rvEpgList:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    sget v0, Lcom/yftech/libradio/R$id;->layout_no_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->emptyView:Landroid/view/View;

    .line 104
    sget v0, Lcom/yftech/libradio/R$id;->iv_last:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->ivLast:Landroid/widget/ImageView;

    .line 105
    sget v0, Lcom/yftech/libradio/R$id;->iv_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->ivNext:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    sget v0, Lcom/yftech/libradio/R$id;->tv_date_sel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->tvSelectedDate:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/yftech/libradio/R$id;->tv_no_epg_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->getTipsForEmptyContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$EpgListAdapter;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$1;)V

    .line 111
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 112
    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->rvEpgList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->rvEpgList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    sget v0, Lcom/yftech/libradio/R$id;->iv_toBoard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->iv_toBoard:Landroid/widget/ImageView;

    .line 115
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->iv_toBoard:Landroid/widget/ImageView;

    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$2;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->rvEpgList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$3;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 95
    sget p0, Lcom/yftech/libradio/R$layout;->fragment_dab_epg_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 290
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_last:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/16 v4, 0x8

    if-ne v0, v1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    const/4 v0, -0x1

    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 292
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->updateDateSelect()V

    .line 293
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->rvEpgList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 294
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 296
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->updateSelectedProgramme()V

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->iv_next:I

    if-ne p1, v0, :cond_1

    .line 298
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 299
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->updateDateSelect()V

    .line 300
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->rvEpgList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 303
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->updateSelectedProgramme()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getEpgDateTimeUpdate()J

    move-result-wide v0

    .line 84
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 85
    invoke-virtual {p1, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "epgTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " current time: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 88
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 217
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onPause()V

    .line 218
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mHanlder:Landroid/os/Handler;

    const v0, 0xaa2b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onProgrameGot(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/radio/dab/entity/epg/Programme;",
            ">;)V"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->mHanlder:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$5;-><init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 210
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onResume()V

    .line 211
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->updateDateSelect()V

    .line 212
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->updateSelectedProgramme()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 198
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onStart()V

    .line 199
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->callback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onStop()V

    .line 205
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->callback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    return-void
.end method

.method protected updateDateSelect()V
    .locals 7

    .line 253
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 254
    iget-object v1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->tvSelectedDate:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    .line 256
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    .line 257
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1

    .line 258
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->ivLast:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 263
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 264
    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x6

    .line 265
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->add(II)V

    .line 268
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v2, v6, :cond_2

    .line 269
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v6, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v2, v5, :cond_2

    .line 270
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->selectedDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 271
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_2

    .line 273
    :cond_2
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_2
    return-void
.end method
