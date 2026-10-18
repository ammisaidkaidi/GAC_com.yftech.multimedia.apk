package com.yftech.vehicle.sdk;

import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarSettings;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarSettingsManager extends BaseApiManager implements ICarSettings {
    private static final String TAG = "CarSettingsManager";
    private static CarSettingsManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarSettingsListener {
        @SignalReceiver(signalId = ICarSettings.ADASELK_STATE)
        public void onADASELKStatusChanged(ICarSettings.ADASELKStatus aDASELKStatus) {
        }

        @SignalReceiver(signalId = 108)
        public void onADASWarnTypeChanged(ICarSettings.ADASWarnType aDASWarnType) {
        }

        @SignalReceiver(signalId = 103)
        public void onAEBOffEnableStateChanged(IBaseApi.EnableStateOp enableStateOp) {
        }

        @SignalReceiver(signalId = 109)
        public void onAVASEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.AC_SMART_STATE)
        public void onAcSmartChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = 112)
        public void onAutoWiperModeChanged(ICarSettings.AutoWiperMode autoWiperMode) {
        }

        @SignalReceiver(signalId = ICarSettings.BSDMDOWSTATE_STATE)
        public void onBSDMDowStateChanged(ICarSettings.BSDMDowState bSDMDowState) {
        }

        @SignalReceiver(signalId = ICarSettings.BSDMLCA_STATE)
        public void onBSDMLcaStateChanged(ICarSettings.BSDMLcaState bSDMLcaState) {
        }

        @SignalReceiver(signalId = ICarSettings.BSDMRCTA_ASSIST_TYPE_STATE)
        public void onBSDMRctaAssistTypeChanged(ICarSettings.BSDMRctaAssistType bSDMRctaAssistType) {
        }

        @SignalReceiver(signalId = ICarSettings.BSDMRCTA_STATE)
        public void onBSDMRctaStateChanged(ICarSettings.BSDMRctaState bSDMRctaState) {
        }

        @SignalReceiver(signalId = ICarSettings.BSDMRCWSTATE_STATE)
        public void onBSDMRcwStateChanged(ICarSettings.BSDMRcwState bSDMRcwState) {
        }

        @SignalReceiver(signalId = ICarSettings.COMFORT_PARK_STATE)
        public void onComfortParkStateChanged(ICarSettings.ComfortParkState comfortParkState) {
        }

        @SignalReceiver(signalId = ICarSettings.CRUISE_ASSIST_MODE)
        public void onCruiseAssistModeChanged(ICarSettings.CruiseAssistMode cruiseAssistMode) {
        }

        @SignalReceiver(signalId = ICarSettings.DOOR_HANDLE_ELECTRIC_HIDE_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDoorHandleElectricHideStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarSettings.DRAG_MODE_STATE)
        public void onDragModeChanged(ICarSettings.DragMode dragMode) {
        }

        @SignalReceiver(signalId = ICarSettings.DRIVER_EASY_ENTRY_EXIT_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDriverEasyEntryAndExitStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarSettings.ENG_WAVE_SWITCH_STATE)
        public void onEMSEngWaveStatusChanged(ICarSettings.EMSEngWaveStatus eMSEngWaveStatus) {
        }

        @SignalReceiver(signalId = ICarSettings.EPB_SYSTEM_MSG_STATE)
        public void onEPBSystemMsgChanged(ICarSettings.EPBSystemMsg ePBSystemMsg) {
        }

        @SignalReceiver(signalId = ICarSettings.EPB_SYSTEM_STATE)
        public void onEPBSystemStateChanged(ICarSettings.EPBSystemState ePBSystemState) {
        }

        @SignalReceiver(signalId = 110)
        public void onETCEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = 101)
        public void onFCWOffEnableStateChanged(IBaseApi.EnableStateOp enableStateOp) {
        }

        @SignalReceiver(signalId = 102)
        public void onFCWWarningDistanceChanged(ICarSettings.FCWWarningDistance fCWWarningDistance) {
        }

        @SignalReceiver(signalId = ICarSettings.FRONT_CAR_DISTANCE_DISPLAY)
        public void onFrontCarDistanceDisplayEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = 111, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onFrontWiperServicePositionStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarSettings.HUD_ANGLEST_STATE)
        public void onHudAngleStChanged(int i) {
        }

        @SignalReceiver(signalId = ICarSettings.HUDBRIGHTNESSST_STATE)
        public void onHudBrightnessStChanged(int i) {
        }

        @SignalReceiver(signalId = ICarSettings.HUDHEIGHTST_STATE)
        public void onHudHeightStChanged(int i) {
        }

        @SignalReceiver(signalId = ICarSettings.HUD_MODE_STATE)
        public void onHudModeChanged(ICarSettings.HudMode hudMode) {
        }

        @SignalReceiver(signalId = ICarSettings.HUDOFF_STATE)
        public void onHudOffStateChanged(ICarSettings.HudOffState hudOffState) {
        }

        @SignalReceiver(signalId = 106)
        public void onIAccEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.INTELLIGENT_AVOID)
        public void onIntelligentAvoidEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.KEY_NOT_FORGET_WARNING)
        public void onKeyNotforgetWarningEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = 100)
        public void onLksModeChanged(ICarSettings.LksMode lksMode) {
        }

        @SignalReceiver(signalId = 99)
        public void onLksStateChanged(ICarSettings.LksState lksState) {
        }

        @SignalReceiver(signalId = 107)
        public void onOSRMAutoFoldEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.OSRM_ANGLE_CMD_STATE)
        public void onOSRMRAngleCmdChanged(ICarSettings.OSRMRAngleCmd oSRMRAngleCmd) {
        }

        @SignalReceiver(signalId = ICarSettings.OSRMR_ANGLE_HORIZONTAL_FL)
        public void onOSRMRAngleHorizontalFLChanged(int i) {
        }

        @SignalReceiver(signalId = ICarSettings.OSRMR_ANGLE_HORIZONTAL_FR)
        public void onOSRMRAngleHorizontalFRChanged(int i) {
        }

        @SignalReceiver(signalId = ICarSettings.OSRMR_ANGLE_VERTICAL_FL)
        public void onOSRMRAngleVerticalFLChanged(int i) {
        }

        @SignalReceiver(signalId = ICarSettings.OSRMR_ANGLE_VERTICAL_FR)
        public void onOSRMRAngleVerticalFRChanged(int i) {
        }

        @SignalReceiver(signalId = ICarSettings.PARK_AUTO_UNLOCK_STATE)
        public void onParkAutoUnlockChanged(ICarSettings.ParkAutoUnlockState parkAutoUnlockState) {
        }

        @SignalReceiver(signalId = ICarSettings.POWER_KEEP_REMIND_CONF)
        public void onPowerKeepRemindConfChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.POWER_KEEP_REMIND_STATE)
        public void onPowerKeepRemindReqChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.POWER_KEEP_STATE)
        public void onPowerKeepReqChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.POWER_KEEP_REQVD_STATE)
        public void onPowerKeepReqVdChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.POWER_OFF_REQ_VD_STATE)
        public void onPowerOffReqVdChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.RL_SPA_BUTTON_STATE)
        public void onRLSPABUttonStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.RLSEATWELCOME)
        public void onRLSeatWelcomeChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.RR_SPA_BUTTON_STATE)
        public void onRRSPABUttonStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.RRSEATWELCOME)
        public void onRRSeatWelcomeChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = 113)
        public void onRainstormModeChanged(ICarSettings.RainstormMode rainstormMode) {
        }

        @SignalReceiver(signalId = ICarSettings.REARVIEW_MIRROR_CMD_REVERSE_STATE)
        public void onRearviewMirrorCmdForReverseChanged(ICarSettings.RearviewMirrorCmdForReverse rearviewMirrorCmdForReverse) {
        }

        @SignalReceiver(signalId = ICarSettings.REARVIEW_MIRROR_STATE_L)
        public void onRearviewMirrorStateLChanged(ICarSettings.RearviewMirrorState rearviewMirrorState) {
        }

        @SignalReceiver(signalId = ICarSettings.REARVIEW_MIRROR_STATE_R)
        public void onRearviewMirrorStateRChanged(ICarSettings.RearviewMirrorState rearviewMirrorState) {
        }

        @SignalReceiver(signalId = ICarSettings.SCM_NAP_SETTING_SAVE_STATE)
        public void onSeatNapModePositionStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.STP_ONBRK_TO_REL_PARKBRK_INDON_STATE)
        public void onStpOnBrkToRelParkBrkIndOnStateChanged(ICarSettings.StpOnBrkToRelParkBrkIndOnState stpOnBrkToRelParkBrkIndOnState) {
        }

        @SignalReceiver(signalId = 105)
        public void onTSRAudioWarningEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = 104)
        public void onTSREnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSettings.WCLCM_WORK_MODE_STATE)
        public void onWCLCMWorkModeChanged(ICarSettings.WCLCMWorkMode wCLCMWorkMode) {
        }

        @SignalReceiver(signalId = 515)
        public void onWCMCtlChargingStateChanged(ICarSettings.WCMCtlChargingState wCMCtlChargingState) {
        }

        @SignalReceiver(signalId = ICarSettings.WCM_CTL_ERROR_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onWCMCtlErrorStateStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = 516)
        public void onWCMCtlFailureStateChanged(ICarSettings.WCMCtlFailureState wCMCtlFailureState) {
        }

        @SignalReceiver(signalId = 519, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onWCMCtlPromptStateStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarSettings.WCM_CTL_RESULT_STATE)
        public void onWCMCtlResultChanged(ICarSettings.WCMCtlResult wCMCtlResult) {
        }
    }

    private CarSettingsManager() {
    }

    public static synchronized CarSettingsManager get() {
        CarSettingsManager carSettingsManager;
        synchronized (CarSettingsManager.class) {
            if (sMe != null) {
                carSettingsManager = sMe;
            } else {
                carSettingsManager = new CarSettingsManager();
                sMe = carSettingsManager;
            }
        }
        return carSettingsManager;
    }

    public ICarSettings.LksState getLksState() {
        return ICarSettings.LksState.valueOf(getSignalValue(99).intValue());
    }

    public boolean setLdwLkaEnabled(boolean z) {
        return setSignalValue(32, z ? (byte) 2 : (byte) 1);
    }

    public ICarSettings.LksMode getLksMode() {
        return ICarSettings.LksMode.valueOf(getSignalValue(100).intValue());
    }

    public boolean setLksMode(ICarSettings.LksMode lksMode) {
        return setSignalValue(33, lksMode.value);
    }

    public IBaseApi.EnableStateOp getFCWOffEnableState() {
        return IBaseApi.EnableStateOp.valueOf(getSignalValue(101).intValue());
    }

    public boolean setFCWOffEnabled(boolean z) {
        return setSignalValue(34, z ? (byte) 1 : (byte) 2);
    }

    public ICarSettings.FCWWarningDistance getFCWWarningDistance() {
        return ICarSettings.FCWWarningDistance.valueOf(getSignalValue(102).intValue());
    }

    public boolean setFCWWarningDistance(ICarSettings.FCWWarningDistance fCWWarningDistance) {
        return setSignalValue(35, fCWWarningDistance.value);
    }

    public IBaseApi.EnableStateOp getAEBOffEnableState() {
        return IBaseApi.EnableStateOp.valueOf(getSignalValue(103).intValue());
    }

    public boolean setAEBOffEnabled(boolean z) {
        return setSignalValue(36, z ? (byte) 1 : (byte) 2);
    }

    public IBaseApi.EnableState getTSREnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(104).intValue());
    }

    public boolean setTSREnabled(boolean z) {
        return setSignalValue(37, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getTSRAudioWarningEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(105).intValue());
    }

    public boolean setTSRAudioWarningEnabled(boolean z) {
        return setSignalValue(38, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getIAccEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(106).intValue());
    }

    public boolean setIAccEnabled(boolean z) {
        return setSignalValue(39, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getOSRMAutoFoldEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(107).intValue());
    }

    public boolean setOSRMAutoFoldEnabled(boolean z) {
        return setSignalValue(40, z ? (byte) 2 : (byte) 1);
    }

    public ICarSettings.ADASWarnType getADASWarnType() {
        return ICarSettings.ADASWarnType.valueOf(getSignalValue(108).intValue());
    }

    public boolean setADASWarnType(ICarSettings.ADASWarnType aDASWarnType) {
        return setSignalValue(41, aDASWarnType.value);
    }

    public IBaseApi.EnableState getAVASEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(109).intValue());
    }

    public boolean setAVASEnabled(boolean z) {
        return setSignalValue(42, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getETCEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(110).intValue());
    }

    public boolean setETCEnabled(boolean z) {
        return setSignalValue(43, z ? (byte) 2 : (byte) 1);
    }

    public boolean isFrontWiperServicePositionEnabled() {
        return getSignalValue(111).byteValue() == 1;
    }

    public boolean performFrontWiperServicePositionButtonClick() {
        return setSignalValue(44, (byte) 1);
    }

    public ICarSettings.AutoWiperMode getAutoWiperMode() {
        return ICarSettings.AutoWiperMode.valueOf(getSignalValue(112).intValue());
    }

    public boolean setAutoWiperMode(ICarSettings.AutoWiperMode autoWiperMode) {
        return setSignalValue(45, autoWiperMode.value);
    }

    public ICarSettings.RainstormMode getRainstormMode() {
        return ICarSettings.RainstormMode.valueOf(getSignalValue(113).intValue());
    }

    public boolean setRainstormMode(ICarSettings.ShortcutMode shortcutMode) {
        return setSignalValue(46, shortcutMode.value);
    }

    public boolean setRearviewMirrorCmd(ICarSettings.RearviewMirrorCmd rearviewMirrorCmd) {
        return setSignalValue(ICarSettings.REARVIEW_MIRROR_CMD, rearviewMirrorCmd.value);
    }

    public boolean setRearviewMirrorCmdVdSwitch(boolean z) {
        return setSignalValue(ICarSettings.REARVIEW_MIRROR_CMD_VD, z ? (byte) 1 : (byte) 0);
    }

    public ICarSettings.RearviewMirrorState getRearviewMirrorStateL() {
        return ICarSettings.RearviewMirrorState.valueOf(getSignalValue(ICarSettings.REARVIEW_MIRROR_STATE_L).intValue());
    }

    public ICarSettings.RearviewMirrorState getRearviewMirrorStateR() {
        return ICarSettings.RearviewMirrorState.valueOf(getSignalValue(ICarSettings.REARVIEW_MIRROR_STATE_R).intValue());
    }

    public IBaseApi.EnableState getFrontCarDistanceDisplayEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.FRONT_CAR_DISTANCE_DISPLAY).intValue());
    }

    public boolean setFrontCarDistanceDisplayEnabled(boolean z) {
        return setSignalValue(ICarSettings.FRONT_CAR_DISTANCE_DISPLAY_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getIntelligentAvoidEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.INTELLIGENT_AVOID).intValue());
    }

    public boolean setIntelligentAvoidEnabled(boolean z) {
        return setSignalValue(ICarSettings.INTELLIGENT_AVOID_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public ICarSettings.CruiseAssistMode getCruiseAssistMode() {
        return ICarSettings.CruiseAssistMode.valueOf(getSignalValue(ICarSettings.CRUISE_ASSIST_MODE).intValue());
    }

    public boolean setCruiseAssistMode(ICarSettings.CruiseAssistMode cruiseAssistMode) {
        return setSignalValue(ICarSettings.CRUISE_ASSIST_MODE_SETTING, cruiseAssistMode.value);
    }

    public ICarSettings.RearviewMirrorCmdForReverse getRearviewMirrorCmdForReverse() {
        return ICarSettings.RearviewMirrorCmdForReverse.valueOf(getSignalValue(ICarSettings.REARVIEW_MIRROR_CMD_REVERSE_STATE).intValue());
    }

    public boolean setRearviewMirrorCmdForReverse(ICarSettings.RearviewMirrorCmdForReverse rearviewMirrorCmdForReverse) {
        return setSignalValue(ICarSettings.REARVIEW_MIRROR_CMD_REVERSE_SETTING, rearviewMirrorCmdForReverse.value);
    }

    public boolean setRearviewMirrorSettingCmd(ICarSettings.RearviewMirrorSettingCmd rearviewMirrorSettingCmd) {
        return setSignalValue(ICarSettings.REARVIEW_MIRROR_SETTING_CMD_SETTING, rearviewMirrorSettingCmd.value);
    }

    public ICarSettings.EPBSystemState getEPBSystemState() {
        return ICarSettings.EPBSystemState.valueOf(getSignalValue(ICarSettings.EPB_SYSTEM_STATE).intValue());
    }

    public boolean setEPBSystemSetState(ICarSettings.EPBSystemSetState ePBSystemSetState) {
        return setSignalValue(ICarSettings.EPB_SYSTEM_SET_STATE_SETTING, ePBSystemSetState.value);
    }

    public ICarSettings.DragMode getDragMode() {
        return ICarSettings.DragMode.valueOf(getSignalValue(ICarSettings.DRAG_MODE_STATE).intValue());
    }

    public boolean setDragModeEnabled(boolean z) {
        return setSignalValue(ICarSettings.DRAG_MODE_SETTING, z ? (byte) 1 : (byte) 2);
    }

    public ICarSettings.EPBSystemMsg getEPBSystemMsg() {
        return ICarSettings.EPBSystemMsg.valueOf(getSignalValue(ICarSettings.EPB_SYSTEM_MSG_STATE).intValue());
    }

    public ICarSettings.StpOnBrkToRelParkBrkIndOnState getStpOnBrkToRelParkBrkIndOnState() {
        return ICarSettings.StpOnBrkToRelParkBrkIndOnState.valueOf(getSignalValue(ICarSettings.STP_ONBRK_TO_REL_PARKBRK_INDON_STATE).intValue());
    }

    public ICarSettings.ParkAutoUnlockState getParkAutoUnlock() {
        return ICarSettings.ParkAutoUnlockState.valueOf(getSignalValue(ICarSettings.PARK_AUTO_UNLOCK_STATE).intValue());
    }

    public boolean setParkAutoUnlock(ICarSettings.ParkAutoUnlockState parkAutoUnlockState) {
        return setSignalValue(ICarSettings.PARK_AUTO_UNLOCK_SETTING, parkAutoUnlockState.value);
    }

    public IBaseApi.EnableState getKeyNotforgetWarningEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.KEY_NOT_FORGET_WARNING).intValue());
    }

    public boolean setKeyNotforgetWarningEnabled(boolean z) {
        return setSignalValue(ICarSettings.KEY_NOT_FORGET_WARNING_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getPowerKeepReq() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.POWER_KEEP_STATE).intValue());
    }

    public boolean setPowerKeepReqEnabled(boolean z) {
        return setSignalValue(ICarSettings.POWER_KEEP_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getPowerKeepReqVd() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.POWER_KEEP_REQVD_STATE).intValue());
    }

    public boolean setPowerKeepReqVdSwitch(boolean z) {
        return setSignalValue(ICarSettings.POWER_KEEP_REQVD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public IBaseApi.EnableState getPowerKeepRemindReq() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.POWER_KEEP_REMIND_STATE).intValue());
    }

    public IBaseApi.EnableState getPowerKeepRemindConf() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.POWER_KEEP_REMIND_CONF).intValue());
    }

    public boolean setPowerKeepRemindConfEnabled(boolean z) {
        return setSignalValue(ICarSettings.POWER_KEEP_REMIND_CONF_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getPowerOffReqVd() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.POWER_OFF_REQ_VD_STATE).intValue());
    }

    public boolean setPowerOffReqVdSwitch(boolean z) {
        return setSignalValue(ICarSettings.POWER_OFF_REQ_VD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public boolean setPowerOffReqSwitch(boolean z) {
        return setSignalValue(ICarSettings.POWER_OFF_REQ_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public IBaseApi.EnableState getAcSmart() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.AC_SMART_STATE).intValue());
    }

    public boolean setAcSmartEnabled(boolean z) {
        return setSignalValue(ICarSettings.AC_SMART_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public ICarSettings.ComfortParkState getComfortParkState() {
        return ICarSettings.ComfortParkState.valueOf(getSignalValue(ICarSettings.COMFORT_PARK_STATE).intValue());
    }

    public boolean setComfortParkStateEnabled(boolean z) {
        return setSignalValue(ICarSettings.COMFORT_PARK_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public boolean isDoorHandleElectricHideEnabled() {
        return getSignalValue(ICarSettings.DOOR_HANDLE_ELECTRIC_HIDE_STATE).byteValue() == 1;
    }

    public boolean setDoorHandleElectricHideEnabled(boolean z) {
        return setSignalValue(ICarSettings.DOOR_HANDLE_ELECTRIC_HIDE_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public ICarSettings.OSRMRAngleCmd getOSRMRAngleCmd() {
        return ICarSettings.OSRMRAngleCmd.valueOf(getSignalValue(ICarSettings.OSRM_ANGLE_CMD_STATE).intValue());
    }

    public boolean setOSRMRAngleCmd(ICarSettings.OSRMRAngleCmd oSRMRAngleCmd) {
        return setSignalValue(ICarSettings.OSRM_ANGLE_CMD_SETTING, oSRMRAngleCmd.value);
    }

    public boolean setOSRMRAngleSaveCmd(ICarSettings.OSRMRAngleSaveCmd oSRMRAngleSaveCmd) {
        return setSignalValue(ICarSettings.OSRM_ANGLE_SAVE_CMD_SETTING, oSRMRAngleSaveCmd.value);
    }

    public int getOSRMRAngleVerticalFL() {
        return getSignalValue(ICarSettings.OSRMR_ANGLE_VERTICAL_FL).intValue();
    }

    public int getOSRMRAngleHorizontalFL() {
        return getSignalValue(ICarSettings.OSRMR_ANGLE_HORIZONTAL_FL).intValue();
    }

    public int getOSRMRAngleVerticalFR() {
        return getSignalValue(ICarSettings.OSRMR_ANGLE_VERTICAL_FR).intValue();
    }

    public int getOSRMRAngleHorizontalFR() {
        return getSignalValue(ICarSettings.OSRMR_ANGLE_HORIZONTAL_FR).intValue();
    }

    public boolean isDriverEasyEntryAndExitEnabled() {
        return getSignalValue(ICarSettings.DRIVER_EASY_ENTRY_EXIT_STATE).byteValue() == 1;
    }

    public boolean setDriverEasyEntryAndExitEnabled(boolean z) {
        return setSignalValue(ICarSettings.DRIVER_EASY_ENTRY_EXIT_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public ICarSettings.WCMCtlResult getWCMCtlResult() {
        return ICarSettings.WCMCtlResult.valueOf(getSignalValue(ICarSettings.WCM_CTL_RESULT_STATE).intValue());
    }

    public boolean setWCMCtl(ICarSettings.WCMCtl wCMCtl) {
        return setSignalValue(ICarSettings.WCM_CTL_SETTING, wCMCtl.value);
    }

    public ICarSettings.WCMCtlChargingState getWCMCtlChargingState() {
        return ICarSettings.WCMCtlChargingState.valueOf(getSignalValue(515).intValue());
    }

    public ICarSettings.WCMCtlFailureState getWCMCtlFailureState() {
        return ICarSettings.WCMCtlFailureState.valueOf(getSignalValue(516).intValue());
    }

    public ICarSettings.WCLCMWorkMode getWCLCMWorkMode() {
        return ICarSettings.WCLCMWorkMode.valueOf(getSignalValue(ICarSettings.WCLCM_WORK_MODE_STATE).intValue());
    }

    public boolean setWCLCMWorkModeCtl(ICarSettings.WCLCMWorkModeCtl wCLCMWorkModeCtl) {
        return setSignalValue(ICarSettings.WCLCM_WORK_MODE_CTL_SETTING, wCLCMWorkModeCtl.value);
    }

    public ICarSettings.BSDMLcaState getBSDMLcaState() {
        return ICarSettings.BSDMLcaState.valueOf(getSignalValue(ICarSettings.BSDMLCA_STATE).intValue());
    }

    public boolean setBSDMLcaCtl(ICarSettings.BSDMLcaCtl bSDMLcaCtl) {
        return setSignalValue(ICarSettings.BSDMLCACTL_SETTING, bSDMLcaCtl.value);
    }

    public ICarSettings.BSDMDowState getBSDMDowState() {
        return ICarSettings.BSDMDowState.valueOf(getSignalValue(ICarSettings.BSDMDOWSTATE_STATE).intValue());
    }

    public boolean setBSDMDowCtl(ICarSettings.BSDMDowCtl bSDMDowCtl) {
        return setSignalValue(ICarSettings.BSDMDOWCTL_SETTING, bSDMDowCtl.value);
    }

    public ICarSettings.BSDMRctaState getBSDMRctaState() {
        return ICarSettings.BSDMRctaState.valueOf(getSignalValue(ICarSettings.BSDMRCTA_STATE).intValue());
    }

    public boolean setBSDMRctaCtl(ICarSettings.BSDMRctaCtl bSDMRctaCtl) {
        return setSignalValue(ICarSettings.BSDMRCTA_CTL_SETTING, bSDMRctaCtl.value);
    }

    public ICarSettings.BSDMRctaAssistType getBSDMRctaAssistType() {
        return ICarSettings.BSDMRctaAssistType.valueOf(getSignalValue(ICarSettings.BSDMRCTA_ASSIST_TYPE_STATE).intValue());
    }

    public boolean setBSDMRctaAssistType(ICarSettings.BSDMRctaAssistType bSDMRctaAssistType) {
        return setSignalValue(ICarSettings.BSDMRCTA_ASSIST_TYPE_SETTING, bSDMRctaAssistType.value);
    }

    public ICarSettings.BSDMRcwState getBSDMRcwState() {
        return ICarSettings.BSDMRcwState.valueOf(getSignalValue(ICarSettings.BSDMRCWSTATE_STATE).intValue());
    }

    public boolean setBSDMRcwCtl(ICarSettings.BSDMRcwCtl bSDMRcwCtl) {
        return setSignalValue(ICarSettings.BSDMRCWCTL_SETTING, bSDMRcwCtl.value);
    }

    public ICarSettings.HudOffState getHudOffState() {
        return ICarSettings.HudOffState.valueOf(getSignalValue(ICarSettings.HUDOFF_STATE).intValue());
    }

    public boolean setHudOffState(ICarSettings.HudOffState hudOffState) {
        return setSignalValue(ICarSettings.HUDOFF_SETTING, hudOffState.value);
    }

    public int getHudBrightnessSt() {
        return getSignalValue(ICarSettings.HUDBRIGHTNESSST_STATE).intValue();
    }

    public boolean setHudBrightnessSt(int i) {
        return setSignalValue(ICarSettings.HUDBRIGHTNESSST_SETTING, i);
    }

    public int getHudHeightSt() {
        return getSignalValue(ICarSettings.HUDHEIGHTST_STATE).intValue();
    }

    public boolean setHudHeightSt(int i) {
        return setSignalValue(ICarSettings.HUDHEIGHTST_SETTING, i);
    }

    public int getHudAngleSt() {
        return getSignalValue(ICarSettings.HUD_ANGLEST_STATE).intValue();
    }

    public boolean setHudAngleSt(int i) {
        return setSignalValue(ICarSettings.HUD_ANGLEST_SETTING, i);
    }

    public ICarSettings.HudMode getHudMode() {
        return ICarSettings.HudMode.valueOf(getSignalValue(ICarSettings.HUD_MODE_STATE).intValue());
    }

    public boolean setHudMode(ICarSettings.HudMode hudMode) {
        return setSignalValue(ICarSettings.HUD_MODE_SETTING, hudMode.value);
    }

    public boolean isWCMCtlPromptStateEnabled() {
        return getSignalValue(519).byteValue() == 1;
    }

    public boolean isWCMCtlErrorStateEnabled() {
        return getSignalValue(ICarSettings.WCM_CTL_ERROR_STATE).byteValue() == 1;
    }

    public ICarSettings.ADASELKStatus getADASELKStatus() {
        return ICarSettings.ADASELKStatus.valueOf(getSignalValue(ICarSettings.ADASELK_STATE).intValue());
    }

    public boolean setADASELKEnabled(boolean z) {
        return setSignalValue(ICarSettings.ADASELK_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public ICarSettings.EMSEngWaveStatus getEMSEngWaveStatus() {
        return ICarSettings.EMSEngWaveStatus.valueOf(getSignalValue(ICarSettings.ENG_WAVE_SWITCH_STATE).intValue());
    }

    public boolean setEMSEngWaveEnabled(boolean z) {
        return setSignalValue(ICarSettings.ENG_WAVE_SWITCH_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getRLSeatWelcome() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.RLSEATWELCOME).intValue());
    }

    public boolean setRLSeatWelcomeEnabled(boolean z) {
        return setSignalValue(ICarSettings.RLSEATWELCOME_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getRRSeatWelcome() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.RRSEATWELCOME).intValue());
    }

    public boolean setRRSeatWelcomeEnabled(boolean z) {
        return setSignalValue(ICarSettings.RRSEATWELCOME_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getRLSPABUttonState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.RL_SPA_BUTTON_STATE).intValue());
    }

    public IBaseApi.EnableState getRRSPABUttonState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.RR_SPA_BUTTON_STATE).intValue());
    }

    public boolean setSCMNapSettingSwitch(boolean z) {
        return setSignalValue(ICarSettings.SCM_NAP_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public boolean setSCMNapSettingSave(ICarSettings.NapSettingSave napSettingSave) {
        return setSignalValue(ICarSettings.SCM_NAP_SETTING_SAVE, napSettingSave.value);
    }

    public IBaseApi.EnableState getSeatNapModePositionState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSettings.SCM_NAP_SETTING_SAVE_STATE).intValue());
    }

    public void registerListener(CarSettingsListener carSettingsListener) {
        registerReceiver(carSettingsListener);
    }

    public void unregisterListener(CarSettingsListener carSettingsListener) {
        unregisterReceiver(carSettingsListener);
    }
}
