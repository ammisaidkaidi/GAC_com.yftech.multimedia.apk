package android.security.keystore;

import java.util.Date;

/* loaded from: /home/user/work/dex/classes2.dex */
abstract class Utils {
    private Utils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Date cloneIfNotNull(Date date) {
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] cloneIfNotNull(byte[] bArr) {
        if (bArr != null) {
            return (byte[]) bArr.clone();
        }
        return null;
    }
}
