package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarTire;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarTireManager extends BaseApiManager implements ICarTire {
    private static final String TAG = "CarTireManager";
    private static CarTireManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarTireListener {
        @SignalReceiver(signalId = ICarTire.WHEEL_SPEED_FL)
        public void onWheelSpeedFLChanged(float f) {
        }

        @SignalReceiver(signalId = ICarTire.WHEEL_SPEED_FL_VD)
        public void onWheelSpeedFLEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarTire.WHEEL_SPEED_FR)
        public void onWheelSpeedFRChanged(float f) {
        }

        @SignalReceiver(signalId = ICarTire.WHEEL_SPEED_FR_VD)
        public void onWheelSpeedFREnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarTire.WHEEL_SPEED_RL)
        public void onWheelSpeedRLChanged(float f) {
        }

        @SignalReceiver(signalId = ICarTire.WHEEL_SPEED_RL_VD)
        public void onWheelSpeedRLEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarTire.WHEEL_SPEED_RR)
        public void onWheelSpeedRRChanged(float f) {
        }

        @SignalReceiver(signalId = ICarTire.WHEEL_SPEED_RR_VD)
        public void onWheelSpeedRREnableStateChanged(IBaseApi.EnableState enableState) {
        }
    }

    private CarTireManager() {
    }

    public static synchronized CarTireManager get() {
        CarTireManager carTireManager;
        synchronized (CarTireManager.class) {
            if (sMe != null) {
                carTireManager = sMe;
            } else {
                carTireManager = new CarTireManager();
                sMe = carTireManager;
            }
        }
        return carTireManager;
    }

    public float getWheelSpeedFL() {
        return getSignalValue(ICarTire.WHEEL_SPEED_FL).floatValue();
    }

    public IBaseApi.EnableState getWheelSpeedFLEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarTire.WHEEL_SPEED_FL_VD).intValue());
    }

    public float getWheelSpeedFR() {
        return getSignalValue(ICarTire.WHEEL_SPEED_FR).floatValue();
    }

    public IBaseApi.EnableState getWheelSpeedFREnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarTire.WHEEL_SPEED_FR_VD).intValue());
    }

    public float getWheelSpeedRL() {
        return getSignalValue(ICarTire.WHEEL_SPEED_RL).floatValue();
    }

    public IBaseApi.EnableState getWheelSpeedRLEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarTire.WHEEL_SPEED_RL_VD).intValue());
    }

    public float getWheelSpeedRR() {
        return getSignalValue(ICarTire.WHEEL_SPEED_RR).floatValue();
    }

    public IBaseApi.EnableState getWheelSpeedRREnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarTire.WHEEL_SPEED_RR_VD).intValue());
    }

    public void registerListener(CarTireListener carTireListener) {
        registerReceiver(carTireListener);
    }

    public void unregisterListener(CarTireListener carTireListener) {
        unregisterReceiver(carTireListener);
    }
}
