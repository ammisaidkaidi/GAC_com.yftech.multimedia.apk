.class Lcom/yftech/libmedia/player/PlayActivity$11;
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
.field private isPlaying:Z

.field final synthetic this$0:Lcom/yftech/libmedia/player/PlayActivity;

.field private timeStart:I


# direct methods
.method constructor <init>(Lcom/yftech/libmedia/player/PlayActivity;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 837
    iput-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->isPlaying:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 9

    if-nez p3, :cond_0

    return-void

    .line 846
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$2000(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float v0, p2, p3

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 848
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1600(Lcom/yftech/libmedia/player/PlayActivity;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    div-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video seekBar moving by positionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 856
    new-array v0, v0, [I

    .line 857
    iget-object v3, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v3}, Lcom/yftech/libmedia/player/PlayActivity;->access$2000(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->getLocationInWindow([I)V

    const/4 v3, 0x0

    .line 858
    aget v0, v0, v3

    .line 859
    iget-object v4, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v4}, Lcom/yftech/libmedia/player/PlayActivity;->access$2000(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getWidth()I

    move-result v4

    .line 860
    iget-object v5, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v5}, Lcom/yftech/libmedia/player/PlayActivity;->access$2000(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, v4

    sub-float/2addr v6, v5

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 864
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\nleft:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\nviewWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\nactualWidth:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\npadding:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/DebugLog;->e(Ljava/lang/String;)V

    mul-float/2addr v5, p2

    div-float/2addr v5, p3

    int-to-float p2, v0

    add-float/2addr v5, p2

    add-float/2addr v5, v6

    .line 869
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 872
    iget-object p3, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p3}, Lcom/yftech/libmedia/player/PlayActivity;->access$2500(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    add-int/lit8 p2, p2, -0x6a

    .line 873
    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 874
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$2500(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 876
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$2500(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    .line 877
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$2500(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 879
    :cond_1
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$2600(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getTime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->timeStart:I

    const/16 p3, 0x8

    if-le p1, p2, :cond_2

    .line 881
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$2700(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 882
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$2800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 884
    :cond_2
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$2700(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 885
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$2800(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 889
    :goto_0
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 891
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/media/video/VideoPlayer;->getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 893
    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 895
    iget-object p2, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p2}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p2

    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$100(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayProgress(ILandroid/widget/ImageView;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 938
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1802(Lcom/yftech/libmedia/player/PlayActivity;Z)Z

    .line 940
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 941
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/video/VideoPlayer;->isPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->isPlaying:Z

    .line 942
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    .line 945
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$2000(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    .line 946
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$2000(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 947
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1600(Lcom/yftech/libmedia/player/PlayActivity;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->timeStart:I

    .line 949
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "video seekBar touch begin in time of :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->timeStart:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 952
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$000(Lcom/yftech/libmedia/player/PlayActivity;I)V

    .line 954
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 955
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 962
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$2000(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    .line 963
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 964
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$1600(Lcom/yftech/libmedia/player/PlayActivity;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "video seekBar leave by positionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/libmedia/player/PlayActivity;->access$1802(Lcom/yftech/libmedia/player/PlayActivity;Z)Z

    .line 970
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {v0}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayProgress(I)V

    .line 974
    iget-boolean p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->isPlaying:Z

    if-eqz p1, :cond_0

    .line 975
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$300(Lcom/yftech/libmedia/player/PlayActivity;)Lcom/yftech/car/media/video/VideoPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/video/VideoPlayer;->setPlayState(I)Z

    .line 978
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$2500(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 979
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$2500(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 982
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 983
    iget-object p1, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p1}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 985
    :cond_2
    iget-object p0, p0, Lcom/yftech/libmedia/player/PlayActivity$11;->this$0:Lcom/yftech/libmedia/player/PlayActivity;

    invoke-static {p0}, Lcom/yftech/libmedia/player/PlayActivity;->access$900(Lcom/yftech/libmedia/player/PlayActivity;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
