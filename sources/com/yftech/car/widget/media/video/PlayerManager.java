package com.yftech.car.widget.media.video;

import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.example.ffmpeg.FFmpeg;
import com.example.ffmpeg.bean.TimeInfoBean;
import com.example.ffmpeg.listener.MyOnCompleteListener;
import com.example.ffmpeg.listener.MyOnErrorListener;
import com.example.ffmpeg.listener.MyOnParparedListener;
import com.example.ffmpeg.listener.MyOnTimeInfoListener;
import com.yftech.car.media.data.CarMediaDataManager;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.video.BaseVideo;
import com.yftech.car.widget.media.video.PlayerManager;
import java.io.IOException;

/* loaded from: /home/user/work/dex/classes3.dex */
public class PlayerManager implements MediaPlayer.OnPreparedListener, MediaPlayer.OnErrorListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnInfoListener {
    private static final String TAG = "PlayerManager";
    boolean isAudioFocus;
    boolean isPlayError;
    boolean isPlayState;
    boolean isPrepared;
    MediaFile mCurrentPlay;
    private FFmpeg mFFmpeg;
    private final Handler mHandler;
    private LoadDataThread mLoadDataThread;
    private int mMediaPlayInfoNotPlaying;
    private MediaPlayer mMediaPlayer;
    private MyOnErrorListener mMyOnErrorListener;
    private MyOnCompleteListener mOnCompleteListener;
    private MyOnParparedListener mOnParparedListener;
    private MyOnTimeInfoListener mOnTimeInfoListener;
    int mProgress;
    int mSetProgress;
    private long mStartTime;
    private boolean mSurfaceHolderNoCreating;
    private String mToastFormatIsNotSupported;
    private int mToastFormatIsNotSupportedLayoutId;
    private String mToastInfoAudioNotPlaying;
    private int mToastInfoAudioNotPlayingLayoutId;
    private String mToastInfoVideoNotPlaying;
    private int mToastInfoVideoNotPlayingLayoutId;
    private String mToastResourcesAreOccupied;
    private int mToastResourcesAreOccupiedLayoutId;
    private String mToastUdiskDisconnect;
    private int mToastUdiskDisconnectLayoutId;
    private String mToastVideoAsyncIllegalState;
    private int mToastVideoAsyncIllegalStateLayoutId;
    private String mToastVideoFileNoExists;
    private int mToastVideoFileNoExistsLayoutId;
    private final BaseVideo mVideoPlayer;
    private boolean mFFmpegPrepared = false;
    private boolean isSoftSolution = false;
    private boolean isHardPlaybackError = false;
    public boolean isPreparation = false;
    boolean isCreatedPlayer = true;
    boolean isPlayBeforeLossFocus = false;
    private int mDelayMillis = PathInterpolatorCompat.MAX_NUM_POINTS;
    boolean isSlideCurrent = false;
    boolean isSeekBar = false;
    int mSpeedLimit = 0;
    int mCurrentSpeed = 0;
    float mPlayback = 1.0f;
    private int mSoftSolutionPlay = 0;
    final VideoCallbackManager mVideoCallback = new VideoCallbackManager();

    /* JADX INFO: Access modifiers changed from: package-private */
    public PlayerManager(BaseVideo baseVideo, Handler handler) {
        this.mVideoPlayer = baseVideo;
        this.mHandler = handler;
    }

    private void createdPlayer() {
        this.mMediaPlayer = new MediaPlayer();
        this.mMediaPlayer.setOnPreparedListener(this);
        this.mMediaPlayer.setOnErrorListener(this);
        this.mMediaPlayer.setOnCompletionListener(this);
        this.mMediaPlayer.setOnInfoListener(this);
        this.mHandler.removeMessages(48);
        this.mHandler.sendEmptyMessage(48);
        Loger.d(TAG, "createdPlayer: --ok");
    }

    private void createdFFMPEG() {
        this.mFFmpeg = new FFmpeg();
        initFFMPEGListener();
        this.mFFmpeg.setMyOnCompleteListener(this.mOnCompleteListener);
        this.mFFmpeg.setWlOnParparedListener(this.mOnParparedListener);
        this.mFFmpeg.setMyOnTimeInfoListener(this.mOnTimeInfoListener);
        this.mFFmpeg.setMyOnErrorListener(this.mMyOnErrorListener);
        this.mHandler.removeMessages(48);
        this.mHandler.sendEmptyMessage(48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.video.PlayerManager$1, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass1 implements MyOnCompleteListener {
        AnonymousClass1() {
        }

        @Override // com.example.ffmpeg.listener.MyOnCompleteListener
        public void onComplete() {
            Loger.d(PlayerManager.TAG, " onComplete: ");
            if (PlayerManager.this.mHandler != null) {
                PlayerManager.this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.video.-$$Lambda$PlayerManager$1$1YYxbSiWUHYChPEX_Tq25SnNU8g
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlayerManager.AnonymousClass1.lambda$onComplete$0(PlayerManager.AnonymousClass1.this);
                    }
                });
            }
        }

        public static /* synthetic */ void lambda$onComplete$0(AnonymousClass1 anonymousClass1) {
            if (PlayerManager.this.mVideoPlayer != null) {
                PlayerManager.this.mVideoPlayer.onCompletion();
            }
        }
    }

    private void initFFMPEGListener() {
        if (this.mOnCompleteListener == null) {
            this.mOnCompleteListener = new AnonymousClass1();
        }
        if (this.mOnParparedListener == null) {
            this.mOnParparedListener = new AnonymousClass2();
        }
        if (this.mOnTimeInfoListener == null) {
            this.mOnTimeInfoListener = new MyOnTimeInfoListener() { // from class: com.yftech.car.widget.media.video.PlayerManager.3
                @Override // com.example.ffmpeg.listener.MyOnTimeInfoListener
                public void onTimeInfo(TimeInfoBean timeInfoBean) {
                }
            };
        }
        if (this.mMyOnErrorListener == null) {
            this.mMyOnErrorListener = new AnonymousClass4();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.video.PlayerManager$2, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass2 implements MyOnParparedListener {
        AnonymousClass2() {
        }

        @Override // com.example.ffmpeg.listener.MyOnParparedListener
        public void onParpared() {
            Loger.d(PlayerManager.TAG, "onParpared: ");
            if (PlayerManager.this.mHandler != null) {
                PlayerManager.this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.video.-$$Lambda$PlayerManager$2$8JYpHmmvFB_lBx1ldvS7SE9XyL4
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlayerManager.AnonymousClass2.lambda$onParpared$0(PlayerManager.AnonymousClass2.this);
                    }
                });
            }
        }

        public static /* synthetic */ void lambda$onParpared$0(AnonymousClass2 anonymousClass2) {
            PlayerManager.this.isPreparation = false;
            if (PlayerManager.this.mVideoPlayer != null) {
                PlayerManager.this.mFFmpegPrepared = true;
                if (PlayerManager.this.mFFmpeg != null) {
                    PlayerManager.this.mVideoPlayer.onPrepared(PlayerManager.this.mFFmpeg.getVideoWidth(), PlayerManager.this.mFFmpeg.getVideoHeight());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yftech.car.widget.media.video.PlayerManager$4, reason: invalid class name */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class AnonymousClass4 implements MyOnErrorListener {
        AnonymousClass4() {
        }

        @Override // com.example.ffmpeg.listener.MyOnErrorListener
        public void onError(final int i, final String str) {
            Loger.e(PlayerManager.TAG, " onError: FFMPEG code==" + i + ",codeMsg==" + str);
            if (PlayerManager.this.mHandler != null) {
                PlayerManager.this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.video.-$$Lambda$PlayerManager$4$msoEJlGJMdQ3FZu9YET2xMIgADk
                    @Override // java.lang.Runnable
                    public final void run() {
                        PlayerManager.AnonymousClass4.lambda$onError$0(PlayerManager.AnonymousClass4.this, i, str);
                    }
                });
            }
        }

        public static /* synthetic */ void lambda$onError$0(AnonymousClass4 anonymousClass4, int i, String str) {
            PlayerManager.this.isPreparation = false;
            if (PlayerManager.this.mVideoPlayer != null) {
                PlayerManager.this.mVideoPlayer.onError(i, str);
            }
        }
    }

    public void setSoftSolutionPlay(int i) {
        this.mSoftSolutionPlay = i;
        if (this.mSoftSolutionPlay < 0 || this.mSoftSolutionPlay > 2) {
            Loger.e(TAG, "PlayerManager: error mSoftSolutionPlay==" + this.mSoftSolutionPlay);
            this.mSoftSolutionPlay = 0;
        }
        this.isSoftSolution = this.mSoftSolutionPlay == 2;
    }

    public boolean isSurfaceHolderNoCreating() {
        return this.mSurfaceHolderNoCreating;
    }

    public void setToastVideoFileNoExists(String str) {
        this.mToastVideoFileNoExists = str;
    }

    public void setToastUdiskDisconnect(String str) {
        this.mToastUdiskDisconnect = str;
    }

    public void setToastVideoAsyncIllegalState(String str) {
        this.mToastVideoAsyncIllegalState = str;
    }

    public void setToastFormatIsNotSupported(String str) {
        this.mToastFormatIsNotSupported = str;
    }

    public void setToastResourcesAreOccupied(String str) {
        this.mToastResourcesAreOccupied = str;
    }

    public void setToastVideoFileNoExistsLayoutId(int i) {
        this.mToastVideoFileNoExistsLayoutId = i;
    }

    public void setToastUdiskDisconnectLayoutId(int i) {
        this.mToastUdiskDisconnectLayoutId = i;
    }

    public void setToastVideoAsyncIllegalStateLayoutId(int i) {
        this.mToastVideoAsyncIllegalStateLayoutId = i;
    }

    public void setToastFormatIsNotSupportedLayoutId(int i) {
        this.mToastFormatIsNotSupportedLayoutId = i;
    }

    public void setToastResourcesAreOccupiedLayoutId(int i) {
        this.mToastResourcesAreOccupiedLayoutId = i;
    }

    public void setToastInfoVideoNotPlaying(String str) {
        this.mToastInfoVideoNotPlaying = str;
    }

    public void setToastInfoAudioNotPlaying(String str) {
        this.mToastInfoAudioNotPlaying = str;
    }

    public void setToastInfoVideoNotPlayingLayoutId(int i) {
        this.mToastInfoVideoNotPlayingLayoutId = i;
    }

    public void setToastInfoAudioNotPlayingLayoutId(int i) {
        this.mToastInfoAudioNotPlayingLayoutId = i;
    }

    public boolean isSoftSolution() {
        return this.isSoftSolution;
    }

    public void addVideoCallback(BaseVideo.VideoListener videoListener) {
        this.mVideoCallback.addCallback(videoListener);
    }

    public void removeVideoCallback(BaseVideo.VideoListener videoListener) {
        this.mVideoCallback.removeCallback(videoListener);
    }

    public void setDelayMillis(int i) {
        this.mDelayMillis = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getMediaPlayInfoNotPlaying() {
        return this.mMediaPlayInfoNotPlaying;
    }

    public void loadDataPlay(MediaFile mediaFile, boolean z) {
        if (mediaFile != null) {
            Loger.d("start: isStart == " + z);
            if (!z && this.mCurrentPlay != null && mediaFile.getData().equals(this.mCurrentPlay.getData()) && this.isPrepared) {
                this.mVideoCallback.onPrepared((int) this.mCurrentPlay.getDuration());
                return;
            }
            if (!this.mVideoPlayer.requestAudioFocus()) {
                Loger.e("start: video request audio focus failure");
                return;
            }
            if (this.isPreparation) {
                if (Math.abs(System.currentTimeMillis() - this.mStartTime) > 10000) {
                    release(false);
                    Loger.e(TAG, "start: isPreparation is true , play timeout releaseMediaPlayer");
                } else {
                    Loger.e(TAG, "start: isPreparation is true");
                    return;
                }
            }
            if (this.mHandler.hasMessages(56)) {
                this.mHandler.removeMessages(56);
            }
            this.mHandler.removeMessages(50);
            this.mCurrentPlay = mediaFile;
            this.isPrepared = false;
            this.isPreparation = true;
            this.mStartTime = System.currentTimeMillis();
            this.mVideoCallback.onPlayChange(this.mCurrentPlay);
            this.mVideoPlayer.mCurrentUsb = CarMediaDataManager.getInstance().getUsbIndex(this.mCurrentPlay.getData());
            if (this.isHardPlaybackError) {
                this.isHardPlaybackError = false;
            } else if (this.mSoftSolutionPlay == 0 && this.isSoftSolution) {
                if (this.mFFmpeg != null) {
                    this.mFFmpeg.stop();
                    this.mVideoPlayer.resetSurface();
                    Loger.e(TAG, " loadDataPlay: FFmpeg stop");
                }
                this.isSoftSolution = false;
            }
            if (this.isSoftSolution) {
                if (this.mFFmpeg == null) {
                    Loger.e(TAG, "loadDataSource: createdFFMPEG");
                    createdFFMPEG();
                } else {
                    Loger.e(TAG, "loadDataSource: FFmpeg load isPlayError==" + this.isPlayError);
                    this.mFFmpeg.stop();
                }
                if (this.isPlayError) {
                    this.isPlayError = false;
                    this.isCreatedPlayer = true;
                }
                if (this.mVideoPlayer.isSurfaceVisibility(0)) {
                    if (this.mVideoPlayer instanceof VideoPlayer) {
                        SurfaceView surfaceView = this.mVideoPlayer.getSurfaceView();
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) surfaceView.getLayoutParams();
                        layoutParams.width = 1;
                        layoutParams.height = 0;
                        surfaceView.requestLayout();
                        Surface surface = surfaceView.getHolder().getSurface();
                        if (surface != null) {
                            this.mFFmpeg.setSurface(surface);
                            this.mSurfaceHolderNoCreating = false;
                        }
                    } else {
                        TextureView textureView = this.mVideoPlayer.getTextureView();
                        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) textureView.getLayoutParams();
                        layoutParams2.width = 1;
                        layoutParams2.height = 0;
                        textureView.requestLayout();
                        Surface surface2 = this.mVideoPlayer.getSurface();
                        if (surface2 != null) {
                            this.mFFmpeg.setSurface(surface2);
                            this.mSurfaceHolderNoCreating = false;
                        }
                    }
                }
                Loger.d(TAG, " loadDataPlay: FFmpeg setSource");
                this.mFFmpeg.initAvCodec(this.mCurrentPlay.getData());
                return;
            }
            this.mMediaPlayInfoNotPlaying = 0;
            if (this.mMediaPlayer == null) {
                this.isCreatedPlayer = true;
                createdPlayer();
            } else {
                this.isCreatedPlayer = false;
                if (!this.isPlayError) {
                    this.mMediaPlayer.stop();
                }
                this.mMediaPlayer.reset();
                Loger.d("start: mMediaPlayer.reset(),isPlayError==" + this.isPlayError);
                this.mVideoCallback.onProgress(0);
            }
            Loger.d(TAG, " loadDataPlay: isPlayError==" + this.isPlayError + ",isCreatedPlayer==" + this.isCreatedPlayer);
            if (this.isPlayError) {
                this.isPlayError = false;
                this.isCreatedPlayer = true;
            }
            if (this.mVideoPlayer.isSurfaceVisibility(0)) {
                if (this.mVideoPlayer instanceof VideoPlayer) {
                    SurfaceView surfaceView2 = this.mVideoPlayer.getSurfaceView();
                    FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) surfaceView2.getLayoutParams();
                    layoutParams3.width = 1;
                    layoutParams3.height = 0;
                    surfaceView2.requestLayout();
                } else {
                    TextureView textureView2 = this.mVideoPlayer.getTextureView();
                    FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) textureView2.getLayoutParams();
                    layoutParams4.width = 1;
                    layoutParams4.height = 0;
                    textureView2.requestLayout();
                }
            }
            try {
                this.mMediaPlayer.setDataSource(this.mCurrentPlay.getData());
                Loger.d(TAG, " createdPlayer: setDisplay ,isCreatedPlayer==" + this.isCreatedPlayer);
                if (this.mVideoPlayer instanceof VideoPlayer) {
                    SurfaceHolder surfaceHolder = this.mVideoPlayer.getSurfaceHolder();
                    if (surfaceHolder.isCreating()) {
                        this.mMediaPlayer.setDisplay(surfaceHolder);
                        this.mSurfaceHolderNoCreating = false;
                    } else {
                        Log.e(TAG, " createdPlayer: surfaceHolder isCreating false");
                        this.mSurfaceHolderNoCreating = true;
                    }
                } else {
                    Surface surface3 = this.mVideoPlayer.getSurface();
                    if (surface3 != null && surface3.isValid()) {
                        this.mMediaPlayer.setSurface(surface3);
                        this.mSurfaceHolderNoCreating = false;
                    } else {
                        this.mSurfaceHolderNoCreating = true;
                    }
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    this.mMediaPlayer.setAudioAttributes(this.mVideoPlayer.mAudioFocusRequest.getAudioAttributes());
                } else {
                    this.mMediaPlayer.setAudioStreamType(this.mVideoPlayer.mStreamType);
                }
                if (this.isCreatedPlayer) {
                    prepareAsync();
                    return;
                }
                if (this.mVideoPlayer.getVisibility() == 0) {
                    if (this.mVideoPlayer.isSurfaceVisibility(0)) {
                        Loger.d(TAG, " loadDataPlay: isSurfaceVisibility == VISIBLE");
                        this.mVideoPlayer.setSurfaceVisibility(8);
                        this.mHandler.removeMessages(52);
                        this.mHandler.sendEmptyMessageDelayed(52, 1000L);
                        return;
                    }
                    Loger.d(TAG, " createdPlayer: mSurfaceView no show");
                    this.mVideoPlayer.setSurfaceVisibility(0);
                    return;
                }
                Loger.e(TAG, " createdPlayer: current VideoPlayer no show");
                prepareAsync();
                return;
            } catch (IOException | IllegalStateException e) {
                e.printStackTrace();
                this.mHandler.removeMessages(56);
                this.mHandler.removeMessages(48);
                this.mHandler.removeMessages(52);
                this.isPlayState = false;
                if (!isRelease()) {
                    release(!this.isPlayError);
                }
                this.isPreparation = false;
                this.isPlayError = true;
                this.isPrepared = true;
                if (this.mVideoCallback.onPlayException(2)) {
                    this.mVideoPlayer.isUserHandleError = true;
                    return;
                } else {
                    this.mVideoPlayer.isUserHandleError = false;
                    setPlayErrorException(2);
                    return;
                }
            }
        }
        Loger.e("start: mediaFile == null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void prepareAsync() {
        if (this.mMediaPlayer != null) {
            this.mHandler.removeMessages(52);
            try {
                this.mMediaPlayer.prepareAsync();
                Loger.d(" prepareAsync: prepareAsync play video : " + this.mCurrentPlay.getData());
                this.mHandler.sendEmptyMessageDelayed(56, 7000L);
            } catch (IllegalStateException e) {
                e.printStackTrace();
                this.mHandler.removeMessages(56);
                this.mHandler.removeMessages(48);
                this.mHandler.removeMessages(52);
                this.isPlayState = false;
                if (!isRelease()) {
                    release(!this.isPlayError);
                }
                this.isPreparation = false;
                this.isPlayError = true;
                this.isPrepared = true;
                if (this.mVideoCallback.onPlayException(3)) {
                    this.mVideoPlayer.isUserHandleError = true;
                } else {
                    this.mVideoPlayer.isUserHandleError = false;
                    setPlayErrorException(3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPlayErrorException(final int i) {
        String str;
        Loger.e(" setPlayErrorException: code==" + i);
        this.mProgress = 0;
        switch (i) {
            case 0:
                str = this.mToastFormatIsNotSupported;
                break;
            case 1:
                str = this.mToastResourcesAreOccupied;
                break;
            case 2:
                if (!CarMediaDataManager.getInstance().isUsbExists(this.mVideoPlayer.getCurrentUsb())) {
                    Log.e(TAG, "onPlayError: usbExists is false");
                    str = this.mToastUdiskDisconnect;
                    break;
                } else {
                    str = this.mToastVideoFileNoExists;
                    break;
                }
            case 3:
                str = this.mToastVideoAsyncIllegalState;
                break;
            default:
                str = null;
                break;
        }
        if (str != null) {
            str = getToastContent(str);
        }
        if (this.mVideoPlayer.isErrorDialog(str)) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.video.-$$Lambda$PlayerManager$LUNx3pKUmsi89Zrce-c_GjQFDNc
            @Override // java.lang.Runnable
            public final void run() {
                PlayerManager.lambda$setPlayErrorException$0(PlayerManager.this, i);
            }
        });
        if (this.isAudioFocus || this.isPlayBeforeLossFocus) {
            this.mHandler.sendEmptyMessageDelayed(50, this.mDelayMillis);
        }
    }

    public static /* synthetic */ void lambda$setPlayErrorException$0(PlayerManager playerManager, int i) {
        playerManager.mVideoCallback.onPlayError(i);
        switch (i) {
            case 0:
                playerManager.setErrorToast(playerManager.mToastFormatIsNotSupportedLayoutId, playerManager.mToastFormatIsNotSupported);
                return;
            case 1:
                playerManager.setErrorToast(playerManager.mToastResourcesAreOccupiedLayoutId, playerManager.mToastResourcesAreOccupied);
                return;
            case 2:
                if (!CarMediaDataManager.getInstance().isUsbExists(playerManager.mVideoPlayer.getCurrentUsb())) {
                    Log.e(TAG, "onPlayError: usbExists is false");
                    playerManager.setErrorToast(playerManager.mToastUdiskDisconnectLayoutId, playerManager.mToastUdiskDisconnect);
                    return;
                } else {
                    playerManager.setErrorToast(playerManager.mToastVideoFileNoExistsLayoutId, playerManager.mToastVideoFileNoExists);
                    return;
                }
            case 3:
                playerManager.setErrorToast(playerManager.mToastVideoAsyncIllegalStateLayoutId, playerManager.mToastVideoAsyncIllegalState);
                return;
            default:
                return;
        }
    }

    private void setErrorToast(int i, String str) {
        if (i == -1) {
            if (str != null) {
                Toast.makeText(this.mVideoPlayer.getContext(), getToastContent(str), 0).show();
                return;
            }
            return;
        }
        View inflate = LayoutInflater.from(this.mVideoPlayer.getContext()).inflate(i, (ViewGroup) null);
        if (str != null) {
            if (inflate instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) inflate;
                int i2 = 0;
                while (true) {
                    if (i2 >= viewGroup.getChildCount()) {
                        break;
                    }
                    View childAt = viewGroup.getChildAt(i2);
                    if (childAt instanceof TextView) {
                        ((TextView) childAt).setText(getToastContent(str));
                        break;
                    }
                    i2++;
                }
            } else if (inflate instanceof TextView) {
                ((TextView) inflate).setText(getToastContent(str));
            }
        }
        Toast toast = new Toast(this.mVideoPlayer.getContext());
        toast.setView(inflate);
        toast.setDuration(0);
        toast.show();
    }

    boolean isLoadDateSource() {
        return this.mLoadDataThread != null && this.mLoadDataThread.isDataSource;
    }

    private String getToastContent(String str) {
        if (str.contains("<file_name>")) {
            str = str.substring(0, str.indexOf("<file_name>")) + this.mCurrentPlay.getFileName() + str.substring(str.indexOf("<file_name>") + 11);
            if (str.contains("<file_name>")) {
                str = getToastContent(str);
            }
        }
        if (!str.contains("<file_title>")) {
            return str;
        }
        String str2 = str.substring(0, str.indexOf("<file_title>")) + this.mCurrentPlay.getTitle() + str.substring(str.indexOf("<file_title>") + 12);
        return str2.contains("<file_title>") ? getToastContent(str2) : str2;
    }

    public void pause(boolean z) {
        if (isMediaPlaying()) {
            if (this.isSoftSolution) {
                this.mFFmpeg.pausePlay();
            } else {
                this.mMediaPlayer.pause();
            }
        }
        if (z) {
            this.isPlayState = false;
        }
        this.mVideoPlayer.notifyPlayPause(isMediaPlaying());
        Loger.d("MediaPlayer Pause: isPlaying()==" + isMediaPlaying() + ",isPauseState==" + z);
    }

    public void play(boolean z) {
        Log.d(TAG, "play: isAudioFocus==" + this.isAudioFocus + ",isPlayBeforeLossFocus==" + this.isPlayBeforeLossFocus + ",isPrepared==" + this.isPrepared + ",isPlayError==" + this.isPlayError + ",isSlideCurrent==" + this.isSlideCurrent + ",isSeekBar==" + this.isSeekBar);
        if (this.isAudioFocus) {
            if (this.isPrepared && !this.isPlayError && !this.isSlideCurrent && !this.isSeekBar) {
                if (this.mSpeedLimit == 0 || this.mCurrentSpeed < this.mSpeedLimit) {
                    if (this.isSoftSolution) {
                        if (this.mFFmpeg != null) {
                            if (this.mFFmpegPrepared) {
                                this.mFFmpegPrepared = false;
                                this.mFFmpeg.startPlay();
                            } else {
                                this.mFFmpeg.resumePlay();
                            }
                        }
                    } else if (this.mMediaPlayer != null) {
                        this.mMediaPlayer.start();
                    }
                } else {
                    Loger.e(TAG, "play: mSpeedLimit==" + this.mSpeedLimit + ",mCurrentSpeed==" + this.mCurrentSpeed);
                }
            }
        } else {
            this.mVideoPlayer.requestAudioFocus();
            if (this.isAudioFocus) {
                play(z);
                return;
            }
            Loger.e(TAG, "play: requestAudioFocus is isAudioFocus false,request audio focus failed");
        }
        if (z) {
            this.isPlayState = true;
        }
        this.mVideoPlayer.notifyPlayPause(isMediaPlaying());
    }

    public void setProgress(int i) {
        if (this.isPrepared && !this.isPlayError) {
            seekTo(i);
            if (isMediaPlaying()) {
                return;
            }
            play(true);
            return;
        }
        Loger.e("setProgress: MediaPlayer no Prepared");
    }

    public void seekTo(int i) {
        this.mSetProgress = i;
        if (i < 0) {
            i = 0;
        } else if (i > getDuration()) {
            i = getDuration();
        }
        if (this.isSoftSolution) {
            if (this.mFFmpeg != null) {
                this.mFFmpeg.seek(i);
            }
        } else {
            if (this.mMediaPlayer != null) {
                try {
                    this.mMediaPlayer.seekTo(i);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            Loger.e(TAG, "seekTo: MediaPlayer no Prepared");
        }
    }

    public void setPlaybackParams(float f) {
        if (this.isSoftSolution) {
            Log.e(TAG, "setPlaybackParams: ffmpeg play");
            return;
        }
        if (f >= 0.5d && f <= 2.0f) {
            this.mPlayback = f;
            if (this.isPrepared) {
                updatePlayback();
            }
            this.mVideoCallback.onPlaybackParams(f);
            return;
        }
        Log.e(TAG, "setPlaybackParams: Out of range 《playback>=0.5 && playback <=2.0f》 ,playback==" + f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        if (r1 != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
    
        r3.mVideoPlayer.notifyPlayPause(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0035, code lost:
    
        r3.isPlayState = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0033, code lost:
    
        if (r1 == false) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updatePlayback() {
        boolean isMediaPlaying;
        if (this.isSoftSolution) {
            Log.e(TAG, "updatePlayback: ffmpeg play");
            return;
        }
        if (this.mMediaPlayer == null) {
            return;
        }
        try {
            try {
                PlaybackParams playbackParams = this.mMediaPlayer.getPlaybackParams();
                playbackParams.setSpeed(this.mPlayback);
                this.mMediaPlayer.setPlaybackParams(playbackParams);
                isMediaPlaying = isMediaPlaying();
            } catch (Exception e) {
                e.printStackTrace();
                isMediaPlaying = isMediaPlaying();
            }
        } catch (Throwable th) {
            boolean isMediaPlaying2 = isMediaPlaying();
            if (isMediaPlaying2) {
                this.isPlayState = true;
            }
            this.mVideoPlayer.notifyPlayPause(isMediaPlaying2);
            throw th;
        }
    }

    public boolean isMediaPlaying() {
        if (this.isSoftSolution) {
            if (this.mFFmpeg != null) {
                boolean ffmpegIsPlaying = this.mFFmpeg.ffmpegIsPlaying();
                Loger.d(TAG, " isMediaPlaying: ffmpegIsPlaying==" + ffmpegIsPlaying);
                return ffmpegIsPlaying;
            }
        } else if (this.mMediaPlayer != null) {
            try {
                return this.mMediaPlayer.isPlaying();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }

    public int getProgressPosition() {
        int i;
        if (!this.isPrepared || this.isPlayError) {
            return 0;
        }
        if (this.isSoftSolution) {
            if (this.mFFmpeg != null) {
                return (int) this.mFFmpeg.getMediaCurrentTime();
            }
            return 0;
        }
        if (this.mMediaPlayer == null) {
            return 0;
        }
        try {
            i = this.mMediaPlayer.getCurrentPosition();
        } catch (Exception e) {
            e.printStackTrace();
            i = -1;
        }
        if (i == -1) {
            return 0;
        }
        if (i > this.mCurrentPlay.getDuration()) {
            Loger.e(TAG, "getProgressPosition: error progress==" + i + ",duration == " + this.mMediaPlayer.getDuration());
        }
        return i;
    }

    public int getDuration() {
        if (!this.isPrepared || this.isPlayError) {
            return 0;
        }
        if (this.isSoftSolution) {
            if (this.mFFmpeg != null) {
                return (int) this.mFFmpeg.getMediaTotalTime();
            }
            return 0;
        }
        if (this.mMediaPlayer == null) {
            return 0;
        }
        try {
            return this.mMediaPlayer.getDuration();
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public int getAudioSessionId() {
        if (this.isSoftSolution || this.mMediaPlayer == null) {
            return 0;
        }
        return this.mMediaPlayer.getAudioSessionId();
    }

    public void release(boolean z) {
        Loger.e(TAG, " release: isStop==" + z + ",isSoftSolution==" + this.isSoftSolution);
        this.isPreparation = false;
        if (this.isSoftSolution) {
            if (this.mSoftSolutionPlay == 0) {
                this.isSoftSolution = false;
            }
            if (this.mFFmpeg != null) {
                this.mFFmpeg.setMyOnCompleteListener(null);
                this.mFFmpeg.setWlOnParparedListener(null);
                this.mFFmpeg.setMyOnTimeInfoListener(null);
                this.mFFmpeg.setMyOnErrorListener(null);
                if (z) {
                    this.mFFmpeg.stopPlay();
                }
                this.mFFmpeg.releaseMediacodec();
                this.mFFmpeg = null;
                Loger.e(TAG, " release: FFmpeg release --ok");
                return;
            }
            return;
        }
        if (this.mMediaPlayer != null) {
            if (z) {
                try {
                    this.mMediaPlayer.stop();
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                }
            }
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
            Loger.e("releaseMediaPlayer: MediaPlayer release --ok ");
        }
    }

    private void releasePlay() {
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.reset();
            this.mMediaPlayer.release();
            this.mMediaPlayer = null;
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        this.isPreparation = false;
        if (this.mVideoPlayer != null) {
            this.mVideoPlayer.onPrepared(mediaPlayer.getVideoWidth(), mediaPlayer.getVideoHeight());
        }
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.isPreparation = false;
        if (i2 == 303 || i2 < 0) {
            Log.e(TAG, "onError: what==" + i + ",extra==" + i2);
            if (this.mSoftSolutionPlay == 0) {
                release(false);
                this.isSoftSolution = true;
                this.isHardPlaybackError = true;
                loadDataPlay(this.mCurrentPlay, true);
                return true;
            }
        }
        if (this.mVideoPlayer != null) {
            return this.mVideoPlayer.onError(i, i2);
        }
        return false;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        if (this.mVideoPlayer != null) {
            this.mVideoPlayer.onCompletion();
        }
    }

    public boolean isRelease() {
        return this.isSoftSolution ? this.mFFmpeg == null : this.mMediaPlayer == null;
    }

    public void stop() {
        if (this.isSoftSolution) {
            if (this.mFFmpeg != null) {
                this.mFFmpeg.stop();
            }
        } else if (this.mMediaPlayer != null) {
            this.mMediaPlayer.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDisplay(SurfaceHolder surfaceHolder) {
        Loger.d(TAG, " setDisplay: isSoftSolution==" + this.isSoftSolution);
        if (this.isSoftSolution) {
            if (this.mFFmpeg == null || surfaceHolder == null) {
                return;
            }
            this.mFFmpeg.setSurface(surfaceHolder.getSurface());
            Loger.d(TAG, " setDisplay: setSurface");
            this.mSurfaceHolderNoCreating = false;
            return;
        }
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.setDisplay(surfaceHolder);
            this.mSurfaceHolderNoCreating = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDisplay(Surface surface) {
        Loger.d(TAG, " setDisplay: isSoftSolution==" + this.isSoftSolution);
        if (this.isSoftSolution) {
            if (this.mFFmpeg == null || surface == null) {
                return;
            }
            this.mFFmpeg.setSurface(surface);
            Loger.d(TAG, " setDisplay: setSurface");
            this.mSurfaceHolderNoCreating = false;
            return;
        }
        if (this.mMediaPlayer != null) {
            this.mMediaPlayer.setSurface(surface);
            this.mSurfaceHolderNoCreating = false;
        }
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        Loger.d(TAG, " onInfo: what==" + i + ",extra==" + i2);
        if (i != 805 && i != 804) {
            return false;
        }
        this.mMediaPlayInfoNotPlaying = i;
        if (this.mSoftSolutionPlay == 0) {
            release(true);
            this.isSoftSolution = true;
            this.isHardPlaybackError = true;
            loadDataPlay(this.mCurrentPlay, true);
            return true;
        }
        if (i == 805) {
            setErrorToast(this.mToastInfoVideoNotPlayingLayoutId, this.mToastInfoVideoNotPlaying);
            return false;
        }
        setErrorToast(this.mToastInfoAudioNotPlayingLayoutId, this.mToastInfoAudioNotPlaying);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes3.dex */
    public class LoadDataThread extends Thread {
        private boolean isLoad = true;
        private boolean isDataSource = false;

        private LoadDataThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Loger.d(PlayerManager.TAG, "start: setDataSource path==" + PlayerManager.this.mCurrentPlay.getData());
            this.isDataSource = true;
            try {
                PlayerManager.this.mMediaPlayer.setDataSource(PlayerManager.this.mCurrentPlay.getData());
                this.isDataSource = false;
                Loger.d(PlayerManager.TAG, "start: prepareAsync isCreatedPlayer==" + PlayerManager.this.isCreatedPlayer);
                if (this.isLoad) {
                    if (!PlayerManager.this.isCreatedPlayer) {
                        if (PlayerManager.this.mVideoPlayer.getVisibility() == 0) {
                            if (PlayerManager.this.mVideoPlayer.isSurfaceVisibility(0)) {
                                PlayerManager.this.mVideoPlayer.setSurfaceVisibility(8);
                                PlayerManager.this.mHandler.removeMessages(52);
                                PlayerManager.this.mHandler.sendEmptyMessageDelayed(52, 1000L);
                                return;
                            } else {
                                Loger.d(PlayerManager.TAG, "start: mSurfaceView no show");
                                PlayerManager.this.mVideoPlayer.setSurfaceVisibility(0);
                                return;
                            }
                        }
                        Loger.e(PlayerManager.TAG, "start: current VideoPlayer no show");
                        PlayerManager.this.prepareAsync();
                        return;
                    }
                    PlayerManager.this.prepareAsync();
                }
            } catch (IOException | IllegalStateException e) {
                e.printStackTrace();
                this.isDataSource = false;
                if (this.isLoad) {
                    PlayerManager.this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.video.-$$Lambda$PlayerManager$LoadDataThread$PannSR6bGXfnCmwIgtbHaGATx_w
                        @Override // java.lang.Runnable
                        public final void run() {
                            PlayerManager.LoadDataThread.lambda$run$0(PlayerManager.LoadDataThread.this);
                        }
                    });
                }
            }
        }

        public static /* synthetic */ void lambda$run$0(LoadDataThread loadDataThread) {
            if (loadDataThread.isLoad) {
                PlayerManager.this.mHandler.removeMessages(56);
                PlayerManager.this.mHandler.removeMessages(48);
                PlayerManager.this.mHandler.removeMessages(52);
                PlayerManager.this.isPlayState = false;
                if (!PlayerManager.this.isRelease()) {
                    PlayerManager.this.release(!PlayerManager.this.isPlayError);
                }
                PlayerManager.this.isPreparation = false;
                PlayerManager.this.isPlayError = true;
                PlayerManager.this.isPrepared = true;
                if (PlayerManager.this.mVideoCallback.onPlayException(2)) {
                    PlayerManager.this.mVideoPlayer.isUserHandleError = true;
                } else {
                    PlayerManager.this.mVideoPlayer.isUserHandleError = false;
                    PlayerManager.this.setPlayErrorException(2);
                }
            }
        }
    }
}
