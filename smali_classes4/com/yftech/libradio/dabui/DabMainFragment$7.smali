.class Lcom/yftech/libradio/dabui/DabMainFragment$7;
.super Ljava/lang/Object;
.source "DabMainFragment.java"

# interfaces
.implements Lcom/yftech/libradio/DabDataManager$DabDataManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabMainFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabMainFragment;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataListChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/libradio/bean/DabChannelInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DabMainFragment->onDataListChanged"

    .line 900
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 901
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabMainFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1000(Lcom/yftech/libradio/dabui/DabMainFragment;Ljava/util/List;Z)V

    return-void
.end method

.method public onSlideShowImageChanged([B)V
    .locals 7

    const-string v0, "DabMainFragment->onSlideShowImageChanged"

    .line 906
    invoke-static {v0}, Lcom/media/common/util/LogUtil;->i(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 910
    :cond_0
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getPlayInfo()Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;

    move-result-object v0

    .line 911
    iget-object v1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {v1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$500(Lcom/yftech/libradio/dabui/DabMainFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/libradio/bean/DabChannelInfo;

    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getFrequency()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 914
    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getServiceId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 915
    invoke-virtual {v2}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    invoke-virtual {v0}, Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;->getEnsembleId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 916
    invoke-virtual {v2, p1}, Lcom/yftech/libradio/bean/DabChannelInfo;->setImageData([B)V

    .line 917
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabMainFragment$7;->this$0:Lcom/yftech/libradio/dabui/DabMainFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabMainFragment;->access$1700(Lcom/yftech/libradio/dabui/DabMainFragment;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/libradio/dabui/DabMainFragment$7$1;

    invoke-direct {v0, p0}, Lcom/yftech/libradio/dabui/DabMainFragment$7$1;-><init>(Lcom/yftech/libradio/dabui/DabMainFragment$7;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
