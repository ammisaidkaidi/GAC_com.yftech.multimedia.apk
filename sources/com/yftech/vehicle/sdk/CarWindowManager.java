package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarWindow;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarWindowManager extends BaseApiManager implements ICarWindow {
    private static final String TAG = "CarWindowManager";
    private static CarWindowManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarWindowListener {
        @SignalReceiver(signalId = ICarWindow.SUNROOF_WINDOW_AUTO_CLOSE_STATE)
        public void onSunroofWindowAutoCloseEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OPEN_PERCENT_FL)
        public void onWindowOpenPercentFLChanged(int i) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OPEN_PERCENT_FR)
        public void onWindowOpenPercentFRChanged(int i) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OPEN_PERCENT_RL)
        public void onWindowOpenPercentRLChanged(int i) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OPEN_PERCENT_RR)
        public void onWindowOpenPercentRRChanged(int i) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OPERATION_STATE_FL)
        public void onWindowOperationStateFLChanged(ICarWindow.WindowOperationState windowOperationState) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OPERATION_STATE_FR)
        public void onWindowOperationStateFRChanged(ICarWindow.WindowOperationState windowOperationState) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OPERATION_STATE_RL)
        public void onWindowOperationStateRLChanged(ICarWindow.WindowOperationState windowOperationState) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OPERATION_STATE_RR)
        public void onWindowOperationStateRRChanged(ICarWindow.WindowOperationState windowOperationState) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OVERHEAT_STATE_FL)
        public void onWindowOverheatStateFLChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OVERHEAT_STATE_FR)
        public void onWindowOverheatStateFRChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OVERHEAT_STATE_RL)
        public void onWindowOverheatStateRLChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_OVERHEAT_STATE_RR)
        public void onWindowOverheatStateRRChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_ROOF_OPEN_OPERTION)
        public void onWindowRoofOpenOpertionChanged(ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_ROOF_OPEN_PERCENT)
        public void onWindowRoofOpenPercentChanged(int i) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_ROOF_SHADE_OPEN_OPERTION)
        public void onWindowRoofShadeOpenOpertionChanged(ICarWindow.WindowRoofShadeOpenOpertion windowRoofShadeOpenOpertion) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_ROOF_SHADE_OPEN_PERCENT)
        public void onWindowRoofShadeOpenPercentChanged(int i) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_STATE_FL)
        public void onWindowStateFLChanged(ICarWindow.WindowState windowState) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_STATE_FR)
        public void onWindowStateFRChanged(ICarWindow.WindowState windowState) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_STATE_RL)
        public void onWindowStateRLChanged(ICarWindow.WindowState windowState) {
        }

        @SignalReceiver(signalId = ICarWindow.WINDOW_STATE_RR)
        public void onWindowStateRRChanged(ICarWindow.WindowState windowState) {
        }
    }

    private CarWindowManager() {
    }

    public static synchronized CarWindowManager get() {
        CarWindowManager carWindowManager;
        synchronized (CarWindowManager.class) {
            if (sMe != null) {
                carWindowManager = sMe;
            } else {
                carWindowManager = new CarWindowManager();
                sMe = carWindowManager;
            }
        }
        return carWindowManager;
    }

    public IBaseApi.EnableState getSunroofWindowAutoCloseEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarWindow.SUNROOF_WINDOW_AUTO_CLOSE_STATE).intValue());
    }

    public boolean setSunroofWindowAutoCloseEnabled(boolean z) {
        return setSignalValue(63, z ? (byte) 2 : (byte) 1);
    }

    public ICarWindow.WindowState getWindowStateFL() {
        return ICarWindow.WindowState.valueOf(getSignalValue(ICarWindow.WINDOW_STATE_FL).intValue());
    }

    public int getWindowOpenPercentFL() {
        return getSignalValue(ICarWindow.WINDOW_OPEN_PERCENT_FL).intValue();
    }

    public ICarWindow.WindowOperationState getWindowOperationStateFL() {
        return ICarWindow.WindowOperationState.valueOf(getSignalValue(ICarWindow.WINDOW_OPERATION_STATE_FL).intValue());
    }

    public boolean getWindowOverheatStateFL() {
        return getSignalValue(ICarWindow.WINDOW_OVERHEAT_STATE_FL).byteValue() != 0;
    }

    public boolean setWindowOpenPercentFL(ICarWindow.WindowOpenPercent windowOpenPercent) {
        return setSignalValue(64, windowOpenPercent.value);
    }

    public ICarWindow.WindowState getWindowStateFR() {
        return ICarWindow.WindowState.valueOf(getSignalValue(ICarWindow.WINDOW_STATE_FR).intValue());
    }

    public int getWindowOpenPercentFR() {
        return getSignalValue(ICarWindow.WINDOW_OPEN_PERCENT_FR).intValue();
    }

    public ICarWindow.WindowOperationState getWindowOperationStateFR() {
        return ICarWindow.WindowOperationState.valueOf(getSignalValue(ICarWindow.WINDOW_OPERATION_STATE_FR).intValue());
    }

    public boolean getWindowOverheatStateFR() {
        return getSignalValue(ICarWindow.WINDOW_OVERHEAT_STATE_FR).byteValue() != 0;
    }

    public boolean setWindowOpenPercentFR(ICarWindow.WindowOpenPercent windowOpenPercent) {
        return setSignalValue(65, windowOpenPercent.value);
    }

    public ICarWindow.WindowState getWindowStateRL() {
        return ICarWindow.WindowState.valueOf(getSignalValue(ICarWindow.WINDOW_STATE_RL).intValue());
    }

    public int getWindowOpenPercentRL() {
        return getSignalValue(ICarWindow.WINDOW_OPEN_PERCENT_RL).intValue();
    }

    public ICarWindow.WindowOperationState getWindowOperationStateRL() {
        return ICarWindow.WindowOperationState.valueOf(getSignalValue(ICarWindow.WINDOW_OPERATION_STATE_RL).intValue());
    }

    public boolean getWindowOverheatStateRL() {
        return getSignalValue(ICarWindow.WINDOW_OVERHEAT_STATE_RL).byteValue() != 0;
    }

    public boolean setWindowOpenPercentRL(ICarWindow.WindowOpenPercent windowOpenPercent) {
        return setSignalValue(66, windowOpenPercent.value);
    }

    public ICarWindow.WindowState getWindowStateRR() {
        return ICarWindow.WindowState.valueOf(getSignalValue(ICarWindow.WINDOW_STATE_RR).intValue());
    }

    public int getWindowOpenPercentRR() {
        return getSignalValue(ICarWindow.WINDOW_OPEN_PERCENT_RR).intValue();
    }

    public ICarWindow.WindowOperationState getWindowOperationStateRR() {
        return ICarWindow.WindowOperationState.valueOf(getSignalValue(ICarWindow.WINDOW_OPERATION_STATE_RR).intValue());
    }

    public boolean getWindowOverheatStateRR() {
        return getSignalValue(ICarWindow.WINDOW_OVERHEAT_STATE_RR).byteValue() != 0;
    }

    public boolean setWindowOpenPercentRR(ICarWindow.WindowOpenPercent windowOpenPercent) {
        return setSignalValue(67, windowOpenPercent.value);
    }

    public boolean setWindowStateFL(ICarWindow.WindowState windowState) {
        return setSignalValue(ICarWindow.WINDOW_STATE_FL_SETTING, windowState.value);
    }

    public boolean setWindowStateFR(ICarWindow.WindowState windowState) {
        return setSignalValue(ICarWindow.WINDOW_STATE_FR_SETTING, windowState.value);
    }

    public boolean setWindowStateRL(ICarWindow.WindowState windowState) {
        return setSignalValue(ICarWindow.WINDOW_STATE_RL_SETTING, windowState.value);
    }

    public boolean setWindowStateRR(ICarWindow.WindowState windowState) {
        return setSignalValue(ICarWindow.WINDOW_STATE_RR_SETTING, windowState.value);
    }

    public boolean setWindowRoofOpenState(ICarWindow.WindowRoofOpenState windowRoofOpenState) {
        return setSignalValue(68, windowRoofOpenState.value);
    }

    public int getWindowRoofOpenPercent() {
        return getSignalValue(ICarWindow.WINDOW_ROOF_OPEN_PERCENT).intValue();
    }

    public ICarWindow.WindowRoofOpenOpertion getWindowRoofOpenOpertion() {
        return ICarWindow.WindowRoofOpenOpertion.valueOf(getSignalValue(ICarWindow.WINDOW_ROOF_OPEN_OPERTION).intValue());
    }

    public boolean setWindowRoofShadeOpenPercent(int i) {
        return setSignalValue(248, i);
    }

    public boolean setWindowRoofShadeOpenState(ICarWindow.WindowRoofShadeOpenState windowRoofShadeOpenState) {
        return setSignalValue(248, windowRoofShadeOpenState.value);
    }

    public int getWindowRoofShadeOpenPercent() {
        return getSignalValue(ICarWindow.WINDOW_ROOF_SHADE_OPEN_PERCENT).intValue();
    }

    public ICarWindow.WindowRoofShadeOpenOpertion getWindowRoofShadeOpenOpertion() {
        return ICarWindow.WindowRoofShadeOpenOpertion.valueOf(getSignalValue(ICarWindow.WINDOW_ROOF_SHADE_OPEN_OPERTION).intValue());
    }

    public boolean setWindowOpenPercentFLVdSwitch(boolean z) {
        return setSignalValue(ICarWindow.WINDOW_OPEN_PERCENT_FL_VD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public boolean setWindowOpenPercentFRVdSwitch(boolean z) {
        return setSignalValue(ICarWindow.WINDOW_OPEN_PERCENT_FR_VD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public boolean setWindowOpenPercentRLVdSwitch(boolean z) {
        return setSignalValue(ICarWindow.WINDOW_OPEN_PERCENT_RL_VD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public boolean setWindowOpenPercentRRVdSwitch(boolean z) {
        return setSignalValue(ICarWindow.WINDOW_OPEN_PERCENT_RR_VD_SETTING, z ? (byte) 1 : (byte) 0);
    }

    public void registerListener(CarWindowListener carWindowListener) {
        registerReceiver(carWindowListener);
    }

    public void unregisterListener(CarWindowListener carWindowListener) {
        unregisterReceiver(carWindowListener);
    }
}
