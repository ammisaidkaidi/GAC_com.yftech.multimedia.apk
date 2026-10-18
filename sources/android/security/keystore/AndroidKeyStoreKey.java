package android.security.keystore;

import java.security.Key;

/* loaded from: /home/user/work/dex/classes2.dex */
public class AndroidKeyStoreKey implements Key {
    private final String mAlgorithm;
    private final String mAlias;
    private final int mUid;

    @Override // java.security.Key
    public byte[] getEncoded() {
        return null;
    }

    @Override // java.security.Key
    public String getFormat() {
        return null;
    }

    public AndroidKeyStoreKey(String str, int i, String str2) {
        this.mAlias = str;
        this.mUid = i;
        this.mAlgorithm = str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getAlias() {
        return this.mAlias;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getUid() {
        return this.mUid;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return this.mAlgorithm;
    }

    public int hashCode() {
        return (((((this.mAlgorithm == null ? 0 : this.mAlgorithm.hashCode()) + 31) * 31) + (this.mAlias != null ? this.mAlias.hashCode() : 0)) * 31) + this.mUid;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AndroidKeyStoreKey androidKeyStoreKey = (AndroidKeyStoreKey) obj;
        if (this.mAlgorithm == null) {
            if (androidKeyStoreKey.mAlgorithm != null) {
                return false;
            }
        } else if (!this.mAlgorithm.equals(androidKeyStoreKey.mAlgorithm)) {
            return false;
        }
        if (this.mAlias == null) {
            if (androidKeyStoreKey.mAlias != null) {
                return false;
            }
        } else if (!this.mAlias.equals(androidKeyStoreKey.mAlias)) {
            return false;
        }
        return this.mUid == androidKeyStoreKey.mUid;
    }
}
