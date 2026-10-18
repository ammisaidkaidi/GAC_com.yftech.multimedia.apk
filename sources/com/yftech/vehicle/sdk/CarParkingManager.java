package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarParking;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarParkingManager extends BaseApiManager implements ICarParking {
    private static final String TAG = "CarParkingManager";
    private static CarParkingManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarParkingListener {
        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_FL)
        public void onPASDistanceFLChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_FL_MIDDLE)
        public void onPASDistanceFLMiddleChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_FLSide)
        public void onPASDistanceFLSideChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_FR)
        public void onPASDistanceFRChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_FR_MIDDLE)
        public void onPASDistanceFRMiddleChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_FRSide)
        public void onPASDistanceFRSideChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_RL)
        public void onPASDistanceRLChanged(int i) {
        }

        @SignalReceiver(signalId = 129)
        public void onPASDistanceRLMiddleChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_RLSide)
        public void onPASDistanceRLSideChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_RR)
        public void onPASDistanceRRChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_RR_MIDDLE)
        public void onPASDistanceRRMiddleChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_DISTANCE_RRSide)
        public void onPASDistanceRRSideChanged(int i) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_ERROR_FLAG_OF_EEPROM)
        public void onPASErrorFlagOfEEPROMChanged(ICarParking.PASErrorFlag pASErrorFlag) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_ERROR_FLAG_OF_IGN_VOLTAGE)
        public void onPASErrorFlagOfIGNVoltageChanged(ICarParking.PASErrorFlag pASErrorFlag) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_ERROR_FLAG_RL)
        public void onPASErrorFlagRLChanged(ICarParking.PASErrorFlag pASErrorFlag) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_ERROR_FLAG_RL_MIDDLE)
        public void onPASErrorFlagRLMiddleChanged(ICarParking.PASErrorFlag pASErrorFlag) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_ERROR_FLAG_RR)
        public void onPASErrorFlagRRChanged(ICarParking.PASErrorFlag pASErrorFlag) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_ERROR_FLAG_RR_MIDDLE)
        public void onPASErrorFlagRRMiddleChanged(ICarParking.PASErrorFlag pASErrorFlag) {
        }

        @SignalReceiver(signalId = ICarParking.PAS_SYSTEM_FAILURE_FLAG)
        public void onPASSystemFailureFlagChanged(ICarParking.PASSystemFailureFlag pASSystemFailureFlag) {
        }

        @SignalReceiver(signalId = 126)
        public void onPASSystemTypeChanged(ICarParking.PASSystemType pASSystemType) {
        }

        @SignalReceiver(signalId = 128)
        public void onPASWarnToneChanged(ICarParking.PASWarnTone pASWarnTone) {
        }

        @SignalReceiver(signalId = ICarParking.PARKING_RADAR_ALARM)
        public void onParkingRadarAlarmEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = 256)
        public void onParkingVoiceSwitchEnableStateChanged(IBaseApi.EnableState enableState) {
        }
    }

    private CarParkingManager() {
    }

    public static synchronized CarParkingManager get() {
        CarParkingManager carParkingManager;
        synchronized (CarParkingManager.class) {
            if (sMe != null) {
                carParkingManager = sMe;
            } else {
                carParkingManager = new CarParkingManager();
                sMe = carParkingManager;
            }
        }
        return carParkingManager;
    }

    public ICarParking.PASSystemType getPASSystemType() {
        return ICarParking.PASSystemType.valueOf(getSignalValue(126).intValue());
    }

    public ICarParking.PASSystemFailureFlag getPASSystemFailureFlag() {
        return ICarParking.PASSystemFailureFlag.valueOf(getSignalValue(ICarParking.PAS_SYSTEM_FAILURE_FLAG).intValue());
    }

    public ICarParking.PASWarnTone getPASWarnTone() {
        return ICarParking.PASWarnTone.valueOf(getSignalValue(128).intValue());
    }

    public int getPASDistanceRLMiddle() {
        return getSignalValue(129).intValue();
    }

    public int getPASDistanceRRMiddle() {
        return getSignalValue(ICarParking.PAS_DISTANCE_RR_MIDDLE).intValue();
    }

    public int getPASDistanceFLMiddle() {
        return getSignalValue(ICarParking.PAS_DISTANCE_FL_MIDDLE).intValue();
    }

    public int getPASDistanceFRMiddle() {
        return getSignalValue(ICarParking.PAS_DISTANCE_FR_MIDDLE).intValue();
    }

    public int getPASDistanceRR() {
        return getSignalValue(ICarParking.PAS_DISTANCE_RR).intValue();
    }

    public int getPASDistanceRL() {
        return getSignalValue(ICarParking.PAS_DISTANCE_RL).intValue();
    }

    public int getPASDistanceFR() {
        return getSignalValue(ICarParking.PAS_DISTANCE_FR).intValue();
    }

    public int getPASDistanceFL() {
        return getSignalValue(ICarParking.PAS_DISTANCE_FL).intValue();
    }

    public int getPASDistanceRRSide() {
        return getSignalValue(ICarParking.PAS_DISTANCE_RRSide).intValue();
    }

    public int getPASDistanceRLSide() {
        return getSignalValue(ICarParking.PAS_DISTANCE_RLSide).intValue();
    }

    public int getPASDistanceFRSide() {
        return getSignalValue(ICarParking.PAS_DISTANCE_FRSide).intValue();
    }

    public int getPASDistanceFLSide() {
        return getSignalValue(ICarParking.PAS_DISTANCE_FLSide).intValue();
    }

    public ICarParking.PASErrorFlag getPASErrorFlagRRMiddle() {
        return ICarParking.PASErrorFlag.valueOf(getSignalValue(ICarParking.PAS_ERROR_FLAG_RR_MIDDLE).intValue());
    }

    public ICarParking.PASErrorFlag getPASErrorFlagRLMiddle() {
        return ICarParking.PASErrorFlag.valueOf(getSignalValue(ICarParking.PAS_ERROR_FLAG_RL_MIDDLE).intValue());
    }

    public ICarParking.PASErrorFlag getPASErrorFlagRR() {
        return ICarParking.PASErrorFlag.valueOf(getSignalValue(ICarParking.PAS_ERROR_FLAG_RR).intValue());
    }

    public ICarParking.PASErrorFlag getPASErrorFlagRL() {
        return ICarParking.PASErrorFlag.valueOf(getSignalValue(ICarParking.PAS_ERROR_FLAG_RL).intValue());
    }

    public ICarParking.PASErrorFlag getPASErrorFlagOfEEPROM() {
        return ICarParking.PASErrorFlag.valueOf(getSignalValue(ICarParking.PAS_ERROR_FLAG_OF_EEPROM).intValue());
    }

    public ICarParking.PASErrorFlag getPASErrorFlagOfIGNVoltage() {
        return ICarParking.PASErrorFlag.valueOf(getSignalValue(ICarParking.PAS_ERROR_FLAG_OF_IGN_VOLTAGE).intValue());
    }

    public IBaseApi.EnableState getParkingRadarAlarmEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarParking.PARKING_RADAR_ALARM).intValue());
    }

    public boolean performParkingRadarAlarmButtonClick() {
        return setSignalValue(ICarParking.PARKING_RADAR_ALARM_SETTING, (byte) 1);
    }

    public IBaseApi.EnableState getParkingVoiceSwitchEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(256).intValue());
    }

    public boolean setParkingVoiceSwitchEnabled(boolean z) {
        return setSignalValue(ICarParking.PARKING_VOICE_SWITCH_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public void registerListener(CarParkingListener carParkingListener) {
        registerReceiver(carParkingListener);
    }

    public void unregisterListener(CarParkingListener carParkingListener) {
        unregisterReceiver(carParkingListener);
    }
}
