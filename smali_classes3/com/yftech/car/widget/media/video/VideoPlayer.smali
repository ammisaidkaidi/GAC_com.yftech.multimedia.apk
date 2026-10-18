.class public Lcom/yftech/car/widget/media/video/VideoPlayer;
.super Lcom/yftech/car/widget/media/video/BaseVideo;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/video/VideoPlayer$VideoCallback;,
        Lcom/yftech/car/widget/media/video/VideoPlayer$ErrorCode;,
        Lcom/yftech/car/widget/media/video/VideoPlayer$Constant;
    }
.end annotation


# static fields
.field public static final GRADUAL_CHANGE:I = 0x2

.field public static final NO_ANIMATION:I = 0x0

.field public static final ON_SIZE_CHANGED:I = 0x35

.field public static final PLAY_DOUBLE_CLICK:I = 0x33

.field public static final PLAY_ERROR_NOT_SUPPORTED:I = 0x32

.field public static final PLAY_TIME_UPDATE:I = 0x30

.field public static final PREPARE_ASYNC:I = 0x34

.field public static final SET_PLAY_PROGRESS:I = 0x36

.field public static final SET_PROGRESS_BITMAP:I = 0x37

.field public static final START_PLAY_TIMEOUT:I = 0x38

.field public static final SYSTEM_UI_VISIBILITY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "VideoPlayer"

.field public static final TRANSLATION:I = 0x1

.field public static final VIDEO_DISPLAY_VIEW:I = 0x2

.field public static final VIDEO_MEMORY_PLAY:Ljava/lang/String; = "media_video_memory_play"


# instance fields
.field private DialogWidthHeight:Landroid/util/Size;

.field private hasWindowFocusPlay:Z

.field private isLoadingBitmap:Z

.field private isSeekPause:Z

.field private isSeekPlay:Z

.field private isSeekVideoImage:Z

.field private isSlideAudio:Z

.field private isSlideBrightness:Z

.field private mAttributeSet:Landroid/util/AttributeSet;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoCountdownHide:I

.field private mAutoHideTime:I

.field private mBitmapProgress:J

.field private mBitmapTime:J

.field private mClickSwitchHideShow:I

.field private mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

.field mContentType:I

.field private mDialogCancelable:Z

.field private mDialogError:Z

.field private mDialogFlags:I

.field private mDoubleClickSwitchHideShow:I

.field private mDownX:I

.field private mDownY:I

.field private mErrorDialogLayoutId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIndexX:I

.field private mInitData:Z

.field private mIsVideoSeekImageWhetherToFollowSeekBar:Z

.field private mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

.field private final mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPlayMode:I

.field private mPlayPosition:I

.field private mPlayRandom:I

.field private mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

.field private mProgressImageView:Landroid/widget/ImageView;

.field private final mRandomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunnableImageViewProgress:Ljava/lang/Runnable;

.field private mScaleType:I

.field private mScaledTouchSlop:I

.field private mSearchClearHistoryDialogThemeResId:I

.field private mSlideForward:Z

.field private mSlideProgress:I

.field private mSlideProportion:I

.field private mSp:Landroid/content/SharedPreferences;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceWidth:I

.field private mSystemUIToTheTimeAutoHidden:Z

.field private mSystemUiVisibilityHide:I

.field private mSystemUiVisibilityShow:I

.field private mUiSetProgress:I

.field private mUiStartPlay:Z

.field mUsage:I

.field private mVideoHeight:I

.field private mVideoHideShowAnimation:I

.field private mVideoHideShowAnimationDuration:I

.field private mVideoPreviousReplayTime:I

.field private mVideoSlideProgress:Z

.field private mVideoSlideShowSeekImage:Z

.field private mVideoWidth:I

.field private mWinHideSurfaceGone:Z

.field private playErrorCount:I

.field private playTimeoutCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 355
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mInitData:Z

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    .line 227
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUsage:I

    const/4 v1, 0x3

    .line 229
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mContentType:I

    const/4 v1, -0x1

    .line 231
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiSetProgress:I

    const/16 v1, 0x64

    .line 233
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    .line 239
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    const-wide/16 v1, 0x0

    .line 242
    iput-wide v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mBitmapTime:J

    const/4 v1, 0x0

    .line 243
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isLoadingBitmap:Z

    const/16 v2, 0xc8

    .line 247
    iput v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    .line 256
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPause:Z

    .line 257
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPlay:Z

    .line 258
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekVideoImage:Z

    .line 259
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideBrightness:Z

    .line 260
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideAudio:Z

    .line 263
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideForward:Z

    const/16 v2, 0x32

    .line 269
    iput v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProportion:I

    .line 288
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogError:Z

    .line 289
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mWinHideSurfaceGone:Z

    .line 292
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    .line 293
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    .line 295
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer$1;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    .line 1269
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$2;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2166
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$4;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRunnableImageViewProgress:Ljava/lang/Runnable;

    .line 2197
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$5;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v0, 0x0

    .line 356
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 357
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->initListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/BaseVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mInitData:Z

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    .line 227
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUsage:I

    const/4 v1, 0x3

    .line 229
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mContentType:I

    const/4 v1, -0x1

    .line 231
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiSetProgress:I

    const/16 v1, 0x64

    .line 233
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    .line 239
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    const-wide/16 v1, 0x0

    .line 242
    iput-wide v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mBitmapTime:J

    const/4 v1, 0x0

    .line 243
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isLoadingBitmap:Z

    const/16 v2, 0xc8

    .line 247
    iput v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    .line 256
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPause:Z

    .line 257
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPlay:Z

    .line 258
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekVideoImage:Z

    .line 259
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideBrightness:Z

    .line 260
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideAudio:Z

    .line 263
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideForward:Z

    const/16 v2, 0x32

    .line 269
    iput v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProportion:I

    .line 288
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogError:Z

    .line 289
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mWinHideSurfaceGone:Z

    .line 292
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    .line 293
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    .line 295
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer$1;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    .line 1269
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$2;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2166
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoPlayer$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$4;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRunnableImageViewProgress:Ljava/lang/Runnable;

    .line 2197
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$5;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 363
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->initListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 367
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/video/BaseVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 214
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mInitData:Z

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    .line 227
    iput p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUsage:I

    const/4 v0, 0x3

    .line 229
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mContentType:I

    const/4 v0, -0x1

    .line 231
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiSetProgress:I

    const/16 v0, 0x64

    .line 233
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    .line 239
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    const-wide/16 v0, 0x0

    .line 242
    iput-wide v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mBitmapTime:J

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isLoadingBitmap:Z

    const/16 v1, 0xc8

    .line 247
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    .line 256
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPause:Z

    .line 257
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPlay:Z

    .line 258
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekVideoImage:Z

    .line 259
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideBrightness:Z

    .line 260
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideAudio:Z

    .line 263
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideForward:Z

    const/16 v1, 0x32

    .line 269
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProportion:I

    .line 288
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogError:Z

    .line 289
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mWinHideSurfaceGone:Z

    .line 292
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    .line 293
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    .line 295
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer$1;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    .line 1269
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoPlayer$2;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$2;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2166
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoPlayer$4;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$4;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRunnableImageViewProgress:Ljava/lang/Runnable;

    .line 2197
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoPlayer$5;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$5;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 368
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 369
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->initListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/os/Handler;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/video/VideoPlayer;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->updateTime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/video/VideoPlayer;IIII)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setScaleVideoSize(IIII)V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/video/VideoPlayer;)J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mBitmapTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/video/VideoPlayer;)J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mBitmapProgress:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/yftech/car/widget/media/video/VideoPlayer;J)J
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mBitmapProgress:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/video/VideoPlayer;J)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setImageViewProgress(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isLoadingBitmap:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/yftech/car/widget/media/video/VideoPlayer;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isLoadingBitmap:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->hasWindowFocusPlay:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/yftech/car/widget/media/video/VideoPlayer;Z)Z
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->requestAudioFocus(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1902(Lcom/yftech/car/widget/media/video/VideoPlayer;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogError:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/video/VideoPlayer;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->playErrorCount:I

    return p0
.end method

.method static synthetic access$2000(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekVideoImage:Z

    return p0
.end method

.method static synthetic access$208(Lcom/yftech/car/widget/media/video/VideoPlayer;)I
    .locals 2

    .line 100
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->playErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->playErrorCount:I

    return v0
.end method

.method static synthetic access$2100(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPause:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/yftech/car/widget/media/video/VideoPlayer;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPlay:Z

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/video/VideoPlayer;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/video/VideoPlayer;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->switchVideo(Z)V

    return-void
.end method

.method static synthetic access$508(Lcom/yftech/car/widget/media/video/VideoPlayer;)I
    .locals 2

    .line 100
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->playTimeoutCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->playTimeoutCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/video/VideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/video/VideoPlayer;)Landroid/view/SurfaceView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/video/VideoPlayer;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/video/VideoPlayer;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoHeight:I

    return p0
.end method

.method private createdSurface()Landroid/view/SurfaceHolder;
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 458
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 459
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->removeView(Landroid/view/View;)V

    .line 462
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 463
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->addView(Landroid/view/View;)V

    .line 464
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    .line 465
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 466
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 467
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 468
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    .line 469
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 470
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 471
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceView;->setFocusableInTouchMode(Z)V

    .line 472
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->requestFocus()Z

    .line 473
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    return-object v0
.end method

.method private declared-synchronized getSaveId()J
    .locals 4

    monitor-enter p0

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mCurrentUsb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getSaveProgress()I
    .locals 3

    monitor-enter p0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play_progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mCurrentUsb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isForegroundDisplay(Z)Z
    .locals 4

    .line 1165
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/screen/CarScreenManager;->isOpenScreenBrightness()Z

    move-result v0

    .line 1166
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "VideoPlayer"

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForegroundDisplay, hasWindowFocus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",isOpenScreenBrightness:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public static synthetic lambda$setDialogError$0(Lcom/yftech/car/widget/media/video/VideoPlayer;Ljava/lang/String;)V
    .locals 3

    .line 1981
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogFlags:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->DialogWidthHeight:Landroid/util/Size;

    invoke-virtual {v0, v1, p1, v2}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->show(ILjava/lang/String;Landroid/util/Size;)V

    .line 1982
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogCancelable:Z

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setCancelable(Z)V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 3

    .line 1414
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1416
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1417
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1418
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 1419
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    .line 1422
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    return-void
.end method

.method private requestAudioFocus(Z)Z
    .locals 5

    .line 1230
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 1236
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    .line 1237
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez p1, :cond_2

    .line 1238
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {p1, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mStreamType:I

    .line 1241
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    iget v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mContentType:I

    .line 1242
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 1243
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 1239
    invoke-virtual {p1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 1244
    invoke-virtual {p1, v1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1245
    invoke-virtual {p1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 1246
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    const-string p1, "VideoPlayer"

    const-string/jumbo v2, "requestAudioFocus: "

    .line 1247
    invoke-static {p1, v2}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    goto :goto_0

    .line 1251
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mContentType:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_0
    const-string v2, "VideoPlayer"

    .line 1253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestAudioFocus: request=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mUsage=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUsage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mStreamType=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mContentType=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mContentType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    iput-boolean v4, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1255
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_6

    .line 1256
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    move p1, v3

    :goto_2
    iput-boolean p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    goto :goto_3

    .line 1258
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v3, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    .line 1261
    :goto_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    return v3

    .line 1262
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->setActive(Z)V

    return v1
.end method

.method private declared-synchronized saveDataPath(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mCurrentUsb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 523
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 520
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized saveId(J)V
    .locals 3

    monitor-enter p0

    .line 514
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mCurrentUsb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 516
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 517
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 513
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized saveProgress(I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "VideoPlayer"

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveProgress: newValue=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play_progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mCurrentUsb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 508
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 509
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 504
    monitor-exit p0

    throw p1
.end method

.method private setDialogError(Ljava/lang/String;)V
    .locals 4

    .line 1966
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    if-nez v0, :cond_0

    .line 1967
    new-instance v0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSearchClearHistoryDialogThemeResId:I

    iget v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mErrorDialogLayoutId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    .line 1968
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    new-instance v1, Lcom/yftech/car/widget/media/video/VideoPlayer$3;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer$3;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setOnConfirmDialogListener(Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;)V

    .line 1976
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1977
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogFlags:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->DialogWidthHeight:Landroid/util/Size;

    invoke-virtual {v0, v1, p1, v2}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->show(ILjava/lang/String;Landroid/util/Size;)V

    .line 1978
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogCancelable:Z

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setCancelable(Z)V

    goto :goto_0

    .line 1980
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/car/widget/media/video/-$$Lambda$VideoPlayer$outqjjM0xgtp4wJZpNzfPFvFXb8;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/video/-$$Lambda$VideoPlayer$outqjjM0xgtp4wJZpNzfPFvFXb8;-><init>(Lcom/yftech/car/widget/media/video/VideoPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setImageViewProgress(J)V
    .locals 0

    .line 2162
    iput-wide p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mBitmapTime:J

    .line 2163
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRunnableImageViewProgress:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setRandomData()V
    .locals 4

    .line 750
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    const/4 v1, 0x0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_2

    .line 751
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 752
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 753
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    if-eq v2, v0, :cond_0

    .line 754
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 758
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 759
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    goto :goto_2

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_4

    .line 763
    :goto_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 764
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 765
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method private setScaleVideoSize()V
    .locals 4

    .line 1557
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getWidth()I

    move-result v0

    .line 1558
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getHeight()I

    move-result v1

    .line 1559
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoWidth:I

    iget v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoHeight:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setScaleVideoSize(IIII)V

    return-void
.end method

.method private setScaleVideoSize(II)V
    .locals 2

    .line 1563
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getWidth()I

    move-result v0

    .line 1564
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getHeight()I

    move-result v1

    .line 1565
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setScaleVideoSize(IIII)V

    return-void
.end method

.method private setScaleVideoSize(IIII)V
    .locals 5

    const-string v0, "VideoPlayer"

    .line 1569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScaleVideoSize: videoWidth=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",videoHeight=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",screenWidth=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",screenHeight=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    if-lt p2, v1, :cond_9

    if-ge p1, v1, :cond_0

    goto :goto_1

    .line 1578
    :cond_0
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    const/16 v3, 0xca

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    if-gt p3, p1, :cond_1

    if-le p4, p2, :cond_3

    .line 1580
    :cond_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1581
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1582
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void

    .line 1586
    :cond_2
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    :cond_3
    move v2, v1

    goto :goto_0

    .line 1588
    :cond_4
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_5

    .line 1589
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1590
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1591
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_5
    move v2, v4

    :goto_0
    if-eqz v2, :cond_8

    mul-int v2, p3, p2

    .line 1595
    div-int/2addr v2, p1

    mul-int/2addr p1, p4

    .line 1596
    div-int/2addr p1, p2

    sub-int p2, p4, v2

    sub-int p1, p3, p1

    if-ge p1, v1, :cond_6

    move p1, v4

    :cond_6
    if-ge p2, v1, :cond_7

    move p2, v4

    :cond_7
    sub-int/2addr p3, p1

    .line 1607
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p4, p2

    .line 1608
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1610
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_8
    return-void

    .line 1572
    :cond_9
    :goto_1
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1573
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1574
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    return-void
.end method

.method private setSlideCurrent(I)I
    .locals 7

    .line 2121
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoSlideProgress:Z

    if-eqz v0, :cond_4

    .line 2122
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    .line 2124
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 2126
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getProgressPosition()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProgress:I

    .line 2129
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mIndexX:I

    if-eq v0, p1, :cond_5

    .line 2130
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mIndexX:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideForward:Z

    .line 2131
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mIndexX:I

    .line 2133
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProgress:I

    add-int/2addr v0, p1

    if-gtz v0, :cond_2

    move v0, v2

    :cond_2
    int-to-long v1, v0

    .line 2140
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 2141
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2144
    :cond_3
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayProgress(I)V

    .line 2145
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideForward:Z

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onSlideProgress(ZIJZ)V

    .line 2146
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    .line 2156
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProgress:I

    .line 2158
    :cond_5
    :goto_1
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProgress:I

    add-int/2addr p0, p1

    return p0
.end method

.method private start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->loadDataPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    .line 1100
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->requestLayout()V

    .line 1101
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method private switchVideo(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 775
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_0

    .line 776
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    goto :goto_0

    .line 778
    :cond_0
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    goto :goto_0

    .line 781
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    if-lt p1, v1, :cond_2

    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 782
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    goto :goto_0

    .line 784
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    .line 788
    :goto_0
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    const/16 v2, 0x66

    if-ne p1, v2, :cond_5

    .line 789
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    if-le p1, v2, :cond_3

    .line 790
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayRandom:I

    goto :goto_1

    .line 792
    :cond_3
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setRandomData()V

    .line 793
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayRandom:I

    .line 795
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayRandom:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_8

    .line 797
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 798
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v0, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 801
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    goto :goto_2

    .line 804
    :cond_5
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_6

    const-string/jumbo p0, "switchVideo: mPlayPosition >= mList.size()"

    .line 805
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return-void

    .line 808
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_8

    .line 810
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 811
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v0, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 814
    :cond_7
    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    :cond_8
    :goto_2
    return-void
.end method

.method private updateTime()V
    .locals 4

    .line 716
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_2

    .line 717
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getProgressPosition()I

    move-result v1

    iput v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 723
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSeekBar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSetProgress:I

    if-le v0, v1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    .line 725
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->setPlaybackStateCompat(IIF)V

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isSurfaceHolderNoCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-nez v0, :cond_2

    .line 732
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 733
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 734
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 738
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "VideoPlayer"

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateTime: mSurfaceHolder is null , mSurfaceView Visibility== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 3

    const-string v0, "abandonAudioFocus:"

    .line 1360
    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz v0, :cond_3

    .line 1363
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    .line 1364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_0

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    goto :goto_0

    .line 1370
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 1372
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abandonAudioFocus: abandonAudioFocus == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1374
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1375
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    .line 1376
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->setActive(Z)V

    return-void
.end method

.method public addVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 0

    .line 1199
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->addVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    return-void
.end method

.method public getAutoHideTime()I
    .locals 0

    .line 540
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAutoHideTime:I

    return p0
.end method

.method public getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 903
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method public getCurrentSpeed()I
    .locals 0

    .line 1187
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    return p0
.end method

.method public getCurrentUsb()I
    .locals 0

    .line 618
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mCurrentUsb:I

    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 919
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->getDuration()I

    move-result p0

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getMediaPlayInfoNotPlaying()I
    .locals 0

    .line 1191
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->getMediaPlayInfoNotPlaying()I

    move-result p0

    return p0
.end method

.method public getOnSeekBar()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 2189
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method public getOnSeekBar(Landroid/widget/ImageView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 2193
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    .line 2194
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation

    .line 664
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    return-object p0
.end method

.method public getPlayListSize()I
    .locals 0

    .line 854
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPlayMode()I
    .locals 0

    .line 895
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    return p0
.end method

.method public getPlayPosition()I
    .locals 2

    .line 835
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 836
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayRandom:I

    return p0

    .line 838
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    return p0
.end method

.method public getPlaybackParams()F
    .locals 0

    .line 660
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    return p0
.end method

.method public getProgressPosition()I
    .locals 0

    .line 911
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->getProgressPosition()I

    move-result p0

    return p0
.end method

.method public getScaleType()I
    .locals 0

    .line 703
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    return p0
.end method

.method public getSpeedLimit()I
    .locals 0

    .line 1179
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    return p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1537
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    .line 1545
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method public getSystemUiVisibilityHide()I
    .locals 0

    .line 556
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUiVisibilityHide:I

    return p0
.end method

.method public getSystemUiVisibilityShow()I
    .locals 0

    .line 548
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUiVisibilityShow:I

    return p0
.end method

.method public getVideoHideShowAnimation()I
    .locals 0

    .line 598
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoHideShowAnimation:I

    return p0
.end method

.method public getVideoHideShowAnimationDuration()I
    .locals 0

    .line 602
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoHideShowAnimationDuration:I

    return p0
.end method

.method protected initData(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 373
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 374
    new-instance v0, Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;-><init>(Lcom/yftech/car/widget/media/video/BaseVideo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    .line 375
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setBackgroundColor(I)V

    .line 376
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "media_video_memory_play"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSp:Landroid/content/SharedPreferences;

    .line 377
    new-instance v0, Lcom/yftech/car/widget/media/video/MediaSessionManager;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/MediaSessionManager;-><init>(Lcom/yftech/car/widget/media/video/BaseVideo;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mInitData:Z

    if-eqz p2, :cond_1

    .line 381
    iput-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAttributeSet:Landroid/util/AttributeSet;

    .line 382
    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 383
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_decoding_mode:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 384
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_request_audio_focus_usage:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUsage:I

    .line 385
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_request_audio_focus_stream_type:I

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mStreamType:I

    .line 386
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_request_audio_focus_content_type:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mContentType:I

    .line 387
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_systemUiVisibility_show:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUiVisibilityShow:I

    .line 388
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_systemUiVisibility_hide:I

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUiVisibilityHide:I

    .line 389
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_auto_countdown_hide:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAutoCountdownHide:I

    .line 390
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_click_switch_hide_show:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mClickSwitchHideShow:I

    .line 391
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_double_click_switch_hide_show:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDoubleClickSwitchHideShow:I

    .line 392
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_hide_show_animation:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoHideShowAnimation:I

    .line 393
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_hide_show_animation_duration:I

    const/16 v6, 0x1f4

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoHideShowAnimationDuration:I

    .line 395
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_previous_replay_time:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoPreviousReplayTime:I

    .line 397
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_play_mode:I

    const/16 v6, 0x64

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    .line 399
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_slide_progress:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoSlideProgress:Z

    .line 400
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_slide_show_seek_image:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoSlideShowSeekImage:Z

    .line 402
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setSoftSolutionPlay(I)V

    .line 403
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_default_scale_type:I

    const/16 v4, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    .line 404
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_slide_proportion:I

    const/16 v4, 0x32

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProportion:I

    .line 405
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_auto_hide_time:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAutoHideTime:I

    .line 406
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_ErrorAutoNextDelayMillis:I

    const/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ge v3, v6, :cond_0

    const-string v3, "VideoPlayer"

    const-string v4, "initData: ErrorAutoNextDelayMillis Cannot be less than 100"

    .line 409
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 411
    :cond_0
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setErrorAutoNextDelayMillis(I)V

    .line 412
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_SpeedLimitPlayback:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 413
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setSpeedLimitPlayback(I)V

    .line 414
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_seekPause:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPause:Z

    .line 415
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_seek_stop_play:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPlay:Z

    .line 417
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_seek_video_image:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekVideoImage:Z

    .line 419
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_has_window_focus_play:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->hasWindowFocusPlay:Z

    .line 421
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_file_no_exists:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoFileNoExists(Ljava/lang/String;)V

    .line 422
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_udisk_disconnect:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastUdiskDisconnect(Ljava/lang/String;)V

    .line 423
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_async_illegal_state:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoAsyncIllegalState(Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_format_is_not_supported:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastFormatIsNotSupported(Ljava/lang/String;)V

    .line 425
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_resources_are_occupied:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastResourcesAreOccupied(Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_video_not_playing:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoVideoNotPlaying(Ljava/lang/String;)V

    .line 428
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_audio_not_playing:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoAudioNotPlaying(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_file_no_exists_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoFileNoExistsLayoutId(I)V

    .line 431
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_udisk_disconnect_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastUdiskDisconnectLayoutId(I)V

    .line 432
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_async_illegal_state_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoAsyncIllegalStateLayoutId(I)V

    .line 433
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_format_is_not_supported_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastFormatIsNotSupportedLayoutId(I)V

    .line 434
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_resources_are_occupied_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastResourcesAreOccupiedLayoutId(I)V

    .line 436
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_video_not_playing_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoVideoNotPlayingLayoutId(I)V

    .line 437
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_audio_not_playing_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoAudioNotPlayingLayoutId(I)V

    .line 439
    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 441
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_flags:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogFlags:I

    .line 442
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_layout_id:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mErrorDialogLayoutId:I

    .line 443
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_themeResId:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSearchClearHistoryDialogThemeResId:I

    .line 444
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_cancelable:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogCancelable:Z

    .line 445
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_width:I

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 446
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_height:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    .line 447
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->DialogWidthHeight:Landroid/util/Size;

    .line 450
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 451
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    .line 452
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->createdSurface()Landroid/view/SurfaceHolder;

    return-void
.end method

.method protected initListener()V
    .locals 0

    .line 479
    invoke-virtual {p0, p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isAudioFocus()Z
    .locals 0

    .line 1215
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    return p0
.end method

.method public isAudioFocus(Z)Z
    .locals 0

    if-eqz p1, :cond_2

    .line 1220
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    .line 1222
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    return p0
.end method

.method public isAutoCountdownHide(I)Z
    .locals 0

    .line 560
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAutoCountdownHide:I

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isClickSwitchHideShow(I)Z
    .locals 0

    .line 590
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mClickSwitchHideShow:I

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDoubleClickSwitchHideShow(I)Z
    .locals 0

    .line 594
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDoubleClickSwitchHideShow:I

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isErrorDialog(Ljava/lang/String;)Z
    .locals 2

    .line 1948
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mErrorDialogLayoutId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1949
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isUserHandleError:Z

    .line 1950
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setDialogError(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHolderEmpty()Z
    .locals 0

    .line 1530
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOnTouchClick()Z
    .locals 1

    .line 2117
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public isPlayError()Z
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPlaying()Z
    .locals 0

    .line 1384
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result p0

    return p0
.end method

.method public isSoftSolution()Z
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSurfaceVisibility(I)Z
    .locals 0

    .line 1541
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSystemUIToTheTimeAutoHidden()Z
    .locals 0

    .line 573
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    return p0
.end method

.method public isVideoSeekImageWhetherToFollowSeekBar()Z
    .locals 0

    .line 585
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    return p0
.end method

.method public isVideoSlideShowSeekImage()Z
    .locals 0

    .line 923
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoSlideShowSeekImage:Z

    return p0
.end method

.method public notifyPlayPause(Z)V
    .locals 2

    .line 1874
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayingChange(Z)V

    .line 1876
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1878
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    .line 1879
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->getProgressPosition()I

    move-result v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    .line 1876
    invoke-virtual {v0, p1, v1, p0}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->setPlaybackStateCompat(IIF)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1694
    invoke-super {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->onAttachedToWindow()V

    const-string p0, "VideoPlayer"

    const-string v0, "onAttachedToWindow: "

    .line 1695
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCompletion()V
    .locals 4

    const-string v0, "onCompletion: "

    .line 1888
    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1889
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    .line 1890
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 1892
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "VideoPlayer"

    .line 1907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCompletion: mPlayPosition=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",(mList.size()-1)=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 1909
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->switchVideo(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "VideoPlayer"

    .line 1911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompletion: \u64ad\u653e\u5b8c\u6210 ,mPlayPosition=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mList.size()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mList.sizeitem=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    iget v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlaySequenceCompletion()V

    goto :goto_0

    .line 1898
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->stop()V

    .line 1899
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    goto :goto_0

    .line 1895
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->switchVideo(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 489
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 490
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAttributeSet:Landroid/util/AttributeSet;

    if-eqz p1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mAttributeSet:Landroid/util/AttributeSet;

    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 492
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_file_no_exists:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoFileNoExists(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_udisk_disconnect:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastUdiskDisconnect(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_async_illegal_state:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoAsyncIllegalState(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_format_is_not_supported:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastFormatIsNotSupported(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_resources_are_occupied:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastResourcesAreOccupied(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_video_not_playing:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoVideoNotPlaying(Ljava/lang/String;)V

    .line 499
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_audio_not_playing:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoAudioNotPlaying(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1700
    invoke-super {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->onDetachedFromWindow()V

    const-string v0, "VideoPlayer"

    const-string v1, "onDetachedFromWindow: "

    .line 1701
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->release()V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "VideoPlayer"

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onError: code=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",codeMsg=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->releaseMediaPlayer()V

    .line 1928
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 1929
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1935
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    const v2, -0x3b9aca00

    invoke-virtual {v0, p1, v2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayerError(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: Upper layer treatment code=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",codeMsg=="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 1937
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isUserHandleError:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1941
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isUserHandleError:Z

    .line 1943
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setPlayErrorException(I)V

    return-void
.end method

.method public onError(II)Z
    .locals 3

    const/4 v0, 0x0

    .line 1990
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->playTimeoutCount:I

    .line 1991
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: what=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 v2, -0xfa0

    if-ne p2, v2, :cond_0

    .line 1994
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    return v1

    :cond_0
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    .line 1998
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->releaseMediaPlayer()V

    .line 1999
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setPlayErrorException(I)V

    return v1

    :cond_1
    const/16 v2, 0x12f

    if-eq p2, v2, :cond_5

    if-gez p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, -0x26

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    const/16 v0, 0x64

    if-ne p1, v0, :cond_7

    if-nez p2, :cond_7

    .line 2024
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    goto :goto_1

    .line 2005
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->releaseMediaPlayer()V

    .line 2007
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 2008
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 2014
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v2, p1, p2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayerError(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: Upper layer treatment what=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",extra=="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 2016
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isUserHandleError:Z

    return v1

    .line 2020
    :cond_6
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isUserHandleError:Z

    .line 2022
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setPlayErrorException(I)V

    :cond_7
    :goto_1
    return v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1616
    invoke-super {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->onFinishInflate()V

    const-string v0, "VideoPlayer"

    const-string v1, "onFinishInflate: "

    .line 1617
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getPlayPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->startPlayList(Ljava/util/List;I)Z

    .line 1621
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->clearListData()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1921
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p2, p3}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public onPrepared(II)V
    .locals 6

    const-string v0, "VideoPlayer"

    .line 1803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared: width=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoWidth:I

    .line 1805
    iput p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoHeight:I

    .line 1806
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 p2, 0x0

    iput p2, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSetProgress:I

    .line 1807
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoWidth:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoHeight:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 1808
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoWidth:I

    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoHeight:I

    invoke-interface {p1, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1810
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1811
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez p1, :cond_1

    .line 1812
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setScaleVideoSize()V

    .line 1814
    :cond_1
    iput p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->playErrorCount:I

    .line 1815
    iput p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->playTimeoutCount:I

    .line 1816
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1817
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1818
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getDuration()I

    move-result p1

    .line 1819
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mCurrentUsb:I

    .line 1820
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mInitData:Z

    if-eqz v1, :cond_3

    .line 1821
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mInitData:Z

    .line 1823
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getSaveId()J

    move-result-wide v1

    .line 1825
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getSaveProgress()I

    move-result v3

    .line 1826
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepared: start play mCurrentPlay=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v5, v5, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v5}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",currentMemoryTime=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",duration=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1827
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v4, v4, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    if-lez v3, :cond_2

    add-int/lit16 v4, p1, -0x3e8

    if-ge v3, v4, :cond_2

    .line 1828
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x36

    invoke-virtual {v4, v5, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1829
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v3, v4, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    const-string v3, "VideoPlayer"

    .line 1830
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPrepared: seekTo  ----------ok  ,mediaId=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mPlayerManager.mCurrentPlay.getId()=="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    goto :goto_0

    .line 1833
    :cond_2
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v1, p2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    goto :goto_0

    .line 1836
    :cond_3
    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiSetProgress:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1837
    iput p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiSetProgress:I

    .line 1839
    :cond_4
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v1, p2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    .line 1841
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 1843
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1844
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1847
    :cond_5
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    if-eqz v1, :cond_8

    .line 1848
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    .line 1849
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->requestAudioFocus()Z

    .line 1850
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isAudioFocus()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1851
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    goto :goto_1

    :cond_6
    const-string p2, "VideoPlayer"

    .line 1853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared: isAudioFocus == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPlayBeforeLossFocus == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    :cond_7
    :goto_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v0, p2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    goto :goto_2

    .line 1859
    :cond_8
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean p2, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 1862
    :goto_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1863
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->updatePlayback()V

    .line 1865
    :cond_9
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isPlaying()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->notifyPlayPause(Z)V

    .line 1866
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared: mMediaPlayer isPlaying == "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mUiStartPlay=="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1867
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    .line 1868
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p2, p2, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPrepared(I)V

    .line 1869
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->updatePlay(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 1870
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->updatePlayChange()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1793
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/video/BaseVideo;->onSizeChanged(IIII)V

    const-string p3, "VideoPlayer"

    .line 1794
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSizeChanged: isPlayError=="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",width=="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",height=="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x35

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 2040
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2049
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDownX:I

    sub-int/2addr p1, v1

    .line 2050
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDownY:I

    sub-int/2addr v1, v2

    .line 2052
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-eqz v2, :cond_0

    .line 2053
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProportion:I

    mul-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setSlideCurrent(I)I

    .line 2058
    :cond_0
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    neg-int v2, v2

    if-lt p1, v2, :cond_1

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    if-le p1, v2, :cond_4

    :cond_1
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    if-ge v1, v2, :cond_4

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    neg-int v2, v2

    if-le v1, v2, :cond_4

    .line 2059
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p2, p2, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p2, p2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideBrightness:Z

    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideAudio:Z

    if-nez p2, :cond_c

    const/16 p2, -0x50

    if-ge p1, p2, :cond_2

    .line 2060
    iget p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDownX:I

    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDownX:I

    :cond_2
    const/16 p2, 0x50

    if-le p1, p2, :cond_3

    .line 2061
    iget p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDownX:I

    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDownX:I

    .line 2062
    :cond_3
    iget p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProportion:I

    mul-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setSlideCurrent(I)I

    move-result p0

    const-string p1, "VideoPlayer"

    .line 2063
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch: videoSeek=="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2066
    :cond_4
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    neg-int v2, v2

    if-lt v1, v2, :cond_5

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    if-le v1, v2, :cond_c

    :cond_5
    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    if-ge p1, v1, :cond_c

    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaledTouchSlop:I

    neg-int v1, v1

    if-le p1, v1, :cond_c

    .line 2067
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideBrightness:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideAudio:Z

    if-nez p1, :cond_c

    .line 2068
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 2069
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float p1, p1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_6

    .line 2070
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideBrightness:Z

    goto/16 :goto_0

    .line 2071
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_c

    .line 2072
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideAudio:Z

    goto/16 :goto_0

    .line 2083
    :pswitch_1
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProgress:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_7

    return v0

    .line 2086
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideBrightness:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideAudio:Z

    if-nez p1, :cond_a

    .line 2087
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDoubleClickSwitchHideShow:I

    if-lez p1, :cond_9

    .line 2088
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x33

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2089
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2090
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onDoubleClick(Z)V

    .line 2091
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->playSoundEffect(I)V

    goto :goto_0

    .line 2093
    :cond_8
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2096
    :cond_9
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onDoubleClick(Z)V

    .line 2097
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->playSoundEffect(I)V

    goto :goto_0

    .line 2100
    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-eqz p1, :cond_b

    .line 2101
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    .line 2102
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    .line 2103
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getProgressPosition()I

    move-result v4

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v5

    iget-boolean v7, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideForward:Z

    invoke-virtual/range {v2 .. v7}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onSlideProgress(ZIJZ)V

    .line 2105
    :cond_b
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideBrightness:Z

    .line 2106
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSlideAudio:Z

    goto :goto_0

    .line 2044
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDownX:I

    .line 2045
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDownY:I

    .line 2046
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSlideProgress:I

    :cond_c
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .line 1626
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->onWindowFocusChanged(Z)V

    const-string v0, "VideoPlayer"

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: hasWindowFocus=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mPlayerManager.isPlayError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isUserHandleError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isUserHandleError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isAvmShow=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1630
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isAvmShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mSurfaceView=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1627
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0x32

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1634
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p1, :cond_0

    .line 1635
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->createdSurface()Landroid/view/SurfaceHolder;

    .line 1636
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isUserHandleError:Z

    if-nez p1, :cond_0

    .line 1637
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1638
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1642
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez p1, :cond_1

    .line 1643
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->createdSurface()Landroid/view/SurfaceHolder;

    .line 1646
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 1647
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isAvmShow()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1649
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    .line 1652
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1658
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogError:Z

    if-eqz p1, :cond_5

    .line 1659
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogError:Z

    .line 1660
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v0, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1661
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->switchVideo(Z)V

    goto :goto_0

    .line 1667
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 1669
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p1, :cond_5

    .line 1670
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_4

    .line 1671
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1673
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1674
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1675
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->releaseMediaPlayer()V

    .line 1676
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v0, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 1677
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 1429
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1430
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1431
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1432
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1433
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 1434
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1435
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getProgressPosition()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 1437
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v0, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 1440
    :cond_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    .line 1442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseMediaPlayer: progress == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",MediaPlayer release --ok "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 1444
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->notifyPlayPause(Z)V

    .line 1445
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 1446
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1447
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1452
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_3

    .line 1453
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/video/VideoPlayer;->saveId(J)V

    .line 1454
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->saveDataPath(Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->saveProgress(I)I

    .line 1456
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->updatePlayChange()V

    :cond_3
    const-string v0, "VideoPlayer"

    const-string/jumbo v2, "release: updateMemory ---finish"

    .line 1458
    invoke-static {v0, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1460
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mRandomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1462
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1463
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->dismiss()V

    .line 1465
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->abandonAudioFocus()V

    .line 1466
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    return-void
.end method

.method public removeVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 0

    .line 1203
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->removeVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 1

    const/4 v0, 0x0

    .line 1211
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->requestAudioFocus(Z)Z

    move-result p0

    return p0
.end method

.method public resetSurface()V
    .locals 2

    const-string v0, "VideoPlayer"

    const-string/jumbo v1, "resetSurface: "

    .line 1683
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1685
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1686
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1687
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1688
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    .line 1689
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->createdSurface()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public setCorrectionProgress(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1553
    :goto_0
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiSetProgress:I

    return-void
.end method

.method public setDialogError(Z)V
    .locals 0

    .line 1962
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mDialogError:Z

    return-void
.end method

.method public setErrorAutoNextDelayMillis(I)V
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 1114
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDelayMillis(I)V

    return-void

    .line 1112
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "delayMillis Cannot be less than 100,must delayMillis >= 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutChildManager(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    return-void
.end method

.method public setOnTouchGesture(Z)V
    .locals 0

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 628
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPlayMode(I)V
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    const/16 v0, 0x67

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 881
    :cond_0
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    .line 882
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setRandomData()V

    .line 883
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayMode(I)V

    return-void

    .line 878
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPlayMode: mode values invalid,mode=="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    .line 846
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    return-void
.end method

.method public setPlayProgress(I)V
    .locals 4

    .line 1505
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_4

    .line 1506
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    const-string v1, "VideoPlayer"

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPlayProgress: positionTime=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",duration=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :goto_0
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiSetProgress:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1517
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiSetProgress:I

    .line 1519
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 1520
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->seekTo(I)V

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "setPlayProgress: current play error"

    .line 1522
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 1525
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "seekTo: mPlayerManager.isPrepared=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setPlayProgress(ILandroid/widget/ImageView;)V
    .locals 2

    .line 1478
    iput-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    .line 1480
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    int-to-long v0, p1

    .line 1481
    iput-wide v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mBitmapProgress:J

    .line 1483
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isLoadingBitmap:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 1484
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isLoadingBitmap:Z

    .line 1485
    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setImageViewProgress(J)V

    .line 1489
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayProgress(I)V

    return-void
.end method

.method public setPlayState(I)Z
    .locals 7

    .line 937
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isHolderEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "VideoPlayer"

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setPlayState: error current video is receding state=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/utils/MediaKeyUtil;->getVideoKeyValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, p1, :cond_0

    .line 940
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 942
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    :cond_1
    :goto_0
    return v1

    .line 946
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-nez v0, :cond_6

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPlayState:  isPrepared is false state=="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/utils/MediaKeyUtil;->getVideoKeyValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_4

    if-eq v2, p1, :cond_3

    const/4 v0, 0x3

    if-ne v0, p1, :cond_4

    .line 949
    :cond_3
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->releaseMediaPlayer()V

    .line 950
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0, v0, v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    :cond_4
    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_5

    return v1

    .line 956
    :cond_5
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->releaseMediaPlayer()V

    :cond_6
    const-string v0, "VideoPlayer"

    .line 959
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPlayState: state=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/utils/MediaKeyUtil;->getVideoKeyValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v4, :cond_7

    if-ne p1, v3, :cond_8

    .line 961
    :cond_7
    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isForegroundDisplay(Z)Z

    move-result v0

    if-nez v0, :cond_8

    const-string p0, "VideoPlayer"

    const-string/jumbo p1, "setPlayState: ignore"

    .line 962
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    packed-switch p1, :pswitch_data_0

    .line 996
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "\u6307\u4ee4\u4e0d\u652f\u6301"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 984
    :pswitch_0
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoPreviousReplayTime:I

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->getProgressPosition()I

    move-result p1

    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoPreviousReplayTime:I

    if-le p1, v0, :cond_9

    const-string p1, "VideoPlayer"

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prev: mVideoPreviousReplayTime=="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mVideoPreviousReplayTime:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    .line 987
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayProgress(I)V

    .line 988
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result p1

    if-nez p1, :cond_b

    .line 989
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    goto :goto_1

    .line 992
    :cond_9
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->switchVideo(Z)V

    goto :goto_1

    .line 981
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/video/VideoPlayer;->switchVideo(Z)V

    goto :goto_1

    .line 974
    :pswitch_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 975
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    goto :goto_1

    .line 977
    :cond_a
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    goto :goto_1

    .line 971
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    goto :goto_1

    .line 968
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    :cond_b
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPlaybackParams(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    .line 646
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->updatePlayback()V

    .line 649
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlaybackParams(F)V

    goto :goto_0

    :cond_1
    const-string p0, "VideoPlayer"

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setmPlayback: Out of range \u300aplayback>=0.5 && playback <=2.0f\u300b ,playback=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setProgressImageView(Landroid/widget/ImageView;)V
    .locals 0

    .line 1497
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public setScaleType(I)V
    .locals 4

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v1, 0xca

    if-le p1, v1, :cond_1

    :cond_0
    const-string v1, "VideoPlayer"

    .line 687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScaleType: type values invalid,type=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 691
    :cond_1
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    .line 692
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_2

    .line 693
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setScaleVideoSize()V

    .line 695
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onScaleType(I)V

    return-void
.end method

.method public setSeekPause(Z)V
    .locals 0

    .line 636
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->isSeekPause:Z

    return-void
.end method

.method public setSoftSolutionPlay(I)V
    .locals 0

    .line 1124
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setSoftSolutionPlay(I)V

    return-void
.end method

.method public setSpeedLimitPlayback(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    .line 1134
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->updateSpeed(I)V

    goto :goto_0

    :cond_0
    const-string p0, "VideoPlayer"

    const-string/jumbo p1, "setSpeedLimitPlayback: The speed limit cannot be less than 0"

    .line 1136
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setStorageDisconnect()V
    .locals 0

    .line 1470
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onStorageDisconnect()V

    return-void
.end method

.method public setSurfaceVisibility(I)V
    .locals 0

    .line 1549
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public setSystemUIToTheTimeAutoHidden(Z)V
    .locals 0

    .line 568
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    return-void
.end method

.method public setSystemUiVisibilityHide(I)V
    .locals 0

    .line 552
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUiVisibilityHide:I

    return-void
.end method

.method public setSystemUiVisibilityShow(I)V
    .locals 0

    .line 544
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSystemUiVisibilityShow:I

    return-void
.end method

.method public setVideoSeekImageWhetherToFollowSeekBar(Z)V
    .locals 0

    .line 580
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    return-void
.end method

.method public setWinHideSurfaceGone(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 712
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mWinHideSurfaceGone:Z

    return-void
.end method

.method public startPlay(Lcom/yftech/car/media/data/entity/MediaFile;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1066
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->startPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)Z

    move-result p0

    return p0
.end method

.method public startPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1077
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "VideoPlayer"

    .line 1078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPlay: isPlay=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1080
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1082
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    .line 1084
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    .line 1085
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    return v2

    .line 1088
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "startPlay: mediaFile.getType() not video,mediaFile.getType()=="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return v0

    :cond_2
    const-string/jumbo p0, "startPlayList: file == null"

    .line 1092
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return v0
.end method

.method public startPlayList(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1010
    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->startPlayList(Ljava/util/List;IZ)Z

    move-result p0

    return p0
.end method

.method public startPlayList(Ljava/util/List;IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;IZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1021
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "VideoPlayer"

    .line 1022
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPlayList: list=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",position=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",isPlay=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_5

    .line 1024
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 1025
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1026
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    if-eqz v2, :cond_4

    .line 1027
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v3, v0

    .line 1028
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1029
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v5}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1030
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1033
    :cond_1
    iput p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    move p1, v0

    .line 1034
    :goto_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 1035
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1036
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayPosition:I

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1041
    :cond_3
    :goto_2
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    .line 1043
    invoke-direct {p0, v1, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    return v4

    .line 1046
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "startPlayList: mediaFile.getType() not video || data is null,mediaFile=="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return v0

    :cond_5
    const-string/jumbo p0, "startPlayList: list.size() < position"

    .line 1051
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return v0

    :cond_6
    const-string/jumbo p0, "startPlayList: list == null || list.size() == 0"

    .line 1055
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return v0
.end method

.method public stopPlayer()V
    .locals 3

    .line 1391
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1392
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1393
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 1394
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1395
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getProgressPosition()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 1397
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v0, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->stop()V

    :cond_1
    const-string/jumbo v0, "stopPlayer: MediaPlayer release --ok "

    .line 1407
    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->notifyPlayPause(Z)V

    :cond_2
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1757
    iput p3, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceWidth:I

    .line 1758
    iput p4, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHeight:I

    .line 1759
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "surfaceChanged: width=="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",height=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1760
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    if-eqz p2, :cond_0

    .line 1761
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1716
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1718
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    if-eqz v0, :cond_3

    const-string v0, "VideoPlayer"

    .line 1719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceCreated: mPlayerManager.isCreatedPlayer=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mUiStartPlay=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isPlayState=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1721
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1722
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v0, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    .line 1723
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->prepareAsync()V

    goto :goto_0

    .line 1725
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1726
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez p1, :cond_1

    .line 1727
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mInitData:Z

    .line 1728
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mUiStartPlay:Z

    .line 1729
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    goto :goto_0

    :cond_1
    const-string p1, "VideoPlayer"

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "surfaceCreated: mPlayerManager.isPlayError=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mPlayerManager.mCurrentPlay=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1734
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->getProgressPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayProgress(I)V

    .line 1735
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    if-eqz p1, :cond_3

    .line 1736
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string p1, "VideoPlayer"

    const-string/jumbo v0, "surfaceDestroyed: "

    .line 1776
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1777
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1778
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1779
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1780
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 1782
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 1783
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mWinHideSurfaceGone:Z

    if-eqz p1, :cond_1

    .line 1784
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1785
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->updateSaveTime()V

    .line 1786
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public switchPlayMode()V
    .locals 3

    .line 861
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    const/16 v2, 0x67

    if-ge v0, v2, :cond_0

    .line 862
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayMode:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayMode(I)V

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setPlayMode(I)V

    :goto_0
    return-void
.end method

.method public switchScaleType()V
    .locals 3

    .line 671
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    const/16 v2, 0xca

    if-ge v0, v2, :cond_0

    .line 672
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mScaleType:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setScaleType(I)V

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->setScaleType(I)V

    :goto_0
    return-void
.end method

.method public updateSaveTime()V
    .locals 2

    .line 823
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->saveId(J)V

    .line 825
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->saveDataPath(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/VideoPlayer;->saveProgress(I)I

    :cond_0
    return-void
.end method

.method public updateSpeed(I)V
    .locals 2

    .line 1146
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    .line 1150
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    if-lt p1, v1, :cond_1

    .line 1151
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1152
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    goto :goto_0

    .line 1155
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1156
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/VideoPlayer;->isForegroundDisplay(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1157
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    :cond_2
    :goto_0
    return-void
.end method
