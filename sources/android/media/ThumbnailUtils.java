package android.media;

import android.app.backup.FullBackup;
import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.media.MediaFile;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes.dex */
public class ThumbnailUtils {
    private static final int MAX_NUM_PIXELS_MICRO_THUMBNAIL = 19200;
    private static final int MAX_NUM_PIXELS_THUMBNAIL = 196608;
    private static final int OPTIONS_NONE = 0;
    public static final int OPTIONS_RECYCLE_INPUT = 2;
    private static final int OPTIONS_SCALE_UP = 1;
    private static final String TAG = "ThumbnailUtils";
    public static final int TARGET_SIZE_MICRO_THUMBNAIL = 96;
    public static final int TARGET_SIZE_MINI_THUMBNAIL = 320;
    private static final int UNCONSTRAINED = -1;

    /* JADX WARN: Can't wrap try/catch for region: R(6:(7:11|(1:77)(2:15|(1:17))|18|(8:27|28|30|31|(5:38|39|40|21|(2:23|24)(1:26))|45|46|47)|20|21|(0)(0))|18|(0)|20|21|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00d1, code lost:
    
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00d2, code lost:
    
        android.util.Log.e(android.media.ThumbnailUtils.TAG, "", r11);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.media.ThumbnailUtils$1] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap createImageThumbnail(String str, int i) {
        Bitmap bitmap;
        FileInputStream fileInputStream;
        Bitmap bitmap2;
        FileDescriptor fd;
        BitmapFactory.Options options;
        ?? r2 = i == 1;
        int i2 = r2 != false ? 320 : 96;
        int i3 = r2 != false ? 196608 : MAX_NUM_PIXELS_MICRO_THUMBNAIL;
        ?? r6 = 0;
        FileInputStream fileInputStream2 = null;
        SizedThumbnailBitmap sizedThumbnailBitmap = new SizedThumbnailBitmap();
        MediaFile.MediaFileType fileType = MediaFile.getFileType(str);
        try {
            if (fileType != null) {
                if (fileType.fileType == 31 || MediaFile.isRawImageFileType(fileType.fileType)) {
                    createThumbnailFromEXIF(str, i2, i3, sizedThumbnailBitmap);
                    bitmap = sizedThumbnailBitmap.mBitmap;
                } else if (fileType.fileType == 37) {
                    bitmap = createThumbnailFromMetadataRetriever(str, i2, i3);
                }
                if (bitmap == null) {
                    try {
                        fileInputStream = new FileInputStream(str);
                    } catch (IOException e) {
                        e = e;
                    } catch (OutOfMemoryError e2) {
                        e = e2;
                    }
                    try {
                        fd = fileInputStream.getFD();
                        options = new BitmapFactory.Options();
                        options.inSampleSize = 1;
                        options.inJustDecodeBounds = true;
                        BitmapFactory.decodeFileDescriptor(fd, null, options);
                    } catch (IOException e3) {
                        e = e3;
                        fileInputStream2 = fileInputStream;
                        Log.e(TAG, "", e);
                        if (fileInputStream2 != null) {
                            fileInputStream2.close();
                        }
                        bitmap2 = bitmap;
                        if (i == 3) {
                        }
                    } catch (OutOfMemoryError e4) {
                        e = e4;
                        r6 = fileInputStream;
                        Log.e(TAG, "Unable to decode file " + str + ". OutOfMemoryError.", e);
                        if (r6 != 0) {
                            r6.close();
                        }
                        bitmap2 = bitmap;
                        if (i == 3) {
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e5) {
                                Log.e(TAG, "", e5);
                            }
                        }
                        throw th;
                    }
                    if (!options.mCancel && options.outWidth != -1 && options.outHeight != -1) {
                        options.inSampleSize = computeSampleSize(options, i2, i3);
                        options.inJustDecodeBounds = false;
                        options.inDither = false;
                        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                        bitmap2 = BitmapFactory.decodeFileDescriptor(fd, null, options);
                        try {
                            fileInputStream.close();
                        } catch (IOException e6) {
                            Log.e(TAG, "", e6);
                        }
                        return i == 3 ? extractThumbnail(bitmap2, 96, 96, 2) : bitmap2;
                    }
                    try {
                        fileInputStream.close();
                    } catch (IOException e7) {
                        Log.e(TAG, "", e7);
                    }
                    return null;
                }
                bitmap2 = bitmap;
                if (i == 3) {
                }
            }
            if (bitmap == null) {
            }
            bitmap2 = bitmap;
            if (i == 3) {
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        bitmap = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap createVideoThumbnail(String str, int i) {
        Bitmap bitmap;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(str);
                bitmap = mediaMetadataRetriever.getFrameAtTime(-1L);
                try {
                    mediaMetadataRetriever.release();
                } catch (RuntimeException unused) {
                }
            } catch (RuntimeException unused2) {
                bitmap = null;
                if (bitmap == null) {
                }
            }
        } catch (IllegalArgumentException | RuntimeException unused3) {
            mediaMetadataRetriever.release();
            bitmap = null;
            if (bitmap == null) {
            }
        } catch (Throwable th) {
            try {
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused4) {
            }
            throw th;
        }
        if (bitmap == null) {
            return null;
        }
        if (i != 1) {
            return i == 3 ? extractThumbnail(bitmap, 96, 96, 2) : bitmap;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int max = Math.max(width, height);
        if (max <= 512) {
            return bitmap;
        }
        float f = 512.0f / max;
        return Bitmap.createScaledBitmap(bitmap, Math.round(width * f), Math.round(f * height), true);
    }

    public static Bitmap extractThumbnail(Bitmap bitmap, int i, int i2) {
        return extractThumbnail(bitmap, i, i2, 0);
    }

    public static Bitmap extractThumbnail(Bitmap bitmap, int i, int i2, int i3) {
        float height;
        if (bitmap == null) {
            return null;
        }
        if (bitmap.getWidth() < bitmap.getHeight()) {
            height = i / bitmap.getWidth();
        } else {
            height = i2 / bitmap.getHeight();
        }
        Matrix matrix = new Matrix();
        matrix.setScale(height, height);
        return transform(matrix, bitmap, i, i2, i3 | 1);
    }

    private static int computeSampleSize(BitmapFactory.Options options, int i, int i2) {
        int computeInitialSampleSize = computeInitialSampleSize(options, i, i2);
        if (computeInitialSampleSize > 8) {
            return 8 * ((computeInitialSampleSize + 7) / 8);
        }
        int i3 = 1;
        while (i3 < computeInitialSampleSize) {
            i3 <<= 1;
        }
        return i3;
    }

    private static int computeInitialSampleSize(BitmapFactory.Options options, int i, int i2) {
        int min;
        double d = options.outWidth;
        double d2 = options.outHeight;
        int ceil = i2 == -1 ? 1 : (int) Math.ceil(Math.sqrt((d * d2) / i2));
        if (i == -1) {
            min = 128;
        } else {
            double d3 = i;
            min = (int) Math.min(Math.floor(d / d3), Math.floor(d2 / d3));
        }
        if (min < ceil) {
            return ceil;
        }
        if (i2 == -1 && i == -1) {
            return 1;
        }
        return i == -1 ? ceil : min;
    }

    private static Bitmap makeBitmap(int i, int i2, Uri uri, ContentResolver contentResolver, ParcelFileDescriptor parcelFileDescriptor, BitmapFactory.Options options) {
        if (parcelFileDescriptor == null) {
            try {
                parcelFileDescriptor = makeInputStream(uri, contentResolver);
            } catch (OutOfMemoryError e) {
                Log.e(TAG, "Got oom exception ", e);
                return null;
            } finally {
                closeSilently(parcelFileDescriptor);
            }
        }
        if (parcelFileDescriptor == null) {
            return null;
        }
        if (options == null) {
            options = new BitmapFactory.Options();
        }
        FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
        options.inSampleSize = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        if (!options.mCancel && options.outWidth != -1 && options.outHeight != -1) {
            options.inSampleSize = computeSampleSize(options, i, i2);
            options.inJustDecodeBounds = false;
            options.inDither = false;
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return BitmapFactory.decodeFileDescriptor(fileDescriptor, null, options);
        }
        return null;
    }

    private static void closeSilently(ParcelFileDescriptor parcelFileDescriptor) {
        if (parcelFileDescriptor == null) {
            return;
        }
        try {
            parcelFileDescriptor.close();
        } catch (Throwable unused) {
        }
    }

    private static ParcelFileDescriptor makeInputStream(Uri uri, ContentResolver contentResolver) {
        try {
            return contentResolver.openFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
        } catch (IOException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Bitmap transform(Matrix matrix, Bitmap bitmap, int i, int i2, int i3) {
        Matrix matrix2;
        Bitmap createBitmap;
        Bitmap createBitmap2;
        Matrix matrix3 = matrix;
        boolean z = (i3 & 1) != 0;
        boolean z2 = (i3 & 2) != 0;
        int width = bitmap.getWidth() - i;
        int height = bitmap.getHeight() - i2;
        if (!z && (width < 0 || height < 0)) {
            Bitmap createBitmap3 = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap3);
            int max = Math.max(0, width / 2);
            int max2 = Math.max(0, height / 2);
            Rect rect = new Rect(max, max2, Math.min(i, bitmap.getWidth()) + max, Math.min(i2, bitmap.getHeight()) + max2);
            int width2 = (i - rect.width()) / 2;
            int height2 = (i2 - rect.height()) / 2;
            canvas.drawBitmap(bitmap, rect, new Rect(width2, height2, i - width2, i2 - height2), (Paint) null);
            if (z2) {
                bitmap.recycle();
            }
            canvas.setBitmap(null);
            return createBitmap3;
        }
        float width3 = bitmap.getWidth();
        float height3 = bitmap.getHeight();
        float f = i;
        float f2 = i2;
        if (width3 / height3 > f / f2) {
            float f3 = f2 / height3;
            if (f3 < 0.9f || f3 > 1.0f) {
                matrix.setScale(f3, f3);
            } else {
                matrix3 = null;
            }
        } else {
            float f4 = f / width3;
            if (f4 < 0.9f || f4 > 1.0f) {
                matrix.setScale(f4, f4);
            } else {
                matrix2 = null;
                createBitmap = matrix2 == null ? Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix2, true) : bitmap;
                if (z2 && createBitmap != bitmap) {
                    bitmap.recycle();
                }
                createBitmap2 = Bitmap.createBitmap(createBitmap, Math.max(0, createBitmap.getWidth() - i) / 2, Math.max(0, createBitmap.getHeight() - i2) / 2, i, i2);
                if (createBitmap2 != createBitmap && (z2 || createBitmap != bitmap)) {
                    createBitmap.recycle();
                }
                return createBitmap2;
            }
        }
        matrix2 = matrix3;
        if (matrix2 == null) {
        }
        if (z2) {
            bitmap.recycle();
        }
        createBitmap2 = Bitmap.createBitmap(createBitmap, Math.max(0, createBitmap.getWidth() - i) / 2, Math.max(0, createBitmap.getHeight() - i2) / 2, i, i2);
        if (createBitmap2 != createBitmap) {
            createBitmap.recycle();
        }
        return createBitmap2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SizedThumbnailBitmap {
        public Bitmap mBitmap;
        public byte[] mThumbnailData;
        public int mThumbnailHeight;
        public int mThumbnailWidth;

        private SizedThumbnailBitmap() {
        }
    }

    private static void createThumbnailFromEXIF(String str, int i, int i2, SizedThumbnailBitmap sizedThumbnailBitmap) {
        int i3;
        if (str == null) {
            return;
        }
        byte[] bArr = null;
        try {
            bArr = new ExifInterface(str).getThumbnail();
        } catch (IOException e) {
            Log.w(TAG, e);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        if (bArr != null) {
            options2.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options2);
            options2.inSampleSize = computeSampleSize(options2, i, i2);
            i3 = options2.outWidth / options2.inSampleSize;
        } else {
            i3 = 0;
        }
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = computeSampleSize(options, i, i2);
        int i4 = options.outWidth / options.inSampleSize;
        if (bArr != null && i3 >= i4) {
            int i5 = options2.outWidth;
            int i6 = options2.outHeight;
            options2.inJustDecodeBounds = false;
            sizedThumbnailBitmap.mBitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options2);
            if (sizedThumbnailBitmap.mBitmap != null) {
                sizedThumbnailBitmap.mThumbnailData = bArr;
                sizedThumbnailBitmap.mThumbnailWidth = i5;
                sizedThumbnailBitmap.mThumbnailHeight = i6;
                return;
            }
            return;
        }
        options.inJustDecodeBounds = false;
        sizedThumbnailBitmap.mBitmap = BitmapFactory.decodeFile(str, options);
    }

    private static Bitmap createThumbnailFromMetadataRetriever(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            mediaMetadataRetriever.setDataSource(str);
            MediaMetadataRetriever.BitmapParams bitmapParams = new MediaMetadataRetriever.BitmapParams();
            bitmapParams.setPreferredConfig(Bitmap.Config.ARGB_8888);
            return mediaMetadataRetriever.getThumbnailImageAtIndex(-1, bitmapParams, i, i2);
        } catch (RuntimeException unused) {
            return null;
        } finally {
            mediaMetadataRetriever.release();
        }
    }
}
