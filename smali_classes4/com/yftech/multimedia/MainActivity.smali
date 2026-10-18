.class public Lcom/yftech/multimedia/MainActivity;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;
.source "MainActivity.java"


# instance fields
.field private final RC_PHOTO_DELETE_RESULT:I

.field private final dataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

.field private mHandler:Landroid/os/Handler;

.field private mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

.field private main_frame:Landroid/widget/FrameLayout;

.field private final receiver:Lcom/yftech/multimedia/UsbInformationReceiver;

.field private testReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/yftech/multimedia/UsbInformationReceiver;

    invoke-direct {v0}, Lcom/yftech/multimedia/UsbInformationReceiver;-><init>()V

    iput-object v0, p0, Lcom/yftech/multimedia/MainActivity;->receiver:Lcom/yftech/multimedia/UsbInformationReceiver;

    .line 49
    new-instance v0, Lcom/yftech/multimedia/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/yftech/multimedia/MainActivity$1;-><init>(Lcom/yftech/multimedia/MainActivity;)V

    iput-object v0, p0, Lcom/yftech/multimedia/MainActivity;->testReceiver:Landroid/content/BroadcastReceiver;

    const/16 v0, 0x3e8

    .line 83
    iput v0, p0, Lcom/yftech/multimedia/MainActivity;->RC_PHOTO_DELETE_RESULT:I

    .line 84
    new-instance v0, Lcom/yftech/multimedia/MainActivity$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/multimedia/MainActivity$2;-><init>(Lcom/yftech/multimedia/MainActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/multimedia/MainActivity;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/yftech/multimedia/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/yftech/multimedia/MainActivity$3;-><init>(Lcom/yftech/multimedia/MainActivity;)V

    iput-object v0, p0, Lcom/yftech/multimedia/MainActivity;->dataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/multimedia/MainActivity;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/multimedia/MainActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkNoneAnim(Landroid/content/Intent;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    const-string p1, " parseIntent is fail intent is null"

    .line 282
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return p0

    :cond_0
    const-string v0, "isNoneAnim"

    .line 285
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkNoneAnim flag ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return p0
.end method

.method private initW()V
    .locals 7

    const v0, 0x7f0a0179

    .line 147
    invoke-virtual {p0, v0}, Lcom/yftech/multimedia/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/yftech/multimedia/MainActivity;->main_frame:Landroid/widget/FrameLayout;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->getExistUdiskList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v4, v3

    .line 154
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 156
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {v0}, Lcom/yftech/multimedia/ui/MainFragment;->newInstance(Ljava/util/ArrayList;)Lcom/yftech/multimedia/ui/MainFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/multimedia/MainActivity;->mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

    .line 164
    iget-object v0, p0, Lcom/yftech/multimedia/MainActivity;->mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-virtual {p0, v0}, Lcom/yftech/multimedia/MainActivity;->pushFragment(Landroidx/fragment/app/Fragment;)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/yftech/multimedia/MainActivity;->setSplitMotionAvailable(Z)V

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "ACTION_USB_STATUS_CHANGE_IN_PHOTO_AND_VIDEO"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/yftech/multimedia/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object p0, p0, Lcom/yftech/multimedia/MainActivity;->receiver:Lcom/yftech/multimedia/UsbInformationReceiver;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerTestReceiver()V
    .locals 2

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "MainActivity"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/yftech/multimedia/MainActivity;->testReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/multimedia/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 292
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 293
    iget-object v0, p0, Lcom/yftech/multimedia/MainActivity;->mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

    if-eqz v0, :cond_0

    .line 294
    iget-object p0, p0, Lcom/yftech/multimedia/MainActivity;->mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/multimedia/ui/MainFragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 299
    invoke-static {}, Lcom/media/common/util/MyFragmentManger;->getInstance()Lcom/media/common/util/MyFragmentManger;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/multimedia/MainActivity;->mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-virtual {v1}, Lcom/yftech/multimedia/ui/MainFragment;->getTabIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/media/common/util/MyFragmentManger;->getFragmentStack(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 304
    :goto_0
    iget-object v2, p0, Lcom/yftech/multimedia/MainActivity;->mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, v1, Lcom/yftech/multimedia/ui/SubjectFragment;

    if-nez v0, :cond_1

    .line 305
    iget-object p0, p0, Lcom/yftech/multimedia/MainActivity;->mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-virtual {p0}, Lcom/yftech/multimedia/ui/MainFragment;->onBackPress()V

    goto :goto_1

    .line 307
    :cond_1
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onBackPressed()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/yftech/multimedia/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/multimedia/MainActivity;->checkNoneAnim(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, v0, v0}, Lcom/yftech/multimedia/MainActivity;->overridePendingTransition(II)V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0022

    .line 117
    invoke-virtual {p0, p1}, Lcom/yftech/multimedia/MainActivity;->setContentView(I)V

    .line 119
    invoke-direct {p0}, Lcom/yftech/multimedia/MainActivity;->initW()V

    .line 122
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/multimedia/MainActivity;->dataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->registerCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    .line 123
    invoke-direct {p0}, Lcom/yftech/multimedia/MainActivity;->registerReceiver()V

    .line 126
    invoke-direct {p0}, Lcom/yftech/multimedia/MainActivity;->registerTestReceiver()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 240
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onDestroy()V

    const-string v0, "Main onDestroy"

    .line 241
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/yftech/multimedia/MainActivity;->mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/yftech/multimedia/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/multimedia/MainActivity;->mainFragment:Lcom/yftech/multimedia/ui/MainFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 247
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/multimedia/MainActivity;->dataChangeCallback:Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->unregisterCarDataControlCallback(Lcom/yftech/car/media/data/CarMediaDataManager$OnDataChangeCallback;)V

    .line 249
    invoke-virtual {p0}, Lcom/yftech/multimedia/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/multimedia/MainActivity;->receiver:Lcom/yftech/multimedia/UsbInformationReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iget-object v0, p0, Lcom/yftech/multimedia/MainActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/yftech/multimedia/MainActivity;->testReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/multimedia/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 234
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "android:support:fragments"

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public pushFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 255
    invoke-virtual {p0}, Lcom/yftech/multimedia/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 257
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0179

    invoke-virtual {p0, v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 259
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public pushFragment(Landroidx/fragment/app/Fragment;Z)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 263
    invoke-virtual {p0}, Lcom/yftech/multimedia/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0179

    invoke-virtual {p0, v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz p2, :cond_0

    .line 267
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public setSplitMotionAvailable(Z)V
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/yftech/multimedia/MainActivity;->main_frame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method
