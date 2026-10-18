.class Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;
.super Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;
.source "MusicSoundEffectsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-direct {p0}, Lcom/media/common/ui/widget/SeekBarView$OnSeekBarCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(I)V
    .locals 4

    .line 703
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$600(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$1000(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sound Effect Low Value-->EQType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$300(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 710
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$302(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;Z)Z

    .line 711
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$202(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;I)I

    .line 713
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$400(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Lcom/media/common/ui/widget/FlowRadioGroup;

    move-result-object v0

    sget v2, Lcom/yftech/libmusic/R$id;->rb_eq_mode_6:I

    invoke-virtual {v0, v2}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$600(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)[F

    move-result-object v0

    int-to-float p1, p1

    iget-object v2, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v2}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$1100(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)F

    move-result v2

    mul-float/2addr v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 717
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    iget-object v1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$600(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$002(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;[F)[F

    .line 718
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$1100(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)F

    move-result v0

    mul-float/2addr p1, v0

    div-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 720
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/SharedPrefsUtil;->getInstance(Landroid/content/Context;)Lcom/media/common/util/SharedPrefsUtil;

    move-result-object v0

    const-string v1, "TAG_SOUND_EFFECT_LOW_VALUE"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/media/common/util/SharedPrefsUtil;->save(Ljava/lang/String;Ljava/lang/Object;)V

    .line 723
    iget-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$600(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/libmusic/presenter/MusicSoundEffectsPresenter;->setBandValue([F)V

    :cond_1
    return-void
.end method

.method public onProgress(I)V
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$200(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 689
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$302(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;Z)Z

    .line 690
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0, v1}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$202(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;I)I

    .line 692
    iget-object v0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {v0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$400(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Lcom/media/common/ui/widget/FlowRadioGroup;

    move-result-object v0

    sget v1, Lcom/yftech/libmusic/R$id;->rb_eq_mode_6:I

    invoke-virtual {v0, v1}, Lcom/media/common/ui/widget/FlowRadioGroup;->check(I)V

    .line 695
    :cond_0
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-static {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->access$1000(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStarted()V
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$7;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/media/common/util/AudioSettingUtil;->playSystemClickSoundEffect(Landroid/content/Context;)V

    return-void
.end method
