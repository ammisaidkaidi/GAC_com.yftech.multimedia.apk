package com.yftech.car.widget.media.music.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaMetadataRetriever;
import android.util.Log;
import com.yftech.car.widget.media.entity.MediaMetadataReturn;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class MusicUtils {
    private static final String TAG = "MusicUtils";

    public static Bitmap getEmbeddedPictureAlbum(String str, int i, int i2) {
        int i3;
        int i4 = 261;
        if (i == 0 || i2 == 0) {
            Log.e(TAG, "getEmbeddedPictureAlbum: width == 0 || height == 0");
            i3 = 261;
        } else {
            i4 = i + 30;
            i3 = i2 + 30;
        }
        Log.d(TAG, "getEmbeddedPictureAlbum: width==" + i4 + ",height==" + i3 + ",path==" + str);
        MediaMetadataReturn embeddedPictureAlbum = getEmbeddedPictureAlbum(str);
        if (embeddedPictureAlbum.mBitmap == null) {
            return null;
        }
        return compress(i4, i3, embeddedPictureAlbum.mBitmap);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:1|(3:2|3|4)|(3:5|6|(1:8))|(1:11)(2:19|(1:27))|12|13|14|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0076, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
    
        r6.printStackTrace();
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MediaMetadataReturn getEmbeddedPictureAlbum(String str) {
        Exception e;
        byte[] bArr;
        Bitmap copy;
        MediaMetadataReturn mediaMetadataReturn = new MediaMetadataReturn();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(str);
            bArr = mediaMetadataRetriever.getEmbeddedPicture();
        } catch (Exception e2) {
            e = e2;
            bArr = null;
        }
        try {
            if (mediaMetadataRetriever.extractMetadata(9) != null) {
                mediaMetadataReturn.mDuration = Integer.parseInt(r2);
            }
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            if (bArr != null) {
            }
            mediaMetadataRetriever.release();
            return mediaMetadataReturn;
        }
        if (bArr != null) {
            Log.d(TAG, "get cur EmbeddedPicture  is null");
        } else {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            options.inSampleSize = 1;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            options.inJustDecodeBounds = false;
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            mediaMetadataReturn.mBitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (mediaMetadataReturn.mBitmap != null && mediaMetadataReturn.mBitmap.getConfig() == null && (copy = mediaMetadataReturn.mBitmap.copy(Bitmap.Config.RGB_565, false)) != null && copy != mediaMetadataReturn.mBitmap) {
                mediaMetadataReturn.mBitmap.recycle();
                mediaMetadataReturn.mBitmap = copy;
            }
        }
        mediaMetadataRetriever.release();
        return mediaMetadataReturn;
    }

    public static Bitmap compress(int i, int i2, Bitmap bitmap) {
        if (i == 0 || i2 == 0) {
            i = 261;
            i2 = 261;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        double d = (i3 * 1.0d) / i;
        options.inSampleSize = (d > 1.0d || (((double) i4) * 1.0d) / ((double) i2) > 1.0d) ? (int) Math.ceil(Math.max(d, (i4 * 1.0d) / i2)) : 1;
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
    }
}
