.class Lcom/yftech/libradio/RadioListActivity$5;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
.source "RadioListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/RadioListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/RadioListActivity;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

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

    .line 454
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

    .line 455
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-virtual {p1}, Lcom/yftech/libradio/RadioListActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioListActivity;->access$1500(Lcom/yftech/libradio/RadioListActivity;)I

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

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayPause() isPlaying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-virtual {p1}, Lcom/yftech/libradio/RadioListActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioListActivity;->access$1500(Lcom/yftech/libradio/RadioListActivity;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getSearchList(I)V

    return-void
.end method

.method public onRdsCommonStatusChange(IZ)V
    .locals 2

    .line 522
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsCommonStatusChange(IZ)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1, p2}, Lcom/yftech/libradio/RadioListActivity;->access$1402(Lcom/yftech/libradio/RadioListActivity;Z)Z

    goto :goto_0

    .line 533
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1, p2}, Lcom/yftech/libradio/RadioListActivity;->access$1102(Lcom/yftech/libradio/RadioListActivity;Z)Z

    goto :goto_0

    .line 527
    :cond_2
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1, p2}, Lcom/yftech/libradio/RadioListActivity;->access$602(Lcom/yftech/libradio/RadioListActivity;Z)Z

    .line 535
    :goto_0
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioListActivity;->access$1600(Lcom/yftech/libradio/RadioListActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yftech/libradio/RadioListActivity$5$3;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/RadioListActivity$5$3;-><init>(Lcom/yftech/libradio/RadioListActivity$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRdsCommonStringChange(ILjava/lang/String;)V
    .locals 3

    .line 476
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsCommonStringChange(ILjava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , fre: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 480
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1, p2}, Lcom/yftech/libradio/RadioListActivity;->access$1302(Lcom/yftech/libradio/RadioListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioListActivity;->access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioListActivity;->access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 482
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioListActivity;->access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    .line 483
    invoke-virtual {p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getFreq()I

    move-result v1

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 484
    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioListActivity;->access$1300(Lcom/yftech/libradio/RadioListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->setPs(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioListActivity;->access$1600(Lcom/yftech/libradio/RadioListActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/yftech/libradio/RadioListActivity$5$1;

    invoke-direct {p2, p0}, Lcom/yftech/libradio/RadioListActivity$5$1;-><init>(Lcom/yftech/libradio/RadioListActivity$5;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onRdsPtyStatusChange(I)V
    .locals 5

    .line 499
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsPtyStatusChange(I)V

    .line 500
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,fre: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-ltz p1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioListActivity;->access$900(Lcom/yftech/libradio/RadioListActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    iget-object v2, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v2}, Lcom/yftech/libradio/RadioListActivity;->access$900(Lcom/yftech/libradio/RadioListActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/yftech/libradio/RadioListActivity;->access$1202(Lcom/yftech/libradio/RadioListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 504
    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioListActivity;->access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioListActivity;->access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/RadioListActivity;->access$800(Lcom/yftech/libradio/RadioListActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    .line 506
    invoke-virtual {v2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getFreq()I

    move-result v3

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 507
    invoke-virtual {v2, p1}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->setPty(I)V

    goto :goto_0

    .line 511
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/RadioListActivity;->access$1600(Lcom/yftech/libradio/RadioListActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/RadioListActivity$5$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/RadioListActivity$5$2;-><init>(Lcom/yftech/libradio/RadioListActivity$5;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 2

    .line 446
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

    .line 448
    iget-object p1, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-virtual {p1}, Lcom/yftech/libradio/RadioListActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;

    iget-object p0, p0, Lcom/yftech/libradio/RadioListActivity$5;->this$0:Lcom/yftech/libradio/RadioListActivity;

    invoke-static {p0}, Lcom/yftech/libradio/RadioListActivity;->access$1500(Lcom/yftech/libradio/RadioListActivity;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/libradio/presenter/RadioSearchChannelPresenter;->getSearchList(I)V

    :cond_0
    return-void
.end method
