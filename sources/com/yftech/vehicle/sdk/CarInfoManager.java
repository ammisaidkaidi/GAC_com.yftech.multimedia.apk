package com.yftech.vehicle.sdk;

import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.ICarInfo;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarInfoManager extends BaseApiManager implements ICarInfo {
    private static final String TAG = "CarInfoManager";
    private static CarInfoManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarInfoListener {
        @SignalReceiver(signalId = 124)
        public void onBatteryVoltageChanged(float f) {
        }

        @SignalReceiver(signalId = ICarInfo.DAY_NIGHT_MODE)
        public void onDayNightModeChanged(ICarInfo.DayNightMode dayNightMode) {
        }

        @SignalReceiver(signalId = ICarInfo.ENGINE_CRANK_STATE)
        public void onEngineCrankStateChanged(ICarInfo.EngineCrankState engineCrankState) {
        }

        @SignalReceiver(signalId = ICarInfo.ENGINE_IGN_ANGLE_STATE)
        public void onEngineIgnAngleChanged(float f) {
        }

        @SignalReceiver(signalId = 121)
        public void onEngineSpeedChanged(int i) {
        }

        @SignalReceiver(signalId = ICarInfo.GEAR_POSITION_A9E)
        public void onGearPositionA9EChanged(ICarInfo.GearPositionA9E gearPositionA9E) {
        }

        @SignalReceiver(signalId = ICarInfo.GEAR_POSITION)
        public void onGearPositionChanged(ICarInfo.GearPosition gearPosition) {
        }

        @SignalReceiver(signalId = 125)
        public void onLowBatteryWarningLevelChanged(ICarInfo.LowBatteryWarningLevel lowBatteryWarningLevel) {
        }

        @SignalReceiver(signalId = ICarInfo.PARKING_BRAKE_STATE)
        public void onParkingBrakeStateChanged(ICarInfo.ParkingBrakeState parkingBrakeState) {
        }

        @SignalReceiver(signalId = ICarInfo.POWER_MODE)
        public void onPowerModeChanged(ICarInfo.PowerMode powerMode) {
        }

        @SignalReceiver(signalId = ICarInfo.PRESSURE_ATMOSPHERIC_STATE)
        public void onPressureOfAtmosphericChanged(int i) {
        }

        @SignalReceiver(signalId = ICarInfo.PRESSURE_OIL_STATE)
        public void onPressureOfOilChanged(int i) {
        }

        @SignalReceiver(signalId = ICarInfo.PRESSURE_TURBINE_STATE)
        public void onPressureOfTurbineChanged(int i) {
        }

        @SignalReceiver(signalId = ICarInfo.REAR_GEAR_STATE)
        public void onRearGearStateChanged(ICarInfo.RearGearState rearGearState) {
        }

        @SignalReceiver(signalId = -1)
        public void onSleepWakeUpCommandChanged(ICarInfo.SleepWakeUpCommand sleepWakeUpCommand) {
        }

        @SignalReceiver(signalId = ICarInfo.TEMP_ENGINE_WATER_STATE)
        public void onTemperatureOfEngineWaterChanged(int i) {
        }

        @SignalReceiver(signalId = ICarInfo.TEMP_EXHAUST_STATE)
        public void onTemperatureOfExhaustChanged(int i) {
        }

        @SignalReceiver(signalId = ICarInfo.TEMP_INTAKE_AIR_STATE)
        public void onTemperatureOfIntakeAirChanged(float f) {
        }

        @SignalReceiver(signalId = ICarInfo.TEMP_TRANSMISSION_OIL_STATE)
        public void onTemperatureOfTransmissionOilChanged(int i) {
        }

        @SignalReceiver(signalId = 123)
        public void onTotalOdometerChanged(int i) {
        }

        @SignalReceiver(signalId = ICarInfo.TRANSPORTATION_MODE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onTransportationModeStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarInfo.VEHICLE_MODE_BROADCAST)
        public void onVehicleModeBroadcastChanged(ICarInfo.VehicleModeBroadcast vehicleModeBroadcast) {
        }

        @SignalReceiver(signalId = 122)
        public void onVehicleSpeedChanged(int i) {
        }

        @SignalReceiver(signalId = ICarInfo.VEHICLE_STATE)
        public void onVehicleStateChanged(ICarInfo.VehicleState vehicleState) {
        }
    }

    private CarInfoManager() {
    }

    public static synchronized CarInfoManager get() {
        CarInfoManager carInfoManager;
        synchronized (CarInfoManager.class) {
            if (sMe != null) {
                carInfoManager = sMe;
            } else {
                carInfoManager = new CarInfoManager();
                sMe = carInfoManager;
            }
        }
        return carInfoManager;
    }

    public ICarInfo.PowerMode getPowerMode() {
        return ICarInfo.PowerMode.valueOf(getSignalValue(ICarInfo.POWER_MODE).intValue());
    }

    public int getEngineSpeed() {
        return getSignalValue(121).intValue();
    }

    public int getVehicleSpeed() {
        return getSignalValue(122).intValue();
    }

    public int getTotalOdometer() {
        return getSignalValue(123).intValue();
    }

    public float getBatteryVoltage() {
        return getSignalValue(124).floatValue();
    }

    public ICarInfo.LowBatteryWarningLevel getLowBatteryWarningLevel() {
        return ICarInfo.LowBatteryWarningLevel.valueOf(getSignalValue(125).intValue());
    }

    public ICarInfo.RearGearState getRearGearState() {
        return ICarInfo.RearGearState.valueOf(getSignalValue(ICarInfo.REAR_GEAR_STATE).intValue());
    }

    public ICarInfo.GearPosition getGearPosition() {
        return ICarInfo.GearPosition.valueOf(getSignalValue(ICarInfo.GEAR_POSITION).intValue());
    }

    public ICarInfo.GearPositionA9E getGearPositionA9E() {
        return ICarInfo.GearPositionA9E.valueOf(getSignalValue(ICarInfo.GEAR_POSITION_A9E).intValue());
    }

    public ICarInfo.ParkingBrakeState getParkingBrakeState() {
        return ICarInfo.ParkingBrakeState.valueOf(getSignalValue(ICarInfo.PARKING_BRAKE_STATE).intValue());
    }

    public ICarInfo.VehicleState getVehicleState() {
        return ICarInfo.VehicleState.valueOf(getSignalValue(ICarInfo.VEHICLE_STATE).intValue());
    }

    public ICarInfo.SleepWakeUpCommand getSleepWakeUpCommand() {
        return ICarInfo.SleepWakeUpCommand.valueOf(getSignalValue(-1).intValue());
    }

    public ICarInfo.DayNightMode getDayNightMode() {
        return ICarInfo.DayNightMode.valueOf(getSignalValue(ICarInfo.DAY_NIGHT_MODE).intValue());
    }

    public ICarInfo.VehicleModeBroadcast getVehicleModeBroadcast() {
        return ICarInfo.VehicleModeBroadcast.valueOf(getSignalValue(ICarInfo.VEHICLE_MODE_BROADCAST).intValue());
    }

    public boolean isTransportationModeEnabled() {
        return getSignalValue(ICarInfo.TRANSPORTATION_MODE).byteValue() == 1;
    }

    public ICarInfo.EngineCrankState getEngineCrankState() {
        return ICarInfo.EngineCrankState.valueOf(getSignalValue(ICarInfo.ENGINE_CRANK_STATE).intValue());
    }

    public int getPressureOfTurbine() {
        return getSignalValue(ICarInfo.PRESSURE_TURBINE_STATE).intValue();
    }

    public int getPressureOfAtmospheric() {
        return getSignalValue(ICarInfo.PRESSURE_ATMOSPHERIC_STATE).intValue();
    }

    public int getPressureOfOil() {
        return getSignalValue(ICarInfo.PRESSURE_OIL_STATE).intValue();
    }

    public int getTemperatureOfEngineWater() {
        return getSignalValue(ICarInfo.TEMP_ENGINE_WATER_STATE).intValue();
    }

    public int getTemperatureOfExhaust() {
        return getSignalValue(ICarInfo.TEMP_EXHAUST_STATE).intValue();
    }

    public float getTemperatureOfIntakeAir() {
        return getSignalValue(ICarInfo.TEMP_INTAKE_AIR_STATE).floatValue();
    }

    public int getTemperatureOfTransmissionOil() {
        return getSignalValue(ICarInfo.TEMP_TRANSMISSION_OIL_STATE).intValue();
    }

    public float getEngineIgnAngle() {
        return getSignalValue(ICarInfo.ENGINE_IGN_ANGLE_STATE).floatValue();
    }

    public void registerListener(CarInfoListener carInfoListener) {
        registerReceiver(carInfoListener);
    }

    public void unregisterListener(CarInfoListener carInfoListener) {
        unregisterReceiver(carInfoListener);
    }
}
