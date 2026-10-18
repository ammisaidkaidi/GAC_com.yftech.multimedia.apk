package com.yftech.vehicle.sdk;

import android.util.Log;
import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.adapter.ICarDashBoard;
import com.yftech.vehicle.internal.adapter.IHostConfig;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes4.dex */
public class HostConfig implements IHostConfig {
    private static final String TAG = "HostConfig";
    private static HostConfig sMe;
    private BaseApiManager mApi = new BaseApiManager() { // from class: com.yftech.vehicle.sdk.HostConfig.1
    };
    private byte[] mData;

    private HostConfig() {
    }

    private static synchronized HostConfig get() {
        HostConfig hostConfig;
        synchronized (HostConfig.class) {
            if (sMe != null) {
                hostConfig = sMe;
            } else {
                hostConfig = new HostConfig();
                sMe = hostConfig;
            }
        }
        return hostConfig;
    }

    public static IHostConfig.Language getLanguage() {
        return IHostConfig.Language.valueOf(getConfigValue(IHostConfig.Config.LANGUAGE));
    }

    public static IHostConfig.NumberOfScreen getNumberOfScreen() {
        return IHostConfig.NumberOfScreen.valueOf(getConfigValue(IHostConfig.Config.NUMBER_OF_SCREEN));
    }

    public static IHostConfig.CarMode getCarMode() {
        return IHostConfig.CarMode.valueOf(getConfigValue(IHostConfig.Config.CAR_MODE));
    }

    public static boolean isCarplayPresent() {
        return getConfigValue(IHostConfig.Config.CARPLAY) != 0;
    }

    public static boolean isCarlifePresent() {
        return getConfigValue(IHostConfig.Config.CARLIFE) != 0;
    }

    public static boolean isHicarPresent() {
        return getConfigValue(IHostConfig.Config.HICAR) != 0;
    }

    public static boolean isIphoneDefaultConnectingPresent() {
        return getConfigValue(IHostConfig.Config.IPHONE_DEFAULT_CONNECTING) != 0;
    }

    public static boolean isEasyConnectPresent() {
        return getConfigValue(IHostConfig.Config.EASY_CONNECT) != 0;
    }

    public static IHostConfig.Wifi getWifi() {
        return IHostConfig.Wifi.valueOf(getConfigValue(IHostConfig.Config.WIFI));
    }

    public static boolean isBtPresent() {
        return getConfigValue(IHostConfig.Config.BT) != 0;
    }

    public static boolean isCellularNetworkPresent() {
        return getConfigValue(IHostConfig.Config.CELLULAR_NETWORK) != 0;
    }

    public static boolean isAuxPresent() {
        return getConfigValue(IHostConfig.Config.AUX) != 0;
    }

    public static boolean isIpodPresent() {
        return getConfigValue(IHostConfig.Config.IPOD) != 0;
    }

    public static IHostConfig.Usb getUsb() {
        return IHostConfig.Usb.valueOf(getConfigValue(IHostConfig.Config.USB));
    }

    public static boolean isEthernetNetPresent() {
        return getConfigValue(IHostConfig.Config.ETHERNET_NET) != 0;
    }

    public static IHostConfig.RadioConfiguration getRadioConfiguration() {
        return IHostConfig.RadioConfiguration.valueOf(getConfigValue(IHostConfig.Config.RADIO_CONFIGURATION));
    }

    public static boolean isRadioDABPresent() {
        return getConfigValue(IHostConfig.Config.RADIO_DAB) != 0;
    }

    public static boolean isRadioRDSPresent() {
        return getConfigValue(IHostConfig.Config.RADIO_RDS) != 0;
    }

    public static IHostConfig.RadioDABAndRDSConfig getRadioDABAndRDSConfiguration() {
        return IHostConfig.RadioDABAndRDSConfig.valueOf(getConfigValue(IHostConfig.Config.RADIO_DAB_RDS_CONFIGURATION));
    }

    public static IHostConfig.RadarVolumeAdjustment getRadarVolumeAdjustment() {
        return IHostConfig.RadarVolumeAdjustment.valueOf(getConfigValue(IHostConfig.Config.RADAR_VOLUME_ADJUSTMENT));
    }

    public static IHostConfig.SdvcCurveConfiguration getSdvcCurveConfiguration() {
        return IHostConfig.SdvcCurveConfiguration.valueOf(getConfigValue(IHostConfig.Config.SDVC_CURVE_CONFIGURATION));
    }

    public static IHostConfig.HvacDisplayTime getHvacDisplayTime() {
        return IHostConfig.HvacDisplayTime.valueOf(getConfigValue(IHostConfig.Config.HVAC_DISPLAY_TIME));
    }

    public static IHostConfig.RadioFrequency getRadioFrequency() {
        return IHostConfig.RadioFrequency.valueOf(getConfigValue(IHostConfig.Config.RADIO_FREQUENCY));
    }

    public static IHostConfig.MediaVolumeDelay getMediaVolumeDelay() {
        return IHostConfig.MediaVolumeDelay.valueOf(getConfigValue(IHostConfig.Config.MEDIA_VOLUME_DELAY));
    }

    public static IHostConfig.ScreenSwitchDelay getScreenSwitchDelay() {
        return IHostConfig.ScreenSwitchDelay.valueOf(getConfigValue(IHostConfig.Config.SCREEN_SWITCH_DELAY));
    }

    public static boolean isRadarSwitchPresent() {
        return getConfigValue(IHostConfig.Config.RADAR_SWITCH) != 0;
    }

    public static boolean isWallpaperPresent() {
        return getConfigValue(IHostConfig.Config.WALLPAPER) != 0;
    }

    public static boolean isAutoParkingBackgroundPushPresent() {
        return getConfigValue(IHostConfig.Config.AUTO_PARKING_BACKGROUND_PUSH) != 0;
    }

    public static IHostConfig.MessageNotification getMessageNotification() {
        return IHostConfig.MessageNotification.valueOf(getConfigValue(IHostConfig.Config.MESSAGE_NOTIFICATION));
    }

    public static IHostConfig.ExpressMessage getExpressMessage() {
        return IHostConfig.ExpressMessage.valueOf(getConfigValue(IHostConfig.Config.EXPRESS_MESSAGE));
    }

    public static IHostConfig.MapPreferences getMapPreferences() {
        return IHostConfig.MapPreferences.valueOf(getConfigValue(IHostConfig.Config.MAP_PREFERENCES));
    }

    public static IHostConfig.NavigationSignalMode getNavigationSignalMode() {
        return IHostConfig.NavigationSignalMode.valueOf(getConfigValue(IHostConfig.Config.NAVIGATION_SIGNAL_MODE));
    }

    public static IHostConfig.Keytone getKeytone() {
        return IHostConfig.Keytone.valueOf(getConfigValue(IHostConfig.Config.KEYTONE));
    }

    public static IHostConfig.InterfaceSound getInterfaceSound() {
        return IHostConfig.InterfaceSound.valueOf(getConfigValue(IHostConfig.Config.INTERFACE_SOUND));
    }

    public static boolean isFaceIdPresent() {
        return getConfigValue(IHostConfig.Config.FACE_ID) != 0;
    }

    public static boolean isShiftSoundPresent() {
        return getConfigValue(IHostConfig.Config.SHIFT_SOUND) != 0;
    }

    public static boolean isSceneSwitchPresent() {
        return getConfigValue(IHostConfig.Config.SCENE_SWITCH) != 0;
    }

    public static boolean isTrafficDisplayPresent() {
        return getConfigValue(IHostConfig.Config.TRAFFIC_DISPLAY) != 0;
    }

    public static boolean isScreensaverPresent() {
        return getConfigValue(IHostConfig.Config.SCREENSAVER) != 0;
    }

    public static boolean isUserManualPresent() {
        return getConfigValue(IHostConfig.Config.USER_MANUAL) != 0;
    }

    public static IHostConfig.EngineeringMode getEngineeringMode() {
        return IHostConfig.EngineeringMode.valueOf(getConfigValue(IHostConfig.Config.ENGINEERING_MODE));
    }

    public static IHostConfig.RemindingMaintenanceCycle getRemindingMaintenanceCycle() {
        return IHostConfig.RemindingMaintenanceCycle.valueOf(getConfigValue(IHostConfig.Config.REMINDING_MAINTENANCE_CYCLE));
    }

    public static IHostConfig.RemindingResetCycle getRemindingResetCycle() {
        return IHostConfig.RemindingResetCycle.valueOf(getConfigValue(IHostConfig.Config.REMINDING_RESET_CYCLE));
    }

    public static IHostConfig.RepeatSetting getRepeatSetting() {
        return IHostConfig.RepeatSetting.valueOf(getConfigValue(IHostConfig.Config.REPEAT_SETTING));
    }

    public static IHostConfig.LeftRightHandDriveVehicles getLeftRightHandDriveVehicles() {
        return IHostConfig.LeftRightHandDriveVehicles.valueOf(getConfigValue(IHostConfig.Config.LEFT_RIGHT_HAND_DRIVE_VEHICLES));
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

    private int configValue(IHostConfig.Config config) {
        byte[] configData = configData();
        if (configData == null || config.byteIndex < 0 || config.byteIndex >= configData.length) {
            return -1;
        }
        return ((configData[config.byteIndex] & ICarDashBoard.BtInfo.STATUS_UNKNOW) & (((1 << config.bitSize) - 1) << config.startBit)) >> config.startBit;
    }

    private static int getConfigValue(IHostConfig.Config config) {
        return get().configValue(config);
    }

    public static byte[] getConfigData() {
        return get().configData();
    }

    public static boolean setConfigData(byte[] bArr) {
        return get().mApi.setSignalValue(9943, bArr);
    }
}
