.class public Lcom/yftech/vehicle/sdk/CarInfoManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarInfoManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarInfoManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarInfoManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarInfoManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarInfoManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarInfoManager;->sMe:Lcom/yftech/vehicle/sdk/CarInfoManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarInfoManager;->sMe:Lcom/yftech/vehicle/sdk/CarInfoManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarInfoManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarInfoManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarInfoManager;->sMe:Lcom/yftech/vehicle/sdk/CarInfoManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBatteryVoltage()F
    .locals 1

    const/16 v0, 0x7c

    .line 62
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getDayNightMode()Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;
    .locals 1

    const/16 v0, 0xbb

    .line 126
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$DayNightMode;

    move-result-object p0

    return-object p0
.end method

.method public getEngineCrankState()Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;
    .locals 1

    const/16 v0, 0x197

    .line 149
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$EngineCrankState;

    move-result-object p0

    return-object p0
.end method

.method public getEngineIgnAngle()F
    .locals 1

    const/16 v0, 0x1bb

    .line 205
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getEngineSpeed()I
    .locals 1

    const/16 v0, 0x79

    .line 41
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 1

    const/16 v0, 0xb9

    .line 86
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object p0

    return-object p0
.end method

.method public getGearPositionA9E()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;
    .locals 1

    const/16 v0, 0x19f

    .line 94
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionA9E;

    move-result-object p0

    return-object p0
.end method

.method public getLowBatteryWarningLevel()Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;
    .locals 1

    const/16 v0, 0x7d

    .line 70
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$LowBatteryWarningLevel;

    move-result-object p0

    return-object p0
.end method

.method public getParkingBrakeState()Lcom/yftech/vehicle/internal/adapter/ICarInfo$ParkingBrakeState;
    .locals 1

    const/16 v0, 0xc9

    .line 102
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$ParkingBrakeState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$ParkingBrakeState;

    move-result-object p0

    return-object p0
.end method

.method public getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;
    .locals 1

    const/16 v0, 0xb6

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    move-result-object p0

    return-object p0
.end method

.method public getPressureOfAtmospheric()I
    .locals 1

    const/16 v0, 0x1b5

    .line 163
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPressureOfOil()I
    .locals 1

    const/16 v0, 0x1b6

    .line 170
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPressureOfTurbine()I
    .locals 1

    const/16 v0, 0x1b4

    .line 156
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getRearGearState()Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;
    .locals 1

    const/16 v0, 0xb8

    .line 78
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$RearGearState;

    move-result-object p0

    return-object p0
.end method

.method public getSleepWakeUpCommand()Lcom/yftech/vehicle/internal/adapter/ICarInfo$SleepWakeUpCommand;
    .locals 1

    const/4 v0, -0x1

    .line 118
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$SleepWakeUpCommand;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$SleepWakeUpCommand;

    move-result-object p0

    return-object p0
.end method

.method public getTemperatureOfEngineWater()I
    .locals 1

    const/16 v0, 0x1b7

    .line 177
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getTemperatureOfExhaust()I
    .locals 1

    const/16 v0, 0x1b8

    .line 184
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getTemperatureOfIntakeAir()F
    .locals 1

    const/16 v0, 0x1b9

    .line 191
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getTemperatureOfTransmissionOil()I
    .locals 1

    const/16 v0, 0x1ba

    .line 198
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getTotalOdometer()I
    .locals 1

    const/16 v0, 0x7b

    .line 55
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getVehicleModeBroadcast()Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;
    .locals 1

    const/16 v0, 0x170

    .line 134
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleModeBroadcast;

    move-result-object p0

    return-object p0
.end method

.method public getVehicleSpeed()I
    .locals 1

    const/16 v0, 0x7a

    .line 48
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getVehicleState()Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;
    .locals 1

    const/16 v0, 0xba

    .line 110
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$VehicleState;

    move-result-object p0

    return-object p0
.end method

.method public isTransportationModeEnabled()Z
    .locals 1

    const/16 v0, 0x171

    .line 141
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V
    .locals 0

    .line 219
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
