package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.ColorSpace;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.facebook.common.internal.Preconditions;
import com.facebook.common.logging.FLog;
import com.facebook.common.references.CloseableReference;
import com.facebook.common.streams.LimitedInputStream;
import com.facebook.common.streams.TailAppendingInputStream;
import com.facebook.imagepipeline.bitmaps.SimpleBitmapReleaser;
import com.facebook.imagepipeline.image.EncodedImage;
import com.facebook.imagepipeline.memory.BitmapPool;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

@ThreadSafe
@TargetApi(11)
/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class DefaultDecoder implements PlatformDecoder {
    private static final int DECODE_BUFFER_SIZE = 16384;
    private final BitmapPool mBitmapPool;

    @VisibleForTesting
    final Pools.SynchronizedPool<ByteBuffer> mDecodeBuffers;

    @Nullable
    private final PreverificationHelper mPreverificationHelper;
    private static final Class<?> TAG = DefaultDecoder.class;
    private static final byte[] EOI_TAIL = {-1, -39};

    public abstract int getBitmapSize(int i, int i2, BitmapFactory.Options options);

    public DefaultDecoder(BitmapPool bitmapPool, int i, Pools.SynchronizedPool synchronizedPool) {
        this.mPreverificationHelper = Build.VERSION.SDK_INT >= 26 ? new PreverificationHelper() : null;
        this.mBitmapPool = bitmapPool;
        this.mDecodeBuffers = synchronizedPool;
        for (int i2 = 0; i2 < i; i2++) {
            this.mDecodeBuffers.release(ByteBuffer.allocate(16384));
        }
    }

    @Override // com.facebook.imagepipeline.platform.PlatformDecoder
    public CloseableReference<Bitmap> decodeFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config, @Nullable Rect rect) {
        return decodeFromEncodedImageWithColorSpace(encodedImage, config, rect, null);
    }

    @Override // com.facebook.imagepipeline.platform.PlatformDecoder
    public CloseableReference<Bitmap> decodeJPEGFromEncodedImage(EncodedImage encodedImage, Bitmap.Config config, @Nullable Rect rect, int i) {
        return decodeJPEGFromEncodedImageWithColorSpace(encodedImage, config, rect, i, null);
    }

    @Override // com.facebook.imagepipeline.platform.PlatformDecoder
    public CloseableReference<Bitmap> decodeFromEncodedImageWithColorSpace(EncodedImage encodedImage, Bitmap.Config config, @Nullable Rect rect, @Nullable ColorSpace colorSpace) {
        BitmapFactory.Options decodeOptionsForStream = getDecodeOptionsForStream(encodedImage, config);
        boolean z = decodeOptionsForStream.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return decodeFromStream(encodedImage.getInputStream(), decodeOptionsForStream, rect, colorSpace);
        } catch (RuntimeException e) {
            if (z) {
                return decodeFromEncodedImageWithColorSpace(encodedImage, Bitmap.Config.ARGB_8888, rect, colorSpace);
            }
            throw e;
        }
    }

    @Override // com.facebook.imagepipeline.platform.PlatformDecoder
    public CloseableReference<Bitmap> decodeJPEGFromEncodedImageWithColorSpace(EncodedImage encodedImage, Bitmap.Config config, @Nullable Rect rect, int i, @Nullable ColorSpace colorSpace) {
        boolean isCompleteAt = encodedImage.isCompleteAt(i);
        BitmapFactory.Options decodeOptionsForStream = getDecodeOptionsForStream(encodedImage, config);
        InputStream inputStream = encodedImage.getInputStream();
        Preconditions.checkNotNull(inputStream);
        if (encodedImage.getSize() > i) {
            inputStream = new LimitedInputStream(inputStream, i);
        }
        InputStream tailAppendingInputStream = !isCompleteAt ? new TailAppendingInputStream(inputStream, EOI_TAIL) : inputStream;
        boolean z = decodeOptionsForStream.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            try {
                CloseableReference<Bitmap> decodeFromStream = decodeFromStream(tailAppendingInputStream, decodeOptionsForStream, rect, colorSpace);
                try {
                    tailAppendingInputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return decodeFromStream;
            } catch (RuntimeException e2) {
                if (z) {
                    CloseableReference<Bitmap> decodeJPEGFromEncodedImageWithColorSpace = decodeJPEGFromEncodedImageWithColorSpace(encodedImage, Bitmap.Config.ARGB_8888, rect, i, colorSpace);
                    try {
                        tailAppendingInputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    return decodeJPEGFromEncodedImageWithColorSpace;
                }
                throw e2;
            }
        } catch (Throwable th) {
            try {
                tailAppendingInputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            throw th;
        }
    }

    protected CloseableReference<Bitmap> decodeStaticImageFromStream(InputStream inputStream, BitmapFactory.Options options, @Nullable Rect rect) {
        return decodeFromStream(inputStream, options, rect, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b1 A[Catch: all -> 0x00d4, RuntimeException -> 0x00d6, IllegalArgumentException -> 0x00df, TRY_LEAVE, TryCatch #8 {IllegalArgumentException -> 0x00df, RuntimeException -> 0x00d6, blocks: (B:24:0x006f, B:34:0x008e, B:36:0x00b1, B:49:0x00a3, B:53:0x00aa, B:54:0x00ad), top: B:23:0x006f, outer: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00bc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00aa A[Catch: all -> 0x00d4, RuntimeException -> 0x00d6, IllegalArgumentException -> 0x00df, TryCatch #8 {IllegalArgumentException -> 0x00df, RuntimeException -> 0x00d6, blocks: (B:24:0x006f, B:34:0x008e, B:36:0x00b1, B:49:0x00a3, B:53:0x00aa, B:54:0x00ad), top: B:23:0x006f, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private CloseableReference<Bitmap> decodeFromStream(InputStream inputStream, BitmapFactory.Options options, @Nullable Rect rect, @Nullable ColorSpace colorSpace) {
        Bitmap bitmap;
        Bitmap bitmap2;
        BitmapRegionDecoder bitmapRegionDecoder;
        Preconditions.checkNotNull(inputStream);
        int i = options.outWidth;
        int i2 = options.outHeight;
        if (rect != null) {
            i = rect.width() / options.inSampleSize;
            i2 = rect.height() / options.inSampleSize;
        }
        boolean z = Build.VERSION.SDK_INT >= 26 && this.mPreverificationHelper != null && this.mPreverificationHelper.shouldUseHardwareBitmapConfig(options.inPreferredConfig);
        if (rect == null && z) {
            options.inMutable = false;
            bitmap = null;
        } else {
            if (rect != null && z) {
                options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            }
            bitmap = this.mBitmapPool.get(getBitmapSize(i, i2, options));
            if (bitmap == null) {
                throw new NullPointerException("BitmapPool.get returned null");
            }
        }
        options.inBitmap = bitmap;
        if (Build.VERSION.SDK_INT >= 26) {
            if (colorSpace == null) {
                colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            }
            options.inPreferredColorSpace = colorSpace;
        }
        ByteBuffer acquire = this.mDecodeBuffers.acquire();
        if (acquire == null) {
            acquire = ByteBuffer.allocate(16384);
        }
        try {
            try {
                options.inTempStorage = acquire.array();
                if (Build.VERSION.SDK_INT >= 19 && rect != null && bitmap != null) {
                    try {
                        bitmap.reconfigure(i, i2, options.inPreferredConfig);
                        bitmapRegionDecoder = BitmapRegionDecoder.newInstance(inputStream, true);
                        try {
                            try {
                                bitmap2 = bitmapRegionDecoder.decodeRegion(rect, options);
                                if (bitmapRegionDecoder != null) {
                                    bitmapRegionDecoder.recycle();
                                }
                            } catch (IOException unused) {
                                FLog.e(TAG, "Could not decode region %s, decoding full bitmap instead.", rect);
                                if (bitmapRegionDecoder != null) {
                                    bitmapRegionDecoder.recycle();
                                }
                                bitmap2 = null;
                                if (bitmap2 == null) {
                                }
                                this.mDecodeBuffers.release(acquire);
                                if (bitmap == null) {
                                }
                                return CloseableReference.of(bitmap2, this.mBitmapPool);
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (bitmapRegionDecoder != null) {
                                bitmapRegionDecoder.recycle();
                            }
                            throw th;
                        }
                    } catch (IOException unused2) {
                        bitmapRegionDecoder = null;
                    } catch (Throwable th2) {
                        th = th2;
                        bitmapRegionDecoder = null;
                        if (bitmapRegionDecoder != null) {
                        }
                        throw th;
                    }
                    if (bitmap2 == null) {
                        bitmap2 = BitmapFactory.decodeStream(inputStream, null, options);
                    }
                    this.mDecodeBuffers.release(acquire);
                    if (bitmap == null && bitmap != bitmap2) {
                        this.mBitmapPool.release(bitmap);
                        bitmap2.recycle();
                        throw new IllegalStateException();
                    }
                    return CloseableReference.of(bitmap2, this.mBitmapPool);
                }
                bitmap2 = null;
                if (bitmap2 == null) {
                }
                this.mDecodeBuffers.release(acquire);
                if (bitmap == null) {
                }
                return CloseableReference.of(bitmap2, this.mBitmapPool);
            } catch (Throwable th3) {
                this.mDecodeBuffers.release(acquire);
                throw th3;
            }
        } catch (IllegalArgumentException e) {
            if (bitmap != null) {
                this.mBitmapPool.release(bitmap);
            }
            try {
                inputStream.reset();
                Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                if (decodeStream == null) {
                    throw e;
                }
                CloseableReference<Bitmap> of = CloseableReference.of(decodeStream, SimpleBitmapReleaser.getInstance());
                this.mDecodeBuffers.release(acquire);
                return of;
            } catch (IOException unused3) {
                throw e;
            }
        } catch (RuntimeException e2) {
            if (bitmap != null) {
                this.mBitmapPool.release(bitmap);
            }
            throw e2;
        }
    }

    private static BitmapFactory.Options getDecodeOptionsForStream(EncodedImage encodedImage, Bitmap.Config config) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = encodedImage.getSampleSize();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(encodedImage.getInputStream(), null, options);
        if (options.outWidth == -1 || options.outHeight == -1) {
            throw new IllegalArgumentException();
        }
        options.inJustDecodeBounds = false;
        options.inDither = true;
        options.inPreferredConfig = config;
        options.inMutable = true;
        return options;
    }
}
