package com.yftech.car.widget.media.video;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.AudioFocusRequest;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.media.common.util.AppConstants;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.widget.media.video.layout.VideoLayoutChildManager;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public abstract class BaseVideo extends FrameLayout {
    private final String AVM_HIDE;
    private final String AVM_SHOW;
    private final String SVM_KEY;
    boolean isUserHandleError;
    AudioFocusRequest mAudioFocusRequest;
    int mCurrentUsb;
    int mStreamType;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public interface VideoListener {
        Bitmap loadSeekProgressImage(String str, long j, int i, int i2);

        boolean onAudioFocusChange(int i);

        void onDoubleClick(boolean z);

        boolean onInfo(int i, int i2);

        void onPlayChange(MediaFile mediaFile);

        void onPlayError(int i);

        boolean onPlayException(int i);

        void onPlayMode(int i);

        void onPlaySequenceCompletion();

        void onPlaybackParams(float f);

        boolean onPlayerError(int i, int i2);

        void onPlayingChange(boolean z);

        void onPrepared(int i);

        void onProgress(int i);

        void onScaleType(int i);

        void onSlideProgress(boolean z, int i, long j, boolean z2);

        void onStartTrackingTouch(int i, boolean z);

        void onStorageDisconnect();
    }

    public abstract void addVideoCallback(VideoListener videoListener);

    public abstract int getAutoHideTime();

    public abstract MediaFile getCurrentPlay();

    public abstract int getCurrentUsb();

    public abstract int getDuration();

    public abstract int getMediaPlayInfoNotPlaying();

    public abstract SeekBar.OnSeekBarChangeListener getOnSeekBar(ImageView imageView);

    public abstract List<MediaFile> getPlayList();

    public abstract int getPlayListSize();

    public abstract int getPlayMode();

    public abstract int getPlayPosition();

    public abstract int getProgressPosition();

    public abstract int getScaleType();

    public Surface getSurface() {
        return null;
    }

    public SurfaceHolder getSurfaceHolder() {
        return null;
    }

    public SurfaceView getSurfaceView() {
        return null;
    }

    public abstract int getSystemUiVisibilityHide();

    public abstract int getSystemUiVisibilityShow();

    public TextureView getTextureView() {
        return null;
    }

    public abstract int getVideoHideShowAnimation();

    public abstract int getVideoHideShowAnimationDuration();

    protected abstract void initData(Context context, AttributeSet attributeSet);

    protected abstract void initListener();

    public abstract boolean isAutoCountdownHide(int i);

    public abstract boolean isClickSwitchHideShow(int i);

    public abstract boolean isDoubleClickSwitchHideShow(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isErrorDialog(String str);

    public abstract boolean isOnTouchClick();

    public abstract boolean isPlayError();

    public abstract boolean isPlaying();

    public abstract boolean isSoftSolution();

    public abstract boolean isSurfaceVisibility(int i);

    public abstract boolean isSystemUIToTheTimeAutoHidden();

    public abstract boolean isVideoSeekImageWhetherToFollowSeekBar();

    public abstract boolean isVideoSlideShowSeekImage();

    public abstract void notifyPlayPause(boolean z);

    public abstract void onCompletion();

    public abstract void onError(int i, String str);

    public abstract boolean onError(int i, int i2);

    public abstract void onPrepared(int i, int i2);

    public abstract void release();

    public abstract void removeVideoCallback(VideoListener videoListener);

    public abstract boolean requestAudioFocus();

    public abstract void resetSurface();

    public abstract void setLayoutChildManager(VideoLayoutChildManager videoLayoutChildManager);

    public abstract void setPlayProgress(int i);

    public abstract boolean setPlayState(int i);

    public abstract void setStorageDisconnect();

    public abstract void setSurfaceVisibility(int i);

    public abstract boolean startPlay(MediaFile mediaFile);

    public abstract boolean startPlay(MediaFile mediaFile, boolean z);

    public abstract boolean startPlayList(List<MediaFile> list, int i);

    public abstract boolean startPlayList(List<MediaFile> list, int i, boolean z);

    public abstract void switchPlayMode();

    public abstract void switchScaleType();

    public BaseVideo(@NonNull Context context) {
        super(context);
        this.mStreamType = 3;
        this.SVM_KEY = "sys.avmservice.show.state";
        this.AVM_SHOW = AppConstants.VALUE_SHOW;
        this.AVM_HIDE = AppConstants.VALUE_HIDE;
    }

    public BaseVideo(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mStreamType = 3;
        this.SVM_KEY = "sys.avmservice.show.state";
        this.AVM_SHOW = AppConstants.VALUE_SHOW;
        this.AVM_HIDE = AppConstants.VALUE_HIDE;
    }

    public BaseVideo(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mStreamType = 3;
        this.SVM_KEY = "sys.avmservice.show.state";
        this.AVM_SHOW = AppConstants.VALUE_SHOW;
        this.AVM_HIDE = AppConstants.VALUE_HIDE;
    }

    public boolean isAvmShow() {
        return AppConstants.VALUE_SHOW.equals(SystemProperties.get("sys.avmservice.show.state", AppConstants.VALUE_HIDE));
    }
}
