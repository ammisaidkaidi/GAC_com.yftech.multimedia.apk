.class Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$2;
.super Ljava/lang/Object;
.source "DabFavorListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;-><init>(Lcom/yftech/libradio/dabui/DabFavorListActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

.field final synthetic val$this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;Lcom/yftech/libradio/dabui/DabFavorListActivity;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$2;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$2;->val$this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 334
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$2;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$2;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$600(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/bean/DabChannelInfo;

    if-eqz p0, :cond_1

    .line 335
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-nez p1, :cond_1

    .line 336
    invoke-static {}, Lcom/yftech/libradio/DabDataManager;->getInstance()Lcom/yftech/libradio/DabDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/libradio/DabDataManager;->getDabChannelInfoList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 337
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/libradio/bean/DabChannelInfo;

    .line 339
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 341
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v5

    invoke-virtual {v0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setFreq(JIJ)V

    goto :goto_0

    :cond_1
    const-string p0, "dabChannelInfo is null ----"

    .line 347
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
