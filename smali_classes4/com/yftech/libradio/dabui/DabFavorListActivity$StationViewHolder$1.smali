.class Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$1;
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

    .line 319
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

    iput-object p2, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$1;->val$this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 322
    iget-object p1, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

    iget-object p1, p1, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->this$0:Lcom/yftech/libradio/dabui/DabFavorListActivity;

    invoke-static {p1}, Lcom/yftech/libradio/dabui/DabFavorListActivity;->access$700(Lcom/yftech/libradio/dabui/DabFavorListActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder$1;->this$1:Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;->access$600(Lcom/yftech/libradio/dabui/DabFavorListActivity$StationViewHolder;)I

    move-result p0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/libradio/bean/DabChannelInfo;

    if-eqz p0, :cond_0

    .line 324
    invoke-static {}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->getInstance()Lcom/yftech/car/media/radio/dab/CarDabRadioManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getFrequency()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getEnsembleId()I

    move-result v3

    invoke-virtual {p0}, Lcom/yftech/libradio/bean/DabChannelInfo;->getServiceId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager;->removeFavored(JIJ)I

    .line 325
    sget p0, Lcom/yftech/libradio/R$string;->radio_channel_favor_dialog_remove_favor_successful:I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/media/common/util/ToastUtils;->showNormalMessage(II)V

    goto :goto_0

    :cond_0
    const-string p0, "dabChannelInfo is null ----"

    .line 327
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->w(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
