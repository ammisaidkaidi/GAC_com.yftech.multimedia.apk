package com.yftech.car.widget.media.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.Log;
import com.yftech.car.media.data.util.MusicUtils;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ImageBitmapUtil {
    private static final String TAG = "ImageBitmapUtil";

    public static Bitmap getImageBitmap(String str, int i, int i2) {
        Bitmap decodeFile = BitmapFactory.decodeFile(str, new BitmapFactory.Options());
        if (decodeFile == null) {
            return decodeFile;
        }
        if (decodeFile.getHeight() <= i2 && decodeFile.getWidth() <= i) {
            return decodeFile;
        }
        Log.d(TAG, "getImageBitmap: compress width==" + i + ",height==" + i2 + ",bitmap.getWidth()==" + decodeFile.getWidth() + ",bitmap.getHeight()==" + decodeFile.getHeight());
        return MusicUtils.compress(i, i2, decodeFile);
    }

    public static Bitmap convertToBitmap(String str, int i, int i2) {
        float f;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        float f2 = 0.0f;
        if (i3 > i || i4 > i2) {
            f2 = i3 / i;
            f = i4 / i2;
        } else {
            f = 0.0f;
        }
        options.inSampleSize = (int) Math.max(f2, f);
        options.inJustDecodeBounds = false;
        return Bitmap.createScaledBitmap(BitmapFactory.decodeFile(str, options), options.outWidth, options.outHeight, true);
    }

    public static Bitmap scaleBitmap(Bitmap bitmap, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (i > width && i2 > height) {
            return createRepeaterHeight(i2, createRepeaterWidth(i, bitmap));
        }
        if (i > width) {
            return createRepeaterWidth(i, bitmap);
        }
        if (i2 > height) {
            return createRepeaterHeight(i2, bitmap);
        }
        float f = i;
        float f2 = i + i2;
        float f3 = f / f2;
        float f4 = i2;
        float f5 = width;
        float f6 = height + width;
        float f7 = f5 / f6;
        float f8 = height;
        if (f8 / f6 > f4 / f2) {
            int i7 = (int) ((f4 / f) * f5);
            i4 = i7;
            i3 = width;
            i6 = (height - i7) / 2;
            i5 = 0;
        } else if (f7 > f3) {
            int i8 = (int) ((f / f4) * f8);
            i3 = i8;
            i5 = (width - i8) / 2;
            i4 = height;
            i6 = 0;
        } else {
            i3 = width;
            i4 = height;
            i5 = 0;
            i6 = 0;
        }
        Matrix matrix = new Matrix();
        matrix.postScale(f / i3, f4 / i4);
        return Bitmap.createBitmap(bitmap, i5, i6, i3, i4, matrix, false);
    }

    private static Bitmap createRepeaterWidth(int i, Bitmap bitmap) {
        int width = ((bitmap.getWidth() + i) - 1) / bitmap.getWidth();
        Bitmap createBitmap = Bitmap.createBitmap(i, bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        for (int i2 = 0; i2 < width; i2++) {
            canvas.drawBitmap(bitmap, bitmap.getWidth() * i2, 0.0f, (Paint) null);
        }
        return createBitmap;
    }

    private static Bitmap createRepeaterHeight(int i, Bitmap bitmap) {
        int height = ((bitmap.getHeight() + i) - 1) / bitmap.getHeight();
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        for (int i2 = 0; i2 < height; i2++) {
            canvas.drawBitmap(bitmap, 0.0f, bitmap.getHeight() * i2, (Paint) null);
        }
        return createBitmap;
    }
}
