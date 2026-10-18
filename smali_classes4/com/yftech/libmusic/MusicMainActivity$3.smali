.class Lcom/yftech/libmusic/MusicMainActivity$3;
.super Ljava/lang/Object;
.source "MusicMainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/MusicMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/MusicMainActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/MusicMainActivity;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity$3;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 530
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 531
    invoke-static {}, Lcom/yftech/car/audio/CarAudioManager;->getInstance()Lcom/yftech/car/audio/CarAudioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/audio/CarAudioManager;->getCurrentMediaSource()Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, ","

    .line 534
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 535
    array-length p2, p1

    const/4 v0, 0x3

    if-lt p2, v0, :cond_1

    const/4 p2, 0x2

    .line 536
    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/media/common/util/AudioSettingUtil;->getCurrentSourceByClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MUSIC_SOURCE_OF_USB1"

    .line 538
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 540
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/MusicMainActivity$3;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-virtual {p1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class p2, Lcom/yftech/libmusic/ui/MusicLyricFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 541
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 543
    iget-object p0, p0, Lcom/yftech/libmusic/MusicMainActivity$3;->this$0:Lcom/yftech/libmusic/MusicMainActivity;

    invoke-virtual {p0}, Lcom/yftech/libmusic/MusicMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    .line 545
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/yftech/libmusic/event/MusicLyricHideEvent;

    invoke-direct {p1}, Lcom/yftech/libmusic/event/MusicLyricHideEvent;-><init>()V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
