.class public abstract Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;
.super Ljava/lang/Object;
.source "CarSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarSettingsListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADASELKStatusChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASELKStatus;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x20e
    .end annotation

    return-void
.end method

.method public onADASWarnTypeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ADASWarnType;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x6c
    .end annotation

    return-void
.end method

.method public onAEBOffEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x67
    .end annotation

    return-void
.end method

.method public onAVASEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x6d
    .end annotation

    return-void
.end method

.method public onAcSmartChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1a0
    .end annotation

    return-void
.end method

.method public onAutoWiperModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$AutoWiperMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x70
    .end annotation

    return-void
.end method

.method public onBSDMDowStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMDowState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1c6
    .end annotation

    return-void
.end method

.method public onBSDMLcaStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMLcaState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1c4
    .end annotation

    return-void
.end method

.method public onBSDMRctaAssistTypeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaAssistType;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ca
    .end annotation

    return-void
.end method

.method public onBSDMRctaStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRctaState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1c8
    .end annotation

    return-void
.end method

.method public onBSDMRcwStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$BSDMRcwState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1cc
    .end annotation

    return-void
.end method

.method public onComfortParkStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ComfortParkState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x19e
    .end annotation

    return-void
.end method

.method public onCruiseAssistModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$CruiseAssistMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x10f
    .end annotation

    return-void
.end method

.method public onDoorHandleElectricHideStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1a7
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onDragModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$DragMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x14c
    .end annotation

    return-void
.end method

.method public onDriverEasyEntryAndExitStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1be
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onEMSEngWaveStatusChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$EMSEngWaveStatus;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x210
    .end annotation

    return-void
.end method

.method public onEPBSystemMsgChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemMsg;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x14e
    .end annotation

    return-void
.end method

.method public onEPBSystemStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$EPBSystemState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x14a
    .end annotation

    return-void
.end method

.method public onETCEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x6e
    .end annotation

    return-void
.end method

.method public onFCWOffEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableStateOp;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x65
    .end annotation

    return-void
.end method

.method public onFCWWarningDistanceChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCWWarningDistance;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x66
    .end annotation

    return-void
.end method

.method public onFrontCarDistanceDisplayEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x10b
    .end annotation

    return-void
.end method

.method public onFrontWiperServicePositionStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x6f
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onHudAngleStChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1d4
    .end annotation

    return-void
.end method

.method public onHudBrightnessStChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1d0
    .end annotation

    return-void
.end method

.method public onHudHeightStChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1d2
    .end annotation

    return-void
.end method

.method public onHudModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1d6
    .end annotation

    return-void
.end method

.method public onHudOffStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$HudOffState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ce
    .end annotation

    return-void
.end method

.method public onIAccEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x6a
    .end annotation

    return-void
.end method

.method public onIntelligentAvoidEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x10d
    .end annotation

    return-void
.end method

.method public onKeyNotforgetWarningEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x16a
    .end annotation

    return-void
.end method

.method public onLksModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x64
    .end annotation

    return-void
.end method

.method public onLksStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$LksState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x63
    .end annotation

    return-void
.end method

.method public onOSRMAutoFoldEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x6b
    .end annotation

    return-void
.end method

.method public onOSRMRAngleCmdChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$OSRMRAngleCmd;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1a9
    .end annotation

    return-void
.end method

.method public onOSRMRAngleHorizontalFLChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ad
    .end annotation

    return-void
.end method

.method public onOSRMRAngleHorizontalFRChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1af
    .end annotation

    return-void
.end method

.method public onOSRMRAngleVerticalFLChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ac
    .end annotation

    return-void
.end method

.method public onOSRMRAngleVerticalFRChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1ae
    .end annotation

    return-void
.end method

.method public onParkAutoUnlockChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$ParkAutoUnlockState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x150
    .end annotation

    return-void
.end method

.method public onPowerKeepRemindConfChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x177
    .end annotation

    return-void
.end method

.method public onPowerKeepRemindReqChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x176
    .end annotation

    return-void
.end method

.method public onPowerKeepReqChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x172
    .end annotation

    return-void
.end method

.method public onPowerKeepReqVdChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x174
    .end annotation

    return-void
.end method

.method public onPowerOffReqVdChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x179
    .end annotation

    return-void
.end method

.method public onRLSPABUttonStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x22f
    .end annotation

    return-void
.end method

.method public onRLSeatWelcomeChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x21c
    .end annotation

    return-void
.end method

.method public onRRSPABUttonStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x230
    .end annotation

    return-void
.end method

.method public onRRSeatWelcomeChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x21a
    .end annotation

    return-void
.end method

.method public onRainstormModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RainstormMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x71
    .end annotation

    return-void
.end method

.method public onRearviewMirrorCmdForReverseChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmdForReverse;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x136
    .end annotation

    return-void
.end method

.method public onRearviewMirrorStateLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xfc
    .end annotation

    return-void
.end method

.method public onRearviewMirrorStateRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0xfd
    .end annotation

    return-void
.end method

.method public onSeatNapModePositionStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x233
    .end annotation

    return-void
.end method

.method public onStpOnBrkToRelParkBrkIndOnStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$StpOnBrkToRelParkBrkIndOnState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x14f
    .end annotation

    return-void
.end method

.method public onTSRAudioWarningEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x69
    .end annotation

    return-void
.end method

.method public onTSREnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x68
    .end annotation

    return-void
.end method

.method public onWCLCMWorkModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCLCMWorkMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1c2
    .end annotation

    return-void
.end method

.method public onWCMCtlChargingStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlChargingState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x203
    .end annotation

    return-void
.end method

.method public onWCMCtlErrorStateStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x208
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onWCMCtlFailureStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlFailureState;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x204
    .end annotation

    return-void
.end method

.method public onWCMCtlPromptStateStateChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x207
        valueToEnabledState = true
    .end annotation

    return-void
.end method

.method public onWCMCtlResultChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$WCMCtlResult;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x1c0
    .end annotation

    return-void
.end method
