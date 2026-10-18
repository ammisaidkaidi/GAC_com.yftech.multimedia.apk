.class Lcom/yftech/libmedia/player/PlayActivity$12;
.super Ljava/lang/Object;
.source "PlayActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmedia/player/PlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private max:I

.field private resourceId:I

.field final synthetic this$0:Lcom/yftech/libmedia/player/PlayActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 993
    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->resourceId:I

    return-void
.end method

.method private switchImageResource(I)V
    .locals 4

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    .line 1047
    iget v1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->max:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 1048
    iget v2, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->resourceId:I

    sget v3, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_off:I

    if-eq v2, v3, :cond_0

    .line 1049
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_off:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1050
    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_off:I

    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->resourceId:I

    goto :goto_0

    :cond_0
    const/high16 v2, 0x41f00000    # 30.0f

    if-ltz v1, :cond_1

    cmpg-float v1, p1, v2

    if-gez v1, :cond_1

    .line 1051
    iget v1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->resourceId:I

    sget v3, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_01:I

    if-eq v1, v3, :cond_1

    .line 1052
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_01:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1053
    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_01:I

    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->resourceId:I

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v2

    const/high16 v2, 0x42700000    # 60.0f

    if-ltz v1, :cond_2

    cmpg-float v1, p1, v2

    if-gez v1, :cond_2

    .line 1054
    iget v1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->resourceId:I

    sget v3, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_02:I

    if-eq v1, v3, :cond_2

    .line 1055
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_02:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1056
    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_02:I

    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->resourceId:I

    goto :goto_0

    :cond_2
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    .line 1057
    iget p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->resourceId:I

    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_03:I

    if-eq p1, v0, :cond_3

    .line 1058
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_03:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1059
    sget p1, Lcom/yftech/libmedia/R$mipmap;->pv_icon_volume_on_03:I

    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->resourceId:I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1002
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "volume seekBar moving by progress="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1004
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p1}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x3

    invoke-static {p1, p3, p2}, Lcom/media/common/util/AudioSettingUtil;->setStreamVolume(Landroid/content/Context;II)V

    .line 1007
    :cond_0
    invoke-direct {p0, p2}, Lcom/yftech/libmedia/player/PlayActivity$12;->switchImageResource(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string p1, "volume seekBar touch begin!!!!!"

    .line 1013
    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1016
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$700(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->max:I

    .line 1019
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$000(Lcom/yftech/libmedia/player/PlayActivity;I)V

    .line 1021
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1022
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 1030
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1035
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yftech/libmedia/player/PlayActivity$12;->switchImageResource(I)V

    .line 1037
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 1038
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$12;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-virtual {p0}, Lcom/yftech/libmedia/player/PlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/media/common/util/AudioSettingUtil;->setStreamVolume(Landroid/content/Context;II)V

    .line 1040
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "volume seekBar leave by progress="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
