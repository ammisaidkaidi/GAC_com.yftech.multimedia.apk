.class public interface abstract Lcom/yftech/car/widget/media/manager/MediaDataManager$OnDataChangeListener;
.super Ljava/lang/Object;
.source "MediaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/car/widget/media/manager/MediaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnDataChangeListener"
.end annotation


# virtual methods
.method public abstract onCopyFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onCopyFileProgress(JJ)V
.end method

.method public abstract onCopyFileStatusChange(Z)V
.end method

.method public abstract onDeleteError(II)V
.end method

.method public abstract onDeleteSuccess(I)V
.end method

.method public abstract onMusicDataChange(I)V
.end method

.method public abstract onPhotoDataChange(I)V
.end method

.method public abstract onScanStatusChange(IZ)V
.end method

.method public abstract onTextDataChange(I)V
.end method

.method public abstract onUsbStatusChange(IZ)V
.end method

.method public abstract onVideoDataChange(I)V
.end method
