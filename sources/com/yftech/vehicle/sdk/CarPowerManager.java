package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseCmd;
import com.yftech.vehicle.internal.adapter.ICarPower;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarPowerManager extends BaseApiManager implements ICarPower {
    private static final String TAG = "CarPowerManager";
    private static CarPowerManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarPowerListener {
        @SignalReceiver(signalId = IBaseCmd.POWER_MODE)
        public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
        }

        @SignalReceiver(signalId = IBaseCmd.POWER_STATE)
        public void onPowerStateChanged(ICarPower.PowerState powerState) {
        }
    }

    private CarPowerManager() {
    }

    public static synchronized CarPowerManager get() {
        CarPowerManager carPowerManager;
        synchronized (CarPowerManager.class) {
            if (sMe != null) {
                carPowerManager = sMe;
            } else {
                carPowerManager = new CarPowerManager();
                sMe = carPowerManager;
            }
        }
        return carPowerManager;
    }

    public ICarPower.PowerState getPowerState() {
        return ICarPower.PowerState.valueOf(getSignalValue(IBaseCmd.POWER_STATE).intValue());
    }

    public ICarPower.PowerMode getPowerMode() {
        return ICarPower.PowerMode.valueOf(getSignalValue(IBaseCmd.POWER_MODE).intValue());
    }

    public void registerListener(CarPowerListener carPowerListener) {
        registerReceiver(carPowerListener);
    }

    public void unregisterListener(CarPowerListener carPowerListener) {
        unregisterReceiver(carPowerListener);
    }
}
