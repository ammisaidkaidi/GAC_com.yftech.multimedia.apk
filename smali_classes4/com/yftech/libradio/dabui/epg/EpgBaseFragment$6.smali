.class Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$6;
.super Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;
.source "EpgBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;


# direct methods
.method constructor <init>(Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$6;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    invoke-direct {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpgDataChange()V
    .locals 0

    .line 497
    invoke-super {p0}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEpgDataChange()V

    return-void
.end method

.method public onEpgDateTimeUpdateChange([IJ)V
    .locals 2

    .line 508
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEpgDateTimeUpdateChange([IJ)V

    .line 509
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 510
    invoke-virtual {p1, p2, p3}, Ljava/util/Date;->setTime(J)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "epgTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " current time: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/media/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 512
    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment$6;->this$0:Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;

    iget-object p0, p0, Lcom/yftech/libradio/dabui/epg/EpgBaseFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public onEpgProgrammeListChange(Ljava/lang/String;)V
    .locals 0

    .line 502
    invoke-super {p0, p1}, Lcom/yftech/car/media/radio/dab/CarDabRadioManager$CarDabRadioControlCallback;->onEpgProgrammeListChange(Ljava/lang/String;)V

    return-void
.end method
