package com.android.server.backup;

import android.app.backup.BlobBackupHelper;
import android.app.usage.UsageStatsManagerInternal;
import android.content.Context;
import com.android.server.LocalServices;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class UsageStatsBackupHelper extends BlobBackupHelper {
    static final int BLOB_VERSION = 1;
    static final boolean DEBUG = false;
    static final String KEY_USAGE_STATS = "usage_stats";
    static final String TAG = "UsgStatsBackupHelper";

    public UsageStatsBackupHelper(Context context) {
        super(1, new String[]{KEY_USAGE_STATS});
    }

    protected byte[] getBackupPayload(String str) {
        if (!KEY_USAGE_STATS.equals(str)) {
            return null;
        }
        UsageStatsManagerInternal usageStatsManagerInternal = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            dataOutputStream.writeInt(0);
            dataOutputStream.write(usageStatsManagerInternal.getBackupPayload(0, str));
        } catch (IOException unused) {
            byteArrayOutputStream.reset();
        }
        return byteArrayOutputStream.toByteArray();
    }

    protected void applyRestoredPayload(String str, byte[] bArr) {
        if (KEY_USAGE_STATS.equals(str)) {
            UsageStatsManagerInternal usageStatsManagerInternal = (UsageStatsManagerInternal) LocalServices.getService(UsageStatsManagerInternal.class);
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
            try {
                int readInt = dataInputStream.readInt();
                byte[] bArr2 = new byte[bArr.length - 4];
                dataInputStream.read(bArr2, 0, bArr2.length);
                usageStatsManagerInternal.applyRestoredPayload(readInt, str, bArr2);
            } catch (IOException unused) {
            }
        }
    }
}
