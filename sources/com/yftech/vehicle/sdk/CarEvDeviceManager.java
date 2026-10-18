package com.yftech.vehicle.sdk;

import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarEvDevice;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarEvDeviceManager extends BaseApiManager implements ICarEvDevice {
    private static final String TAG = "CarEvDeviceManager";
    private static CarEvDeviceManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarEvDeviceListener {
        @SignalReceiver(signalId = ICarEvDevice.BATTERY_QUANTITY_PERCENT)
        public void onBatteryQuantityPercentChanged(float f) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_START_DAY)
        public void onBookChrgStartDayChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_START_HOUR)
        public void onBookChrgStartHourChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_START_MIN)
        public void onBookChrgStartMinChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_START_MON)
        public void onBookChrgStartMonChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_START_REMAINING_DAY)
        public void onBookChrgStartRemainingDayChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_START_REMAINING_HOUR)
        public void onBookChrgStartRemainingHourChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_START_REMAINING_MIN)
        public void onBookChrgStartRemainingMinChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_START_YEAR)
        public void onBookChrgStartYearChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_STOP_DAY)
        public void onBookChrgStopDayChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_STOP_HOUR)
        public void onBookChrgStopHourChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_STOP_MIN)
        public void onBookChrgStopMinChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_STOP_MON)
        public void onBookChrgStopMonChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.BOOK_CHRG_STOP_YEAR)
        public void onBookChrgStopYearChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.CHG_ACTIVE_STATE)
        public void onChargActiveChanged(ICarEvDevice.ChargActive chargActive) {
        }

        @SignalReceiver(signalId = ICarEvDevice.CHARG_CURRENT_STATE)
        public void onChargCurrentChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.DSP_CHG_STATE)
        public void onChargStateChanged(ICarEvDevice.ChargState chargState) {
        }

        @SignalReceiver(signalId = ICarEvDevice.CHARGE_FULL_NOTICE_LEVEL)
        public void onChargeFullNoticeLevelChanged(ICarEvDevice.ChargeFullNoticeLevel chargeFullNoticeLevel) {
        }

        @SignalReceiver(signalId = ICarEvDevice.CHARGE_MODE_STATE)
        public void onChargeModeChanged(ICarEvDevice.ChargeMode chargeMode) {
        }

        @SignalReceiver(signalId = ICarEvDevice.CHARGE_SOC_PERCENT_STATE)
        public void onChargeSocPercentChanged(ICarEvDevice.ChargeSocPercent chargeSocPercent) {
        }

        @SignalReceiver(signalId = ICarEvDevice.CHARGE_SOC_PERCENT_VALID_STATE)
        public void onChargeSocPercentValidEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarEvDevice.CHARGE_WARM_TIME_STATE)
        public void onChargeWarmTimeChanged(ICarEvDevice.ChargeWarmTime chargeWarmTime) {
        }

        @SignalReceiver(signalId = ICarEvDevice.CHARGE_WARM_TIME_VALID_STATE)
        public void onChargeWarmTimeValidEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarEvDevice.DISCHG_ACTIVE_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDischgActiveStateStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarEvDevice.DISCHG_END_VEHRNG_STATE)
        public void onDischgEndVehRngChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.DISCHG_ENG_START_CFG_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDischgEngStartCfgStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarEvDevice.DISCHG_SET_INFO)
        public void onDischgSetInfoChanged(ICarEvDevice.DischgSetInfo dischgSetInfo) {
        }

        @SignalReceiver(signalId = ICarEvDevice.DISCHG_SOC_CFG_STATE)
        public void onDischgSocCfgChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.DISCHG_TIME_CFG_STATE)
        public void onDischgTimeCfgChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.DRIVE_MODE_EV)
        public void onDriveModeEvChanged(ICarEvDevice.DriveModeEv driveModeEv) {
        }

        @SignalReceiver(signalId = ICarEvDevice.DRV_TARGET_SOE_STATE)
        public void onDrvTargetSOEChanged(int i) {
        }

        @SignalReceiver(signalId = ICarEvDevice.ECO_MODE_VALID_STATE)
        public void onEcoModeEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarEvDevice.ECO_NORMAL_SPORT_MODE_VALID_STATE)
        public void onEcoNormalSportModeEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarEvDevice.ECO_PLUS_MODE_VALID_STATE)
        public void onEcoPlusModeEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarEvDevice.ENERGY_MODEL)
        public void onEnergyModelChanged(ICarEvDevice.EnergyModel energyModel) {
        }

        @SignalReceiver(signalId = ICarEvDevice.ENG_SELF_MAINT_DISP_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onEngSelfMaintDispStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarEvDevice.HEAL_CHECK_NOTICE_STATE)
        public void onHealCheckNoticeChanged(ICarEvDevice.HealCheckNotice healCheckNotice) {
        }

        @SignalReceiver(signalId = ICarEvDevice.IPEDAL_CREEP_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onIpedalCreepStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarEvDevice.IPEDAL_CREEP_VALID_STATE)
        public void onIpedalCreepValidEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarEvDevice.IPEDAL_MODE_VALID_STATE)
        public void onIpedalModeEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = 513)
        public void onObcConnStateChanged(ICarEvDevice.ObcConnState obcConnState) {
        }

        @SignalReceiver(signalId = ICarEvDevice.PLUG_AUTO_UNLOCK_CFG)
        public void onPlugAutoUnlockCfgChanged(ICarEvDevice.PlugAutoUnlockCfg plugAutoUnlockCfg) {
        }

        @SignalReceiver(signalId = ICarEvDevice.POWER_FLOW_MODE)
        public void onPowerFlowModeChanged(ICarEvDevice.PowerFlowMode powerFlowMode) {
        }

        @SignalReceiver(signalId = ICarEvDevice.RECUPERATION_LEVEL_VALID_STATE)
        public void onRecpLevelAvailChanged(ICarEvDevice.RecpLevelAvail recpLevelAvail) {
        }

        @SignalReceiver(signalId = ICarEvDevice.RECUPERATION_LEVEL_A9E)
        public void onRecuperationLevelA9EChanged(ICarEvDevice.RecuperationLevelA9E recuperationLevelA9E) {
        }

        @SignalReceiver(signalId = ICarEvDevice.RECUPERATION_LEVEL)
        public void onRecuperationLevelChanged(ICarEvDevice.RecuperationLevel recuperationLevel) {
        }

        @SignalReceiver(signalId = ICarEvDevice.REPEAT_BOOK_CHRG_DAY1)
        public void onRepeatBookChrgDay1Changed(ICarEvDevice.RepeatBookMode repeatBookMode) {
        }

        @SignalReceiver(signalId = ICarEvDevice.REPEAT_BOOK_CHRG_DAY2)
        public void onRepeatBookChrgDay2Changed(ICarEvDevice.RepeatBookMode repeatBookMode) {
        }

        @SignalReceiver(signalId = ICarEvDevice.REPEAT_BOOK_CHRG_DAY3)
        public void onRepeatBookChrgDay3Changed(ICarEvDevice.RepeatBookMode repeatBookMode) {
        }

        @SignalReceiver(signalId = ICarEvDevice.REPEAT_BOOK_CHRG_DAY4)
        public void onRepeatBookChrgDay4Changed(ICarEvDevice.RepeatBookMode repeatBookMode) {
        }

        @SignalReceiver(signalId = ICarEvDevice.REPEAT_BOOK_CHRG_DAY5)
        public void onRepeatBookChrgDay5Changed(ICarEvDevice.RepeatBookMode repeatBookMode) {
        }

        @SignalReceiver(signalId = ICarEvDevice.REPEAT_BOOK_CHRG_DAY6)
        public void onRepeatBookChrgDay6Changed(ICarEvDevice.RepeatBookMode repeatBookMode) {
        }

        @SignalReceiver(signalId = ICarEvDevice.REPEAT_BOOK_CHRG_DAY7)
        public void onRepeatBookChrgDay7Changed(ICarEvDevice.RepeatBookMode repeatBookMode) {
        }

        @SignalReceiver(signalId = ICarEvDevice.VEH_RDY_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onVehRdyStateStateChanged(boolean z) {
        }
    }

    private CarEvDeviceManager() {
    }

    public static synchronized CarEvDeviceManager get() {
        CarEvDeviceManager carEvDeviceManager;
        synchronized (CarEvDeviceManager.class) {
            if (sMe != null) {
                carEvDeviceManager = sMe;
            } else {
                carEvDeviceManager = new CarEvDeviceManager();
                sMe = carEvDeviceManager;
            }
        }
        return carEvDeviceManager;
    }

    public ICarEvDevice.PowerFlowMode getPowerFlowMode() {
        return ICarEvDevice.PowerFlowMode.valueOf(getSignalValue(ICarEvDevice.POWER_FLOW_MODE).intValue());
    }

    public float getBatteryQuantityPercent() {
        return getSignalValue(ICarEvDevice.BATTERY_QUANTITY_PERCENT).floatValue();
    }

    public ICarEvDevice.RecuperationLevel getRecuperationLevel() {
        return ICarEvDevice.RecuperationLevel.valueOf(getSignalValue(ICarEvDevice.RECUPERATION_LEVEL).intValue());
    }

    public boolean setRecuperationLevel(ICarEvDevice.RecuperationLevel recuperationLevel) {
        return setSignalValue(ICarEvDevice.RECUPERATION_LEVEL_SETTING, recuperationLevel.value);
    }

    public ICarEvDevice.RecpLevelAvail getRecpLevelAvail() {
        return ICarEvDevice.RecpLevelAvail.valueOf(getSignalValue(ICarEvDevice.RECUPERATION_LEVEL_VALID_STATE).intValue());
    }

    public ICarEvDevice.DriveModeEv getDriveModeEv() {
        return ICarEvDevice.DriveModeEv.valueOf(getSignalValue(ICarEvDevice.DRIVE_MODE_EV).intValue());
    }

    public boolean setDriveModeEv(ICarEvDevice.DriveModeEv driveModeEv) {
        return setSignalValue(ICarEvDevice.DRIVE_MODE_EV_SETTING, driveModeEv.value);
    }

    public boolean setEcoPlusMode(ICarEvDevice.EcoPlusMode ecoPlusMode) {
        return setSignalValue(ICarEvDevice.ECO_PLUS_MODE, ecoPlusMode.value);
    }

    public IBaseApi.EnableState getEcoPlusModeEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarEvDevice.ECO_PLUS_MODE_VALID_STATE).intValue());
    }

    public IBaseApi.EnableState getEcoModeEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarEvDevice.ECO_MODE_VALID_STATE).intValue());
    }

    public IBaseApi.EnableState getIpedalModeEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarEvDevice.IPEDAL_MODE_VALID_STATE).intValue());
    }

    public IBaseApi.EnableState getEcoNormalSportModeEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarEvDevice.ECO_NORMAL_SPORT_MODE_VALID_STATE).intValue());
    }

    public boolean isIpedalCreepEnabled() {
        return getSignalValue(ICarEvDevice.IPEDAL_CREEP_STATE).byteValue() == 1;
    }

    public boolean setIpedalCreepEnabled(boolean z) {
        return setSignalValue(ICarEvDevice.IPEDAL_CREEP_SETTING, z ? (byte) 1 : (byte) 2);
    }

    public IBaseApi.EnableState getIpedalCreepValidEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarEvDevice.IPEDAL_CREEP_VALID_STATE).intValue());
    }

    public ICarEvDevice.ChargeSocPercent getChargeSocPercent() {
        return ICarEvDevice.ChargeSocPercent.valueOf(getSignalValue(ICarEvDevice.CHARGE_SOC_PERCENT_STATE).intValue());
    }

    public boolean setChargeSocPercent(ICarEvDevice.ChargeSocPercent chargeSocPercent) {
        return setSignalValue(ICarEvDevice.CHARGE_SOC_PERCENT_SETTING, chargeSocPercent.value);
    }

    public IBaseApi.EnableState getChargeSocPercentValidEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarEvDevice.CHARGE_SOC_PERCENT_VALID_STATE).intValue());
    }

    public ICarEvDevice.ChargeWarmTime getChargeWarmTime() {
        return ICarEvDevice.ChargeWarmTime.valueOf(getSignalValue(ICarEvDevice.CHARGE_WARM_TIME_STATE).intValue());
    }

    public boolean setChargeWarmTime(ICarEvDevice.ChargeWarmTime chargeWarmTime) {
        return setSignalValue(ICarEvDevice.CHARGE_WARM_TIME_SETTING, chargeWarmTime.value);
    }

    public IBaseApi.EnableState getChargeWarmTimeValidEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarEvDevice.CHARGE_WARM_TIME_VALID_STATE).intValue());
    }

    public ICarEvDevice.ChargeFullNoticeLevel getChargeFullNoticeLevel() {
        return ICarEvDevice.ChargeFullNoticeLevel.valueOf(getSignalValue(ICarEvDevice.CHARGE_FULL_NOTICE_LEVEL).intValue());
    }

    public ICarEvDevice.HealCheckNotice getHealCheckNotice() {
        return ICarEvDevice.HealCheckNotice.valueOf(getSignalValue(ICarEvDevice.HEAL_CHECK_NOTICE_STATE).intValue());
    }

    public int getBookChrgStartRemainingDay() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_START_REMAINING_DAY).intValue();
    }

    public int getBookChrgStartRemainingHour() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_START_REMAINING_HOUR).intValue();
    }

    public int getBookChrgStartRemainingMin() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_START_REMAINING_MIN).intValue();
    }

    public int getBookChrgStartYear() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_START_YEAR).intValue();
    }

    public int getBookChrgStartMon() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_START_MON).intValue();
    }

    public int getBookChrgStartDay() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_START_DAY).intValue();
    }

    public int getBookChrgStartHour() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_START_HOUR).intValue();
    }

    public int getBookChrgStartMin() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_START_MIN).intValue();
    }

    public int getBookChrgStopYear() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_STOP_YEAR).intValue();
    }

    public int getBookChrgStopMon() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_STOP_MON).intValue();
    }

    public int getBookChrgStopDay() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_STOP_DAY).intValue();
    }

    public int getBookChrgStopHour() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_STOP_HOUR).intValue();
    }

    public int getBookChrgStopMin() {
        return getSignalValue(ICarEvDevice.BOOK_CHRG_STOP_MIN).intValue();
    }

    public ICarEvDevice.ChargeMode getChargeMode() {
        return ICarEvDevice.ChargeMode.valueOf(getSignalValue(ICarEvDevice.CHARGE_MODE_STATE).intValue());
    }

    public ICarEvDevice.RepeatBookMode getRepeatBookChrgDay1() {
        return ICarEvDevice.RepeatBookMode.valueOf(getSignalValue(ICarEvDevice.REPEAT_BOOK_CHRG_DAY1).intValue());
    }

    public ICarEvDevice.RepeatBookMode getRepeatBookChrgDay2() {
        return ICarEvDevice.RepeatBookMode.valueOf(getSignalValue(ICarEvDevice.REPEAT_BOOK_CHRG_DAY2).intValue());
    }

    public ICarEvDevice.RepeatBookMode getRepeatBookChrgDay3() {
        return ICarEvDevice.RepeatBookMode.valueOf(getSignalValue(ICarEvDevice.REPEAT_BOOK_CHRG_DAY3).intValue());
    }

    public ICarEvDevice.RepeatBookMode getRepeatBookChrgDay4() {
        return ICarEvDevice.RepeatBookMode.valueOf(getSignalValue(ICarEvDevice.REPEAT_BOOK_CHRG_DAY4).intValue());
    }

    public ICarEvDevice.RepeatBookMode getRepeatBookChrgDay5() {
        return ICarEvDevice.RepeatBookMode.valueOf(getSignalValue(ICarEvDevice.REPEAT_BOOK_CHRG_DAY5).intValue());
    }

    public ICarEvDevice.RepeatBookMode getRepeatBookChrgDay6() {
        return ICarEvDevice.RepeatBookMode.valueOf(getSignalValue(ICarEvDevice.REPEAT_BOOK_CHRG_DAY6).intValue());
    }

    public ICarEvDevice.RepeatBookMode getRepeatBookChrgDay7() {
        return ICarEvDevice.RepeatBookMode.valueOf(getSignalValue(ICarEvDevice.REPEAT_BOOK_CHRG_DAY7).intValue());
    }

    public ICarEvDevice.RecuperationLevelA9E getRecuperationLevelA9E() {
        return ICarEvDevice.RecuperationLevelA9E.valueOf(getSignalValue(ICarEvDevice.RECUPERATION_LEVEL_A9E).intValue());
    }

    public boolean setRecuperationLevelA9E(ICarEvDevice.RecuperationLevelA9E recuperationLevelA9E) {
        return setSignalValue(ICarEvDevice.RECUPERATION_LEVEL_A9E_SETTING, recuperationLevelA9E.value);
    }

    public boolean isVehRdyStateEnabled() {
        return getSignalValue(ICarEvDevice.VEH_RDY_STATE).byteValue() == 1;
    }

    public boolean isEngSelfMaintDispEnabled() {
        return getSignalValue(ICarEvDevice.ENG_SELF_MAINT_DISP_STATE).byteValue() == 1;
    }

    public ICarEvDevice.EnergyModel getEnergyModel() {
        return ICarEvDevice.EnergyModel.valueOf(getSignalValue(ICarEvDevice.ENERGY_MODEL).intValue());
    }

    public boolean setEnergyModel(ICarEvDevice.EnergyModel energyModel) {
        return setSignalValue(ICarEvDevice.ENERGY_MODEL_SETTING, energyModel.value);
    }

    public int getDrvTargetSOE() {
        return getSignalValue(ICarEvDevice.DRV_TARGET_SOE_STATE).intValue();
    }

    public boolean setDrvTargetSOE(int i) {
        return setSignalValue(ICarEvDevice.DRV_TARGET_SOE_SETTING, i);
    }

    public boolean isDischgEngStartCfgEnabled() {
        return getSignalValue(ICarEvDevice.DISCHG_ENG_START_CFG_STATE).byteValue() == 1;
    }

    public boolean setDischgEngStartCfg(ICarEvDevice.EngStartCfg engStartCfg) {
        return setSignalValue(ICarEvDevice.DISCHG_ENG_START_CFG_SETTING, engStartCfg.value);
    }

    public int getDischgSocCfg() {
        return getSignalValue(ICarEvDevice.DISCHG_SOC_CFG_STATE).intValue();
    }

    public boolean setDischgSocCfg(int i) {
        return setSignalValue(ICarEvDevice.DISCHG_SOC_CFG_SETTING, i);
    }

    public boolean isDischgActiveStateEnabled() {
        return getSignalValue(ICarEvDevice.DISCHG_ACTIVE_STATE).byteValue() == 1;
    }

    public boolean setDischgActiveStateEnabled(boolean z) {
        return setSignalValue(ICarEvDevice.DISCHG_ACTIVE_SETTING, z ? (byte) 1 : (byte) 2);
    }

    public int getDischgEndVehRng() {
        return getSignalValue(ICarEvDevice.DISCHG_END_VEHRNG_STATE).intValue();
    }

    public int getDischgTimeCfg() {
        return getSignalValue(ICarEvDevice.DISCHG_TIME_CFG_STATE).intValue();
    }

    public boolean setDischgTimeCfg(int i) {
        return setSignalValue(ICarEvDevice.DISCHG_TIME_CFG_SETTING, i);
    }

    public ICarEvDevice.PlugAutoUnlockCfg getPlugAutoUnlockCfg() {
        return ICarEvDevice.PlugAutoUnlockCfg.valueOf(getSignalValue(ICarEvDevice.PLUG_AUTO_UNLOCK_CFG).intValue());
    }

    public boolean setPlugAutoUnlockCfg(ICarEvDevice.PlugAutoUnlockCfg plugAutoUnlockCfg) {
        return setSignalValue(ICarEvDevice.PLUG_AUTO_UNLOCK_CFG_SETTING, plugAutoUnlockCfg.value);
    }

    public ICarEvDevice.ChargState getChargState() {
        return ICarEvDevice.ChargState.valueOf(getSignalValue(ICarEvDevice.DSP_CHG_STATE).intValue());
    }

    public ICarEvDevice.ChargActive getChargActive() {
        return ICarEvDevice.ChargActive.valueOf(getSignalValue(ICarEvDevice.CHG_ACTIVE_STATE).intValue());
    }

    public boolean setChargEnd(ICarEvDevice.ChargEnd chargEnd) {
        return setSignalValue(ICarEvDevice.CHG_END_REQ_SETTING, chargEnd.value);
    }

    public int getChargCurrent() {
        return getSignalValue(ICarEvDevice.CHARG_CURRENT_STATE).intValue();
    }

    public boolean setChargCurrent(int i) {
        return setSignalValue(ICarEvDevice.CHARG_CURRENT_SETTING, i);
    }

    public ICarEvDevice.DischgSetInfo getDischgSetInfo() {
        return ICarEvDevice.DischgSetInfo.valueOf(getSignalValue(ICarEvDevice.DISCHG_SET_INFO).intValue());
    }

    public ICarEvDevice.ObcConnState getObcConnState() {
        return ICarEvDevice.ObcConnState.valueOf(getSignalValue(513).intValue());
    }

    public void registerListener(CarEvDeviceListener carEvDeviceListener) {
        registerReceiver(carEvDeviceListener);
    }

    public void unregisterListener(CarEvDeviceListener carEvDeviceListener) {
        unregisterReceiver(carEvDeviceListener);
    }
}
