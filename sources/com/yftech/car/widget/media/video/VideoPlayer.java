package com.yftech.car.widget.media.video;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Size;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.Toast;
import androidx.core.app.NotificationManagerCompat;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.android.internal.logging.nano.MetricsProto;
import com.android.internal.os.PowerProfile;
import com.yftech.car.media.data.entity.MediaFile;
import com.yftech.car.media.video.util.VideoBitmapUtil;
import com.yftech.car.screen.CarScreenManager;
import com.yftech.car.utils.Loger;
import com.yftech.car.widget.media.R;
import com.yftech.car.widget.media.dialog.ConfirmDialog;
import com.yftech.car.widget.media.manager.MediaDataManager;
import com.yftech.car.widget.media.utils.MediaKeyUtil;
import com.yftech.car.widget.media.video.BaseVideo;
import com.yftech.car.widget.media.video.layout.VideoLayoutChildManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: /home/user/work/dex/classes3.dex */
public class VideoPlayer extends BaseVideo implements MediaPlayer.OnInfoListener, SurfaceHolder.Callback, View.OnTouchListener {
    public static final int GRADUAL_CHANGE = 2;
    public static final int NO_ANIMATION = 0;
    public static final int ON_SIZE_CHANGED = 53;
    public static final int PLAY_DOUBLE_CLICK = 51;
    public static final int PLAY_ERROR_NOT_SUPPORTED = 50;
    public static final int PLAY_TIME_UPDATE = 48;
    public static final int PREPARE_ASYNC = 52;
    public static final int SET_PLAY_PROGRESS = 54;
    public static final int SET_PROGRESS_BITMAP = 55;
    public static final int START_PLAY_TIMEOUT = 56;
    public static final int SYSTEM_UI_VISIBILITY = 1;
    public static final String TAG = "VideoPlayer";
    public static final int TRANSLATION = 1;
    public static final int VIDEO_DISPLAY_VIEW = 2;
    public static final String VIDEO_MEMORY_PLAY = "media_video_memory_play";
    private Size DialogWidthHeight;
    private boolean hasWindowFocusPlay;
    private boolean isLoadingBitmap;
    private boolean isSeekPause;
    private boolean isSeekPlay;
    private boolean isSeekVideoImage;
    private boolean isSlideAudio;
    private boolean isSlideBrightness;
    private AttributeSet mAttributeSet;
    private AudioManager mAudioManager;
    private int mAutoCountdownHide;
    private int mAutoHideTime;
    private long mBitmapProgress;
    private long mBitmapTime;
    private int mClickSwitchHideShow;
    private ConfirmDialog mConfirmDialog;
    int mContentType;
    private boolean mDialogCancelable;
    private boolean mDialogError;
    private int mDialogFlags;
    private int mDoubleClickSwitchHideShow;
    private int mDownX;
    private int mDownY;
    private int mErrorDialogLayoutId;
    private final Handler mHandler;
    private int mIndexX;
    private boolean mInitData;
    private boolean mIsVideoSeekImageWhetherToFollowSeekBar;
    private VideoLayoutChildManager mLayoutChildManager;
    private final List<MediaFile> mList;
    private MediaSessionManager mMediaSession;
    private final AudioManager.OnAudioFocusChangeListener mOnAudioFocusChangeListener;
    private final SeekBar.OnSeekBarChangeListener mOnSeekBar;
    private int mPlayMode;
    private int mPlayPosition;
    private int mPlayRandom;
    private PlayerManager mPlayerManager;
    private ImageView mProgressImageView;
    private final List<Integer> mRandomList;
    private final Runnable mRunnableImageViewProgress;
    private int mScaleType;
    private int mScaledTouchSlop;
    private int mSearchClearHistoryDialogThemeResId;
    private boolean mSlideForward;
    private int mSlideProgress;
    private int mSlideProportion;
    private SharedPreferences mSp;
    private int mSurfaceHeight;
    private SurfaceHolder mSurfaceHolder;
    private SurfaceView mSurfaceView;
    private int mSurfaceWidth;
    private boolean mSystemUIToTheTimeAutoHidden;
    private int mSystemUiVisibilityHide;
    private int mSystemUiVisibilityShow;
    private int mUiSetProgress;
    private boolean mUiStartPlay;
    int mUsage;
    private int mVideoHeight;
    private int mVideoHideShowAnimation;
    private int mVideoHideShowAnimationDuration;
    private int mVideoPreviousReplayTime;
    private boolean mVideoSlideProgress;
    private boolean mVideoSlideShowSeekImage;
    private int mVideoWidth;
    private boolean mWinHideSurfaceGone;
    private int playErrorCount;
    private int playTimeoutCount;

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class Constant {
        public static final int ADAPTATION = 200;
        public static final int AUTO_SOFT_SOLUTION = 0;

        @Deprecated
        public static final int CYCLE_PLAY = 100;
        public static final int FULL_SCREEN = 201;
        public static final int HARD_PLAYBACK = 1;
        public static final int LIST_LOOP = 100;
        public static final int NEXT = 4;
        public static final int ONE_TO_ONE = 202;
        public static final int PAUSE = 2;
        public static final int PLAY = 1;
        public static final int PLAY_PAUSE = 3;
        public static final int PREV = 5;
        public static final int RANDOM_PLAY = 102;
        public static final int SEQUENCE_PLAY = 103;
        public static final int SINGLE_PLAY = 101;
        public static final int SOFT_SOLUTION_PLAY = 2;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static class ErrorCode {
        public static final int FILE_NO_EXISTS = 2;
        public static final int FORMAT_IS_NOT_SUPPORTED = 0;
        public static final int PREPARE_ASYNC_ILLEGAL_STATE = 3;
        public static final int RESOURCES_ARE_OCCUPIED = 1;
    }

    /* loaded from: /home/user/work/dex/classes3.dex */
    public static abstract class VideoCallback implements BaseVideo.VideoListener {
        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public Bitmap loadSeekProgressImage(String str, long j, int i, int i2) {
            return null;
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public boolean onAudioFocusChange(int i) {
            return false;
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onDoubleClick(boolean z) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public boolean onInfo(int i, int i2) {
            return false;
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onPlayChange(MediaFile mediaFile) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onPlayError(int i) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public boolean onPlayException(int i) {
            return false;
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onPlayMode(int i) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onPlaySequenceCompletion() {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onPlaybackParams(float f) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public boolean onPlayerError(int i, int i2) {
            return false;
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onPlayingChange(boolean z) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onPrepared(int i) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onProgress(int i) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onScaleType(int i) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onSlideProgress(boolean z, int i, long j, boolean z2) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onStartTrackingTouch(int i, boolean z) {
        }

        @Override // com.yftech.car.widget.media.video.BaseVideo.VideoListener
        public void onStorageDisconnect() {
        }
    }

    static /* synthetic */ int access$208(VideoPlayer videoPlayer) {
        int i = videoPlayer.playErrorCount;
        videoPlayer.playErrorCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$508(VideoPlayer videoPlayer) {
        int i = videoPlayer.playTimeoutCount;
        videoPlayer.playTimeoutCount = i + 1;
        return i;
    }

    public VideoPlayer(Context context) {
        super(context);
        this.mInitData = true;
        this.mList = new ArrayList();
        this.mRandomList = new ArrayList();
        this.mUsage = 1;
        this.mContentType = 3;
        this.mUiSetProgress = -1;
        this.mPlayMode = 100;
        this.mUiStartPlay = true;
        this.mBitmapTime = 0L;
        this.isLoadingBitmap = false;
        this.mScaleType = 200;
        this.isSeekPause = true;
        this.isSeekPlay = true;
        this.isSeekVideoImage = false;
        this.isSlideBrightness = false;
        this.isSlideAudio = false;
        this.mSlideForward = false;
        this.mSlideProportion = 50;
        this.mDialogError = false;
        this.mWinHideSurfaceGone = true;
        this.mSystemUIToTheTimeAutoHidden = true;
        this.mIsVideoSeekImageWhetherToFollowSeekBar = true;
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.car.widget.media.video.VideoPlayer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 48:
                        VideoPlayer.this.mHandler.sendEmptyMessageDelayed(48, 1000L);
                        VideoPlayer.this.updateTime();
                        return;
                    case 49:
                    default:
                        return;
                    case 50:
                        VideoPlayer.access$208(VideoPlayer.this);
                        if (VideoPlayer.this.playErrorCount < VideoPlayer.this.mList.size()) {
                            VideoPlayer.this.switchVideo(true);
                        } else {
                            VideoPlayer.this.stopPlayer();
                        }
                        Loger.d("setPlayErrorException: playErrorCount==" + VideoPlayer.this.playErrorCount + ", list.size()==" + VideoPlayer.this.mList.size());
                        return;
                    case 51:
                        VideoPlayer.this.mPlayerManager.mVideoCallback.onDoubleClick(false);
                        VideoPlayer.this.playSoundEffect(0);
                        return;
                    case 52:
                        VideoPlayer.this.mPlayerManager.isCreatedPlayer = true;
                        VideoPlayer.this.mSurfaceView.setVisibility(0);
                        VideoPlayer.this.mPlayerManager.prepareAsync();
                        return;
                    case 53:
                        if (!VideoPlayer.this.mPlayerManager.isPrepared || VideoPlayer.this.mPlayerManager.isPlayError) {
                            return;
                        }
                        VideoPlayer.this.setScaleVideoSize(VideoPlayer.this.mVideoWidth, VideoPlayer.this.mVideoHeight, message.arg1, message.arg2);
                        return;
                    case 54:
                        VideoPlayer.this.setPlayProgress(message.arg1);
                        VideoPlayer.this.mPlayerManager.mVideoCallback.onProgress(message.arg1);
                        return;
                    case 55:
                        if (VideoPlayer.this.mProgressImageView != null) {
                            Bitmap bitmap = (Bitmap) message.obj;
                            if (bitmap != null) {
                                VideoPlayer.this.mProgressImageView.setImageBitmap(bitmap);
                            }
                            if (VideoPlayer.this.mBitmapTime != VideoPlayer.this.mBitmapProgress) {
                                VideoPlayer.this.setImageViewProgress(VideoPlayer.this.mBitmapProgress);
                                return;
                            } else {
                                VideoPlayer.this.isLoadingBitmap = false;
                                return;
                            }
                        }
                        return;
                    case 56:
                        VideoPlayer.access$508(VideoPlayer.this);
                        Toast.makeText(VideoPlayer.this.getContext(), "播放超时！", 1).show();
                        return;
                }
            }
        };
        this.mOnAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.yftech.car.widget.media.video.VideoPlayer.2
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                boolean z;
                StringBuilder sb = new StringBuilder();
                sb.append("onAudioFocusChange: focusChange==");
                sb.append(i);
                sb.append(",isPlayError==");
                sb.append(VideoPlayer.this.mPlayerManager.isPlayError);
                sb.append(",isPlayState==");
                sb.append(VideoPlayer.this.mPlayerManager.isPlayState);
                sb.append(",isUserHandleError==");
                sb.append(VideoPlayer.this.isUserHandleError);
                sb.append(",mSurfaceHolder!=null ");
                sb.append(VideoPlayer.this.mSurfaceHolder != null);
                sb.append(",(!hasWindowFocusPlay || hasWindowFocus())==");
                sb.append(!VideoPlayer.this.hasWindowFocusPlay || VideoPlayer.this.hasWindowFocus());
                Loger.d(VideoPlayer.TAG, sb.toString());
                if (VideoPlayer.this.mPlayerManager.mVideoCallback.onAudioFocusChange(i)) {
                    Loger.e(VideoPlayer.TAG, "onAudioFocusChange: return app");
                    z = true;
                } else {
                    z = false;
                }
                if (i != 1) {
                    switch (i) {
                        case -2:
                            VideoPlayer.this.mPlayerManager.isPlayBeforeLossFocus = true;
                            VideoPlayer.this.mPlayerManager.isAudioFocus = false;
                            if (VideoPlayer.this.mPlayerManager.isPlayError) {
                                VideoPlayer.this.mHandler.removeMessages(50);
                                return;
                            }
                            VideoPlayer.this.updateSaveTime();
                            if (z) {
                                return;
                            }
                            VideoPlayer.this.mPlayerManager.pause(false);
                            return;
                        case -1:
                            if (VideoPlayer.this.mHandler.hasMessages(56)) {
                                VideoPlayer.this.mHandler.removeMessages(56);
                            }
                            if (VideoPlayer.this.mHandler.hasMessages(50)) {
                                VideoPlayer.this.mPlayerManager.isPlayError = false;
                                VideoPlayer.this.mHandler.removeMessages(50);
                            }
                            VideoPlayer.this.mPlayerManager.isAudioFocus = false;
                            VideoPlayer.this.mPlayerManager.isPlayBeforeLossFocus = false;
                            VideoPlayer.this.updateSaveTime();
                            if (z) {
                                return;
                            }
                            VideoPlayer.this.mPlayerManager.pause(false);
                            VideoPlayer.this.abandonAudioFocus();
                            return;
                        default:
                            return;
                    }
                }
                VideoPlayer.this.mPlayerManager.isAudioFocus = true;
                if (!VideoPlayer.this.mPlayerManager.isPlayError) {
                    if (!z && VideoPlayer.this.mPlayerManager.isPlayState && VideoPlayer.this.mSurfaceHolder != null && ((!VideoPlayer.this.hasWindowFocusPlay || VideoPlayer.this.hasWindowFocus()) && !VideoPlayer.this.isAvmShow())) {
                        VideoPlayer.this.mPlayerManager.play(false);
                        if (VideoPlayer.this.isPlaying()) {
                            VideoPlayer.this.mPlayerManager.updatePlayback();
                        }
                    }
                    if (VideoPlayer.this.mPlayerManager.isPlayBeforeLossFocus) {
                        VideoPlayer.this.requestAudioFocus(true);
                        return;
                    }
                    return;
                }
                if (VideoPlayer.this.isUserHandleError) {
                    return;
                }
                VideoPlayer.this.mHandler.sendEmptyMessage(50);
            }
        };
        this.mRunnableImageViewProgress = new Runnable() { // from class: com.yftech.car.widget.media.video.VideoPlayer.4
            @Override // java.lang.Runnable
            public void run() {
                if (VideoPlayer.this.mProgressImageView != null) {
                    Bitmap loadSeekProgressImage = VideoPlayer.this.mPlayerManager.mVideoCallback.loadSeekProgressImage(VideoPlayer.this.mPlayerManager.mCurrentPlay.getData(), VideoPlayer.this.mBitmapTime, VideoPlayer.this.mProgressImageView.getWidth(), VideoPlayer.this.mProgressImageView.getHeight());
                    if (loadSeekProgressImage == null) {
                        loadSeekProgressImage = VideoBitmapUtil.loadVideo(VideoPlayer.this.mPlayerManager.mCurrentPlay.getData(), VideoPlayer.this.mBitmapTime, VideoPlayer.this.mProgressImageView.getWidth(), VideoPlayer.this.mProgressImageView.getHeight());
                    }
                    VideoPlayer.this.mHandler.obtainMessage(55, loadSeekProgressImage).sendToTarget();
                }
            }
        };
        this.mOnSeekBar = new SeekBar.OnSeekBarChangeListener() { // from class: com.yftech.car.widget.media.video.VideoPlayer.5
            private boolean isCancel = false;

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (!z || this.isCancel) {
                    return;
                }
                if (VideoPlayer.this.mProgressImageView != null) {
                    long j = i;
                    VideoPlayer.this.mBitmapProgress = j;
                    if (!VideoPlayer.this.isLoadingBitmap) {
                        VideoPlayer.this.isLoadingBitmap = true;
                        VideoPlayer.this.setImageViewProgress(j);
                    }
                }
                if (VideoPlayer.this.isSeekVideoImage) {
                    VideoPlayer.this.setPlayProgress(i);
                }
                if (VideoPlayer.this.mPlayerManager.mVideoCallback == null || VideoPlayer.this.mPlayerManager.isPlayError) {
                    return;
                }
                VideoPlayer.this.mPlayerManager.mVideoCallback.onProgress(i);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                VideoPlayer.this.mPlayerManager.isSeekBar = true;
                if ((VideoPlayer.this.mLayoutChildManager == null || !VideoPlayer.this.mLayoutChildManager.isAnimationLoading()) && !VideoPlayer.this.isOnTouchClick()) {
                    if (VideoPlayer.this.isSeekPause) {
                        VideoPlayer.this.mPlayerManager.pause(false);
                    }
                    if (VideoPlayer.this.mPlayerManager.mVideoCallback == null || VideoPlayer.this.mPlayerManager.isPlayError) {
                        return;
                    }
                    VideoPlayer.this.mPlayerManager.mVideoCallback.onStartTrackingTouch(seekBar.getId(), true);
                    return;
                }
                this.isCancel = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                VideoPlayer.this.mPlayerManager.isSeekBar = false;
                if (this.isCancel) {
                    this.isCancel = false;
                    return;
                }
                VideoPlayer.this.setPlayProgress(seekBar.getProgress());
                if (VideoPlayer.this.isSeekPlay) {
                    VideoPlayer.this.mPlayerManager.play(false);
                }
                if (VideoPlayer.this.mPlayerManager.mVideoCallback == null || VideoPlayer.this.mPlayerManager.isPlayError) {
                    return;
                }
                VideoPlayer.this.mPlayerManager.mVideoCallback.onStartTrackingTouch(seekBar.getId(), false);
            }
        };
        initData(context, null);
        initListener();
    }

    public VideoPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInitData = true;
        this.mList = new ArrayList();
        this.mRandomList = new ArrayList();
        this.mUsage = 1;
        this.mContentType = 3;
        this.mUiSetProgress = -1;
        this.mPlayMode = 100;
        this.mUiStartPlay = true;
        this.mBitmapTime = 0L;
        this.isLoadingBitmap = false;
        this.mScaleType = 200;
        this.isSeekPause = true;
        this.isSeekPlay = true;
        this.isSeekVideoImage = false;
        this.isSlideBrightness = false;
        this.isSlideAudio = false;
        this.mSlideForward = false;
        this.mSlideProportion = 50;
        this.mDialogError = false;
        this.mWinHideSurfaceGone = true;
        this.mSystemUIToTheTimeAutoHidden = true;
        this.mIsVideoSeekImageWhetherToFollowSeekBar = true;
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.car.widget.media.video.VideoPlayer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 48:
                        VideoPlayer.this.mHandler.sendEmptyMessageDelayed(48, 1000L);
                        VideoPlayer.this.updateTime();
                        return;
                    case 49:
                    default:
                        return;
                    case 50:
                        VideoPlayer.access$208(VideoPlayer.this);
                        if (VideoPlayer.this.playErrorCount < VideoPlayer.this.mList.size()) {
                            VideoPlayer.this.switchVideo(true);
                        } else {
                            VideoPlayer.this.stopPlayer();
                        }
                        Loger.d("setPlayErrorException: playErrorCount==" + VideoPlayer.this.playErrorCount + ", list.size()==" + VideoPlayer.this.mList.size());
                        return;
                    case 51:
                        VideoPlayer.this.mPlayerManager.mVideoCallback.onDoubleClick(false);
                        VideoPlayer.this.playSoundEffect(0);
                        return;
                    case 52:
                        VideoPlayer.this.mPlayerManager.isCreatedPlayer = true;
                        VideoPlayer.this.mSurfaceView.setVisibility(0);
                        VideoPlayer.this.mPlayerManager.prepareAsync();
                        return;
                    case 53:
                        if (!VideoPlayer.this.mPlayerManager.isPrepared || VideoPlayer.this.mPlayerManager.isPlayError) {
                            return;
                        }
                        VideoPlayer.this.setScaleVideoSize(VideoPlayer.this.mVideoWidth, VideoPlayer.this.mVideoHeight, message.arg1, message.arg2);
                        return;
                    case 54:
                        VideoPlayer.this.setPlayProgress(message.arg1);
                        VideoPlayer.this.mPlayerManager.mVideoCallback.onProgress(message.arg1);
                        return;
                    case 55:
                        if (VideoPlayer.this.mProgressImageView != null) {
                            Bitmap bitmap = (Bitmap) message.obj;
                            if (bitmap != null) {
                                VideoPlayer.this.mProgressImageView.setImageBitmap(bitmap);
                            }
                            if (VideoPlayer.this.mBitmapTime != VideoPlayer.this.mBitmapProgress) {
                                VideoPlayer.this.setImageViewProgress(VideoPlayer.this.mBitmapProgress);
                                return;
                            } else {
                                VideoPlayer.this.isLoadingBitmap = false;
                                return;
                            }
                        }
                        return;
                    case 56:
                        VideoPlayer.access$508(VideoPlayer.this);
                        Toast.makeText(VideoPlayer.this.getContext(), "播放超时！", 1).show();
                        return;
                }
            }
        };
        this.mOnAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.yftech.car.widget.media.video.VideoPlayer.2
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i) {
                boolean z;
                StringBuilder sb = new StringBuilder();
                sb.append("onAudioFocusChange: focusChange==");
                sb.append(i);
                sb.append(",isPlayError==");
                sb.append(VideoPlayer.this.mPlayerManager.isPlayError);
                sb.append(",isPlayState==");
                sb.append(VideoPlayer.this.mPlayerManager.isPlayState);
                sb.append(",isUserHandleError==");
                sb.append(VideoPlayer.this.isUserHandleError);
                sb.append(",mSurfaceHolder!=null ");
                sb.append(VideoPlayer.this.mSurfaceHolder != null);
                sb.append(",(!hasWindowFocusPlay || hasWindowFocus())==");
                sb.append(!VideoPlayer.this.hasWindowFocusPlay || VideoPlayer.this.hasWindowFocus());
                Loger.d(VideoPlayer.TAG, sb.toString());
                if (VideoPlayer.this.mPlayerManager.mVideoCallback.onAudioFocusChange(i)) {
                    Loger.e(VideoPlayer.TAG, "onAudioFocusChange: return app");
                    z = true;
                } else {
                    z = false;
                }
                if (i != 1) {
                    switch (i) {
                        case -2:
                            VideoPlayer.this.mPlayerManager.isPlayBeforeLossFocus = true;
                            VideoPlayer.this.mPlayerManager.isAudioFocus = false;
                            if (VideoPlayer.this.mPlayerManager.isPlayError) {
                                VideoPlayer.this.mHandler.removeMessages(50);
                                return;
                            }
                            VideoPlayer.this.updateSaveTime();
                            if (z) {
                                return;
                            }
                            VideoPlayer.this.mPlayerManager.pause(false);
                            return;
                        case -1:
                            if (VideoPlayer.this.mHandler.hasMessages(56)) {
                                VideoPlayer.this.mHandler.removeMessages(56);
                            }
                            if (VideoPlayer.this.mHandler.hasMessages(50)) {
                                VideoPlayer.this.mPlayerManager.isPlayError = false;
                                VideoPlayer.this.mHandler.removeMessages(50);
                            }
                            VideoPlayer.this.mPlayerManager.isAudioFocus = false;
                            VideoPlayer.this.mPlayerManager.isPlayBeforeLossFocus = false;
                            VideoPlayer.this.updateSaveTime();
                            if (z) {
                                return;
                            }
                            VideoPlayer.this.mPlayerManager.pause(false);
                            VideoPlayer.this.abandonAudioFocus();
                            return;
                        default:
                            return;
                    }
                }
                VideoPlayer.this.mPlayerManager.isAudioFocus = true;
                if (!VideoPlayer.this.mPlayerManager.isPlayError) {
                    if (!z && VideoPlayer.this.mPlayerManager.isPlayState && VideoPlayer.this.mSurfaceHolder != null && ((!VideoPlayer.this.hasWindowFocusPlay || VideoPlayer.this.hasWindowFocus()) && !VideoPlayer.this.isAvmShow())) {
                        VideoPlayer.this.mPlayerManager.play(false);
                        if (VideoPlayer.this.isPlaying()) {
                            VideoPlayer.this.mPlayerManager.updatePlayback();
                        }
                    }
                    if (VideoPlayer.this.mPlayerManager.isPlayBeforeLossFocus) {
                        VideoPlayer.this.requestAudioFocus(true);
                        return;
                    }
                    return;
                }
                if (VideoPlayer.this.isUserHandleError) {
                    return;
                }
                VideoPlayer.this.mHandler.sendEmptyMessage(50);
            }
        };
        this.mRunnableImageViewProgress = new Runnable() { // from class: com.yftech.car.widget.media.video.VideoPlayer.4
            @Override // java.lang.Runnable
            public void run() {
                if (VideoPlayer.this.mProgressImageView != null) {
                    Bitmap loadSeekProgressImage = VideoPlayer.this.mPlayerManager.mVideoCallback.loadSeekProgressImage(VideoPlayer.this.mPlayerManager.mCurrentPlay.getData(), VideoPlayer.this.mBitmapTime, VideoPlayer.this.mProgressImageView.getWidth(), VideoPlayer.this.mProgressImageView.getHeight());
                    if (loadSeekProgressImage == null) {
                        loadSeekProgressImage = VideoBitmapUtil.loadVideo(VideoPlayer.this.mPlayerManager.mCurrentPlay.getData(), VideoPlayer.this.mBitmapTime, VideoPlayer.this.mProgressImageView.getWidth(), VideoPlayer.this.mProgressImageView.getHeight());
                    }
                    VideoPlayer.this.mHandler.obtainMessage(55, loadSeekProgressImage).sendToTarget();
                }
            }
        };
        this.mOnSeekBar = new SeekBar.OnSeekBarChangeListener() { // from class: com.yftech.car.widget.media.video.VideoPlayer.5
            private boolean isCancel = false;

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (!z || this.isCancel) {
                    return;
                }
                if (VideoPlayer.this.mProgressImageView != null) {
                    long j = i;
                    VideoPlayer.this.mBitmapProgress = j;
                    if (!VideoPlayer.this.isLoadingBitmap) {
                        VideoPlayer.this.isLoadingBitmap = true;
                        VideoPlayer.this.setImageViewProgress(j);
                    }
                }
                if (VideoPlayer.this.isSeekVideoImage) {
                    VideoPlayer.this.setPlayProgress(i);
                }
                if (VideoPlayer.this.mPlayerManager.mVideoCallback == null || VideoPlayer.this.mPlayerManager.isPlayError) {
                    return;
                }
                VideoPlayer.this.mPlayerManager.mVideoCallback.onProgress(i);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                VideoPlayer.this.mPlayerManager.isSeekBar = true;
                if ((VideoPlayer.this.mLayoutChildManager == null || !VideoPlayer.this.mLayoutChildManager.isAnimationLoading()) && !VideoPlayer.this.isOnTouchClick()) {
                    if (VideoPlayer.this.isSeekPause) {
                        VideoPlayer.this.mPlayerManager.pause(false);
                    }
                    if (VideoPlayer.this.mPlayerManager.mVideoCallback == null || VideoPlayer.this.mPlayerManager.isPlayError) {
                        return;
                    }
                    VideoPlayer.this.mPlayerManager.mVideoCallback.onStartTrackingTouch(seekBar.getId(), true);
                    return;
                }
                this.isCancel = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                VideoPlayer.this.mPlayerManager.isSeekBar = false;
                if (this.isCancel) {
                    this.isCancel = false;
                    return;
                }
                VideoPlayer.this.setPlayProgress(seekBar.getProgress());
                if (VideoPlayer.this.isSeekPlay) {
                    VideoPlayer.this.mPlayerManager.play(false);
                }
                if (VideoPlayer.this.mPlayerManager.mVideoCallback == null || VideoPlayer.this.mPlayerManager.isPlayError) {
                    return;
                }
                VideoPlayer.this.mPlayerManager.mVideoCallback.onStartTrackingTouch(seekBar.getId(), false);
            }
        };
        initData(context, attributeSet);
        initListener();
    }

    public VideoPlayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mInitData = true;
        this.mList = new ArrayList();
        this.mRandomList = new ArrayList();
        this.mUsage = 1;
        this.mContentType = 3;
        this.mUiSetProgress = -1;
        this.mPlayMode = 100;
        this.mUiStartPlay = true;
        this.mBitmapTime = 0L;
        this.isLoadingBitmap = false;
        this.mScaleType = 200;
        this.isSeekPause = true;
        this.isSeekPlay = true;
        this.isSeekVideoImage = false;
        this.isSlideBrightness = false;
        this.isSlideAudio = false;
        this.mSlideForward = false;
        this.mSlideProportion = 50;
        this.mDialogError = false;
        this.mWinHideSurfaceGone = true;
        this.mSystemUIToTheTimeAutoHidden = true;
        this.mIsVideoSeekImageWhetherToFollowSeekBar = true;
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.yftech.car.widget.media.video.VideoPlayer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 48:
                        VideoPlayer.this.mHandler.sendEmptyMessageDelayed(48, 1000L);
                        VideoPlayer.this.updateTime();
                        return;
                    case 49:
                    default:
                        return;
                    case 50:
                        VideoPlayer.access$208(VideoPlayer.this);
                        if (VideoPlayer.this.playErrorCount < VideoPlayer.this.mList.size()) {
                            VideoPlayer.this.switchVideo(true);
                        } else {
                            VideoPlayer.this.stopPlayer();
                        }
                        Loger.d("setPlayErrorException: playErrorCount==" + VideoPlayer.this.playErrorCount + ", list.size()==" + VideoPlayer.this.mList.size());
                        return;
                    case 51:
                        VideoPlayer.this.mPlayerManager.mVideoCallback.onDoubleClick(false);
                        VideoPlayer.this.playSoundEffect(0);
                        return;
                    case 52:
                        VideoPlayer.this.mPlayerManager.isCreatedPlayer = true;
                        VideoPlayer.this.mSurfaceView.setVisibility(0);
                        VideoPlayer.this.mPlayerManager.prepareAsync();
                        return;
                    case 53:
                        if (!VideoPlayer.this.mPlayerManager.isPrepared || VideoPlayer.this.mPlayerManager.isPlayError) {
                            return;
                        }
                        VideoPlayer.this.setScaleVideoSize(VideoPlayer.this.mVideoWidth, VideoPlayer.this.mVideoHeight, message.arg1, message.arg2);
                        return;
                    case 54:
                        VideoPlayer.this.setPlayProgress(message.arg1);
                        VideoPlayer.this.mPlayerManager.mVideoCallback.onProgress(message.arg1);
                        return;
                    case 55:
                        if (VideoPlayer.this.mProgressImageView != null) {
                            Bitmap bitmap = (Bitmap) message.obj;
                            if (bitmap != null) {
                                VideoPlayer.this.mProgressImageView.setImageBitmap(bitmap);
                            }
                            if (VideoPlayer.this.mBitmapTime != VideoPlayer.this.mBitmapProgress) {
                                VideoPlayer.this.setImageViewProgress(VideoPlayer.this.mBitmapProgress);
                                return;
                            } else {
                                VideoPlayer.this.isLoadingBitmap = false;
                                return;
                            }
                        }
                        return;
                    case 56:
                        VideoPlayer.access$508(VideoPlayer.this);
                        Toast.makeText(VideoPlayer.this.getContext(), "播放超时！", 1).show();
                        return;
                }
            }
        };
        this.mOnAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.yftech.car.widget.media.video.VideoPlayer.2
            @Override // android.media.AudioManager.OnAudioFocusChangeListener
            public void onAudioFocusChange(int i2) {
                boolean z;
                StringBuilder sb = new StringBuilder();
                sb.append("onAudioFocusChange: focusChange==");
                sb.append(i2);
                sb.append(",isPlayError==");
                sb.append(VideoPlayer.this.mPlayerManager.isPlayError);
                sb.append(",isPlayState==");
                sb.append(VideoPlayer.this.mPlayerManager.isPlayState);
                sb.append(",isUserHandleError==");
                sb.append(VideoPlayer.this.isUserHandleError);
                sb.append(",mSurfaceHolder!=null ");
                sb.append(VideoPlayer.this.mSurfaceHolder != null);
                sb.append(",(!hasWindowFocusPlay || hasWindowFocus())==");
                sb.append(!VideoPlayer.this.hasWindowFocusPlay || VideoPlayer.this.hasWindowFocus());
                Loger.d(VideoPlayer.TAG, sb.toString());
                if (VideoPlayer.this.mPlayerManager.mVideoCallback.onAudioFocusChange(i2)) {
                    Loger.e(VideoPlayer.TAG, "onAudioFocusChange: return app");
                    z = true;
                } else {
                    z = false;
                }
                if (i2 != 1) {
                    switch (i2) {
                        case -2:
                            VideoPlayer.this.mPlayerManager.isPlayBeforeLossFocus = true;
                            VideoPlayer.this.mPlayerManager.isAudioFocus = false;
                            if (VideoPlayer.this.mPlayerManager.isPlayError) {
                                VideoPlayer.this.mHandler.removeMessages(50);
                                return;
                            }
                            VideoPlayer.this.updateSaveTime();
                            if (z) {
                                return;
                            }
                            VideoPlayer.this.mPlayerManager.pause(false);
                            return;
                        case -1:
                            if (VideoPlayer.this.mHandler.hasMessages(56)) {
                                VideoPlayer.this.mHandler.removeMessages(56);
                            }
                            if (VideoPlayer.this.mHandler.hasMessages(50)) {
                                VideoPlayer.this.mPlayerManager.isPlayError = false;
                                VideoPlayer.this.mHandler.removeMessages(50);
                            }
                            VideoPlayer.this.mPlayerManager.isAudioFocus = false;
                            VideoPlayer.this.mPlayerManager.isPlayBeforeLossFocus = false;
                            VideoPlayer.this.updateSaveTime();
                            if (z) {
                                return;
                            }
                            VideoPlayer.this.mPlayerManager.pause(false);
                            VideoPlayer.this.abandonAudioFocus();
                            return;
                        default:
                            return;
                    }
                }
                VideoPlayer.this.mPlayerManager.isAudioFocus = true;
                if (!VideoPlayer.this.mPlayerManager.isPlayError) {
                    if (!z && VideoPlayer.this.mPlayerManager.isPlayState && VideoPlayer.this.mSurfaceHolder != null && ((!VideoPlayer.this.hasWindowFocusPlay || VideoPlayer.this.hasWindowFocus()) && !VideoPlayer.this.isAvmShow())) {
                        VideoPlayer.this.mPlayerManager.play(false);
                        if (VideoPlayer.this.isPlaying()) {
                            VideoPlayer.this.mPlayerManager.updatePlayback();
                        }
                    }
                    if (VideoPlayer.this.mPlayerManager.isPlayBeforeLossFocus) {
                        VideoPlayer.this.requestAudioFocus(true);
                        return;
                    }
                    return;
                }
                if (VideoPlayer.this.isUserHandleError) {
                    return;
                }
                VideoPlayer.this.mHandler.sendEmptyMessage(50);
            }
        };
        this.mRunnableImageViewProgress = new Runnable() { // from class: com.yftech.car.widget.media.video.VideoPlayer.4
            @Override // java.lang.Runnable
            public void run() {
                if (VideoPlayer.this.mProgressImageView != null) {
                    Bitmap loadSeekProgressImage = VideoPlayer.this.mPlayerManager.mVideoCallback.loadSeekProgressImage(VideoPlayer.this.mPlayerManager.mCurrentPlay.getData(), VideoPlayer.this.mBitmapTime, VideoPlayer.this.mProgressImageView.getWidth(), VideoPlayer.this.mProgressImageView.getHeight());
                    if (loadSeekProgressImage == null) {
                        loadSeekProgressImage = VideoBitmapUtil.loadVideo(VideoPlayer.this.mPlayerManager.mCurrentPlay.getData(), VideoPlayer.this.mBitmapTime, VideoPlayer.this.mProgressImageView.getWidth(), VideoPlayer.this.mProgressImageView.getHeight());
                    }
                    VideoPlayer.this.mHandler.obtainMessage(55, loadSeekProgressImage).sendToTarget();
                }
            }
        };
        this.mOnSeekBar = new SeekBar.OnSeekBarChangeListener() { // from class: com.yftech.car.widget.media.video.VideoPlayer.5
            private boolean isCancel = false;

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i2, boolean z) {
                if (!z || this.isCancel) {
                    return;
                }
                if (VideoPlayer.this.mProgressImageView != null) {
                    long j = i2;
                    VideoPlayer.this.mBitmapProgress = j;
                    if (!VideoPlayer.this.isLoadingBitmap) {
                        VideoPlayer.this.isLoadingBitmap = true;
                        VideoPlayer.this.setImageViewProgress(j);
                    }
                }
                if (VideoPlayer.this.isSeekVideoImage) {
                    VideoPlayer.this.setPlayProgress(i2);
                }
                if (VideoPlayer.this.mPlayerManager.mVideoCallback == null || VideoPlayer.this.mPlayerManager.isPlayError) {
                    return;
                }
                VideoPlayer.this.mPlayerManager.mVideoCallback.onProgress(i2);
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                VideoPlayer.this.mPlayerManager.isSeekBar = true;
                if ((VideoPlayer.this.mLayoutChildManager == null || !VideoPlayer.this.mLayoutChildManager.isAnimationLoading()) && !VideoPlayer.this.isOnTouchClick()) {
                    if (VideoPlayer.this.isSeekPause) {
                        VideoPlayer.this.mPlayerManager.pause(false);
                    }
                    if (VideoPlayer.this.mPlayerManager.mVideoCallback == null || VideoPlayer.this.mPlayerManager.isPlayError) {
                        return;
                    }
                    VideoPlayer.this.mPlayerManager.mVideoCallback.onStartTrackingTouch(seekBar.getId(), true);
                    return;
                }
                this.isCancel = true;
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                VideoPlayer.this.mPlayerManager.isSeekBar = false;
                if (this.isCancel) {
                    this.isCancel = false;
                    return;
                }
                VideoPlayer.this.setPlayProgress(seekBar.getProgress());
                if (VideoPlayer.this.isSeekPlay) {
                    VideoPlayer.this.mPlayerManager.play(false);
                }
                if (VideoPlayer.this.mPlayerManager.mVideoCallback == null || VideoPlayer.this.mPlayerManager.isPlayError) {
                    return;
                }
                VideoPlayer.this.mPlayerManager.mVideoCallback.onStartTrackingTouch(seekBar.getId(), false);
            }
        };
        initData(context, attributeSet);
        initListener();
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    protected void initData(Context context, AttributeSet attributeSet) {
        this.mAudioManager = (AudioManager) getContext().getSystemService(PowerProfile.POWER_AUDIO);
        this.mPlayerManager = new PlayerManager(this, this.mHandler);
        setBackgroundColor(getContext().getColor(17170444));
        this.mSp = getContext().getSharedPreferences("media_video_memory_play", 0);
        this.mMediaSession = new MediaSessionManager(this);
        this.mInitData = true;
        if (attributeSet != null) {
            this.mAttributeSet = attributeSet;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VideoPlayer);
            int i = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_video_decoding_mode, 0);
            this.mUsage = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_request_audio_focus_usage, 1);
            this.mStreamType = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_request_audio_focus_stream_type, 3);
            this.mContentType = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_request_audio_focus_content_type, 3);
            this.mSystemUiVisibilityShow = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_systemUiVisibility_show, 0);
            this.mSystemUiVisibilityHide = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_systemUiVisibility_hide, -1);
            this.mAutoCountdownHide = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_auto_countdown_hide, 0);
            this.mClickSwitchHideShow = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_click_switch_hide_show, 0);
            this.mDoubleClickSwitchHideShow = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_double_click_switch_hide_show, 0);
            this.mVideoHideShowAnimation = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_video_hide_show_animation, 0);
            this.mVideoHideShowAnimationDuration = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_video_hide_show_animation_duration, MetricsProto.MetricsEvent.KEYBOARD_SHORTCUTS_HELPER);
            this.mVideoPreviousReplayTime = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_video_previous_replay_time, 0);
            this.mPlayMode = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_video_play_mode, 100);
            this.mVideoSlideProgress = obtainStyledAttributes.getBoolean(R.styleable.VideoPlayer_video_slide_progress, true);
            this.mVideoSlideShowSeekImage = obtainStyledAttributes.getBoolean(R.styleable.VideoPlayer_video_slide_show_seek_image, false);
            setSoftSolutionPlay(i);
            this.mScaleType = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_default_scale_type, 200);
            this.mSlideProportion = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_slide_proportion, 50);
            this.mAutoHideTime = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_auto_hide_time, 0);
            int i2 = obtainStyledAttributes.getInt(R.styleable.VideoPlayer_ErrorAutoNextDelayMillis, PathInterpolatorCompat.MAX_NUM_POINTS);
            if (i2 < 100) {
                Log.e(TAG, "initData: ErrorAutoNextDelayMillis Cannot be less than 100");
                i2 = 100;
            }
            setErrorAutoNextDelayMillis(i2);
            setSpeedLimitPlayback(obtainStyledAttributes.getInt(R.styleable.VideoPlayer_SpeedLimitPlayback, 0));
            this.isSeekPause = obtainStyledAttributes.getBoolean(R.styleable.VideoPlayer_seekPause, true);
            this.isSeekPlay = obtainStyledAttributes.getBoolean(R.styleable.VideoPlayer_seek_stop_play, true);
            this.isSeekVideoImage = obtainStyledAttributes.getBoolean(R.styleable.VideoPlayer_seek_video_image, false);
            this.hasWindowFocusPlay = obtainStyledAttributes.getBoolean(R.styleable.VideoPlayer_video_has_window_focus_play, true);
            this.mPlayerManager.setToastVideoFileNoExists(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_video_file_no_exists));
            this.mPlayerManager.setToastUdiskDisconnect(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_udisk_disconnect));
            this.mPlayerManager.setToastVideoAsyncIllegalState(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_video_async_illegal_state));
            this.mPlayerManager.setToastFormatIsNotSupported(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_format_is_not_supported));
            this.mPlayerManager.setToastResourcesAreOccupied(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_resources_are_occupied));
            this.mPlayerManager.setToastInfoVideoNotPlaying(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_info_video_not_playing));
            this.mPlayerManager.setToastInfoAudioNotPlaying(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_info_audio_not_playing));
            this.mPlayerManager.setToastVideoFileNoExistsLayoutId(obtainStyledAttributes.getResourceId(R.styleable.VideoPlayer_toast_video_file_no_exists_layout_id, -1));
            this.mPlayerManager.setToastUdiskDisconnectLayoutId(obtainStyledAttributes.getResourceId(R.styleable.VideoPlayer_toast_udisk_disconnect_layout_id, -1));
            this.mPlayerManager.setToastVideoAsyncIllegalStateLayoutId(obtainStyledAttributes.getResourceId(R.styleable.VideoPlayer_toast_video_async_illegal_state_layout_id, -1));
            this.mPlayerManager.setToastFormatIsNotSupportedLayoutId(obtainStyledAttributes.getResourceId(R.styleable.VideoPlayer_toast_format_is_not_supported_layout_id, -1));
            this.mPlayerManager.setToastResourcesAreOccupiedLayoutId(obtainStyledAttributes.getResourceId(R.styleable.VideoPlayer_toast_resources_are_occupied_layout_id, -1));
            this.mPlayerManager.setToastInfoVideoNotPlayingLayoutId(obtainStyledAttributes.getResourceId(R.styleable.VideoPlayer_toast_info_video_not_playing_layout_id, -1));
            this.mPlayerManager.setToastInfoAudioNotPlayingLayoutId(obtainStyledAttributes.getResourceId(R.styleable.VideoPlayer_toast_info_audio_not_playing_layout_id, -1));
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.Dialog);
            this.mDialogFlags = obtainStyledAttributes2.getInt(R.styleable.Dialog_dialog_flags, 0);
            this.mErrorDialogLayoutId = obtainStyledAttributes2.getResourceId(R.styleable.Dialog_dialog_layout_id, -1);
            this.mSearchClearHistoryDialogThemeResId = obtainStyledAttributes2.getResourceId(R.styleable.Dialog_dialog_themeResId, 0);
            this.mDialogCancelable = obtainStyledAttributes2.getBoolean(R.styleable.Dialog_dialog_cancelable, true);
            this.DialogWidthHeight = new Size((int) obtainStyledAttributes2.getDimension(R.styleable.Dialog_dialog_width, -2.0f), (int) obtainStyledAttributes2.getDimension(R.styleable.Dialog_dialog_height, -2.0f));
        }
        this.mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        createdSurface();
    }

    private SurfaceHolder createdSurface() {
        if (this.mSurfaceView != null) {
            this.mSurfaceView.getHolder().removeCallback(this);
            this.mSurfaceView.setVisibility(8);
            removeView(this.mSurfaceView);
        }
        this.mSurfaceView = new SurfaceView(getContext());
        addView(this.mSurfaceView);
        ((FrameLayout.LayoutParams) this.mSurfaceView.getLayoutParams()).gravity = 17;
        SurfaceHolder holder = this.mSurfaceView.getHolder();
        holder.addCallback(this);
        holder.setType(3);
        holder.setKeepScreenOn(true);
        this.mSurfaceView.setFocusable(true);
        this.mSurfaceView.setFocusableInTouchMode(true);
        requestFocus();
        this.mSurfaceView.setZOrderMediaOverlay(true);
        return holder;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    protected void initListener() {
        setOnTouchListener(this);
    }

    @Override // android.view.View
    public Handler getHandler() {
        return this.mHandler;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mAttributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(this.mAttributeSet, R.styleable.VideoPlayer);
            this.mPlayerManager.setToastVideoFileNoExists(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_video_file_no_exists));
            this.mPlayerManager.setToastUdiskDisconnect(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_udisk_disconnect));
            this.mPlayerManager.setToastVideoAsyncIllegalState(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_video_async_illegal_state));
            this.mPlayerManager.setToastFormatIsNotSupported(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_format_is_not_supported));
            this.mPlayerManager.setToastResourcesAreOccupied(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_resources_are_occupied));
            this.mPlayerManager.setToastInfoVideoNotPlaying(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_info_video_not_playing));
            this.mPlayerManager.setToastInfoAudioNotPlaying(obtainStyledAttributes.getString(R.styleable.VideoPlayer_toast_info_audio_not_playing));
        }
    }

    private synchronized int saveProgress(int i) {
        Log.d(TAG, "saveProgress: newValue==" + i);
        SharedPreferences.Editor edit = this.mSp.edit();
        edit.putInt("play_progress" + this.mCurrentUsb, i);
        edit.apply();
        edit.commit();
        return i;
    }

    private synchronized void saveId(long j) {
        SharedPreferences.Editor edit = this.mSp.edit();
        edit.putLong("play_id" + this.mCurrentUsb, j);
        edit.apply();
        edit.commit();
    }

    private synchronized void saveDataPath(String str) {
        SharedPreferences.Editor edit = this.mSp.edit();
        edit.putString("data_path" + this.mCurrentUsb, str);
        edit.apply();
        edit.commit();
    }

    private synchronized int getSaveProgress() {
        return this.mSp.getInt("play_progress" + this.mCurrentUsb, 0);
    }

    private synchronized long getSaveId() {
        return this.mSp.getLong("play_id" + this.mCurrentUsb, -1L);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void setLayoutChildManager(VideoLayoutChildManager videoLayoutChildManager) {
        this.mLayoutChildManager = videoLayoutChildManager;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getAutoHideTime() {
        return this.mAutoHideTime;
    }

    public void setSystemUiVisibilityShow(int i) {
        this.mSystemUiVisibilityShow = i;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getSystemUiVisibilityShow() {
        return this.mSystemUiVisibilityShow;
    }

    public void setSystemUiVisibilityHide(int i) {
        this.mSystemUiVisibilityHide = i;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getSystemUiVisibilityHide() {
        return this.mSystemUiVisibilityHide;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isAutoCountdownHide(int i) {
        return (this.mAutoCountdownHide & i) > 0;
    }

    public void setSystemUIToTheTimeAutoHidden(boolean z) {
        this.mSystemUIToTheTimeAutoHidden = z;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isSystemUIToTheTimeAutoHidden() {
        return this.mSystemUIToTheTimeAutoHidden;
    }

    public void setVideoSeekImageWhetherToFollowSeekBar(boolean z) {
        this.mIsVideoSeekImageWhetherToFollowSeekBar = z;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isVideoSeekImageWhetherToFollowSeekBar() {
        return this.mIsVideoSeekImageWhetherToFollowSeekBar;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isClickSwitchHideShow(int i) {
        return (this.mClickSwitchHideShow & i) > 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isDoubleClickSwitchHideShow(int i) {
        return (this.mDoubleClickSwitchHideShow & i) > 0;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getVideoHideShowAnimation() {
        return this.mVideoHideShowAnimation;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getVideoHideShowAnimationDuration() {
        return this.mVideoHideShowAnimationDuration;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isSoftSolution() {
        return this.mPlayerManager != null && this.mPlayerManager.isSoftSolution();
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isPlayError() {
        return this.mPlayerManager != null && this.mPlayerManager.isPlayError;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getCurrentUsb() {
        return this.mCurrentUsb;
    }

    public void setOnTouchGesture(boolean z) {
        setOnTouchListener(z ? this : null);
    }

    public void setSeekPause(boolean z) {
        this.isSeekPause = z;
    }

    public void setPlaybackParams(float f) {
        if (f >= 0.5d && f <= 2.0f) {
            this.mPlayerManager.mPlayback = f;
            if (this.mPlayerManager.isPrepared) {
                this.mPlayerManager.updatePlayback();
            }
            this.mPlayerManager.mVideoCallback.onPlaybackParams(f);
            return;
        }
        Log.e(TAG, "setmPlayback: Out of range 《playback>=0.5 && playback <=2.0f》 ,playback==" + f);
    }

    public float getPlaybackParams() {
        return this.mPlayerManager.mPlayback;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public List<MediaFile> getPlayList() {
        return this.mList;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void switchScaleType() {
        if (this.mScaleType >= 200 && this.mScaleType < 202) {
            setScaleType(this.mScaleType + 1);
        } else {
            setScaleType(200);
        }
    }

    public void setScaleType(int i) {
        if (i < 200 || i > 202) {
            Log.e(TAG, "setScaleType: type values invalid,type==" + i);
            i = 200;
        }
        this.mScaleType = i;
        if (this.mPlayerManager.isPrepared && !this.mPlayerManager.isPlayError) {
            setScaleVideoSize();
        }
        this.mPlayerManager.mVideoCallback.onScaleType(i);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getScaleType() {
        return this.mScaleType;
    }

    @Deprecated
    public void setWinHideSurfaceGone(boolean z) {
        this.mWinHideSurfaceGone = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTime() {
        if (this.mPlayerManager.isPrepared) {
            if (isPlaying()) {
                this.mPlayerManager.mProgress = getProgressPosition();
                if (!this.mPlayerManager.isSeekBar && this.mPlayerManager.mProgress > this.mPlayerManager.mSetProgress) {
                    this.mPlayerManager.mVideoCallback.onProgress(this.mPlayerManager.mProgress);
                    this.mMediaSession.setPlaybackStateCompat(3, this.mPlayerManager.mProgress, this.mPlayerManager.mPlayback);
                }
            }
            if (this.mSurfaceHolder != null && this.mSurfaceView.getVisibility() == 0) {
                if (!this.mPlayerManager.isSurfaceHolderNoCreating() || this.mSurfaceHolder.isCreating()) {
                    return;
                }
                this.mSurfaceHolder = this.mSurfaceView.getHolder();
                Surface surface = this.mSurfaceHolder.getSurface();
                if (surface == null || !surface.isValid()) {
                    return;
                }
                try {
                    this.mPlayerManager.setDisplay(this.mSurfaceHolder);
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            }
            Loger.e(TAG, " updateTime: mSurfaceHolder is null , mSurfaceView Visibility== " + this.mSurfaceView.getVisibility());
        }
    }

    private void setRandomData() {
        if (this.mPlayMode == 102) {
            this.mRandomList.clear();
            for (int i = 0; i < this.mList.size(); i++) {
                if (this.mPlayPosition != i) {
                    this.mRandomList.add(Integer.valueOf(i));
                }
            }
            Collections.shuffle(this.mRandomList);
            this.mRandomList.add(0, Integer.valueOf(this.mPlayPosition));
            this.mPlayPosition = 0;
            return;
        }
        if (this.mPlayerManager.mCurrentPlay != null) {
            for (int i2 = 0; i2 < this.mList.size(); i2++) {
                if (this.mPlayerManager.mCurrentPlay.getData().equals(this.mList.get(i2).getData())) {
                    this.mPlayPosition = i2;
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void switchVideo(boolean z) {
        if (z) {
            if (this.mPlayPosition >= 0 && this.mPlayPosition < this.mList.size() - 1) {
                this.mPlayPosition++;
            } else {
                this.mPlayPosition = 0;
            }
        } else if (this.mPlayPosition >= 1 && this.mPlayPosition < this.mList.size()) {
            this.mPlayPosition--;
        } else {
            this.mPlayPosition = this.mList.size() - 1;
        }
        if (this.mPlayMode == 102) {
            if (this.mRandomList.size() > this.mPlayPosition) {
                this.mPlayRandom = this.mRandomList.get(this.mPlayPosition).intValue();
            } else {
                setRandomData();
                this.mPlayRandom = this.mRandomList.get(this.mPlayPosition).intValue();
            }
            MediaFile mediaFile = this.mList.get(this.mPlayRandom);
            if (mediaFile != null) {
                if (mediaFile.getData().equals(this.mPlayerManager.mCurrentPlay.getData())) {
                    this.mPlayerManager.mProgress = 0;
                }
                start(mediaFile, true);
                return;
            }
            return;
        }
        if (this.mPlayPosition >= this.mList.size()) {
            Loger.e("switchVideo: mPlayPosition >= mList.size()");
            return;
        }
        MediaFile mediaFile2 = this.mList.get(this.mPlayPosition);
        if (mediaFile2 != null) {
            if (mediaFile2.getData().equals(this.mPlayerManager.mCurrentPlay.getData())) {
                this.mPlayerManager.mProgress = 0;
            }
            start(mediaFile2, true);
        }
    }

    public void updateSaveTime() {
        if (this.mPlayerManager.mCurrentPlay != null) {
            saveId(this.mPlayerManager.mCurrentPlay.getId());
            saveDataPath(this.mPlayerManager.mCurrentPlay.getData());
            saveProgress(this.mPlayerManager.mProgress);
        }
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getPlayPosition() {
        if (this.mPlayMode == 102) {
            return this.mPlayRandom;
        }
        return this.mPlayPosition;
    }

    public void setPlayPosition(int i) {
        this.mPlayPosition = i;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getPlayListSize() {
        return this.mList.size();
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void switchPlayMode() {
        if (this.mPlayMode >= 100 && this.mPlayMode < 103) {
            setPlayMode(this.mPlayMode + 1);
        } else {
            setPlayMode(100);
        }
    }

    public void setPlayMode(int i) {
        if (i < 100 || i > 103) {
            Loger.e("setPlayMode: mode values invalid,mode==" + i);
            return;
        }
        this.mPlayMode = i;
        setRandomData();
        this.mPlayerManager.mVideoCallback.onPlayMode(i);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getPlayMode() {
        return this.mPlayMode;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public MediaFile getCurrentPlay() {
        return this.mPlayerManager.mCurrentPlay;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getProgressPosition() {
        return this.mPlayerManager.getProgressPosition();
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getDuration() {
        return this.mPlayerManager.getDuration();
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isVideoSlideShowSeekImage() {
        return this.mVideoSlideShowSeekImage;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean setPlayState(int i) {
        if (isHolderEmpty()) {
            Loger.e(TAG, " setPlayState: error current video is receding state==" + MediaKeyUtil.getVideoKeyValue(i));
            if (1 == i) {
                this.mPlayerManager.isPlayState = true;
            } else if (2 == i) {
                this.mPlayerManager.isPlayState = false;
            }
            return false;
        }
        if (!this.mPlayerManager.isPrepared) {
            Loger.e("setPlayState:  isPrepared is false state==" + MediaKeyUtil.getVideoKeyValue(i));
            if (this.mPlayerManager.mCurrentPlay != null && (1 == i || 3 == i)) {
                releaseMediaPlayer();
                start(this.mPlayerManager.mCurrentPlay, true);
            }
            if (i != 4 && i != 5) {
                return false;
            }
            releaseMediaPlayer();
        }
        Log.d(TAG, "setPlayState: state==" + MediaKeyUtil.getVideoKeyValue(i));
        if ((i == 4 || i == 5) && !isForegroundDisplay(true)) {
            Log.w(TAG, "setPlayState: ignore");
            return false;
        }
        switch (i) {
            case 1:
                this.mPlayerManager.play(true);
                return true;
            case 2:
                this.mPlayerManager.pause(true);
                return true;
            case 3:
                if (isPlaying()) {
                    this.mPlayerManager.pause(true);
                } else {
                    this.mPlayerManager.play(true);
                }
                return true;
            case 4:
                switchVideo(true);
                return true;
            case 5:
                if (this.mVideoPreviousReplayTime > 0 && this.mPlayerManager.getProgressPosition() > this.mVideoPreviousReplayTime) {
                    Loger.d(TAG, "prev: mVideoPreviousReplayTime==" + this.mVideoPreviousReplayTime);
                    this.mPlayerManager.mVideoCallback.onProgress(0);
                    setPlayProgress(0);
                    if (!this.mPlayerManager.isMediaPlaying()) {
                        this.mPlayerManager.play(true);
                    }
                } else {
                    switchVideo(false);
                }
                return true;
            default:
                Toast.makeText(getContext(), "指令不支持", 0).show();
                return false;
        }
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean startPlayList(List<MediaFile> list, int i) {
        return startPlayList(list, i, true);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean startPlayList(List<MediaFile> list, int i, boolean z) {
        if (list != null && list.size() > 0) {
            Loger.d(TAG, "startPlayList: list==" + list.size() + ",position==" + i + ",isPlay==" + z);
            if (list.size() > i) {
                MediaFile mediaFile = list.get(i);
                String data = mediaFile.getData();
                if (mediaFile.getType() == 1 && data != null) {
                    this.mList.clear();
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        if (list.get(i2).getType() == 1) {
                            this.mList.add(list.get(i2));
                        }
                    }
                    this.mPlayPosition = i;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= this.mList.size()) {
                            break;
                        }
                        if (data.equals(this.mList.get(i3).getData())) {
                            this.mPlayPosition = i3;
                            break;
                        }
                        i3++;
                    }
                    this.mUiStartPlay = z;
                    start(mediaFile, false);
                    return true;
                }
                Loger.e("startPlayList: mediaFile.getType() not video || data is null,mediaFile==" + mediaFile);
                return false;
            }
            Loger.e("startPlayList: list.size() < position");
            return false;
        }
        Loger.e("startPlayList: list == null || list.size() == 0");
        return false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean startPlay(MediaFile mediaFile) {
        return startPlay(mediaFile, true);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean startPlay(MediaFile mediaFile, boolean z) {
        if (mediaFile != null) {
            if (mediaFile.getType() == 1) {
                Loger.d(TAG, "startPlay: isPlay==" + z);
                if (this.mList.size() > 0) {
                    this.mList.clear();
                }
                this.mList.add(mediaFile);
                this.mUiStartPlay = z;
                this.mPlayPosition = 0;
                start(mediaFile, false);
                return true;
            }
            Loger.e("startPlay: mediaFile.getType() not video,mediaFile.getType()==" + mediaFile.getType());
            return false;
        }
        Loger.e("startPlayList: file == null");
        return false;
    }

    private void start(MediaFile mediaFile, boolean z) {
        this.mPlayerManager.loadDataPlay(mediaFile, z);
        this.mSurfaceView.requestLayout();
        this.mSurfaceView.invalidate();
    }

    public void setErrorAutoNextDelayMillis(int i) {
        if (i < 100) {
            throw new IllegalStateException("delayMillis Cannot be less than 100,must delayMillis >= 100");
        }
        this.mPlayerManager.setDelayMillis(i);
    }

    public void setSoftSolutionPlay(int i) {
        this.mPlayerManager.setSoftSolutionPlay(i);
    }

    public void setSpeedLimitPlayback(int i) {
        if (i >= 0) {
            this.mPlayerManager.mSpeedLimit = i;
            updateSpeed(this.mPlayerManager.mCurrentSpeed);
        } else {
            Log.e(TAG, "setSpeedLimitPlayback: The speed limit cannot be less than 0");
        }
    }

    public void updateSpeed(int i) {
        if (this.mPlayerManager.mCurrentSpeed == i) {
            return;
        }
        this.mPlayerManager.mCurrentSpeed = i;
        if (this.mPlayerManager.mSpeedLimit > 0 && this.mPlayerManager.mCurrentSpeed >= this.mPlayerManager.mSpeedLimit) {
            if (this.mPlayerManager.isMediaPlaying()) {
                this.mPlayerManager.pause(false);
            }
        } else {
            if (this.mPlayerManager.mSpeedLimit <= 0 || !this.mPlayerManager.isAudioFocus || !this.mPlayerManager.isPlayState || this.mSurfaceHolder == null || !isForegroundDisplay(true) || this.mPlayerManager.isMediaPlaying()) {
                return;
            }
            this.mPlayerManager.play(false);
        }
    }

    private boolean isForegroundDisplay(boolean z) {
        boolean isOpenScreenBrightness = CarScreenManager.getInstance().isOpenScreenBrightness();
        boolean hasWindowFocus = hasWindowFocus();
        boolean z2 = hasWindowFocus && isOpenScreenBrightness;
        if (z) {
            Log.w(TAG, "isForegroundDisplay, hasWindowFocus:" + hasWindowFocus + ",isOpenScreenBrightness:" + isOpenScreenBrightness);
        }
        return z2;
    }

    public int getSpeedLimit() {
        return this.mPlayerManager.mSpeedLimit;
    }

    public int getCurrentSpeed() {
        return this.mPlayerManager.mCurrentSpeed;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public int getMediaPlayInfoNotPlaying() {
        return this.mPlayerManager.getMediaPlayInfoNotPlaying();
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void addVideoCallback(BaseVideo.VideoListener videoListener) {
        this.mPlayerManager.addVideoCallback(videoListener);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void removeVideoCallback(BaseVideo.VideoListener videoListener) {
        this.mPlayerManager.removeVideoCallback(videoListener);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean requestAudioFocus() {
        return requestAudioFocus(false);
    }

    public boolean isAudioFocus() {
        return this.mPlayerManager.isAudioFocus;
    }

    public boolean isAudioFocus(boolean z) {
        if (z) {
            return this.mPlayerManager.isAudioFocus || this.mPlayerManager.isPlayBeforeLossFocus;
        }
        return this.mPlayerManager.isAudioFocus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean requestAudioFocus(boolean z) {
        int requestAudioFocus;
        if ((this.mPlayerManager.isAudioFocus || this.mPlayerManager.isPlayBeforeLossFocus) && !z) {
            return true;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            if (this.mAudioFocusRequest == null) {
                this.mAudioFocusRequest = new AudioFocusRequest.Builder(1).setAudioAttributes(new AudioAttributes.Builder().setLegacyStreamType(this.mStreamType).setContentType(this.mContentType).build()).setAcceptsDelayedFocusGain(true).setOnAudioFocusChangeListener(this.mOnAudioFocusChangeListener).build();
                Loger.e(TAG, "requestAudioFocus: ");
            }
            requestAudioFocus = this.mAudioManager.requestAudioFocus(this.mAudioFocusRequest);
        } else {
            requestAudioFocus = this.mAudioManager.requestAudioFocus(this.mOnAudioFocusChangeListener, this.mContentType, 1);
        }
        Loger.d(TAG, " requestAudioFocus: request==" + requestAudioFocus + ",mUsage==" + this.mUsage + ",mStreamType==" + this.mStreamType + ",mContentType==" + this.mContentType);
        this.mPlayerManager.isAudioFocus = requestAudioFocus == 1;
        if (Build.VERSION.SDK_INT >= 26) {
            this.mPlayerManager.isPlayBeforeLossFocus = requestAudioFocus == 2;
        } else {
            this.mPlayerManager.isPlayBeforeLossFocus = false;
        }
        if (!this.mPlayerManager.isAudioFocus && !this.mPlayerManager.isPlayBeforeLossFocus) {
            return false;
        }
        this.mMediaSession.setActive(true);
        return true;
    }

    public void abandonAudioFocus() {
        int abandonAudioFocus;
        Loger.d("abandonAudioFocus:");
        if (this.mPlayerManager.isAudioFocus || this.mPlayerManager.isPlayBeforeLossFocus) {
            if (this.mAudioFocusRequest != null) {
                if (Build.VERSION.SDK_INT >= 26) {
                    abandonAudioFocus = this.mAudioManager.abandonAudioFocusRequest(this.mAudioFocusRequest);
                } else {
                    abandonAudioFocus = this.mAudioManager.abandonAudioFocus(this.mOnAudioFocusChangeListener);
                }
            } else {
                abandonAudioFocus = this.mAudioManager.abandonAudioFocus(this.mOnAudioFocusChangeListener);
            }
            Loger.d("abandonAudioFocus: abandonAudioFocus == " + abandonAudioFocus);
        }
        this.mPlayerManager.isAudioFocus = false;
        this.mPlayerManager.isPlayBeforeLossFocus = false;
        this.mMediaSession.setActive(false);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isPlaying() {
        return this.mPlayerManager.isMediaPlaying();
    }

    public void stopPlayer() {
        this.mHandler.removeMessages(56);
        this.mPlayerManager.isPrepared = false;
        this.mPlayerManager.isPlayState = false;
        if (this.mPlayerManager.isRelease()) {
            return;
        }
        int progressPosition = getProgressPosition();
        if (progressPosition > 1000) {
            this.mPlayerManager.mProgress = progressPosition;
        }
        if (!this.mPlayerManager.isPlayError) {
            this.mPlayerManager.stop();
        }
        Loger.e("stopPlayer: MediaPlayer release --ok ");
        notifyPlayPause(false);
    }

    private void releaseMediaPlayer() {
        this.mHandler.removeMessages(56);
        this.mHandler.removeMessages(48);
        this.mHandler.removeMessages(52);
        this.mPlayerManager.isPrepared = false;
        this.mPlayerManager.isPlayState = false;
        if (!this.mPlayerManager.isRelease()) {
            this.mPlayerManager.release(!this.mPlayerManager.isPlayError);
        }
        this.mPlayerManager.isPlayError = false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void release() {
        this.mHandler.removeMessages(56);
        this.mHandler.removeMessages(48);
        this.mHandler.removeMessages(52);
        this.mPlayerManager.isPrepared = false;
        this.mPlayerManager.isPlayState = false;
        if (!this.mPlayerManager.isRelease()) {
            int progressPosition = getProgressPosition();
            if (progressPosition > 1000) {
                this.mPlayerManager.mProgress = progressPosition;
            }
            this.mPlayerManager.release(!this.mPlayerManager.isPlayError);
            Loger.e("releaseMediaPlayer: progress == " + progressPosition + ",MediaPlayer release --ok ");
        }
        notifyPlayPause(false);
        if (this.mSurfaceView != null) {
            this.mSurfaceView.getHolder().removeCallback(this);
            this.mSurfaceView.setVisibility(8);
        }
        if (this.mPlayerManager.mCurrentPlay != null) {
            saveId(this.mPlayerManager.mCurrentPlay.getId());
            saveDataPath(this.mPlayerManager.mCurrentPlay.getData());
            saveProgress(this.mPlayerManager.mProgress);
            VideoDataPlayManager.getInstance().updatePlayChange();
        }
        Loger.d(TAG, "release: updateMemory ---finish");
        this.mList.clear();
        this.mRandomList.clear();
        if (this.mConfirmDialog != null && this.mConfirmDialog.isShowing()) {
            this.mConfirmDialog.dismiss();
        }
        abandonAudioFocus();
        this.mPlayerManager.isPlayError = false;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void setStorageDisconnect() {
        this.mPlayerManager.mVideoCallback.onStorageDisconnect();
    }

    public void setPlayProgress(int i, ImageView imageView) {
        this.mProgressImageView = imageView;
        if (this.mProgressImageView != null) {
            long j = i;
            this.mBitmapProgress = j;
            if (!this.isLoadingBitmap) {
                this.isLoadingBitmap = true;
                setImageViewProgress(j);
            }
        }
        setPlayProgress(i);
    }

    public void setProgressImageView(ImageView imageView) {
        this.mProgressImageView = imageView;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void setPlayProgress(int i) {
        if (!this.mPlayerManager.isRelease() && this.mPlayerManager.isPrepared) {
            if (!this.mPlayerManager.isPlayError) {
                if (i < 0) {
                    i = 0;
                } else {
                    int duration = (int) this.mPlayerManager.mCurrentPlay.getDuration();
                    if (i > duration) {
                        i = duration;
                    }
                    Loger.d(TAG, "setPlayProgress: positionTime==" + i + ",duration==" + duration);
                }
                if (this.mUiSetProgress != -1) {
                    this.mUiSetProgress = i;
                }
                this.mPlayerManager.mProgress = i;
                this.mPlayerManager.seekTo(i);
                return;
            }
            Loger.e("setPlayProgress: current play error");
            return;
        }
        Loger.e("seekTo: mPlayerManager.isPrepared==" + this.mPlayerManager.isPrepared);
    }

    public boolean isHolderEmpty() {
        return this.mSurfaceHolder == null;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public SurfaceHolder getSurfaceHolder() {
        if (this.mSurfaceHolder == null) {
            this.mSurfaceHolder = this.mSurfaceView.getHolder();
        }
        return this.mSurfaceHolder;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isSurfaceVisibility(int i) {
        return this.mSurfaceView.getVisibility() == i;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public SurfaceView getSurfaceView() {
        return this.mSurfaceView;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void setSurfaceVisibility(int i) {
        this.mSurfaceView.setVisibility(i);
    }

    public void setCorrectionProgress(boolean z) {
        this.mUiSetProgress = z ? 0 : -1;
    }

    private void setScaleVideoSize() {
        setScaleVideoSize(this.mVideoWidth, this.mVideoHeight, getWidth(), getHeight());
    }

    private void setScaleVideoSize(int i, int i2) {
        setScaleVideoSize(i, i2, getWidth(), getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setScaleVideoSize(int i, int i2, int i3, int i4) {
        boolean z;
        Log.d(TAG, "setScaleVideoSize: videoWidth==" + i + ",videoHeight==" + i2 + ",screenWidth==" + i3 + ",screenHeight==" + i4);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mSurfaceView.getLayoutParams();
        if (i2 < 1 || i < 1) {
            layoutParams.width = i3;
            layoutParams.height = i4;
            this.mSurfaceView.requestLayout();
            return;
        }
        if (this.mScaleType == 202) {
            if (i3 > i || i4 > i2) {
                layoutParams.width = i;
                layoutParams.height = i2;
                this.mSurfaceView.requestLayout();
                return;
            }
        } else if (this.mScaleType != 200) {
            if (this.mScaleType == 201) {
                layoutParams.width = i3;
                layoutParams.height = i4;
                this.mSurfaceView.requestLayout();
            }
            z = false;
            if (z) {
                return;
            }
            int i5 = (i3 * i2) / i;
            int i6 = (i * i4) / i2;
            int i7 = i4 - i5;
            int i8 = i3 - i6;
            if (i8 < 1) {
                i8 = 0;
            }
            if (i7 < 1) {
                i7 = 0;
            }
            layoutParams.width = i3 - i8;
            layoutParams.height = i4 - i7;
            this.mSurfaceView.requestLayout();
            return;
        }
        z = true;
        if (z) {
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        Log.d(TAG, "onFinishInflate: ");
        startPlayList(VideoDataPlayManager.getInstance().getPlayList(), VideoDataPlayManager.getInstance().getPlayPosition());
        VideoDataPlayManager.getInstance().clearListData();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        Loger.d(TAG, "onWindowFocusChanged: hasWindowFocus==" + z + ",mPlayerManager.isPlayError==" + this.mPlayerManager.isPlayError + ",isUserHandleError==" + this.isUserHandleError + ",isAvmShow==" + isAvmShow() + ",mSurfaceView==" + this.mSurfaceView);
        if (z) {
            if (this.mPlayerManager.isPlayError) {
                createdSurface();
                if (!this.isUserHandleError) {
                    this.mHandler.removeMessages(50);
                    this.mHandler.sendEmptyMessageDelayed(50, 1000L);
                }
            }
            if (this.mSurfaceView == null) {
                createdSurface();
            }
            if (this.mSurfaceView.getVisibility() == 0 && this.mPlayerManager.isPrepared && this.mPlayerManager.isPlayState && !isAvmShow()) {
                this.mPlayerManager.play(false);
            }
            this.mSurfaceView.setVisibility(0);
            if (this.mDialogError) {
                this.mDialogError = false;
                this.mPlayerManager.isPrepared = true;
                switchVideo(true);
                return;
            }
            return;
        }
        this.mPlayerManager.pause(false);
        if (this.mPlayerManager.isPlayError) {
            if (this.mSurfaceHolder != null) {
                this.mSurfaceHolder.removeCallback(this);
            }
            removeView(this.mSurfaceView);
            this.mSurfaceView = null;
            releaseMediaPlayer();
            this.mPlayerManager.isPlayError = true;
            this.mHandler.removeMessages(50);
        }
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void resetSurface() {
        Loger.e(TAG, "resetSurface: ");
        this.mSurfaceView.getHolder().removeCallback(this);
        this.mSurfaceView.setVisibility(8);
        removeView(this.mSurfaceView);
        this.mSurfaceView = null;
        this.mSurfaceHolder = createdSurface();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d(TAG, "onAttachedToWindow: ");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.d(TAG, "onDetachedFromWindow: ");
        release();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mSurfaceHolder = surfaceHolder;
        if (this.mPlayerManager != null) {
            Log.d(TAG, "surfaceCreated: mPlayerManager.isCreatedPlayer==" + this.mPlayerManager.isCreatedPlayer + ",mUiStartPlay==" + this.mUiStartPlay + ",isPlayState==" + this.mPlayerManager.isPlayState);
            this.mPlayerManager.setDisplay(surfaceHolder);
            if (!this.mPlayerManager.isCreatedPlayer) {
                this.mPlayerManager.isCreatedPlayer = true;
                this.mPlayerManager.prepareAsync();
                return;
            }
            if (this.mPlayerManager.isRelease()) {
                if (this.mPlayerManager.mCurrentPlay != null && !this.mPlayerManager.isPlayError) {
                    this.mInitData = true;
                    this.mUiStartPlay = this.mPlayerManager.isPlayState;
                    start(this.mPlayerManager.mCurrentPlay, true);
                    return;
                } else {
                    Log.e(TAG, "surfaceCreated: mPlayerManager.isPlayError==" + this.mPlayerManager.isPlayError + ",mPlayerManager.mCurrentPlay==" + this.mPlayerManager.mCurrentPlay);
                    return;
                }
            }
            setPlayProgress(getProgressPosition());
            if (this.mPlayerManager.isPrepared && this.mPlayerManager.isPlayState) {
                this.mPlayerManager.play(false);
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.mSurfaceWidth = i2;
        this.mSurfaceHeight = i3;
        Loger.d("surfaceChanged: width==" + i2 + ",height==" + i3);
        if (this.mPlayerManager != null) {
            this.mPlayerManager.setDisplay(surfaceHolder);
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.d(TAG, "surfaceDestroyed: ");
        this.mSurfaceHolder = null;
        if (!this.mPlayerManager.isCreatedPlayer) {
            this.mHandler.removeMessages(52);
            this.mSurfaceView.setVisibility(0);
            return;
        }
        this.mPlayerManager.pause(false);
        if (this.mWinHideSurfaceGone) {
            this.mPlayerManager.setDisplay(this.mSurfaceHolder);
            updateSaveTime();
            this.mPlayerManager.release(!this.mPlayerManager.isPlayError);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        Loger.d(TAG, "onSizeChanged: isPlayError==" + this.mPlayerManager.isPlayError + ",width==" + i + ",height==" + i2);
        this.mHandler.obtainMessage(53, i, i2).sendToTarget();
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void onPrepared(int i, int i2) {
        Loger.d(TAG, "onPrepared: width==" + i + ",height==" + i2);
        this.mVideoWidth = i;
        this.mVideoHeight = i2;
        this.mPlayerManager.mSetProgress = 0;
        if (this.mVideoWidth != 0 && this.mVideoHeight != 0 && this.mSurfaceHolder != null) {
            this.mSurfaceHolder.setFixedSize(this.mVideoWidth, this.mVideoHeight);
        }
        this.mPlayerManager.isPrepared = true;
        if (!this.mPlayerManager.isPlayError) {
            setScaleVideoSize();
        }
        this.playErrorCount = 0;
        this.playTimeoutCount = 0;
        this.mHandler.removeMessages(56);
        this.mHandler.removeMessages(52);
        int duration = getDuration();
        this.mCurrentUsb = MediaDataManager.getInstance().getUsbIndex(this.mPlayerManager.mCurrentPlay.getData());
        if (this.mInitData) {
            this.mInitData = false;
            long saveId = getSaveId();
            int saveProgress = getSaveProgress();
            Loger.d("onPrepared: start play mCurrentPlay==" + this.mPlayerManager.mCurrentPlay.getData() + ",currentMemoryTime==" + saveProgress + ",duration==" + duration);
            if (saveId == this.mPlayerManager.mCurrentPlay.getId() && saveProgress > 0 && saveProgress < duration + NotificationManagerCompat.IMPORTANCE_UNSPECIFIED) {
                this.mHandler.obtainMessage(54, saveProgress, duration).sendToTarget();
                this.mPlayerManager.mProgress = saveProgress;
                Loger.e(TAG, "onPrepared: seekTo  ----------ok  ,mediaId==" + saveId + ",mPlayerManager.mCurrentPlay.getId()==" + this.mPlayerManager.mCurrentPlay.getId());
                this.mPlayerManager.mVideoCallback.onProgress(this.mPlayerManager.mProgress);
            } else {
                this.mPlayerManager.mVideoCallback.onProgress(0);
            }
        } else {
            if (this.mUiSetProgress != -1) {
                this.mUiSetProgress = 0;
            }
            this.mPlayerManager.mVideoCallback.onProgress(0);
        }
        this.mPlayerManager.mCurrentPlay.setDuration(duration);
        if (this.mSurfaceHolder != null && this.mSurfaceHolder.isCreating()) {
            this.mPlayerManager.setDisplay(this.mSurfaceHolder);
        }
        if (this.mUiStartPlay) {
            if (this.mSurfaceHolder != null && this.mSurfaceView.getVisibility() == 0) {
                requestAudioFocus();
                if (isAudioFocus()) {
                    this.mPlayerManager.play(true);
                } else {
                    Log.e(TAG, "onPrepared: isAudioFocus == " + this.mPlayerManager.isAudioFocus + ", isPlayBeforeLossFocus == " + this.mPlayerManager.isPlayBeforeLossFocus);
                }
            }
            this.mPlayerManager.isPlayState = true;
        } else {
            this.mPlayerManager.isPlayState = false;
        }
        if (isPlaying()) {
            this.mPlayerManager.updatePlayback();
        }
        notifyPlayPause(isPlaying());
        Loger.d("onPrepared: mMediaPlayer isPlaying == " + isPlaying() + ",mUiStartPlay==" + this.mUiStartPlay);
        this.mUiStartPlay = true;
        this.mPlayerManager.mVideoCallback.onPrepared(duration);
        this.mMediaSession.updatePlay(this.mPlayerManager.mCurrentPlay);
        VideoDataPlayManager.getInstance().updatePlayChange();
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void notifyPlayPause(boolean z) {
        this.mPlayerManager.mVideoCallback.onPlayingChange(z);
        this.mMediaSession.setPlaybackStateCompat(z ? 3 : 2, this.mPlayerManager.getProgressPosition(), this.mPlayerManager.mPlayback);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void onCompletion() {
        Loger.d("onCompletion: ");
        this.mPlayerManager.mVideoCallback.onProgress((int) this.mPlayerManager.mCurrentPlay.getDuration());
        this.mPlayerManager.mProgress = 0;
        switch (this.mPlayMode) {
            case 100:
            case 102:
                switchVideo(true);
                return;
            case 101:
                this.mPlayerManager.stop();
                start(this.mPlayerManager.mCurrentPlay, true);
                return;
            case 103:
                Log.d(TAG, "onCompletion: mPlayPosition==" + this.mPlayPosition + ",(mList.size()-1)==" + (this.mList.size() - 1));
                if (this.mPlayPosition < this.mList.size() - 1) {
                    switchVideo(true);
                    return;
                }
                Loger.d(TAG, "onCompletion: 播放完成 ,mPlayPosition==" + this.mPlayPosition + ",mList.size()==" + this.mList.size() + ",mList.sizeitem==" + this.mList.get(this.mPlayPosition));
                this.mPlayerManager.mVideoCallback.onPlaySequenceCompletion();
                return;
            default:
                return;
        }
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        return this.mPlayerManager.mVideoCallback.onInfo(i, i2);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public void onError(int i, String str) {
        Loger.e(TAG, " onError: code==" + i + ",codeMsg==" + str);
        releaseMediaPlayer();
        this.mPlayerManager.isPlayError = true;
        this.mPlayerManager.isPrepared = true;
        if (this.mPlayerManager.mVideoCallback.onPlayerError(i, -1000000000)) {
            Loger.e("onError: Upper layer treatment code==" + i + ",codeMsg==" + str);
            this.isUserHandleError = true;
            return;
        }
        this.isUserHandleError = false;
        this.mPlayerManager.setPlayErrorException(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isErrorDialog(String str) {
        if (this.mErrorDialogLayoutId == -1) {
            return false;
        }
        this.isUserHandleError = true;
        setDialogError(str);
        return true;
    }

    public void setDialogError(boolean z) {
        this.mDialogError = z;
    }

    private void setDialogError(final String str) {
        if (this.mConfirmDialog == null) {
            this.mConfirmDialog = new ConfirmDialog(getContext(), this.mSearchClearHistoryDialogThemeResId, this.mErrorDialogLayoutId);
            this.mConfirmDialog.setOnConfirmDialogListener(new ConfirmDialog.OnConfirmDialogListener() { // from class: com.yftech.car.widget.media.video.VideoPlayer.3
                public void onConfirm(boolean z) {
                    VideoPlayer.this.mDialogError = true;
                }
            });
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.mConfirmDialog.show(this.mDialogFlags, str, this.DialogWidthHeight);
            this.mConfirmDialog.setCancelable(this.mDialogCancelable);
        } else {
            this.mHandler.post(new Runnable() { // from class: com.yftech.car.widget.media.video.-$$Lambda$VideoPlayer$outqjjM0xgtp4wJZpNzfPFvFXb8
                @Override // java.lang.Runnable
                public final void run() {
                    VideoPlayer.lambda$setDialogError$0(VideoPlayer.this, str);
                }
            });
        }
    }

    public static /* synthetic */ void lambda$setDialogError$0(VideoPlayer videoPlayer, String str) {
        videoPlayer.mConfirmDialog.show(videoPlayer.mDialogFlags, str, videoPlayer.DialogWidthHeight);
        videoPlayer.mConfirmDialog.setCancelable(videoPlayer.mDialogCancelable);
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean onError(int i, int i2) {
        this.playTimeoutCount = 0;
        this.mHandler.removeMessages(56);
        Loger.e("onError: what==" + i + ",extra==" + i2);
        if (i == 1 && i2 == -4000) {
            start(this.mPlayerManager.mCurrentPlay, true);
            return true;
        }
        if (i == Integer.MIN_VALUE && i2 == 0) {
            releaseMediaPlayer();
            this.mPlayerManager.setPlayErrorException(1);
            return true;
        }
        if (i2 == 303 || i2 < 0) {
            releaseMediaPlayer();
            this.mPlayerManager.isPlayError = true;
            this.mPlayerManager.isPrepared = true;
            if (this.mPlayerManager.mVideoCallback.onPlayerError(i, i2)) {
                Loger.e("onError: Upper layer treatment what==" + i + ",extra==" + i2);
                this.isUserHandleError = true;
                return true;
            }
            this.isUserHandleError = false;
            this.mPlayerManager.setPlayErrorException(0);
        } else if ((i == -38 && i2 == 0) || (i == 100 && i2 == 0)) {
            start(this.mPlayerManager.mCurrentPlay, true);
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.mDownX = (int) motionEvent.getX();
                this.mDownY = (int) motionEvent.getY();
                this.mSlideProgress = 0;
                return true;
            case 1:
            case 3:
                if (this.mSlideProgress == -1) {
                    return true;
                }
                if (!this.mPlayerManager.isSlideCurrent && !this.isSlideBrightness && !this.isSlideAudio) {
                    if (this.mDoubleClickSwitchHideShow > 0) {
                        if (this.mHandler.hasMessages(51)) {
                            this.mHandler.removeMessages(51);
                            this.mPlayerManager.mVideoCallback.onDoubleClick(true);
                            playSoundEffect(0);
                        } else {
                            this.mHandler.sendEmptyMessageDelayed(51, 250L);
                        }
                    } else {
                        this.mPlayerManager.mVideoCallback.onDoubleClick(false);
                        playSoundEffect(0);
                    }
                } else {
                    if (this.mPlayerManager.isSlideCurrent) {
                        this.mPlayerManager.isSlideCurrent = false;
                        this.mPlayerManager.play(true);
                        this.mPlayerManager.mVideoCallback.onSlideProgress(false, getProgressPosition(), this.mPlayerManager.mCurrentPlay.getDuration(), this.mSlideForward);
                    }
                    this.isSlideBrightness = false;
                    this.isSlideAudio = false;
                }
                return true;
            case 2:
                int x = ((int) motionEvent.getX()) - this.mDownX;
                int y = ((int) motionEvent.getY()) - this.mDownY;
                if (this.mPlayerManager.isSlideCurrent) {
                    setSlideCurrent(this.mSlideProportion * x);
                }
                if ((x < (-this.mScaledTouchSlop) || x > this.mScaledTouchSlop) && y < this.mScaledTouchSlop && y > (-this.mScaledTouchSlop)) {
                    if (!this.mPlayerManager.isSlideCurrent && this.mPlayerManager.isPrepared && !this.isSlideBrightness && !this.isSlideAudio) {
                        if (x < -80) {
                            this.mDownX -= this.mScaledTouchSlop;
                        }
                        if (x > 80) {
                            this.mDownX += this.mScaledTouchSlop;
                        }
                        Log.d(TAG, "onTouch: videoSeek==" + setSlideCurrent(x * this.mSlideProportion));
                    }
                } else if ((y < (-this.mScaledTouchSlop) || y > this.mScaledTouchSlop) && x < this.mScaledTouchSlop && x > (-this.mScaledTouchSlop) && !this.isSlideBrightness && !this.mPlayerManager.isSlideCurrent && !this.isSlideAudio) {
                    float width = getWidth() / 2;
                    if (motionEvent.getX() < width) {
                        this.isSlideBrightness = true;
                    } else if (motionEvent.getX() > width) {
                        this.isSlideAudio = true;
                    }
                }
                return true;
            default:
                return true;
        }
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public boolean isOnTouchClick() {
        return this.mHandler.hasMessages(51);
    }

    private int setSlideCurrent(int i) {
        if (this.mVideoSlideProgress) {
            if (!this.mPlayerManager.isSlideCurrent) {
                this.mPlayerManager.isSlideCurrent = true;
                this.mPlayerManager.pause(false);
                this.mSlideProgress = getProgressPosition();
            }
            if (this.mIndexX != i) {
                this.mSlideForward = i > this.mIndexX;
                this.mIndexX = i;
                int i2 = this.mSlideProgress + i;
                if (i2 <= 0) {
                    i2 = 0;
                }
                if (i2 >= this.mPlayerManager.mCurrentPlay.getDuration()) {
                    i2 = (int) this.mPlayerManager.mCurrentPlay.getDuration();
                }
                setPlayProgress(i2);
                this.mPlayerManager.mVideoCallback.onSlideProgress(true, i2, this.mPlayerManager.mCurrentPlay.getDuration(), this.mSlideForward);
                this.mPlayerManager.mVideoCallback.onProgress(i2);
            }
        } else {
            this.mSlideProgress = -1;
        }
        return this.mSlideProgress + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setImageViewProgress(long j) {
        this.mBitmapTime = j;
        AsyncTask.execute(this.mRunnableImageViewProgress);
    }

    public SeekBar.OnSeekBarChangeListener getOnSeekBar() {
        return this.mOnSeekBar;
    }

    @Override // com.yftech.car.widget.media.video.BaseVideo
    public SeekBar.OnSeekBarChangeListener getOnSeekBar(ImageView imageView) {
        this.mProgressImageView = imageView;
        return this.mOnSeekBar;
    }
}
