package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarDevice;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarDeviceManager extends BaseApiManager implements ICarDevice {
    private static final String TAG = "CarDeviceManager";
    private static CarDeviceManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarDeviceListener {
        @SignalReceiver(signalId = ICarDevice.BSV_DISPLAY_STATE)
        public void onBSVDisplayStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarDevice.PAS_BACKPARK_DISPLAY_STATE)
        public void onPASBackParkDisplayStateChanged(ICarDevice.PASBackParkDisplayState pASBackParkDisplayState) {
        }

        @SignalReceiver(signalId = ICarDevice.RECORDER_DISPLAY_STATE)
        public void onRecorderDisplayStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarDevice.RECORDER_RECORD_STATE)
        public void onRecorderRecordStateChanged(IBaseApi.EnableState enableState) {
        }
    }

    private CarDeviceManager() {
    }

    public static synchronized CarDeviceManager get() {
        CarDeviceManager carDeviceManager;
        synchronized (CarDeviceManager.class) {
            if (sMe != null) {
                carDeviceManager = sMe;
            } else {
                carDeviceManager = new CarDeviceManager();
                sMe = carDeviceManager;
            }
        }
        return carDeviceManager;
    }

    public IBaseApi.EnableState getRecorderDisplayState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarDevice.RECORDER_DISPLAY_STATE).intValue());
    }

    public IBaseApi.EnableState getRecorderRecordState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarDevice.RECORDER_RECORD_STATE).intValue());
    }

    public boolean setRecorderEnterCmd(ICarDevice.RecorderEnterCmd recorderEnterCmd) {
        return setSignalValue(ICarDevice.RECORDER_ENTER_CMD_SETTING, recorderEnterCmd.value);
    }

    public boolean setSvmFunctionCmd(ICarDevice.SvmFunctionCmd svmFunctionCmd) {
        return setSignalValue(ICarDevice.SVM_FUNCTION_CMD_SETTING, svmFunctionCmd.value);
    }

    public boolean perform360SvmButtonClick() {
        return setSignalValue(ICarDevice.SVM_BUTTON_SETTING, (byte) 1);
    }

    public boolean setPAAMode(ICarDevice.PAAMode pAAMode) {
        return setSignalValue(517, pAAMode.value);
    }

    public boolean performAPAButtonClick() {
        return setSignalValue(518, (byte) 1);
    }

    public ICarDevice.PASBackParkDisplayState getPASBackParkDisplayState() {
        return ICarDevice.PASBackParkDisplayState.valueOf(getSignalValue(ICarDevice.PAS_BACKPARK_DISPLAY_STATE).intValue());
    }

    public boolean setBSVDisplaySwitch(boolean z) {
        return setSignalValue(ICarDevice.BSV_DISPLAY_SWITCH, z ? (byte) 1 : (byte) 0);
    }

    public boolean setBsvFunctionCmd(ICarDevice.BsvFunctionCmd bsvFunctionCmd) {
        return setSignalValue(531, bsvFunctionCmd.value);
    }

    public IBaseApi.EnableState getBSVDisplayState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarDevice.BSV_DISPLAY_STATE).intValue());
    }

    public boolean performBSVButtonClick() {
        return setSignalValue(ICarDevice.BSV_BUTTON_SETTING, (byte) 1);
    }

    public void registerListener(CarDeviceListener carDeviceListener) {
        registerReceiver(carDeviceListener);
    }

    public void unregisterListener(CarDeviceListener carDeviceListener) {
        unregisterReceiver(carDeviceListener);
    }
}
