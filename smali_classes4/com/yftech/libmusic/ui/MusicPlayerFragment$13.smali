.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;
.super Ljava/lang/Object;
.source "MusicPlayerFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libmusic/ui/MusicPlayerFragment;->initView(Landroid/view/View;)V
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

    .line 1088
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    if-eqz p3, :cond_3

    const/4 p3, 0x2

    .line 1093
    new-array p3, p3, [I

    .line 1094
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->getLocationInWindow([I)V

    .line 1095
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    const/4 v1, 0x0

    .line 1096
    aget p3, p3, v1

    .line 1097
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v2

    .line 1098
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v3

    .line 1100
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result p1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    mul-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float v3, v0

    div-float/2addr p1, v3

    int-to-float p3, p3

    add-float/2addr p1, p3

    int-to-float p3, v2

    add-float/2addr p1, p3

    .line 1102
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1104
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/FrameLayout;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1105
    iget-object p3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1106
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2700(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit16 p1, p1, -0x437

    .line 1107
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x78

    add-int/lit16 p1, p1, -0x8c

    .line 1109
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1111
    :goto_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1115
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p2, p2

    invoke-static {p2, p3, v1}, Lcom/media/common/util/DateUtil;->getMusicTime(JZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2900(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1118
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2900(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long p1, v0

    invoke-static {p1, p2, v1}, Lcom/media/common/util/DateUtil;->getMusicTime(JZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1125
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1126
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    :cond_0
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$002(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Z)Z

    .line 1131
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1132
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1134
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    .line 1135
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1137
    :cond_2
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1138
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1148
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$002(Lcom/yftech/libmusic/ui/MusicPlayerFragment;Z)Z

    .line 1151
    invoke-static {}, Lcom/yftech/car/media/music/CarMusicManager;->getInstance()Lcom/yftech/car/media/music/CarMusicManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/yftech/car/media/music/CarMusicManager;->setPlayProgress(I)V

    .line 1153
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1154
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1157
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$13;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$800(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
