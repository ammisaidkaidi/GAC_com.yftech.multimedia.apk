.class public interface abstract Lcom/yftech/car/widget/media/video/BaseVideo$VideoListener;
.super Ljava/lang/Object;
.source "BaseVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/video/BaseVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoListener"
.end annotation


# virtual methods
.method public abstract loadSeekProgressImage(Ljava/lang/String;JII)Landroid/graphics/Bitmap;
.end method

.method public abstract onAudioFocusChange(I)Z
.end method

.method public abstract onDoubleClick(Z)V
.end method

.method public abstract onInfo(II)Z
.end method

.method public abstract onPlayChange(Lcom/yftech/car/media/data/entity/MediaFile;)V
.end method

.method public abstract onPlayError(I)V
.end method

.method public abstract onPlayException(I)Z
.end method

.method public abstract onPlayMode(I)V
.end method

.method public abstract onPlaySequenceCompletion()V
.end method

.method public abstract onPlaybackParams(F)V
.end method

.method public abstract onPlayerError(II)Z
.end method

.method public abstract onPlayingChange(Z)V
.end method

.method public abstract onPrepared(I)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onScaleType(I)V
.end method

.method public abstract onSlideProgress(ZIJZ)V
.end method

.method public abstract onStartTrackingTouch(IZ)V
.end method

.method public abstract onStorageDisconnect()V
.end method
