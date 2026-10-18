.class public Lcom/yftech/car/widget/media/video/PlayerManager;
.super Ljava/lang/Object;
.source "PlayerManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerManager"


# instance fields
.field isAudioFocus:Z

.field isCreatedPlayer:Z

.field private isHardPlaybackError:Z

.field isPlayBeforeLossFocus:Z

.field isPlayError:Z

.field isPlayState:Z

.field public isPreparation:Z

.field isPrepared:Z

.field isSeekBar:Z

.field isSlideCurrent:Z

.field private isSoftSolution:Z

.field mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

.field mCurrentSpeed:I

.field private mDelayMillis:I

.field private mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

.field private mFFmpegPrepared:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLoadDataThread:Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;

.field private mMediaPlayInfoNotPlaying:I

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMyOnErrorListener:Lcom/example/ffmpeg/listener/MyOnErrorListener;

.field private mOnCompleteListener:Lcom/example/ffmpeg/listener/MyOnCompleteListener;

.field private mOnParparedListener:Lcom/example/ffmpeg/listener/MyOnParparedListener;

.field private mOnTimeInfoListener:Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;

.field mPlayback:F

.field mProgress:I

.field mSetProgress:I

.field private mSoftSolutionPlay:I

.field mSpeedLimit:I

.field private mStartTime:J

.field private mSurfaceHolderNoCreating:Z

.field private mToastFormatIsNotSupported:Ljava/lang/String;

.field private mToastFormatIsNotSupportedLayoutId:I

.field private mToastInfoAudioNotPlaying:Ljava/lang/String;

.field private mToastInfoAudioNotPlayingLayoutId:I

.field private mToastInfoVideoNotPlaying:Ljava/lang/String;

.field private mToastInfoVideoNotPlayingLayoutId:I

.field private mToastResourcesAreOccupied:Ljava/lang/String;

.field private mToastResourcesAreOccupiedLayoutId:I

.field private mToastUdiskDisconnect:Ljava/lang/String;

.field private mToastUdiskDisconnectLayoutId:I

.field private mToastVideoAsyncIllegalState:Ljava/lang/String;

.field private mToastVideoAsyncIllegalStateLayoutId:I

.field private mToastVideoFileNoExists:Ljava/lang/String;

.field private mToastVideoFileNoExistsLayoutId:I

.field final mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

.field private final mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;


# direct methods
.method constructor <init>(Lcom/yftech/car/widget/media/video/BaseVideo;Landroid/os/Handler;)V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpegPrepared:Z

    .line 73
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    .line 75
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isHardPlaybackError:Z

    .line 80
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    const/4 v1, 0x1

    .line 81
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    .line 82
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    const/16 v1, 0xbb8

    .line 88
    iput v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mDelayMillis:I

    .line 89
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    .line 90
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSeekBar:Z

    .line 91
    iput v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    .line 92
    iput v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 93
    iput v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    .line 99
    iput v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    .line 125
    new-instance v0, Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-direct {v0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    .line 133
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    .line 134
    iput-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/yftech/car/widget/media/video/BaseVideo;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/car/widget/media/video/PlayerManager;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpegPrepared:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/car/widget/media/video/PlayerManager;)Lcom/example/ffmpeg/FFmpeg;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/car/widget/media/video/PlayerManager;)Landroid/media/MediaPlayer;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private createdFFMPEG()V
    .locals 2

    .line 150
    new-instance v0, Lcom/example/ffmpeg/FFmpeg;

    invoke-direct {v0}, Lcom/example/ffmpeg/FFmpeg;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    .line 152
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->initFFMPEGListener()V

    .line 154
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mOnCompleteListener:Lcom/example/ffmpeg/listener/MyOnCompleteListener;

    invoke-virtual {v0, v1}, Lcom/example/ffmpeg/FFmpeg;->setMyOnCompleteListener(Lcom/example/ffmpeg/listener/MyOnCompleteListener;)V

    .line 155
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mOnParparedListener:Lcom/example/ffmpeg/listener/MyOnParparedListener;

    invoke-virtual {v0, v1}, Lcom/example/ffmpeg/FFmpeg;->setWlOnParparedListener(Lcom/example/ffmpeg/listener/MyOnParparedListener;)V

    .line 156
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mOnTimeInfoListener:Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;

    invoke-virtual {v0, v1}, Lcom/example/ffmpeg/FFmpeg;->setMyOnTimeInfoListener(Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;)V

    .line 157
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMyOnErrorListener:Lcom/example/ffmpeg/listener/MyOnErrorListener;

    invoke-virtual {v0, v1}, Lcom/example/ffmpeg/FFmpeg;->setMyOnErrorListener(Lcom/example/ffmpeg/listener/MyOnErrorListener;)V

    .line 167
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private createdPlayer()V
    .locals 2

    .line 138
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 139
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 140
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 141
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 142
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 143
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p0, "PlayerManager"

    const-string v0, "createdPlayer: --ok"

    .line 145
    invoke-static {p0, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getToastContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<file_name>"

    .line 685
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "<file_name>"

    .line 686
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<file_name>"

    .line 687
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xb

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<file_name>"

    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->getToastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "<file_title>"

    .line 694
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "<file_title>"

    .line 695
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<file_title>"

    .line 696
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "<file_title>"

    .line 698
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->getToastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private initFFMPEGListener()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mOnCompleteListener:Lcom/example/ffmpeg/listener/MyOnCompleteListener;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/yftech/car/widget/media/video/PlayerManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/PlayerManager$1;-><init>(Lcom/yftech/car/widget/media/video/PlayerManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mOnCompleteListener:Lcom/example/ffmpeg/listener/MyOnCompleteListener;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mOnParparedListener:Lcom/example/ffmpeg/listener/MyOnParparedListener;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lcom/yftech/car/widget/media/video/PlayerManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/PlayerManager$2;-><init>(Lcom/yftech/car/widget/media/video/PlayerManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mOnParparedListener:Lcom/example/ffmpeg/listener/MyOnParparedListener;

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mOnTimeInfoListener:Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;

    if-nez v0, :cond_2

    .line 209
    new-instance v0, Lcom/yftech/car/widget/media/video/PlayerManager$3;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/PlayerManager$3;-><init>(Lcom/yftech/car/widget/media/video/PlayerManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mOnTimeInfoListener:Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMyOnErrorListener:Lcom/example/ffmpeg/listener/MyOnErrorListener;

    if-nez v0, :cond_3

    .line 217
    new-instance v0, Lcom/yftech/car/widget/media/video/PlayerManager$4;

    invoke-direct {v0, p0}, Lcom/yftech/car/widget/media/video/PlayerManager$4;-><init>(Lcom/yftech/car/widget/media/video/PlayerManager;)V

    iput-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMyOnErrorListener:Lcom/example/ffmpeg/listener/MyOnErrorListener;

    :cond_3
    return-void
.end method

.method public static synthetic lambda$setPlayErrorException$0(Lcom/yftech/car/widget/media/video/PlayerManager;I)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {v0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayError(I)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 636
    :pswitch_0
    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoAsyncIllegalStateLayoutId:I

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoAsyncIllegalState:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setErrorToast(ILjava/lang/String;)V

    goto :goto_0

    .line 624
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getCurrentUsb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PlayerManager"

    const-string v0, "onPlayError: usbExists is false"

    .line 626
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastUdiskDisconnectLayoutId:I

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastUdiskDisconnect:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setErrorToast(ILjava/lang/String;)V

    goto :goto_0

    .line 631
    :cond_0
    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoFileNoExistsLayoutId:I

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoFileNoExists:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setErrorToast(ILjava/lang/String;)V

    goto :goto_0

    .line 621
    :pswitch_2
    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastResourcesAreOccupiedLayoutId:I

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastResourcesAreOccupied:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setErrorToast(ILjava/lang/String;)V

    goto :goto_0

    .line 617
    :pswitch_3
    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastFormatIsNotSupportedLayoutId:I

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastFormatIsNotSupported:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->setErrorToast(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private releasePlay()V
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 956
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 957
    iput-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private setErrorToast(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    .line 648
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 650
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 651
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    move v2, v0

    .line 652
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 653
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 654
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 655
    check-cast v3, Landroid/widget/TextView;

    .line 656
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->getToastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 657
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    :cond_1
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 662
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 663
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->getToastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 664
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    :cond_2
    :goto_1
    new-instance p2, Landroid/widget/Toast;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 668
    invoke-virtual {p2, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 670
    invoke-virtual {p2, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 671
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    .line 674
    invoke-direct {p0, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->getToastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 675
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->addCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    return-void
.end method

.method public getAudioSessionId()I
    .locals 2

    .line 904
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 908
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public getDuration()I
    .locals 2

    .line 885
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_1

    .line 886
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz v0, :cond_1

    .line 888
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p0}, Lcom/example/ffmpeg/FFmpeg;->getMediaTotalTime()D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 893
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 895
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method getMediaPlayInfoNotPlaying()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayInfoNotPlaying:I

    return p0
.end method

.method public getProgressPosition()I
    .locals 6

    .line 859
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_2

    .line 860
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz v0, :cond_2

    .line 862
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p0}, Lcom/example/ffmpeg/FFmpeg;->getMediaCurrentTime()D

    move-result-wide v0

    double-to-int p0, v0

    return p0

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 868
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 870
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    :goto_0
    if-eq v1, v0, :cond_2

    int-to-long v2, v1

    .line 873
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const-string v0, "PlayerManager"

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProgressPosition: error progress=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",duration == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method isLoadDateSource()Z
    .locals 1

    .line 681
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mLoadDataThread:Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mLoadDataThread:Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;

    invoke-static {p0}, Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;->access$400(Lcom/yftech/car/widget/media/video/PlayerManager$LoadDataThread;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMediaPlaying()Z
    .locals 3

    .line 841
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz v0, :cond_1

    .line 843
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p0}, Lcom/example/ffmpeg/FFmpeg;->ffmpegIsPlaying()Z

    move-result p0

    const-string v0, "PlayerManager"

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isMediaPlaying: ffmpegIsPlaying=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 849
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 851
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRelease()Z
    .locals 3

    .line 1029
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1030
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-nez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1032
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isSoftSolution()Z
    .locals 0

    .line 305
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    return p0
.end method

.method public isSurfaceHolderNoCreating()Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    return p0
.end method

.method public loadDataPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)V
    .locals 5

    if-eqz p1, :cond_1b

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start: isStart == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 328
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 329
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz p2, :cond_0

    .line 330
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0}, Lcom/yftech/car/media/data/entity/MediaFile;->getDuration()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPrepared(I)V

    return-void

    .line 339
    :cond_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->requestAudioFocus()Z

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p0, "start: video request audio focus failure"

    .line 340
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return-void

    .line 345
    :cond_1
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 347
    iget-wide v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    .line 348
    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    const-string p2, "PlayerManager"

    const-string/jumbo v1, "start: isPreparation is true , play timeout releaseMediaPlayer"

    .line 349
    invoke-static {p2, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "PlayerManager"

    const-string/jumbo p1, "start: isPreparation is true"

    .line 351
    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 356
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x38

    invoke-virtual {p2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 357
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    :cond_4
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    .line 362
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    const/4 p1, 0x1

    .line 363
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    .line 364
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mStartTime:J

    .line 365
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    iget-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p2, v2}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayChange(Lcom/yftech/car/media/data/entity/MediaFile;)V

    .line 366
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yftech/car/media/data/CarMediaDataManager;->getUsbIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/yftech/car/widget/media/video/BaseVideo;->mCurrentUsb:I

    .line 367
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isHardPlaybackError:Z

    if-eqz p2, :cond_5

    .line 368
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isHardPlaybackError:Z

    goto :goto_1

    .line 370
    :cond_5
    iget p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz p2, :cond_7

    .line 371
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz p2, :cond_6

    .line 372
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p2}, Lcom/example/ffmpeg/FFmpeg;->stop()V

    .line 373
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->resetSurface()V

    const-string p2, "PlayerManager"

    const-string v2, " loadDataPlay: FFmpeg stop"

    .line 374
    invoke-static {p2, v2}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_6
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    .line 380
    :cond_7
    :goto_1
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz p2, :cond_c

    .line 382
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-nez p2, :cond_8

    const-string p2, "PlayerManager"

    const-string v1, "loadDataSource: createdFFMPEG"

    .line 383
    invoke-static {p2, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->createdFFMPEG()V

    goto :goto_2

    :cond_8
    const-string p2, "PlayerManager"

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadDataSource: FFmpeg load isPlayError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p2}, Lcom/example/ffmpeg/FFmpeg;->stop()V

    .line 391
    :goto_2
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p2, :cond_9

    .line 392
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 393
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    .line 395
    :cond_9
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isSurfaceVisibility(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 396
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    instance-of p2, p2, Lcom/yftech/car/widget/media/video/VideoPlayer;

    if-eqz p2, :cond_a

    .line 397
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object p2

    .line 398
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 399
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 400
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 401
    invoke-virtual {p2}, Landroid/view/SurfaceView;->requestLayout()V

    .line 403
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 405
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p2, p1}, Lcom/example/ffmpeg/FFmpeg;->setSurface(Landroid/view/Surface;)V

    .line 406
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    goto :goto_3

    .line 409
    :cond_a
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getTextureView()Landroid/view/TextureView;

    move-result-object p2

    .line 410
    invoke-virtual {p2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 411
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 412
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 413
    invoke-virtual {p2}, Landroid/view/TextureView;->requestLayout()V

    .line 415
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 417
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p2, p1}, Lcom/example/ffmpeg/FFmpeg;->setSurface(Landroid/view/Surface;)V

    .line 418
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    :cond_b
    :goto_3
    const-string p1, "PlayerManager"

    const-string p2, " loadDataPlay: FFmpeg setSource"

    .line 423
    invoke-static {p1, p2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/example/ffmpeg/FFmpeg;->initAvCodec(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 431
    :cond_c
    iput v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayInfoNotPlaying:I

    .line 432
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p2, :cond_d

    .line 433
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    .line 434
    invoke-direct {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->createdPlayer()V

    goto :goto_4

    .line 436
    :cond_d
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    .line 437
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez p2, :cond_e

    .line 438
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->stop()V

    .line 440
    :cond_e
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/media/MediaPlayer;->reset()V

    .line 441
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: mMediaPlayer.reset(),isPlayError=="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 442
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onProgress(I)V

    :goto_4
    const-string p2, "PlayerManager"

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " loadDataPlay: isPlayError=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isCreatedPlayer=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-eqz p2, :cond_f

    .line 446
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 447
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    .line 449
    :cond_f
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p2, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isSurfaceVisibility(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 450
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    instance-of p2, p2, Lcom/yftech/car/widget/media/video/VideoPlayer;

    if-eqz p2, :cond_10

    .line 451
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object p2

    .line 453
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 454
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 455
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 456
    invoke-virtual {p2}, Landroid/view/SurfaceView;->requestLayout()V

    goto :goto_5

    .line 458
    :cond_10
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p2}, Lcom/yftech/car/widget/media/video/BaseVideo;->getTextureView()Landroid/view/TextureView;

    move-result-object p2

    .line 459
    invoke-virtual {p2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 460
    iput p1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 461
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 462
    invoke-virtual {p2}, Landroid/view/TextureView;->requestLayout()V

    :cond_11
    :goto_5
    const/16 p2, 0x34

    .line 468
    :try_start_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "PlayerManager"

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " createdPlayer: setDisplay ,isCreatedPlayer=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    instance-of v1, v1, Lcom/yftech/car/widget/media/video/VideoPlayer;

    if-eqz v1, :cond_13

    .line 496
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 497
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 498
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 499
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    goto :goto_6

    :cond_12
    const-string v1, "PlayerManager"

    const-string v2, " createdPlayer: surfaceHolder isCreating false"

    .line 501
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    goto :goto_6

    .line 505
    :cond_13
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 506
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 507
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 508
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    goto :goto_6

    .line 510
    :cond_14
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    .line 514
    :goto_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_15

    .line 515
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iget-object v1, v1, Lcom/yftech/car/widget/media/video/BaseVideo;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v1}, Landroid/media/AudioFocusRequest;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    goto :goto_7

    .line 517
    :cond_15
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iget v1, v1, Lcom/yftech/car/widget/media/video/BaseVideo;->mStreamType:I

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 520
    :goto_7
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isCreatedPlayer:Z

    if-eqz p1, :cond_16

    .line 521
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->prepareAsync()V

    goto :goto_8

    .line 523
    :cond_16
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getVisibility()I

    move-result p1

    if-nez p1, :cond_18

    .line 524
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isSurfaceVisibility(I)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "PlayerManager"

    const-string v0, " loadDataPlay: isSurfaceVisibility == VISIBLE"

    .line 525
    invoke-static {p1, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setSurfaceVisibility(I)V

    .line 527
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    :cond_17
    const-string p1, "PlayerManager"

    const-string p2, " createdPlayer: mSurfaceView no show"

    .line 530
    invoke-static {p1, p2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->setSurfaceVisibility(I)V

    goto :goto_8

    :cond_18
    const-string p1, "PlayerManager"

    const-string p2, " createdPlayer: current VideoPlayer no show"

    .line 534
    invoke-static {p1, p2}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->prepareAsync()V

    :goto_8
    return-void

    :catch_0
    move-exception v2

    .line 470
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 472
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 473
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 476
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result p2

    if-nez p2, :cond_19

    .line 477
    iget-boolean p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    xor-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    .line 479
    :cond_19
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    .line 480
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 481
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 482
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayException(I)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 483
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->isUserHandleError:Z

    return-void

    .line 487
    :cond_1a
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iput-boolean v0, p1, Lcom/yftech/car/widget/media/video/BaseVideo;->isUserHandleError:Z

    .line 489
    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->setPlayErrorException(I)V

    return-void

    :cond_1b
    const-string/jumbo p0, "start: mediaFile == null"

    .line 335
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1023
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz p1, :cond_0

    .line 1024
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->onCompletion()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 p1, 0x0

    .line 998
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    const/16 v0, 0x12f

    if-eq p3, v0, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const-string v0, "PlayerManager"

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: what=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",extra=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    if-nez v0, :cond_1

    .line 1002
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    const/4 p1, 0x1

    .line 1003
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    .line 1004
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isHardPlaybackError:Z

    .line 1005
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->loadDataPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    return p1

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v0, :cond_2

    .line 1011
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0, p2, p3}, Lcom/yftech/car/widget/media/video/BaseVideo;->onError(II)Z

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string p1, "PlayerManager"

    .line 1109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onInfo: what=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",extra=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x325

    if-eq p2, p1, :cond_0

    const/16 p3, 0x324

    if-ne p2, p3, :cond_3

    .line 1111
    :cond_0
    iput p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayInfoNotPlaying:I

    .line 1112
    iget p3, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    if-nez p3, :cond_1

    const/4 p1, 0x1

    .line 1114
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    .line 1115
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    .line 1116
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isHardPlaybackError:Z

    .line 1117
    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {p0, p2, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->loadDataPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)V

    return p1

    :cond_1
    if-ne p2, p1, :cond_2

    .line 1122
    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastInfoVideoNotPlayingLayoutId:I

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastInfoVideoNotPlaying:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->setErrorToast(ILjava/lang/String;)V

    goto :goto_0

    .line 1124
    :cond_2
    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastInfoAudioNotPlayingLayoutId:I

    iget-object p2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastInfoAudioNotPlaying:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/PlayerManager;->setErrorToast(ILjava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 968
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    .line 969
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    if-eqz v0, :cond_0

    .line 970
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;->onPrepared(II)V

    :cond_0
    return-void
.end method

.method public pause(Z)V
    .locals 2

    .line 707
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {v0}, Lcom/example/ffmpeg/FFmpeg;->pausePlay()V

    goto :goto_0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 715
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->notifyPlayPause(Z)V

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer Pause: isPlaying()=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",isPauseState=="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public play(Z)V
    .locals 3

    const-string v0, "PlayerManager"

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: isAudioFocus=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isPlayBeforeLossFocus=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isPrepared=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isPlayError=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isSlideCurrent=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isSeekBar=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSeekBar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-eqz v0, :cond_4

    .line 726
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSlideCurrent:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSeekBar:Z

    if-nez v0, :cond_6

    .line 727
    iget v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    iget v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PlayerManager"

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: mSpeedLimit=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSpeedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCurrentSpeed=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 728
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz v0, :cond_3

    .line 729
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz v0, :cond_6

    .line 730
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpegPrepared:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpegPrepared:Z

    .line 732
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {v0}, Lcom/example/ffmpeg/FFmpeg;->startPlay()V

    goto :goto_1

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {v0}, Lcom/example/ffmpeg/FFmpeg;->resumePlay()V

    goto :goto_1

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_6

    .line 739
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1

    .line 747
    :cond_4
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->requestAudioFocus()Z

    .line 748
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-eqz v0, :cond_5

    .line 749
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    return-void

    :cond_5
    const-string v0, "PlayerManager"

    const-string v1, "play: requestAudioFocus is isAudioFocus false,request audio focus failed"

    .line 752
    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    if-eqz p1, :cond_7

    const/4 p1, 0x1

    .line 758
    iput-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 761
    :cond_7
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/widget/media/video/BaseVideo;->notifyPlayPause(Z)V

    return-void
.end method

.method prepareAsync()V
    .locals 5

    .line 542
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x38

    .line 547
    :try_start_0
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " prepareAsync: prepareAsync play video : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mCurrentPlay:Lcom/yftech/car/media/data/entity/MediaFile;

    invoke-virtual {v3}, Lcom/yftech/car/media/data/entity/MediaFile;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1b58

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 551
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 553
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 554
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 555
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 556
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 557
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isRelease()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 558
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    xor-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/PlayerManager;->release(Z)V

    .line 560
    :cond_0
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    .line 561
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    .line 562
    iput-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    .line 563
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlayException(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iput-boolean v2, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->isUserHandleError:Z

    return-void

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    iput-boolean v0, v1, Lcom/yftech/car/widget/media/video/BaseVideo;->isUserHandleError:Z

    .line 570
    invoke-virtual {p0, v3}, Lcom/yftech/car/widget/media/video/PlayerManager;->setPlayErrorException(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public release(Z)V
    .locals 3

    const-string v0, "PlayerManager"

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " release: isStop=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isSoftSolution=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 916
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPreparation:Z

    .line 917
    iget-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 918
    iget v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    if-nez v1, :cond_0

    .line 919
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz v0, :cond_4

    .line 922
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {v0, v2}, Lcom/example/ffmpeg/FFmpeg;->setMyOnCompleteListener(Lcom/example/ffmpeg/listener/MyOnCompleteListener;)V

    .line 923
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {v0, v2}, Lcom/example/ffmpeg/FFmpeg;->setWlOnParparedListener(Lcom/example/ffmpeg/listener/MyOnParparedListener;)V

    .line 924
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {v0, v2}, Lcom/example/ffmpeg/FFmpeg;->setMyOnTimeInfoListener(Lcom/example/ffmpeg/listener/MyOnTimeInfoListener;)V

    .line 925
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {v0, v2}, Lcom/example/ffmpeg/FFmpeg;->setMyOnErrorListener(Lcom/example/ffmpeg/listener/MyOnErrorListener;)V

    if-eqz p1, :cond_1

    .line 928
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p1}, Lcom/example/ffmpeg/FFmpeg;->stopPlay()V

    .line 931
    :cond_1
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p1}, Lcom/example/ffmpeg/FFmpeg;->releaseMediacodec()V

    .line 933
    iput-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    const-string p0, "PlayerManager"

    const-string p1, " release: FFmpeg release --ok"

    .line 934
    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 938
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 941
    :try_start_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 943
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 945
    :goto_1
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 947
    :goto_2
    iput-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string/jumbo p0, "releaseMediaPlayer: MediaPlayer release --ok "

    .line 948
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public removeVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->removeCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 776
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSetProgress:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 779
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->getDuration()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 780
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->getDuration()I

    move-result p1

    .line 782
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz v0, :cond_4

    .line 784
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p0, p1}, Lcom/example/ffmpeg/FFmpeg;->seek(I)V

    goto :goto_1

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 789
    :try_start_0
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 791
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p0, "PlayerManager"

    const-string/jumbo p1, "seekTo: MediaPlayer no Prepared"

    .line 794
    invoke-static {p0, p1}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mDelayMillis:I

    return-void
.end method

.method setDisplay(Landroid/view/Surface;)V
    .locals 3

    const-string v0, "PlayerManager"

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setDisplay: isSoftSolution=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {v0, p1}, Lcom/example/ffmpeg/FFmpeg;->setSurface(Landroid/view/Surface;)V

    const-string p1, "PlayerManager"

    const-string v0, " setDisplay: setSurface"

    .line 1070
    invoke-static {p1, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    goto :goto_0

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 1076
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    :cond_1
    :goto_0
    return-void
.end method

.method setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "PlayerManager"

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setDisplay: isSoftSolution=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/example/ffmpeg/FFmpeg;->setSurface(Landroid/view/Surface;)V

    const-string p1, "PlayerManager"

    const-string v0, " setDisplay: setSurface"

    .line 1053
    invoke-static {p1, v0}, Lcom/yftech/car/utils/Loger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    goto :goto_0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1059
    iput-boolean v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSurfaceHolderNoCreating:Z

    :cond_1
    :goto_0
    return-void
.end method

.method setPlayErrorException(I)V
    .locals 3

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPlayErrorException: code=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 577
    iput v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mProgress:I

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 599
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoAsyncIllegalState:Ljava/lang/String;

    goto :goto_0

    .line 590
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/media/data/CarMediaDataManager;->getInstance()Lcom/yftech/car/media/data/CarMediaDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->getCurrentUsb()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/car/media/data/CarMediaDataManager;->isUsbExists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PlayerManager"

    const-string v1, "onPlayError: usbExists is false"

    .line 592
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastUdiskDisconnect:Ljava/lang/String;

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoFileNoExists:Ljava/lang/String;

    goto :goto_0

    .line 587
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastResourcesAreOccupied:Ljava/lang/String;

    goto :goto_0

    .line 584
    :pswitch_3
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastFormatIsNotSupported:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_1

    .line 604
    invoke-direct {p0, v0}, Lcom/yftech/car/widget/media/video/PlayerManager;->getToastContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    :cond_1
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {v1, v0}, Lcom/yftech/car/widget/media/video/BaseVideo;->isErrorDialog(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$LUNx3pKUmsi89Zrce-c_GjQFDNc;

    invoke-direct {v1, p0, p1}, Lcom/yftech/car/widget/media/video/-$$Lambda$PlayerManager$LUNx3pKUmsi89Zrce-c_GjQFDNc;-><init>(Lcom/yftech/car/widget/media/video/PlayerManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 641
    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isAudioFocus:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayBeforeLossFocus:Z

    if-eqz p1, :cond_4

    .line 642
    :cond_3
    iget-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x32

    iget p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mDelayMillis:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPlaybackParams(F)V
    .locals 4

    .line 800
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz v0, :cond_0

    const-string p0, "PlayerManager"

    const-string/jumbo p1, "setPlaybackParams: ffmpeg play"

    .line 801
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 804
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    .line 805
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->updatePlayback()V

    .line 808
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoCallback:Lcom/yftech/car/widget/media/video/VideoCallbackManager;

    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/VideoCallbackManager;->onPlaybackParams(F)V

    goto :goto_0

    :cond_2
    const-string p0, "PlayerManager"

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPlaybackParams: Out of range \u300aplayback>=0.5 && playback <=2.0f\u300b ,playback=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 765
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPrepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayError:Z

    if-nez v0, :cond_0

    .line 766
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->seekTo(I)V

    .line 767
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 768
    invoke-virtual {p0, p1}, Lcom/yftech/car/widget/media/video/PlayerManager;->play(Z)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "setProgress: MediaPlayer no Prepared"

    .line 771
    invoke-static {p0}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSoftSolutionPlay(I)V
    .locals 4

    .line 235
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    .line 236
    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ltz p1, :cond_0

    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    if-le p1, v1, :cond_1

    :cond_0
    const-string p1, "PlayerManager"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlayerManager: error mSoftSolutionPlay=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/yftech/car/utils/Loger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iput v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    .line 241
    :cond_1
    iget p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mSoftSolutionPlay:I

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    return-void
.end method

.method public setToastFormatIsNotSupported(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastFormatIsNotSupported:Ljava/lang/String;

    return-void
.end method

.method public setToastFormatIsNotSupportedLayoutId(I)V
    .locals 0

    .line 281
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastFormatIsNotSupportedLayoutId:I

    return-void
.end method

.method public setToastInfoAudioNotPlaying(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastInfoAudioNotPlaying:Ljava/lang/String;

    return-void
.end method

.method public setToastInfoAudioNotPlayingLayoutId(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastInfoAudioNotPlayingLayoutId:I

    return-void
.end method

.method public setToastInfoVideoNotPlaying(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastInfoVideoNotPlaying:Ljava/lang/String;

    return-void
.end method

.method public setToastInfoVideoNotPlayingLayoutId(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastInfoVideoNotPlayingLayoutId:I

    return-void
.end method

.method public setToastResourcesAreOccupied(Ljava/lang/String;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastResourcesAreOccupied:Ljava/lang/String;

    return-void
.end method

.method public setToastResourcesAreOccupiedLayoutId(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastResourcesAreOccupiedLayoutId:I

    return-void
.end method

.method public setToastUdiskDisconnect(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastUdiskDisconnect:Ljava/lang/String;

    return-void
.end method

.method public setToastUdiskDisconnectLayoutId(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastUdiskDisconnectLayoutId:I

    return-void
.end method

.method public setToastVideoAsyncIllegalState(Ljava/lang/String;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoAsyncIllegalState:Ljava/lang/String;

    return-void
.end method

.method public setToastVideoAsyncIllegalStateLayoutId(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoAsyncIllegalStateLayoutId:I

    return-void
.end method

.method public setToastVideoFileNoExists(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoFileNoExists:Ljava/lang/String;

    return-void
.end method

.method public setToastVideoFileNoExistsLayoutId(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mToastVideoFileNoExistsLayoutId:I

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1036
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    if-eqz v0, :cond_1

    .line 1038
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mFFmpeg:Lcom/example/ffmpeg/FFmpeg;

    invoke-virtual {p0}, Lcom/example/ffmpeg/FFmpeg;->stop()V

    goto :goto_0

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 1042
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updatePlayback()V
    .locals 3

    .line 816
    iget-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isSoftSolution:Z

    if-eqz v0, :cond_0

    const-string p0, "PlayerManager"

    const-string/jumbo v0, "updatePlayback: ffmpeg play"

    .line 817
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    .line 822
    iget v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mPlayback:F

    invoke-virtual {v1, v2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 823
    iget-object v2, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 825
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    :goto_0
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 832
    :cond_1
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0, v1}, Lcom/yftech/car/widget/media/video/BaseVideo;->notifyPlayPause(Z)V

    goto :goto_2

    .line 827
    :goto_1
    invoke-virtual {p0}, Lcom/yftech/car/widget/media/video/PlayerManager;->isMediaPlaying()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 829
    iput-boolean v0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->isPlayState:Z

    .line 832
    :cond_2
    iget-object p0, p0, Lcom/yftech/car/widget/media/video/PlayerManager;->mVideoPlayer:Lcom/yftech/car/widget/media/video/BaseVideo;

    invoke-virtual {p0, v2}, Lcom/yftech/car/widget/media/video/BaseVideo;->notifyPlayPause(Z)V

    .line 833
    throw v1

    :cond_3
    :goto_2
    return-void
.end method
