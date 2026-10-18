package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseCmd;
import com.yftech.vehicle.internal.adapter.ICarKey;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarKeyManager extends BaseApiManager implements ICarKey {
    private static final String TAG = "CarKeyManager";
    private static CarKeyManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarKeyListener {
        @SignalReceiver(signalId = IBaseCmd.KEY_EVENT_KNOB)
        public void onKnobKeyEvent(ICarKey.CarKeyEvent carKeyEvent) {
        }

        @SignalReceiver(signalId = 9988)
        public void onPanelKeyEvent(ICarKey.CarKeyEvent carKeyEvent) {
        }

        @SignalReceiver(signalId = IBaseCmd.KEY_EVENT_STEERING_WHEEL)
        public void onSteeringWheelKeyEvent(ICarKey.CarKeyEvent carKeyEvent) {
        }
    }

    private CarKeyManager() {
    }

    public static synchronized CarKeyManager get() {
        CarKeyManager carKeyManager;
        synchronized (CarKeyManager.class) {
            if (sMe != null) {
                carKeyManager = sMe;
            } else {
                carKeyManager = new CarKeyManager();
                sMe = carKeyManager;
            }
        }
        return carKeyManager;
    }

    public void registerListener(CarKeyListener carKeyListener) {
        registerReceiver(carKeyListener);
    }

    public void unregisterListener(CarKeyListener carKeyListener) {
        unregisterReceiver(carKeyListener);
    }
}
