.class public abstract Lcom/yftech/car/widget/media/video/BaseVideo;
.super Landroid/widget/FrameLayout;
.source "BaseVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;
    }
.end annotation


# instance fields
.field private final AVM_HIDE:Ljava/lang/String;

.field private final AVM_SHOW:Ljava/lang/String;

.field private final SVM_KEY:Ljava/lang/String;

.field isUserHandleError:Z

.field mAudioFocusRequest:Landroid/media/AudioFocusRequest;

.field mCurrentUsb:I

.field mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 45
    iput p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->mStreamType:I

    const-string/jumbo p1, "sys.avmservice.show.state"

    .line 59
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->SVM_KEY:Ljava/lang/String;

    const-string p1, "1"

    .line 60
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->AVM_SHOW:Ljava/lang/String;

    const-string p1, "0"

    .line 61
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->AVM_HIDE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 45
    iput p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->mStreamType:I

    const-string/jumbo p1, "sys.avmservice.show.state"

    .line 59
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->SVM_KEY:Ljava/lang/String;

    const-string p1, "1"

    .line 60
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->AVM_SHOW:Ljava/lang/String;

    const-string p1, "0"

    .line 61
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->AVM_HIDE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 45
    iput p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->mStreamType:I

    const-string/jumbo p1, "sys.avmservice.show.state"

    .line 59
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->SVM_KEY:Ljava/lang/String;

    const-string p1, "1"

    .line 60
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->AVM_SHOW:Ljava/lang/String;

    const-string p1, "0"

    .line 61
    iput-object p1, p0, Lcom/yftech/car/widget/media/video/BaseVideo;->AVM_HIDE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
.end method

.method public abstract getAutoHideTime()I
.end method

.method public abstract getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;
.end method

.method public abstract getCurrentUsb()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getMediaPlayInfoNotPlaying()I
.end method

.method public abstract getOnSeekBar(Landroid/widget/ImageView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
.end method

.method public abstract getPlayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlayListSize()I
.end method

.method public abstract getPlayMode()I
.end method

.method public abstract getPlayPosition()I
.end method

.method public abstract getProgressPosition()I
.end method

.method public abstract getScaleType()I
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSystemUiVisibilityHide()I
.end method

.method public abstract getSystemUiVisibilityShow()I
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getVideoHideShowAnimation()I
.end method

.method public abstract getVideoHideShowAnimationDuration()I
.end method

.method protected abstract initData(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end method

.method protected abstract initListener()V
.end method

.method public abstract isAutoCountdownHide(I)Z
.end method

.method public isAvmShow()Z
    .locals 2

    const-string p0, "1"

    const-string/jumbo v0, "sys.avmservice.show.state"

    const-string v1, "0"

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract isClickSwitchHideShow(I)Z
.end method

.method public abstract isDoubleClickSwitchHideShow(I)Z
.end method

.method abstract isErrorDialog(Ljava/lang/String;)Z
.end method

.method public abstract isOnTouchClick()Z
.end method

.method public abstract isPlayError()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSoftSolution()Z
.end method

.method public abstract isSurfaceVisibility(I)Z
.end method

.method public abstract isSystemUIToTheTimeAutoHidden()Z
.end method

.method public abstract isVideoSeekImageWhetherToFollowSeekBar()Z
.end method

.method public abstract isVideoSlideShowSeekImage()Z
.end method

.method public abstract notifyPlayPause(Z)V
.end method

.method public abstract onCompletion()V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onError(II)Z
.end method

.method public abstract onPrepared(II)V
.end method

.method public abstract release()V
.end method

.method public abstract removeVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
.end method

.method public abstract requestAudioFocus()Z
.end method

.method public abstract resetSurface()V
.end method

.method public abstract setLayoutChildManager(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
.end method

.method public abstract setPlayProgress(I)V
.end method

.method public abstract setPlayState(I)Z
.end method

.method public abstract setStorageDisconnect()V
.end method

.method public abstract setSurfaceVisibility(I)V
.end method

.method public abstract startPlay(Lcom/yftech/car/media/data/entity/MediaFile;)Z
.end method

.method public abstract startPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)Z
.end method

.method public abstract startPlayList(Ljava/util/List;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public abstract startPlayList(Ljava/util/List;IZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;IZ)Z"
        }
    .end annotation
.end method

.method public abstract switchPlayMode()V
.end method

.method public abstract switchScaleType()V
.end method
