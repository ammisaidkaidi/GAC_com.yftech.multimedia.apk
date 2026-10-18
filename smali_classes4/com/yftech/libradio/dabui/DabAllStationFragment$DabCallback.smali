.class Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "DabAllStationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/DabAllStationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DabCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;


# direct methods
.method private constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;Lcom/yftech/libradio/dabui/DabAllStationFragment$1;)V
    .locals 0

    .line 389
    invoke-direct {p0, p1}, Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;-><init>(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V

    return-void
.end method


# virtual methods
.method public onEnsembleListChange(I)V
    .locals 0

    .line 404
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEnsembleListChange(I)V

    return-void
.end method

.method public onPlayPause(Z)V
    .locals 0

    .line 392
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayPause(Z)V

    return-void
.end method

.method public onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V
    .locals 0

    .line 397
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onPlayStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabPlayInfo;)V

    .line 399
    iget-object p0, p0, Lcom/yftech/libradio/dabui/DabAllStationFragment$DabCallback;->this$0:Lcom/yftech/libradio/dabui/DabAllStationFragment;

    invoke-static {p0}, Lcom/yftech/libradio/dabui/DabAllStationFragment;->access$400(Lcom/yftech/libradio/dabui/DabAllStationFragment;)V

    return-void
.end method

.method public onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V
    .locals 0

    .line 410
    invoke-super {p0, p1, p2}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onScanStatusChange(Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;)V

    if-eqz p1, :cond_0

    .line 411
    invoke-virtual {p1}, Lcom/yftech/car/media/radio/dab/entity/DabScanStatus;->isRuning()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "onScanStatusChange --------"

    .line 412
    invoke-static {p0}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
