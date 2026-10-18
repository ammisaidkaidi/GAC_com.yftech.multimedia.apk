.class public Lcom/yftech/vehicle/sdk/CarEvDeviceManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarEvDeviceManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarEvDeviceManager$CarEvDeviceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarEvDeviceManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarEvDeviceManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarEvDeviceManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->sMe:Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->sMe:Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->sMe:Lcom/yftech/vehicle/sdk/CarEvDeviceManager;
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
.method public getBatteryQuantityPercent()F
    .locals 1

    const/16 v0, 0x13a

    .line 41
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public getBookChrgStartDay()I
    .locals 1

    const/16 v0, 0x181

    .line 249
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStartHour()I
    .locals 1

    const/16 v0, 0x182

    .line 256
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStartMin()I
    .locals 1

    const/16 v0, 0x183

    .line 263
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStartMon()I
    .locals 1

    const/16 v0, 0x180

    .line 242
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStartRemainingDay()I
    .locals 1

    const/16 v0, 0x17c

    .line 214
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStartRemainingHour()I
    .locals 1

    const/16 v0, 0x17d

    .line 221
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStartRemainingMin()I
    .locals 1

    const/16 v0, 0x17e

    .line 228
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStartYear()I
    .locals 1

    const/16 v0, 0x17f

    .line 235
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStopDay()I
    .locals 1

    const/16 v0, 0x186

    .line 284
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStopHour()I
    .locals 1

    const/16 v0, 0x187

    .line 291
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStopMin()I
    .locals 1

    const/16 v0, 0x188

    .line 298
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStopMon()I
    .locals 1

    const/16 v0, 0x185

    .line 277
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getBookChrgStopYear()I
    .locals 1

    const/16 v0, 0x184

    .line 270
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getChargActive()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargActive;
    .locals 1

    const/16 v0, 0x1ea

    .line 518
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargActive;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargActive;

    move-result-object p0

    return-object p0
.end method

.method public getChargCurrent()I
    .locals 1

    const/16 v0, 0x1ec

    .line 533
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getChargState()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;
    .locals 1

    const/16 v0, 0x1e9

    .line 510
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;

    move-result-object p0

    return-object p0
.end method

.method public getChargeFullNoticeLevel()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;
    .locals 1

    const/16 v0, 0x144

    .line 199
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;

    move-result-object p0

    return-object p0
.end method

.method public getChargeMode()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeMode;
    .locals 1

    const/16 v0, 0x189

    .line 306
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeMode;

    move-result-object p0

    return-object p0
.end method

.method public getChargeSocPercent()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeSocPercent;
    .locals 1

    const/16 v0, 0x13e

    .line 151
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeSocPercent;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeSocPercent;

    move-result-object p0

    return-object p0
.end method

.method public getChargeSocPercentValidEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x140

    .line 167
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getChargeWarmTime()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeWarmTime;
    .locals 1

    const/16 v0, 0x141

    .line 175
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeWarmTime;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeWarmTime;

    move-result-object p0

    return-object p0
.end method

.method public getChargeWarmTimeValidEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x143

    .line 191
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getDischgEndVehRng()I
    .locals 1

    const/16 v0, 0x1e4

    .line 472
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getDischgSetInfo()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;
    .locals 1

    const/16 v0, 0x1ee

    .line 548
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDischgSocCfg()I
    .locals 1

    const/16 v0, 0x1e0

    .line 444
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getDischgTimeCfg()I
    .locals 1

    const/16 v0, 0x1e5

    .line 479
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getDriveModeEv()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;
    .locals 1

    const/16 v0, 0x163

    .line 73
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;

    move-result-object p0

    return-object p0
.end method

.method public getDrvTargetSOE()I
    .locals 1

    const/16 v0, 0x1dc

    .line 415
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getEcoModeEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x167

    .line 105
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getEcoNormalSportModeEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x169

    .line 121
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getEcoPlusModeEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x166

    .line 97
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getEnergyModel()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;
    .locals 1

    const/16 v0, 0x1da

    .line 400
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;

    move-result-object p0

    return-object p0
.end method

.method public getHealCheckNotice()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;
    .locals 1

    const/16 v0, 0x145

    .line 207
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;

    move-result-object p0

    return-object p0
.end method

.method public getIpedalCreepValidEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x13d

    .line 143
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getIpedalModeEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x168

    .line 113
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getObcConnState()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;
    .locals 1

    const/16 v0, 0x201

    .line 556
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;

    move-result-object p0

    return-object p0
.end method

.method public getPlugAutoUnlockCfg()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;
    .locals 1

    const/16 v0, 0x1e7

    .line 494
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;

    move-result-object p0

    return-object p0
.end method

.method public getPowerFlowMode()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;
    .locals 1

    const/16 v0, 0x139

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;

    move-result-object p0

    return-object p0
.end method

.method public getRecpLevelAvail()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecpLevelAvail;
    .locals 1

    const/16 v0, 0x162

    .line 65
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecpLevelAvail;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecpLevelAvail;

    move-result-object p0

    return-object p0
.end method

.method public getRecuperationLevel()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;
    .locals 1

    const/16 v0, 0x160

    .line 49
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;

    move-result-object p0

    return-object p0
.end method

.method public getRecuperationLevelA9E()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;
    .locals 1

    const/16 v0, 0x19c

    .line 370
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatBookChrgDay1()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    const/16 v0, 0x18a

    .line 314
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatBookChrgDay2()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    const/16 v0, 0x18b

    .line 322
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatBookChrgDay3()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    const/16 v0, 0x18c

    .line 330
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatBookChrgDay4()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    const/16 v0, 0x18d

    .line 338
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatBookChrgDay5()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    const/16 v0, 0x18e

    .line 346
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatBookChrgDay6()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    const/16 v0, 0x18f

    .line 354
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatBookChrgDay7()Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;
    .locals 1

    const/16 v0, 0x190

    .line 362
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;

    move-result-object p0

    return-object p0
.end method

.method public isDischgActiveStateEnabled()Z
    .locals 1

    const/16 v0, 0x1e2

    .line 458
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isDischgEngStartCfgEnabled()Z
    .locals 1

    const/16 v0, 0x1de

    .line 429
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isEngSelfMaintDispEnabled()Z
    .locals 1

    const/16 v0, 0x1d9

    .line 392
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isIpedalCreepEnabled()Z
    .locals 1

    const/16 v0, 0x13b

    .line 128
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isVehRdyStateEnabled()Z
    .locals 1

    const/16 v0, 0x1d8

    .line 385
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public registerListener(Lcom/yftech/vehicle/sdk/CarEvDeviceManager$CarEvDeviceListener;)V
    .locals 0

    .line 563
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setChargCurrent(I)Z
    .locals 1

    const/16 v0, 0x1ed

    .line 540
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setChargEnd(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;)Z
    .locals 1

    .line 526
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargEnd;->value:I

    const/16 v0, 0x1eb

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setChargeSocPercent(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeSocPercent;)Z
    .locals 1

    .line 159
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeSocPercent;->value:I

    const/16 v0, 0x13f

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setChargeWarmTime(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeWarmTime;)Z
    .locals 1

    .line 183
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeWarmTime;->value:I

    const/16 v0, 0x142

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDischgActiveStateEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x1e3

    .line 465
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setDischgEngStartCfg(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;)Z
    .locals 1

    .line 437
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EngStartCfg;->value:I

    const/16 v0, 0x1df

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDischgSocCfg(I)Z
    .locals 1

    const/16 v0, 0x1e1

    .line 451
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDischgTimeCfg(I)Z
    .locals 1

    const/16 v0, 0x1e6

    .line 486
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDriveModeEv(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;)Z
    .locals 1

    .line 81
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;->value:I

    const/16 v0, 0x164

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDrvTargetSOE(I)Z
    .locals 1

    const/16 v0, 0x1dd

    .line 422
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setEcoPlusMode(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EcoPlusMode;)Z
    .locals 1

    .line 89
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EcoPlusMode;->value:I

    const/16 v0, 0x165

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setEnergyModel(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;)Z
    .locals 1

    .line 408
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;->value:I

    const/16 v0, 0x1db

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setIpedalCreepEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x13c

    .line 135
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setPlugAutoUnlockCfg(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;)Z
    .locals 1

    .line 502
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;->value:I

    const/16 v0, 0x1e8

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setRecuperationLevel(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;)Z
    .locals 1

    .line 57
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;->value:I

    const/16 v0, 0x161

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setRecuperationLevelA9E(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;)Z
    .locals 1

    .line 378
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;->value:I

    const/16 v0, 0x19d

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarEvDeviceManager$CarEvDeviceListener;)V
    .locals 0

    .line 570
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarEvDeviceManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
