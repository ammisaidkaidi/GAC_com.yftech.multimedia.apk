package com.media.common.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class BitmapUtils {
    private static int mDesiredHeight;
    private static int mDesiredWidth;

    private static int getResizedDimension(int i, int i2, int i3, int i4) {
        double d = i4 / i3;
        double d2 = i2;
        return ((double) i) * d > d2 ? (int) (d2 / d) : i;
    }

    public static byte[] getBitmapByte(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 90, byteArrayOutputStream);
        try {
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }

    public static Bitmap getBitmapFromByte(byte[] bArr) {
        if (bArr != null) {
            return BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        }
        return null;
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(canvas);
        return createBitmap;
    }

    public static Bitmap decodeSampledBitmapFromFile(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        BitmapFactory.Options bestOptions = getBestOptions(options, i, i2);
        bestOptions.inJustDecodeBounds = false;
        return createScaleBitmap(BitmapFactory.decodeFile(str, bestOptions), mDesiredWidth, mDesiredHeight);
    }

    private static BitmapFactory.Options getBestOptions(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        mDesiredWidth = getResizedDimension(i, i2, i3, i4);
        mDesiredHeight = getResizedDimension(i2, i, i4, i3);
        options.inSampleSize = calculateBestInSampleSize(i3, i4, mDesiredWidth, mDesiredHeight);
        options.inJustDecodeBounds = false;
        return options;
    }

    private static int calculateBestInSampleSize(int i, int i2, int i3, int i4) {
        double min = Math.min(i / i3, i2 / i4);
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (f2 > min) {
                return (int) f;
            }
            f = f2;
        }
    }

    private static Bitmap createScaleBitmap(Bitmap bitmap, int i, int i2) {
        if (bitmap == null || (bitmap.getWidth() <= i && bitmap.getHeight() <= i2)) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i, i2, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    public static boolean canUseForInBitmap(Bitmap bitmap, BitmapFactory.Options options) {
        return Build.VERSION.SDK_INT >= 19 ? ((options.outWidth / options.inSampleSize) * (options.outHeight / options.inSampleSize)) * getBytesPerPixel(bitmap.getConfig()) <= bitmap.getAllocationByteCount() : bitmap.getWidth() == options.outWidth && bitmap.getHeight() == options.outHeight && options.inSampleSize == 1;
    }

    public static int getBytesPerPixel(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888) {
            return 4;
        }
        if (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444) {
            return 2;
        }
        return config == Bitmap.Config.ALPHA_8 ? 1 : 1;
    }
}
