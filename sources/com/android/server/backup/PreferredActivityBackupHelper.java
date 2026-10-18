package com.android.server.backup;

import android.app.AppGlobals;
import android.app.backup.BlobBackupHelper;
import android.content.pm.IPackageManager;
import android.util.Slog;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PreferredActivityBackupHelper extends BlobBackupHelper {
    private static final boolean DEBUG = false;
    private static final String KEY_DEFAULT_APPS = "default-apps";
    private static final String KEY_INTENT_VERIFICATION = "intent-verification";
    private static final String KEY_PREFERRED = "preferred-activity";
    private static final int STATE_VERSION = 3;
    private static final String TAG = "PreferredBackup";

    public PreferredActivityBackupHelper() {
        super(3, new String[]{KEY_PREFERRED, KEY_DEFAULT_APPS, KEY_INTENT_VERIFICATION});
    }

    protected byte[] getBackupPayload(String str) {
        IPackageManager packageManager = AppGlobals.getPackageManager();
        char c = 65535;
        try {
            int hashCode = str.hashCode();
            if (hashCode != -696985986) {
                if (hashCode != -429170260) {
                    if (hashCode == 1336142555 && str.equals(KEY_PREFERRED)) {
                        c = 0;
                    }
                } else if (str.equals(KEY_INTENT_VERIFICATION)) {
                    c = 2;
                }
            } else if (str.equals(KEY_DEFAULT_APPS)) {
                c = 1;
            }
            switch (c) {
                case 0:
                    return packageManager.getPreferredActivityBackup(0);
                case 1:
                    return packageManager.getDefaultAppsBackup(0);
                case 2:
                    return packageManager.getIntentFilterVerificationBackup(0);
                default:
                    Slog.w(TAG, "Unexpected backup key " + str);
                    return null;
            }
        } catch (Exception unused) {
            Slog.e(TAG, "Unable to store payload " + str);
            return null;
        }
    }

    protected void applyRestoredPayload(String str, byte[] bArr) {
        IPackageManager packageManager = AppGlobals.getPackageManager();
        char c = 65535;
        try {
            int hashCode = str.hashCode();
            if (hashCode != -696985986) {
                if (hashCode != -429170260) {
                    if (hashCode == 1336142555 && str.equals(KEY_PREFERRED)) {
                        c = 0;
                    }
                } else if (str.equals(KEY_INTENT_VERIFICATION)) {
                    c = 2;
                }
            } else if (str.equals(KEY_DEFAULT_APPS)) {
                c = 1;
            }
            switch (c) {
                case 0:
                    packageManager.restorePreferredActivities(bArr, 0);
                    return;
                case 1:
                    packageManager.restoreDefaultApps(bArr, 0);
                    return;
                case 2:
                    packageManager.restoreIntentFilterVerification(bArr, 0);
                    return;
                default:
                    Slog.w(TAG, "Unexpected restore key " + str);
                    return;
            }
        } catch (Exception unused) {
            Slog.w(TAG, "Unable to restore key " + str);
        }
    }
}
