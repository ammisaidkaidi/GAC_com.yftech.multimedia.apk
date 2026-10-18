.class Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
.source "RadioSearchChannelDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0

    return-void
.end method

.method public onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    return-void
.end method

.method public onFreqChanage(ILcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFreqChanage() newChannel:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->access$500(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getSearchList(I)V

    return-void
.end method

.method public onFreqSignal(ILcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 0

    return-void
.end method

.method public onPlayPause(Z)V
    .locals 2

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayPause() isPlaying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 385
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->access$500(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getSearchList(I)V

    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 2

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeekStatusChange() scanType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog$4;->this$0:Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;->access$500(Lcom/yftech/libradio/dialog/RadioSearchChannelDialog;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getSearchList(I)V

    :cond_0
    return-void
.end method
