.class Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;
.super Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;
.source "VideoPlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarAudioManager$CarAudioCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedMediaSource(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 924
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
    .locals 4

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangedVolume:streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p5, 0x3

    if-eq p1, p5, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    .line 893
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 894
    iget-object p2, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p2}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2400(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    const-string p4, "%d%%"

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p5, v0

    invoke-static {p3, p4, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_off:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 903
    :cond_1
    iget-object p4, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 904
    iget-object p4, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p4}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2300(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    int-to-float p2, p2

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p2, p4

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 909
    iget-object p3, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p3}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2400(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d%%"

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p5, v0

    invoke-static {v1, v2, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmpl-float p1, p2, p1

    if-nez p1, :cond_2

    .line 912
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_off:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/high16 p3, 0x41f00000    # 30.0f

    if-lez p1, :cond_3

    cmpg-float p1, p2, p3

    if-gez p1, :cond_3

    .line 914
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_01:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    cmpl-float p1, p2, p3

    const/high16 p3, 0x42700000    # 60.0f

    if-ltz p1, :cond_4

    cmpg-float p1, p2, p3

    if-gez p1, :cond_4

    .line 916
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_02:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    cmpl-float p1, p2, p3

    if-ltz p1, :cond_5

    cmpg-float p1, p2, p4

    if-gez p1, :cond_5

    .line 918
    iget-object p0, p0, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment$8;->this$0:Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;->access$2500(Lcom/yftech/libmedia/player/ui/VideoPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_03:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_0
    return-void
.end method
