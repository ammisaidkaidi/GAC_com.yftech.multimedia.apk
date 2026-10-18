.class Lcom/yftech/libmusic/ui/MusicMainFragment$1;
.super Landroid/os/Handler;
.source "MusicMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicMainFragment;Landroid/os/Looper;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_d

    .line 67
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    :goto_0
    invoke-static {p1}, Lcom/media/common/util/AudioSettingUtil;->getCurrentSourceByClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz v1, :cond_d

    .line 77
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/yftech/libmusic/MusicMainActivity;

    .line 79
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {v2}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onChangedMediaSource:isPlayingMusic="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ",clientId:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    const/16 v3, 0xc

    invoke-virtual {p1, v3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_3
    const-string p1, "MUSIC_SOURCE_OF_USB1"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result p1

    if-lez p1, :cond_7

    :cond_4
    const-string p1, "MUSIC_SOURCE_OF_USB2"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/yftech/car/media/data/CarMediaDataManager;->getMusicFileSize(I)I

    move-result p1

    if-lez p1, :cond_7

    :cond_5
    const-string p1, "MUSIC_SOURCE_OF_CARLIFE"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const-string p1, "MUSIC_SOURCE_OF_CARPLAY"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getConnectStatus()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_8

    :cond_7
    const-string p0, "the source is not available!!!!!!"

    .line 93
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_8
    invoke-virtual {v1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {p1, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    const/4 p1, 0x0

    .line 98
    iput-object p1, v1, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    if-nez v2, :cond_9

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 105
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-static {p0, v0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->access$000(Lcom/yftech/libmusic/ui/MusicMainFragment;Ljava/lang/String;)V

    goto :goto_2

    .line 107
    :cond_9
    instance-of p0, v2, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    if-eqz p0, :cond_a

    .line 108
    check-cast v2, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    .line 110
    invoke-virtual {v2, v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusic_source(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, v2}, Lcom/yftech/libmusic/MusicMainActivity;->switchContent(Landroidx/fragment/app/Fragment;)V

    .line 116
    :cond_a
    :goto_2
    invoke-virtual {v1, v5}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    goto :goto_3

    :cond_b
    if-nez v2, :cond_c

    .line 134
    invoke-virtual {v1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 135
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$1;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    iput-object p0, v1, Lcom/yftech/libmusic/MusicMainActivity;->currentFragment:Landroidx/fragment/app/Fragment;

    .line 138
    :cond_c
    invoke-virtual {v1, v4}, Lcom/yftech/libmusic/MusicMainActivity;->setSoundEffectVisible(Z)V

    :cond_d
    :goto_3
    return-void
.end method
