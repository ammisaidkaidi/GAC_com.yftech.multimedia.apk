.class Lcom/yftech/libradio/model/RadioModel$3;
.super Ljava/lang/Object;
.source "RadioModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/model/RadioModel;->getFavors(ILcom/yftech/libmvpmodule/BasePresenter;Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/model/RadioModel;

.field final synthetic val$band:I

.field final synthetic val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/model/RadioModel;ILcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/yftech/libradio/model/RadioModel$3;->this$0:Lcom/yftech/libradio/model/RadioModel;

    iput p2, p0, Lcom/yftech/libradio/model/RadioModel$3;->val$band:I

    iput-object p3, p0, Lcom/yftech/libradio/model/RadioModel$3;->val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThreadId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/libradio/model/RadioModel$3;->val$band:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFavors(I)[Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 122
    array-length v3, v0

    if-lez v3, :cond_1

    .line 123
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v3

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "band"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/yftech/libradio/model/RadioModel$3;->val$band:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " freq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    move v4, v1

    .line 125
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 126
    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v5

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getType()I

    move-result v6

    if-ne v5, v6, :cond_0

    aget-object v5, v0, v4

    .line 127
    invoke-virtual {v5}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v5

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v6

    if-ne v5, v6, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "searchList is empty"

    .line 133
    invoke-static {v3}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 137
    :cond_2
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    .line 139
    array-length v4, v0

    :goto_2
    if-ge v1, v4, :cond_4

    aget-object v5, v0, v1

    .line 141
    iget v6, v5, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    if-gtz v6, :cond_3

    goto :goto_3

    .line 144
    :cond_3
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v6

    iget v7, p0, Lcom/yftech/libradio/model/RadioModel$3;->val$band:I

    iget v8, v5, Lcom/yftech/car/media/radio/entity/DataOfRadio;->Freq:I

    invoke-virtual {v6, v7, v8}, Lcom/yftech/car/media/radio/CarRadioManager;->isFreqValid(II)Z

    move-result v6

    .line 146
    new-instance v7, Lcom/yftech/libradio/bean/RadioChannelInfo;

    invoke-direct {v7, v5}, Lcom/yftech/libradio/bean/RadioChannelInfo;-><init>(Lcom/yftech/car/media/radio/entity/DataOfRadio;)V

    .line 147
    iput-boolean v6, v7, Lcom/yftech/libradio/bean/RadioChannelInfo;->isValid:Z

    .line 149
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 152
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "results size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/yftech/libradio/model/RadioModel$3;->val$listener:Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;

    invoke-interface {p0, v2, v3}, Lcom/yftech/libradio/model/interfaces/IRadioModel$OnRadioFavorListLoadListener;->onComplete(ILjava/util/List;)V

    return-void
.end method
