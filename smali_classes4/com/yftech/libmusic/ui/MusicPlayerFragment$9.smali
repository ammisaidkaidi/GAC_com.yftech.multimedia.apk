.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;
.super Ljava/lang/Object;
.source "MusicPlayerFragment.java"

# interfaces
.implements Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;


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

    .line 765
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMusicDurationChanged(I)V
    .locals 2

    const-string v0, "MUSIC_SOURCE_OF_CARLIFE"

    .line 816
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 821
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 822
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 829
    :cond_1
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 830
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onMusicInformationChanged(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;)V
    .locals 5

    const-string v0, "MUSIC_SOURCE_OF_CARLIFE"

    .line 793
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    .line 800
    iget-object v0, p1, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 801
    :goto_1
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_3

    const/high16 v3, 0x42100000    # 36.0f

    goto :goto_2

    :cond_3
    const/high16 v3, 0x42600000    # 56.0f

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 804
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/yftech/libmusic/R$color;->colorB3FFFFFF:I

    :goto_3
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    goto :goto_3

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 805
    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_5

    const/16 v1, 0x4b

    .line 806
    :cond_5
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 807
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    .line 808
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    sget v3, Lcom/yftech/libmusic/R$string;->no_content_play:I

    invoke-virtual {v2, v3}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    iget-object v2, p1, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->title:Ljava/lang/String;

    :goto_5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    sget p1, Lcom/yftech/libmusic/R$string;->select_music_play_phone:I

    invoke-virtual {p0, p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_7
    iget-object p0, p1, Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;->artist:Ljava/lang/String;

    :goto_6
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public onMusicPlayStatusChanged(I)V
    .locals 2

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMusicPlayStatusChanged:status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "MUSIC_SOURCE_OF_CARLIFE"

    .line 777
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 783
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    if-ne p1, v1, :cond_1

    sget v0, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 787
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, v1}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onMusicProgressChanged(I)V
    .locals 3

    const-string v0, "MUSIC_SOURCE_OF_CARLIFE"

    .line 842
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$9;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method
