package android.graphics;

import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.Trace;
import android.util.Log;
import android.util.TypedValue;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: /home/user/work/dex/classes.dex */
public class BitmapFactory {
    private static final int DECODE_BUFFER_SIZE = 16384;

    private static native Bitmap nativeDecodeAsset(long j, Rect rect, Options options);

    private static native Bitmap nativeDecodeByteArray(byte[] bArr, int i, int i2, Options options);

    private static native Bitmap nativeDecodeFileDescriptor(FileDescriptor fileDescriptor, Rect rect, Options options);

    private static native Bitmap nativeDecodeStream(InputStream inputStream, byte[] bArr, Rect rect, Options options);

    private static native boolean nativeIsSeekable(FileDescriptor fileDescriptor);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class Options {
        public Bitmap inBitmap;
        public int inDensity;
        public boolean inDither;

        @Deprecated
        public boolean inInputShareable;
        public boolean inJustDecodeBounds;
        public boolean inMutable;

        @Deprecated
        public boolean inPreferQualityOverSpeed;

        @Deprecated
        public boolean inPurgeable;
        public int inSampleSize;
        public int inScreenDensity;
        public int inTargetDensity;
        public byte[] inTempStorage;

        @Deprecated
        public boolean mCancel;
        public ColorSpace outColorSpace;
        public Bitmap.Config outConfig;
        public int outHeight;
        public String outMimeType;
        public int outWidth;
        public Bitmap.Config inPreferredConfig = Bitmap.Config.ARGB_8888;
        public ColorSpace inPreferredColorSpace = null;
        public boolean inScaled = true;
        public boolean inPremultiplied = true;

        @Deprecated
        public void requestCancelDecode() {
            this.mCancel = true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static void validate(Options options) {
            if (options == null) {
                return;
            }
            if (options.inBitmap != null && options.inBitmap.getConfig() == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Bitmaps with Config.HARWARE are always immutable");
            }
            if (options.inMutable && options.inPreferredConfig == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Bitmaps with Config.HARDWARE cannot be decoded into - they are immutable");
            }
            if (options.inPreferredColorSpace != null) {
                if (!(options.inPreferredColorSpace instanceof ColorSpace.Rgb)) {
                    throw new IllegalArgumentException("The destination color space must use the RGB color model");
                }
                if (((ColorSpace.Rgb) options.inPreferredColorSpace).getTransferParameters() == null) {
                    throw new IllegalArgumentException("The destination color space must use an ICC parametric transfer function");
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0038 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap decodeFile(String str, Options options) {
        FileInputStream fileInputStream;
        Bitmap bitmap;
        Options.validate(options);
        try {
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    bitmap = decodeStream(fileInputStream, null, options);
                    try {
                        fileInputStream.close();
                    } catch (IOException unused) {
                    }
                } catch (Exception e) {
                    e = e;
                    Log.e("BitmapFactory", "Unable to decode stream: " + e);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    bitmap = null;
                    return bitmap;
                }
            } catch (Throwable th) {
                th = th;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
            if (fileInputStream != null) {
            }
            throw th;
        }
        return bitmap;
    }

    public static Bitmap decodeFile(String str) {
        return decodeFile(str, null);
    }

    public static Bitmap decodeResourceStream(Resources resources, TypedValue typedValue, InputStream inputStream, Rect rect, Options options) {
        Options.validate(options);
        if (options == null) {
            options = new Options();
        }
        if (options.inDensity == 0 && typedValue != null) {
            int i = typedValue.density;
            if (i == 0) {
                options.inDensity = 160;
            } else if (i != 65535) {
                options.inDensity = i;
            }
        }
        if (options.inTargetDensity == 0 && resources != null) {
            options.inTargetDensity = resources.getDisplayMetrics().densityDpi;
        }
        return decodeStream(inputStream, rect, options);
    }

    public static Bitmap decodeResource(Resources resources, int i, Options options) {
        InputStream inputStream;
        Bitmap bitmap;
        Options.validate(options);
        InputStream inputStream2 = null;
        try {
            TypedValue typedValue = new TypedValue();
            inputStream = resources.openRawResource(i, typedValue);
            try {
                bitmap = decodeResourceStream(resources, typedValue, inputStream, null, options);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (Exception unused2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                bitmap = null;
                if (bitmap == null) {
                }
                return bitmap;
            } catch (Throwable th) {
                th = th;
                inputStream2 = inputStream;
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (bitmap == null || options == null || options.inBitmap == null) {
            return bitmap;
        }
        throw new IllegalArgumentException("Problem decoding into existing bitmap");
    }

    public static Bitmap decodeResource(Resources resources, int i) {
        return decodeResource(resources, i, null);
    }

    public static Bitmap decodeByteArray(byte[] bArr, int i, int i2, Options options) {
        if ((i | i2) < 0 || bArr.length < i + i2) {
            throw new ArrayIndexOutOfBoundsException();
        }
        Options.validate(options);
        Trace.traceBegin(2L, "decodeBitmap");
        try {
            Bitmap nativeDecodeByteArray = nativeDecodeByteArray(bArr, i, i2, options);
            if (nativeDecodeByteArray == null && options != null && options.inBitmap != null) {
                throw new IllegalArgumentException("Problem decoding into existing bitmap");
            }
            setDensityFromOptions(nativeDecodeByteArray, options);
            return nativeDecodeByteArray;
        } finally {
            Trace.traceEnd(2L);
        }
    }

    public static Bitmap decodeByteArray(byte[] bArr, int i, int i2) {
        return decodeByteArray(bArr, i, i2, null);
    }

    private static void setDensityFromOptions(Bitmap bitmap, Options options) {
        if (bitmap == null || options == null) {
            return;
        }
        int i = options.inDensity;
        if (i != 0) {
            bitmap.setDensity(i);
            int i2 = options.inTargetDensity;
            if (i2 == 0 || i == i2 || i == options.inScreenDensity) {
                return;
            }
            byte[] ninePatchChunk = bitmap.getNinePatchChunk();
            boolean z = ninePatchChunk != null && NinePatch.isNinePatchChunk(ninePatchChunk);
            if (options.inScaled || z) {
                bitmap.setDensity(i2);
                return;
            }
            return;
        }
        if (options.inBitmap != null) {
            bitmap.setDensity(Bitmap.getDefaultDensity());
        }
    }

    public static Bitmap decodeStream(InputStream inputStream, Rect rect, Options options) {
        Bitmap decodeStreamInternal;
        if (inputStream == null) {
            return null;
        }
        Options.validate(options);
        Trace.traceBegin(2L, "decodeBitmap");
        try {
            if (inputStream instanceof AssetManager.AssetInputStream) {
                decodeStreamInternal = nativeDecodeAsset(((AssetManager.AssetInputStream) inputStream).getNativeAsset(), rect, options);
            } else {
                decodeStreamInternal = decodeStreamInternal(inputStream, rect, options);
            }
            if (decodeStreamInternal == null && options != null && options.inBitmap != null) {
                throw new IllegalArgumentException("Problem decoding into existing bitmap");
            }
            setDensityFromOptions(decodeStreamInternal, options);
            return decodeStreamInternal;
        } finally {
            Trace.traceEnd(2L);
        }
    }

    private static Bitmap decodeStreamInternal(InputStream inputStream, Rect rect, Options options) {
        byte[] bArr = options != null ? options.inTempStorage : null;
        if (bArr == null) {
            bArr = new byte[16384];
        }
        return nativeDecodeStream(inputStream, bArr, rect, options);
    }

    public static Bitmap decodeStream(InputStream inputStream) {
        return decodeStream(inputStream, null, null);
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor, Rect rect, Options options) {
        Bitmap decodeStreamInternal;
        Options.validate(options);
        Trace.traceBegin(2L, "decodeFileDescriptor");
        try {
            if (nativeIsSeekable(fileDescriptor)) {
                decodeStreamInternal = nativeDecodeFileDescriptor(fileDescriptor, rect, options);
            } else {
                FileInputStream fileInputStream = new FileInputStream(fileDescriptor);
                try {
                    decodeStreamInternal = decodeStreamInternal(fileInputStream, rect, options);
                } finally {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                }
            }
            if (decodeStreamInternal == null && options != null && options.inBitmap != null) {
                throw new IllegalArgumentException("Problem decoding into existing bitmap");
            }
            setDensityFromOptions(decodeStreamInternal, options);
            return decodeStreamInternal;
        } finally {
            Trace.traceEnd(2L);
        }
    }

    public static Bitmap decodeFileDescriptor(FileDescriptor fileDescriptor) {
        return decodeFileDescriptor(fileDescriptor, null, null);
    }
}
