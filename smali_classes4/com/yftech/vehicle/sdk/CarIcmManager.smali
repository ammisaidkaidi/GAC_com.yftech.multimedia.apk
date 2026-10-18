.class public Lcom/yftech/vehicle/sdk/CarIcmManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarIcmManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarIcm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarIcmManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarIcmManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarIcmManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarIcmManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarIcmManager;->sMe:Lcom/yftech/vehicle/sdk/CarIcmManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarIcmManager;->sMe:Lcom/yftech/vehicle/sdk/CarIcmManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarIcmManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarIcmManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarIcmManager;->sMe:Lcom/yftech/vehicle/sdk/CarIcmManager;
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
.method public getBackLightLevel()Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;
    .locals 1

    const/16 v0, 0x72

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;

    move-result-object p0

    return-object p0
.end method

.method public getFuelEconomyAndDistanceUnit()Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;
    .locals 1

    const/16 v0, 0x77

    .line 112
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    move-result-object p0

    return-object p0
.end method

.method public getKeyBoardBackLight()I
    .locals 1

    const/16 v0, 0xe2

    .line 134
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getLanguage()Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;
    .locals 1

    const/16 v0, 0x76

    .line 96
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    move-result-object p0

    return-object p0
.end method

.method public getMeterVolumeMode()Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;
    .locals 1

    const/16 v0, 0x102

    .line 142
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;

    move-result-object p0

    return-object p0
.end method

.method public getPressureUnit()Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;
    .locals 1

    const/16 v0, 0x74

    .line 66
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;

    move-result-object p0

    return-object p0
.end method

.method public getSpeedWarning()I
    .locals 1

    const/16 v0, 0x75

    .line 81
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getTemperatureUnit()Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;
    .locals 1

    const/16 v0, 0x73

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;

    move-result-object p0

    return-object p0
.end method

.method public isKeepMuteWarningEnabled()Z
    .locals 1

    const/16 v0, 0x78

    .line 127
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarIcmManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public registerListener(Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;)V
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setBackLightLevel(Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;)Z
    .locals 1

    .line 42
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$BackLightLevel;->value:I

    const/16 v0, 0xdb

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setFMFreqSymbol(I)Z
    .locals 1

    const/16 v0, 0x215

    .line 157
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setFuelEconomyAndDistanceUnit(Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;)Z
    .locals 1

    .line 120
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->value:I

    const/16 v0, 0x33

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setLanguage(Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;)Z
    .locals 1

    .line 104
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->value:I

    const/16 v0, 0x32

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setMeterVolumeMode(Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;)Z
    .locals 1

    .line 150
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$MeterVolumeMode;->value:I

    const/16 v0, 0x103

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setPressureUnit(Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;)Z
    .locals 1

    .line 74
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$PressureUnit;->value:I

    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSpeedWarning(I)Z
    .locals 1

    const/16 v0, 0x31

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setTemperatureUnit(Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;)Z
    .locals 1

    .line 58
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$TemperatureUnit;->value:I

    const/16 v0, 0x2f

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;)V
    .locals 0

    .line 171
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
