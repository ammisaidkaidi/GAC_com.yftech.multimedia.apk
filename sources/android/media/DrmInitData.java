package android.media;

import java.util.Arrays;
import java.util.UUID;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class DrmInitData {
    public abstract SchemeInitData get(UUID uuid);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class SchemeInitData {
        public final byte[] data;
        public final String mimeType;

        public SchemeInitData(String str, byte[] bArr) {
            this.mimeType = str;
            this.data = bArr;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof SchemeInitData)) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            SchemeInitData schemeInitData = (SchemeInitData) obj;
            return this.mimeType.equals(schemeInitData.mimeType) && Arrays.equals(this.data, schemeInitData.data);
        }

        public int hashCode() {
            return this.mimeType.hashCode() + (Arrays.hashCode(this.data) * 31);
        }
    }
}
