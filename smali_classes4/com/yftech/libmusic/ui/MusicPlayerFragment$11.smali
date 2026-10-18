.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;
.super Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;
.source "MusicPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/ui/MusicPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedMediaSource(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedMediaSource streamType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", clientId:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const-string p1, "MUSIC_SOURCE_OF_CARPLAY"

    .line 979
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "carplay"

    invoke-static {}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getInstance()Lcom/yftech/car/phonelink/CarPhoneLinkManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/phonelink/CarPhoneLinkManager;->getConnectedLinkStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 984
    :cond_0
    invoke-static {p3}, Lcom/media/common/util/AudioSettingUtil;->getCurrentSourceByClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 987
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "MUSIC_SOURCE_OF_USB1"

    .line 988
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "MUSIC_SOURCE_OF_USB2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 989
    :cond_1
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 990
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Lcom/yftech/libmusic/dialog/MediaDataListDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/libmusic/dialog/MediaDataListDialog;->dismiss()V

    :cond_2
    const-string p2, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 995
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object p2

    const/16 p3, 0xc

    invoke-virtual {p2, p3}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->isConnected(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 997
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    const-string p2, "MUSIC_SOURCE_OF_BLUETOOTH"

    invoke-static {p1, p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1202(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 999
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2600(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    goto/16 :goto_0

    :cond_3
    const-string p2, "MUSIC_SOURCE_OF_USB1"

    .line 1002
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1004
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    const-string p2, "MUSIC_SOURCE_OF_USB1"

    invoke-static {p1, p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1202(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1006
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2600(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    goto :goto_0

    :cond_4
    const-string p2, "MUSIC_SOURCE_OF_USB2"

    .line 1009
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1011
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    const-string p2, "MUSIC_SOURCE_OF_USB2"

    invoke-static {p1, p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1202(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1013
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2600(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    goto :goto_0

    :cond_5
    const-string p2, "MUSIC_SOURCE_OF_CARLIFE"

    .line 1016
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getInstance()Lcom/yftech/libmusic/utils/CarLifeMusicManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/libmusic/utils/CarLifeMusicManager;->getCarLifeConnectionStatus()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1018
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    const-string p2, "MUSIC_SOURCE_OF_CARLIFE"

    invoke-static {p1, p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1202(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1020
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2600(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    goto :goto_0

    :cond_6
    const-string p2, "MUSIC_SOURCE_OF_CARPLAY"

    .line 1023
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getInstance(Landroid/content/Context;)Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->getConnectStatus()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    .line 1025
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    const-string p2, "MUSIC_SOURCE_OF_CARPLAY"

    invoke-static {p1, p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1202(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1027
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2600(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)V

    goto :goto_0

    .line 1030
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1032
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$11;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    iput-boolean p3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isNeedToPlay:Z

    :cond_8
    :goto_0
    return-void
.end method
