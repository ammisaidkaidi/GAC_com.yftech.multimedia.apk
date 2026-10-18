.class Lcom/yftech/libradio/dialog/RadioFavorDialog$5;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
.source "RadioFavorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dialog/RadioFavorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dialog/RadioFavorDialog;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$5;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

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

    .line 391
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

    .line 392
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$5;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/RadioFavorPresenter;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$5;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$700(Lcom/yftech/libradio/dialog/RadioFavorDialog;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/libradio/presenter/RadioFavorPresenter;->getFavors(I)V

    return-void
.end method

.method public onFreqSignal(ILcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 0

    return-void
.end method

.method public onPlayPause(Z)V
    .locals 2

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayPause() isPlaying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 408
    iget-object p1, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$5;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-virtual {p1}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/RadioFavorPresenter;

    iget-object p0, p0, Lcom/yftech/libradio/dialog/RadioFavorDialog$5;->this$0:Lcom/yftech/libradio/dialog/RadioFavorDialog;

    invoke-static {p0}, Lcom/yftech/libradio/dialog/RadioFavorDialog;->access$700(Lcom/yftech/libradio/dialog/RadioFavorDialog;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/libradio/presenter/RadioFavorPresenter;->getFavors(I)V

    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 0

    return-void
.end method
