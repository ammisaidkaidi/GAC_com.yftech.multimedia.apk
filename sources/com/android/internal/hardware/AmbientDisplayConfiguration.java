package com.android.internal.hardware;

import android.content.Context;
import android.os.Build;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public class AmbientDisplayConfiguration {
    private final Context mContext;

    public AmbientDisplayConfiguration(Context context) {
        this.mContext = context;
    }

    public boolean enabled(int i) {
        return pulseOnNotificationEnabled(i) || pulseOnPickupEnabled(i) || pulseOnDoubleTapEnabled(i) || pulseOnLongPressEnabled(i) || alwaysOnEnabled(i);
    }

    public boolean available() {
        return pulseOnNotificationAvailable() || pulseOnPickupAvailable() || pulseOnDoubleTapAvailable();
    }

    public boolean pulseOnNotificationEnabled(int i) {
        return boolSettingDefaultOn("doze_enabled", i) && pulseOnNotificationAvailable();
    }

    public boolean pulseOnNotificationAvailable() {
        return ambientDisplayAvailable();
    }

    public boolean pulseOnPickupEnabled(int i) {
        return (boolSettingDefaultOn("doze_pulse_on_pick_up", i) || alwaysOnEnabled(i)) && pulseOnPickupAvailable();
    }

    public boolean pulseOnPickupAvailable() {
        return dozePulsePickupSensorAvailable() && ambientDisplayAvailable();
    }

    public boolean dozePulsePickupSensorAvailable() {
        return this.mContext.getResources().getBoolean(17956938);
    }

    public boolean pulseOnPickupCanBeModified(int i) {
        return !alwaysOnEnabled(i);
    }

    public boolean pulseOnDoubleTapEnabled(int i) {
        return boolSettingDefaultOn("doze_pulse_on_double_tap", i) && pulseOnDoubleTapAvailable();
    }

    public boolean pulseOnDoubleTapAvailable() {
        return doubleTapSensorAvailable() && ambientDisplayAvailable();
    }

    public boolean doubleTapSensorAvailable() {
        return !TextUtils.isEmpty(doubleTapSensorType());
    }

    public String doubleTapSensorType() {
        return this.mContext.getResources().getString(17039666);
    }

    public String longPressSensorType() {
        return this.mContext.getResources().getString(17039667);
    }

    public boolean pulseOnLongPressEnabled(int i) {
        return pulseOnLongPressAvailable() && boolSettingDefaultOff("doze_pulse_on_long_press", i);
    }

    private boolean pulseOnLongPressAvailable() {
        return !TextUtils.isEmpty(longPressSensorType());
    }

    public boolean alwaysOnEnabled(int i) {
        return boolSettingDefaultOn("doze_always_on", i) && alwaysOnAvailable() && !accessibilityInversionEnabled(i);
    }

    public boolean alwaysOnAvailable() {
        return (alwaysOnDisplayDebuggingEnabled() || alwaysOnDisplayAvailable()) && ambientDisplayAvailable();
    }

    public boolean alwaysOnAvailableForUser(int i) {
        return alwaysOnAvailable() && !accessibilityInversionEnabled(i);
    }

    public String ambientDisplayComponent() {
        return this.mContext.getResources().getString(17039665);
    }

    public boolean accessibilityInversionEnabled(int i) {
        return boolSettingDefaultOff("accessibility_display_inversion_enabled", i);
    }

    public boolean ambientDisplayAvailable() {
        return !TextUtils.isEmpty(ambientDisplayComponent());
    }

    private boolean alwaysOnDisplayAvailable() {
        return this.mContext.getResources().getBoolean(17956937);
    }

    private boolean alwaysOnDisplayDebuggingEnabled() {
        return SystemProperties.getBoolean("debug.doze.aod", false) && Build.IS_DEBUGGABLE;
    }

    private boolean boolSettingDefaultOn(String str, int i) {
        return boolSetting(str, i, 1);
    }

    private boolean boolSettingDefaultOff(String str, int i) {
        return boolSetting(str, i, 0);
    }

    private boolean boolSetting(String str, int i, int i2) {
        return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), str, i2, i) != 0;
    }
}
