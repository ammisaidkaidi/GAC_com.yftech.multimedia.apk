.class public abstract Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;
.super Ljava/lang/Object;
.source "CarInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarInfoListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryVoltageChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x7c
    .end annotation

    return-void
.end method

.method public onDayNightModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xbb
    .end annotation

    return-void
.end method

.method public onEngineCrankStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x197
    .end annotation

    return-void
.end method

.method public onEngineIgnAngleChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1bb
    .end annotation

    return-void
.end method

.method public onEngineSpeedChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x79
    .end annotation

    return-void
.end method

.method public onGearPositionA9EChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x19f
    .end annotation

    return-void
.end method

.method public onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xb9
    .end annotation

    return-void
.end method

.method public onLowBatteryWarningLevelChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x7d
    .end annotation

    return-void
.end method

.method public onParkingBrakeStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$ParkingBrakeState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xc9
    .end annotation

    return-void
.end method

.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xb6
    .end annotation

    return-void
.end method

.method public onPressureOfAtmosphericChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1b5
    .end annotation

    return-void
.end method

.method public onPressureOfOilChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1b6
    .end annotation

    return-void
.end method

.method public onPressureOfTurbineChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1b4
    .end annotation

    return-void
.end method

.method public onRearGearStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xb8
    .end annotation

    return-void
.end method

.method public onSleepWakeUpCommandChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$SleepWakeUpCommand;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = -0x1
    .end annotation

    return-void
.end method

.method public onTemperatureOfEngineWaterChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1b7
    .end annotation

    return-void
.end method

.method public onTemperatureOfExhaustChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1b8
    .end annotation

    return-void
.end method

.method public onTemperatureOfIntakeAirChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1b9
    .end annotation

    return-void
.end method

.method public onTemperatureOfTransmissionOilChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ba
    .end annotation

    return-void
.end method

.method public onTotalOdometerChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x7b
    .end annotation

    return-void
.end method

.method public onTransportationModeStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x171
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onVehicleModeBroadcastChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x170
    .end annotation

    return-void
.end method

.method public onVehicleSpeedChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x7a
    .end annotation

    return-void
.end method

.method public onVehicleStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xba
    .end annotation

    return-void
.end method
