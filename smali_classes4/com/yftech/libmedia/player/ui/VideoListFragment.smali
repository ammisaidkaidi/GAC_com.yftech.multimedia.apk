.class public Lcom/yftech/libmedia/player/ui/VideoListFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "VideoListFragment.java"

# interfaces
.implements Lcom/yftech/libmedia/player/view/IVideoListActivityView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment<",
        "Lcom/yftech/libmedia/player/presenter/VideoListPresenter;",
        ">;",
        "Lcom/yftech/libmedia/player/view/IVideoListActivityView;"
    }
.end annotation


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "index"


# instance fields
.field private index:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private rv:Landroidx/recyclerview/widget/RecyclerView;

.field private vid_usb_name:Landroid/widget/TextView;

.field private videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmedia/player/ui/VideoListFragment;)Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/libmedia/player/ui/VideoListFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/libmedia/player/ui/VideoListFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private getVideoData()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 220
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;

    iget p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    invoke-virtual {v0, p0}, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;->getVideoListData(I)V

    return-void
.end method

.method public static newInstance(I)Lcom/yftech/libmedia/player/ui/VideoListFragment;
    .locals 3

    .line 65
    new-instance v0, Lcom/yftech/libmedia/player/ui/VideoListFragment;

    invoke-direct {v0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;-><init>()V

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "index"

    .line 67
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmedia/player/presenter/VideoListPresenter;
    .locals 1

    .line 61
    new-instance v0, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->createPresenter()Lcom/yftech/libmedia/player/presenter/VideoListPresenter;

    move-result-object p0

    return-object p0
.end method

.method public displayVideoList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/media/common/entity/QuickMultipleEntity;",
            ">;)V"
        }
    .end annotation

    .line 245
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isScanner(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    if-eqz v0, :cond_1

    .line 249
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->setNewData(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method protected initView(Landroid/view/View;)V
    .locals 2

    .line 120
    sget v0, Lcom/yftech/libmedia/R$id;->vid_usb_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->vid_usb_name:Landroid/widget/TextView;

    .line 121
    iget v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    if-ltz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->vid_usb_name:Landroid/widget/TextView;

    iget v1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    if-nez v1, :cond_0

    sget v1, Lcom/yftech/libmedia/R$string;->music_source_selection_1:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/yftech/libmedia/R$string;->music_source_selection_2:I

    :goto_0
    invoke-virtual {p0, v1}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->vid_usb_name:Landroid/widget/TextView;

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_1
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->vid_usb_name:Landroid/widget/TextView;

    new-instance v1, Lcom/yftech/libmedia/player/ui/VideoListFragment$1;

    invoke-direct {v1, p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment$1;-><init>(Lcom/yftech/libmedia/player/ui/VideoListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    sget v0, Lcom/yftech/libmedia/R$id;->progressBar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 135
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 137
    sget v0, Lcom/yftech/libmedia/R$id;->rv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 138
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/yftech/libmedia/player/ui/VideoListFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment$2;-><init>(Lcom/yftech/libmedia/player/ui/VideoListFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 149
    new-instance p1, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    iget v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    invoke-direct {p1, p0, v0}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;-><init>(Lcom/yftech/libmedia/player/ui/VideoListFragment;I)V

    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    .line 150
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    new-instance v0, Lcom/yftech/libmedia/player/ui/VideoListFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment$3;-><init>(Lcom/yftech/libmedia/player/ui/VideoListFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->setOnItemClickListener(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnItemClickListener;)V

    .line 183
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    new-instance v0, Lcom/yftech/libmedia/player/ui/VideoListFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment$4;-><init>(Lcom/yftech/libmedia/player/ui/VideoListFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->setOnLastViewedCallback(Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter$OnLastViewedCallback;)V

    .line 191
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 194
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 195
    new-instance v0, Lcom/yftech/libmedia/player/ui/VideoListFragment$5;

    invoke-direct {v0, p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment$5;-><init>(Lcom/yftech/libmedia/player/ui/VideoListFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 210
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 213
    invoke-direct {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getVideoData()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 225
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_1

    .line 229
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    if-eqz p1, :cond_1

    .line 232
    iget p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    if-nez p1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_VIDEO_VIEWED_LAST_FOR_USB_1"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object p1

    const-string p2, "TAG_VIDEO_VIEWED_LAST_FOR_USB_2"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-virtual {p0, p1}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->setLastViewedPath(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    sget p0, Lcom/yftech/libmedia/R$layout;->fragment_video_list:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    .line 79
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    .line 86
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRefreshData()V
    .locals 3

    const-string v0, "VideoListFragment:onRefreshData"

    .line 93
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    if-eqz v0, :cond_1

    .line 98
    iget v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_VIDEO_VIEWED_LAST_FOR_USB_1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_VIDEO_VIEWED_LAST_FOR_USB_2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/media/common/util/SharedPrefsUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoListFragment:lastViewedPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->videoListAdapter:Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;

    invoke-virtual {p0, v0}, Lcom/yftech/libmedia/player/ui/adapter/VideoListAdapter;->setLastViewedPath(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onVideoDataChange(Lcom/media/common/event/MediaDataCallbackForVideoDataChangedEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/media/common/event/MediaDataCallbackForVideoDataChangedEvent;->usbIndex:I

    iget v0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/libmedia/player/ui/VideoListFragment;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;

    iget p0, p0, Lcom/yftech/libmedia/player/ui/VideoListFragment;->index:I

    invoke-virtual {p1, p0}, Lcom/yftech/libmedia/player/presenter/VideoListPresenter;->getVideoListData(I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
