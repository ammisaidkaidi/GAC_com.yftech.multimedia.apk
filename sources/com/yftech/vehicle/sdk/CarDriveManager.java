package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarDrive;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarDriveManager extends BaseApiManager implements ICarDrive {
    private static final String TAG = "CarDriveManager";
    private static CarDriveManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarDriveListener {
        @SignalReceiver(signalId = ICarDrive.ASSIST_PARA_SWITCH_REQ_STATE)
        public void onAssistParaSwitchReqStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarDrive.AUTO_HOLD_STATE)
        public void onAutoHoldChanged(ICarDrive.AutoHoldState autoHoldState) {
        }

        @SignalReceiver(signalId = ICarDrive.AVDC_MODE)
        public void onAvdcModeChanged(ICarDrive.AvdcMode avdcMode) {
        }

        @SignalReceiver(signalId = ICarDrive.BCS_VDC_OFF_STATE)
        public void onBcsVdcOffStateChanged(ICarDrive.VdcOffState vdcOffState) {
        }

        @SignalReceiver(signalId = ICarDrive.DRIVE_MODE)
        public void onDriveModeChanged(ICarDrive.DriveMode driveMode) {
        }

        @SignalReceiver(signalId = ICarDrive.DRIVE_MODE_HEV)
        public void onDriveModeHevChanged(ICarDrive.DriveModeHev driveModeHev) {
        }

        @SignalReceiver(signalId = ICarDrive.DRIVE_SYSTEM_MODE)
        public void onDriveSystemModeChanged(ICarDrive.DriveSystemMode driveSystemMode) {
        }

        @SignalReceiver(signalId = ICarDrive.EMS_ENGINE_WAVE_STATE)
        public void onEMSEngineWaveSwitchStateChanged(IBaseApi.SwitchState switchState) {
        }

        @SignalReceiver(signalId = ICarDrive.EPS_STYLE)
        public void onEPSStyleChanged(ICarDrive.EPSStyle ePSStyle) {
        }

        @SignalReceiver(signalId = ICarDrive.EPS_MODE_STATE)
        public void onEpsModeStateChanged(ICarDrive.EpsModeState epsModeState) {
        }

        @SignalReceiver(signalId = ICarDrive.ESP_STATE)
        public void onEspStateChanged(ICarDrive.EspState espState) {
        }

        @SignalReceiver(signalId = ICarDrive.ESP_STYLE)
        public void onEspStyleChanged(ICarDrive.EspStyle espStyle) {
        }

        @SignalReceiver(signalId = ICarDrive.GAS_PEDAL_LEVEL)
        public void onGasPedalLevelChanged(ICarDrive.GasPedalLevel gasPedalLevel) {
        }

        @SignalReceiver(signalId = ICarDrive.HDC_STATE)
        public void onHdcStateChanged(ICarDrive.HdcState hdcState) {
        }

        @SignalReceiver(signalId = ICarDrive.MEMORY_DRIVE_MODE_A9E)
        public void onMemoryDriveModeA9EChanged(ICarDrive.MemoryDriveMode_A9E memoryDriveMode_A9E) {
        }

        @SignalReceiver(signalId = ICarDrive.MEMORY_DRIVE_MODE)
        public void onMemoryDriveModeChanged(ICarDrive.MemoryDriveMode memoryDriveMode) {
        }

        @SignalReceiver(signalId = ICarDrive.MRR_ACC_MODE)
        public void onMrrAccModeChanged(ICarDrive.MrrAccMode mrrAccMode) {
        }

        @SignalReceiver(signalId = 260)
        public void onTcuDriveModeChanged(ICarDrive.TcuDriveMode tcuDriveMode) {
        }
    }

    private CarDriveManager() {
    }

    public static synchronized CarDriveManager get() {
        CarDriveManager carDriveManager;
        synchronized (CarDriveManager.class) {
            if (sMe != null) {
                carDriveManager = sMe;
            } else {
                carDriveManager = new CarDriveManager();
                sMe = carDriveManager;
            }
        }
        return carDriveManager;
    }

    public ICarDrive.DriveMode getDriveMode() {
        return ICarDrive.DriveMode.valueOf(getSignalValue(ICarDrive.DRIVE_MODE).intValue());
    }

    public boolean setDriveMode(ICarDrive.DriveMode driveMode) {
        return setSignalValue(71, driveMode.value);
    }

    public ICarDrive.EPSStyle getEPSStyle() {
        return ICarDrive.EPSStyle.valueOf(getSignalValue(ICarDrive.EPS_STYLE).intValue());
    }

    public boolean setEPSStyle(ICarDrive.EPSStyle ePSStyle) {
        return setSignalValue(72, ePSStyle.value);
    }

    public ICarDrive.EpsModeState getEpsModeState() {
        return ICarDrive.EpsModeState.valueOf(getSignalValue(ICarDrive.EPS_MODE_STATE).intValue());
    }

    public ICarDrive.EspStyle getEspStyle() {
        return ICarDrive.EspStyle.valueOf(getSignalValue(ICarDrive.ESP_STYLE).intValue());
    }

    public IBaseApi.EnableState getAssistParaSwitchReqState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarDrive.ASSIST_PARA_SWITCH_REQ_STATE).intValue());
    }

    public IBaseApi.SwitchState getEMSEngineWaveSwitchState() {
        return IBaseApi.SwitchState.valueOf(getSignalValue(ICarDrive.EMS_ENGINE_WAVE_STATE).intValue());
    }

    public boolean setEMSEngineWaveEnabled(boolean z) {
        return setSignalValue(73, z ? (byte) 2 : (byte) 1);
    }

    public ICarDrive.MemoryDriveMode getMemoryDriveMode() {
        return ICarDrive.MemoryDriveMode.valueOf(getSignalValue(ICarDrive.MEMORY_DRIVE_MODE).intValue());
    }

    public ICarDrive.MemoryDriveMode_A9E getMemoryDriveModeA9E() {
        return ICarDrive.MemoryDriveMode_A9E.valueOf(getSignalValue(ICarDrive.MEMORY_DRIVE_MODE_A9E).intValue());
    }

    public boolean setMemoryDriveMode(ICarDrive.MemoryDriveMode memoryDriveMode) {
        return setSignalValue(ICarDrive.MEMORY_DRIVE_MODE_SETTING, memoryDriveMode.value);
    }

    public ICarDrive.EspState getEspState() {
        return ICarDrive.EspState.valueOf(getSignalValue(ICarDrive.ESP_STATE).intValue());
    }

    public boolean setEspState(ICarDrive.EspState espState) {
        return setSignalValue(ICarDrive.ESP_STATE_SETTING, espState.value);
    }

    public ICarDrive.HdcState getHdcState() {
        return ICarDrive.HdcState.valueOf(getSignalValue(ICarDrive.HDC_STATE).intValue());
    }

    public boolean setHdcState(ICarDrive.HdcState hdcState) {
        return setSignalValue(ICarDrive.HDC_STATE_SETTING, hdcState.value);
    }

    public ICarDrive.AvdcMode getAvdcMode() {
        return ICarDrive.AvdcMode.valueOf(getSignalValue(ICarDrive.AVDC_MODE).intValue());
    }

    public boolean setAvdcMode(ICarDrive.AvdcMode avdcMode) {
        return setSignalValue(ICarDrive.AVDC_MODE_SETTING, avdcMode.value);
    }

    public ICarDrive.GasPedalLevel getGasPedalLevel() {
        return ICarDrive.GasPedalLevel.valueOf(getSignalValue(ICarDrive.GAS_PEDAL_LEVEL).intValue());
    }

    public boolean setGasPedalLevel(ICarDrive.GasPedalLevel gasPedalLevel) {
        return setSignalValue(ICarDrive.GAS_PEDAL_LEVEL_SETTING, gasPedalLevel.value);
    }

    public ICarDrive.TcuDriveMode getTcuDriveMode() {
        return ICarDrive.TcuDriveMode.valueOf(getSignalValue(260).intValue());
    }

    public ICarDrive.DriveSystemMode getDriveSystemMode() {
        return ICarDrive.DriveSystemMode.valueOf(getSignalValue(ICarDrive.DRIVE_SYSTEM_MODE).intValue());
    }

    public ICarDrive.AutoHoldState getAutoHold() {
        return ICarDrive.AutoHoldState.valueOf(getSignalValue(ICarDrive.AUTO_HOLD_STATE).intValue());
    }

    public boolean performAutoHoldButtonClick() {
        return setSignalValue(ICarDrive.AUTO_HOLD_SETTING, (byte) 1);
    }

    public ICarDrive.VdcOffState getBcsVdcOffState() {
        return ICarDrive.VdcOffState.valueOf(getSignalValue(ICarDrive.BCS_VDC_OFF_STATE).intValue());
    }

    public ICarDrive.DriveModeHev getDriveModeHev() {
        return ICarDrive.DriveModeHev.valueOf(getSignalValue(ICarDrive.DRIVE_MODE_HEV).intValue());
    }

    public ICarDrive.MrrAccMode getMrrAccMode() {
        return ICarDrive.MrrAccMode.valueOf(getSignalValue(ICarDrive.MRR_ACC_MODE).intValue());
    }

    public void registerListener(CarDriveListener carDriveListener) {
        registerReceiver(carDriveListener);
    }

    public void unregisterListener(CarDriveListener carDriveListener) {
        unregisterReceiver(carDriveListener);
    }
}
