.class public Lcom/yftech/vehicle/sdk/AirConditionManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "AirConditionManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IAirCondition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AirConditionManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/AirConditionManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/AirConditionManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/AirConditionManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/AirConditionManager;->sMe:Lcom/yftech/vehicle/sdk/AirConditionManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/AirConditionManager;->sMe:Lcom/yftech/vehicle/sdk/AirConditionManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/AirConditionManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/AirConditionManager;->sMe:Lcom/yftech/vehicle/sdk/AirConditionManager;
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
.method public getAcDisplayPopup()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;
    .locals 1

    const/16 v0, 0x191

    .line 446
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AcDisplayPopup;

    move-result-object p0

    return-object p0
.end method

.method public getAirCirculationModeOfAutoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;
    .locals 1

    const/16 v0, 0x55

    .line 217
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;

    move-result-object p0

    return-object p0
.end method

.method public getAirCirculationState()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;
    .locals 1

    const/16 v0, 0x52

    .line 171
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationState;

    move-result-object p0

    return-object p0
.end method

.method public getAirSelfDryingEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x107

    .line 416
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getAirUnlockVentilationEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x109

    .line 431
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getAutoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;
    .locals 1

    const/16 v0, 0x53

    .line 186
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AutoMode;

    move-result-object p0

    return-object p0
.end method

.method public getBatCoolState()F
    .locals 1

    const/16 v0, 0xc2

    .line 320
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getBatFhWorkState()F
    .locals 1

    const/16 v0, 0xc0

    .line 306
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getBatPtcWorkState()F
    .locals 1

    const/16 v0, 0xc1

    .line 313
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getComfortCurveMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;
    .locals 1

    const/16 v0, 0x56

    .line 233
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;

    move-result-object p0

    return-object p0
.end method

.method public getCupholderAutoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderAutoMode;
    .locals 1

    const/16 v0, 0x22d

    .line 569
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderAutoMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderAutoMode;

    move-result-object p0

    return-object p0
.end method

.method public getCupholderHeatCoolMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;
    .locals 1

    const/16 v0, 0x22b

    .line 553
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;

    move-result-object p0

    return-object p0
.end method

.method public getDriverTemperature()F
    .locals 1

    const/16 v0, 0x4a

    .line 33
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getEcoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;
    .locals 1

    const/4 v0, -0x1

    .line 263
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;

    move-result-object p0

    return-object p0
.end method

.method public getEnvironmentTemperature()F
    .locals 1

    const/16 v0, 0xc4

    .line 334
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getFanSpeedOfAutoMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;
    .locals 1

    const/16 v0, 0x54

    .line 201
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;

    move-result-object p0

    return-object p0
.end method

.method public getOutAirQualityLevel()F
    .locals 1

    const/16 v0, 0xc3

    .line 327
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getPassengerTemperature()F
    .locals 1

    const/16 v0, 0x4b

    .line 47
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getRearAcTemperature()F
    .locals 1

    const/16 v0, 0xec

    .line 385
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getRearAcWindMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;
    .locals 1

    const/16 v0, 0xee

    .line 400
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    move-result-object p0

    return-object p0
.end method

.method public getRearAcWindSpeed()Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;
    .locals 1

    const/16 v0, 0xe9

    .line 363
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    move-result-object p0

    return-object p0
.end method

.method public getWORKINGPOWER()F
    .locals 1

    const/4 v0, -0x1

    .line 341
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getWindMode()Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;
    .locals 1

    const/16 v0, 0x4d

    .line 85
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;

    move-result-object p0

    return-object p0
.end method

.method public getWindSpeed()Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;
    .locals 1

    const/16 v0, 0x4c

    .line 62
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;

    move-result-object p0

    return-object p0
.end method

.method public isACEnabled()Z
    .locals 1

    const/16 v0, 0x4e

    .line 114
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isAutoDeforstPresentEnabled()Z
    .locals 1

    const/4 v0, -0x1

    .line 248
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isBodyDisalarmVentEnabled()Z
    .locals 1

    const/16 v0, 0xbf

    .line 278
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isDualSyncEnabled()Z
    .locals 1

    const/16 v0, 0x50

    .line 142
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isFrontDefrostEnabled()Z
    .locals 1

    const/16 v0, 0x194

    .line 100
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isIonEnabled()Z
    .locals 1

    const/16 v0, 0x51

    .line 156
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isOneBtnVentlaionEnabled()Z
    .locals 1

    const/16 v0, 0x1a3

    .line 453
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isPowerEnabled()Z
    .locals 1

    const/4 v0, -0x1

    .line 292
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isRearAcAutoModeEnabled()Z
    .locals 1

    const/16 v0, 0xe7

    .line 348
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isRearDefrostEnabled()Z
    .locals 1

    const/16 v0, 0x4f

    .line 128
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/AirConditionManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public performACButtonClick()Z
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 121
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performAutoButtonClick()Z
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x1

    .line 193
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performAutoDeforstPresentButtonClick()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 255
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performBodyDisalarmVentButtonClick()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 285
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performCirculationButtonClick()Z
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performDualSyncButtonClick()Z
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performFrontDefrostButtonClick()Z
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 107
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performIonButtonClick()Z
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x1

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performOffButtonClick()Z
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performPowerButtonClick()Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 299
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performRearAcAutoModeButtonClick()Z
    .locals 2

    const/16 v0, 0xe8

    const/4 v1, 0x1

    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performRearAcOffButtonClick()Z
    .locals 2

    const/16 v0, 0xeb

    const/4 v1, 0x1

    .line 378
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performRearDefrostButtonClick()Z
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x1

    .line 135
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performTemperatureDecButtonClick()Z
    .locals 2

    const/16 v0, 0x1b2

    const/4 v1, 0x1

    .line 481
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performTemperatureFRDecButtonClick()Z
    .locals 2

    const/16 v0, 0x20c

    const/4 v1, 0x1

    .line 517
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performTemperatureFRIncButtonClick()Z
    .locals 2

    const/16 v0, 0x20a

    const/4 v1, 0x1

    .line 503
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performTemperatureIncButtonClick()Z
    .locals 2

    const/16 v0, 0x1b0

    const/4 v1, 0x1

    .line 467
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performWindModeButtonClick()Z
    .locals 2

    const/16 v0, 0x216

    const/4 v1, 0x1

    .line 531
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performWindSpeedDecButtonClick()Z
    .locals 2

    const/16 v0, 0x219

    const/4 v1, 0x1

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public performWindSpeedIncButtonClick()Z
    .locals 2

    const/16 v0, 0x218

    const/4 v1, 0x1

    .line 538
    invoke-virtual {p0, v0, v1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;)V
    .locals 0

    .line 584
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setAirCirculationModeOfAutoMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;)Z
    .locals 1

    .line 225
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirCirculationMode;->value:I

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setAirSelfDryingEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x108

    .line 423
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setAirUnlockVentilationEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x10a

    .line 438
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setComfortCurveMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;)Z
    .locals 1

    .line 241
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$ComfortCurveMode;->value:I

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setCupholderAutoMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderAutoMode;)Z
    .locals 1

    .line 577
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderAutoMode;->value:I

    const/16 v0, 0x22e

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setCupholderHeatCoolMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;)Z
    .locals 1

    .line 561
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$CupholderHeatCoolMode;->value:I

    const/16 v0, 0x22c

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDriverTemperature(F)Z
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IF)Z

    move-result p0

    return p0
.end method

.method public setEcoMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;)Z
    .locals 1

    .line 271
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$EcoMode;->value:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setFanSpeedOfAutoMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;)Z
    .locals 1

    .line 209
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$FanSpeed;->value:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setOnOffByVrState(Lcom/yftech/vehicle/internal/adapter/IAirCondition$OnOffByVrState;)Z
    .locals 1

    .line 496
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$OnOffByVrState;->value:I

    const/16 v0, 0x1bd

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setOneBtnVentlaionEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1a4

    .line 460
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setPassengerTemperature(F)Z
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IF)Z

    move-result p0

    return p0
.end method

.method public setRearAcTemperature(F)Z
    .locals 1

    const/16 v0, 0xed

    .line 392
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IF)Z

    move-result p0

    return p0
.end method

.method public setRearAcWindMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;)Z
    .locals 1

    .line 408
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->value:I

    const/16 v0, 0xef

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setRearAcWindSpeed(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;)Z
    .locals 1

    .line 371
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    const/16 v0, 0xea

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setTemperatureDecBtnStVDSwitch(Z)Z
    .locals 1

    const/16 v0, 0x1b3

    .line 488
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setTemperatureFRDecBtnStVDSwitch(Z)Z
    .locals 1

    const/16 v0, 0x20d

    .line 524
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setTemperatureFRIncBtnStVDSwitch(Z)Z
    .locals 1

    const/16 v0, 0x20b

    .line 510
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setTemperatureIncBtnStVDSwitch(Z)Z
    .locals 1

    const/16 v0, 0x1b1

    .line 474
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setWindMode(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;)Z
    .locals 1

    .line 93
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindMode;->value:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setWindSpeed(Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;)Z
    .locals 1

    .line 70
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$WindSpeed;->value:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/AirConditionManager$AirConditionListener;)V
    .locals 0

    .line 591
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/AirConditionManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
