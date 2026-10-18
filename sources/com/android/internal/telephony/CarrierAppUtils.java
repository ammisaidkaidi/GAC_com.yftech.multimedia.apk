package com.android.internal.telephony;

import android.content.ContentResolver;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageManager;
import android.os.RemoteException;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Slog;
import com.android.internal.annotations.VisibleForTesting;
import com.android.server.SystemConfig;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: /home/user/work/dex/classes3.dex */
public final class CarrierAppUtils {
    private static final boolean DEBUG = false;
    private static final String TAG = "CarrierAppUtils";

    private CarrierAppUtils() {
    }

    public static synchronized void disableCarrierAppsUntilPrivileged(String str, IPackageManager iPackageManager, TelephonyManager telephonyManager, ContentResolver contentResolver, int i) {
        synchronized (CarrierAppUtils.class) {
            SystemConfig systemConfig = SystemConfig.getInstance();
            disableCarrierAppsUntilPrivileged(str, iPackageManager, telephonyManager, contentResolver, i, systemConfig.getDisabledUntilUsedPreinstalledCarrierApps(), systemConfig.getDisabledUntilUsedPreinstalledCarrierAssociatedApps());
        }
    }

    public static synchronized void disableCarrierAppsUntilPrivileged(String str, IPackageManager iPackageManager, ContentResolver contentResolver, int i) {
        synchronized (CarrierAppUtils.class) {
            SystemConfig systemConfig = SystemConfig.getInstance();
            disableCarrierAppsUntilPrivileged(str, iPackageManager, null, contentResolver, i, systemConfig.getDisabledUntilUsedPreinstalledCarrierApps(), systemConfig.getDisabledUntilUsedPreinstalledCarrierAssociatedApps());
        }
    }

    @VisibleForTesting
    public static void disableCarrierAppsUntilPrivileged(String str, IPackageManager iPackageManager, TelephonyManager telephonyManager, ContentResolver contentResolver, int i, ArraySet<String> arraySet, ArrayMap<String, List<String>> arrayMap) {
        List<ApplicationInfo> list;
        int i2;
        String str2;
        ApplicationInfo applicationInfo;
        List<ApplicationInfo> defaultCarrierAppCandidatesHelper = getDefaultCarrierAppCandidatesHelper(iPackageManager, i, arraySet);
        if (defaultCarrierAppCandidatesHelper == null || defaultCarrierAppCandidatesHelper.isEmpty()) {
            return;
        }
        Map<String, List<ApplicationInfo>> defaultCarrierAssociatedAppsHelper = getDefaultCarrierAssociatedAppsHelper(iPackageManager, i, arrayMap);
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        int i4 = 1;
        boolean z = Settings.Secure.getIntForUser(contentResolver, "carrier_apps_handled", 0, i) == 1;
        try {
            for (ApplicationInfo applicationInfo2 : defaultCarrierAppCandidatesHelper) {
                String str3 = applicationInfo2.packageName;
                if (((telephonyManager == null || telephonyManager.checkCarrierPrivilegesForPackageAnyPhone(str3) != i4) ? i3 : i4) != 0) {
                    if (applicationInfo2.isUpdatedSystemApp() || !(applicationInfo2.enabledSetting == 0 || applicationInfo2.enabledSetting == 4)) {
                        i2 = 4;
                        str2 = str3;
                        applicationInfo = applicationInfo2;
                    } else {
                        Slog.i(TAG, "Update state(" + str3 + "): ENABLED for user " + i);
                        i2 = 4;
                        str2 = str3;
                        applicationInfo = applicationInfo2;
                        iPackageManager.setApplicationEnabledSetting(str3, 1, 1, i, str);
                    }
                    List<ApplicationInfo> list2 = defaultCarrierAssociatedAppsHelper.get(str2);
                    if (list2 != null) {
                        for (ApplicationInfo applicationInfo3 : list2) {
                            if (applicationInfo3.enabledSetting == 0 || applicationInfo3.enabledSetting == i2) {
                                Slog.i(TAG, "Update associated state(" + applicationInfo3.packageName + "): ENABLED for user " + i);
                                iPackageManager.setApplicationEnabledSetting(applicationInfo3.packageName, 1, 1, i, str);
                            }
                        }
                    }
                    arrayList.add(applicationInfo.packageName);
                } else {
                    if (!applicationInfo2.isUpdatedSystemApp() && applicationInfo2.enabledSetting == 0) {
                        Slog.i(TAG, "Update state(" + str3 + "): DISABLED_UNTIL_USED for user " + i);
                        iPackageManager.setApplicationEnabledSetting(str3, 4, 0, i, str);
                    }
                    if (!z && (list = defaultCarrierAssociatedAppsHelper.get(str3)) != null) {
                        for (ApplicationInfo applicationInfo4 : list) {
                            if (applicationInfo4.enabledSetting == 0) {
                                Slog.i(TAG, "Update associated state(" + applicationInfo4.packageName + "): DISABLED_UNTIL_USED for user " + i);
                                iPackageManager.setApplicationEnabledSetting(applicationInfo4.packageName, 4, 0, i, str);
                            }
                        }
                    }
                }
                i3 = 0;
                i4 = 1;
            }
            if (!z) {
                Settings.Secure.putIntForUser(contentResolver, "carrier_apps_handled", 1, i);
            }
            if (arrayList.isEmpty()) {
                return;
            }
            String[] strArr = new String[arrayList.size()];
            arrayList.toArray(strArr);
            iPackageManager.grantDefaultPermissionsToEnabledCarrierApps(strArr, i);
        } catch (RemoteException e) {
            Slog.w(TAG, "Could not reach PackageManager", e);
        }
    }

    public static List<ApplicationInfo> getDefaultCarrierApps(IPackageManager iPackageManager, TelephonyManager telephonyManager, int i) {
        List<ApplicationInfo> defaultCarrierAppCandidates = getDefaultCarrierAppCandidates(iPackageManager, i);
        if (defaultCarrierAppCandidates == null || defaultCarrierAppCandidates.isEmpty()) {
            return null;
        }
        for (int size = defaultCarrierAppCandidates.size() - 1; size >= 0; size--) {
            if (!(telephonyManager.checkCarrierPrivilegesForPackageAnyPhone(defaultCarrierAppCandidates.get(size).packageName) == 1)) {
                defaultCarrierAppCandidates.remove(size);
            }
        }
        return defaultCarrierAppCandidates;
    }

    public static List<ApplicationInfo> getDefaultCarrierAppCandidates(IPackageManager iPackageManager, int i) {
        return getDefaultCarrierAppCandidatesHelper(iPackageManager, i, SystemConfig.getInstance().getDisabledUntilUsedPreinstalledCarrierApps());
    }

    private static List<ApplicationInfo> getDefaultCarrierAppCandidatesHelper(IPackageManager iPackageManager, int i, ArraySet<String> arraySet) {
        int size;
        if (arraySet == null || (size = arraySet.size()) == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            ApplicationInfo applicationInfoIfSystemApp = getApplicationInfoIfSystemApp(iPackageManager, i, arraySet.valueAt(i2));
            if (applicationInfoIfSystemApp != null) {
                arrayList.add(applicationInfoIfSystemApp);
            }
        }
        return arrayList;
    }

    private static Map<String, List<ApplicationInfo>> getDefaultCarrierAssociatedAppsHelper(IPackageManager iPackageManager, int i, ArrayMap<String, List<String>> arrayMap) {
        int size = arrayMap.size();
        ArrayMap arrayMap2 = new ArrayMap(size);
        for (int i2 = 0; i2 < size; i2++) {
            String keyAt = arrayMap.keyAt(i2);
            List<String> valueAt = arrayMap.valueAt(i2);
            for (int i3 = 0; i3 < valueAt.size(); i3++) {
                ApplicationInfo applicationInfoIfSystemApp = getApplicationInfoIfSystemApp(iPackageManager, i, valueAt.get(i3));
                if (applicationInfoIfSystemApp != null && !applicationInfoIfSystemApp.isUpdatedSystemApp()) {
                    List list = (List) arrayMap2.get(keyAt);
                    if (list == null) {
                        list = new ArrayList();
                        arrayMap2.put(keyAt, list);
                    }
                    list.add(applicationInfoIfSystemApp);
                }
            }
        }
        return arrayMap2;
    }

    private static ApplicationInfo getApplicationInfoIfSystemApp(IPackageManager iPackageManager, int i, String str) {
        try {
            ApplicationInfo applicationInfo = iPackageManager.getApplicationInfo(str, 32768, i);
            if (applicationInfo == null) {
                return null;
            }
            if (applicationInfo.isSystemApp()) {
                return applicationInfo;
            }
            return null;
        } catch (RemoteException e) {
            Slog.w(TAG, "Could not reach PackageManager", e);
            return null;
        }
    }
}
