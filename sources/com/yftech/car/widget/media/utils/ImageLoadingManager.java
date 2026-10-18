package com.yftech.car.widget.media.utils;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.LruCache;
import android.view.View;
import android.widget.ImageView;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.widget.media.entity.MediaMetadataReturn;
import com.yftech.car.widget.media.list.holder.BaseFileHolder;
import com.yftech.car.widget.media.music.util.MusicUtils;
import com.yftech.car.widget.media.utils.ImageLoadingManager;
import com.yftech.car.widget.media.video.util.VideoBitmapUtil;
import com.yftech.car.widget.media.view.MediaImageView;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ImageLoadingManager {
    public static final int CUSTOM_LOAD_IMAGE = 1;
    public static final int CUSTOM_LOAD_MUSIC = 4;
    public static final int CUSTOM_LOAD_VIDEO = 2;
    private static final String TAG = "ImageLoadingManager";
    private static ImageLoadingManager mImageLoadingManager;
    private int mCustomLoadFlags = 1;
    private CustomLoadingImage mCustomLoadingImage;
    private LruCache<String, MediaMetadataReturn> mLruCache;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface CustomLoadingImage {
        void onLoadingImage(ImageView imageView, String str, long j, Drawable drawable, OnLoadingImageListener onLoadingImageListener);
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnLoadingImageListener {
        void onError(long j, int i);

        void onLoadFinish(long j);

        void onLoadStart(long j);

        void onLoading(long j, int i, int i2);
    }

    public static ImageLoadingManager getInstance() {
        if (mImageLoadingManager == null) {
            synchronized (ImageLoadingManager.class) {
                if (mImageLoadingManager == null) {
                    mImageLoadingManager = new ImageLoadingManager();
                }
            }
        }
        return mImageLoadingManager;
    }

    private void initLruCache() {
        this.mLruCache = new LruCache<String, MediaMetadataReturn>((int) (Runtime.getRuntime().maxMemory() / 4)) { // from class: com.yftech.car.widget.media.utils.ImageLoadingManager.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.util.LruCache
            public int sizeOf(String str, MediaMetadataReturn mediaMetadataReturn) {
                if (mediaMetadataReturn.mBitmap != null) {
                    return mediaMetadataReturn.mBitmap.getHeight() * mediaMetadataReturn.mBitmap.getRowBytes();
                }
                return 16;
            }
        };
    }

    public void clearCache() {
        if (this.mLruCache != null) {
            this.mLruCache.evictAll();
        }
    }

    public void setThreadSize(int i) {
        TaskManager.getInstance().setThreadSize(i);
    }

    public void setCustomLoadingImage(CustomLoadingImage customLoadingImage) {
        this.mCustomLoadingImage = customLoadingImage;
    }

    public void setCustomLoadingImage(CustomLoadingImage customLoadingImage, int i) {
        this.mCustomLoadingImage = customLoadingImage;
        this.mCustomLoadFlags = i;
    }

    public void loadImage(MediaFile mediaFile, ImageView imageView, Drawable drawable, View view, OnLoadingImageListener onLoadingImageListener) {
        if (this.mCustomLoadingImage != null) {
            switch (mediaFile.getType()) {
                case 0:
                    if ((this.mCustomLoadFlags & 4) > 0) {
                        this.mCustomLoadingImage.onLoadingImage(imageView, mediaFile.getData(), mediaFile.getId(), drawable, onLoadingImageListener);
                        return;
                    }
                    break;
                case 1:
                    if ((this.mCustomLoadFlags & 2) > 0) {
                        this.mCustomLoadingImage.onLoadingImage(imageView, mediaFile.getData(), mediaFile.getId(), drawable, onLoadingImageListener);
                        return;
                    }
                    break;
                case 2:
                    if ((this.mCustomLoadFlags & 1) > 0) {
                        this.mCustomLoadingImage.onLoadingImage(imageView, mediaFile.getData(), mediaFile.getId(), drawable, onLoadingImageListener);
                        return;
                    }
                    break;
            }
        }
        if (this.mLruCache == null) {
            initLruCache();
        }
        MediaMetadataReturn mediaMetadataReturn = this.mLruCache.get(mediaFile.getData() + "page");
        if (mediaMetadataReturn != null) {
            if (mediaFile.getDuration() == 0) {
                mediaFile.setDuration(mediaMetadataReturn.mDuration);
            }
            if (mediaMetadataReturn.mBitmap != null) {
                imageView.setImageBitmap(mediaMetadataReturn.mBitmap);
                return;
            } else if (drawable != null) {
                imageView.setImageDrawable(drawable);
                return;
            } else {
                imageView.setImageDrawable(null);
                return;
            }
        }
        MediaMetadataReturn mediaMetadataReturn2 = this.mLruCache.get(mediaFile.getData());
        if (mediaMetadataReturn2.mBitmap != null) {
            imageView.setImageBitmap(mediaMetadataReturn2.mBitmap);
        }
        TaskManager.getInstance().threadRunnable(new ImageRunnable(mediaFile, imageView, drawable, view));
    }

    public void loadImage(BaseFileHolder baseFileHolder, OnLoadingImageListener onLoadingImageListener) {
        if (!baseFileHolder.isValid()) {
            Log.e(TAG, "loadImage: Inconsistency detected. Invalid view holder");
            return;
        }
        MediaFile mediaFile = baseFileHolder.getMediaFile();
        if (mediaFile != null) {
            if (this.mCustomLoadingImage != null) {
                switch (mediaFile.getType()) {
                    case 0:
                        if ((this.mCustomLoadFlags & 4) > 0) {
                            this.mCustomLoadingImage.onLoadingImage(baseFileHolder.getImageView(), mediaFile.getData(), mediaFile.getId(), baseFileHolder.getImageDrawable(), onLoadingImageListener);
                            return;
                        }
                        break;
                    case 1:
                        if ((this.mCustomLoadFlags & 2) > 0) {
                            this.mCustomLoadingImage.onLoadingImage(baseFileHolder.getImageView(), mediaFile.getData(), mediaFile.getId(), baseFileHolder.getImageDrawable(), onLoadingImageListener);
                            return;
                        }
                        break;
                    case 2:
                        if ((this.mCustomLoadFlags & 1) > 0) {
                            this.mCustomLoadingImage.onLoadingImage(baseFileHolder.getImageView(), mediaFile.getData(), mediaFile.getId(), baseFileHolder.getImageDrawable(), onLoadingImageListener);
                            return;
                        }
                        break;
                }
            }
            if (this.mLruCache == null) {
                initLruCache();
            }
            MediaMetadataReturn mediaMetadataReturn = this.mLruCache.get(mediaFile.getData());
            if (mediaMetadataReturn != null) {
                if (mediaFile.getDuration() == 0) {
                    mediaFile.setDuration(mediaMetadataReturn.mDuration);
                }
                if (mediaMetadataReturn.mBitmap != null) {
                    baseFileHolder.setImageBitmap(mediaMetadataReturn.mBitmap);
                } else {
                    baseFileHolder.setFailedResDrawable();
                }
                baseFileHolder.setImageLoadingStatus(false);
                return;
            }
            baseFileHolder.setImageDrawable(baseFileHolder.getImageDrawable());
            baseFileHolder.setImageLoadingStatus(true);
            TaskManager.getInstance().threadRunnable(new ImageRunnable(baseFileHolder, mediaFile));
        }
    }

    public void loadImage(MediaFile mediaFile, MediaImageView mediaImageView, View view) {
        if (this.mLruCache == null) {
            initLruCache();
        }
        MediaMetadataReturn mediaMetadataReturn = this.mLruCache.get(mediaFile.getData());
        if (mediaMetadataReturn != null) {
            if (mediaFile.getDuration() == 0) {
                mediaFile.setDuration(mediaMetadataReturn.mDuration);
            }
            if (mediaMetadataReturn.mBitmap != null) {
                mediaImageView.setImageBitmap(mediaMetadataReturn.mBitmap);
                return;
            } else {
                mediaImageView.setImageDrawable(mediaImageView.getImageDrawable());
                return;
            }
        }
        mediaImageView.setImageDrawable(mediaImageView.getImageDrawable());
        TaskManager.getInstance().threadRunnable(new ImageRunnable(mediaFile, mediaImageView, view));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class ImageRunnable implements Runnable {
        private final MediaFile file;
        private final long id;
        private boolean isLoadHigh;
        private final Drawable mDrawable;
        private final ImageView mImageView;
        private final View mLayout;
        private BaseFileHolder mMediaFileHolder;
        private final MediaMetadataReturn mMediaMetadataReturn;
        private final String path;
        private final int resId;

        /* JADX WARN: Multi-variable type inference failed */
        private ImageRunnable(MediaFile mediaFile, MediaImageView mediaImageView, View view) {
            this.mMediaMetadataReturn = new MediaMetadataReturn();
            this.isLoadHigh = false;
            this.id = mediaFile.getId();
            this.resId = -1;
            this.file = mediaFile;
            this.mImageView = mediaImageView;
            this.mLayout = view;
            this.mDrawable = mediaImageView.getImageDrawable();
            this.isLoadHigh = false;
            this.path = mediaFile.getData();
        }

        private ImageRunnable(MediaFile mediaFile, ImageView imageView, Drawable drawable, View view) {
            this.mMediaMetadataReturn = new MediaMetadataReturn();
            this.isLoadHigh = false;
            this.id = mediaFile.getId();
            this.resId = -1;
            this.file = mediaFile;
            this.mImageView = imageView;
            this.mLayout = view;
            this.mDrawable = drawable;
            this.isLoadHigh = true;
            this.path = mediaFile.getData();
        }

        public ImageRunnable(BaseFileHolder baseFileHolder, MediaFile mediaFile) {
            this.mMediaMetadataReturn = new MediaMetadataReturn();
            this.isLoadHigh = false;
            this.id = mediaFile.getId();
            this.resId = -1;
            this.file = mediaFile;
            this.mImageView = null;
            this.mDrawable = baseFileHolder.getImageDrawable();
            this.mLayout = baseFileHolder.itemView;
            this.mMediaFileHolder = baseFileHolder;
            this.path = mediaFile.getData();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mMediaMetadataReturn.mBitmap != null && !this.mMediaMetadataReturn.mBitmap.isRecycled()) {
                this.mMediaMetadataReturn.mBitmap.recycle();
                this.mMediaMetadataReturn.mBitmap = null;
            }
            switch (this.file.getType()) {
                case 0:
                    MediaMetadataReturn embeddedPictureAlbum = MusicUtils.getEmbeddedPictureAlbum(this.file.getData());
                    this.mMediaMetadataReturn.mBitmap = embeddedPictureAlbum.mBitmap;
                    this.mMediaMetadataReturn.mDuration = embeddedPictureAlbum.mDuration;
                    break;
                case 1:
                    MediaMetadataReturn loadVideoReturn = VideoBitmapUtil.loadVideoReturn(this.file.getData(), 100L);
                    this.mMediaMetadataReturn.mBitmap = loadVideoReturn.mBitmap;
                    this.mMediaMetadataReturn.mDuration = loadVideoReturn.mDuration;
                    break;
                case 2:
                    if (this.isLoadHigh) {
                        this.mMediaMetadataReturn.mBitmap = ImageBitmapUtil.getImageBitmap(this.file.getData(), this.mLayout.getResources().getDisplayMetrics().widthPixels * 2, this.mLayout.getResources().getDisplayMetrics().heightPixels * 2);
                        break;
                    } else {
                        this.mMediaMetadataReturn.mBitmap = ImageBitmapUtil.getImageBitmap(this.file.getData(), this.mLayout.getWidth(), this.mLayout.getHeight());
                        break;
                    }
                default:
                    Log.e(ImageLoadingManager.TAG, "run: unknown type ==" + this.file.getType());
                    return;
            }
            if (this.file.getType() != 2) {
                int width = this.mLayout.getHeight() > this.mLayout.getWidth() ? this.mLayout.getWidth() : this.mLayout.getHeight();
                if (this.mMediaMetadataReturn.mBitmap != null && (this.mMediaMetadataReturn.mBitmap.getHeight() > width || this.mMediaMetadataReturn.mBitmap.getWidth() > width)) {
                    this.mMediaMetadataReturn.mBitmap = MusicUtils.compress(width, width, this.mMediaMetadataReturn.mBitmap);
                }
            }
            if (this.resId != -1) {
                ImageLoadingManager.this.mLruCache.put(this.path + "page", this.mMediaMetadataReturn);
            } else {
                ImageLoadingManager.this.mLruCache.put(this.path, this.mMediaMetadataReturn);
            }
            TaskManager.getInstance().ui(new Runnable() { // from class: com.yftech.car.widget.media.utils.-$$Lambda$ImageLoadingManager$ImageRunnable$rX7TAAmxsHMwRm69MTT9vB7DV1s
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoadingManager.ImageRunnable.lambda$run$0(ImageLoadingManager.ImageRunnable.this);
                }
            });
        }

        public static /* synthetic */ void lambda$run$0(ImageRunnable imageRunnable) {
            if (imageRunnable.path != null) {
                if (imageRunnable.mImageView != null) {
                    MediaFile mediaFile = (MediaFile) imageRunnable.mLayout.getTag();
                    if (mediaFile == null || !imageRunnable.path.equals(mediaFile.getData())) {
                        return;
                    }
                    if (mediaFile.getDuration() == 0) {
                        mediaFile.setDuration(imageRunnable.mMediaMetadataReturn.mDuration);
                    }
                    if (imageRunnable.mMediaMetadataReturn.mBitmap != null) {
                        imageRunnable.mImageView.setImageBitmap(imageRunnable.mMediaMetadataReturn.mBitmap);
                        return;
                    } else if (imageRunnable.resId == -1) {
                        imageRunnable.mImageView.setImageDrawable(imageRunnable.mDrawable);
                        return;
                    } else {
                        imageRunnable.mImageView.setImageResource(imageRunnable.resId);
                        return;
                    }
                }
                if (imageRunnable.mMediaFileHolder != null) {
                    if (imageRunnable.mMediaFileHolder.isValid()) {
                        MediaFile mediaFile2 = imageRunnable.mMediaFileHolder.getMediaFile();
                        if (mediaFile2 == null || !imageRunnable.path.equals(mediaFile2.getData())) {
                            return;
                        }
                        if (mediaFile2.getDuration() == 0) {
                            mediaFile2.setDuration(imageRunnable.mMediaMetadataReturn.mDuration);
                        }
                        if (imageRunnable.mMediaMetadataReturn.mBitmap != null) {
                            imageRunnable.mMediaFileHolder.setImageBitmap(imageRunnable.mMediaMetadataReturn.mBitmap);
                        } else if (imageRunnable.resId == -1) {
                            imageRunnable.mMediaFileHolder.setFailedResDrawable();
                        } else {
                            imageRunnable.mMediaFileHolder.setImageResource(imageRunnable.resId);
                        }
                        imageRunnable.mMediaFileHolder.setImageLoadingStatus(false);
                        return;
                    }
                    Log.e(ImageLoadingManager.TAG, "loading: Inconsistency detected. Invalid view holder");
                }
            }
        }
    }
}
