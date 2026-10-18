.class Lcom/yftech/libradio/DabDataManager$1;
.super Landroid/os/AsyncTask;
.source "DabDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/DabDataManager;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/DabDataManager;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/DabDataManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yftech/libradio/DabDataManager$1;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 83
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getDabEnsemble()[Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;

    move-result-object p1

    if-nez p1, :cond_0

    const-string v0, "refreshData,dabEnsembles is null ----"

    .line 85
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshData,dabEnsembles length:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 89
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-static {p1, v0, v1}, Lcom/yftech/libradio/Utils;->convertDabInfos([Lcom/yftech/car/media/radio/dab/entity/DabEnsemble;Ljava/util/List;Ljava/util/List;)V

    .line 92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string p0, "refreshData,ChannelInfoList is empty ----"

    .line 93
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-object v2

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/yftech/libradio/DabDataManager$1;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/DabDataManager;->access$000(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 97
    iget-object p1, p0, Lcom/yftech/libradio/DabDataManager$1;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/DabDataManager;->access$000(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    iget-object p1, p0, Lcom/yftech/libradio/DabDataManager$1;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/DabDataManager;->access$100(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 99
    iget-object p1, p0, Lcom/yftech/libradio/DabDataManager$1;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/DabDataManager;->access$100(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 100
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->access$200()Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;

    if-nez v0, :cond_2

    goto :goto_1

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/yftech/libradio/DabDataManager$1;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {v1}, Lcom/yftech/libradio/DabDataManager;->access$000(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;->onDataListChanged(Ljava/util/List;)V

    goto :goto_1

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/yftech/libradio/DabDataManager$1;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {p1}, Lcom/yftech/libradio/DabDataManager;->access$100(Lcom/yftech/libradio/DabDataManager;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 110
    iget-object v1, p0, Lcom/yftech/libradio/DabDataManager$1;->this$0:Lcom/yftech/libradio/DabDataManager;

    invoke-static {v1, v0}, Lcom/yftech/libradio/DabDataManager;->access$300(Lcom/yftech/libradio/DabDataManager;Lcom/yftech/libradio/bean/DabChannelInfo;)V

    goto :goto_2

    :cond_4
    return-object v2
.end method
