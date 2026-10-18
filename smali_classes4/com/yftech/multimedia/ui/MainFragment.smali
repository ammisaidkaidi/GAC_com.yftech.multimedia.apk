.class public Lcom/yftech/multimedia/ui/MainFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "MainFragment.java"

# interfaces
.implements Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "enableDevices"


# instance fields
.field private callback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

.field private currentFragment:Landroidx/fragment/app/Fragment;

.field private dialog:Lcom/media/common/ui/widget/TipsDialog;

.field private enableDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fl_tips:Landroid/widget/FrameLayout;

.field private iv_tips_icon:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private selector:Lcom/media/common/ui/widget/MyTabSelector;

.field private tv_tips_content:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->mHandler:Landroid/os/Handler;

    .line 259
    new-instance v0, Lcom/yftech/multimedia/ui/MainFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/multimedia/ui/MainFragment$2;-><init>(Lcom/yftech/multimedia/ui/MainFragment;)V

    iput-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->callback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/multimedia/ui/MainFragment;)Ljava/util/List;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    return-object p0
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/yftech/multimedia/ui/MainFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/yftech/multimedia/ui/MainFragment;"
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/yftech/multimedia/ui/MainFragment;

    invoke-direct {v0}, Lcom/yftech/multimedia/ui/MainFragment;-><init>()V

    .line 225
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "enableDevices"

    .line 226
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 227
    invoke-virtual {v0, v1}, Lcom/yftech/multimedia/ui/MainFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTabIndex()I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getIndex()I

    move-result p0

    return p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0238

    .line 94
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/media/common/ui/widget/MyTabSelector;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    .line 95
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/MyTabSelector;->setTabArray([Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    new-instance v1, Lcom/yftech/multimedia/ui/MainFragment$1;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/ui/MainFragment$1;-><init>(Lcom/yftech/multimedia/ui/MainFragment;)V

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/MyTabSelector;->setCustomStyle(Lcom/media/common/ui/widget/MyTabSelector$ICustomStyle;)V

    .line 159
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v0, p0}, Lcom/media/common/ui/widget/MyTabSelector;->setOnTabClickListener(Lcom/media/common/ui/widget/MyTabSelector$OnTabClickListener;)V

    const v0, 0x7f0a00cd

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->fl_tips:Landroid/widget/FrameLayout;

    const v0, 0x7f0a014b

    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->iv_tips_icon:Landroid/widget/ImageView;

    const v0, 0x7f0a02ea

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->tv_tips_content:Landroid/widget/TextView;

    .line 166
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->fl_tips:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/yftech/multimedia/ui/SubjectFragment;->newInstance(I)Lcom/yftech/multimedia/ui/SubjectFragment;

    move-result-object p1

    .line 171
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v1, p0, p1}, Lcom/media/common/util/MyFragmentManger;->pushFragment(ILandroidx/fragment/app/Fragment;)V

    .line 173
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p0

    const v0, 0x7f0a0178

    invoke-virtual {p0, p1, v0}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->iv_tips_icon:Landroid/widget/ImageView;

    const v1, 0x7f0e00e1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->tv_tips_content:Landroid/widget/TextView;

    const v1, 0x7f11011f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->fl_tips:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 415
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 417
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/media/common/util/MyFragmentManger;->getAllFragments()Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 419
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 420
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 423
    invoke-virtual {v2, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onBackPress()V
    .locals 3

    .line 520
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/MyTabSelector;->getIndex()I

    move-result v0

    .line 523
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/media/common/util/MyFragmentManger;->getFragmentStack(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 524
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 527
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 529
    instance-of v2, v1, Lcom/yftech/libgallery/ui/PictureListFragment;

    if-nez v2, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 533
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 534
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    .line 535
    instance-of v0, p0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    if-eqz v0, :cond_1

    .line 536
    move-object v0, p0

    check-cast v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;

    .line 537
    invoke-virtual {v0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onResume()V

    .line 538
    invoke-virtual {v0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onRefreshData()V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 543
    :cond_2
    :goto_0
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    const v1, 0x7f0a0178

    invoke-virtual {v0, p0, v1}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    :cond_3
    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p0, 0x7f0d0057

    const/4 p3, 0x0

    .line 88
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 233
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "enableDevices"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    .line 238
    :cond_0
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/media/common/util/MyFragmentManger;->init(Landroidx/fragment/app/FragmentManager;)V

    .line 239
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p1

    const v0, 0x7f0a01fd

    invoke-virtual {p1, v0}, Lcom/media/common/util/MyFragmentManger;->setVideoPlayerLayoutId(I)V

    .line 240
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/media/common/util/MyFragmentManger;->setPhotoLayoutId(I)V

    .line 241
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->callback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->registerCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    .line 242
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 247
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    .line 248
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/TipsDialog;->dismissAllowingStateLoss()V

    .line 250
    iput-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    .line 252
    :cond_0
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/media/common/util/MyFragmentManger;->release()V

    .line 253
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->callback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, v2}, Lcom/yftech/car/media/data/CarMediaDataManager;->unregisterCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    .line 254
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 255
    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onTabClick(Landroid/view/View;I)V
    .locals 3

    .line 476
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p2, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 479
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-gez p1, :cond_2

    return-void

    .line 489
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTabClick:index="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 492
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v1, Lcom/media/common/event/USBIndexSwitchEvent;

    invoke-direct {v1, p1}, Lcom/media/common/event/USBIndexSwitchEvent;-><init>(I)V

    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 494
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/media/common/util/MyFragmentManger;->getFragmentStack(I)Ljava/util/Stack;

    move-result-object p2

    const v1, 0x7f0a0178

    if-eqz p2, :cond_5

    .line 495
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 501
    :cond_3
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 503
    instance-of p2, p1, Lcom/yftech/multimedia/ui/SubjectFragment;

    if-eqz p2, :cond_4

    .line 504
    move-object p2, p1

    check-cast p2, Lcom/yftech/multimedia/ui/SubjectFragment;

    const-string p2, ""

    .line 512
    invoke-virtual {p0, p2, v0}, Lcom/yftech/multimedia/ui/MainFragment;->setTipsContent(Ljava/lang/String;I)V

    .line 514
    :cond_4
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    goto :goto_2

    .line 496
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/yftech/multimedia/ui/SubjectFragment;->newInstance(I)Lcom/yftech/multimedia/ui/SubjectFragment;

    move-result-object p0

    .line 497
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/media/common/util/MyFragmentManger;->pushFragment(ILandroidx/fragment/app/Fragment;)V

    .line 499
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Lcom/media/common/util/MyFragmentManger;->switchContent(Landroidx/fragment/app/Fragment;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onUSBPushOutInPhotoDisplaying(Lcom/media/common/event/USBPushOutInPhotoDisplayingEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "onUSBPushOutInPhotoDisplaying"

    .line 431
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 434
    instance-of v0, p1, Lcom/yftech/multimedia/MainActivity;

    if-eqz v0, :cond_2

    .line 435
    check-cast p1, Lcom/yftech/multimedia/MainActivity;

    const-string v0, "com.yftech.multimedia.show_alert_dialog"

    const/4 v1, 0x1

    .line 438
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f110037

    .line 441
    invoke-virtual {p0, v0}, Lcom/yftech/multimedia/ui/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    if-nez v1, :cond_0

    .line 445
    invoke-static {v0}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    .line 446
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    new-instance v2, Lcom/yftech/multimedia/ui/MainFragment$5;

    invoke-direct {v2, p0}, Lcom/yftech/multimedia/ui/MainFragment$5;-><init>(Lcom/yftech/multimedia/ui/MainFragment;)V

    invoke-virtual {v1, v2}, Lcom/media/common/ui/widget/TipsDialog;->setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V

    .line 454
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {p1}, Lcom/yftech/multimedia/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v1, v0}, Lcom/media/common/ui/widget/TipsDialog;->setContent(Ljava/lang/String;)V

    .line 458
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/TipsDialog;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v1}, Lcom/media/common/ui/widget/TipsDialog;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {p1}, Lcom/yftech/multimedia/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 464
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/yftech/multimedia/ui/MainFragment$6;

    invoke-direct {v0, p0}, Lcom/yftech/multimedia/ui/MainFragment$6;-><init>(Lcom/yftech/multimedia/ui/MainFragment;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onUSBStatusChange(Lcom/media/common/event/USBStateForPhotoAndVideoEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUSBStatusChange:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 308
    iget-boolean v0, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->isUsbExists:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 311
    invoke-static {}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->getInstance()Lcom/yftech/libgallery/utils/MyPhotoDataManager;

    move-result-object v0

    iget v2, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    invoke-virtual {v0, v2}, Lcom/yftech/libgallery/utils/MyPhotoDataManager;->resetData(I)V

    .line 313
    invoke-static {}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->getInstance()Lcom/yftech/libmedia/player/utils/MyVideoDataManager;

    move-result-object v0

    iget v2, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    invoke-virtual {v0, v2}, Lcom/yftech/libmedia/player/utils/MyVideoDataManager;->resetData(I)V

    .line 317
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v0}, Lcom/media/common/ui/widget/MyTabSelector;->getIndex()I

    move-result v0

    iget v2, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 321
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 322
    instance-of v2, v0, Lcom/yftech/multimedia/MainActivity;

    if-eqz v2, :cond_3

    .line 323
    check-cast v0, Lcom/yftech/multimedia/MainActivity;

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUSBStatusChange:isDisplaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/yftech/multimedia/MainActivity;->isDisplaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 326
    iget-boolean v2, v0, Lcom/yftech/multimedia/MainActivity;->isDisplaying:Z

    if-eqz v2, :cond_3

    const-string v2, "com.yftech.multimedia.show_alert_dialog"

    .line 329
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f110037

    .line 332
    invoke-virtual {p0, v1}, Lcom/yftech/multimedia/ui/MainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 334
    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    if-nez v2, :cond_1

    .line 336
    invoke-static {v1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    .line 337
    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    new-instance v3, Lcom/yftech/multimedia/ui/MainFragment$3;

    invoke-direct {v3, p0}, Lcom/yftech/multimedia/ui/MainFragment$3;-><init>(Lcom/yftech/multimedia/ui/MainFragment;)V

    invoke-virtual {v2, v3}, Lcom/media/common/ui/widget/TipsDialog;->setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V

    .line 345
    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v0}, Lcom/yftech/multimedia/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v2, v1}, Lcom/media/common/ui/widget/TipsDialog;->setContent(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/TipsDialog;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/TipsDialog;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/TipsDialog;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->dialog:Lcom/media/common/ui/widget/TipsDialog;

    invoke-virtual {v0}, Lcom/yftech/multimedia/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 354
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/multimedia/ui/MainFragment$4;

    invoke-direct {v1, p0}, Lcom/yftech/multimedia/ui/MainFragment$4;-><init>(Lcom/yftech/multimedia/ui/MainFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 364
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get the usbIndex:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isUsbExists:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->isUsbExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    iget v1, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    invoke-virtual {v0, v1}, Lcom/media/common/util/MyFragmentManger;->getFragmentStack(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 368
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 370
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 371
    :goto_2
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 373
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 374
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_2

    .line 377
    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 380
    :cond_5
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    iget v1, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    invoke-virtual {v0, v1}, Lcom/media/common/util/MyFragmentManger;->removeFragmentStack(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 381
    :goto_3
    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 382
    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    if-ne v2, v3, :cond_6

    .line 383
    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 388
    :cond_7
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTabEnable:index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    iget-object v3, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v3}, Lcom/media/common/ui/widget/MyTabSelector;->getTabCount()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 389
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    iget p1, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    iget-object v2, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v2}, Lcom/media/common/ui/widget/MyTabSelector;->getTabCount()I

    move-result v2

    rem-int/2addr p1, v2

    invoke-virtual {v1, p1, v0}, Lcom/media/common/ui/widget/MyTabSelector;->setTabEnable(IZ)V

    .line 392
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/yftech/libmvpmodule/utils/SystemUtil;->setSysFullScreen(Landroid/app/Activity;Z)V

    .line 395
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 396
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->fl_tips:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->iv_tips_icon:Landroid/widget/ImageView;

    const v0, 0x7f0e00e1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->tv_tips_content:Landroid/widget/TextView;

    const p1, 0x7f11011f

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 402
    :cond_8
    iget-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getTabCount()I

    move-result p0

    rem-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/media/common/ui/widget/MyTabSelector;->setIndexTab(I)V

    goto :goto_5

    .line 408
    :cond_9
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->enableDevices:Ljava/util/List;

    iget v2, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    iget-object v3, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {v3}, Lcom/media/common/ui/widget/MyTabSelector;->getTabCount()I

    move-result v3

    rem-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    iget p1, p1, Lcom/media/common/event/USBStateForPhotoAndVideoEvent;->usbIndex:I

    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->selector:Lcom/media/common/ui/widget/MyTabSelector;

    invoke-virtual {p0}, Lcom/media/common/ui/widget/MyTabSelector;->getTabCount()I

    move-result p0

    rem-int/2addr p1, p0

    invoke-virtual {v0, p1, v1}, Lcom/media/common/ui/widget/MyTabSelector;->setTabEnable(IZ)V

    :goto_5
    return-void
.end method

.method public setTipsContent(Ljava/lang/String;I)V
    .locals 2

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->fl_tips:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/yftech/multimedia/ui/MainFragment;->tv_tips_content:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->iv_tips_icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 184
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/yftech/multimedia/ui/MainFragment;->fl_tips:Landroid/widget/FrameLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public switchContent(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    const v2, 0x7f0a0178

    if-nez v1, :cond_0

    .line 208
    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    if-eq v1, p1, :cond_2

    .line 213
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/yftech/multimedia/ui/MainFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 220
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/yftech/multimedia/ui/MainFragment;->currentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method
