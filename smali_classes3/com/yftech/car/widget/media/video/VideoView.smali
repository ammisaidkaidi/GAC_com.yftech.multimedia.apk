.class public Lcom/yftech/car/widget/media/video/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/SubtitleController$Anchor;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoView"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field private mAudioFocusType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private final mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private final mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

.field private mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/car/widget/media/video/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yftech/car/widget/media/video/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 154
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    const/4 p1, 0x0

    .line 109
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    .line 110
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    const/4 p2, 0x0

    .line 113
    iput-object p2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 114
    iput-object p2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 p2, 0x1

    .line 131
    iput p2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusType:I

    .line 471
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoView$1;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoView$1;-><init>(Lcom/yftech/car/widget/media/video/VideoView;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 478
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoView$2;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoView$2;-><init>(Lcom/yftech/car/widget/media/video/VideoView;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 490
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoView$3;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoView$3;-><init>(Lcom/yftech/car/widget/media/video/VideoView;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 552
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoView$4;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoView$4;-><init>(Lcom/yftech/car/widget/media/video/VideoView;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 569
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoView$5;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoView$5;-><init>(Lcom/yftech/car/widget/media/video/VideoView;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 579
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoView$6;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoView$6;-><init>(Lcom/yftech/car/widget/media/video/VideoView;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 631
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoView$7;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoView$7;-><init>(Lcom/yftech/car/widget/media/video/VideoView;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 683
    new-instance p3, Lcom/yftech/car/widget/media/video/VideoView$8;

    invoke-direct {p3, p0}, Lcom/yftech/car/widget/media/video/VideoView$8;-><init>(Lcom/yftech/car/widget/media/video/VideoView;)V

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 156
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    .line 157
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    .line 159
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "audio"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 160
    new-instance p3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p3, p2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    const/4 p4, 0x3

    .line 161
    invoke-virtual {p3, p4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p3

    iput-object p3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 163
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p3, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 164
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p3

    invoke-interface {p3, p4}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 166
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/video/VideoView;->setFocusable(Z)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/video/VideoView;->setFocusableInTouchMode(Z)V

    .line 168
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->requestFocus()Z

    .line 170
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    .line 171
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/video/VideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusType:I

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/car/widget/media/video/VideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusType:I

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/video/VideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/yftech/car/widget/media/video/VideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSeekWhenPrepared:I

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/car/widget/media/video/VideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/car/widget/media/video/VideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1102(Lcom/yftech/car/widget/media/video/VideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$1200(Lcom/yftech/car/widget/media/video/VideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/car/widget/media/video/VideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/car/widget/media/video/VideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    return p0
.end method

.method static synthetic access$1302(Lcom/yftech/car/widget/media/video/VideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/AudioFocusRequest;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/AudioManager;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/yftech/car/widget/media/video/VideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/car/widget/media/video/VideoView;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$2002(Lcom/yftech/car/widget/media/video/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$202(Lcom/yftech/car/widget/media/video/VideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$2100(Lcom/yftech/car/widget/media/video/VideoView;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$2200(Lcom/yftech/car/widget/media/video/VideoView;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/VideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/yftech/car/widget/media/video/VideoView;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    return p1
.end method

.method static synthetic access$402(Lcom/yftech/car/widget/media/video/VideoView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$502(Lcom/yftech/car/widget/media/video/VideoView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$602(Lcom/yftech/car/widget/media/video/VideoView;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/car/widget/media/video/VideoView;)Landroid/widget/MediaController;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    return-object p0
.end method

.method private attachMediaController()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 464
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 466
    :goto_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 467
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 871
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private measureAndLayoutSubtitleWidget()V
    .locals 3

    .line 947
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 948
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 950
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {p0, v0, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setSize(II)V

    return-void
.end method

.method private openVideo()V
    .locals 7

    .line 366
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 372
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/VideoView;->release(Z)V

    .line 374
    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 378
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    if-nez v1, :cond_1

    .line 379
    new-instance v1, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v1, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 381
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v4, 0x2

    .line 382
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 383
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 380
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 384
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 385
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 386
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    const-string v1, "VideoView"

    const-string/jumbo v3, "requestAudioFocus: "

    .line 387
    invoke-static {v1, v3}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusType:I

    :cond_2
    const/4 v1, -0x1

    .line 393
    :try_start_0
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 405
    iget v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioSession:I

    if-eqz v3, :cond_3

    .line 406
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioSession:I

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    .line 408
    :cond_3
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    iput v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioSession:I

    .line 410
    :goto_0
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 411
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 412
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 413
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 414
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 415
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 416
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentBufferPercentage:I

    .line 417
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/yftech/car/widget/media/video/VideoView;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/yftech/car/widget/media/video/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 418
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 419
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 420
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 421
    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 434
    iput v2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    .line 435
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "VideoView"

    .line 443
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yftech/car/widget/media/video/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    .line 445
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    .line 446
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v3, v2, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "VideoView"

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/yftech/car/widget/media/video/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    .line 439
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    .line 440
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v3, v2, v0}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    .line 450
    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method private release(Z)V
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 721
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 722
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 723
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    .line 724
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    if-eqz p1, :cond_0

    .line 726
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    .line 728
    :cond_0
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusType:I

    if-eqz p1, :cond_1

    .line 729
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_1
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    goto :goto_0

    .line 798
    :cond_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 0

    return-void
.end method

.method public canPause()Z
    .locals 0

    .line 879
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCanPause:Z

    return p0
.end method

.method public canSeekBackward()Z
    .locals 0

    .line 884
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCanSeekBack:Z

    return p0
.end method

.method public canSeekForward()Z
    .locals 0

    .line 889
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCanSeekForward:Z

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 931
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 933
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 935
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 936
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {p0, p1}, Landroid/media/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    .line 937
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 240
    const-class p0, Lcom/yftech/car/widget/media/video/VideoView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 894
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioSession:I

    if-nez v0, :cond_0

    .line 895
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 896
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioSession:I

    .line 897
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 899
    :cond_0
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioSession:I

    return p0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 864
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 865
    iget p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentBufferPercentage:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 841
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 1

    .line 832
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 0

    .line 998
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public isPlaying()Z
    .locals 1

    .line 859
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 904
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 906
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 907
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {p0}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 913
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 915
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 916
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {p0}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 762
    :goto_0
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    .line 774
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 775
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->start()V

    .line 776
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    .line 787
    :cond_4
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->toggleMediaControlsVisiblity()V

    goto :goto_4

    .line 781
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 782
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->pause()V

    .line 783
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->show()V

    :cond_6
    return v0

    .line 765
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 766
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->pause()V

    .line 767
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->show()V

    goto :goto_3

    .line 769
    :cond_8
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->start()V

    .line 770
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/MediaController;->hide()V

    :goto_3
    return v0

    .line 791
    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 922
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 924
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz p1, :cond_0

    .line 925
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->measureAndLayoutSubtitleWidget()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 179
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    invoke-static {v0, p1}, Lcom/yftech/car/widget/media/video/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 180
    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    invoke-static {v1, p2}, Lcom/yftech/car/widget/media/video/VideoView;->getDefaultSize(II)I

    move-result v1

    .line 181
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    if-lez v2, :cond_7

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    if-lez v2, :cond_7

    .line 183
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 184
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 185
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 186
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 194
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    mul-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 196
    iget p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    mul-int/2addr p1, p2

    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    div-int v0, p1, v0

    move p1, v0

    goto :goto_2

    .line 197
    :cond_0
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    mul-int/2addr v1, p1

    if-le v0, v1, :cond_8

    .line 199
    iget p2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    div-int v1, p2, v0

    goto :goto_1

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    .line 204
    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_2

    :cond_2
    move p2, v0

    goto :goto_2

    :cond_3
    if-ne v1, v2, :cond_5

    .line 212
    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    goto :goto_2

    :cond_4
    move p1, v1

    goto :goto_2

    .line 219
    :cond_5
    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    .line 220
    iget v4, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    if-ne v1, v3, :cond_6

    if-le v4, p2, :cond_6

    .line 224
    iget v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    div-int/2addr v1, v2

    goto :goto_0

    :cond_6
    move v1, v2

    move p2, v4

    :goto_0
    if-ne v0, v3, :cond_4

    if-le v1, p1, :cond_4

    .line 229
    iget p2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mVideoWidth:I

    div-int v1, p2, v0

    goto :goto_1

    :cond_7
    move p1, v0

    :goto_1
    move p2, v1

    .line 235
    :cond_8
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/yftech/car/widget/media/video/VideoView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 737
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 738
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->toggleMediaControlsVisiblity()V

    .line 740
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 745
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 746
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 747
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->toggleMediaControlsVisiblity()V

    .line 749
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 2

    .line 813
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 816
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    .line 819
    :cond_0
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 0

    .line 244
    invoke-static {p1, p2}, Lcom/yftech/car/widget/media/video/VideoView;->getDefaultSize(II)I

    move-result p0

    return p0
.end method

.method public resume()V
    .locals 0

    .line 827
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->openVideo()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 849
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    .line 851
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSeekWhenPrepared:I

    goto :goto_0

    .line 853
    :cond_0
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSeekWhenPrepared:I

    :goto_0
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 316
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioAttributes:Landroid/media/AudioAttributes;

    return-void

    .line 314
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null AudioAttributes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAudioFocusRequest(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal audio focus type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 305
    :cond_1
    :goto_0
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusType:I

    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 457
    :cond_0
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 458
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->attachMediaController()V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-ne v0, p1, :cond_0

    return-void

    .line 960
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isAttachedToWindow()Z

    move-result v0

    .line 961
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 963
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 966
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 969
    :cond_2
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz p1, :cond_4

    .line 972
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-nez v1, :cond_3

    .line 973
    new-instance v1, Lcom/yftech/car/widget/media/video/VideoView$9;

    invoke-direct {v1, p0}, Lcom/yftech/car/widget/media/video/VideoView$9;-><init>(Lcom/yftech/car/widget/media/video/VideoView;)V

    iput-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    :cond_3
    const/4 v1, 0x0

    .line 981
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/VideoView;->setWillNotDraw(Z)V

    .line 982
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    if-eqz v0, :cond_5

    .line 985
    invoke-interface {p1}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 986
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->requestLayout()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 989
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoView;->setWillNotDraw(Z)V

    .line 992
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->invalidate()V

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 253
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoView;->setVideoURI(Landroid/net/Uri;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0, p1, v0}, Lcom/yftech/car/widget/media/video/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 276
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mUri:Landroid/net/Uri;

    .line 277
    iput-object p2, p0, Lcom/yftech/car/widget/media/video/VideoView;->mHeaders:Ljava/util/Map;

    const/4 p1, 0x0

    .line 278
    iput p1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mSeekWhenPrepared:I

    .line 279
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->openVideo()V

    .line 280
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->requestLayout()V

    .line 281
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/VideoView;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 2

    .line 804
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/VideoView;->isInPlaybackState()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 806
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    .line 808
    :cond_0
    iput v1, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 357
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 359
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mCurrentState:I

    .line 360
    iput v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mTargetState:I

    .line 361
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/VideoView;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    const/4 v0, 0x0

    .line 823
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/VideoView;->release(Z)V

    return-void
.end method
