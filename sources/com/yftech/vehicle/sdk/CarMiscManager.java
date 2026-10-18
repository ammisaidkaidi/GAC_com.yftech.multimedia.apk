package com.yftech.vehicle.sdk;

import android.util.Log;
import com.yftech.libradio.dialog.RdsSettingsDialog;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseCmd;
import com.yftech.vehicle.internal.adapter.ICarMisc;
import com.yftech.vehicle.internal.adapter.ICarParking;
import com.yftech.vehicle.internal.project.Ihu12DashBoard;
import com.yftech.vehicle.internal.utils.StringFormart;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/* loaded from: /home/user/work/dex/classes4.dex */
public class CarMiscManager extends BaseApiManager implements ICarMisc {
    private static final String TAG = "CarMiscManager";
    private static CarMiscManager sMe;

    /* loaded from: /home/user/work/dex/classes4.dex */
    public static abstract class CarMiscListener {
        @SignalReceiver(signalId = IBaseCmd.ATE_CAR_TYPE_SET)
        public void onAteCarTypeStateChanged(ICarMisc.AteCarType ateCarType) {
        }

        @SignalReceiver(signalId = IBaseCmd.CAR_INFO_AVM_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onCarInfoAvmStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.CAR_INFO_CAMERA_REAR_VIEW_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onCarInfoCameraRearViewStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.DEVICE_EXT_AVM_STATE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onDeviceExtAvmStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.DEVICE_NODE_STATE_GET)
        public void onDeviceNodeStateChanged(ICarMisc.DeviceNode deviceNode) {
        }

        @SignalReceiver(signalId = 9987, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onFactoryModeCanStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_DEVELOP_MODE, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onFactoryModeDevelopModeChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_ERROR_CODE)
        public void onFactoryModeErrorCodeChanged(ICarMisc.ErrorCodeInfo errorCodeInfo) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_STATE)
        public void onFactoryModeStateChanged(int i) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_TRANSPORT_MODE_STATE_GET)
        public void onFactoryModeTransportModeChanged(ICarMisc.TransportMode transportMode) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_2F_HMI_MODE_ON)
        public void onFactoryModeUds2FHmiModeChanged(ICarMisc.HmiMode hmiMode) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_2F_KEY_TEST_ON)
        public void onFactoryModeUds2FKeyTestChanged(ICarMisc.KeyTestEvent keyTestEvent) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_2F_PROGRAM_SOURCE_ON)
        public void onFactoryModeUds2FProgramSourceInfoChanged(ICarMisc.ProgramSource programSource) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_2F_SPEAKER)
        public void onFactoryModeUds2FSpeakerInfoChanged(ICarMisc.SpeakerCmd speakerCmd) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_2F_STATE_GET, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onFactoryModeUds2FStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_2F_BACKLIGHT_LEVEL_ON)
        public void onFactoryModeUds2FTftBackLightLevelChanged(int i) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_2F_TFT_COLOR_ON)
        public void onFactoryModeUds2FTftColorChanged(ICarMisc.TftColorState tftColorState) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_2F_TFT)
        public void onFactoryModeUds2FTftInfoChanged(ICarMisc.TftCmd tftCmd) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_2F_VOLUME_ON)
        public void onFactoryModeUds2FVolumeChanged(int i) {
        }

        @SignalReceiver(signalId = IBaseCmd.FACTORY_MODE_UDS_SERV_31_ENGINEER)
        public void onFactoryModeUds31EngineerInfoChanged(ICarMisc.EngineerMode engineerMode) {
        }

        @SignalReceiver(signalId = IBaseCmd.KEYBOARD_BACKLIGHT)
        public void onKeyboardBacklightChanged(int i) {
        }

        @SignalReceiver(signalId = IBaseCmd.BSP_DISPLAY_BACKLIGHT)
        public void onScreenBacklightChanged(int i) {
        }

        @SignalReceiver(signalId = IBaseCmd.TBOX_BATTERY_STATE_GET, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onTBoxBatteryStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.TBOX_CONNECT_STATE_GET, valueToEnabledState = RdsSettingsDialog.DEFUALT_VALUE_TP)
        public void onTBoxConnectStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = IBaseCmd.TBOX_ECALL_STATE_GET)
        public void onTBoxEcallStateChanged(ICarMisc.ECallState eCallState) {
        }
    }

    private CarMiscManager() {
    }

    public static synchronized CarMiscManager get() {
        CarMiscManager carMiscManager;
        synchronized (CarMiscManager.class) {
            if (sMe != null) {
                carMiscManager = sMe;
            } else {
                carMiscManager = new CarMiscManager();
                sMe = carMiscManager;
            }
        }
        return carMiscManager;
    }

    public boolean setSystemTime(Calendar calendar, boolean z) {
        byte b = z ? (byte) 1 : (byte) 0;
        int i = (byte) calendar.get(z ? 11 : 10);
        Log.i(TAG, "setSystemTime() isHour24Val=" + ((int) b) + ", hourVal =" + i);
        if (!z) {
            boolean z2 = calendar.get(9) == 0;
            Log.i(TAG, "setSystemTime() isAm=" + z2 + ", am_pm=" + calendar.get(9));
            if (i == 0) {
                i = z2 ? 0 : 12;
            } else if (!z2) {
                i += 12;
            }
        }
        return setSignalValue(IBaseCmd.SYSTEM_TIME, new byte[]{(byte) (calendar.get(1) - 2000), (byte) (calendar.get(2) + 1), (byte) calendar.get(5), (byte) i, (byte) calendar.get(12), (byte) calendar.get(13), b});
    }

    public int getScreenBacklight() {
        return getSignalValue(IBaseCmd.BSP_DISPLAY_BACKLIGHT).intValue();
    }

    public boolean setScreenBacklight(int i) {
        return setSignalValue(IBaseCmd.BSP_DISPLAY_BACKLIGHT, i);
    }

    public boolean turnScreenOnOff(boolean z) {
        return setSignalValue(IBaseCmd.BSP_DISPLAY_LCD_ONOFF, z);
    }

    public boolean setScreenTouchEnabled(boolean z) {
        return setSignalValue(IBaseCmd.BSP_DISPLAY_TOUCH_ENABLED, z);
    }

    public int getKeyboardBacklight() {
        return getSignalValue(IBaseCmd.KEYBOARD_BACKLIGHT).intValue();
    }

    public boolean setKeyboardBacklight(int i) {
        return setSignalValue(IBaseCmd.KEYBOARD_BACKLIGHT, (short) i);
    }

    public boolean setFactoryModeErrorCodeEnabled(boolean z) {
        return setSignalValue(IBaseCmd.FACTORY_MODE_ERROR_CODE, z);
    }

    public boolean setFactoryModeCanStateEnabled(boolean z) {
        return setSignalValue(9987, z);
    }

    public boolean setCheckFactoryModeState() {
        return setSignalValue(IBaseCmd.FACTORY_MODE_STATE, true);
    }

    public boolean setFactoryModeClearDtc(boolean z) {
        return setSignalValue(IBaseCmd.FACTORY_MODE_CLEAR_DTC_SET, z);
    }

    public boolean setFactoryModeReSetFactorySettingNotify() {
        try {
            return setSignalValue(IBaseCmd.FACTORY_MODE_RESET_NOTIFY_SET, 1);
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean setFactoryModeReSetDashBoardFactorySetting() {
        try {
            return setSignalValue(IBaseCmd.FACTORY_MODE_RESET_NOTIFY_SET, 3);
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean setCarDtcState(int i, int i2) {
        return setSignalValue(IBaseCmd.FACTORY_MODE_DTC_STATE, new byte[]{(byte) i, (byte) i2});
    }

    public boolean setFactoryModeDevelopModeEnabled(boolean z, boolean z2) {
        return setSignalValue(IBaseCmd.FACTORY_MODE_DEVELOP_MODE, (byte) (((z ? 1 : 0) << 4) | (z2 ? 1 : 0)));
    }

    public boolean getFactoryModeDevelopModeEnabled() {
        return getSignalValue(IBaseCmd.FACTORY_MODE_DEVELOP_MODE).intValue() == 1;
    }

    public boolean setQueryCarInfoCameraRearViewState() {
        return setSignalValue(IBaseCmd.CAR_INFO_CAMERA_REAR_VIEW_STATE, true);
    }

    public boolean getCarInfoCameraRearViewState() {
        return getSignalValue(IBaseCmd.CAR_INFO_CAMERA_REAR_VIEW_STATE).intValue() == 1;
    }

    public boolean setQueryCarInfoAvmState() {
        return setSignalValue(IBaseCmd.CAR_INFO_AVM_STATE, true);
    }

    public boolean getCarInfoAvmState() {
        return getSignalValue(IBaseCmd.CAR_INFO_AVM_STATE).intValue() == 1;
    }

    public boolean getTBoxConnectState() {
        return getSignalValue(IBaseCmd.TBOX_CONNECT_STATE_GET).intValue() == 1;
    }

    public ICarMisc.ECallState getTBoxECallState() {
        return ICarMisc.ECallState.valueOf(getSignalValue(IBaseCmd.TBOX_ECALL_STATE_GET).intValue());
    }

    public boolean getTBoxBatteryState() {
        return getSignalValue(IBaseCmd.TBOX_BATTERY_STATE_GET).intValue() == 1;
    }

    public ICarMisc.DeviceNode getDeviceNodeState() {
        return ICarMisc.DeviceNode.valueOf(getSignalValue(IBaseCmd.DEVICE_NODE_STATE_GET).intValue());
    }

    public boolean setDeviceExtAvmState(boolean z) {
        return setSignalValue(IBaseCmd.DEVICE_EXT_AVM_STATE, z);
    }

    public boolean getDeviceExtAvmState() {
        return getSignalValue(IBaseCmd.DEVICE_EXT_AVM_STATE).byteValue() == 1;
    }

    public boolean setFactoryModeCarKitCreateDate(String str) {
        if (str == null || str.length() != 8) {
            Log.e(TAG, "setFactoryModeCarKitCreateDate()  dateString is null or length!=8 error ,date =" + str);
            return false;
        }
        try {
            Date parse = new SimpleDateFormat("yyyyMMdd").parse(str);
            try {
                byte[] bArr = {(byte) Integer.parseInt(String.valueOf((parse.getYear() + 1900) / 100), 16), (byte) Integer.parseInt(((parse.getYear() + 1900) % 100) + "", 16), (byte) Integer.parseInt((parse.getMonth() + 1) + "", 16), (byte) Integer.parseInt(parse.getDate() + "", 16)};
                Log.i(TAG, StringFormart.byte2hex(bArr));
                return setSignalValue(IBaseCmd.FACTORY_MODE_CAR_KIT_CREATE_DATE, bArr);
            } catch (Exception e) {
                Log.e(TAG, "setFactoryModeCarKitCreateDate() error —> " + e.getMessage());
                return false;
            }
        } catch (Exception e2) {
            Log.e(TAG, "setFactoryModeCarKitCreateDate() SimpleDateFormat.parse([ " + str + " ]) error ，is not yyyyMMdd —> " + e2.getMessage());
            return false;
        }
    }

    public boolean setFactoryModeEcuAndProductLineSerial(int i, int i2, String str) {
        if (i == 0 || i > 16777215) {
            Log.e(TAG, "setFactoryModeEcuAndProductLineSerial()  ecuSerial = 0 or > 16777215 error ,ecuSerial =" + i);
            return false;
        }
        if (i2 == 0 || i2 > 255) {
            Log.e(TAG, "setFactoryModeEcuAndProductLineSerial()  ecuSerial = 0 or > 255 error ,proLineSerial =" + i2);
            return false;
        }
        if (str == null || str.length() != 6) {
            Log.e(TAG, "setFactoryModeEcuAndProductLineSerial()  dateString is not 【 yyMMdd 】 error ,dateString =" + str);
            return false;
        }
        try {
            Date parse = new SimpleDateFormat("yyMMdd").parse(str);
            try {
                byte[] bArr = {(byte) ((i >> 16) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) ((i >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (i & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) ((i2 >> 8) & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) (i2 & ICarParking.PARKING_RADAR_ALARM_SETTING), (byte) Integer.parseInt(((parse.getYear() + 1900) % 100) + "", 16), (byte) Integer.parseInt((parse.getMonth() + 1) + "", 16), (byte) Integer.parseInt(parse.getDate() + "", 16)};
                Log.i(TAG, StringFormart.byte2hex(bArr));
                return setSignalValue(IBaseCmd.FACTORY_MODE_ECU_PRODUCT_LINE_SERIAL, bArr);
            } catch (Exception e) {
                Log.e(TAG, "setFactoryModeEcuAndProductLineSerial() error —> " + e.getMessage());
                return false;
            }
        } catch (Exception e2) {
            Log.e(TAG, "setFactoryModeEcuAndProductLineSerial() SimpleDateFormat.parse([ " + str + " ]) error ，is not yyyyMMdd —> " + e2.getMessage());
            return false;
        }
    }

    public boolean setAteCarType(ICarMisc.AteCarType ateCarType) {
        return setSignalValue(IBaseCmd.ATE_CAR_TYPE_SET, ateCarType.value);
    }

    public ICarMisc.AteCarType getAteCarType() {
        return ICarMisc.AteCarType.valueOf(getSignalValue(IBaseCmd.ATE_CAR_TYPE_SET).intValue());
    }

    public ICarMisc.TransportMode getFactoryModeTransportMode() {
        return ICarMisc.TransportMode.valueOf(getSignalValue(IBaseCmd.FACTORY_MODE_TRANSPORT_MODE_STATE_GET).intValue());
    }

    public boolean setFastSleep() {
        return setSignalValue(9939, new byte[]{-113, 0, 0, 4});
    }

    public boolean setFactoryModeUUID(String str) {
        Log.i(TAG, "setFactoryModeUUID() uuid: " + str);
        int length = str.trim().length();
        if (length == 0) {
            Log.e(TAG, "setFactoryModeUUID() error —> uuid is empty");
            return false;
        }
        byte[] bArr = new byte[length + 4];
        bArr[0] = -107;
        bArr[1] = Ihu12DashBoard.INFO_TYPE_NAVI_GUIDE_NEXT_PATH_CALCULATION;
        bArr[2] = 2;
        bArr[3] = (byte) str.length();
        System.arraycopy(str.getBytes(StandardCharsets.UTF_8), 0, bArr, 4, length);
        return setSignalValue(9939, bArr);
    }

    public void registerListener(CarMiscListener carMiscListener) {
        registerReceiver(carMiscListener);
    }

    public void unregisterListener(CarMiscListener carMiscListener) {
        unregisterReceiver(carMiscListener);
    }
}
