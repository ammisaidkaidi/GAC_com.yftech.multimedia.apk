.class public Lcom/yftech/libmusic/ui/MusicMainFragment;
.super Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;
.source "MusicMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MUSIC_SOURCE:Ljava/lang/String; = "MUSIC_SOURCE"


# instance fields
.field private final RC_AUDIO:I

.field private final carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

.field private mHandler:Landroid/os/Handler;

.field private musicSource:Ljava/lang/String;

.field private musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

.field private tv_music_source:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 145
    invoke-direct {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;-><init>()V

    const/16 v0, 0xa

    .line 54
    iput v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->RC_AUDIO:I

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSource:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/libmusic/ui/MusicMainFragment$1;-><init>(Lcom/yftech/libmusic/ui/MusicMainFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->mHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Lcom/yftech/libmusic/ui/MusicMainFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicMainFragment$2;-><init>(Lcom/yftech/libmusic/ui/MusicMainFragment;)V

    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/libmusic/ui/MusicMainFragment;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->switchMusicSource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/libmusic/ui/MusicMainFragment;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/libmusic/ui/MusicMainFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSource:Ljava/lang/String;

    return-object p1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicMainFragment;
    .locals 3

    .line 156
    new-instance v0, Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-direct {v0}, Lcom/yftech/libmusic/ui/MusicMainFragment;-><init>()V

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MUSIC_SOURCE"

    .line 158
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private declared-synchronized openMusicSourceDialog(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    .line 343
    :cond_0
    invoke-static {p1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    .line 344
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    new-instance v0, Lcom/yftech/libmusic/ui/MusicMainFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/libmusic/ui/MusicMainFragment$3;-><init>(Lcom/yftech/libmusic/ui/MusicMainFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->setOnMusicSourceSelectedListener(Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;)V

    .line 435
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 337
    monitor-exit p0

    throw p1
.end method

.method private switchMusicSource(Ljava/lang/String;)V
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchMusicSource:music_source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 524
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSource:Ljava/lang/String;

    .line 525
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 529
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 533
    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    move-result-object v0

    .line 535
    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 536
    :cond_0
    instance-of v1, v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    if-eqz v1, :cond_1

    .line 538
    check-cast v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    .line 539
    invoke-virtual {v0, p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusic_source(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 543
    invoke-virtual {p0, v0}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    .line 546
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;

    invoke-direct {v0, p1}, Lcom/yftech/libmusic/event/MusicSourceChangedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 1

    .line 324
    sget v0, Lcom/yftech/libmusic/R$id;->tv_music_source:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->tv_music_source:Landroid/widget/TextView;

    .line 325
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->tv_music_source:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onBindView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 319
    sget p0, Lcom/yftech/libmusic/R$layout;->fragment_music_main:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onBluetoothStatusChange(Lcom/yftech/libmusic/event/BluetoothStateEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStatusChange:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/libmusic/event/BluetoothStateEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 243
    iget p1, p1, Lcom/yftech/libmusic/event/BluetoothStateEvent;->state:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 246
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ","

    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 250
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    .line 251
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/media/common/util/AudioSettingUtil;->getCurrentSourceByClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothStatusChange:sourceByClientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSource:Ljava/lang/String;

    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz p1, :cond_2

    .line 259
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 260
    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 263
    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->newInstance(Ljava/lang/String;)Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    move-result-object p1

    .line 265
    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 266
    :cond_0
    instance-of v0, p1, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    if-eqz v0, :cond_1

    .line 268
    check-cast p1, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 269
    invoke-virtual {p1, v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusic_source(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 275
    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    :cond_2
    return-void
.end method

.method public onCarPlayStatusChange(Lcom/yftech/libmusic/event/CarPlayStateEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCarPlayStatusChange:event="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/libmusic/event/CarPlayStateEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCarlifeStatusChange(Lcom/yftech/libmusic/event/CarLifeStatusEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 285
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCarlifeStatusChange:event="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/libmusic/event/CarLifeStatusEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/yftech/libmusic/R$id;->tv_music_source:I

    if-ne p1, v0, :cond_0

    const-string p1, ""

    .line 332
    invoke-direct {p0, p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->openMusicSourceDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 165
    invoke-super {p0, p1}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "MUSIC_SOURCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSource:Ljava/lang/String;

    .line 170
    :cond_0
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->registerCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;Landroid/os/Handler;)V

    .line 173
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onDestroy()V

    .line 192
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->onDestroy()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    .line 196
    :cond_0
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->carAudioCallback:Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;

    invoke-virtual {v0, v1}, Lcom/yftech/car/audio/CarAudioManager;->unregisterCarAudioCallback(Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;)V

    .line 198
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onMusicSourceDialogOpen(Lcom/yftech/libmusic/event/MusicSourceDialogOpenEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->tv_music_source:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 314
    iget-object p1, p1, Lcom/yftech/libmusic/event/MusicSourceDialogOpenEvent;->music_source:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->openMusicSourceDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 178
    invoke-super {p0}, Lcom/yftech/libmvpmodule/mvp/BaseMvpFragment;->onStop()V

    const-string v0, "onStop"

    .line 180
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {v0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSourceDialog:Lcom/yftech/libmusic/dialog/MusicSourceDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSourceDialog;->dismissCustom()V

    :cond_0
    return-void
.end method

.method public onUSBStatusChange(Lcom/media/common/event/USBStateEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUSBStatusChange:event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/media/common/event/USBStateEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",get music source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 223
    iget-boolean p1, p1, Lcom/media/common/event/USBStateEvent;->isUsbExists:Z

    if-nez p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSource:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string p1, "MUSIC_SOURCE_OF_USB1"

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "MUSIC_SOURCE_OF_USB2"

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment;->musicSource:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
