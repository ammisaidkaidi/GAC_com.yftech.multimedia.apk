package com.media.common.ui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.media.common.util.BaseApplication;
import com.media.common.util.BitmapUtils;
import com.yftech.car.media.music.CarMusicManager;
import com.yftech.car.media.video.util.VideoBitmapUtil;

/* loaded from: /home/user/work/dex/classes3.dex */
public class SyncImageView extends ImageView {
    private final String BUNDLE_HEIGHT;
    private final String BUNDLE_PATH;
    private final String BUNDLE_THUMBDATA;
    private final String BUNDLE_WIDTH;
    private final int TAG_IMAGE_INFORMATION;
    private int error;
    private Handler mHandler;
    private OnMediaInformationCallback onMediaInformationCallback;
    private RequestOptions options;
    private int placeholder;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface OnMediaInformationCallback {
        void onMediaDurationCallback(int i);

        void onMediaImageCallback(String str, byte[] bArr, int i, int i2);
    }

    public SyncImageView(Context context) {
        super(context);
        this.placeholder = R.color.color4DFFFFFF;
        this.error = R.color.transparent;
        this.TAG_IMAGE_INFORMATION = 0;
        this.BUNDLE_WIDTH = "BUNDLE_WIDTH";
        this.BUNDLE_HEIGHT = "BUNDLE_HEIGHT";
        this.BUNDLE_THUMBDATA = "BUNDLE_THUMBDATA";
        this.BUNDLE_PATH = "BUNDLE_PATH";
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.media.common.ui.widget.SyncImageView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 0) {
                    Bundle data = message.getData();
                    byte[] byteArray = data.getByteArray("BUNDLE_THUMBDATA");
                    int i = data.getInt("BUNDLE_WIDTH");
                    int i2 = data.getInt("BUNDLE_HEIGHT");
                    String string = data.getString("BUNDLE_PATH");
                    if (SyncImageView.this.onMediaInformationCallback != null) {
                        SyncImageView.this.onMediaInformationCallback.onMediaImageCallback(string, byteArray, i, i2);
                    } else if (byteArray == null || byteArray.length == 10) {
                        SyncImageView.this.setImageResource(SyncImageView.this.error);
                    } else {
                        Glide.with(SyncImageView.this.getContext()).load(byteArray).apply((BaseRequestOptions<?>) SyncImageView.this.options).into(SyncImageView.this);
                    }
                }
            }
        };
    }

    public SyncImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.placeholder = R.color.color4DFFFFFF;
        this.error = R.color.transparent;
        this.TAG_IMAGE_INFORMATION = 0;
        this.BUNDLE_WIDTH = "BUNDLE_WIDTH";
        this.BUNDLE_HEIGHT = "BUNDLE_HEIGHT";
        this.BUNDLE_THUMBDATA = "BUNDLE_THUMBDATA";
        this.BUNDLE_PATH = "BUNDLE_PATH";
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.media.common.ui.widget.SyncImageView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 0) {
                    Bundle data = message.getData();
                    byte[] byteArray = data.getByteArray("BUNDLE_THUMBDATA");
                    int i = data.getInt("BUNDLE_WIDTH");
                    int i2 = data.getInt("BUNDLE_HEIGHT");
                    String string = data.getString("BUNDLE_PATH");
                    if (SyncImageView.this.onMediaInformationCallback != null) {
                        SyncImageView.this.onMediaInformationCallback.onMediaImageCallback(string, byteArray, i, i2);
                    } else if (byteArray == null || byteArray.length == 10) {
                        SyncImageView.this.setImageResource(SyncImageView.this.error);
                    } else {
                        Glide.with(SyncImageView.this.getContext()).load(byteArray).apply((BaseRequestOptions<?>) SyncImageView.this.options).into(SyncImageView.this);
                    }
                }
            }
        };
        initAttrs(context, attributeSet);
    }

    public SyncImageView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.placeholder = R.color.color4DFFFFFF;
        this.error = R.color.transparent;
        this.TAG_IMAGE_INFORMATION = 0;
        this.BUNDLE_WIDTH = "BUNDLE_WIDTH";
        this.BUNDLE_HEIGHT = "BUNDLE_HEIGHT";
        this.BUNDLE_THUMBDATA = "BUNDLE_THUMBDATA";
        this.BUNDLE_PATH = "BUNDLE_PATH";
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.media.common.ui.widget.SyncImageView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 0) {
                    Bundle data = message.getData();
                    byte[] byteArray = data.getByteArray("BUNDLE_THUMBDATA");
                    int i2 = data.getInt("BUNDLE_WIDTH");
                    int i22 = data.getInt("BUNDLE_HEIGHT");
                    String string = data.getString("BUNDLE_PATH");
                    if (SyncImageView.this.onMediaInformationCallback != null) {
                        SyncImageView.this.onMediaInformationCallback.onMediaImageCallback(string, byteArray, i2, i22);
                    } else if (byteArray == null || byteArray.length == 10) {
                        SyncImageView.this.setImageResource(SyncImageView.this.error);
                    } else {
                        Glide.with(SyncImageView.this.getContext()).load(byteArray).apply((BaseRequestOptions<?>) SyncImageView.this.options).into(SyncImageView.this);
                    }
                }
            }
        };
        initAttrs(context, attributeSet);
    }

    private void initAttrs(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SyncImageView);
        this.placeholder = obtainStyledAttributes.getResourceId(R.styleable.SyncImageView_placeHolder, this.placeholder);
        this.error = obtainStyledAttributes.getResourceId(R.styleable.SyncImageView_error, this.error);
        this.options = new RequestOptions().centerCrop().placeholder(this.placeholder).error(this.error).dontAnimate().priority(Priority.HIGH);
        obtainStyledAttributes.recycle();
    }

    public void setMediaFilePath(final int i, final String str, final int i2, final int i3) {
        setImageResource(this.placeholder);
        BaseApplication baseApplication = BaseApplication.getInstance();
        if (baseApplication != null) {
            baseApplication.getFixedThreadPool().execute(new Runnable() { // from class: com.media.common.ui.widget.SyncImageView.2
                @Override // java.lang.Runnable
                public void run() {
                    Bitmap musicAlbumBitmap;
                    if (i == 1) {
                        musicAlbumBitmap = VideoBitmapUtil.loadVideo(str, 5000L, i2, i3);
                    } else {
                        musicAlbumBitmap = i == 0 ? CarMusicManager.getInstance().getMusicAlbumBitmap(str, i2, i3) : null;
                    }
                    byte[] bArr = new byte[10];
                    if (musicAlbumBitmap != null) {
                        bArr = BitmapUtils.getBitmapByte(musicAlbumBitmap);
                    }
                    Message obtainMessage = SyncImageView.this.mHandler.obtainMessage();
                    obtainMessage.what = 0;
                    Bundle bundle = new Bundle();
                    bundle.putInt("BUNDLE_WIDTH", musicAlbumBitmap == null ? 0 : musicAlbumBitmap.getWidth());
                    bundle.putInt("BUNDLE_HEIGHT", musicAlbumBitmap != null ? musicAlbumBitmap.getHeight() : 0);
                    if (bArr == null) {
                        bArr = new byte[10];
                    }
                    bundle.putByteArray("BUNDLE_THUMBDATA", bArr);
                    bundle.putString("BUNDLE_PATH", str);
                    obtainMessage.setData(bundle);
                    SyncImageView.this.mHandler.sendMessage(obtainMessage);
                }
            });
        }
    }

    public void setOnMediaInformationCallback(OnMediaInformationCallback onMediaInformationCallback) {
        this.onMediaInformationCallback = onMediaInformationCallback;
    }

    public OnMediaInformationCallback getOnMediaInformationCallback() {
        return this.onMediaInformationCallback;
    }
}
