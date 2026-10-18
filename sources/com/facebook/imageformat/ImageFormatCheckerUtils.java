package com.facebook.imageformat;

import com.facebook.common.internal.Preconditions;
import com.facebook.infer.annotation.Nullsafe;
import java.io.UnsupportedEncodingException;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class ImageFormatCheckerUtils {
    public static byte[] asciiBytes(String str) {
        Preconditions.checkNotNull(str);
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("ASCII not found!", e);
        }
    }

    public static boolean startsWithPattern(byte[] bArr, byte[] bArr2) {
        return hasPatternAt(bArr, bArr2, 0);
    }

    public static boolean hasPatternAt(byte[] bArr, byte[] bArr2, int i) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkNotNull(bArr2);
        if (bArr2.length + i > bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i + i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0016, code lost:
    
        if (r1 > r9) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001a, code lost:
    
        if (r8[r1] == r2) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001d, code lost:
    
        if (r1 > r9) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001f, code lost:
    
        r3 = r1 + 1;
        r5 = (r3 + r11) - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
    
        if (r3 >= r5) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x002a, code lost:
    
        if (r8[r3] != r10[r4]) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002c, code lost:
    
        r3 = r3 + 1;
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0031, code lost:
    
        if (r3 != r5) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0033, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0034, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0013, code lost:
    
        if (r8[r1] != r2) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0015, code lost:
    
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int indexOfPattern(byte[] bArr, int i, byte[] bArr2, int i2) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkNotNull(bArr2);
        if (i2 > i) {
            return -1;
        }
        int i3 = 0;
        byte b = bArr2[0];
        int i4 = i - i2;
        while (i3 <= i4) {
            int i5 = 1;
        }
        return -1;
    }

    private ImageFormatCheckerUtils() {
    }
}
