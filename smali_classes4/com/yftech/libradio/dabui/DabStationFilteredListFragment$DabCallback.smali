.class Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "DabStationFilteredListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DabCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$1;)V
    .locals 0

    .line 409
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;-><init>(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;)V

    return-void
.end method


# virtual methods
.method public onEnsembleListChange(I)V
    .locals 0

    .line 424
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnsembleListChange(I)V

    return-void
.end method

.method public onPlayPause(Z)V
    .locals 0

    .line 412
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayPause(Z)V

    return-void
.end method

.method public onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 0

    .line 417
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    .line 419
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;

    invoke-static {p0, p1}, Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;->access$1000(Lcom/yftech/libradio/dabui/DabStationFilteredListFragment;Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    return-void
.end method

.method public onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V
    .locals 0

    .line 430
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V

    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "onScanStatusChange--------"

    .line 432
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
