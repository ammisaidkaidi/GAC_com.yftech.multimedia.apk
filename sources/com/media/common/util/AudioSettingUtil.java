package com.media.common.util;

import android.content.Context;
import android.media.AudioManager;
import android.text.TextUtils;
import com.android.internal.os.PowerProfile;
import com.yftech.car.audio.CarAudioManager;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.music.CarMusicManager;
import java.lang.reflect.Method;

/* loaded from: /home/user/work/dex/classes3.dex */
public class AudioSettingUtil {
    public static void requestAudioFocus(Context context, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, int i, int i2) {
        AudioManager audioManager = (AudioManager) context.getSystemService(PowerProfile.POWER_AUDIO);
        if (audioManager != null) {
            audioManager.requestAudioFocus(onAudioFocusChangeListener, i, i2);
        }
    }

    public static void abandonAudioFocus(Context context, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        AudioManager audioManager = (AudioManager) context.getSystemService(PowerProfile.POWER_AUDIO);
        if (audioManager != null) {
            audioManager.abandonAudioFocus(onAudioFocusChangeListener);
        }
    }

    public static int getStreamMaxVolume(Context context, int i) {
        AudioManager audioManager = (AudioManager) context.getSystemService(PowerProfile.POWER_AUDIO);
        if (audioManager != null) {
            return audioManager.getStreamMaxVolume(3);
        }
        return 0;
    }

    public static int getStreamVolume(Context context, int i) {
        AudioManager audioManager = (AudioManager) context.getSystemService(PowerProfile.POWER_AUDIO);
        if (audioManager != null) {
            return audioManager.getStreamVolume(3);
        }
        return 0;
    }

    public static void setStreamVolume(Context context, int i, int i2) {
        AudioManager audioManager = (AudioManager) context.getSystemService(PowerProfile.POWER_AUDIO);
        if (audioManager != null) {
            LogUtil.d("setStreamVolume=" + i2);
            audioManager.setStreamVolume(i, i2, 4);
        }
    }

    public static void playSystemClickSoundEffect(Context context) {
        ((AudioManager) context.getSystemService(PowerProfile.POWER_AUDIO)).playSoundEffect(0);
    }

    public static void setMasterMute(Context context, boolean z) {
        AudioManager audioManager = (AudioManager) context.getSystemService(PowerProfile.POWER_AUDIO);
        try {
            Method declaredMethod = audioManager.getClass().getDeclaredMethod("setMasterMute", Boolean.TYPE, Integer.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(audioManager, Boolean.valueOf(z), 4);
            LogUtil.d("setMasterMute:true");
        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.d("setMasterMute:false");
        }
    }

    public static boolean isMasterMute(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(PowerProfile.POWER_AUDIO);
        try {
            Method declaredMethod = audioManager.getClass().getDeclaredMethod("isMasterMute", new Class[0]);
            boolean z = true;
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(audioManager, new Object[0]);
            if (invoke == null || !ValueUtil.parseBoolean(invoke.toString())) {
                z = false;
            }
            LogUtil.d("isMasterMute:" + z);
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            LogUtil.d("isMasterMute:false");
            return false;
        }
    }

    public static String getCurrentSourceByClientId(String str) {
        String str2 = "";
        if (str != null && !TextUtils.isEmpty(str)) {
            if (str.contains(AppConstants.CLIENT_ID_USB)) {
                MediaFile playMusic = CarMusicManager.getInstance().getPlayMusic();
                String data = playMusic != null ? playMusic.getData() : null;
                LogUtil.i("getCurrentSourceByClientId:path=" + data);
                if (!TextUtils.isEmpty(data)) {
                    str2 = CarMediaDataManager.getInstance().getUsbIndex(data) == 0 ? AppConstants.MUSIC_SOURCE_OF_USB1 : AppConstants.MUSIC_SOURCE_OF_USB2;
                }
            } else if (str.contains(AppConstants.CLIENT_ID_BT_MUSIC)) {
                str2 = AppConstants.MUSIC_SOURCE_OF_BLUETOOTH;
            } else if (str.contains(AppConstants.CLIENT_ID_CARLIFE)) {
                str2 = AppConstants.MUSIC_SOURCE_OF_CARLIFE;
            } else if (str.contains(AppConstants.CLIENT_ID_CARPLAY)) {
                str2 = AppConstants.MUSIC_SOURCE_OF_CARPLAY;
            } else if (str.contains(AppConstants.CLIENT_ID_BT_MUSIC_2)) {
                str2 = AppConstants.MUSIC_SOURCE_OF_BLUETOOTH;
            }
        }
        LogUtil.i("getCurrentSourceByClientId clientId:" + str + ", ret:" + str2);
        return str2;
    }

    public static String getCurrentMediaSource() {
        String currentMediaSource = CarAudioManager.getInstance().getCurrentMediaSource();
        if (TextUtils.isEmpty(currentMediaSource)) {
            return "";
        }
        String[] split = currentMediaSource.split(",");
        return split.length >= 3 ? getCurrentSourceByClientId(split[2]) : "";
    }
}
