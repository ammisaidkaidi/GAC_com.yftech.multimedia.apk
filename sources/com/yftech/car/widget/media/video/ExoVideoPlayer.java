package com.yftech.car.widget.media.video;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.widget.ImageView;
import android.widget.SeekBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.widget.media.video.BaseVideo;
import com.yftech.car.widget.media.video.layout.VideoLayoutChildManager;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class ExoVideoPlayer extends BaseVideo implements MediaPlayer.OnInfoListener, View.OnTouchListener {
    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void addVideoCallback(BaseVideo.VideoListener videoListener) {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getAutoHideTime() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public MediaFile getCurrentPlay() {
        return null;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getCurrentUsb() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getDuration() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getMediaPlayInfoNotPlaying() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public SeekBar.OnSeekBarChangeListener getOnSeekBar(ImageView imageView) {
        return null;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public List<MediaFile> getPlayList() {
        return null;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getPlayListSize() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getPlayMode() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getPlayPosition() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getProgressPosition() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getScaleType() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public Surface getSurface() {
        return null;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public SurfaceHolder getSurfaceHolder() {
        return null;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public SurfaceView getSurfaceView() {
        return null;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getSystemUiVisibilityHide() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getSystemUiVisibilityShow() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public TextureView getTextureView() {
        return null;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getVideoHideShowAnimation() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getVideoHideShowAnimationDuration() {
        return 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    protected void initData(Context context, AttributeSet attributeSet) {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    protected void initListener() {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isAutoCountdownHide(int i) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isClickSwitchHideShow(int i) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isDoubleClickSwitchHideShow(int i) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isErrorDialog(String str) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isOnTouchClick() {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isPlayError() {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isPlaying() {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isSoftSolution() {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isSurfaceVisibility(int i) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isSystemUIToTheTimeAutoHidden() {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isVideoSeekImageWhetherToFollowSeekBar() {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isVideoSlideShowSeekImage() {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void notifyPlayPause(boolean z) {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void onCompletion() {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void onError(int i, String str) {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean onError(int i, int i2) {
        return false;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void onPrepared(int i, int i2) {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void release() {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void removeVideoCallback(BaseVideo.VideoListener videoListener) {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean requestAudioFocus() {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void resetSurface() {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void setLayoutChildManager(VideoLayoutChildManager videoLayoutChildManager) {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void setPlayProgress(int i) {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean setPlayState(int i) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void setStorageDisconnect() {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void setSurfaceVisibility(int i) {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean startPlay(MediaFile mediaFile) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean startPlay(MediaFile mediaFile, boolean z) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean startPlayList(List<MediaFile> list, int i) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean startPlayList(List<MediaFile> list, int i, boolean z) {
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void switchPlayMode() {
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void switchScaleType() {
    }

    public ExoVideoPlayer(@NonNull Context context) {
        super(context);
    }

    public ExoVideoPlayer(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ExoVideoPlayer(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
