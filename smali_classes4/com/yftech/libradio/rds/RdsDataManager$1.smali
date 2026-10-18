.class Lcom/yftech/libradio/rds/RdsDataManager$1;
.super Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;
.source "RdsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/rds/RdsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/rds/RdsDataManager;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/rds/RdsDataManager;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRdsCommonStringChange(ILjava/lang/String;)V
    .locals 3

    .line 120
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsCommonStringChange(ILjava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ,value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 123
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 124
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 125
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {p0}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    .line 126
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getFreq()I

    move-result v1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 127
    invoke-virtual {v0, p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->setPs(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 132
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 133
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object p1

    .line 134
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {p0}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    .line 135
    invoke-virtual {v0}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getFreq()I

    move-result v1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 136
    invoke-virtual {v0, p2}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->setRt(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onRdsPiFreqChange(II)V
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsPiFreqChange(II)V

    return-void
.end method

.method public onRdsPtyStatusChange(I)V
    .locals 4

    .line 145
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsPtyStatusChange(I)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    if-ltz p1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {v0}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {v0}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/CarRadioManager;->getFreq()Lcom/yftech/car/media/radio/entity/DataOfRadio;

    move-result-object v0

    .line 150
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {p0}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    .line 151
    invoke-virtual {v1}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getFreq()I

    move-result v2

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/entity/DataOfRadio;->getFreq()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 152
    invoke-virtual {v1, p1}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->setPty(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRdsScanStatusChange(Lcom/yftech/car/media/radio/rds/entity/RdsInfo;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onRdsScanStatusChange(Lcom/yftech/car/media/radio/rds/entity/RdsInfo;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {v0}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getFreq()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p1, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/rds/RdsDataManager;->access$300(Lcom/yftech/libradio/rds/RdsDataManager;)I

    move-result p1

    if-nez p1, :cond_1

    .line 109
    invoke-static {}, Lcom/yftech/libradio/rds/RdsDataManager;->access$200()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {v1}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;->onRdsInfoListChanged(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 2

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/media/radio/CarRadioManager$CarRadioControlCallback;->onSeekStatusChange(III)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeekStatusChange() scanType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " operation:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/yftech/libradio/rds/RdsDataManager$1;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {p0, p2}, Lcom/yftech/libradio/rds/RdsDataManager;->access$302(Lcom/yftech/libradio/rds/RdsDataManager;I)I

    return-void
.end method
