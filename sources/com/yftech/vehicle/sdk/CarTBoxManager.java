package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.ICarTBox;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarTBoxManager extends BaseApiManager implements ICarTBox {
    private static final String TAG = "CarTBoxManager";
    private static CarTBoxManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarTBoxListener {
        @SignalReceiver(signalId = ICarTBox.TCU_MUTE_RADIO_ORDER)
        public void onMuteRadioOrderChanged(ICarTBox.MuteRadioOrder muteRadioOrder) {
        }

        @SignalReceiver(signalId = ICarTBox.PHONE_CALL_STATE)
        public void onPhoneCallStateChanged(ICarTBox.PhoneCallState phoneCallState) {
        }

        @SignalReceiver(signalId = ICarTBox.PHONE_MODE)
        public void onPhoneModeChanged(ICarTBox.PhoneMode phoneMode) {
        }
    }

    private CarTBoxManager() {
    }

    public static synchronized CarTBoxManager get() {
        CarTBoxManager carTBoxManager;
        synchronized (CarTBoxManager.class) {
            if (sMe != null) {
                carTBoxManager = sMe;
            } else {
                carTBoxManager = new CarTBoxManager();
                sMe = carTBoxManager;
            }
        }
        return carTBoxManager;
    }

    public ICarTBox.MuteRadioOrder getMuteRadioOrder() {
        return ICarTBox.MuteRadioOrder.valueOf(getSignalValue(ICarTBox.TCU_MUTE_RADIO_ORDER).intValue());
    }

    public boolean setPhoneKeyAccept(ICarTBox.PhoneKeyAction phoneKeyAction) {
        return setSignalValue(ICarTBox.PHONE_KEY_ACCEPT_SETTING, phoneKeyAction.value);
    }

    public boolean setPhoneKeyCancel(ICarTBox.PhoneKeyAction phoneKeyAction) {
        return setSignalValue(ICarTBox.PHONE_KEY_CANCEL_SETTING, phoneKeyAction.value);
    }

    public ICarTBox.PhoneMode getPhoneMode() {
        return ICarTBox.PhoneMode.valueOf(getSignalValue(ICarTBox.PHONE_MODE).intValue());
    }

    public ICarTBox.PhoneCallState getPhoneCallState() {
        return ICarTBox.PhoneCallState.valueOf(getSignalValue(ICarTBox.PHONE_CALL_STATE).intValue());
    }

    public boolean setPhoneType(ICarTBox.PhoneType phoneType) {
        return setSignalValue(514, phoneType.value);
    }

    public void registerListener(CarTBoxListener carTBoxListener) {
        registerReceiver(carTBoxListener);
    }

    public void unregisterListener(CarTBoxListener carTBoxListener) {
        unregisterReceiver(carTBoxListener);
    }
}
