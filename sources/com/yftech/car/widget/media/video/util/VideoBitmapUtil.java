package com.yftech.car.widget.media.video.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.util.Log;
import com.yftech.car.widget.media.entity.MediaMetadataReturn;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;

/* loaded from: /home/user/work/dex/classes3.dex */
public class VideoBitmapUtil {
    private static final String TAG = "VideoBitmapUtil";

    public static Bitmap loadVideo(String str) {
        return loadVideo(str, 1000L);
    }

    public static Bitmap loadVideo(String str, long j) {
        return loadVideo(str, j, 2).mBitmap;
    }

    public static MediaMetadataReturn loadVideoReturn(String str, long j) {
        return loadVideo(str, j, 2);
    }

    public static MediaMetadataReturn loadVideo(String str, long j, int i) {
        MediaMetadataReturn mediaMetadataReturn = new MediaMetadataReturn();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(str);
                mediaMetadataReturn.mBitmap = mediaMetadataRetriever.getFrameAtTime(j * 1000, i);
                if (mediaMetadataRetriever.extractMetadata(9) != null) {
                    mediaMetadataReturn.mDuration = Integer.parseInt(r5);
                }
            } catch (Exception e) {
                Log.e(TAG, "loadVideo: exception path==" + str);
                e.printStackTrace();
            }
            return mediaMetadataReturn;
        } finally {
            mediaMetadataRetriever.release();
        }
    }

    public static Bitmap loadVideo(String str, long j, int i, int i2) {
        return compressBitmap(i, i2, loadVideo(str, j));
    }

    public static Bitmap loadVideo(String str, long j, int i, int i2, int i3) {
        return compressBitmap(i, i2, loadVideo(str, j, i3).mBitmap);
    }

    public static Bitmap compressBitmap(int i, int i2, Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        if (i < 16 || i2 < 9) {
            i2 = 9;
            i = 16;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        closeIO(byteArrayOutputStream);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        double d = (i3 * 1.0d) / i;
        options.inSampleSize = (d > 1.0d || (((double) i4) * 1.0d) / ((double) i2) > 1.0d) ? (int) Math.ceil(Math.max(d, (i4 * 1.0d) / i2)) : 1;
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
    }

    private static void closeIO(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
