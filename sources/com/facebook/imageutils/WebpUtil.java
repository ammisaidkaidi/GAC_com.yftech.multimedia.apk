package com.facebook.imageutils;

import android.util.Pair;
import androidx.core.view.MotionEventCompat;
import com.android.internal.midi.MidiConstants;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.Nullable;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: /home/user/work/dex/classes3.dex */
public class WebpUtil {
    private static final String VP8L_HEADER = "VP8L";
    private static final String VP8X_HEADER = "VP8X";
    private static final String VP8_HEADER = "VP8 ";

    private WebpUtil() {
    }

    @Nullable
    public static Pair<Integer, Integer> getSize(InputStream inputStream) {
        byte[] bArr = new byte[4];
        try {
            try {
                try {
                    inputStream.read(bArr);
                } catch (IOException e) {
                    e.printStackTrace();
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            if (!compare(bArr, "RIFF")) {
                return null;
            }
            getInt(inputStream);
            inputStream.read(bArr);
            if (!compare(bArr, "WEBP")) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                return null;
            }
            inputStream.read(bArr);
            String header = getHeader(bArr);
            if (VP8_HEADER.equals(header)) {
                Pair<Integer, Integer> vP8Dimension = getVP8Dimension(inputStream);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                    }
                }
                return vP8Dimension;
            }
            if (VP8L_HEADER.equals(header)) {
                Pair<Integer, Integer> vP8LDimension = getVP8LDimension(inputStream);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                return vP8LDimension;
            }
            if (!VP8X_HEADER.equals(header)) {
                if (inputStream != null) {
                    inputStream.close();
                }
                return null;
            }
            Pair<Integer, Integer> vP8XDimension = getVP8XDimension(inputStream);
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e6) {
                    e6.printStackTrace();
                }
            }
            return vP8XDimension;
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e7) {
                    e7.printStackTrace();
                }
            }
        }
    }

    @Nullable
    private static Pair<Integer, Integer> getVP8Dimension(InputStream inputStream) throws IOException {
        inputStream.skip(7L);
        short s = getShort(inputStream);
        short s2 = getShort(inputStream);
        short s3 = getShort(inputStream);
        if (s == 157 && s2 == 1 && s3 == 42) {
            return new Pair<>(Integer.valueOf(get2BytesAsInt(inputStream)), Integer.valueOf(get2BytesAsInt(inputStream)));
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> getVP8LDimension(InputStream inputStream) throws IOException {
        getInt(inputStream);
        if (getByte(inputStream) != 47) {
            return null;
        }
        int read = ((byte) inputStream.read()) & MidiConstants.STATUS_RESET;
        int read2 = ((byte) inputStream.read()) & MidiConstants.STATUS_RESET;
        return new Pair<>(Integer.valueOf((read | ((read2 & 63) << 8)) + 1), Integer.valueOf(((((((byte) inputStream.read()) & MidiConstants.STATUS_RESET) & 15) << 10) | ((((byte) inputStream.read()) & MidiConstants.STATUS_RESET) << 2) | ((read2 & 192) >> 6)) + 1));
    }

    private static Pair<Integer, Integer> getVP8XDimension(InputStream inputStream) throws IOException {
        inputStream.skip(8L);
        return new Pair<>(Integer.valueOf(read3Bytes(inputStream) + 1), Integer.valueOf(read3Bytes(inputStream) + 1));
    }

    private static boolean compare(byte[] bArr, String str) {
        if (bArr.length != str.length()) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (str.charAt(i) != bArr[i]) {
                return false;
            }
        }
        return true;
    }

    private static String getHeader(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            sb.append((char) b);
        }
        return sb.toString();
    }

    private static int getInt(InputStream inputStream) throws IOException {
        byte read = (byte) inputStream.read();
        byte read2 = (byte) inputStream.read();
        return ((((byte) inputStream.read()) << 24) & (-16777216)) | ((((byte) inputStream.read()) << 16) & 16711680) | ((read2 << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (read & MidiConstants.STATUS_RESET);
    }

    public static int get2BytesAsInt(InputStream inputStream) throws IOException {
        return ((((byte) inputStream.read()) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (((byte) inputStream.read()) & MidiConstants.STATUS_RESET);
    }

    private static int read3Bytes(InputStream inputStream) throws IOException {
        byte b = getByte(inputStream);
        return ((getByte(inputStream) << 16) & 16711680) | ((getByte(inputStream) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (b & MidiConstants.STATUS_RESET);
    }

    private static short getShort(InputStream inputStream) throws IOException {
        return (short) (inputStream.read() & 255);
    }

    private static byte getByte(InputStream inputStream) throws IOException {
        return (byte) (inputStream.read() & 255);
    }

    private static boolean isBitOne(byte b, int i) {
        return ((b >> (i % 8)) & 1) == 1;
    }
}
