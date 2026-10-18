.class Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;
.super Ljava/lang/Object;
.source "MusicPlayerFragment.java"

# interfaces
.implements Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;


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

    .line 853
    iput-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarplayConnectChanged(I)V
    .locals 0

    return-void
.end method

.method public onCarplayMusicID3Changed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarplayMusicID3Changed:title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "MUSIC_SOURCE_OF_CARPLAY"

    .line 881
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1100(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 885
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 886
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 887
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 896
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    .line 898
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v2, :cond_6

    const/high16 v1, 0x42100000    # 36.0f

    goto :goto_3

    :cond_6
    const/high16 v1, 0x42600000    # 56.0f

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 899
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/yftech/libmusic/R$color;->colorB3FFFFFF:I

    :goto_4
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$2400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/app/Activity;

    move-result-object v1

    sget v3, Lcom/yftech/libmusic/R$color;->colorFFFFFF:I

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 900
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_8

    const/16 v4, 0x4b

    .line 901
    :cond_8
    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 902
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    .line 903
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    sget v1, Lcom/yftech/libmusic/R$string;->no_content_play:I

    invoke-virtual {p1, v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    iget-object p1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz v2, :cond_a

    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    sget p2, Lcom/yftech/libmusic/R$string;->select_music_play_phone:I

    invoke-virtual {p0, p2}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_a
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public onCarplayPlayingChanged(Z)V
    .locals 2

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarplayPlayingChanged:isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "MUSIC_SOURCE_OF_CARPLAY"

    .line 865
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$400(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/ImageView;

    move-result-object p0

    if-nez p1, :cond_1

    sget v0, Lcom/yftech/libmusic/R$drawable;->music_main_icon_pause:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/yftech/libmusic/R$drawable;->music_main_icon_playing:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 873
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;

    invoke-direct {v0, p1}, Lcom/yftech/libmusic/event/MusicPlayStatusEvent;-><init>(Z)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onCarplayProgressChanged(I)V
    .locals 3

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarplayProgressChanged:progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v0, "MUSIC_SOURCE_OF_CARPLAY"

    .line 927
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$000(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 939
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p0

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public onCarplayTotalDurationChanged(I)V
    .locals 3

    const-string v0, "MUSIC_SOURCE_OF_CARPLAY"

    .line 911
    iget-object v1, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v1}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$1200(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$300(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/media/common/util/DateUtil;->getMusicTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-static {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->access$500(Lcom/yftech/libmusic/ui/MusicPlayerFragment;)Landroid/widget/SeekBar;

    move-result-object p0

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_1
    return-void
.end method

.method public onResourceStateChanged(Z)V
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {v0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;

    .line 951
    iget-boolean v0, v0, Lcom/yftech/libmvpmodule/mvp/BaseMvpActivity;->isDisplaying:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 961
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->onResume()V

    goto :goto_1

    .line 964
    :cond_2
    iget-object p0, p0, Lcom/yftech/libmusic/ui/MusicPlayerFragment$10;->this$0:Lcom/yftech/libmusic/ui/MusicPlayerFragment;

    invoke-virtual {p0}, Lcom/yftech/libmusic/ui/MusicPlayerFragment;->onPause()V

    :goto_1
    return-void
.end method
