package com.yftech.vehicle.sdk.config;

import android.util.Log;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.adapter.ICarDashBoard;
import com.yftech.vehicle.internal.config.Ihu23IHostConfig;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes4.dex */
public class Ihu23HostConfig implements Ihu23IHostConfig {
    private static final String TAG = "HostConfig";
    private static Ihu23HostConfig sMe;
    private BaseApiManager mApi = new BaseApiManager() { // from class: com.yftech.vehicle.sdk.config.Ihu23HostConfig.1
    };
    private byte[] mData;

    private Ihu23HostConfig() {
    }

    private static synchronized Ihu23HostConfig get() {
        Ihu23HostConfig ihu23HostConfig;
        synchronized (Ihu23HostConfig.class) {
            if (sMe != null) {
                ihu23HostConfig = sMe;
            } else {
                ihu23HostConfig = new Ihu23HostConfig();
                sMe = ihu23HostConfig;
            }
        }
        return ihu23HostConfig;
    }

    public static Ihu23IHostConfig.Language getLanguage() {
        return Ihu23IHostConfig.Language.valueOf(getConfigValue(Ihu23IHostConfig.Config.LANGUAGE));
    }

    public static Ihu23IHostConfig.NumberOfScreen getNumberOfScreen() {
        return Ihu23IHostConfig.NumberOfScreen.valueOf(getConfigValue(Ihu23IHostConfig.Config.NUMBER_OF_SCREEN));
    }

    public static boolean isCarplayPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.CARPLAY) != 0;
    }

    public static boolean isCarlifePresent() {
        return getConfigValue(Ihu23IHostConfig.Config.CARLIFE) != 0;
    }

    public static boolean isIphoneDefaultConnectingPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.IPHONE_DEFAULT_CONNECTING) != 0;
    }

    public static Ihu23IHostConfig.Wifi getWifi() {
        return Ihu23IHostConfig.Wifi.valueOf(getConfigValue(Ihu23IHostConfig.Config.WIFI));
    }

    public static boolean isBtPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.BT) != 0;
    }

    public static boolean isCellularNetworkPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.CELLULAR_NETWORK) != 0;
    }

    public static boolean isAuxPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.AUX) != 0;
    }

    public static boolean isIpodPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.IPOD) != 0;
    }

    public static Ihu23IHostConfig.Usb getUsb() {
        return Ihu23IHostConfig.Usb.valueOf(getConfigValue(Ihu23IHostConfig.Config.USB));
    }

    public static boolean isEthernetNetPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.ETHERNET_NET) != 0;
    }

    public static Ihu23IHostConfig.RadioConfiguration getRadioConfiguration() {
        return Ihu23IHostConfig.RadioConfiguration.valueOf(getConfigValue(Ihu23IHostConfig.Config.RADIO_CONFIGURATION));
    }

    public static Ihu23IHostConfig.RadarVolumeAdjustment getRadarVolumeAdjustment() {
        return Ihu23IHostConfig.RadarVolumeAdjustment.valueOf(getConfigValue(Ihu23IHostConfig.Config.RADAR_VOLUME_ADJUSTMENT));
    }

    public static Ihu23IHostConfig.SdvcCurveConfiguration getSdvcCurveConfiguration() {
        return Ihu23IHostConfig.SdvcCurveConfiguration.valueOf(getConfigValue(Ihu23IHostConfig.Config.SDVC_CURVE_CONFIGURATION));
    }

    public static Ihu23IHostConfig.HvacDisplayTime getHvacDisplayTime() {
        return Ihu23IHostConfig.HvacDisplayTime.valueOf(getConfigValue(Ihu23IHostConfig.Config.HVAC_DISPLAY_TIME));
    }

    public static Ihu23IHostConfig.RadioFrequency getRadioFrequency() {
        return Ihu23IHostConfig.RadioFrequency.valueOf(getConfigValue(Ihu23IHostConfig.Config.RADIO_FREQUENCY));
    }

    public static int getMediaVolumeDelay() {
        return getConfigValue(Ihu23IHostConfig.Config.MEDIA_VOLUME_DELAY);
    }

    public static int getScreenSwitchDelay() {
        return getConfigValue(Ihu23IHostConfig.Config.SCREEN_SWITCH_DELAY);
    }

    public static boolean isRadarSwitchPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.RADAR_SWITCH) != 0;
    }

    public static Ihu23IHostConfig.Keytone getKeytone() {
        return Ihu23IHostConfig.Keytone.valueOf(getConfigValue(Ihu23IHostConfig.Config.KEYTONE));
    }

    public static Ihu23IHostConfig.InterfaceSound getInterfaceSound() {
        return Ihu23IHostConfig.InterfaceSound.valueOf(getConfigValue(Ihu23IHostConfig.Config.INTERFACE_SOUND));
    }

    public static boolean isFaceIdPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.FACE_ID) != 0;
    }

    public static boolean isScreensaverPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.SCREENSAVER) != 0;
    }

    public static boolean isUserManualPresent() {
        return getConfigValue(Ihu23IHostConfig.Config.USER_MANUAL) != 0;
    }

    public static Ihu23IHostConfig.EngineeringMode getEngineeringMode() {
        return Ihu23IHostConfig.EngineeringMode.valueOf(getConfigValue(Ihu23IHostConfig.Config.ENGINEERING_MODE));
    }

    public static Ihu23IHostConfig.RemindingMaintenanceCycle getRemindingMaintenanceCycle() {
        return Ihu23IHostConfig.RemindingMaintenanceCycle.valueOf(getConfigValue(Ihu23IHostConfig.Config.REMINDING_MAINTENANCE_CYCLE));
    }

    public static Ihu23IHostConfig.RemindingResetCycle getRemindingResetCycle() {
        return Ihu23IHostConfig.RemindingResetCycle.valueOf(getConfigValue(Ihu23IHostConfig.Config.REMINDING_RESET_CYCLE));
    }

    public static Ihu23IHostConfig.RepeatSetting getRepeatSetting() {
        return Ihu23IHostConfig.RepeatSetting.valueOf(getConfigValue(Ihu23IHostConfig.Config.REPEAT_SETTING));
    }

    private byte[] configData() {
        if (this.mData == null || this.mData.length < 1) {
            this.mData = this.mApi.getSignalDataValue(9943);
            StringBuilder sb = new StringBuilder();
            sb.append("configData() mData=");
            sb.append(this.mData != null ? Arrays.toString(this.mData) : "[]");
            Log.i(TAG, sb.toString());
        }
        return this.mData;
    }

    private int configValue(Ihu23IHostConfig.Config config) {
        byte[] configData = configData();
        if (configData == null || config.byteIndex < 0 || config.byteIndex >= configData.length) {
            return -1;
        }
        return ((configData[config.byteIndex] & ICarDashBoard.BtInfo.STATUS_UNKNOW) & (((1 << config.bitSize) - 1) << config.startBit)) >> config.startBit;
    }

    private static int getConfigValue(Ihu23IHostConfig.Config config) {
        return get().configValue(config);
    }

    private static byte[] getConfigData() {
        return get().configData();
    }

    private static boolean setConfigData(byte[] bArr) {
        return get().mApi.setSignalValue(9943, bArr);
    }
}
