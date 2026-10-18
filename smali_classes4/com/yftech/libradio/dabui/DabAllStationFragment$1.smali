.class Lcom/yftech/libradio/dabui/DabAllStationFragment$1;
.super Ljava/lang/Object;
.source "DabAllStationFragment.java"

# interfaces
.implements Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabAllStationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataListChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "refreshData,ChannelInfoList is empty ----"

    .line 55
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$300(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$1;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$300(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$2;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$2;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment$1;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSlideShowImageChanged([B)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 83
    iget-object v2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v2}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v2

    iget-object v4, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v4}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 85
    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v4}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 86
    invoke-virtual {v1}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {v3}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$500(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 87
    invoke-virtual {v1, p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->setImageData([B)V

    .line 88
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$300(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$3;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment$1$3;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
