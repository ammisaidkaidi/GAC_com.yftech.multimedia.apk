.class Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder$1;
.super Ljava/lang/Object;
.source "DabAllStationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;

.field final synthetic val$this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;Lcom/yftech/libradio/dabui/DabAllStationFragment;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder$1;->val$this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 380
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$000(Lcom/yftech/libradio/dabui/DabAllStationFragment;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;->access$1200(Lcom/yftech/libradio/dabui/DabAllStationFragment$StationViewHolder;)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/bean/DabChannelInfo;

    if-eqz p0, :cond_0

    .line 381
    invoke-static {}, Lcom/yftech/libradio/Utils;->isQuickClick()Z

    move-result p1

    if-nez p1, :cond_0

    .line 382
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->setFreq(JIJ)V

    :cond_0
    return-void
.end method
