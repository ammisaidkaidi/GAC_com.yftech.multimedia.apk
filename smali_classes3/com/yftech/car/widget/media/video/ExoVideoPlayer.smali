.class public Lcom/yftech/car/widget/media/video/ExoVideoPlayer;
.super Lcom/yftech/car/widget/media/video/BaseVideo;
.source "ExoVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-direct {p0, p1}, Lcom/yftech/car/widget/media/video/BaseVideo;-><init>(Landroid/content/Context;)V

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

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/yftech/car/widget/media/video/BaseVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/car/widget/media/video/BaseVideo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 0

    return-void
.end method

.method public getAutoHideTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPlay()Lcom/yftech/car/media/data/entity/MediaFile;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentUsb()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDuration()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMediaPlayInfoNotPlaying()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOnSeekBar(Landroid/widget/ImageView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    const/4 p0, 0x0

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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPlayListSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPlayMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPlayPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getProgressPosition()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScaleType()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

.method public getSystemUiVisibilityHide()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSystemUiVisibilityShow()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoHideShowAnimation()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getVideoHideShowAnimationDuration()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected initData(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    return-void
.end method

.method protected initListener()V
    .locals 0

    return-void
.end method

.method public isAutoCountdownHide(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isClickSwitchHideShow(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDoubleClickSwitchHideShow(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isErrorDialog(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isOnTouchClick()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlayError()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSoftSolution()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSurfaceVisibility(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSystemUIToTheTimeAutoHidden()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoSeekImageWhetherToFollowSeekBar()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isVideoSlideShowSeekImage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyPlayPause(Z)V
    .locals 0

    return-void
.end method

.method public onCompletion()V
    .locals 0

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onError(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPrepared(II)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public removeVideoCallback(Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;)V
    .locals 0

    return-void
.end method

.method public requestAudioFocus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public resetSurface()V
    .locals 0

    return-void
.end method

.method public setLayoutChildManager(Lcom/yftech/car/widget/media/video/layout/VideoLayoutChildManager;)V
    .locals 0

    return-void
.end method

.method public setPlayProgress(I)V
    .locals 0

    return-void
.end method

.method public setPlayState(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setStorageDisconnect()V
    .locals 0

    return-void
.end method

.method public setSurfaceVisibility(I)V
    .locals 0

    return-void
.end method

.method public startPlay(Lcom/yftech/car/media/data/entity/MediaFile;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startPlay(Lcom/yftech/car/media/data/entity/MediaFile;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startPlayList(Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;I)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public startPlayList(Ljava/util/List;IZ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yftech/car/media/data/entity/MediaFile;",
            ">;IZ)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public switchPlayMode()V
    .locals 0

    return-void
.end method

.method public switchScaleType()V
    .locals 0

    return-void
.end method
