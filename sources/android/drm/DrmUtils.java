package android.drm;

import android.net.wifi.WifiEnterpriseConfig;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class DrmUtils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] readBytes(String str) throws IOException {
        return readBytes(new File(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] readBytes(File file) throws IOException {
        byte[] bArr;
        FileInputStream fileInputStream = new FileInputStream(file);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        try {
            int available = bufferedInputStream.available();
            if (available > 0) {
                bArr = new byte[available];
                bufferedInputStream.read(bArr);
            } else {
                bArr = null;
            }
            return bArr;
        } finally {
            quietlyDispose(bufferedInputStream);
            quietlyDispose(fileInputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeToFile(String str, byte[] bArr) throws IOException {
        if (str == null || bArr == null) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(str);
            try {
                fileOutputStream2.write(bArr);
                quietlyDispose(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                quietlyDispose(fileOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void removeFile(String str) throws IOException {
        new File(str).delete();
    }

    private static void quietlyDispose(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static ExtendedMetadataParser getExtendedMetadataParser(byte[] bArr) {
        return new ExtendedMetadataParser(bArr);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class ExtendedMetadataParser {
        HashMap<String, String> mMap;

        private int readByte(byte[] bArr, int i) {
            return bArr[i];
        }

        private String readMultipleBytes(byte[] bArr, int i, int i2) {
            byte[] bArr2 = new byte[i];
            int i3 = 0;
            int i4 = i2;
            while (i4 < i2 + i) {
                bArr2[i3] = bArr[i4];
                i4++;
                i3++;
            }
            return new String(bArr2);
        }

        private ExtendedMetadataParser(byte[] bArr) {
            this.mMap = new HashMap<>();
            int i = 0;
            while (i < bArr.length) {
                int readByte = readByte(bArr, i);
                int i2 = i + 1;
                int readByte2 = readByte(bArr, i2);
                int i3 = i2 + 1;
                String readMultipleBytes = readMultipleBytes(bArr, readByte, i3);
                int i4 = i3 + readByte;
                String readMultipleBytes2 = readMultipleBytes(bArr, readByte2, i4);
                if (readMultipleBytes2.equals(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER)) {
                    readMultipleBytes2 = "";
                }
                i = i4 + readByte2;
                this.mMap.put(readMultipleBytes, readMultipleBytes2);
            }
        }

        public Iterator<String> iterator() {
            return this.mMap.values().iterator();
        }

        public Iterator<String> keyIterator() {
            return this.mMap.keySet().iterator();
        }

        public String get(String str) {
            return this.mMap.get(str);
        }
    }
}
