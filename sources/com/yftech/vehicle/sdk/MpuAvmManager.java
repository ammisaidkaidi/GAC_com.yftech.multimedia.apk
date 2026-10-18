package com.yftech.vehicle.sdk;

import android.os.SystemProperties;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseCmd;
import com.yftech.vehicle.internal.adapter.IMpuAvm;

/* loaded from: /home/user/work/dex/classes4.dex */
public class MpuAvmManager extends BaseApiManager implements IMpuAvm {
    private static final String TAG = "MpuAvmManager";
    private static MpuAvmManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class MpuAvmListener {
        @SignalReceiver(signalId = IBaseCmd.AVM_NOTIFY_AVM_CALIBRATION_STATE_BY_AVM)
        public void onNotifyAvmCalibrationStateByAvm(IMpuAvm.AvmCalibrationState avmCalibrationState) {
        }

        @SignalReceiver(signalId = IBaseCmd.AVM_NOTIFY_AVM_CAMERASTATE_BY_AVM)
        public void onNotifyAvmCameraStateByAvm(IMpuAvm.AvmCameraState avmCameraState) {
        }

        @SignalReceiver(signalId = IBaseCmd.AVM_NOTIFY_AVM_DISPLAY_STATE_BY_AVM)
        public void onNotifyAvmDisplayStateByAvm(IMpuAvm.AvmDisplayState avmDisplayState) {
        }

        @SignalReceiver(signalId = IBaseCmd.AVM_NOTIFY_AVM_FULLSCREEN_SWTICH_BY_RADAR_BYAVM)
        public void onNotifyAvmFullScreenSwtichByRadarByAvm(IMpuAvm.AvmFullScreenSwtich avmFullScreenSwtich) {
        }

        @SignalReceiver(signalId = IBaseCmd.AVM_NOTIFY_AVM_FULLSCREEN_SWTICH_BY_TURNLIGHT_BYAVM)
        public void onNotifyAvmFullScreenSwtichByTurnLightByAvm(IMpuAvm.AvmFullScreenSwtich avmFullScreenSwtich) {
        }

        @SignalReceiver(signalId = IBaseCmd.AVM_NOTIFY_AVM_HEARTSTATE_BY_AVM)
        public void onNotifyAvmHeartStateByAvm(IMpuAvm.AvmHeartState avmHeartState) {
        }

        @SignalReceiver(signalId = IBaseCmd.AVM_NOTIFY_AVM_WORKMODE_BY_AVM)
        public void onNotifyAvmWorkModeByAvm(IMpuAvm.AvmWorkMode avmWorkMode) {
        }
    }

    private MpuAvmManager() {
    }

    public static synchronized MpuAvmManager get() {
        MpuAvmManager mpuAvmManager;
        synchronized (MpuAvmManager.class) {
            if (sMe != null) {
                mpuAvmManager = sMe;
            } else {
                mpuAvmManager = new MpuAvmManager();
                sMe = mpuAvmManager;
            }
        }
        return mpuAvmManager;
    }

    public boolean setAvmDisplayStateByMpuReq(IMpuAvm.AvmDisplayState avmDisplayState) {
        return setSignalValue(IBaseCmd.AVM_DISPLAY_STATE_BY_MPU_REQ_SET, avmDisplayState.value);
    }

    public String getAvmVersion() {
        try {
            return SystemProperties.get("persist.version.avm.software ", "20200619V1.0");
        } catch (Exception unused) {
            return "20200619V1.0";
        }
    }

    public IMpuAvm.AvmDisplayState getNotifyAvmDisplayStateByAvm() {
        return IMpuAvm.AvmDisplayState.valueOf(getSignalValue(IBaseCmd.AVM_NOTIFY_AVM_DISPLAY_STATE_BY_AVM).intValue());
    }

    public IMpuAvm.AvmHeartState getNotifyAvmHeartStateByAvm() {
        return IMpuAvm.AvmHeartState.valueOf(getSignalValue(IBaseCmd.AVM_NOTIFY_AVM_HEARTSTATE_BY_AVM).intValue());
    }

    public boolean setAvmLanguage(IMpuAvm.Language language) {
        return setSignalValue(IBaseCmd.AVM_DISPLAY_LANGUAGE_BY_MPU_REQ_SET, language.value);
    }

    public void registerListener(MpuAvmListener mpuAvmListener) {
        registerReceiver(mpuAvmListener);
    }

    public void unregisterListener(MpuAvmListener mpuAvmListener) {
        unregisterReceiver(mpuAvmListener);
    }
}
