package com.yftech.vehicle.sdk;

import android.util.Log;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.adapter.IBaseCmd;
import com.yftech.vehicle.internal.adapter.ICarEvDevice;
import com.yftech.vehicle.internal.project.Ihu23Project;
import com.yftech.vehicle.internal.utils.StringFormart;

/* loaded from: /home/user/work/dex/classes4.dex */
public class Ihu23ProjectManager extends BaseApiManager implements IBaseCmd {
    private static final String TAG = "Ihu23ProjectManager";
    private static Ihu23ProjectManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class ProjectIhu23Listener {
    }

    private Ihu23ProjectManager() {
    }

    public static synchronized Ihu23ProjectManager get() {
        Ihu23ProjectManager ihu23ProjectManager;
        synchronized (Ihu23ProjectManager.class) {
            if (sMe != null) {
                ihu23ProjectManager = sMe;
            } else {
                ihu23ProjectManager = new Ihu23ProjectManager();
                sMe = ihu23ProjectManager;
            }
        }
        return ihu23ProjectManager;
    }

    public boolean setChargeInfo(Ihu23Project.ChargeInfo chargeInfo) {
        if (chargeInfo == null) {
            Log.w(TAG, "setChargeInfo() - info is null ");
            return false;
        }
        if (chargeInfo.bookStartYear < 2000) {
            Log.w(TAG, "setChargeInfo() - info.bookStartYear <2000 ");
            return false;
        }
        if (chargeInfo.bookStopYear < 2000) {
            Log.w(TAG, "setChargeInfo() - info.bookStopYear <2000 ");
            return false;
        }
        byte[] formartChargeInfoByteArray = Ihu23Project.formartChargeInfoByteArray(chargeInfo);
        Log.d(TAG, "MCU_IHU23 setChargeInfo-> [" + StringFormart.byte2hex(formartChargeInfoByteArray) + " ]");
        return setSignalValue(9939, formartChargeInfoByteArray);
    }

    public Ihu23Project.ChargeInfo getChargeInfo() {
        Ihu23Project.ChargeInfo chargeInfo = new Ihu23Project.ChargeInfo();
        chargeInfo.bookChrgStartRemainingDay = CarEvDeviceManager.get().getBookChrgStartRemainingDay();
        chargeInfo.bookChrgStartRemainingHour = CarEvDeviceManager.get().getBookChrgStartRemainingHour();
        chargeInfo.bookChrgStartRemainingMin = CarEvDeviceManager.get().getBookChrgStartRemainingMin();
        chargeInfo.bookStartYear = CarEvDeviceManager.get().getBookChrgStartYear();
        chargeInfo.bookStartDay = CarEvDeviceManager.get().getBookChrgStartDay();
        chargeInfo.bookStartMon = CarEvDeviceManager.get().getBookChrgStartMon();
        chargeInfo.bookStartHour = CarEvDeviceManager.get().getBookChrgStartHour();
        chargeInfo.bookStartMin = CarEvDeviceManager.get().getBookChrgStartMin();
        chargeInfo.bookStopYear = CarEvDeviceManager.get().getBookChrgStopYear();
        chargeInfo.bookStopDay = CarEvDeviceManager.get().getBookChrgStopDay();
        chargeInfo.bookStopMon = CarEvDeviceManager.get().getBookChrgStopMon();
        chargeInfo.bookStopHour = CarEvDeviceManager.get().getBookChrgStopHour();
        chargeInfo.bookStopMin = CarEvDeviceManager.get().getBookChrgStopMin();
        chargeInfo.bookChrgMode = Ihu23Project.ChargeMode.valueOf(CarEvDeviceManager.get().getChargeMode().value);
        chargeInfo.repeatBookChrgDay1 = CarEvDeviceManager.get().getRepeatBookChrgDay1() == ICarEvDevice.RepeatBookMode.BOOKING;
        chargeInfo.repeatBookChrgDay2 = CarEvDeviceManager.get().getRepeatBookChrgDay2() == ICarEvDevice.RepeatBookMode.BOOKING;
        chargeInfo.repeatBookChrgDay3 = CarEvDeviceManager.get().getRepeatBookChrgDay3() == ICarEvDevice.RepeatBookMode.BOOKING;
        chargeInfo.repeatBookChrgDay4 = CarEvDeviceManager.get().getRepeatBookChrgDay4() == ICarEvDevice.RepeatBookMode.BOOKING;
        chargeInfo.repeatBookChrgDay5 = CarEvDeviceManager.get().getRepeatBookChrgDay5() == ICarEvDevice.RepeatBookMode.BOOKING;
        chargeInfo.repeatBookChrgDay6 = CarEvDeviceManager.get().getRepeatBookChrgDay6() == ICarEvDevice.RepeatBookMode.BOOKING;
        chargeInfo.repeatBookChrgDay7 = CarEvDeviceManager.get().getRepeatBookChrgDay7() == ICarEvDevice.RepeatBookMode.BOOKING;
        return chargeInfo;
    }

    public void registerListener(ProjectIhu23Listener projectIhu23Listener) {
        registerReceiver(projectIhu23Listener);
    }

    public void unregisterListener(ProjectIhu23Listener projectIhu23Listener) {
        unregisterReceiver(projectIhu23Listener);
    }
}
