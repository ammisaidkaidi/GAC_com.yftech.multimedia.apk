.class Lcom/yftech/libradio/DabDataManager$2;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "DabDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/DabDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/DabDataManager;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/DabDataManager;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/yftech/libradio/DabDataManager$2;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public IsEpgServiceId(IJZ)V
    .locals 5

    .line 164
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->IsEpgServiceId(IJZ)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , serviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , isEpg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/yftech/libradio/DabDataManager$2;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {p0}, Lcom/yftech/libradio/DabDataManager;->access$100(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 169
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v1

    int-to-long v3, p1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {v0, p4}, Lcom/yftech/libradio/bean/DabChannelInfo;->setEpg(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDabImageInfo()V
    .locals 6

    .line 139
    invoke-super {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onDabImageInfo()V

    const-string v0, "onDabImageInfo-----"

    .line 140
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lcom/yftech/libradio/DabDataManager$2;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {p0}, Lcom/yftech/libradio/DabDataManager;->access$000(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 142
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v2

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 147
    invoke-static {}, Lcom/yftech/libradio/Utils;->getDabImageInfo()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v0, v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->setImageData([B)V

    .line 150
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->access$200()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    if-nez v0, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    invoke-interface {v0, v1}, Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;->onSlideShowImageChanged([B)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onEnsembleListChange(I)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnsembleListChange(I)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnsembleListChange type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/yftech/libradio/DabDataManager$2;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {p0}, Lcom/yftech/libradio/DabDataManager;->access$400(Lcom/yftech/libradio/DabDataManager;)V

    return-void
.end method
