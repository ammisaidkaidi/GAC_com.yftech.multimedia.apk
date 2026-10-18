.class public abstract Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;
.super Ljava/lang/Object;
.source "CarMiscManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarMiscManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarMiscListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAteCarTypeStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$AteCarType;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26d8
    .end annotation

    return-void
.end method

.method public onCarInfoAvmStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26f1
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onCarInfoCameraRearViewStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26f2
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onDeviceExtAvmStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26e7
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onDeviceNodeStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26e8
    .end annotation

    return-void
.end method

.method public onFactoryModeCanStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x2703
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onFactoryModeDevelopModeChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26f7
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onFactoryModeErrorCodeChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ErrorCodeInfo;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x2705
    .end annotation

    return-void
.end method

.method public onFactoryModeStateChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26fc
    .end annotation

    return-void
.end method

.method public onFactoryModeTransportModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$TransportMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26d5
    .end annotation

    return-void
.end method

.method public onFactoryModeUds2FHmiModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$HmiMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26e2
    .end annotation

    return-void
.end method

.method public onFactoryModeUds2FKeyTestChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$KeyTestEvent;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26e1
    .end annotation

    return-void
.end method

.method public onFactoryModeUds2FProgramSourceInfoChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ProgramSource;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26e3
    .end annotation

    return-void
.end method

.method public onFactoryModeUds2FSpeakerInfoChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$SpeakerCmd;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26fe
    .end annotation

    return-void
.end method

.method public onFactoryModeUds2FStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26d6
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onFactoryModeUds2FTftBackLightLevelChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26e6
    .end annotation

    return-void
.end method

.method public onFactoryModeUds2FTftColorChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftColorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26e4
    .end annotation

    return-void
.end method

.method public onFactoryModeUds2FTftInfoChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$TftCmd;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26fd
    .end annotation

    return-void
.end method

.method public onFactoryModeUds2FVolumeChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26e5
    .end annotation

    return-void
.end method

.method public onFactoryModeUds31EngineerInfoChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$EngineerMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26ff
    .end annotation

    return-void
.end method

.method public onKeyboardBacklightChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x2709
    .end annotation

    return-void
.end method

.method public onScreenBacklightChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x2708
    .end annotation

    return-void
.end method

.method public onTBoxBatteryStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26ee
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onTBoxConnectStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26f0
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onTBoxEcallStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$ECallState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26ef
    .end annotation

    return-void
.end method
