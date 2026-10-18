package com.media.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class FileTypeUtils {
    public static final String imageGIF = "image/gif";

    public static String getMimeType(String str) {
        try {
            return String.format("image/%s", readType(str));
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x00be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String readType(String str) throws IOException {
        Throwable th;
        FileInputStream fileInputStream;
        try {
            File file = new File(str);
            if (!file.exists() || file.isDirectory() || file.length() < 8) {
                throw new IOException("the file [" + file.getAbsolutePath() + "] is not image !");
            }
            fileInputStream = new FileInputStream(file);
            try {
                try {
                    byte[] readInputStreamAt = readInputStreamAt(fileInputStream, 0L, 8);
                    if (isJPEGHeader(readInputStreamAt) && isJPEGFooter(readInputStreamAt(fileInputStream, (file.length() - 2) - 8, 2))) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused) {
                        }
                        return "jpeg";
                    }
                    if (isPNG(readInputStreamAt)) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused2) {
                        }
                        return "png";
                    }
                    if (isGIF(readInputStreamAt)) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused3) {
                        }
                        return "gif";
                    }
                    if (isWEBP(readInputStreamAt)) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused4) {
                        }
                        return "webp";
                    }
                    if (isBMP(readInputStreamAt)) {
                        try {
                            fileInputStream.close();
                        } catch (Exception unused5) {
                        }
                        return "bmp";
                    }
                    if (!isICON(readInputStreamAt)) {
                        throw new IOException("the image's format is unkown!");
                    }
                    try {
                        fileInputStream.close();
                    } catch (Exception unused6) {
                    }
                    return "ico";
                } catch (FileNotFoundException e) {
                    throw e;
                }
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception unused7) {
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e2) {
            fileInputStream = null;
            throw e2;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            if (fileInputStream != null) {
            }
            throw th;
        }
    }

    private static boolean compare(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] readInputStreamAt(FileInputStream fileInputStream, long j, int i) throws IOException {
        byte[] bArr = new byte[i];
        fileInputStream.skip(j);
        fileInputStream.read(bArr, 0, i);
        return bArr;
    }

    private static boolean isBMP(byte[] bArr) {
        return compare(bArr, "BM".getBytes());
    }

    private static boolean isICON(byte[] bArr) {
        return compare(bArr, new byte[]{0, 0, 1, 0, 1, 0, 32, 32});
    }

    private static boolean isWEBP(byte[] bArr) {
        return compare(bArr, "RIFF".getBytes());
    }

    private static boolean isGIF(byte[] bArr) {
        return compare(bArr, "GIF89a".getBytes()) || compare(bArr, "GIF87a".getBytes());
    }

    private static boolean isPNG(byte[] bArr) {
        return compare(bArr, new byte[]{-119, 80, 78, 71, 13, 10, 26, 10});
    }

    private static boolean isJPEGHeader(byte[] bArr) {
        return compare(bArr, new byte[]{-1, -40});
    }

    private static boolean isJPEGFooter(byte[] bArr) {
        return compare(bArr, new byte[]{-1, -39});
    }
}
