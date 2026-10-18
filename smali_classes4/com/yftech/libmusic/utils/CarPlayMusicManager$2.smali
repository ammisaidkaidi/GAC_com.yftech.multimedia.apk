.class Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;
.super Ljava/lang/Object;
.source "CarPlayMusicManager.java"

# interfaces
.implements Lcom/autochips/carplay/CarplayManager$CarplayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/utils/CarPlayMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppStateChanged(Lcom/autochips/carplay/CarplayAppState;)V
    .locals 1

    .line 508
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAppStateChanged carplayAppState:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayAppState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioInfo(IILcom/autochips/carplay/CarplayAudioInfo;)V
    .locals 1

    .line 560
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAudioInfo("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/autochips/carplay/CarplayAudioInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onCallStateChanged(Lcom/autochips/carplay/CarplayCall;)V
    .locals 2

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayCall;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 555
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayCall;->getState()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$802(Lcom/yftech/libmusic/utils/CarPlayMusicManager;Z)Z

    return-void
.end method

.method public onConnectionStateChanged(Lcom/autochips/carplay/CarplayDevice;I)V
    .locals 2

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChanged:device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 442
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p0, p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$302(Lcom/yftech/libmusic/utils/CarPlayMusicManager;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;

    return-void
.end method

.method public onDeviceBluetoothID(Ljava/lang/String;)V
    .locals 1

    .line 565
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeviceBluetoothID s:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onEnableStateChanged(II)V
    .locals 1

    .line 498
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onEnableStateChanged("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStatusChanged(Lcom/autochips/carplay/CarplayDevice;Lcom/autochips/carplay/PlaybackStatusInfo;)V
    .locals 3

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackStatusChanged device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pbInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v0, p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$302(Lcom/yftech/libmusic/utils/CarPlayMusicManager;Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayDevice;

    .line 460
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->isPlaybackStatusValid()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 461
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->getPlaybackStatus()I

    move-result p1

    if-ne v0, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 463
    :goto_0
    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$200(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 464
    invoke-interface {v2, p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;->onCarplayPlayingChanged(Z)V

    goto :goto_1

    .line 467
    :cond_1
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->getPlaybackInfo()I

    move-result p1

    and-int/2addr p1, v0

    const/4 v1, 0x4

    if-nez p1, :cond_2

    .line 468
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->getPlaybackInfo()I

    move-result p1

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 470
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$400(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 471
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$400(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    iget-object v2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object p1

    .line 472
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$400(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/autochips/carplay/CarplayManager;->getPlayingInfo(Lcom/autochips/carplay/CarplayDevice;I)Ljava/lang/String;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStatusChanged mTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mArtist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$200(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 476
    invoke-interface {v2, p1, v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;->onCarplayMusicID3Changed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 480
    :cond_3
    invoke-virtual {p2}, Lcom/autochips/carplay/PlaybackStatusInfo;->isTrackMsOffsetValid()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$400(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 481
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$400(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayManager;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$300(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Lcom/autochips/carplay/CarplayDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/autochips/carplay/CarplayManager;->getPlayingStatus(Lcom/autochips/carplay/CarplayDevice;)Lcom/autochips/carplay/CarplayPlaybackStatus;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 483
    iget-object p2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackLen()I

    move-result v0

    invoke-static {p2, v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$502(Lcom/yftech/libmusic/utils/CarPlayMusicManager;I)I

    .line 484
    iget-object p2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayPlaybackStatus;->getPlayingTrackPos()I

    move-result p1

    invoke-static {p2, p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$602(Lcom/yftech/libmusic/utils/CarPlayMusicManager;I)I

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPlaybackStatusChanged mTotalDuration:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$500(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mProgress:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$600(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$200(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 489
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$600(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;->onCarplayProgressChanged(I)V

    .line 490
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$500(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;->onCarplayTotalDurationChanged(I)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public onRequestAccessoryUI(I)V
    .locals 2

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestAccessoryUI("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 545
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$700(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    .line 548
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/yftech/libmusic/event/CarPlayUIStateEvent;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/yftech/libmusic/event/CarPlayUIStateEvent;-><init>(Z)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResourceStateChanged(Lcom/autochips/carplay/CarplayResourceState;)V
    .locals 3

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResourceStateChanged:screenVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$700(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", carplayResourceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$700(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)I

    move-result v0

    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 518
    :cond_0
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 520
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$200(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 521
    invoke-interface {v0, v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;->onResourceStateChanged(Z)V

    goto :goto_0

    .line 523
    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/yftech/libmusic/event/CarPlayUIStateEvent;

    invoke-direct {v0, v1}, Lcom/yftech/libmusic/event/CarPlayUIStateEvent;-><init>(Z)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 526
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p0, v1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$702(Lcom/yftech/libmusic/utils/CarPlayMusicManager;I)I

    goto :goto_2

    .line 527
    :cond_2
    invoke-virtual {p1}, Lcom/autochips/carplay/CarplayResourceState;->getMainScreen()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 529
    iget-object p1, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p1}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$200(Lcom/yftech/libmusic/utils/CarPlayMusicManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;

    .line 530
    invoke-interface {v1, v2}, Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;->onResourceStateChanged(Z)V

    goto :goto_1

    .line 533
    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/yftech/libmusic/event/CarPlayUIStateEvent;

    invoke-direct {v1, v2}, Lcom/yftech/libmusic/event/CarPlayUIStateEvent;-><init>(Z)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 536
    iget-object p0, p0, Lcom/yftech/libmusic/utils/CarPlayMusicManager$2;->this$0:Lcom/yftech/libmusic/utils/CarPlayMusicManager;

    invoke-static {p0, v0}, Lcom/yftech/libmusic/utils/CarPlayMusicManager;->access$702(Lcom/yftech/libmusic/utils/CarPlayMusicManager;I)I

    :cond_4
    :goto_2
    return-void
.end method

.method public onStreamStateChanged(III)V
    .locals 1

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStreamStateChanged("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
