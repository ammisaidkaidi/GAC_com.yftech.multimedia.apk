.class public abstract Lcom/yftech/vehicle/sdk/CarEvDeviceManager$CarEvDeviceListener;
.super Ljava/lang/Object;
.source "CarEvDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarEvDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarEvDeviceListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryQuantityPercentChanged(F)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x13a
    .end annotation

    return-void
.end method

.method public onBookChrgStartDayChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x181
    .end annotation

    return-void
.end method

.method public onBookChrgStartHourChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x182
    .end annotation

    return-void
.end method

.method public onBookChrgStartMinChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x183
    .end annotation

    return-void
.end method

.method public onBookChrgStartMonChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x180
    .end annotation

    return-void
.end method

.method public onBookChrgStartRemainingDayChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x17c
    .end annotation

    return-void
.end method

.method public onBookChrgStartRemainingHourChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x17d
    .end annotation

    return-void
.end method

.method public onBookChrgStartRemainingMinChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x17e
    .end annotation

    return-void
.end method

.method public onBookChrgStartYearChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x17f
    .end annotation

    return-void
.end method

.method public onBookChrgStopDayChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x186
    .end annotation

    return-void
.end method

.method public onBookChrgStopHourChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x187
    .end annotation

    return-void
.end method

.method public onBookChrgStopMinChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x188
    .end annotation

    return-void
.end method

.method public onBookChrgStopMonChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x185
    .end annotation

    return-void
.end method

.method public onBookChrgStopYearChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x184
    .end annotation

    return-void
.end method

.method public onChargActiveChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargActive;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ea
    .end annotation

    return-void
.end method

.method public onChargCurrentChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ec
    .end annotation

    return-void
.end method

.method public onChargStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1e9
    .end annotation

    return-void
.end method

.method public onChargeFullNoticeLevelChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeFullNoticeLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x144
    .end annotation

    return-void
.end method

.method public onChargeModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x189
    .end annotation

    return-void
.end method

.method public onChargeSocPercentChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeSocPercent;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x13e
    .end annotation

    return-void
.end method

.method public onChargeSocPercentValidEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x140
    .end annotation

    return-void
.end method

.method public onChargeWarmTimeChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ChargeWarmTime;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x141
    .end annotation

    return-void
.end method

.method public onChargeWarmTimeValidEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x143
    .end annotation

    return-void
.end method

.method public onDischgActiveStateStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1e2
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onDischgEndVehRngChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1e4
    .end annotation

    return-void
.end method

.method public onDischgEngStartCfgStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1de
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onDischgSetInfoChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DischgSetInfo;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ee
    .end annotation

    return-void
.end method

.method public onDischgSocCfgChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1e0
    .end annotation

    return-void
.end method

.method public onDischgTimeCfgChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1e5
    .end annotation

    return-void
.end method

.method public onDriveModeEvChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$DriveModeEv;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x163
    .end annotation

    return-void
.end method

.method public onDrvTargetSOEChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1dc
    .end annotation

    return-void
.end method

.method public onEcoModeEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x167
    .end annotation

    return-void
.end method

.method public onEcoNormalSportModeEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x169
    .end annotation

    return-void
.end method

.method public onEcoPlusModeEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x166
    .end annotation

    return-void
.end method

.method public onEnergyModelChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$EnergyModel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1da
    .end annotation

    return-void
.end method

.method public onEngSelfMaintDispStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1d9
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onHealCheckNoticeChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$HealCheckNotice;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x145
    .end annotation

    return-void
.end method

.method public onIpedalCreepStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x13b
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onIpedalCreepValidEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x13d
    .end annotation

    return-void
.end method

.method public onIpedalModeEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x168
    .end annotation

    return-void
.end method

.method public onObcConnStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$ObcConnState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x201
    .end annotation

    return-void
.end method

.method public onPlugAutoUnlockCfgChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PlugAutoUnlockCfg;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1e7
    .end annotation

    return-void
.end method

.method public onPowerFlowModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$PowerFlowMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x139
    .end annotation

    return-void
.end method

.method public onRecpLevelAvailChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecpLevelAvail;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x162
    .end annotation

    return-void
.end method

.method public onRecuperationLevelA9EChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevelA9E;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x19c
    .end annotation

    return-void
.end method

.method public onRecuperationLevelChanged(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RecuperationLevel;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x160
    .end annotation

    return-void
.end method

.method public onRepeatBookChrgDay1Changed(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x18a
    .end annotation

    return-void
.end method

.method public onRepeatBookChrgDay2Changed(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x18b
    .end annotation

    return-void
.end method

.method public onRepeatBookChrgDay3Changed(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x18c
    .end annotation

    return-void
.end method

.method public onRepeatBookChrgDay4Changed(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x18d
    .end annotation

    return-void
.end method

.method public onRepeatBookChrgDay5Changed(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x18e
    .end annotation

    return-void
.end method

.method public onRepeatBookChrgDay6Changed(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x18f
    .end annotation

    return-void
.end method

.method public onRepeatBookChrgDay7Changed(Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$RepeatBookMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x190
    .end annotation

    return-void
.end method

.method public onVehRdyStateStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1d8
        valueToEnabledState = true
    .end annotation

    return-void
.end method
