package com.yftech.vehicle.sdk;

import android.util.Log;
import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseCmd;
import com.yftech.vehicle.internal.adapter.ICarBsp;
import com.yftech.vehicle.internal.utils.StringFormart;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarBspManager extends BaseApiManager implements ICarBsp {
    private static final String TAG = "CarBspManager";
    private static CarBspManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarBspListener {
        @SignalReceiver(signalId = IBaseCmd.BSP_INFO_SEARCH_CMD_SET)
        public void onBspInfoSearchCmdStateChanged(int i) {
        }

        @SignalReceiver(signalId = IBaseCmd.BSP_DISPLAY_CONNECT_STATE_GET, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDisplayConnectedStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.BSP_DISPLAY_DTC_GET)
        public void onDisplayDtcStateChanged(ICarBsp.DisplayDtc displayDtc) {
        }

        @SignalReceiver(signalId = IBaseCmd.BSP_DISPLAY_LCD_ONOFF, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDisplayLcdOnOffStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.BSP_DISPLAY_LIGHT_BAR_ENABLE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDisplayLightBarEnableChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.BSP_DISPLAY_LIGHT_BAR_LEVEL)
        public void onDisplayLightBarLevelChanged(int i) {
        }

        @SignalReceiver(signalId = IBaseCmd.BSP_DISPLAY_TOUCH_ENABLED, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDisplayTouchEnableStateChanged(boolean z) {
        }
    }

    private CarBspManager() {
    }

    public static synchronized CarBspManager get() {
        CarBspManager carBspManager;
        synchronized (CarBspManager.class) {
            if (sMe != null) {
                carBspManager = sMe;
            } else {
                carBspManager = new CarBspManager();
                sMe = carBspManager;
            }
        }
        return carBspManager;
    }

    public boolean queryBspInfoCmd(byte b) {
        return setSignalValue(IBaseCmd.BSP_INFO_SEARCH_CMD_SET, b);
    }

    public ICarBsp.DisplayDtc getDisplayDtcInfo() {
        return ICarBsp.DisplayDtc.valueOf(getSignalValue(IBaseCmd.BSP_DISPLAY_DTC_GET).intValue());
    }

    public boolean setDisplaySnInfo(String str) {
        if (str == null || str.length() != 10) {
            Log.e(TAG, "setDisplaySnInfo()  sn.length!=10 error ,sn =" + str);
            return false;
        }
        Log.i(TAG, StringFormart.byte2hex(str.getBytes(StandardCharsets.US_ASCII)));
        return setSignalValue(IBaseCmd.BSP_DISPLAY_SN, str.getBytes(StandardCharsets.US_ASCII));
    }

    public boolean setDisplayCreateDate(String str) {
        if (str == null || str.length() != 6) {
            Log.e(TAG, "setDisplayCreateDate()  dateString is null or length!=6 error ,date =" + str);
            return false;
        }
        try {
            try {
                String format = new SimpleDateFormat("ddMMyy").format(new SimpleDateFormat("ddMMyy").parse(str));
                Log.i(TAG, StringFormart.byte2hex(format.getBytes(StandardCharsets.US_ASCII)));
                return setSignalValue(IBaseCmd.BSP_DISPLAY_CREATE_DATE, format.getBytes(StandardCharsets.US_ASCII));
            } catch (Exception e) {
                Log.e(TAG, "setDisplayCreateDate() error —> " + e.getMessage());
                return false;
            }
        } catch (Exception e2) {
            Log.e(TAG, "setDisplayCreateDate() SimpleDateFormat.parse([ " + str + " ]) error ，is not ddMMyy —> " + e2.getMessage());
            return false;
        }
    }

    public boolean isDisplayConnected() {
        return getSignalValue(IBaseCmd.BSP_DISPLAY_CONNECT_STATE_GET).byteValue() == 1;
    }

    public boolean setBspAMPMute(boolean z) {
        return setSignalValue(IBaseCmd.BSP_AMP_MUTE_SET, z);
    }

    public boolean setDisplayLightBarLevel(int i) {
        return setSignalValue(IBaseCmd.BSP_DISPLAY_LIGHT_BAR_LEVEL, i);
    }

    public int getDisplayLightBarLevel() {
        return getSignalValue(IBaseCmd.BSP_DISPLAY_LIGHT_BAR_LEVEL).intValue();
    }

    public boolean setDisplayLightBarEnable(boolean z) {
        return setSignalValue(IBaseCmd.BSP_DISPLAY_LIGHT_BAR_ENABLE, z);
    }

    public boolean getDisplayLightBarEnable() {
        return getSignalValue(IBaseCmd.BSP_DISPLAY_LIGHT_BAR_ENABLE).intValue() == 1;
    }

    public void registerListener(CarBspListener carBspListener) {
        registerReceiver(carBspListener);
    }

    public void unregisterListener(CarBspListener carBspListener) {
        unregisterReceiver(carBspListener);
    }
}
