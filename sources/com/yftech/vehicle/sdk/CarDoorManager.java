package com.yftech.vehicle.sdk;

import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarDoor;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarDoorManager extends BaseApiManager implements ICarDoor {
    private static final String TAG = "CarDoorManager";
    private static CarDoorManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarDoorListener {
        @SignalReceiver(signalId = ICarDoor.AUTO_UNLOCK_STATE)
        public void onAutoUnlockChanged(ICarDoor.AutoUnlockState autoUnlockState) {
        }

        @SignalReceiver(signalId = ICarDoor.DRIVER_DOOR_LOCK_STATE)
        public void onDriverDoorLockChanged(ICarDoor.DoorLockState doorLockState) {
        }

        @SignalReceiver(signalId = ICarDoor.DRIVER_DOOR_STATE)
        public void onDriverDoorStateChanged(ICarDoor.DoorState doorState) {
        }

        @SignalReceiver(signalId = ICarDoor.ENGINE_HOOD_STATE)
        public void onEngineHoodStateChanged(ICarDoor.EngineHoodState engineHoodState) {
        }

        @SignalReceiver(signalId = ICarDoor.HOOD_DOOR_STATE)
        public void onHoodDoorStateChanged(ICarDoor.DoorState doorState) {
        }

        @SignalReceiver(signalId = ICarDoor.LOCK_UNLOCK_SOUND_STATE)
        public void onLockUnlockSoundEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarDoor.PEPS_AUTO_TRUNK_OPEN_STATE)
        public void onPEPSAutoTrunkOpenChanged(ICarDoor.PEPSAutoTrunkOpenState pEPSAutoTrunkOpenState) {
        }

        @SignalReceiver(signalId = ICarDoor.PEPS_UNLOCK_STATE)
        public void onPEPSUnlockEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarDoor.PEPS_WALK_AWAY_LOCK_STATE)
        public void onPEPSWalkAwayLockEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarDoor.PSD_DOOR_SPEED_L)
        public void onPSDDoorSpeedLChanged(ICarDoor.PSDDoorSpeed pSDDoorSpeed) {
        }

        @SignalReceiver(signalId = ICarDoor.PSD_DOOR_SPEED_R)
        public void onPSDDoorSpeedRChanged(ICarDoor.PSDDoorSpeed pSDDoorSpeed) {
        }

        @SignalReceiver(signalId = ICarDoor.PASSENGER_DOOR_LOCK_STATE)
        public void onPassengerDoorLockChanged(ICarDoor.DoorLockState doorLockState) {
        }

        @SignalReceiver(signalId = ICarDoor.PASSENGER_DOOR_STATE)
        public void onPassengerDoorStateChanged(ICarDoor.DoorState doorState) {
        }

        @SignalReceiver(signalId = ICarDoor.REAR_LEFT_DOOR_STATE)
        public void onRearLeftDoorStateChanged(ICarDoor.DoorState doorState) {
        }

        @SignalReceiver(signalId = ICarDoor.REAR_RIGHT_DOOR_STATE)
        public void onRearRightDoorStateChanged(ICarDoor.DoorState doorState) {
        }

        @SignalReceiver(signalId = ICarDoor.REMOTE_UNLOCK_STATE)
        public void onRemoteUnlockModeChanged(ICarDoor.RemoteUnlockMode remoteUnlockMode) {
        }

        @SignalReceiver(signalId = ICarDoor.SLIDING_DOOR_MODE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onSlidingDoorModeAutoStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarDoor.SLIDING_DOOR_OPERATION_L)
        public void onSlidingDoorOperationLChanged(ICarDoor.SlidingDoorOperation slidingDoorOperation) {
        }

        @SignalReceiver(signalId = ICarDoor.SLIDING_DOOR_OPERATION_R)
        public void onSlidingDoorOperationRChanged(ICarDoor.SlidingDoorOperation slidingDoorOperation) {
        }

        @SignalReceiver(signalId = ICarDoor.SLIDING_DOOR_STATE_L)
        public void onSlidingDoorStateLChanged(ICarDoor.SlidingDoorState slidingDoorState) {
        }

        @SignalReceiver(signalId = ICarDoor.SLIDING_DOOR_STATE_R)
        public void onSlidingDoorStateRChanged(ICarDoor.SlidingDoorState slidingDoorState) {
        }

        @SignalReceiver(signalId = ICarDoor.SPEED_AUTO_LOCK_STATE)
        public void onSpeedAutoLockEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarDoor.TAIL_DOOR_MODE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onTailDoorModeStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarDoor.TAIL_DOOR_PERCENT)
        public void onTailDoorPercentChanged(int i) {
        }

        @SignalReceiver(signalId = ICarDoor.TAIL_DOOR_STATE)
        public void onTailDoorStateChanged(ICarDoor.TailDoorState tailDoorState) {
        }

        @SignalReceiver(signalId = ICarDoor.TAIL_DOOR_TRAVEL_PERCENT)
        public void onTailDoorTravelPercentChanged(int i) {
        }

        @SignalReceiver(signalId = ICarDoor.TRUNK_DOOR_STATE)
        public void onTrunkDoorStateChanged(ICarDoor.DoorState doorState) {
        }
    }

    private CarDoorManager() {
    }

    public static synchronized CarDoorManager get() {
        CarDoorManager carDoorManager;
        synchronized (CarDoorManager.class) {
            if (sMe != null) {
                carDoorManager = sMe;
            } else {
                carDoorManager = new CarDoorManager();
                sMe = carDoorManager;
            }
        }
        return carDoorManager;
    }

    public ICarDoor.EngineHoodState getEngineHoodState() {
        return ICarDoor.EngineHoodState.valueOf(getSignalValue(ICarDoor.ENGINE_HOOD_STATE).intValue());
    }

    public ICarDoor.DoorState getHoodDoorState() {
        return ICarDoor.DoorState.valueOf(getSignalValue(ICarDoor.HOOD_DOOR_STATE).intValue());
    }

    public ICarDoor.DoorState getDriverDoorState() {
        return ICarDoor.DoorState.valueOf(getSignalValue(ICarDoor.DRIVER_DOOR_STATE).intValue());
    }

    public ICarDoor.DoorState getPassengerDoorState() {
        return ICarDoor.DoorState.valueOf(getSignalValue(ICarDoor.PASSENGER_DOOR_STATE).intValue());
    }

    public ICarDoor.DoorState getRearLeftDoorState() {
        return ICarDoor.DoorState.valueOf(getSignalValue(ICarDoor.REAR_LEFT_DOOR_STATE).intValue());
    }

    public ICarDoor.DoorState getRearRightDoorState() {
        return ICarDoor.DoorState.valueOf(getSignalValue(ICarDoor.REAR_RIGHT_DOOR_STATE).intValue());
    }

    public ICarDoor.DoorState getTrunkDoorState() {
        return ICarDoor.DoorState.valueOf(getSignalValue(ICarDoor.TRUNK_DOOR_STATE).intValue());
    }

    public ICarDoor.RemoteUnlockMode getRemoteUnlockMode() {
        return ICarDoor.RemoteUnlockMode.valueOf(getSignalValue(ICarDoor.REMOTE_UNLOCK_STATE).intValue());
    }

    public boolean setRemoteUnlockMode(ICarDoor.RemoteUnlockMode remoteUnlockMode) {
        return setSignalValue(52, remoteUnlockMode.value);
    }

    public ICarDoor.AutoUnlockState getAutoUnlock() {
        return ICarDoor.AutoUnlockState.valueOf(getSignalValue(ICarDoor.AUTO_UNLOCK_STATE).intValue());
    }

    public boolean setAutoUnlock(ICarDoor.AutoUnlockState autoUnlockState) {
        return setSignalValue(53, autoUnlockState.value);
    }

    public IBaseApi.EnableState getSpeedAutoLockEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarDoor.SPEED_AUTO_LOCK_STATE).intValue());
    }

    public boolean setSpeedAutoLockEnabled(boolean z) {
        return setSignalValue(54, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getLockUnlockSoundEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarDoor.LOCK_UNLOCK_SOUND_STATE).intValue());
    }

    public boolean setLockUnlockSoundEnabled(boolean z) {
        return setSignalValue(55, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getPEPSUnlockEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarDoor.PEPS_UNLOCK_STATE).intValue());
    }

    public boolean setPEPSUnlockEnabled(boolean z) {
        return setSignalValue(56, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getPEPSWalkAwayLockEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarDoor.PEPS_WALK_AWAY_LOCK_STATE).intValue());
    }

    public boolean setPEPSWalkAwayLockEnabled(boolean z) {
        return setSignalValue(57, z ? (byte) 2 : (byte) 1);
    }

    public ICarDoor.PEPSAutoTrunkOpenState getPEPSAutoTrunkOpen() {
        return ICarDoor.PEPSAutoTrunkOpenState.valueOf(getSignalValue(ICarDoor.PEPS_AUTO_TRUNK_OPEN_STATE).intValue());
    }

    public boolean setPEPSAutoTrunkOpen(ICarDoor.PEPSAutoTrunkOpenState pEPSAutoTrunkOpenState) {
        return setSignalValue(58, pEPSAutoTrunkOpenState.value);
    }

    public boolean setTailDoorCmd(ICarDoor.TailDoorCmd tailDoorCmd) {
        return setSignalValue(59, tailDoorCmd.value);
    }

    public boolean performTailDoorPositionMemoryClearButtonClick() {
        return setSignalValue(ICarDoor.TAIL_DOOR_POSITION_MEMORY_CLEAR_SETTING, (byte) 1);
    }

    public boolean performTailDoorMaxPositionMemoryButtonClick() {
        return setSignalValue(ICarDoor.TAIL_DOOR_MAX_POSITION_MEMORY_SETTING, (byte) 1);
    }

    public int getTailDoorPercent() {
        return getSignalValue(ICarDoor.TAIL_DOOR_PERCENT).intValue();
    }

    public int getTailDoorTravelPercent() {
        return getSignalValue(ICarDoor.TAIL_DOOR_TRAVEL_PERCENT).intValue();
    }

    public ICarDoor.TailDoorState getTailDoorState() {
        return ICarDoor.TailDoorState.valueOf(getSignalValue(ICarDoor.TAIL_DOOR_STATE).intValue());
    }

    public boolean isTailDoorModeEnabled() {
        return getSignalValue(ICarDoor.TAIL_DOOR_MODE).byteValue() == 1;
    }

    public boolean setPLGMControl(ICarDoor.PLGMControl pLGMControl) {
        return setSignalValue(-1, pLGMControl.value);
    }

    public boolean setPLGMMaxLevel(ICarDoor.PLGMMaxLevel pLGMMaxLevel) {
        return setSignalValue(60, pLGMMaxLevel.value);
    }

    public boolean setPLGMFunction(ICarDoor.PLGMFunction pLGMFunction) {
        return setSignalValue(61, pLGMFunction.value);
    }

    public ICarDoor.PSDDoorSpeed getPSDDoorSpeedL() {
        return ICarDoor.PSDDoorSpeed.valueOf(getSignalValue(ICarDoor.PSD_DOOR_SPEED_L).intValue());
    }

    public boolean setPSDDoorSpeedL(ICarDoor.PSDDoorSpeed pSDDoorSpeed) {
        return setSignalValue(ICarDoor.PSD_DOOR_SPEED_L_SETTING, pSDDoorSpeed.value);
    }

    public ICarDoor.PSDDoorSpeed getPSDDoorSpeedR() {
        return ICarDoor.PSDDoorSpeed.valueOf(getSignalValue(ICarDoor.PSD_DOOR_SPEED_R).intValue());
    }

    public boolean setPSDDoorSpeedR(ICarDoor.PSDDoorSpeed pSDDoorSpeed) {
        return setSignalValue(ICarDoor.PSD_DOOR_SPEED_R_SETTING, pSDDoorSpeed.value);
    }

    public boolean isSlidingDoorModeAutoEnabled() {
        return getSignalValue(ICarDoor.SLIDING_DOOR_MODE).byteValue() == 1;
    }

    public boolean setSlidingDoorModeAutoEnabled(boolean z) {
        return setSignalValue(ICarDoor.SLIDING_DOOR_MODE_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public boolean setSlidingDoorCmdR(ICarDoor.SlidingDoorCmd slidingDoorCmd) {
        return setSignalValue(ICarDoor.SLIDING_DOOR_CMD_R_SETTING, slidingDoorCmd.value);
    }

    public boolean setSlidingDoorCmdL(ICarDoor.SlidingDoorCmd slidingDoorCmd) {
        return setSignalValue(ICarDoor.SLIDING_DOOR_CMD_L_SETTING, slidingDoorCmd.value);
    }

    public ICarDoor.SlidingDoorState getSlidingDoorStateL() {
        return ICarDoor.SlidingDoorState.valueOf(getSignalValue(ICarDoor.SLIDING_DOOR_STATE_L).intValue());
    }

    public ICarDoor.SlidingDoorOperation getSlidingDoorOperationL() {
        return ICarDoor.SlidingDoorOperation.valueOf(getSignalValue(ICarDoor.SLIDING_DOOR_OPERATION_L).intValue());
    }

    public ICarDoor.SlidingDoorState getSlidingDoorStateR() {
        return ICarDoor.SlidingDoorState.valueOf(getSignalValue(ICarDoor.SLIDING_DOOR_STATE_R).intValue());
    }

    public ICarDoor.SlidingDoorOperation getSlidingDoorOperationR() {
        return ICarDoor.SlidingDoorOperation.valueOf(getSignalValue(ICarDoor.SLIDING_DOOR_OPERATION_R).intValue());
    }

    public ICarDoor.DoorLockState getDriverDoorLock() {
        return ICarDoor.DoorLockState.valueOf(getSignalValue(ICarDoor.DRIVER_DOOR_LOCK_STATE).intValue());
    }

    public ICarDoor.DoorLockState getPassengerDoorLock() {
        return ICarDoor.DoorLockState.valueOf(getSignalValue(ICarDoor.PASSENGER_DOOR_LOCK_STATE).intValue());
    }

    public void registerListener(CarDoorListener carDoorListener) {
        registerReceiver(carDoorListener);
    }

    public void unregisterListener(CarDoorListener carDoorListener) {
        unregisterReceiver(carDoorListener);
    }
}
