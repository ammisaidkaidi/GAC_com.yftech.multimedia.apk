.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;
.super Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;
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

    .line 639
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Lcom/yftech/car/bluetooth/callback/CarBluetoothMusicCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothA2dpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 642
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onBluetoothA2dpConnectStateChanged:state:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onBluetoothAvrcpConnectStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 647
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onBluetoothAvrcpConnectStateChanged:state:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onBluetoothMediaExit()V
    .locals 0

    const-string p0, "onBluetoothMediaExit"

    .line 759
    invoke-static {p0}, Lcom/media/common/util/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onBluetoothMediaPlaybackStateChanged(ZII)V
    .locals 4

    .line 654
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmusic/MusicMainActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 656
    iget-boolean v0, v0, Lcom/yftech/libmusic/MusicMainActivity;->isDisplaying:Z

    goto :goto_0

    :cond_0
    move v0, v1

    .line 659
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBluetoothMediaPlaybackStateChanged:isDisplaying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPlaying="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", music_source="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", songLen="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", songPos="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-gez p2, :cond_1

    if-gtz p3, :cond_1

    if-nez p1, :cond_1

    .line 669
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 p2, 0x320

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 672
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1700(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 679
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 680
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez p1, :cond_2

    sget v1, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-gez p2, :cond_3

    move p2, v2

    move p3, p2

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    div-int/lit16 v1, p2, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 688
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p3

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object p2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 692
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p0

    div-int/lit16 p3, p3, 0x3e8

    invoke-virtual {p0, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 695
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p2, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {p2, p1}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {p0, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onBluetoothMediaRepeatModeChanged(I)V
    .locals 1

    .line 753
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBluetoothMediaRepeatModeChanged:repeatMode:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onBluetoothMediaTrackInfoChanged(Landroid/media/MediaMetadata;)V
    .locals 6

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothMediaTrackInfoChanged:title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "MUSIC_SOURCE_OF_BLUETOOTH"

    .line 707
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 712
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getBluetoothMusicInfo()Landroid/media/MediaMetadata;

    move-result-object v0

    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-static {}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getInstance()Lcom/yftech/car/bluetooth/CarBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/bluetooth/CarBluetoothManager;->getBluetoothMusicInfo()Landroid/media/MediaMetadata;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", artist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 716
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "titleAct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", artistAct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 721
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 722
    :goto_1
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz p1, :cond_3

    const/high16 v4, 0x42100000    # 36.0f

    goto :goto_2

    :cond_3
    const/high16 v4, 0x42600000    # 56.0f

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 724
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz p1, :cond_4

    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v4}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1900(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;

    move-result-object v4

    sget v5, Lcom/yftech/libmusic/R$color;->colorB3FFFFFF:I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v4}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;

    move-result-object v4

    sget v5, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    goto :goto_3

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 726
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_5

    const/16 v4, 0x4b

    goto :goto_5

    :cond_5
    move v4, v2

    .line 727
    :goto_5
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 728
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->requestLayout()V

    .line 730
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    sget v4, Lcom/yftech/libmusic/R$string;->no_content_play:I

    invoke-virtual {v0, v4}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    sget v3, Lcom/yftech/libmusic/R$string;->select_play_on_bt:I

    invoke-virtual {v1, v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 735
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 736
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 738
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x4

    if-nez p1, :cond_8

    move v3, v2

    goto :goto_6

    :cond_8
    move v3, v1

    :goto_6
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez p1, :cond_9

    move v3, v2

    goto :goto_7

    :cond_9
    move v3, v1

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-nez p1, :cond_a

    move v1, v2

    :cond_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 744
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/yftech/libmusic/MusicMainActivity;

    if-eqz p1, :cond_b

    .line 745
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$8;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/yftech/libmusic/MusicMainActivity;

    .line 746
    sget p1, Lcom/yftech/libmusic/R$mipmap;->music_main_pic_cover:I

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/MusicMainActivity;->setAlbumCover(I)V

    :cond_b
    return-void
.end method
