package com.android.internal.backup;

import android.content.ContentResolver;
import android.os.Handler;
import android.provider.Settings;
import android.util.KeyValueListParser;
import android.util.KeyValueSettingObserver;

/* loaded from: /home/user/work/dex/classes3.dex */
class LocalTransportParameters extends KeyValueSettingObserver {
    private static final String KEY_FAKE_ENCRYPTION_FLAG = "fake_encryption_flag";
    private static final String KEY_NON_INCREMENTAL_ONLY = "non_incremental_only";
    private static final String SETTING = "backup_local_transport_parameters";
    private static final String TAG = "LocalTransportParams";
    private boolean mFakeEncryptionFlag;
    private boolean mIsNonIncrementalOnly;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalTransportParameters(Handler handler, ContentResolver contentResolver) {
        super(handler, contentResolver, Settings.Secure.getUriFor(SETTING));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFakeEncryptionFlag() {
        return this.mFakeEncryptionFlag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isNonIncrementalOnly() {
        return this.mIsNonIncrementalOnly;
    }

    public String getSettingValue(ContentResolver contentResolver) {
        return Settings.Secure.getString(contentResolver, SETTING);
    }

    public void update(KeyValueListParser keyValueListParser) {
        this.mFakeEncryptionFlag = keyValueListParser.getBoolean(KEY_FAKE_ENCRYPTION_FLAG, false);
        this.mIsNonIncrementalOnly = keyValueListParser.getBoolean(KEY_NON_INCREMENTAL_ONLY, false);
    }
}
