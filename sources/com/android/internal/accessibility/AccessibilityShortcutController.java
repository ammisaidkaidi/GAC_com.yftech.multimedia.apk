package com.android.internal.accessibility;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.ActivityManager;
import android.app.ActivityThread;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.media.AudioAttributes;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Slog;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.widget.Toast;
import com.android.internal.util.ArrayUtils;
import com.media.common.util.AppConstants;
import java.util.Collections;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes3.dex */
public class AccessibilityShortcutController {
    private static final String TAG = "AccessibilityShortcutController";
    private static Map<ComponentName, ToggleableFrameworkFeatureInfo> sFrameworkShortcutFeaturesMap;
    private AlertDialog mAlertDialog;
    private final Context mContext;
    private boolean mEnabledOnLockScreen;
    public FrameworkObjectProvider mFrameworkObjectProvider = new FrameworkObjectProvider();
    private boolean mIsShortcutEnabled;
    private int mUserId;
    public static final ComponentName COLOR_INVERSION_COMPONENT_NAME = new ComponentName("com.android.server.accessibility", "ColorInversion");
    public static final ComponentName DALTONIZER_COMPONENT_NAME = new ComponentName("com.android.server.accessibility", "Daltonizer");
    private static final AudioAttributes VIBRATION_ATTRIBUTES = new AudioAttributes.Builder().setContentType(4).setUsage(11).build();

    public static String getTargetServiceComponentNameString(Context context, int i) {
        String stringForUser = Settings.Secure.getStringForUser(context.getContentResolver(), "accessibility_shortcut_target_service", i);
        return stringForUser != null ? stringForUser : context.getString(17039649);
    }

    public static Map<ComponentName, ToggleableFrameworkFeatureInfo> getFrameworkShortcutFeaturesMap() {
        if (sFrameworkShortcutFeaturesMap == null) {
            ArrayMap arrayMap = new ArrayMap(2);
            arrayMap.put(COLOR_INVERSION_COMPONENT_NAME, new ToggleableFrameworkFeatureInfo("accessibility_display_inversion_enabled", AppConstants.VALUE_SHOW, AppConstants.VALUE_HIDE, 17039624));
            arrayMap.put(DALTONIZER_COMPONENT_NAME, new ToggleableFrameworkFeatureInfo("accessibility_display_daltonizer_enabled", AppConstants.VALUE_SHOW, AppConstants.VALUE_HIDE, 17039623));
            sFrameworkShortcutFeaturesMap = Collections.unmodifiableMap(arrayMap);
        }
        return sFrameworkShortcutFeaturesMap;
    }

    public AccessibilityShortcutController(Context context, Handler handler, int i) {
        this.mContext = context;
        this.mUserId = i;
        ContentObserver contentObserver = new ContentObserver(handler) { // from class: com.android.internal.accessibility.AccessibilityShortcutController.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri, int i2) {
                if (i2 == AccessibilityShortcutController.this.mUserId) {
                    AccessibilityShortcutController.this.onSettingsChanged();
                }
            }
        };
        this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("accessibility_shortcut_target_service"), false, contentObserver, -1);
        this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("accessibility_shortcut_enabled"), false, contentObserver, -1);
        this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("accessibility_shortcut_on_lock_screen"), false, contentObserver, -1);
        this.mContext.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("accessibility_shortcut_dialog_shown"), false, contentObserver, -1);
        setCurrentUser(this.mUserId);
    }

    public void setCurrentUser(int i) {
        this.mUserId = i;
        onSettingsChanged();
    }

    public boolean isAccessibilityShortcutAvailable(boolean z) {
        return this.mIsShortcutEnabled && (!z || this.mEnabledOnLockScreen);
    }

    public void onSettingsChanged() {
        boolean z = !TextUtils.isEmpty(getTargetServiceComponentNameString(this.mContext, this.mUserId));
        ContentResolver contentResolver = this.mContext.getContentResolver();
        boolean z2 = Settings.Secure.getIntForUser(contentResolver, "accessibility_shortcut_enabled", 1, this.mUserId) == 1;
        this.mEnabledOnLockScreen = Settings.Secure.getIntForUser(contentResolver, "accessibility_shortcut_on_lock_screen", Settings.Secure.getIntForUser(contentResolver, "accessibility_shortcut_dialog_shown", 0, this.mUserId), this.mUserId) == 1;
        this.mIsShortcutEnabled = z2 && z;
    }

    public void performAccessibilityShortcut() {
        Slog.d(TAG, "Accessibility shortcut activated");
        ContentResolver contentResolver = this.mContext.getContentResolver();
        int currentUser = ActivityManager.getCurrentUser();
        int intForUser = Settings.Secure.getIntForUser(contentResolver, "accessibility_shortcut_dialog_shown", 0, currentUser);
        int i = hasFeatureLeanback() ? 11 : 10;
        Ringtone ringtone = RingtoneManager.getRingtone(this.mContext, Settings.System.DEFAULT_NOTIFICATION_URI);
        if (ringtone != null) {
            ringtone.setAudioAttributes(new AudioAttributes.Builder().setUsage(i).build());
            ringtone.play();
        }
        Vibrator vibrator = (Vibrator) this.mContext.getSystemService("vibrator");
        if (vibrator != null && vibrator.hasVibrator()) {
            vibrator.vibrate(ArrayUtils.convertToLongArray(this.mContext.getResources().getIntArray(17236015)), -1, VIBRATION_ATTRIBUTES);
        }
        if (intForUser == 0) {
            this.mAlertDialog = createShortcutWarningDialog(currentUser);
            if (this.mAlertDialog == null) {
                return;
            }
            Window window = this.mAlertDialog.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.type = 2009;
            window.setAttributes(attributes);
            this.mAlertDialog.show();
            Settings.Secure.putIntForUser(contentResolver, "accessibility_shortcut_dialog_shown", 1, currentUser);
            return;
        }
        if (this.mAlertDialog != null) {
            this.mAlertDialog.dismiss();
            this.mAlertDialog = null;
        }
        String shortcutFeatureDescription = getShortcutFeatureDescription(false);
        if (shortcutFeatureDescription == null) {
            Slog.e(TAG, "Accessibility shortcut set to invalid service");
            return;
        }
        AccessibilityServiceInfo infoForTargetService = getInfoForTargetService();
        if (infoForTargetService != null) {
            Toast makeToastFromText = this.mFrameworkObjectProvider.makeToastFromText(this.mContext, String.format(this.mContext.getString(isServiceEnabled(infoForTargetService) ? 17039425 : 17039426), shortcutFeatureDescription), 1);
            makeToastFromText.getWindowParams().privateFlags |= 16;
            makeToastFromText.show();
        }
        this.mFrameworkObjectProvider.getAccessibilityManagerInstance(this.mContext).performAccessibilityShortcut();
    }

    private AlertDialog createShortcutWarningDialog(final int i) {
        String shortcutFeatureDescription = getShortcutFeatureDescription(true);
        if (shortcutFeatureDescription == null) {
            return null;
        }
        return this.mFrameworkObjectProvider.getAlertDialogBuilder(this.mFrameworkObjectProvider.getSystemUiContext()).setTitle(17039428).setMessage(String.format(this.mContext.getString(17039427), shortcutFeatureDescription)).setCancelable(false).setPositiveButton(17040125, (DialogInterface.OnClickListener) null).setNegativeButton(17039797, new DialogInterface.OnClickListener() { // from class: com.android.internal.accessibility.-$$Lambda$AccessibilityShortcutController$2NcDVJHkpsPbwr45v1_NfIM8row
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                Settings.Secure.putStringForUser(AccessibilityShortcutController.this.mContext.getContentResolver(), "accessibility_shortcut_target_service", "", i);
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.android.internal.accessibility.-$$Lambda$AccessibilityShortcutController$T96D356-n5VObNOonEIYV8s83Fc
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                Settings.Secure.putIntForUser(AccessibilityShortcutController.this.mContext.getContentResolver(), "accessibility_shortcut_dialog_shown", 0, i);
            }
        }).create();
    }

    private AccessibilityServiceInfo getInfoForTargetService() {
        String targetServiceComponentNameString = getTargetServiceComponentNameString(this.mContext, -2);
        if (targetServiceComponentNameString == null) {
            return null;
        }
        return this.mFrameworkObjectProvider.getAccessibilityManagerInstance(this.mContext).getInstalledServiceInfoWithComponentName(ComponentName.unflattenFromString(targetServiceComponentNameString));
    }

    private String getShortcutFeatureDescription(boolean z) {
        String targetServiceComponentNameString = getTargetServiceComponentNameString(this.mContext, -2);
        if (targetServiceComponentNameString == null) {
            return null;
        }
        ComponentName unflattenFromString = ComponentName.unflattenFromString(targetServiceComponentNameString);
        ToggleableFrameworkFeatureInfo toggleableFrameworkFeatureInfo = getFrameworkShortcutFeaturesMap().get(unflattenFromString);
        if (toggleableFrameworkFeatureInfo != null) {
            return toggleableFrameworkFeatureInfo.getLabel(this.mContext);
        }
        AccessibilityServiceInfo installedServiceInfoWithComponentName = this.mFrameworkObjectProvider.getAccessibilityManagerInstance(this.mContext).getInstalledServiceInfoWithComponentName(unflattenFromString);
        if (installedServiceInfoWithComponentName == null) {
            return null;
        }
        PackageManager packageManager = this.mContext.getPackageManager();
        String charSequence = installedServiceInfoWithComponentName.getResolveInfo().loadLabel(packageManager).toString();
        CharSequence loadSummary = installedServiceInfoWithComponentName.loadSummary(packageManager);
        return (!z || TextUtils.isEmpty(loadSummary)) ? charSequence : String.format("%s\n%s", charSequence, loadSummary);
    }

    private boolean isServiceEnabled(AccessibilityServiceInfo accessibilityServiceInfo) {
        return this.mFrameworkObjectProvider.getAccessibilityManagerInstance(this.mContext).getEnabledAccessibilityServiceList(-1).contains(accessibilityServiceInfo);
    }

    private boolean hasFeatureLeanback() {
        return this.mContext.getPackageManager().hasSystemFeature("android.software.leanback");
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class ToggleableFrameworkFeatureInfo {
        private int mIconDrawableId;
        private final int mLabelStringResourceId;
        private final String mSettingKey;
        private final String mSettingOffValue;
        private final String mSettingOnValue;

        ToggleableFrameworkFeatureInfo(String str, String str2, String str3, int i) {
            this.mSettingKey = str;
            this.mSettingOnValue = str2;
            this.mSettingOffValue = str3;
            this.mLabelStringResourceId = i;
        }

        public String getSettingKey() {
            return this.mSettingKey;
        }

        public String getSettingOnValue() {
            return this.mSettingOnValue;
        }

        public String getSettingOffValue() {
            return this.mSettingOffValue;
        }

        public String getLabel(Context context) {
            return context.getString(this.mLabelStringResourceId);
        }
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class FrameworkObjectProvider {
        public AccessibilityManager getAccessibilityManagerInstance(Context context) {
            return AccessibilityManager.getInstance(context);
        }

        public AlertDialog.Builder getAlertDialogBuilder(Context context) {
            return new AlertDialog.Builder(context);
        }

        public Toast makeToastFromText(Context context, CharSequence charSequence, int i) {
            return Toast.makeText(context, charSequence, i);
        }

        public Context getSystemUiContext() {
            return ActivityThread.currentActivityThread().getSystemUiContext();
        }
    }
}
