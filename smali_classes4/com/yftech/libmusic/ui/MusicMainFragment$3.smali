.class Lcom/yftech/libmusic/ui/MusicMainFragment$3;
.super Ljava/lang/Object;
.source "MusicMainFragment.java"

# interfaces
.implements Lcom/yftech/libmusic/dialog/MusicSourceDialog$OnMusicSourceSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicMainFragment;->openMusicSourceDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicMainFragment;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    .line 348
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-static {p1, p3}, Lcom/yftech/libmusic/ui/MusicMainFragment;->access$202(Lcom/yftech/libmusic/ui/MusicMainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz p1, :cond_4

    .line 353
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/MusicMainActivity;

    .line 355
    invoke-virtual {p1}, Lcom/yftech/libmusic/MusicMainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-class v0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 357
    instance-of v0, p2, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    if-eqz v0, :cond_3

    .line 359
    check-cast p2, Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "original music source="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getMusic_source()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", music source="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getMusic_source()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v6

    goto :goto_1

    :sswitch_1
    const-string v0, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_1

    :sswitch_2
    const-string v0, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v4

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 377
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->pause()V

    goto :goto_2

    .line 374
    :pswitch_1
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->setMusicControl(I)V

    goto :goto_2

    .line 371
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->pauseBluetoothMusic()Z

    goto :goto_2

    .line 368
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/music/CarMusicManager;->pause()V

    .line 383
    :goto_2
    invoke-virtual {p2, p3, v6}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->setMusic_source(Ljava/lang/String;Z)V

    .line 385
    invoke-virtual {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->onResume()V

    .line 388
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto :goto_3

    :sswitch_5
    const-string p1, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v6

    goto :goto_4

    :sswitch_6
    const-string p1, "MUSIC_SOURCE_OF_USB1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v5

    goto :goto_4

    :sswitch_7
    const-string p1, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_4

    :sswitch_8
    const-string p1, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    goto :goto_4

    :sswitch_9
    const-string p1, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v3

    goto :goto_4

    :cond_2
    :goto_3
    move v1, v4

    :goto_4
    packed-switch v1, :pswitch_data_1

    goto :goto_5

    .line 402
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicMainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->play()V

    goto :goto_5

    .line 399
    :pswitch_5
    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->setMusicControl(I)V

    goto :goto_5

    .line 396
    :pswitch_6
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->startBluetoothMusic(Z)Z

    goto :goto_5

    .line 393
    :pswitch_7
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0, v6, v6}, Lcom/yftech/car/media/music/CarMusicManager;->setCurrentUSB(BZ)V

    goto :goto_5

    .line 390
    :pswitch_8
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Lcom/yftech/car/media/music/CarMusicManager;->setCurrentUSB(BZ)V

    goto :goto_5

    :cond_3
    if-nez p2, :cond_4

    .line 421
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicMainFragment$3;->this$0:Lcom/yftech/libmusic/ui/MusicMainFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicMainFragment;->access$100(Lcom/yftech/libmusic/ui/MusicMainFragment;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/yftech/libmusic/ui/MusicMainFragment$3$1;

    invoke-direct {v0, p0, p3, p1}, Lcom/yftech/libmusic/ui/MusicMainFragment$3$1;-><init>(Lcom/yftech/libmusic/ui/MusicMainFragment$3;Ljava/lang/String;Lcom/yftech/libmusic/MusicMainActivity;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3b9dd690 -> :sswitch_4
        0x5b93cd32 -> :sswitch_3
        0x5b95a96a -> :sswitch_2
        0x6946e60b -> :sswitch_1
        0x6946e60c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x3b9dd690 -> :sswitch_9
        0x5b93cd32 -> :sswitch_8
        0x5b95a96a -> :sswitch_7
        0x6946e60b -> :sswitch_6
        0x6946e60c -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
