package com.yftech.vehicle.sdk;

import android.util.Log;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.IBaseCmd;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarDevice;
import com.yftech.vehicle.internal.adapter.ICarParking;
import com.yftech.vehicle.internal.adapter.IMpuAvm;
import com.yftech.vehicle.internal.project.IProject;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MpuProjectManager extends BaseApiManager implements IProject {
    private static final String TAG = "MpuProjectManager";
    private static MpuProjectManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class MpuProjectListener {
        @SignalReceiver(signalId = IBaseCmd.MPU_PROJECT_PERSONAL_MEMORY_INFO)
        public void onPersonalMemoryInfoChanged(IProject.PersonalMemoryInfo personalMemoryInfo) {
        }
    }

    private MpuProjectManager() {
    }

    public static synchronized MpuProjectManager get() {
        MpuProjectManager mpuProjectManager;
        synchronized (MpuProjectManager.class) {
            if (sMe != null) {
                mpuProjectManager = sMe;
            } else {
                mpuProjectManager = new MpuProjectManager();
                sMe = mpuProjectManager;
            }
        }
        return mpuProjectManager;
    }

    public boolean setPersonalMemoryInfo(IProject.PersonalMemoryInfo personalMemoryInfo) {
        return setSignalValue(9939, personalMemoryInfo.parseByte(personalMemoryInfo));
    }

    public boolean setCarSeartMemoryInfo(IProject.CarSeartMemoryInfo carSeartMemoryInfo) {
        return setSignalValue(9939, carSeartMemoryInfo.parseByte(carSeartMemoryInfo));
    }

    public boolean setMuteForEcall(boolean z) {
        return setSignalValue(9939, new byte[]{-114, 1, 2, z ? (byte) 1 : (byte) 0});
    }

    public boolean requestTBoxECallState() {
        return setSignalValue(9939, new byte[]{-126, 0, 22, 2, 3});
    }

    public boolean setCarFactorySet() {
        return setSignalValue(9939, new byte[]{-124, 19, 2});
    }

    public boolean setAvmApaCloseByMutleKey() {
        ICarConfig.CameraNumber cameraNumber = CarConfig.getCameraNumber();
        Log.i(TAG, "setAvmApaCloseByMutleKey: cameraNumber:" + cameraNumber);
        switch (cameraNumber) {
            case SVM:
                MpuAvmManager.get().setAvmDisplayStateByMpuReq(IMpuAvm.AvmDisplayState.OFF);
                return true;
            case SVM_PLUSAPA:
                if (CarDeviceManager.get().getRecorderDisplayState() == IBaseApi.EnableState.ENABLED) {
                    CarDeviceManager.get().setPAAMode(ICarDevice.PAAMode.APA);
                    CarDeviceManager.get().performAPAButtonClick();
                    break;
                } else {
                    Log.i(TAG, "setAvmApaCloseByMutleKey: getRecorderDisplayState is not display!");
                    return false;
                }
            case EXTERNAL_AVM:
                break;
            case SVM_PLUSFAPA:
                MpuAvmManager.get().setAvmDisplayStateByMpuReq(IMpuAvm.AvmDisplayState.OFF);
                CarDeviceManager.get().setSvmFunctionCmd(ICarDevice.SvmFunctionCmd.REQ_CANCEL);
                CarDeviceManager.get().perform360SvmButtonClick();
                if (CarDeviceManager.get().getRecorderDisplayState() != IBaseApi.EnableState.ENABLED) {
                    return true;
                }
                CarDeviceManager.get().setPAAMode(ICarDevice.PAAMode.APA);
                CarDeviceManager.get().performAPAButtonClick();
                return true;
            case SVM_PLUSAVP:
                return false;
            default:
                Log.e(TAG, "setAvmApaCloseByMutleKey: config is not avm");
                return true;
        }
        if (CarDeviceManager.get().getRecorderDisplayState() == IBaseApi.EnableState.ENABLED) {
            CarDeviceManager.get().setSvmFunctionCmd(ICarDevice.SvmFunctionCmd.REQ_CANCEL);
            CarDeviceManager.get().perform360SvmButtonClick();
            return true;
        }
        Log.i(TAG, "setAvmApaCloseByMutleKey: getRecorderDisplayState is not display!");
        return false;
    }

    public boolean setTouchInfo2Bsv(int i, int i2, int i3) {
        return setSignalValue(9939, new byte[]{-122, 23, 1, (byte) ((i >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (i & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) ((i2 >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (i2 & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) i3});
    }

    public void registerListener(MpuProjectListener mpuProjectListener) {
        registerReceiver(mpuProjectListener);
    }

    public void unregisterListener(MpuProjectListener mpuProjectListener) {
        unregisterReceiver(mpuProjectListener);
    }
}
