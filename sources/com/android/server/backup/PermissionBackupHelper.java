package com.android.server.backup;

import android.app.AppGlobals;
import android.app.backup.BlobBackupHelper;
import android.content.pm.IPackageManager;
import android.util.Slog;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PermissionBackupHelper extends BlobBackupHelper {
    private static final boolean DEBUG = false;
    private static final String KEY_PERMISSIONS = "permissions";
    private static final int STATE_VERSION = 1;
    private static final String TAG = "PermissionBackup";

    public PermissionBackupHelper() {
        super(1, new String[]{KEY_PERMISSIONS});
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        android.util.Slog.w(com.android.server.backup.PermissionBackupHelper.TAG, "Unexpected backup key " + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected byte[] getBackupPayload(String str) {
        IPackageManager packageManager = AppGlobals.getPackageManager();
        char c = 65535;
        try {
            if (str.hashCode() == 1133704324 && str.equals(KEY_PERMISSIONS)) {
                c = 0;
            }
            return packageManager.getPermissionGrantBackup(0);
        } catch (Exception unused) {
            Slog.e(TAG, "Unable to store payload " + str);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
    
        android.util.Slog.w(com.android.server.backup.PermissionBackupHelper.TAG, "Unexpected restore key " + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void applyRestoredPayload(String str, byte[] bArr) {
        IPackageManager packageManager = AppGlobals.getPackageManager();
        char c = 65535;
        try {
            if (str.hashCode() == 1133704324 && str.equals(KEY_PERMISSIONS)) {
                c = 0;
            }
            packageManager.restorePermissionGrants(bArr, 0);
        } catch (Exception unused) {
            Slog.w(TAG, "Unable to restore key " + str);
        }
    }
}
