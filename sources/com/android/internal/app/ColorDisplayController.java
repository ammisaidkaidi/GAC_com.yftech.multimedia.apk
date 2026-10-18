package com.android.internal.app;

import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.metrics.LogMaker;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Slog;
import com.android.internal.logging.MetricsLogger;
import com.android.internal.logging.nano.MetricsProto;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.time.DateTimeException;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.ZoneId;
import java.time.format.DateTimeParseException;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class ColorDisplayController {
    public static final int AUTO_MODE_CUSTOM = 1;
    public static final int AUTO_MODE_DISABLED = 0;
    public static final int AUTO_MODE_TWILIGHT = 2;
    public static final int COLOR_MODE_AUTOMATIC = 3;
    public static final int COLOR_MODE_BOOSTED = 1;
    public static final int COLOR_MODE_NATURAL = 0;
    public static final int COLOR_MODE_SATURATED = 2;
    private static final boolean DEBUG = false;
    private static final String TAG = "ColorDisplayController";
    private Callback mCallback;
    private final ContentObserver mContentObserver;
    private final Context mContext;
    private MetricsLogger mMetricsLogger;
    private final int mUserId;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes3.dex */
    public @interface AutoMode {
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface Callback {
        default void onAccessibilityTransformChanged(boolean z) {
        }

        default void onActivated(boolean z) {
        }

        default void onAutoModeChanged(int i) {
        }

        default void onColorTemperatureChanged(int i) {
        }

        default void onCustomEndTimeChanged(LocalTime localTime) {
        }

        default void onCustomStartTimeChanged(LocalTime localTime) {
        }

        default void onDisplayColorModeChanged(int i) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes3.dex */
    public @interface ColorMode {
    }

    public ColorDisplayController(Context context) {
        this(context, ActivityManager.getCurrentUser());
    }

    public ColorDisplayController(Context context, int i) {
        this.mContext = context.getApplicationContext();
        this.mUserId = i;
        this.mContentObserver = new ContentObserver(new Handler(Looper.getMainLooper())) { // from class: com.android.internal.app.ColorDisplayController.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                super.onChange(z, uri);
                String lastPathSegment = uri == null ? null : uri.getLastPathSegment();
                if (lastPathSegment != null) {
                    ColorDisplayController.this.onSettingChanged(lastPathSegment);
                }
            }
        };
    }

    public boolean isActivated() {
        return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "night_display_activated", 0, this.mUserId) == 1;
    }

    public boolean setActivated(boolean z) {
        if (isActivated() != z) {
            Settings.Secure.putStringForUser(this.mContext.getContentResolver(), "night_display_last_activated_time", LocalDateTime.now().toString(), this.mUserId);
        }
        return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "night_display_activated", z ? 1 : 0, this.mUserId);
    }

    public LocalDateTime getLastActivatedTime() {
        String stringForUser = Settings.Secure.getStringForUser(this.mContext.getContentResolver(), "night_display_last_activated_time", this.mUserId);
        if (stringForUser == null) {
            return null;
        }
        try {
            try {
                return LocalDateTime.parse(stringForUser);
            } catch (NumberFormatException | DateTimeException unused) {
                return null;
            }
        } catch (DateTimeParseException unused2) {
            return LocalDateTime.ofInstant(Instant.ofEpochMilli(Long.parseLong(stringForUser)), ZoneId.systemDefault());
        }
    }

    public int getAutoMode() {
        int intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "night_display_auto_mode", -1, this.mUserId);
        if (intForUser == -1) {
            intForUser = this.mContext.getResources().getInteger(17694765);
        }
        if (intForUser == 0 || intForUser == 1 || intForUser == 2) {
            return intForUser;
        }
        Slog.e(TAG, "Invalid autoMode: " + intForUser);
        return 0;
    }

    public int getAutoModeRaw() {
        return Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "night_display_auto_mode", -1, this.mUserId);
    }

    public boolean setAutoMode(int i) {
        if (i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException("Invalid autoMode: " + i);
        }
        if (getAutoMode() != i) {
            Settings.Secure.putStringForUser(this.mContext.getContentResolver(), "night_display_last_activated_time", null, this.mUserId);
            getMetricsLogger().write(new LogMaker(MetricsProto.MetricsEvent.ACTION_NIGHT_DISPLAY_AUTO_MODE_CHANGED).setType(4).setSubtype(i));
        }
        return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "night_display_auto_mode", i, this.mUserId);
    }

    public LocalTime getCustomStartTime() {
        int intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "night_display_custom_start_time", -1, this.mUserId);
        if (intForUser == -1) {
            intForUser = this.mContext.getResources().getInteger(17694767);
        }
        return LocalTime.ofSecondOfDay(intForUser / 1000);
    }

    public boolean setCustomStartTime(LocalTime localTime) {
        if (localTime == null) {
            throw new IllegalArgumentException("startTime cannot be null");
        }
        getMetricsLogger().write(new LogMaker(MetricsProto.MetricsEvent.ACTION_NIGHT_DISPLAY_AUTO_MODE_CUSTOM_TIME_CHANGED).setType(4).setSubtype(0));
        return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "night_display_custom_start_time", localTime.toSecondOfDay() * 1000, this.mUserId);
    }

    public LocalTime getCustomEndTime() {
        int intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "night_display_custom_end_time", -1, this.mUserId);
        if (intForUser == -1) {
            intForUser = this.mContext.getResources().getInteger(17694766);
        }
        return LocalTime.ofSecondOfDay(intForUser / 1000);
    }

    public boolean setCustomEndTime(LocalTime localTime) {
        if (localTime == null) {
            throw new IllegalArgumentException("endTime cannot be null");
        }
        getMetricsLogger().write(new LogMaker(MetricsProto.MetricsEvent.ACTION_NIGHT_DISPLAY_AUTO_MODE_CUSTOM_TIME_CHANGED).setType(4).setSubtype(1));
        return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "night_display_custom_end_time", localTime.toSecondOfDay() * 1000, this.mUserId);
    }

    public int getColorTemperature() {
        int intForUser = Settings.Secure.getIntForUser(this.mContext.getContentResolver(), "night_display_color_temperature", -1, this.mUserId);
        if (intForUser == -1) {
            intForUser = getDefaultColorTemperature();
        }
        int minimumColorTemperature = getMinimumColorTemperature();
        int maximumColorTemperature = getMaximumColorTemperature();
        return intForUser < minimumColorTemperature ? minimumColorTemperature : intForUser > maximumColorTemperature ? maximumColorTemperature : intForUser;
    }

    public boolean setColorTemperature(int i) {
        return Settings.Secure.putIntForUser(this.mContext.getContentResolver(), "night_display_color_temperature", i, this.mUserId);
    }

    private int getCurrentColorModeFromSystemProperties() {
        int i = SystemProperties.getInt("persist.sys.sf.native_mode", 0);
        if (i == 0) {
            return !"1.0".equals(SystemProperties.get("persist.sys.sf.color_saturation")) ? 1 : 0;
        }
        if (i == 1) {
            return 2;
        }
        return i == 2 ? 3 : -1;
    }

    private boolean isColorModeAvailable(int i) {
        int[] intArray = this.mContext.getResources().getIntArray(17235987);
        if (intArray != null) {
            for (int i2 : intArray) {
                if (i2 == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public int getColorMode() {
        if (getAccessibilityTransformActivated()) {
            if (isColorModeAvailable(2)) {
                return 2;
            }
            if (isColorModeAvailable(3)) {
                return 3;
            }
        }
        int intForUser = Settings.System.getIntForUser(this.mContext.getContentResolver(), "display_color_mode", -1, this.mUserId);
        if (intForUser == -1) {
            intForUser = getCurrentColorModeFromSystemProperties();
        }
        if (isColorModeAvailable(intForUser)) {
            return intForUser;
        }
        if (intForUser == 1 && isColorModeAvailable(0)) {
            return 0;
        }
        if (intForUser == 2 && isColorModeAvailable(3)) {
            return 3;
        }
        return (intForUser == 3 && isColorModeAvailable(2)) ? 2 : -1;
    }

    public void setColorMode(int i) {
        if (!isColorModeAvailable(i)) {
            throw new IllegalArgumentException("Invalid colorMode: " + i);
        }
        Settings.System.putIntForUser(this.mContext.getContentResolver(), "display_color_mode", i, this.mUserId);
    }

    public int getMinimumColorTemperature() {
        return this.mContext.getResources().getInteger(17694835);
    }

    public int getMaximumColorTemperature() {
        return this.mContext.getResources().getInteger(17694834);
    }

    public int getDefaultColorTemperature() {
        return this.mContext.getResources().getInteger(17694833);
    }

    public boolean getAccessibilityTransformActivated() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        return Settings.Secure.getIntForUser(contentResolver, "accessibility_display_inversion_enabled", 0, this.mUserId) == 1 || Settings.Secure.getIntForUser(contentResolver, "accessibility_display_daltonizer_enabled", 0, this.mUserId) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSettingChanged(String str) {
        if (this.mCallback != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case -2038150513:
                    if (str.equals("night_display_auto_mode")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1761668069:
                    if (str.equals("night_display_custom_end_time")) {
                        c = 3;
                        break;
                    }
                    break;
                case -969458956:
                    if (str.equals("night_display_color_temperature")) {
                        c = 4;
                        break;
                    }
                    break;
                case -686921934:
                    if (str.equals("accessibility_display_daltonizer_enabled")) {
                        c = 7;
                        break;
                    }
                    break;
                case -551230169:
                    if (str.equals("accessibility_display_inversion_enabled")) {
                        c = 6;
                        break;
                    }
                    break;
                case 800115245:
                    if (str.equals("night_display_activated")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1561688220:
                    if (str.equals("display_color_mode")) {
                        c = 5;
                        break;
                    }
                    break;
                case 1578271348:
                    if (str.equals("night_display_custom_start_time")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.mCallback.onActivated(isActivated());
                    return;
                case 1:
                    this.mCallback.onAutoModeChanged(getAutoMode());
                    return;
                case 2:
                    this.mCallback.onCustomStartTimeChanged(getCustomStartTime());
                    return;
                case 3:
                    this.mCallback.onCustomEndTimeChanged(getCustomEndTime());
                    return;
                case 4:
                    this.mCallback.onColorTemperatureChanged(getColorTemperature());
                    return;
                case 5:
                    this.mCallback.onDisplayColorModeChanged(getColorMode());
                    return;
                case 6:
                case 7:
                    this.mCallback.onAccessibilityTransformChanged(getAccessibilityTransformActivated());
                    return;
                default:
                    return;
            }
        }
    }

    public void setListener(Callback callback) {
        Callback callback2 = this.mCallback;
        if (callback2 != callback) {
            this.mCallback = callback;
            if (callback == null) {
                this.mContext.getContentResolver().unregisterContentObserver(this.mContentObserver);
                return;
            }
            if (callback2 == null) {
                ContentResolver contentResolver = this.mContext.getContentResolver();
                contentResolver.registerContentObserver(Settings.Secure.getUriFor("night_display_activated"), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor("night_display_auto_mode"), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor("night_display_custom_start_time"), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor("night_display_custom_end_time"), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor("night_display_color_temperature"), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.System.getUriFor("display_color_mode"), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor("accessibility_display_inversion_enabled"), false, this.mContentObserver, this.mUserId);
                contentResolver.registerContentObserver(Settings.Secure.getUriFor("accessibility_display_daltonizer_enabled"), false, this.mContentObserver, this.mUserId);
            }
        }
    }

    private MetricsLogger getMetricsLogger() {
        if (this.mMetricsLogger == null) {
            this.mMetricsLogger = new MetricsLogger();
        }
        return this.mMetricsLogger;
    }

    public static boolean isAvailable(Context context) {
        return context.getResources().getBoolean(17956995);
    }
}
