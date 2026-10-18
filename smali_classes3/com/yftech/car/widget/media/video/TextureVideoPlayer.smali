.class public Lcom/yftech/car/widget/media/video/TextureVideoPlayer;
.super Lcom/yftech/car/widget/media/video/BaseVideo;
.source "TextureVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/video/TextureVideoPlayer$VideoCallback;,
        Lcom/yftech/car/widget/media/video/TextureVideoPlayer$ErrorCode;,
        Lcom/yftech/car/widget/media/video/TextureVideoPlayer$Constant;
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

.field private static final TAG:Ljava/lang/String; = "TextureVideoPlayer"

.field public static final TRANSLATION:I = 0x1

.field public static final VIDEO_DISPLAY_VIEW:I = 0x2

.field public static final VIDEO_MEMORY_PLAY:Ljava/lang/String; = "media_video_memory_play"


# instance fields
.field private DialogWidthHeight:Landroid/util/Size;

.field private hasWindowFocusPlay:Z

.field private isLoadingBitmap:Z

.field private isResetSurface:Z

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

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHeight:I

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceWidth:I

.field private mSystemUIToTheTimeAutoHidden:Z

.field private mSystemUiVisibilityHide:I

.field private mSystemUiVisibilityShow:I

.field private mTextureView:Landroid/view/TextureView;

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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 318
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mInitData:Z

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    .line 189
    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUsage:I

    const/4 v1, 0x3

    .line 190
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mContentType:I

    const/4 v1, -0x1

    .line 192
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiSetProgress:I

    const/16 v1, 0x64

    .line 194
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    .line 199
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiStartPlay:Z

    const-wide/16 v1, 0x0

    .line 202
    iput-wide v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mBitmapTime:J

    const/4 v1, 0x0

    .line 203
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isLoadingBitmap:Z

    const/16 v2, 0xc8

    .line 207
    iput v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    .line 216
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPause:Z

    .line 217
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPlay:Z

    .line 218
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekVideoImage:Z

    .line 219
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideBrightness:Z

    .line 220
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideAudio:Z

    .line 224
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideForward:Z

    const/16 v2, 0x32

    .line 230
    iput v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProportion:I

    .line 249
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogError:Z

    .line 250
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mWinHideSurfaceGone:Z

    .line 255
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    .line 256
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    .line 258
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$1;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 335
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 1284
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2099
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$5;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRunnableImageViewProgress:Ljava/lang/Runnable;

    .line 2130
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 320
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->initListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/BaseVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mInitData:Z

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    .line 189
    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUsage:I

    const/4 v1, 0x3

    .line 190
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mContentType:I

    const/4 v1, -0x1

    .line 192
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiSetProgress:I

    const/16 v1, 0x64

    .line 194
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    .line 199
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiStartPlay:Z

    const-wide/16 v1, 0x0

    .line 202
    iput-wide v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mBitmapTime:J

    const/4 v1, 0x0

    .line 203
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isLoadingBitmap:Z

    const/16 v2, 0xc8

    .line 207
    iput v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    .line 216
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPause:Z

    .line 217
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPlay:Z

    .line 218
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekVideoImage:Z

    .line 219
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideBrightness:Z

    .line 220
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideAudio:Z

    .line 224
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideForward:Z

    const/16 v2, 0x32

    .line 230
    iput v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProportion:I

    .line 249
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogError:Z

    .line 250
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mWinHideSurfaceGone:Z

    .line 255
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    .line 256
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    .line 258
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$1;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 335
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 1284
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2099
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$5;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$5;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRunnableImageViewProgress:Ljava/lang/Runnable;

    .line 2130
    new-instance v0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 326
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->initListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 330
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/video/BaseVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 179
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mInitData:Z

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    .line 189
    iput p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUsage:I

    const/4 v0, 0x3

    .line 190
    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mContentType:I

    const/4 v0, -0x1

    .line 192
    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiSetProgress:I

    const/16 v0, 0x64

    .line 194
    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    .line 199
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiStartPlay:Z

    const-wide/16 v0, 0x0

    .line 202
    iput-wide v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mBitmapTime:J

    const/4 v0, 0x0

    .line 203
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isLoadingBitmap:Z

    const/16 v1, 0xc8

    .line 207
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    .line 216
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPause:Z

    .line 217
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPlay:Z

    .line 218
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekVideoImage:Z

    .line 219
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideBrightness:Z

    .line 220
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideAudio:Z

    .line 224
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideForward:Z

    const/16 v1, 0x32

    .line 230
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProportion:I

    .line 249
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogError:Z

    .line 250
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mWinHideSurfaceGone:Z

    .line 255
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    .line 256
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    .line 258
    new-instance p3, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$1;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    .line 335
    new-instance p3, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$2;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 1284
    new-instance p3, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$3;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2099
    new-instance p3, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$5;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$5;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRunnableImageViewProgress:Ljava/lang/Runnable;

    .line 2130
    new-instance p3, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$6;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 331
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->initData(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 332
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->initListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->updateTime()V

    return-void
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;IIII)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setScaleVideoSize(IIII)V

    return-void
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/widget/ImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mBitmapTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mBitmapProgress:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;J)J
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mBitmapProgress:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;J)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setImageViewProgress(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isLoadingBitmap:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isLoadingBitmap:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/Surface;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isResetSurface:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isResetSurface:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mInitData:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiStartPlay:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playErrorCount:I

    return p0
.end method

.method static synthetic access$2000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Lcom/yftech/car/media/data/entity/MediaFile;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    return-void
.end method

.method static synthetic access$208(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)I
    .locals 2

    .line 66
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playErrorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playErrorCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$2202(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$2300(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mWinHideSurfaceGone:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->hasWindowFocusPlay:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->requestAudioFocus(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2602(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogError:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekVideoImage:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPause:Z

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Ljava/util/List;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPlay:Z

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->switchVideo(Z)V

    return-void
.end method

.method static synthetic access$508(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)I
    .locals 2

    .line 66
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playTimeoutCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playTimeoutCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Lcom/yftech/car/widget/media/video/PlayerManager;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)Landroid/view/TextureView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoHeight:I

    return p0
.end method

.method private createdSurface()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->removeView(Landroid/view/View;)V

    .line 497
    :cond_0
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    .line 498
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->addView(Landroid/view/View;)V

    .line 499
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    .line 500
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 501
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 502
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 503
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setFocusableInTouchMode(Z)V

    .line 504
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->requestFocus()Z

    return-void
.end method

.method private declared-synchronized getSaveId()J
    .locals 4

    monitor-enter p0

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mCurrentUsb:I

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

    .line 557
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSp:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play_progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mCurrentUsb:I

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

    .line 1180
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/screen/CarScreenManager;->isOpenScreenBrightness()Z

    move-result v0

    .line 1181
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string p1, "TextureVideoPlayer"

    .line 1184
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

.method public static synthetic lambda$setDialogError$0(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Ljava/lang/String;)V
    .locals 3

    .line 1914
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogFlags:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->DialogWidthHeight:Landroid/util/Size;

    invoke-virtual {v0, v1, p1, v2}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->show(ILjava/lang/String;Landroid/util/Size;)V

    .line 1915
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogCancelable:Z

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setCancelable(Z)V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 3

    .line 1429
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1430
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1431
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1432
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1433
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 1434
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    .line 1437
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    return-void
.end method

.method private requestAudioFocus(Z)Z
    .locals 5

    .line 1245
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 1251
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_3

    .line 1252
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez p1, :cond_2

    .line 1253
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {p1, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mStreamType:I

    .line 1256
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    iget v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mContentType:I

    .line 1257
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 1258
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 1254
    invoke-virtual {p1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 1259
    invoke-virtual {p1, v1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1260
    invoke-virtual {p1, v2}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p1

    .line 1261
    invoke-virtual {p1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    const-string p1, "TextureVideoPlayer"

    const-string v2, " requestAudioFocus: "

    .line 1262
    invoke-static {p1, v2}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result p1

    goto :goto_0

    .line 1266
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mContentType:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    :goto_0
    const-string v2, "TextureVideoPlayer"

    .line 1268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestAudioFocus: request=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mUsage=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUsage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mStreamType=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mStreamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mContentType=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mContentType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_4

    move v4, v1

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    iput-boolean v4, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1270
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v0, :cond_6

    .line 1271
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    move p1, v1

    goto :goto_2

    :cond_5
    move p1, v3

    :goto_2
    iput-boolean p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    goto :goto_3

    .line 1273
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v3, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    .line 1276
    :goto_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    return v3

    .line 1277
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->setActive(Z)V

    return v1
.end method

.method private declared-synchronized saveDataPath(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data_path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mCurrentUsb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 553
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 549
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized saveId(J)V
    .locals 3

    monitor-enter p0

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mCurrentUsb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 545
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 546
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 542
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized saveProgress(I)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "TextureVideoPlayer"

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveProgress: newValue=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play_progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mCurrentUsb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 537
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 538
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 533
    monitor-exit p0

    throw p1
.end method

.method private setDialogError(Ljava/lang/String;)V
    .locals 4

    .line 1899
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    if-nez v0, :cond_0

    .line 1900
    new-instance v0, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSearchClearHistoryDialogThemeResId:I

    iget v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mErrorDialogLayoutId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    .line 1901
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    new-instance v1, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$4;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer$4;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setOnConfirmDialogListener(Lcom/yftech/car/widget/media/dialog/ConfirmDialog$OnConfirmDialogListener;)V

    .line 1909
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1910
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogFlags:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->DialogWidthHeight:Landroid/util/Size;

    invoke-virtual {v0, v1, p1, v2}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->show(ILjava/lang/String;Landroid/util/Size;)V

    .line 1911
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogCancelable:Z

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->setCancelable(Z)V

    goto :goto_0

    .line 1913
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/car/widget/media/video/-$$Lambda$TextureVideoPlayer$Cd6SbIifpS7DY74IanrqAJeOj7U;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/video/-$$Lambda$TextureVideoPlayer$Cd6SbIifpS7DY74IanrqAJeOj7U;-><init>(Lcom/yftech/car/widget/media/video/TextureVideoPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setImageViewProgress(J)V
    .locals 0

    .line 2095
    iput-wide p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mBitmapTime:J

    .line 2096
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRunnableImageViewProgress:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setRandomData()V
    .locals 4

    .line 776
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    const/4 v1, 0x0

    const/16 v2, 0x66

    if-ne v0, v2, :cond_2

    .line 777
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    .line 778
    :goto_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 779
    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    if-eq v2, v0, :cond_0

    .line 780
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 784
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 785
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    goto :goto_2

    .line 788
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_4

    .line 789
    :goto_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 790
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

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

    .line 1575
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getWidth()I

    move-result v0

    .line 1576
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getHeight()I

    move-result v1

    .line 1577
    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoWidth:I

    iget v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoHeight:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setScaleVideoSize(IIII)V

    return-void
.end method

.method private setScaleVideoSize(II)V
    .locals 2

    .line 1581
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getWidth()I

    move-result v0

    .line 1582
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getHeight()I

    move-result v1

    .line 1583
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setScaleVideoSize(IIII)V

    return-void
.end method

.method private setScaleVideoSize(IIII)V
    .locals 5

    const-string v0, "TextureVideoPlayer"

    .line 1587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setScaleVideoSize: videoWidth=="

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

    .line 1588
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    if-lt p2, v1, :cond_9

    if-ge p1, v1, :cond_0

    goto :goto_1

    .line 1596
    :cond_0
    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    const/16 v3, 0xca

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    if-gt p3, p1, :cond_1

    if-le p4, p2, :cond_3

    .line 1598
    :cond_1
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1599
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1600
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void

    .line 1604
    :cond_2
    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_4

    :cond_3
    move v2, v1

    goto :goto_0

    .line 1606
    :cond_4
    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_5

    .line 1607
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1608
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1609
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->requestLayout()V

    :cond_5
    move v2, v4

    :goto_0
    if-eqz v2, :cond_8

    mul-int v2, p3, p2

    .line 1613
    div-int/2addr v2, p1

    mul-int/2addr p1, p4

    .line 1614
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

    .line 1625
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr p4, p2

    .line 1626
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1628
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    :cond_8
    return-void

    .line 1590
    :cond_9
    :goto_1
    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1591
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1592
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method private setSlideCurrent(I)I
    .locals 7

    .line 2054
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoSlideProgress:Z

    if-eqz v0, :cond_4

    .line 2055
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    .line 2057
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 2059
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getProgressPosition()I

    move-result v0

    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProgress:I

    .line 2062
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mIndexX:I

    if-eq v0, p1, :cond_5

    .line 2063
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mIndexX:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideForward:Z

    .line 2064
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mIndexX:I

    .line 2066
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProgress:I

    add-int/2addr v0, p1

    if-gtz v0, :cond_2

    move v0, v2

    :cond_2
    int-to-long v1, v0

    .line 2073
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    .line 2074
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2077
    :cond_3
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setPlayProgress(I)V

    .line 2078
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v4

    iget-boolean v6, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideForward:Z

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onSlideProgress(ZIJZ)V

    .line 2079
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    .line 2089
    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProgress:I

    .line 2091
    :cond_5
    :goto_1
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProgress:I

    add-int/2addr p0, p1

    return p0
.end method

.method private start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0, p1, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->loadDataPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    .line 1120
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->requestLayout()V

    .line 1121
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    return-void
.end method

.method private switchVideo(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 801
    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge p1, v2, :cond_0

    .line 802
    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    goto :goto_0

    .line 804
    :cond_0
    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    goto :goto_0

    .line 807
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    if-lt p1, v1, :cond_2

    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 808
    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    goto :goto_0

    .line 810
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    .line 814
    :goto_0
    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    const/16 v2, 0x66

    if-ne p1, v2, :cond_5

    .line 815
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    if-le p1, v2, :cond_3

    .line 816
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayRandom:I

    goto :goto_1

    .line 818
    :cond_3
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setRandomData()V

    .line 819
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayRandom:I

    .line 821
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayRandom:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_8

    .line 823
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 824
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v0, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 827
    :cond_4
    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    goto :goto_2

    .line 830
    :cond_5
    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_6

    const-string p0, " switchVideo: mPlayPosition >= mList.size()"

    .line 831
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return-void

    .line 834
    :cond_6
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p1, :cond_8

    .line 836
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 837
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v0, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 840
    :cond_7
    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    :cond_8
    :goto_2
    return-void
.end method

.method private updateTime()V
    .locals 4

    .line 744
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getProgressPosition()I

    move-result v1

    iput v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 751
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSeekBar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSetProgress:I

    if-le v0, v1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    .line 753
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->setPlaybackStateCompat(IIF)V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isSurfaceHolderNoCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 760
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 764
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v0, "TextureVideoPlayer"

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateTime: mSurfaceHolder is null , mSurfaceView Visibility== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getVisibility()I

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

    const-string v0, " abandonAudioFocus:"

    .line 1375
    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz v0, :cond_3

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    .line 1379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    goto :goto_0

    .line 1382
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    goto :goto_0

    .line 1385
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 1387
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " abandonAudioFocus: abandonAudioFocus == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1389
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    .line 1390
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    .line 1391
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->setActive(Z)V

    return-void
.end method

.method public addVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 0

    .line 1214
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->addVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    return-void
.end method

.method public getAutoHideTime()I
    .locals 0

    .line 569
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAutoHideTime:I

    return p0
.end method

.method public getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    .line 922
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    return-object p0
.end method

.method public getCurrentSpeed()I
    .locals 0

    .line 1202
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    return p0
.end method

.method public getCurrentUsb()I
    .locals 0

    .line 646
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mCurrentUsb:I

    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 938
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->getDuration()I

    move-result p0

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getMediaPlayInfoNotPlaying()I
    .locals 0

    .line 1206
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->getMediaPlayInfoNotPlaying()I

    move-result p0

    return p0
.end method

.method public getOnSeekBar()Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 2122
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method public getOnSeekBar(Landroid/widget/ImageView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 2126
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    .line 2127
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mOnSeekBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

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

    .line 692
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    return-object p0
.end method

.method public getPlayListSize()I
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPlayMode()I
    .locals 0

    .line 914
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    return p0
.end method

.method public getPlayPosition()I
    .locals 2

    .line 861
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    .line 862
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayRandom:I

    return p0

    .line 864
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    return p0
.end method

.method public getPlaybackParams()F
    .locals 0

    .line 688
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    return p0
.end method

.method public getProgressPosition()I
    .locals 0

    .line 930
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->getProgressPosition()I

    move-result p0

    return p0
.end method

.method public getScaleType()I
    .locals 0

    .line 731
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    return p0
.end method

.method public getSpeedLimit()I
    .locals 0

    .line 1194
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    return p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 1549
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getSystemUiVisibilityHide()I
    .locals 0

    .line 585
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUiVisibilityHide:I

    return p0
.end method

.method public getSystemUiVisibilityShow()I
    .locals 0

    .line 577
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUiVisibilityShow:I

    return p0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 0

    .line 1557
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method public getVideoHideShowAnimation()I
    .locals 0

    .line 626
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoHideShowAnimation:I

    return p0
.end method

.method public getVideoHideShowAnimationDuration()I
    .locals 0

    .line 630
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoHideShowAnimationDuration:I

    return p0
.end method

.method protected initData(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 410
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 411
    new-instance v0, Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;-><init>(Lcom/yftech/car/widget/media/video/BaseVideo;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    .line 412
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x106000c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setBackgroundColor(I)V

    .line 413
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "media_video_memory_play"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSp:Landroid/content/SharedPreferences;

    .line 414
    new-instance v0, Lcom/yftech/car/widget/media/video/MediaSessionManager;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/MediaSessionManager;-><init>(Lcom/yftech/car/widget/media/video/BaseVideo;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    const/4 v0, 0x1

    .line 415
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mInitData:Z

    if-eqz p2, :cond_1

    .line 418
    iput-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAttributeSet:Landroid/util/AttributeSet;

    .line 419
    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 420
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_decoding_mode:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 421
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_request_audio_focus_usage:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUsage:I

    .line 422
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_request_audio_focus_stream_type:I

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mStreamType:I

    .line 423
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_request_audio_focus_content_type:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mContentType:I

    .line 424
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_systemUiVisibility_show:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUiVisibilityShow:I

    .line 425
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_systemUiVisibility_hide:I

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUiVisibilityHide:I

    .line 426
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_auto_countdown_hide:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAutoCountdownHide:I

    .line 427
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_click_switch_hide_show:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mClickSwitchHideShow:I

    .line 428
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_double_click_switch_hide_show:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDoubleClickSwitchHideShow:I

    .line 429
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_hide_show_animation:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoHideShowAnimation:I

    .line 430
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_hide_show_animation_duration:I

    const/16 v6, 0x1f4

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoHideShowAnimationDuration:I

    .line 432
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_previous_replay_time:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoPreviousReplayTime:I

    .line 434
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_play_mode:I

    const/16 v6, 0x64

    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    .line 436
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_slide_progress:I

    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoSlideProgress:Z

    .line 437
    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_slide_show_seek_image:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoSlideShowSeekImage:Z

    .line 439
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setSoftSolutionPlay(I)V

    .line 440
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_default_scale_type:I

    const/16 v4, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    .line 441
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_slide_proportion:I

    const/16 v4, 0x32

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProportion:I

    .line 442
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_auto_hide_time:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAutoHideTime:I

    .line 443
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_ErrorAutoNextDelayMillis:I

    const/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ge v3, v6, :cond_0

    const-string v3, "TextureVideoPlayer"

    const-string v4, "initData: ErrorAutoNextDelayMillis Cannot be less than 100"

    .line 446
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 448
    :cond_0
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setErrorAutoNextDelayMillis(I)V

    .line 449
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_SpeedLimitPlayback:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 450
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setSpeedLimitPlayback(I)V

    .line 451
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_seekPause:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPause:Z

    .line 452
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_seek_stop_play:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPlay:Z

    .line 454
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_seek_video_image:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekVideoImage:Z

    .line 456
    sget v3, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_video_has_window_focus_play:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->hasWindowFocusPlay:Z

    .line 458
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_file_no_exists:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoFileNoExists(Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_udisk_disconnect:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastUdiskDisconnect(Ljava/lang/String;)V

    .line 460
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_async_illegal_state:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoAsyncIllegalState(Ljava/lang/String;)V

    .line 461
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_format_is_not_supported:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastFormatIsNotSupported(Ljava/lang/String;)V

    .line 462
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_resources_are_occupied:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastResourcesAreOccupied(Ljava/lang/String;)V

    .line 464
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_video_not_playing:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoVideoNotPlaying(Ljava/lang/String;)V

    .line 465
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_audio_not_playing:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoAudioNotPlaying(Ljava/lang/String;)V

    .line 467
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_file_no_exists_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoFileNoExistsLayoutId(I)V

    .line 468
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_udisk_disconnect_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastUdiskDisconnectLayoutId(I)V

    .line 469
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_async_illegal_state_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoAsyncIllegalStateLayoutId(I)V

    .line 470
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_format_is_not_supported_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastFormatIsNotSupportedLayoutId(I)V

    .line 471
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_resources_are_occupied_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastResourcesAreOccupiedLayoutId(I)V

    .line 473
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_video_not_playing_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoVideoNotPlayingLayoutId(I)V

    .line 474
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v4, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_audio_not_playing_layout_id:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoAudioNotPlayingLayoutId(I)V

    .line 476
    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 478
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_flags:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogFlags:I

    .line 479
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_layout_id:I

    invoke-virtual {p2, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mErrorDialogLayoutId:I

    .line 480
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_themeResId:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSearchClearHistoryDialogThemeResId:I

    .line 481
    sget v1, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_cancelable:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogCancelable:Z

    .line 482
    sget v0, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_width:I

    const/high16 v1, -0x40000000    # -2.0f

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 483
    sget v2, Lcom/yftech/car/widget/media/R$styleable;->Dialog_dialog_height:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    .line 484
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->DialogWidthHeight:Landroid/util/Size;

    .line 487
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    .line 489
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->createdSurface()V

    return-void
.end method

.method protected initListener()V
    .locals 0

    .line 508
    invoke-virtual {p0, p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public isAudioFocus()Z
    .locals 0

    .line 1230
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    return p0
.end method

.method public isAudioFocus(Z)Z
    .locals 0

    if-eqz p1, :cond_2

    .line 1235
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

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

    .line 1237
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    return p0
.end method

.method public isAutoCountdownHide(I)Z
    .locals 0

    .line 614
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAutoCountdownHide:I

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

    .line 618
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mClickSwitchHideShow:I

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

    .line 622
    iget p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDoubleClickSwitchHideShow:I

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

    .line 1881
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mErrorDialogLayoutId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1882
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isUserHandleError:Z

    .line 1883
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setDialogError(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHolderEmpty()Z
    .locals 0

    .line 1545
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

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

    .line 2050
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public isPlayError()Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

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

    .line 1399
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result p0

    return p0
.end method

.method public isSoftSolution()Z
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

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

    .line 1553
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getVisibility()I

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

    .line 598
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    return p0
.end method

.method public isVideoSeekImageWhetherToFollowSeekBar()Z
    .locals 0

    .line 610
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    return p0
.end method

.method public isVideoSlideShowSeekImage()Z
    .locals 0

    .line 942
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoSlideShowSeekImage:Z

    return p0
.end method

.method public notifyPlayPause(Z)V
    .locals 2

    .line 1807
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayingChange(Z)V

    .line 1809
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1811
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    .line 1812
    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->getProgressPosition()I

    move-result v1

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    .line 1809
    invoke-virtual {v0, p1, v1, p0}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->setPlaybackStateCompat(IIF)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1713
    invoke-super {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->onAttachedToWindow()V

    const-string p0, "TextureVideoPlayer"

    const-string v0, " onAttachedToWindow: "

    .line 1714
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCompletion()V
    .locals 4

    const-string v0, " onCompletion: "

    .line 1821
    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1822
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    .line 1823
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 1825
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "TextureVideoPlayer"

    .line 1840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCompletion: mPlayPosition=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",(mList.size()-1)=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 1842
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->switchVideo(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "TextureVideoPlayer"

    .line 1844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCompletion: \u64ad\u653e\u5b8c\u6210 ,mPlayPosition=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mList.size()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mList.sizeitem=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    iget v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlaySequenceCompletion()V

    goto :goto_0

    .line 1831
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->stop()V

    .line 1832
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    goto :goto_0

    .line 1828
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->switchVideo(Z)V

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

    .line 518
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 519
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAttributeSet:Landroid/util/AttributeSet;

    if-eqz p1, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mAttributeSet:Landroid/util/AttributeSet;

    sget-object v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 521
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_file_no_exists:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoFileNoExists(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_udisk_disconnect:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastUdiskDisconnect(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_video_async_illegal_state:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastVideoAsyncIllegalState(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_format_is_not_supported:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastFormatIsNotSupported(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_resources_are_occupied:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastResourcesAreOccupied(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v1, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_video_not_playing:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoVideoNotPlaying(Ljava/lang/String;)V

    .line 528
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    sget v0, Lcom/yftech/car/widget/media/R$styleable;->VideoPlayer_toast_info_audio_not_playing:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setToastInfoAudioNotPlaying(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1719
    invoke-super {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->onDetachedFromWindow()V

    const-string v0, "TextureVideoPlayer"

    const-string v1, " onDetachedFromWindow: "

    .line 1720
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->release()V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "TextureVideoPlayer"

    .line 1858
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

    .line 1859
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->releaseMediaPlayer()V

    .line 1861
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 1862
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1868
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    const v2, -0x3b9aca00

    invoke-virtual {v0, p1, v2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayerError(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onError: Upper layer treatment code=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",codeMsg=="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 1870
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isUserHandleError:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1874
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isUserHandleError:Z

    .line 1876
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setPlayErrorException(I)V

    return-void
.end method

.method public onError(II)Z
    .locals 3

    const/4 v0, 0x0

    .line 1923
    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playTimeoutCount:I

    .line 1924
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onError: what=="

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

    .line 1927
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    return v1

    :cond_0
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    .line 1931
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->releaseMediaPlayer()V

    .line 1932
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

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

    .line 1957
    :cond_4
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0, p1, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    goto :goto_1

    .line 1938
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->releaseMediaPlayer()V

    .line 1940
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 1941
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1947
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v2, p1, p2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayerError(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onError: Upper layer treatment what=="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",extra=="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 1949
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isUserHandleError:Z

    return v1

    .line 1953
    :cond_6
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isUserHandleError:Z

    .line 1955
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setPlayErrorException(I)V

    :cond_7
    :goto_1
    return v1
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1634
    invoke-super {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->onFinishInflate()V

    const-string v0, "TextureVideoPlayer"

    const-string v1, " onFinishInflate: "

    .line 1635
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getPlayList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getPlayPosition()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->startPlayList(Ljava/util/List;I)Z

    .line 1639
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->clearListData()V

    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1854
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p2, p3}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onInfo(II)Z

    move-result p0

    return p0
.end method

.method public onPrepared(II)V
    .locals 6

    const-string v0, "TextureVideoPlayer"

    .line 1736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPrepared: width=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",height=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoWidth:I

    .line 1738
    iput p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoHeight:I

    .line 1739
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 p2, 0x0

    iput p2, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSetProgress:I

    .line 1743
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1744
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez p1, :cond_0

    .line 1745
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setScaleVideoSize()V

    .line 1747
    :cond_0
    iput p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playErrorCount:I

    .line 1748
    iput p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playTimeoutCount:I

    .line 1749
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1750
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1751
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getDuration()I

    move-result p1

    .line 1752
    invoke-static {}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getInstance()Lcom/yftech/car/widget/media/manager/MediaDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/manager/MediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mCurrentUsb:I

    .line 1753
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mInitData:Z

    if-eqz v1, :cond_2

    .line 1754
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mInitData:Z

    .line 1756
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getSaveId()J

    move-result-wide v1

    .line 1758
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getSaveProgress()I

    move-result v3

    .line 1759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onPrepared: start play mCurrentPlay=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

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

    .line 1760
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v4, v4, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v4}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    if-lez v3, :cond_1

    add-int/lit16 v4, p1, -0x3e8

    if-ge v3, v4, :cond_1

    .line 1761
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x36

    invoke-virtual {v4, v5, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1762
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v3, v4, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    const-string v3, "TextureVideoPlayer"

    .line 1763
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " onPrepared: seekTo  ----------ok  ,mediaId=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mPlayerManager.mCurrentPlay.getId()=="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    goto :goto_0

    .line 1766
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v1, p2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    goto :goto_0

    .line 1769
    :cond_2
    iget v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiSetProgress:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1770
    iput p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiSetProgress:I

    .line 1772
    :cond_3
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v1, p2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    .line 1774
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/media/data/entity/MediaFile;->setDuration(J)V

    .line 1776
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1777
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDisplay(Landroid/view/Surface;)V

    .line 1780
    :cond_4
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiStartPlay:Z

    if-eqz v1, :cond_7

    .line 1781
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getVisibility()I

    move-result p2

    if-nez p2, :cond_6

    .line 1782
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->requestAudioFocus()Z

    .line 1783
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isAudioFocus()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1784
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    goto :goto_1

    :cond_5
    const-string p2, "TextureVideoPlayer"

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPrepared: isAudioFocus == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPlayBeforeLossFocus == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v0, p2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    goto :goto_2

    .line 1792
    :cond_7
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean p2, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 1795
    :goto_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isPlaying()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1796
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->updatePlayback()V

    .line 1798
    :cond_8
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isPlaying()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->notifyPlayPause(Z)V

    .line 1799
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onPrepared: mMediaPlayer isPlaying == "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mUiStartPlay=="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiStartPlay:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 1800
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiStartPlay:Z

    .line 1801
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p2, p2, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p2, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPrepared(I)V

    .line 1802
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mMediaSession:Lcom/yftech/car/widget/media/video/MediaSessionManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/video/MediaSessionManager;->updatePlay(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 1803
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->updatePlayChange()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1726
    invoke-super {p0, p1, p2, p3, p4}, Lcom/yftech/car/widget/media/video/BaseVideo;->onSizeChanged(IIII)V

    const-string p3, "TextureVideoPlayer"

    .line 1727
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onSizeChanged: isPlayError=="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

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

    .line 1728
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 p3, 0x35

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1973
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1982
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDownX:I

    sub-int/2addr p1, v1

    .line 1983
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDownY:I

    sub-int/2addr v1, v2

    .line 1985
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-eqz v2, :cond_0

    .line 1986
    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProportion:I

    mul-int/2addr v2, p1

    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setSlideCurrent(I)I

    .line 1991
    :cond_0
    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    neg-int v2, v2

    if-lt p1, v2, :cond_1

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    if-le p1, v2, :cond_4

    :cond_1
    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    if-ge v1, v2, :cond_4

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    neg-int v2, v2

    if-le v1, v2, :cond_4

    .line 1992
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p2, p2, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-nez p2, :cond_c

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p2, p2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz p2, :cond_c

    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideBrightness:Z

    if-nez p2, :cond_c

    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideAudio:Z

    if-nez p2, :cond_c

    const/16 p2, -0x50

    if-ge p1, p2, :cond_2

    .line 1993
    iget p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDownX:I

    iget v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDownX:I

    :cond_2
    const/16 p2, 0x50

    if-le p1, p2, :cond_3

    .line 1994
    iget p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDownX:I

    iget v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDownX:I

    .line 1995
    :cond_3
    iget p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProportion:I

    mul-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setSlideCurrent(I)I

    move-result p0

    const-string p1, "TextureVideoPlayer"

    .line 1996
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch: videoSeek=="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1999
    :cond_4
    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    neg-int v2, v2

    if-lt v1, v2, :cond_5

    iget v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    if-le v1, v2, :cond_c

    :cond_5
    iget v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    if-ge p1, v1, :cond_c

    iget v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaledTouchSlop:I

    neg-int v1, v1

    if-le p1, v1, :cond_c

    .line 2000
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideBrightness:Z

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideAudio:Z

    if-nez p1, :cond_c

    .line 2001
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 2002
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float p1, p1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_6

    .line 2003
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideBrightness:Z

    goto/16 :goto_0

    .line 2004
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_c

    .line 2005
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideAudio:Z

    goto/16 :goto_0

    .line 2016
    :pswitch_1
    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProgress:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_7

    return v0

    .line 2019
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideBrightness:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideAudio:Z

    if-nez p1, :cond_a

    .line 2020
    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDoubleClickSwitchHideShow:I

    if-lez p1, :cond_9

    .line 2021
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x33

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2022
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2023
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onDoubleClick(Z)V

    .line 2024
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playSoundEffect(I)V

    goto :goto_0

    .line 2026
    :cond_8
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2029
    :cond_9
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onDoubleClick(Z)V

    .line 2030
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->playSoundEffect(I)V

    goto :goto_0

    .line 2033
    :cond_a
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-eqz p1, :cond_b

    .line 2034
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    .line 2035
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    .line 2036
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v2, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getProgressPosition()I

    move-result v4

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v5

    iget-boolean v7, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideForward:Z

    invoke-virtual/range {v2 .. v7}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onSlideProgress(ZIJZ)V

    .line 2038
    :cond_b
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideBrightness:Z

    .line 2039
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSlideAudio:Z

    goto :goto_0

    .line 1977
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDownX:I

    .line 1978
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDownY:I

    .line 1979
    iput v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSlideProgress:I

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

    .line 1644
    invoke-super {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->onWindowFocusChanged(Z)V

    const-string v0, "TextureVideoPlayer"

    .line 1645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onWindowFocusChanged: hasWindowFocus=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mPlayerManager.isPlayError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v2, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isUserHandleError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isUserHandleError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isAvmShow=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isAvmShow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1645
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1651
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p1, :cond_0

    .line 1652
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->createdSurface()V

    .line 1653
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isUserHandleError:Z

    if-nez p1, :cond_0

    .line 1654
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1655
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1659
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 1660
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isAvmShow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1662
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    .line 1665
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1671
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogError:Z

    if-eqz p1, :cond_3

    .line 1672
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogError:Z

    .line 1673
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1674
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->switchVideo(Z)V

    goto :goto_0

    .line 1680
    :cond_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    .line 1682
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p1, :cond_3

    .line 1683
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 1684
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    .line 1685
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->releaseMediaPlayer()V

    .line 1686
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 1687
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public release()V
    .locals 4

    .line 1444
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1445
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1446
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1447
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1448
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 1449
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1450
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getProgressPosition()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 1452
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v0, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 1455
    :cond_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v3, v3, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    .line 1457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " releaseMediaPlayer: progress == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",MediaPlayer release --ok "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 1459
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->notifyPlayPause(Z)V

    .line 1460
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 1461
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1462
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1467
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_3

    .line 1468
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->saveId(J)V

    .line 1469
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->saveDataPath(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->saveProgress(I)I

    .line 1471
    invoke-static {}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->getInstance()Lcom/yftech/car/widget/media/video/VideoDataPlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/VideoDataPlayManager;->updatePlayChange()V

    :cond_3
    const-string v0, "TextureVideoPlayer"

    const-string v2, " release: updateMemory ---finish"

    .line 1473
    invoke-static {v0, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1475
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mRandomList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1477
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1478
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mConfirmDialog:Lcom/yftech/car/widget/media/dialog/ConfirmDialog;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/dialog/ConfirmDialog;->dismiss()V

    .line 1480
    :cond_4
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->abandonAudioFocus()V

    .line 1481
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    return-void
.end method

.method public removeVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 0

    .line 1218
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->removeVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 1

    const/4 v0, 0x0

    .line 1226
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->requestAudioFocus(Z)Z

    move-result p0

    return p0
.end method

.method public resetSurface()V
    .locals 2

    const-string v0, "TextureVideoPlayer"

    const-string v1, " resetSurface: "

    .line 1693
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 1695
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1696
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->removeView(Landroid/view/View;)V

    .line 1697
    iput-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    .line 1699
    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    .line 1701
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1702
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->addView(Landroid/view/View;)V

    .line 1704
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    .line 1705
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1706
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setFocusable(Z)V

    .line 1707
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setFocusableInTouchMode(Z)V

    .line 1708
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isResetSurface:Z

    return-void
.end method

.method public setCorrectionProgress(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1571
    :goto_0
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiSetProgress:I

    return-void
.end method

.method public setDialogError(Z)V
    .locals 0

    .line 1895
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mDialogError:Z

    return-void
.end method

.method public setErrorAutoNextDelayMillis(I)V
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 1134
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setDelayMillis(I)V

    return-void

    .line 1132
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "delayMillis Cannot be less than 100,must delayMillis >= 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setLayoutChildManager(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mLayoutChildManager:Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;

    return-void
.end method

.method public setOnTouchGesture(Z)V
    .locals 0

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 656
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPlayMode(I)V
    .locals 1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    const/16 v0, 0x67

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    .line 901
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setRandomData()V

    .line 902
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayMode(I)V

    return-void

    .line 897
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " setPlayMode: mode values invalid,mode=="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setPlayProgress(I)V
    .locals 4

    .line 1520
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_4

    .line 1521
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1525
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    const-string v1, "TextureVideoPlayer"

    .line 1529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setPlayProgress: positionTime=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",duration=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    :goto_0
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiSetProgress:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1532
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiSetProgress:I

    .line 1534
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 1535
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->seekTo(I)V

    goto :goto_1

    :cond_3
    const-string p0, " setPlayProgress: current play error"

    .line 1537
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 1540
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " seekTo: mPlayerManager.isPrepared=="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

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

    .line 1493
    iput-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    .line 1495
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    int-to-long v0, p1

    .line 1496
    iput-wide v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mBitmapProgress:J

    .line 1498
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isLoadingBitmap:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 1499
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isLoadingBitmap:Z

    .line 1500
    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setImageViewProgress(J)V

    .line 1504
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setPlayProgress(I)V

    return-void
.end method

.method public setPlayState(I)Z
    .locals 6

    .line 956
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isHolderEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "TextureVideoPlayer"

    .line 957
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

    .line 959
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 961
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v0, "TextureVideoPlayer"

    .line 965
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPlayState: state=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/utils/MediaKeyUtil;->getVideoKeyValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v3, 0x4

    if-eq p1, v3, :cond_3

    if-ne p1, v0, :cond_4

    .line 967
    :cond_3
    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isForegroundDisplay(Z)Z

    move-result v4

    if-nez v4, :cond_4

    const-string p0, "TextureVideoPlayer"

    const-string/jumbo p1, "setPlayState: ignore"

    .line 968
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 972
    :cond_4
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v4, v4, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-nez v4, :cond_8

    .line 973
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setPlayState:  isPrepared is false state=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/utils/MediaKeyUtil;->getVideoKeyValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 974
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v4, v4, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v4, :cond_6

    if-eq v2, p1, :cond_5

    const/4 v4, 0x3

    if-ne v4, p1, :cond_6

    .line 975
    :cond_5
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->releaseMediaPlayer()V

    .line 976
    iget-object v4, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v4, v4, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-direct {p0, v4, v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    :cond_6
    if-eq p1, v3, :cond_7

    if-eq p1, v0, :cond_7

    return v1

    .line 982
    :cond_7
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->releaseMediaPlayer()V

    :cond_8
    const-string v0, "TextureVideoPlayer"

    .line 985
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setPlayState: state=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/yftech/car/widget/media/utils/MediaKeyUtil;->getVideoKeyValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    .line 1016
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "\u6307\u4ee4\u4e0d\u652f\u6301"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 1004
    :pswitch_0
    iget p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoPreviousReplayTime:I

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->getProgressPosition()I

    move-result p1

    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoPreviousReplayTime:I

    if-le p1, v0, :cond_9

    const-string p1, "TextureVideoPlayer"

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " prev: mVideoPreviousReplayTime=="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mVideoPreviousReplayTime:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p1, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    .line 1007
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setPlayProgress(I)V

    .line 1008
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result p1

    if-nez p1, :cond_b

    .line 1009
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    goto :goto_1

    .line 1012
    :cond_9
    invoke-direct {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->switchVideo(Z)V

    goto :goto_1

    .line 1001
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->switchVideo(Z)V

    goto :goto_1

    .line 994
    :pswitch_2
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 995
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    goto :goto_1

    .line 997
    :cond_a
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    goto :goto_1

    .line 991
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    goto :goto_1

    .line 988
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    :cond_b
    :goto_1
    return v2

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

    .line 673
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    .line 674
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->updatePlayback()V

    .line 677
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlaybackParams(F)V

    goto :goto_0

    :cond_1
    const-string p0, "TextureVideoPlayer"

    .line 679
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

    .line 1512
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mProgressImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public setScaleType(I)V
    .locals 4

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v1, 0xca

    if-le p1, v1, :cond_1

    :cond_0
    const-string v1, "TextureVideoPlayer"

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScaleType: type values invalid,type=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 719
    :cond_1
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    .line 720
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_2

    .line 721
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setScaleVideoSize()V

    .line 723
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onScaleType(I)V

    return-void
.end method

.method public setSeekPause(Z)V
    .locals 0

    .line 664
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isSeekPause:Z

    return-void
.end method

.method public setSoftSolutionPlay(I)V
    .locals 0

    .line 1144
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setSoftSolutionPlay(I)V

    return-void
.end method

.method public setSpeedLimitPlayback(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    .line 1154
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->updateSpeed(I)V

    goto :goto_0

    :cond_0
    const-string p0, "TextureVideoPlayer"

    const-string/jumbo p1, "setSpeedLimitPlayback: The speed limit cannot be less than 0"

    .line 1156
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setStorageDisconnect()V
    .locals 0

    .line 1485
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onStorageDisconnect()V

    return-void
.end method

.method public setSurfaceVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1563
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1565
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->removeView(Landroid/view/View;)V

    .line 1567
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->requestFocus()Z

    return-void
.end method

.method public setSystemUIToTheTimeAutoHidden(Z)V
    .locals 0

    .line 593
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUIToTheTimeAutoHidden:Z

    return-void
.end method

.method public setSystemUiVisibilityHide(I)V
    .locals 0

    .line 581
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUiVisibilityHide:I

    return-void
.end method

.method public setSystemUiVisibilityShow(I)V
    .locals 0

    .line 573
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSystemUiVisibilityShow:I

    return-void
.end method

.method public setVideoSeekImageWhetherToFollowSeekBar(Z)V
    .locals 0

    .line 605
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mIsVideoSeekImageWhetherToFollowSeekBar:Z

    return-void
.end method

.method public setWinHideSurfaceGone(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 740
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mWinHideSurfaceGone:Z

    return-void
.end method

.method public startPlay(Lcom/yftech/car/media/data/entity/MediaFile;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1086
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->startPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)Z

    move-result p0

    return p0
.end method

.method public startPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1097
    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "TextureVideoPlayer"

    .line 1098
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " startPlay: isPlay=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1103
    iput-boolean p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiStartPlay:Z

    .line 1104
    iput v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    .line 1105
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    return v2

    .line 1108
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " startPlay: mediaFile.getType() not video,mediaFile.getType()=="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return v0

    :cond_2
    const-string p0, " startPlayList: file == null"

    .line 1112
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

    .line 1030
    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->startPlayList(Ljava/util/List;IZ)Z

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

    .line 1041
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "TextureVideoPlayer"

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startPlayList: list=="

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

    .line 1043
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_5

    .line 1044
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/media/data/entity/MediaFile;

    .line 1045
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1046
    invoke-virtual {v1}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    if-eqz v2, :cond_4

    .line 1047
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v3, v0

    .line 1048
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1049
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v5}, Lcom/yftech/car/media/data/entity/MediaFile;->getType()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1050
    iget-object v5, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    iput p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    move p1, v0

    .line 1054
    :goto_1
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 1055
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p2}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1056
    iput p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayPosition:I

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1061
    :cond_3
    :goto_2
    iput-boolean p3, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mUiStartPlay:Z

    .line 1063
    invoke-direct {p0, v1, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->start(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    return v4

    .line 1066
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, " startPlayList: mediaFile.getType() not video || data is null,mediaFile=="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return v0

    :cond_5
    const-string p0, " startPlayList: list.size() < position"

    .line 1071
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return v0

    :cond_6
    const-string p0, " startPlayList: list == null || list.size() == 0"

    .line 1075
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return v0
.end method

.method public stopPlayer()V
    .locals 3

    .line 1406
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1407
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 1408
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput-boolean v1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 1409
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1410
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->getProgressPosition()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    .line 1412
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput v0, v2, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    .line 1415
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_1

    .line 1416
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->stop()V

    :cond_1
    const-string/jumbo v0, "stopPlayer: MediaPlayer release --ok "

    .line 1422
    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->notifyPlayPause(Z)V

    :cond_2
    return-void
.end method

.method public switchPlayMode()V
    .locals 3

    .line 880
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    const/16 v2, 0x67

    if-ge v0, v2, :cond_0

    .line 881
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayMode:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setPlayMode(I)V

    goto :goto_0

    .line 883
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setPlayMode(I)V

    :goto_0
    return-void
.end method

.method public switchScaleType()V
    .locals 3

    .line 699
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    const/16 v2, 0xca

    if-ge v0, v2, :cond_0

    .line 700
    iget v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mScaleType:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setScaleType(I)V

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->setScaleType(I)V

    :goto_0
    return-void
.end method

.method public updateSaveTime()V
    .locals 2

    .line 849
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->saveId(J)V

    .line 851
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-object v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->saveDataPath(Ljava/lang/String;)V

    .line 852
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v0, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->saveProgress(I)I

    :cond_0
    return-void
.end method

.method public updateSpeed(I)V
    .locals 2

    .line 1166
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iput p1, v0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    .line 1167
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget v1, v1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    if-lt p1, v1, :cond_0

    .line 1168
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->pause(Z)V

    goto :goto_0

    .line 1170
    :cond_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    iget-boolean p1, p1, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1171
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->isForegroundDisplay(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1172
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/TextureVideoPlayer;->mPlayerManager:Lcom/yftech/car/widget/media/video/PlayerManager;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    :cond_1
    :goto_0
    return-void
.end method
