.class Lcom/yftech/libradio/model/DabModel$3;
.super Ljava/lang/Object;
.source "DabModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/model/DabModel;->getFavors(Lcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/model/DabModel;

.field final synthetic val$listener:Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/model/DabModel;Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/yftech/libradio/model/DabModel$3;->this$0:Lcom/yftech/libradio/model/DabModel;

    iput-object p2, p0, Lcom/yftech/libradio/model/DabModel$3;->val$listener:Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFavors,ThreadId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getFavoredList()[Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 86
    invoke-static {v0, v1, v2}, Lcom/yftech/libradio/Utils;->convertDabInfos([Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;Ljava/util/List;Ljava/util/List;)V

    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 91
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getFavors,freq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " size:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/libradio/DabDataManager;->getDabChannelInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 94
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 95
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 96
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 98
    invoke-virtual {v5}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v6

    invoke-virtual {v3}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 99
    invoke-virtual {v5}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 100
    invoke-virtual {v5}, Lcom/yftech/libradio/bean/DabChannelInfo;->getImageData()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/libradio/bean/DabChannelInfo;->setImageData([B)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "getFavors,searchList is empty"

    .line 119
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 123
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 127
    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 131
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFavors,results size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/yftech/libradio/model/DabModel$3;->val$listener:Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;

    invoke-interface {p0, v2, v1}, Lcom/yftech/libradio/model/interfaces/IDabModel$OnDabFavorListLoadListener;->onComplete(ILjava/util/List;)V

    return-void
.end method
