package android.app.backup;

import android.annotation.SystemApi;

@SystemApi
/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BackupObserver {
    public void backupFinished(int i) {
    }

    public void onResult(String str, int i) {
    }

    public void onUpdate(String str, BackupProgress backupProgress) {
    }
}
