package com.android.server.backup;

import android.accounts.AccountManagerInternal;
import android.app.backup.BlobBackupHelper;
import android.util.Slog;
import com.android.server.LocalServices;

/* loaded from: /home/user/work/dex/classes3.dex */
public class AccountManagerBackupHelper extends BlobBackupHelper {
    private static final boolean DEBUG = false;
    private static final String KEY_ACCOUNT_ACCESS_GRANTS = "account_access_grants";
    private static final int STATE_VERSION = 1;
    private static final String TAG = "AccountsBackup";

    public AccountManagerBackupHelper() {
        super(1, new String[]{KEY_ACCOUNT_ACCESS_GRANTS});
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        android.util.Slog.w(com.android.server.backup.AccountManagerBackupHelper.TAG, "Unexpected backup key " + r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected byte[] getBackupPayload(String str) {
        AccountManagerInternal accountManagerInternal = (AccountManagerInternal) LocalServices.getService(AccountManagerInternal.class);
        char c = 65535;
        try {
            if (str.hashCode() == 1544100736 && str.equals(KEY_ACCOUNT_ACCESS_GRANTS)) {
                c = 0;
            }
            return accountManagerInternal.backupAccountAccessPermissions(0);
        } catch (Exception unused) {
            Slog.e(TAG, "Unable to store payload " + str);
        }
        return new byte[0];
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001f, code lost:
    
        android.util.Slog.w(com.android.server.backup.AccountManagerBackupHelper.TAG, "Unexpected restore key " + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void applyRestoredPayload(String str, byte[] bArr) {
        AccountManagerInternal accountManagerInternal = (AccountManagerInternal) LocalServices.getService(AccountManagerInternal.class);
        char c = 65535;
        try {
            if (str.hashCode() == 1544100736 && str.equals(KEY_ACCOUNT_ACCESS_GRANTS)) {
                c = 0;
            }
            accountManagerInternal.restoreAccountAccessPermissions(bArr, 0);
        } catch (Exception unused) {
            Slog.w(TAG, "Unable to restore key " + str);
        }
    }
}
