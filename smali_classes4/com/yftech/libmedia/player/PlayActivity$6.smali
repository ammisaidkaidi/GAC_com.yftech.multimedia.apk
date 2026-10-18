.class Lcom/yftech/libmedia/player/PlayActivity$6;
.super Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;
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

    .line 388
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$6;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedMediaSource(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChangedMediaSource:streamType="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", packageName="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onChangedVolume(IIIZI)V
    .locals 1

    .line 392
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChangedVolume:streamType="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", curValue="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", flag="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne p5, p1, :cond_0

    return-void

    .line 398
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$6;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$700(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 399
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$6;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$700(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    int-to-float p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    int-to-float p3, p3

    div-float/2addr p1, p3

    const/4 p3, 0x0

    cmpl-float p3, p1, p3

    if-nez p3, :cond_1

    .line 404
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$6;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_off:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const/high16 p4, 0x41f00000    # 30.0f

    if-ltz p3, :cond_2

    cmpg-float p3, p1, p4

    if-gez p3, :cond_2

    .line 406
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$6;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_01:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    cmpl-float p3, p1, p4

    const/high16 p4, 0x42700000    # 60.0f

    if-ltz p3, :cond_3

    cmpg-float p3, p1, p4

    if-gez p3, :cond_3

    .line 408
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$6;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_02:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    cmpl-float p3, p1, p4

    if-ltz p3, :cond_4

    cmpg-float p1, p1, p2

    if-gez p1, :cond_4

    .line 410
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$6;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_03:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_0
    return-void
.end method
