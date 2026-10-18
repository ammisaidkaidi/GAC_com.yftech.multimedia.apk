package com.yftech.vehicle.sdk;

import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarSeat;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarSeatManager extends BaseApiManager implements ICarSeat {
    private static final String TAG = "CarSeatManager";
    private static CarSeatManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarSeatListener {
        @SignalReceiver(signalId = ICarSeat.CHILD_LOCK_RL)
        public void onChildLockRLChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSeat.CHILD_LOCK_RR)
        public void onChildLockRRChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSeat.CURR_PEPS_PUID_STATE)
        public void onCurrPepsPuidChanged(ICarSeat.CurrPepsPuid currPepsPuid) {
        }

        @SignalReceiver(signalId = 87)
        public void onHeatLevelFLChanged(ICarSeat.HeatLevel heatLevel) {
        }

        @SignalReceiver(signalId = 88)
        public void onHeatLevelFRChanged(ICarSeat.HeatLevel heatLevel) {
        }

        @SignalReceiver(signalId = 89)
        public void onHeatLevelRLChanged(ICarSeat.HeatLevel heatLevel) {
        }

        @SignalReceiver(signalId = 90)
        public void onHeatLevelRRChanged(ICarSeat.HeatLevel heatLevel) {
        }

        @SignalReceiver(signalId = 95, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onHeatVentAutoModeFLStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = 96, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onHeatVentAutoModeFRStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = 97, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onHeatVentAutoModeRLStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = 98, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onHeatVentAutoModeRRStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarSeat.MEMSYS_OPERATION_REQ_STATE)
        public void onMemSysOperationReqCmdChanged(ICarSeat.MemSysOperationReqCmd memSysOperationReqCmd) {
        }

        @SignalReceiver(signalId = ICarSeat.SEAT_MASSAGE_LEVEL_RL)
        public void onSeatMassageLevelRLChanged(ICarSeat.SeatMassageLevel seatMassageLevel) {
        }

        @SignalReceiver(signalId = ICarSeat.SEAT_MASSAGE_LEVEL_RR)
        public void onSeatMassageLevelRRChanged(ICarSeat.SeatMassageLevel seatMassageLevel) {
        }

        @SignalReceiver(signalId = ICarSeat.SEAT_MASSAGE_MODE_RL)
        public void onSeatMassageModeRLChanged(ICarSeat.SeatMassageMode seatMassageMode) {
        }

        @SignalReceiver(signalId = ICarSeat.SEAT_MASSAGE_MODE_RR)
        public void onSeatMassageModeRRChanged(ICarSeat.SeatMassageMode seatMassageMode) {
        }

        @SignalReceiver(signalId = ICarSeat.SEAT_MASSAGE_ONOFF_RL)
        public void onSeatMassageOnOffRLChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSeat.SEAT_MASSAGE_ONOFF_RR)
        public void onSeatMassageOnOffRRChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarSeat.SEAT_OPERATION_STATE)
        public void onSeatOperationStateChanged(ICarSeat.SeatOperationState seatOperationState) {
        }

        @SignalReceiver(signalId = 91)
        public void onVentLevelFLChanged(ICarSeat.VentLevel ventLevel) {
        }

        @SignalReceiver(signalId = 92)
        public void onVentLevelFRChanged(ICarSeat.VentLevel ventLevel) {
        }

        @SignalReceiver(signalId = 93)
        public void onVentLevelRLChanged(ICarSeat.VentLevel ventLevel) {
        }

        @SignalReceiver(signalId = 94)
        public void onVentLevelRRChanged(ICarSeat.VentLevel ventLevel) {
        }
    }

    private CarSeatManager() {
    }

    public static synchronized CarSeatManager get() {
        CarSeatManager carSeatManager;
        synchronized (CarSeatManager.class) {
            if (sMe != null) {
                carSeatManager = sMe;
            } else {
                carSeatManager = new CarSeatManager();
                sMe = carSeatManager;
            }
        }
        return carSeatManager;
    }

    public ICarSeat.HeatLevel getHeatLevelFL() {
        return ICarSeat.HeatLevel.valueOf(getSignalValue(87).intValue());
    }

    public boolean setHeatLevelFL(ICarSeat.HeatLevel heatLevel) {
        return setSignalValue(15, heatLevel.value);
    }

    public ICarSeat.HeatLevel getHeatLevelFR() {
        return ICarSeat.HeatLevel.valueOf(getSignalValue(88).intValue());
    }

    public boolean setHeatLevelFR(ICarSeat.HeatLevel heatLevel) {
        return setSignalValue(16, heatLevel.value);
    }

    public ICarSeat.HeatLevel getHeatLevelRL() {
        return ICarSeat.HeatLevel.valueOf(getSignalValue(89).intValue());
    }

    public boolean setHeatLevelRL(ICarSeat.HeatLevel heatLevel) {
        return setSignalValue(17, heatLevel.value);
    }

    public ICarSeat.HeatLevel getHeatLevelRR() {
        return ICarSeat.HeatLevel.valueOf(getSignalValue(90).intValue());
    }

    public boolean setHeatLevelRR(ICarSeat.HeatLevel heatLevel) {
        return setSignalValue(18, heatLevel.value);
    }

    public ICarSeat.VentLevel getVentLevelFL() {
        return ICarSeat.VentLevel.valueOf(getSignalValue(91).intValue());
    }

    public boolean setVentLevelFL(ICarSeat.VentLevel ventLevel) {
        return setSignalValue(19, ventLevel.value);
    }

    public ICarSeat.VentLevel getVentLevelFR() {
        return ICarSeat.VentLevel.valueOf(getSignalValue(92).intValue());
    }

    public boolean setVentLevelFR(ICarSeat.VentLevel ventLevel) {
        return setSignalValue(20, ventLevel.value);
    }

    public ICarSeat.VentLevel getVentLevelRL() {
        return ICarSeat.VentLevel.valueOf(getSignalValue(93).intValue());
    }

    public boolean setVentLevelRL(ICarSeat.VentLevel ventLevel) {
        return setSignalValue(21, ventLevel.value);
    }

    public ICarSeat.VentLevel getVentLevelRR() {
        return ICarSeat.VentLevel.valueOf(getSignalValue(94).intValue());
    }

    public boolean setVentLevelRR(ICarSeat.VentLevel ventLevel) {
        return setSignalValue(22, ventLevel.value);
    }

    public boolean setHeatVentModeFL(ICarSeat.HeatVentMode heatVentMode) {
        return setSignalValue(23, heatVentMode.value);
    }

    public boolean setHeatVentModeFR(ICarSeat.HeatVentMode heatVentMode) {
        return setSignalValue(24, heatVentMode.value);
    }

    public boolean setHeatVentModeRL(ICarSeat.HeatVentMode heatVentMode) {
        return setSignalValue(25, heatVentMode.value);
    }

    public boolean setHeatVentModeRR(ICarSeat.HeatVentMode heatVentMode) {
        return setSignalValue(26, heatVentMode.value);
    }

    public boolean isHeatVentAutoModeFLEnabled() {
        return getSignalValue(95).byteValue() == 1;
    }

    public boolean setHeatVentAutoModeFLEnabled(boolean z) {
        return setSignalValue(27, z ? (byte) 2 : (byte) 1);
    }

    public boolean isHeatVentAutoModeFREnabled() {
        return getSignalValue(96).byteValue() == 1;
    }

    public boolean setHeatVentAutoModeFREnabled(boolean z) {
        return setSignalValue(28, z ? (byte) 2 : (byte) 1);
    }

    public boolean isHeatVentAutoModeRLEnabled() {
        return getSignalValue(97).byteValue() == 1;
    }

    public boolean setHeatVentAutoModeRLEnabled(boolean z) {
        return setSignalValue(29, z ? (byte) 2 : (byte) 1);
    }

    public boolean isHeatVentAutoModeRREnabled() {
        return getSignalValue(98).byteValue() == 1;
    }

    public boolean setHeatVentAutoModeRREnabled(boolean z) {
        return setSignalValue(30, z ? (byte) 2 : (byte) 1);
    }

    public boolean setSeatSteeringWheel(ICarSeat.SSWOperation sSWOperation) {
        return setSignalValue(31, sSWOperation.value);
    }

    public IBaseApi.EnableState getSeatMassageOnOffRL() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSeat.SEAT_MASSAGE_ONOFF_RL).intValue());
    }

    public boolean setSeatMassageOnOffRLEnabled(boolean z) {
        return setSignalValue(ICarSeat.SEAT_MASSAGE_ONOFF_RL_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public ICarSeat.SeatMassageMode getSeatMassageModeRL() {
        return ICarSeat.SeatMassageMode.valueOf(getSignalValue(ICarSeat.SEAT_MASSAGE_MODE_RL).intValue());
    }

    public boolean setSeatMassageModeRL(ICarSeat.SeatMassageMode seatMassageMode) {
        return setSignalValue(ICarSeat.SEAT_MASSAGE_MODE_RL_SETTING, seatMassageMode.value);
    }

    public ICarSeat.SeatMassageLevel getSeatMassageLevelRL() {
        return ICarSeat.SeatMassageLevel.valueOf(getSignalValue(ICarSeat.SEAT_MASSAGE_LEVEL_RL).intValue());
    }

    public boolean setSeatMassageLevelRL(ICarSeat.SeatMassageLevel seatMassageLevel) {
        return setSignalValue(ICarSeat.SEAT_MASSAGE_LEVEL_RL_SETTING, seatMassageLevel.value);
    }

    public IBaseApi.EnableState getSeatMassageOnOffRR() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSeat.SEAT_MASSAGE_ONOFF_RR).intValue());
    }

    public boolean setSeatMassageOnOffRREnabled(boolean z) {
        return setSignalValue(ICarSeat.SEAT_MASSAGE_ONOFF_RR_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public ICarSeat.SeatMassageMode getSeatMassageModeRR() {
        return ICarSeat.SeatMassageMode.valueOf(getSignalValue(ICarSeat.SEAT_MASSAGE_MODE_RR).intValue());
    }

    public boolean setSeatMassageModeRR(ICarSeat.SeatMassageMode seatMassageMode) {
        return setSignalValue(ICarSeat.SEAT_MASSAGE_MODE_RR_SETTING, seatMassageMode.value);
    }

    public ICarSeat.SeatMassageLevel getSeatMassageLevelRR() {
        return ICarSeat.SeatMassageLevel.valueOf(getSignalValue(ICarSeat.SEAT_MASSAGE_LEVEL_RR).intValue());
    }

    public boolean setSeatMassageLevelRR(ICarSeat.SeatMassageLevel seatMassageLevel) {
        return setSignalValue(ICarSeat.SEAT_MASSAGE_LEVEL_RR_SETTING, seatMassageLevel.value);
    }

    public IBaseApi.EnableState getChildLockRL() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSeat.CHILD_LOCK_RL).intValue());
    }

    public boolean setChildLockRLEnabled(boolean z) {
        return setSignalValue(ICarSeat.CHILD_LOCK_RL_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getChildLockRR() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarSeat.CHILD_LOCK_RR).intValue());
    }

    public boolean setChildLockRREnabled(boolean z) {
        return setSignalValue(ICarSeat.CHILD_LOCK_RR_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public ICarSeat.CurrPepsPuid getCurrPepsPuid() {
        return ICarSeat.CurrPepsPuid.valueOf(getSignalValue(ICarSeat.CURR_PEPS_PUID_STATE).intValue());
    }

    public boolean setCurrAccountCfg(ICarSeat.CurrAccountCfg currAccountCfg) {
        return setSignalValue(ICarSeat.CURR_ACCOUNT_CFG_SETTING, currAccountCfg.value);
    }

    public boolean setAccountDelete(ICarSeat.AccountDelete accountDelete) {
        return setSignalValue(ICarSeat.ACCOUNT_DELETE1_SETTING, accountDelete.value);
    }

    public boolean setDriverSeatPostionCmd(ICarSeat.DriverSeatPostionCmd driverSeatPostionCmd) {
        return setSignalValue(ICarSeat.DRIVER_SAVE_RECAL_COMD_SETTING, driverSeatPostionCmd.value);
    }

    public ICarSeat.SeatOperationState getSeatOperationState() {
        return ICarSeat.SeatOperationState.valueOf(getSignalValue(ICarSeat.SEAT_OPERATION_STATE).intValue());
    }

    public ICarSeat.MemSysOperationReqCmd getMemSysOperationReqCmd() {
        return ICarSeat.MemSysOperationReqCmd.valueOf(getSignalValue(ICarSeat.MEMSYS_OPERATION_REQ_STATE).intValue());
    }

    public void registerListener(CarSeatListener carSeatListener) {
        registerReceiver(carSeatListener);
    }

    public void unregisterListener(CarSeatListener carSeatListener) {
        unregisterReceiver(carSeatListener);
    }
}
