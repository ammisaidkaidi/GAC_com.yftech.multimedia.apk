.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;
.super Ljava/lang/Object;
.source "VideoPlayerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWarnMax:I

.field private max:I

.field private resourceId:I

.field final synthetic this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V
    .locals 0

    .line 1664
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1667
    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->resourceId:I

    return-void
.end method

.method private switchImageResource(I)V
    .locals 4

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 1735
    iget v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->max:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 1737
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1738
    sget p1, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_off:I

    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->resourceId:I

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41f00000    # 30.0f

    if-lez v1, :cond_1

    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 1739
    iget v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->resourceId:I

    sget v3, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_01:I

    if-eq v1, v3, :cond_1

    .line 1740
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_01:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1741
    sget p1, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_01:I

    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->resourceId:I

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v2

    const/high16 v2, 0x42700000    # 60.0f

    if-ltz v1, :cond_2

    cmpg-float v1, p1, v2

    if-gez v1, :cond_2

    .line 1742
    iget v1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->resourceId:I

    sget v3, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_02:I

    if-eq v1, v3, :cond_2

    .line 1743
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_02:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1744
    sget p1, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_02:I

    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->resourceId:I

    goto :goto_0

    :cond_2
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_3

    .line 1745
    iget p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->resourceId:I

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_03:I

    if-eq p1, v0, :cond_3

    .line 1746
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_03:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1747
    sget p1, Lcom/yftech/libmedia/R$drawable;->imgvideo_icon_volume_on_03:I

    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->resourceId:I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 1676
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$4300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)I

    move-result p1

    iget p3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->mWarnMax:I

    if-gt p1, p3, :cond_0

    iget p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->mWarnMax:I

    if-le p2, p1, :cond_0

    .line 1677
    iget p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->mWarnMax:I

    move p2, p1

    .line 1679
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "volume seekBar moving by progress="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1681
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x3

    invoke-static {p1, p3, p2}, Lcom/media/common/util/AudioSettingUtil;->setStreamVolume(Landroid/content/Context;II)V

    .line 1684
    :cond_1
    invoke-direct {p0, p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->switchImageResource(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 1689
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$4302(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)I

    const-string p1, "volume seekBar touch begin!!!!!"

    .line 1690
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1693
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->max:I

    .line 1694
    iget p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->max:I

    int-to-double v0, p1

    const-wide v2, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v0, v2

    double-to-int p1, v0

    iput p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->mWarnMax:I

    .line 1696
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$000(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)V

    .line 1698
    iget-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1699
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    .line 1706
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Z

    move-result v0

    const-wide/16 v1, 0x1388

    if-nez v0, :cond_1

    .line 1708
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1714
    :cond_1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1715
    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1700(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$4300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)I

    move-result v3

    iget v4, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->mWarnMax:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->mWarnMax:I

    if-le v0, v3, :cond_2

    .line 1716
    iget v0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->mWarnMax:I

    .line 1717
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume seekBar leave by progress2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1719
    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1702(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;I)I

    .line 1720
    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1721
    iget-object v3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$1900(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1724
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$14;->switchImageResource(I)V

    .line 1726
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1, v0}, Lcom/media/common/util/AudioSettingUtil;->setStreamVolume(Landroid/content/Context;II)V

    .line 1728
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "volume seekBar leave by progress="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
