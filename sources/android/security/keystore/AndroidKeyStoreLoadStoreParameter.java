package android.security.keystore;

import java.security.KeyStore;

/* loaded from: /home/user/work/dex/classes2.dex */
class AndroidKeyStoreLoadStoreParameter implements KeyStore.LoadStoreParameter {
    private final int mUid;

    @Override // java.security.KeyStore.LoadStoreParameter
    public KeyStore.ProtectionParameter getProtectionParameter() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidKeyStoreLoadStoreParameter(int i) {
        this.mUid = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUid() {
        return this.mUid;
    }
}
