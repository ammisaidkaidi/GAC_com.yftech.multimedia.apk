.class Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;
.super Landroid/os/AsyncTask;
.source "RdsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/rds/RdsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRdsTast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/rds/RdsDataManager;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/rds/RdsDataManager;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/rds/RdsDataManager;Lcom/yftech/libradio/rds/RdsDataManager$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;-><init>(Lcom/yftech/libradio/rds/RdsDataManager;)V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 70
    invoke-static {}, Lcom/yftech/car/media/radio/CarRadioManager;->getInstance()Lcom/yftech/car/media/radio/CarRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/CarRadioManager;->getRdsScanInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rdsinfoList size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {v0}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rdsInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {v2}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/media/radio/rds/entity/RdsInfo;->getFreq()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Lcom/yftech/libradio/rds/RdsDataManager;->access$200()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;

    if-nez v0, :cond_1

    goto :goto_1

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/yftech/libradio/rds/RdsDataManager$UpdateRdsTast;->this$0:Lcom/yftech/libradio/rds/RdsDataManager;

    invoke-static {v1}, Lcom/yftech/libradio/rds/RdsDataManager;->access$100(Lcom/yftech/libradio/rds/RdsDataManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yftech/libradio/rds/RdsDataManager$RdsDataManagerCallback;->onRdsInfoListChanged(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const-string p0, "get RdsScanInfoList data empty ----"

    .line 85
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
