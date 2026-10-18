.class Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "DabFavorListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabFavorListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DabCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;Lcom/yftech/libradio/dabui/DabFavorListActivity$1;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;)V

    return-void
.end method


# virtual methods
.method public onDabImageInfo()V
    .locals 2

    .line 401
    invoke-super {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onDabImageInfo()V

    .line 402
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1300(Lcom/yftech/libradio/dabui/DabFavorListActivity;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1300(Lcom/yftech/libradio/dabui/DabFavorListActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1300(Lcom/yftech/libradio/dabui/DabFavorListActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 404
    invoke-static {}, Lcom/yftech/libradio/Utils;->getDabImageInfo()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v0, v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->setImageData([B)V

    .line 407
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1800(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback$2;

    invoke-direct {v1, p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback$2;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onEnsembleListChange(I)V
    .locals 0

    .line 389
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnsembleListChange(I)V

    .line 390
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/presenter/DabFavorPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/presenter/DabFavorPresenter;->getFavors()V

    return-void
.end method

.method public onFavorChange(I)V
    .locals 0

    .line 395
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onFavorChange(I)V

    .line 396
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-virtual {p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->getPresenter()Lcom/yftech/libmvpmodule/mvp/BaseMvpPresenter;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/presenter/DabFavorPresenter;

    invoke-virtual {p0}, Lcom/yftech/libradio/presenter/DabFavorPresenter;->getFavors()V

    return-void
.end method

.method public onPlayPause(Z)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayPause(Z)V

    return-void
.end method

.method public onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 6

    .line 362
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    .line 363
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1600(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    .line 364
    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1600(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    .line 365
    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1600(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    .line 366
    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1600(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayStatusChange isPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v0, p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1602(Lcom/yftech/libradio/dabui/DabFavorListActivity;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    const/4 v0, 0x0

    .line 371
    :goto_0
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 373
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v2

    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 374
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {p1, v0}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1302(Lcom/yftech/libradio/dabui/DabFavorListActivity;I)I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$1800(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback$1;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity$DabCallback;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
