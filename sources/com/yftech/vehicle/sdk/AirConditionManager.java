package com.yftech.vehicle.sdk;

import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IAirCondition;
import com.yftech.vehicle.internal.adapter.IBaseApi;

/* loaded from: /home/user/work/dex/classes4.dex */
public class AirConditionManager extends BaseApiManager implements IAirCondition {
    private static final String TAG = "AirConditionManager";
    private static AirConditionManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class AirConditionListener {
        @SignalReceiver(signalId = 78, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onACStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IAirCondition.AC_DISPLAY_POPUP_STATE)
        public void onAcDisplayPopupChanged(IAirCondition.AcDisplayPopup acDisplayPopup) {
        }

        @SignalReceiver(signalId = 85)
        public void onAirCirculationModeOfAutoModeChanged(IAirCondition.AirCirculationMode airCirculationMode) {
        }

        @SignalReceiver(signalId = 82)
        public void onAirCirculationStateChanged(IAirCondition.AirCirculationState airCirculationState) {
        }

        @SignalReceiver(signalId = IAirCondition.AIR_SELF_DRYING)
        public void onAirSelfDryingEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = IAirCondition.AIR_UNLOCK_VENTILATION)
        public void onAirUnlockVentilationEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = -1, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onAutoDeforstPresentStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = 83)
        public void onAutoModeChanged(IAirCondition.AutoMode autoMode) {
        }

        @SignalReceiver(signalId = IAirCondition.BATTERY_COOL_STATE)
        public void onBatCoolStateChanged(float f) {
        }

        @SignalReceiver(signalId = IAirCondition.BATTERY_FH_STATE)
        public void onBatFhWorkStateChanged(float f) {
        }

        @SignalReceiver(signalId = IAirCondition.BATTERY_PTC_STATE)
        public void onBatPtcWorkStateChanged(float f) {
        }

        @SignalReceiver(signalId = IAirCondition.BODYDISALARM_VENT_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onBodyDisalarmVentStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = 86)
        public void onComfortCurveModeChanged(IAirCondition.ComfortCurveMode comfortCurveMode) {
        }

        @SignalReceiver(signalId = IAirCondition.CUP_HOLDER_AUTO_MODE)
        public void onCupholderAutoModeChanged(IAirCondition.CupholderAutoMode cupholderAutoMode) {
        }

        @SignalReceiver(signalId = IAirCondition.CUP_HOLDER_HEAT_COOL_MODE)
        public void onCupholderHeatCoolModeChanged(IAirCondition.CupholderHeatCoolMode cupholderHeatCoolMode) {
        }

        @SignalReceiver(signalId = 74)
        public void onDriverTemperatureChanged(float f) {
        }

        @SignalReceiver(signalId = 80, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDualSyncStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = -1)
        public void onEcoModeChanged(IAirCondition.EcoMode ecoMode) {
        }

        @SignalReceiver(signalId = IAirCondition.AC_ENVIRONMENT_TEMPERATURE)
        public void onEnvironmentTemperatureChanged(float f) {
        }

        @SignalReceiver(signalId = 84)
        public void onFanSpeedOfAutoModeChanged(IAirCondition.FanSpeed fanSpeed) {
        }

        @SignalReceiver(signalId = IAirCondition.FRONT_EFROST_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onFrontDefrostStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = 81, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onIonStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IAirCondition.ONE_BUTTON_VENTLAION_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onOneBtnVentlaionStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IAirCondition.AC_OUT_AIRQUALITY_LEVEL)
        public void onOutAirQualityLevelChanged(float f) {
        }

        @SignalReceiver(signalId = 75)
        public void onPassengerTemperatureChanged(float f) {
        }

        @SignalReceiver(signalId = -1, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onPowerStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IAirCondition.REAR_AC_AUTO_MODE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onRearAcAutoModeStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IAirCondition.REAR_AC_TEMPERATURE)
        public void onRearAcTemperatureChanged(float f) {
        }

        @SignalReceiver(signalId = IAirCondition.REAR_AC_WIND_MODE)
        public void onRearAcWindModeChanged(IAirCondition.WindMode windMode) {
        }

        @SignalReceiver(signalId = IAirCondition.REAR_AC_WIND_SPEED)
        public void onRearAcWindSpeedChanged(IAirCondition.WindSpeed windSpeed) {
        }

        @SignalReceiver(signalId = 79, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onRearDefrostStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = -1)
        public void onWORKINGPOWERChanged(float f) {
        }

        @SignalReceiver(signalId = 77)
        public void onWindModeChanged(IAirCondition.WindMode windMode) {
        }

        @SignalReceiver(signalId = 76)
        public void onWindSpeedChanged(IAirCondition.WindSpeed windSpeed) {
        }
    }

    private AirConditionManager() {
    }

    public static synchronized AirConditionManager get() {
        AirConditionManager airConditionManager;
        synchronized (AirConditionManager.class) {
            if (sMe != null) {
                airConditionManager = sMe;
            } else {
                airConditionManager = new AirConditionManager();
                sMe = airConditionManager;
            }
        }
        return airConditionManager;
    }

    public float getDriverTemperature() {
        return getSignalValue(74).floatValue();
    }

    public boolean setDriverTemperature(float f) {
        return setSignalValue(0, f);
    }

    public float getPassengerTemperature() {
        return getSignalValue(75).floatValue();
    }

    public boolean setPassengerTemperature(float f) {
        return setSignalValue(1, f);
    }

    public IAirCondition.WindSpeed getWindSpeed() {
        return IAirCondition.WindSpeed.valueOf(getSignalValue(76).intValue());
    }

    public boolean setWindSpeed(IAirCondition.WindSpeed windSpeed) {
        return setSignalValue(2, windSpeed.value);
    }

    public boolean performOffButtonClick() {
        return setSignalValue(3, (byte) 1);
    }

    public IAirCondition.WindMode getWindMode() {
        return IAirCondition.WindMode.valueOf(getSignalValue(77).intValue());
    }

    public boolean setWindMode(IAirCondition.WindMode windMode) {
        return setSignalValue(4, windMode.value);
    }

    public boolean isFrontDefrostEnabled() {
        return getSignalValue(IAirCondition.FRONT_EFROST_STATE).byteValue() == 1;
    }

    public boolean performFrontDefrostButtonClick() {
        return setSignalValue(5, (byte) 1);
    }

    public boolean isACEnabled() {
        return getSignalValue(78).byteValue() == 1;
    }

    public boolean performACButtonClick() {
        return setSignalValue(6, (byte) 1);
    }

    public boolean isRearDefrostEnabled() {
        return getSignalValue(79).byteValue() == 1;
    }

    public boolean performRearDefrostButtonClick() {
        return setSignalValue(7, (byte) 1);
    }

    public boolean isDualSyncEnabled() {
        return getSignalValue(80).byteValue() == 1;
    }

    public boolean performDualSyncButtonClick() {
        return setSignalValue(8, (byte) 1);
    }

    public boolean isIonEnabled() {
        return getSignalValue(81).byteValue() == 1;
    }

    public boolean performIonButtonClick() {
        return setSignalValue(9, (byte) 1);
    }

    public IAirCondition.AirCirculationState getAirCirculationState() {
        return IAirCondition.AirCirculationState.valueOf(getSignalValue(82).intValue());
    }

    public boolean performCirculationButtonClick() {
        return setSignalValue(10, (byte) 1);
    }

    public IAirCondition.AutoMode getAutoMode() {
        return IAirCondition.AutoMode.valueOf(getSignalValue(83).intValue());
    }

    public boolean performAutoButtonClick() {
        return setSignalValue(11, (byte) 1);
    }

    public IAirCondition.FanSpeed getFanSpeedOfAutoMode() {
        return IAirCondition.FanSpeed.valueOf(getSignalValue(84).intValue());
    }

    public boolean setFanSpeedOfAutoMode(IAirCondition.FanSpeed fanSpeed) {
        return setSignalValue(12, fanSpeed.value);
    }

    public IAirCondition.AirCirculationMode getAirCirculationModeOfAutoMode() {
        return IAirCondition.AirCirculationMode.valueOf(getSignalValue(85).intValue());
    }

    public boolean setAirCirculationModeOfAutoMode(IAirCondition.AirCirculationMode airCirculationMode) {
        return setSignalValue(13, airCirculationMode.value);
    }

    public IAirCondition.ComfortCurveMode getComfortCurveMode() {
        return IAirCondition.ComfortCurveMode.valueOf(getSignalValue(86).intValue());
    }

    public boolean setComfortCurveMode(IAirCondition.ComfortCurveMode comfortCurveMode) {
        return setSignalValue(14, comfortCurveMode.value);
    }

    public boolean isAutoDeforstPresentEnabled() {
        return getSignalValue(-1).byteValue() == 1;
    }

    public boolean performAutoDeforstPresentButtonClick() {
        return setSignalValue(-1, (byte) 1);
    }

    public IAirCondition.EcoMode getEcoMode() {
        return IAirCondition.EcoMode.valueOf(getSignalValue(-1).intValue());
    }

    public boolean setEcoMode(IAirCondition.EcoMode ecoMode) {
        return setSignalValue(-1, ecoMode.value);
    }

    public boolean isBodyDisalarmVentEnabled() {
        return getSignalValue(IAirCondition.BODYDISALARM_VENT_STATE).byteValue() == 1;
    }

    public boolean performBodyDisalarmVentButtonClick() {
        return setSignalValue(-1, (byte) 1);
    }

    public boolean isPowerEnabled() {
        return getSignalValue(-1).byteValue() == 1;
    }

    public boolean performPowerButtonClick() {
        return setSignalValue(-1, (byte) 1);
    }

    public float getBatFhWorkState() {
        return getSignalValue(IAirCondition.BATTERY_FH_STATE).floatValue();
    }

    public float getBatPtcWorkState() {
        return getSignalValue(IAirCondition.BATTERY_PTC_STATE).floatValue();
    }

    public float getBatCoolState() {
        return getSignalValue(IAirCondition.BATTERY_COOL_STATE).floatValue();
    }

    public float getOutAirQualityLevel() {
        return getSignalValue(IAirCondition.AC_OUT_AIRQUALITY_LEVEL).floatValue();
    }

    public float getEnvironmentTemperature() {
        return getSignalValue(IAirCondition.AC_ENVIRONMENT_TEMPERATURE).floatValue();
    }

    public float getWORKINGPOWER() {
        return getSignalValue(-1).floatValue();
    }

    public boolean isRearAcAutoModeEnabled() {
        return getSignalValue(IAirCondition.REAR_AC_AUTO_MODE).byteValue() == 1;
    }

    public boolean performRearAcAutoModeButtonClick() {
        return setSignalValue(IAirCondition.REAR_AC_AUTO_MODE_SETTING, (byte) 1);
    }

    public IAirCondition.WindSpeed getRearAcWindSpeed() {
        return IAirCondition.WindSpeed.valueOf(getSignalValue(IAirCondition.REAR_AC_WIND_SPEED).intValue());
    }

    public boolean setRearAcWindSpeed(IAirCondition.WindSpeed windSpeed) {
        return setSignalValue(IAirCondition.REAR_AC_WIND_SPEED_SETTING, windSpeed.value);
    }

    public boolean performRearAcOffButtonClick() {
        return setSignalValue(IAirCondition.REAR_AC_OFF_BUTTON_SETTING, (byte) 1);
    }

    public float getRearAcTemperature() {
        return getSignalValue(IAirCondition.REAR_AC_TEMPERATURE).floatValue();
    }

    public boolean setRearAcTemperature(float f) {
        return setSignalValue(IAirCondition.REAR_AC_TEMPERATURE_SETTING, f);
    }

    public IAirCondition.WindMode getRearAcWindMode() {
        return IAirCondition.WindMode.valueOf(getSignalValue(IAirCondition.REAR_AC_WIND_MODE).intValue());
    }

    public boolean setRearAcWindMode(IAirCondition.WindMode windMode) {
        return setSignalValue(IAirCondition.REAR_AC_WIND_MODE_SETTING, windMode.value);
    }

    public IBaseApi.EnableState getAirSelfDryingEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(IAirCondition.AIR_SELF_DRYING).intValue());
    }

    public boolean setAirSelfDryingEnabled(boolean z) {
        return setSignalValue(IAirCondition.AIR_SELF_DRYING_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getAirUnlockVentilationEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(IAirCondition.AIR_UNLOCK_VENTILATION).intValue());
    }

    public boolean setAirUnlockVentilationEnabled(boolean z) {
        return setSignalValue(IAirCondition.AIR_UNLOCK_VENTILATION_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IAirCondition.AcDisplayPopup getAcDisplayPopup() {
        return IAirCondition.AcDisplayPopup.valueOf(getSignalValue(IAirCondition.AC_DISPLAY_POPUP_STATE).intValue());
    }

    public boolean isOneBtnVentlaionEnabled() {
        return getSignalValue(IAirCondition.ONE_BUTTON_VENTLAION_STATE).byteValue() == 1;
    }

    public boolean setOneBtnVentlaionEnabled(boolean z) {
        return setSignalValue(IAirCondition.ONE_BUTTON_VENTLAION_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public boolean performTemperatureIncButtonClick() {
        return setSignalValue(IAirCondition.TEMPERATURE_INC_BUTTON_SETTING, (byte) 1);
    }

    public boolean setTemperatureIncBtnStVDSwitch(boolean z) {
        return setSignalValue(IAirCondition.TEMPERATURE_INC_VD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public boolean performTemperatureDecButtonClick() {
        return setSignalValue(IAirCondition.TEMPERATURE_DEC_BUTTON_SETTING, (byte) 1);
    }

    public boolean setTemperatureDecBtnStVDSwitch(boolean z) {
        return setSignalValue(IAirCondition.TEMPERATURE_DEC_VD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public boolean setOnOffByVrState(IAirCondition.OnOffByVrState onOffByVrState) {
        return setSignalValue(IAirCondition.AC_VR_ON_OFF_SETTING, onOffByVrState.value);
    }

    public boolean performTemperatureFRIncButtonClick() {
        return setSignalValue(IAirCondition.TEMPERATURE_FR_INC_BUTTON_SETTING, (byte) 1);
    }

    public boolean setTemperatureFRIncBtnStVDSwitch(boolean z) {
        return setSignalValue(IAirCondition.TEMPERATURE_FR_INC_VD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public boolean performTemperatureFRDecButtonClick() {
        return setSignalValue(IAirCondition.TEMPERATURE_FR_DEC_BUTTON_SETTING, (byte) 1);
    }

    public boolean setTemperatureFRDecBtnStVDSwitch(boolean z) {
        return setSignalValue(IAirCondition.TEMPERATURE_FR_DEC_VD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public boolean performWindModeButtonClick() {
        return setSignalValue(IAirCondition.WINDMODE_BUTTON_SETTING, (byte) 1);
    }

    public boolean performWindSpeedIncButtonClick() {
        return setSignalValue(IAirCondition.WINDSPEED_INC_BUTTON_SETTING, (byte) 1);
    }

    public boolean performWindSpeedDecButtonClick() {
        return setSignalValue(IAirCondition.WINDSPEED_DEC_BUTTON_SETTING, (byte) 1);
    }

    public IAirCondition.CupholderHeatCoolMode getCupholderHeatCoolMode() {
        return IAirCondition.CupholderHeatCoolMode.valueOf(getSignalValue(IAirCondition.CUP_HOLDER_HEAT_COOL_MODE).intValue());
    }

    public boolean setCupholderHeatCoolMode(IAirCondition.CupholderHeatCoolMode cupholderHeatCoolMode) {
        return setSignalValue(IAirCondition.CUP_HOLDER_HEAT_COOL_MODE_SETTING, cupholderHeatCoolMode.value);
    }

    public IAirCondition.CupholderAutoMode getCupholderAutoMode() {
        return IAirCondition.CupholderAutoMode.valueOf(getSignalValue(IAirCondition.CUP_HOLDER_AUTO_MODE).intValue());
    }

    public boolean setCupholderAutoMode(IAirCondition.CupholderAutoMode cupholderAutoMode) {
        return setSignalValue(IAirCondition.CUP_HOLDER_AUTO_MODE_SETTING, cupholderAutoMode.value);
    }

    public void registerListener(AirConditionListener airConditionListener) {
        registerReceiver(airConditionListener);
    }

    public void unregisterListener(AirConditionListener airConditionListener) {
        unregisterReceiver(airConditionListener);
    }
}
