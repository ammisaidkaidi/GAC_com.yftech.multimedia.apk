.class public Lcom/yftech/libradio/dabui/DabMainFragment;
.super Lcom/yftech/libradio/dabui/DabPlayerFragment;
.source "DabMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libradio/dabui/DabMainFragment$EmptyServiceViewHolder;,
        Lcom/yftech/libradio/dabui/DabMainFragment$ServiceViewHolder;,
        Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;
    }
.end annotation


# static fields
.field private static final KEY_DAB_SIGNAL_CONGFIG:Ljava/lang/String; = "dab_config_data_rssi_snr"

.field private static final MSG_UPDATE_LIST_UI:I = 0x2714

.field private static final MSG_UPDATE_PLAY_UI:I = 0x2715

.field private static final SHARED_KEY_IS_AUTO_SEARCH_DONE:Ljava/lang/String; = "yf.dab.autosearch"

.field private static final SP_DAB_FREQUENCY:Ljava/lang/String; = "ftech.dab.frequency"

.field private static final TEST_FREQUENCY:Ljava/lang/String; = "com.yftech.action.dab.frequency"


# instance fields
.field private carDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

.field private currentPosition:I

.field private dabChannelInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

.field private dabFrequencyReceiver:Landroid/content/BroadcastReceiver;

.field private isAnnouncePlaying:Z

.field private layoutLables:Landroid/view/View;

.field private mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

.field private mDabSettingsDialog:Lcom/yftech/libradio/dialog/DabSettingsDialog;

.field private mDabSettingsNoRdsDialog:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

.field private mEpg:Landroid/widget/ImageView;

.field private final mFmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIvLike:Landroid/widget/ImageView;

.field private mIvPlay:Landroid/widget/ImageView;

.field private mIvSet:Landroid/widget/ImageView;

.field private mLast:Landroid/widget/ImageView;

.field private mLikeList:Landroid/widget/ImageView;

.field private mNext:Landroid/widget/ImageView;

.field private final mPrivateHandler:Landroid/os/Handler;

.field private mSearch:Landroid/widget/ImageView;

.field private mServiceTextInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

.field private mTvEnsembleLable:Landroid/widget/TextView;

.field private mTvServiceLable:Landroid/widget/TextView;

.field private minSinalConfig:I

.field private recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

.field private tvFrequency:Landroid/widget/TextView;

.field private tvRssi:Landroid/widget/TextView;

.field private tvSnr:Landroid/widget/TextView;

.field private tvVber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    const/16 v0, -0x5f

    .line 89
    iput v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->minSinalConfig:I

    .line 94
    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$1;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabFrequencyReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libradio/dabui/DabMainFragment$2;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    .line 897
    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$7;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$7;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    .line 929
    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$8;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$8;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mFmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 937
    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$9;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$9;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->carDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvFrequency:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvRssi:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/libradio/dabui/DabMainFragment;Ljava/util/List;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->fillListData(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->setButtonsStatus()V

    return-void
.end method

.method static synthetic access$1700(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mFmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->updatePlayStatusUi()V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvSnr:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->updateSignalShow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/yftech/libradio/dabui/DabMainFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/yftech/libradio/dabui/DabMainFragment;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabPlayInfo:Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/yftech/libradio/dabui/DabMainFragment;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->isAnnouncePlaying:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/yftech/libradio/dabui/DabMainFragment;ZI)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->updateAnnounceInfo(ZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvVber:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->updateListUi()V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/libradio/dabui/DabMainFragment;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->updateCurrentPlayInfoUi(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/yftech/libradio/dabui/DabMainFragment;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->updateFavorUi(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/yftech/libradio/dabui/DabMainFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->currentPosition:I

    return p0
.end method

.method static synthetic access$902(Lcom/yftech/libradio/dabui/DabMainFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->currentPosition:I

    return p1
.end method

.method private fillListData(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 733
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/libradio/dabui/DabMainFragment$6;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$6;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 739
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "dataList is empty ----"

    .line 740
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 743
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 746
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    const-string p1, "dataList only 1 ======="

    .line 747
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 748
    new-instance p1, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    invoke-direct {p1, v4}, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;-><init>(Lcom/yftech/libradio/bean/DabChannelInfo;)V

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 749
    new-instance p1, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    invoke-direct {p1, v4}, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;-><init>(Lcom/yftech/libradio/bean/DabChannelInfo;)V

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 750
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    .line 751
    invoke-virtual {p1, v3}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->setCanScrollHorizontally(Z)V

    goto :goto_0

    .line 752
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    const-string v1, "dataList only 2-----"

    .line 753
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 754
    new-instance v1, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    invoke-direct {v1, v4}, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;-><init>(Lcom/yftech/libradio/bean/DabChannelInfo;)V

    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 757
    new-instance v1, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    invoke-direct {v1, v4}, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;-><init>(Lcom/yftech/libradio/bean/DabChannelInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 759
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    .line 760
    invoke-virtual {p1, v5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->setCanScrollHorizontally(Z)V

    goto :goto_0

    .line 761
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const-string v1, "dataList only 3 !!!!!!"

    .line 762
    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 765
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 766
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    .line 767
    invoke-virtual {p1, v5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->setCanScrollHorizontally(Z)V

    goto :goto_0

    .line 769
    :cond_3
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    .line 770
    invoke-virtual {p1, v5}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->setCanScrollHorizontally(Z)V

    .line 772
    :goto_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 773
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 774
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 775
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    const/16 v0, 0x2714

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    if-eqz p2, :cond_4

    .line 777
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    const/16 p1, 0x2715

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method private isSignalPoor(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 518
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getRssi()B

    move-result p1

    iget p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->minSinalConfig:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setButtonsStatus()V
    .locals 5

    .line 528
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 530
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLikeList:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLast:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 534
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mEpg:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvLike:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 538
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLikeList:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 540
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLast:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mEpg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 544
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    .line 546
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getScanStatus()Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 547
    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v4, :cond_2

    .line 549
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setButtonsStatus->scanStatus="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 552
    :cond_2
    invoke-direct {p0, v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->isSignalPoor(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 554
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 555
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLast:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 556
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setHovered(Z)V

    goto :goto_1

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 559
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 560
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLast:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHovered(Z)V

    .line 561
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setHovered(Z)V

    :goto_1
    return-void
.end method

.method private updateAnnounceInfo(ZI)V
    .locals 1

    if-eqz p1, :cond_9

    const-string p1, ""

    const/4 v0, 0x4

    if-eq p2, v0, :cond_8

    const/16 v0, 0x8

    if-eq p2, v0, :cond_7

    const/16 v0, 0x10

    if-eq p2, v0, :cond_6

    const/16 v0, 0x20

    if-eq p2, v0, :cond_5

    const/16 v0, 0x40

    if-eq p2, v0, :cond_4

    const/16 v0, 0x80

    if-eq p2, v0, :cond_3

    const/16 v0, 0x100

    if-eq p2, v0, :cond_2

    const/16 v0, 0x200

    if-eq p2, v0, :cond_1

    const/16 v0, 0x400

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 671
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement2:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 668
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement1:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 698
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement11:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 695
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement10:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 692
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement9:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 689
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement8:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 686
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement7:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 683
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement6:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 680
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement5:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 677
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement4:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 674
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget p2, Lcom/yftech/libradio/R$string;->announcement_play_front:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/yftech/libradio/R$string;->dab_announcement3:I

    invoke-virtual {p0, p2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 701
    :goto_0
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mTvEnsembleLable:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 703
    :cond_9
    iget p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->currentPosition:I

    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->updateCurrentPlayInfoUi(I)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCurrentPlayInfoUi(I)V
    .locals 6

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "dabChannelInfoList is empty ---"

    .line 611
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 612
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mTvServiceLable:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mTvEnsembleLable:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    if-gez p1, :cond_1

    goto/16 :goto_0

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 622
    sget v1, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {p0, v1}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 624
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v1, v2

    .line 629
    :cond_2
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mTvServiceLable:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-boolean v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->isAnnouncePlaying:Z

    if-eqz v2, :cond_3

    return-void

    .line 636
    :cond_3
    sget v2, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {p0, v2}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 637
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 638
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleLabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 639
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v2, v3

    .line 643
    :cond_4
    sget v3, Lcom/yftech/libradio/R$string;->radio_unknown:I

    invoke-virtual {p0, v3}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 644
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getStatPty()I

    move-result v0

    .line 645
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yftech/libradio/R$array;->dab_ptys:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-ltz v0, :cond_5

    .line 646
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 647
    aget-object v3, v4, v0

    .line 649
    :cond_5
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mTvEnsembleLable:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/yftech/libradio/Utils;->convertStationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    new-instance p0, Lcom/yftech/car/data/CarData;

    invoke-direct {p0}, Lcom/yftech/car/data/CarData;-><init>()V

    .line 652
    new-instance v0, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v3, "DAB_CHANNEINFO_CHANGED_POSTION"

    invoke-direct {v0, v3, p1}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/yftech/car/data/CarData;->addDataEntry(Lcom/yftech/car/data/CarData$CarDataEntry;)Lcom/yftech/car/data/CarData;

    .line 653
    new-instance p1, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v0, "DAB_CHANNEINFO_CHANGED_SERVICE"

    invoke-direct {p1, v0, v1}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yftech/car/data/CarData;->addDataEntry(Lcom/yftech/car/data/CarData$CarDataEntry;)Lcom/yftech/car/data/CarData;

    .line 654
    new-instance p1, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v0, "DAB_CHANNEINFO_CHANGED_ENSEMBLE"

    invoke-direct {p1, v0, v2}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/yftech/car/data/CarData;->addDataEntry(Lcom/yftech/car/data/CarData$CarDataEntry;)Lcom/yftech/car/data/CarData;

    const/4 p1, 0x0

    .line 655
    invoke-static {p0, p1}, Lcom/yftech/car/data/CarDataManager;->set(Lcom/yftech/car/data/CarData;Z)Z

    return-void

    :cond_6
    :goto_0
    const-string p0, "position is invalid ---"

    .line 617
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void
.end method

.method private updateFavorUi(I)V
    .locals 6

    .line 711
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_5

    .line 714
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 718
    instance-of v0, p1, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    if-eqz v0, :cond_2

    const-string p0, "current InvalidDabChannelInfo"

    .line 719
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 723
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isFavored(JIJ)Z

    move-result p1

    .line 724
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_4

    .line 725
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_3
    const-string p0, "channelInfo is null -----"

    .line 728
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private updateListUi()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 586
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mTvServiceLable:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mTvEnsembleLable:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    return-void
.end method

.method private updatePlayStatusUi()V
    .locals 3

    .line 600
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result v0

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 602
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvPlay:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget v0, Lcom/yftech/libradio/R$drawable;->fm_main_icon_playing:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/yftech/libradio/R$drawable;->fm_main_icon_paused:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private updateSignalShow()V
    .locals 6

    .line 569
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvFrequency:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    .line 573
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvFrequency:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u9891\u7387\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " MHZ"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvRssi:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fe1\u53f7\u5f3a\u5ea6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getRssi()B

    move-result v3

    add-int/lit8 v3, v3, 0x6b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "dBuv"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvSnr:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4fe1\u566a\u6bd4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getSnr()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "dB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvVber:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bef\u7801\u7387\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getVber()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->createPresenter()Lcom/yftech/libradio/presenter/DabMainPresenter;

    move-result-object p0

    return-object p0
.end method

.method protected createPresenter()Lcom/yftech/libradio/presenter/DabMainPresenter;
    .locals 1

    .line 155
    new-instance v0, Lcom/yftech/libradio/presenter/DabMainPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    .line 277
    sget v0, Lcom/yftech/libradio/R$id;->tv_service_lable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mTvServiceLable:Landroid/widget/TextView;

    .line 278
    sget v0, Lcom/yftech/libradio/R$id;->tv_pty_ensemble:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mTvEnsembleLable:Landroid/widget/TextView;

    .line 279
    sget v0, Lcom/yftech/libradio/R$id;->layout_lables:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->layoutLables:Landroid/view/View;

    .line 280
    sget v0, Lcom/yftech/libradio/R$id;->iv_like:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvLike:Landroid/widget/ImageView;

    .line 281
    sget v0, Lcom/yftech/libradio/R$id;->iv_play:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvPlay:Landroid/widget/ImageView;

    .line 282
    sget v0, Lcom/yftech/libradio/R$id;->iv_settings:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvSet:Landroid/widget/ImageView;

    .line 283
    sget v0, Lcom/yftech/libradio/R$id;->iv_like_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLikeList:Landroid/widget/ImageView;

    .line 284
    sget v0, Lcom/yftech/libradio/R$id;->iv_search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mSearch:Landroid/widget/ImageView;

    .line 285
    sget v0, Lcom/yftech/libradio/R$id;->iv_last:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLast:Landroid/widget/ImageView;

    .line 286
    sget v0, Lcom/yftech/libradio/R$id;->iv_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mNext:Landroid/widget/ImageView;

    .line 287
    sget v0, Lcom/yftech/libradio/R$id;->iv_epg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mEpg:Landroid/widget/ImageView;

    .line 288
    sget v0, Lcom/yftech/libradio/R$id;->dab_service_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    .line 289
    sget v0, Lcom/yftech/libradio/R$id;->tv_pty_frequency:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvFrequency:Landroid/widget/TextView;

    .line 290
    sget v0, Lcom/yftech/libradio/R$id;->tv_rssi:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvRssi:Landroid/widget/TextView;

    .line 291
    sget v0, Lcom/yftech/libradio/R$id;->tv_snr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvSnr:Landroid/widget/TextView;

    .line 292
    sget v0, Lcom/yftech/libradio/R$id;->tv_vber:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvVber:Landroid/widget/TextView;

    .line 294
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mFmGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 295
    new-instance p1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;-><init>(IZ)V

    .line 296
    new-instance v2, Lcom/yftech/libradio/carousellayoutmanager/CarouselZoomPostLayoutListener;

    invoke-direct {v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselZoomPostLayoutListener;-><init>()V

    invoke-virtual {p1, v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->setPostLayoutListener(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$PostLayoutListener;)V

    .line 298
    invoke-virtual {p1, v0}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->setMaxVisibleItems(I)V

    .line 301
    new-instance v2, Lcom/yftech/libradio/dabui/DabMainFragment$4;

    invoke-direct {v2, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$4;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V

    invoke-virtual {p1, v2}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->addOnItemSelectionListener(Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager$OnCenterItemSelectionListener;)V

    .line 307
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 308
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 309
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/yftech/libradio/dabui/DabMainFragment$5;

    invoke-direct {v2, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$5;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 344
    new-instance p1, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-direct {p1, v2, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;-><init>(Ljava/util/List;Lcom/yftech/libradio/dabui/DabMainFragment;)V

    .line 345
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 347
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->layoutLables:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvLike:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvPlay:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mIvSet:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLikeList:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mSearch:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mLast:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mEpg:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "ftech.dab.frequency"

    .line 357
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    .line 358
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvFrequency:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvRssi:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvSnr:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvVber:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvFrequency:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvRssi:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvSnr:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->tvVber:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 160
    sget p0, Lcom/yftech/libradio/R$layout;->fragment_dab_main:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_search:I

    if-ne v0, v1, :cond_1

    .line 373
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "iv_search quick click"

    .line 374
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 377
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/yftech/libradio/dabui/DabSortListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 379
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_like_list:I

    if-ne v0, v1, :cond_3

    .line 380
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "iv_like_list quick click"

    .line 381
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 384
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 385
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 386
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_play:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    .line 387
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "iv_play quick click"

    .line 388
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 391
    :cond_4
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object p1

    .line 392
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->isSignalPoor(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 393
    sget p1, Lcom/yftech/libradio/R$string;->signal_poor:I

    invoke-static {p1, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 395
    :cond_5
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 396
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/presenter/DabMainPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->pause()V

    goto/16 :goto_2

    .line 398
    :cond_6
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/presenter/DabMainPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->play()V

    goto/16 :goto_2

    .line 400
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_last:I

    if-ne v0, v1, :cond_a

    .line 401
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "searchPrevious quick click"

    .line 402
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 405
    :cond_8
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object p1

    .line 406
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->isSignalPoor(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 407
    sget p0, Lcom/yftech/libradio/R$string;->signal_poor:I

    invoke-static {p0, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 409
    :cond_9
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->previous()V

    goto/16 :goto_2

    .line 410
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_next:I

    if-ne v0, v1, :cond_d

    .line 411
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p0, "searchNext quick click"

    .line 412
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 415
    :cond_b
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object p1

    .line 416
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->isSignalPoor(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 417
    sget p0, Lcom/yftech/libradio/R$string;->signal_poor:I

    invoke-static {p0, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 419
    :cond_c
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->next()V

    goto/16 :goto_2

    .line 420
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_like:I

    if-ne v0, v1, :cond_16

    .line 421
    iget p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->currentPosition:I

    if-ltz p1, :cond_15

    iget p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->currentPosition:I

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_e

    goto/16 :goto_1

    .line 425
    :cond_e
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    iget v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->currentPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/bean/DabChannelInfo;

    if-nez p1, :cond_f

    const-string p0, "favored button click, but current dabdata is null"

    .line 427
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    .line 430
    :cond_f
    instance-of v0, p1, Lcom/yftech/libradio/bean/InvalidDabChannelInfo;

    if-eqz v0, :cond_10

    const-string p0, "favored button click, but current InvalidDabChannelInfo"

    .line 431
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    .line 434
    :cond_10
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    .line 435
    invoke-direct {p0, v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->isSignalPoor(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 436
    sget p0, Lcom/yftech/libradio/R$string;->signal_poor:I

    invoke-static {p0, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 438
    :cond_11
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v6

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isFavored(JIJ)Z

    move-result p0

    if-nez p0, :cond_13

    .line 440
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getFavoredList()[Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    move-result-object p0

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 442
    invoke-static {p0, v0, v1}, Lcom/yftech/libradio/Utils;->convertDabInfos([Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;Ljava/util/List;Ljava/util/List;)V

    .line 443
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v6

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->addFavored(JIJ)I

    move-result p0

    if-lez p0, :cond_12

    .line 445
    sget p1, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_add_favor_successful:I

    invoke-static {p1, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    goto :goto_0

    .line 447
    :cond_12
    sget p1, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_add_favor_failure:I

    invoke-static {p1, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    .line 449
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addFavor result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const-string p0, "has Favored -----"

    .line 451
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v6

    invoke-virtual {p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->removeFavored(JIJ)I

    move-result p0

    if-lez p0, :cond_14

    .line 454
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_remove_favor_successful:I

    invoke-static {p0, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    goto/16 :goto_2

    .line 456
    :cond_14
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_remove_favor_failure:I

    invoke-static {p0, v2}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    goto/16 :goto_2

    .line 422
    :cond_15
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "favored button click,IndexOutOfBoundsException, size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , currentPosition: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->currentPosition:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    return-void

    .line 460
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_settings:I

    if-ne v0, v1, :cond_1a

    .line 461
    invoke-static {}, Lcom/yftech/libradio/Utils;->isRdsPresent()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 462
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsDialog:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    if-nez p1, :cond_17

    .line 463
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsDialog:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    .line 465
    :cond_17
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsDialog:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->show()V

    goto/16 :goto_2

    .line 467
    :cond_18
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsNoRdsDialog:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    if-nez p1, :cond_19

    .line 468
    new-instance p1, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsNoRdsDialog:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    .line 470
    :cond_19
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsNoRdsDialog:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->show()V

    goto/16 :goto_2

    .line 472
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/yftech/libradio/R$id;->iv_epg:I

    if-ne v0, v1, :cond_1c

    .line 473
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p0, "iv_epg quick click"

    .line 474
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void

    .line 477
    :cond_1b
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/yftech/libradio/dabui/epg/EpgActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 479
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libradio/R$id;->layout_lables:I

    if-ne p1, v0, :cond_22

    .line 481
    :try_start_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getDabDynamicLabel()Lcom/yftech/car/media/radio/dab/entity/DabDynamicLabel;

    move-result-object p1

    if-nez p1, :cond_1d

    const-string p0, "dabDynamicLabel is null 111  -----"

    .line 483
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 487
    :cond_1d
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabDynamicLabel;->getLabels()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string p0, "dabDynamicLabel is null 222 -----"

    .line 488
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 491
    :cond_1e
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabDynamicLabel;->getLabels()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "labelString is empty -----"

    .line 493
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    :cond_1f
    const-string v0, ""

    .line 497
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;

    .line 498
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabChannelInfoList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/yftech/libradio/carousellayoutmanager/CarouselLayoutManager;->getCenterItemPosition()I

    move-result v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/bean/DabChannelInfo;

    if-eqz v1, :cond_20

    .line 499
    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 500
    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getPropertieslabel()Lcom/yftech/car/media/radio/dab/entity/DabLabel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabLabel;->getLabelString()Ljava/lang/String;

    move-result-object v0

    .line 502
    :cond_20
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mServiceTextInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    if-eqz v1, :cond_21

    .line 503
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mServiceTextInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    invoke-virtual {v1}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->dismiss()V

    .line 505
    :cond_21
    invoke-static {p1, v0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mServiceTextInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    .line 506
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mServiceTextInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class v0, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 508
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 166
    invoke-super {p0, p1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate()"

    .line 167
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/DabDataManager;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 169
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/DabDataManager;->init()V

    .line 171
    :cond_0
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/libradio/DabDataManager;->registerObservor(Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;)V

    .line 173
    :try_start_0
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    const-string v0, "dab_config_data_rssi_snr"

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->getConfigData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "signalConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, ","

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 177
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->minSinalConfig:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 267
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onDestroy()V

    .line 268
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->recyclerViewService:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;

    invoke-virtual {v0}, Lcom/yftech/libradio/dabui/DabMainFragment$DabServcieListAdapter;->onDestory()V

    .line 269
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 270
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->unInit()V

    .line 272
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabDataManagerCallback:Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    invoke-virtual {v0, p0}, Lcom/yftech/libradio/DabDataManager;->unregisterObservor(Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 253
    invoke-super {p0, p1}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onHiddenChanged(Z)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHiddenChanged, hidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 256
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result p1

    .line 257
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getScanStatus()Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/presenter/DabMainPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->play()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 232
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onPause()V

    const-string v0, "onPause()"

    .line 233
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->carDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->unregisterRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;)V

    .line 236
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabFrequencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsNoRdsDialog:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsNoRdsDialog:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    invoke-virtual {v0}, Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;->dismiss()V

    .line 239
    iput-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsNoRdsDialog:Lcom/yftech/libradio/dialog/DabSettingsNoRdsDialog;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mServiceTextInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mServiceTextInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    invoke-virtual {v0}, Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;->dismiss()V

    .line 243
    iput-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mServiceTextInfoDialog:Lcom/yftech/libradio/dialog/DabServiceTextInfoDialog;

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsDialog:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsDialog:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    invoke-virtual {v0}, Lcom/yftech/libradio/dialog/DabSettingsDialog;->dismiss()V

    .line 247
    iput-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mDabSettingsDialog:Lcom/yftech/libradio/dialog/DabSettingsDialog;

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 187
    invoke-super {p0}, Lcom/yftech/libradio/dabui/DabPlayerFragment;->onResume()V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume,isHide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->carDabRadioControlCallback:Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;

    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->registerRadioControlCallback(Lcom/yftech/car/media/radio/dab/CarDabRadioManager$OnDabRadioControlListener;Landroid/os/Handler;)V

    .line 190
    invoke-static {}, Lcom/yftech/libradio/DabAnnounceManager;->getInstance()Lcom/yftech/libradio/DabAnnounceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabAnnounceManager;->isAnnouncePlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->isAnnouncePlaying:Z

    .line 191
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "yf_radio_app_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "yf.dab.autosearch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume,isAudoSearchDone: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 196
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getDabEnsemble()[Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    array-length v0, v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    sget v0, Lcom/yftech/libradio/R$string;->radio_channel_search_dialog_search_scanning:I

    invoke-virtual {p0, v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->newInstance(Ljava/lang/String;)Lcom/yftech/libradio/dialog/DabSearchingDialog;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/yftech/libradio/dialog/DabSearchingDialog;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/yftech/libradio/dialog/DabSearchingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "yf_radio_app_data"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "yf.dab.autosearch"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    :cond_1
    iget-boolean v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->isAnnouncePlaying:Z

    invoke-static {}, Lcom/yftech/libradio/DabAnnounceManager;->getInstance()Lcom/yftech/libradio/DabAnnounceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/libradio/DabAnnounceManager;->getAnnotype()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/yftech/libradio/dabui/DabMainFragment;->updateAnnounceInfo(ZI)V

    .line 204
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->getDabChannelInfoList()Ljava/util/List;

    move-result-object v0

    .line 205
    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    new-instance v4, Lcom/yftech/libradio/dabui/DabMainFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/yftech/libradio/dabui/DabMainFragment$3;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment;Ljava/util/List;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    invoke-direct {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->updatePlayStatusUi()V

    .line 212
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x2715

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 213
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->isPlaying()Z

    move-result v0

    .line 214
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getScanStatus()Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;

    move-result-object v3

    .line 215
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->isResumeByPowerOn()Z

    move-result v4

    if-eqz v3, :cond_2

    .line 216
    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 217
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/yftech/libradio/RadioMainActivity;

    .line 218
    invoke-virtual {v2}, Lcom/yftech/libradio/RadioMainActivity;->isCheckedDab()Z

    move-result v2

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() isPlaying:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ";isScanning:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ";isResumeByPowerOn:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ";checkedDab="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    .line 222
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/presenter/DabMainPresenter;

    invoke-virtual {v0}, Lcom/yftech/libradio/presenter/DabMainPresenter;->play()V

    .line 225
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.yftech.action.dab.frequency"

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment;->dabFrequencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public startAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
