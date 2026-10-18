.class Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;
.super Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;
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

    .line 122
    iput-object p1, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-direct {p0}, Lcom/yftech/car/audio/CarSoundEffectManager$CarSoundEffectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedBandValue([F[F)V
    .locals 0

    .line 126
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CarSoundEffectManager.onChangedBandValue:values="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onChangedDTSEnable(Z)V
    .locals 1

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarSoundEffectManager.onChangedDTSEnable:enable="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onChangedDTSSoundPosition(I)V
    .locals 1

    .line 170
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarSoundEffectManager.onChangedDTSSoundPosition:position="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onChangedDTSType(I)V
    .locals 1

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarSoundEffectManager.onChangedDTSType:type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onChangedEQType(I[F[F)V
    .locals 1

    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarSoundEffectManager.onChangedEQType:type="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 133
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarSoundEffectManager.onChangedEQType:high="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    aget v0, p2, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 134
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarSoundEffectManager.onChangedEQType:middle="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    aget v0, p2, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CarSoundEffectManager.onChangedEQType:low="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v0, p2, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 137
    iget-object p3, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p3}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p3}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 138
    iget-object p3, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p3}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    new-instance v0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1$1;-><init>(Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;I[F)V

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onChangedEQType: isVisible()=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog$1;->this$0:Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;

    invoke-virtual {p0}, Lcom/yftech/libmusic/dialog/MusicSoundEffectsDialog;->isVisible()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/media/common/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
