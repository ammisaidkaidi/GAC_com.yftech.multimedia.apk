.class Lcom/yftech/libmedia/player/PlayActivity$10;
.super Lcom/yftech/car/media/video/VideoPlayer$VideoCallback;
.source "PlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Lcom/yftech/car/media/video/VideoPlayer$VideoCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClick(Z)V
    .locals 3

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleClick:isDoubleClick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 642
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1400(Lcom/yftech/libmedia/player/PlayActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 647
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1000(Lcom/yftech/libmedia/player/PlayActivity;)Z

    move-result p1

    const/16 v0, 0xa

    if-nez p1, :cond_2

    .line 649
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/yftech/libmedia/player/PlayActivity;->access$000(Lcom/yftech/libmedia/player/PlayActivity;I)V

    .line 651
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 652
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    :cond_1
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 658
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/yftech/libmedia/player/PlayActivity;->access$000(Lcom/yftech/libmedia/player/PlayActivity;I)V

    .line 660
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 661
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPlayChange(Lcom/yftech/car/media/data/entity/MediaFile;)V
    .locals 2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayChange:path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1100(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/media/common/ui/widget/MyActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/MyActionBar;->setTitleText(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1200(Lcom/yftech/libmedia/player/PlayActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_VIDEO_VIEWED_LAST_FOR_USB_1"

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {v0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_VIDEO_VIEWED_LAST_FOR_USB_2"

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 574
    :goto_0
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1300(Lcom/yftech/libmedia/player/PlayActivity;Z)V

    return-void
.end method

.method public onPlaySequenceCompletion()V
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1402(Lcom/yftech/libmedia/player/PlayActivity;Z)Z

    .line 626
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/PlayActivity;->access$000(Lcom/yftech/libmedia/player/PlayActivity;I)V

    .line 632
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public onPlayerError(II)Z
    .locals 2

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerError:what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    return v0

    .line 686
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/video/VideoPlayer;->getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 688
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$2400(Lcom/yftech/libmedia/player/PlayActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 690
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    sget p2, Lcom/yftech/libmedia/R$string;->video_play_error_tips:I

    invoke-virtual {p1, p2}, Lcom/yftech/libmedia/player/PlayActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/ui/widget/TipsDialog;->newInstance(Ljava/lang/String;)Lcom/media/common/ui/widget/TipsDialog;

    move-result-object p1

    .line 691
    new-instance p2, Lcom/yftech/libmedia/player/PlayActivity$10$1;

    invoke-direct {p2, p0}, Lcom/yftech/libmedia/player/PlayActivity$10$1;-><init>(Lcom/yftech/libmedia/player/PlayActivity$10;)V

    invoke-virtual {p1, p2}, Lcom/media/common/ui/widget/TipsDialog;->setOnConfirmClickListener(Lcom/media/common/ui/widget/TipsDialog$OnConfirmClickListener;)V

    .line 703
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p2}, Lcom/yftech/libmedia/player/PlayActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    const-string v1, "onPlayerError"

    invoke-virtual {p1, p2, v1}, Lcom/media/common/ui/widget/TipsDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 706
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1300(Lcom/yftech/libmedia/player/PlayActivity;Z)V

    goto :goto_0

    .line 710
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 711
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    :cond_2
    :goto_0
    return v0
.end method

.method public onPlayingChange(Z)V
    .locals 2

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayingChange:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$2100(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 613
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$2200(Lcom/yftech/libmedia/player/PlayActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$2302(Lcom/yftech/libmedia/player/PlayActivity;Z)Z

    .line 616
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$2202(Lcom/yftech/libmedia/player/PlayActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onPrepared(I)V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1402(Lcom/yftech/libmedia/player/PlayActivity;Z)Z

    .line 583
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1500(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 585
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0, p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1602(Lcom/yftech/libmedia/player/PlayActivity;I)I

    .line 587
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1700(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/TextView;

    move-result-object p0

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/media/common/util/DateUtil;->getTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1800(Lcom/yftech/libmedia/player/PlayActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 602
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1600(Lcom/yftech/libmedia/player/PlayActivity;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$2000(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$10;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1600(Lcom/yftech/libmedia/player/PlayActivity;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
