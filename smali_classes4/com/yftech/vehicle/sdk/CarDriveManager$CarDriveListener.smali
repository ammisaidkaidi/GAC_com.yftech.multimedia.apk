.class public abstract Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;
.super Ljava/lang/Object;
.source "CarDriveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarDriveManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarDriveListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssistParaSwitchReqStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1bc
    .end annotation

    return-void
.end method

.method public onAutoHoldChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$AutoHoldState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x11f
    .end annotation

    return-void
.end method

.method public onAvdcModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$AvdcMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xde
    .end annotation

    return-void
.end method

.method public onBcsVdcOffStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$VdcOffState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x195
    .end annotation

    return-void
.end method

.method public onDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xb3
    .end annotation

    return-void
.end method

.method public onDriveModeHevChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveModeHev;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x196
    .end annotation

    return-void
.end method

.method public onDriveSystemModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveSystemMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x105
    .end annotation

    return-void
.end method

.method public onEMSEngineWaveSwitchStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xb5
    .end annotation

    return-void
.end method

.method public onEPSStyleChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EPSStyle;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xb4
    .end annotation

    return-void
.end method

.method public onEpsModeStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EpsModeState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x123
    .end annotation

    return-void
.end method

.method public onEspStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xd7
    .end annotation

    return-void
.end method

.method public onEspStyleChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspStyle;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x122
    .end annotation

    return-void
.end method

.method public onGasPedalLevelChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$GasPedalLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xe0
    .end annotation

    return-void
.end method

.method public onHdcStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xd9
    .end annotation

    return-void
.end method

.method public onMemoryDriveModeA9EChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode_A9E;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1a6
    .end annotation

    return-void
.end method

.method public onMemoryDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MemoryDriveMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xcf
    .end annotation

    return-void
.end method

.method public onMrrAccModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$MrrAccMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1a5
    .end annotation

    return-void
.end method

.method public onTcuDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$TcuDriveMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x104
    .end annotation

    return-void
.end method
