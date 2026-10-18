package com.yftech.vehicle.sdk;

import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.ICarIcm;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarIcmManager extends BaseApiManager implements ICarIcm {
    private static final String TAG = "CarIcmManager";
    private static CarIcmManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarIcmListener {
        @SignalReceiver(signalId = 114)
        public void onBackLightLevelChanged(ICarIcm.BackLightLevel backLightLevel) {
        }

        @SignalReceiver(signalId = 119)
        public void onFuelEconomyAndDistanceUnitChanged(ICarIcm.FuelEconomyAndDistanceUnit fuelEconomyAndDistanceUnit) {
        }

        @SignalReceiver(signalId = 120, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onKeepMuteWarningStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarIcm.KEYBOARD_BACKLIGHT)
        public void onKeyBoardBackLightChanged(int i) {
        }

        @SignalReceiver(signalId = 118)
        public void onLanguageChanged(ICarIcm.Language language) {
        }

        @SignalReceiver(signalId = ICarIcm.METER_VOLUME_MODE)
        public void onMeterVolumeModeChanged(ICarIcm.MeterVolumeMode meterVolumeMode) {
        }

        @SignalReceiver(signalId = 116)
        public void onPressureUnitChanged(ICarIcm.PressureUnit pressureUnit) {
        }

        @SignalReceiver(signalId = 117)
        public void onSpeedWarningChanged(int i) {
        }

        @SignalReceiver(signalId = 115)
        public void onTemperatureUnitChanged(ICarIcm.TemperatureUnit temperatureUnit) {
        }
    }

    private CarIcmManager() {
    }

    public static synchronized CarIcmManager get() {
        CarIcmManager carIcmManager;
        synchronized (CarIcmManager.class) {
            if (sMe != null) {
                carIcmManager = sMe;
            } else {
                carIcmManager = new CarIcmManager();
                sMe = carIcmManager;
            }
        }
        return carIcmManager;
    }

    public ICarIcm.BackLightLevel getBackLightLevel() {
        return ICarIcm.BackLightLevel.valueOf(getSignalValue(114).intValue());
    }

    public boolean setBackLightLevel(ICarIcm.BackLightLevel backLightLevel) {
        return setSignalValue(ICarIcm.BACK_LIGHT_LEVEL_SETTING, backLightLevel.value);
    }

    public ICarIcm.TemperatureUnit getTemperatureUnit() {
        return ICarIcm.TemperatureUnit.valueOf(getSignalValue(115).intValue());
    }

    public boolean setTemperatureUnit(ICarIcm.TemperatureUnit temperatureUnit) {
        return setSignalValue(47, temperatureUnit.value);
    }

    public ICarIcm.PressureUnit getPressureUnit() {
        return ICarIcm.PressureUnit.valueOf(getSignalValue(116).intValue());
    }

    public boolean setPressureUnit(ICarIcm.PressureUnit pressureUnit) {
        return setSignalValue(48, pressureUnit.value);
    }

    public int getSpeedWarning() {
        return getSignalValue(117).intValue();
    }

    public boolean setSpeedWarning(int i) {
        return setSignalValue(49, i);
    }

    public ICarIcm.Language getLanguage() {
        return ICarIcm.Language.valueOf(getSignalValue(118).intValue());
    }

    public boolean setLanguage(ICarIcm.Language language) {
        return setSignalValue(50, language.value);
    }

    public ICarIcm.FuelEconomyAndDistanceUnit getFuelEconomyAndDistanceUnit() {
        return ICarIcm.FuelEconomyAndDistanceUnit.valueOf(getSignalValue(119).intValue());
    }

    public boolean setFuelEconomyAndDistanceUnit(ICarIcm.FuelEconomyAndDistanceUnit fuelEconomyAndDistanceUnit) {
        return setSignalValue(51, fuelEconomyAndDistanceUnit.value);
    }

    public boolean isKeepMuteWarningEnabled() {
        return getSignalValue(120).byteValue() == 1;
    }

    public int getKeyBoardBackLight() {
        return getSignalValue(ICarIcm.KEYBOARD_BACKLIGHT).intValue();
    }

    public ICarIcm.MeterVolumeMode getMeterVolumeMode() {
        return ICarIcm.MeterVolumeMode.valueOf(getSignalValue(ICarIcm.METER_VOLUME_MODE).intValue());
    }

    public boolean setMeterVolumeMode(ICarIcm.MeterVolumeMode meterVolumeMode) {
        return setSignalValue(ICarIcm.METER_VOLUME_MODE_SETTING, meterVolumeMode.value);
    }

    public boolean setFMFreqSymbol(int i) {
        return setSignalValue(ICarIcm.FM_FREQ_SYMBOL_SETTING, i);
    }

    public void registerListener(CarIcmListener carIcmListener) {
        registerReceiver(carIcmListener);
    }

    public void unregisterListener(CarIcmListener carIcmListener) {
        unregisterReceiver(carIcmListener);
    }
}
