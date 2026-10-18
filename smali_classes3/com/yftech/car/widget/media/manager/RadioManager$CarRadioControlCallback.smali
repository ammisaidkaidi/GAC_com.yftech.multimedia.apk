.class public abstract Lcom/yftech/car/widget/media/manager/RadioManager$CarRadioControlCallback;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Lcom/yftech/car/widget/media/manager/RadioManager$OnRadioControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarRadioControlCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0

    return-void
.end method

.method public onFavorChange(ILcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    return-void
.end method

.method public onFreqChanage(ILcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    return-void
.end method

.method public onFreqChange(Lcom/yftech/car/media/radio/entity/DataOfRadio;Lcom/yftech/car/media/radio/entity/DataOfRadio;)V
    .locals 0

    return-void
.end method

.method public onPlayPause(Z)V
    .locals 0

    return-void
.end method

.method public onPlaySignalUpdate(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 0

    return-void
.end method

.method public onRadioMute(Z)V
    .locals 0

    return-void
.end method

.method public onRdsCommonStatusChange(IZ)V
    .locals 0

    return-void
.end method

.method public onRdsCommonStringChange(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRdsPiFreqChange(II)V
    .locals 0

    return-void
.end method

.method public onRdsPtyStatusChange(I)V
    .locals 0

    return-void
.end method

.method public onRdsScanStatusChange(Lcom/yftech/car/media/radio/rds/entity/RdsInfo;)V
    .locals 0

    return-void
.end method

.method public onScanFreqSignal(Lcom/yftech/car/media/radio/entity/DataOfRadio;I)V
    .locals 0

    return-void
.end method

.method public onSeekStatusChange(III)V
    .locals 0

    return-void
.end method
