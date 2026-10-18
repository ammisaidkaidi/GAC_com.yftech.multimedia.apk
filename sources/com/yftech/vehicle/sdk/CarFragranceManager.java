package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.ICarFragrance;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarFragranceManager extends BaseApiManager implements ICarFragrance {
    private static final String TAG = "CarFragranceManager";
    private static CarFragranceManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarFragranceListener {
        @SignalReceiver(signalId = ICarFragrance.FRAGRANCE1_WORKSTATE)
        public void onFragrance1WorkStateChanged(ICarFragrance.FragranceWorkState fragranceWorkState) {
        }

        @SignalReceiver(signalId = ICarFragrance.FRAGRANCE2_WORKSTATE)
        public void onFragrance2WorkStateChanged(ICarFragrance.FragranceWorkState fragranceWorkState) {
        }

        @SignalReceiver(signalId = ICarFragrance.FRAGRANCE3_WORKSTATE)
        public void onFragrance3WorkStateChanged(ICarFragrance.FragranceWorkState fragranceWorkState) {
        }

        @SignalReceiver(signalId = ICarFragrance.FRAGRANCE_TASTE1_FRAG)
        public void onFragranceTaste1FragChanged(int i) {
        }

        @SignalReceiver(signalId = ICarFragrance.FRAGRANCE_TASTE1_PERCENT)
        public void onFragranceTaste1PercentChanged(int i) {
        }

        @SignalReceiver(signalId = ICarFragrance.FRAGRANCE_TASTE2_FRAG)
        public void onFragranceTaste2FragChanged(int i) {
        }

        @SignalReceiver(signalId = ICarFragrance.FRAGRANCE_TASTE2_PERCENT)
        public void onFragranceTaste2PercentChanged(int i) {
        }

        @SignalReceiver(signalId = ICarFragrance.FRAGRANCE_TASTE3_FRAG)
        public void onFragranceTaste3FragChanged(int i) {
        }

        @SignalReceiver(signalId = ICarFragrance.FRAGRANCE_TASTE3_PERCENT)
        public void onFragranceTaste3PercentChanged(int i) {
        }
    }

    private CarFragranceManager() {
    }

    public static synchronized CarFragranceManager get() {
        CarFragranceManager carFragranceManager;
        synchronized (CarFragranceManager.class) {
            if (sMe != null) {
                carFragranceManager = sMe;
            } else {
                carFragranceManager = new CarFragranceManager();
                sMe = carFragranceManager;
            }
        }
        return carFragranceManager;
    }

    public boolean setFragranceTaste(ICarFragrance.FragranceTaste fragranceTaste) {
        return setSignalValue(ICarFragrance.FRAGRANCE_TASTE_STATE, fragranceTaste.value);
    }

    public boolean setFRAGRANCE_CONCENTRATION(ICarFragrance.FragranceConcentration fragranceConcentration) {
        return setSignalValue(-1, fragranceConcentration.value);
    }

    public int getFragranceTaste1Percent() {
        return getSignalValue(ICarFragrance.FRAGRANCE_TASTE1_PERCENT).intValue();
    }

    public int getFragranceTaste2Percent() {
        return getSignalValue(ICarFragrance.FRAGRANCE_TASTE2_PERCENT).intValue();
    }

    public int getFragranceTaste3Percent() {
        return getSignalValue(ICarFragrance.FRAGRANCE_TASTE3_PERCENT).intValue();
    }

    public ICarFragrance.FragranceWorkState getFragrance1WorkState() {
        return ICarFragrance.FragranceWorkState.valueOf(getSignalValue(ICarFragrance.FRAGRANCE1_WORKSTATE).intValue());
    }

    public ICarFragrance.FragranceWorkState getFragrance2WorkState() {
        return ICarFragrance.FragranceWorkState.valueOf(getSignalValue(ICarFragrance.FRAGRANCE2_WORKSTATE).intValue());
    }

    public ICarFragrance.FragranceWorkState getFragrance3WorkState() {
        return ICarFragrance.FragranceWorkState.valueOf(getSignalValue(ICarFragrance.FRAGRANCE3_WORKSTATE).intValue());
    }

    public int getFragranceTaste1Frag() {
        return getSignalValue(ICarFragrance.FRAGRANCE_TASTE1_FRAG).intValue();
    }

    public int getFragranceTaste2Frag() {
        return getSignalValue(ICarFragrance.FRAGRANCE_TASTE2_FRAG).intValue();
    }

    public int getFragranceTaste3Frag() {
        return getSignalValue(ICarFragrance.FRAGRANCE_TASTE3_FRAG).intValue();
    }

    public void registerListener(CarFragranceListener carFragranceListener) {
        registerReceiver(carFragranceListener);
    }

    public void unregisterListener(CarFragranceListener carFragranceListener) {
        unregisterReceiver(carFragranceListener);
    }
}
