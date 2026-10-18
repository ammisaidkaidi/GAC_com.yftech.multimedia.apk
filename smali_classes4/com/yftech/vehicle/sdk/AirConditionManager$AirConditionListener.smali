.class public abstract Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;
.super Ljava/lang/Object;
.source "AirConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/AirConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AirConditionListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onACStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x4e
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onAcDisplayPopupChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x191
    .end annotation

    return-void
.end method

.method public onAirCirculationModeOfAutoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x55
    .end annotation

    return-void
.end method

.method public onAirCirculationStateChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x52
    .end annotation

    return-void
.end method

.method public onAirSelfDryingEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x107
    .end annotation

    return-void
.end method

.method public onAirUnlockVentilationEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x109
    .end annotation

    return-void
.end method

.method public onAutoDeforstPresentStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = -0x1
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onAutoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x53
    .end annotation

    return-void
.end method

.method public onBatCoolStateChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xc2
    .end annotation

    return-void
.end method

.method public onBatFhWorkStateChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xc0
    .end annotation

    return-void
.end method

.method public onBatPtcWorkStateChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xc1
    .end annotation

    return-void
.end method

.method public onBodyDisalarmVentStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xbf
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onComfortCurveModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x56
    .end annotation

    return-void
.end method

.method public onCupholderAutoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderAutoMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x22d
    .end annotation

    return-void
.end method

.method public onCupholderHeatCoolModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x22b
    .end annotation

    return-void
.end method

.method public onDriverTemperatureChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x4a
    .end annotation

    return-void
.end method

.method public onDualSyncStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x50
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onEcoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = -0x1
    .end annotation

    return-void
.end method

.method public onEnvironmentTemperatureChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xc4
    .end annotation

    return-void
.end method

.method public onFanSpeedOfAutoModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x54
    .end annotation

    return-void
.end method

.method public onFrontDefrostStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x194
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onIonStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x51
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onOneBtnVentlaionStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1a3
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onOutAirQualityLevelChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xc3
    .end annotation

    return-void
.end method

.method public onPassengerTemperatureChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x4b
    .end annotation

    return-void
.end method

.method public onPowerStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = -0x1
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onRearAcAutoModeStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xe7
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onRearAcTemperatureChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xec
    .end annotation

    return-void
.end method

.method public onRearAcWindModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xee
    .end annotation

    return-void
.end method

.method public onRearAcWindSpeedChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xe9
    .end annotation

    return-void
.end method

.method public onRearDefrostStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x4f
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onWORKINGPOWERChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = -0x1
    .end annotation

    return-void
.end method

.method public onWindModeChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x4d
    .end annotation

    return-void
.end method

.method public onWindSpeedChanged(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x4c
    .end annotation

    return-void
.end method
