.class public interface abstract Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback;
.super Ljava/lang/Object;
.source "CarLifeMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/utils/CarLifeMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCarLifeDataChangedCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;
    }
.end annotation


# virtual methods
.method public abstract onConnectionStatusChanged(Z)V
.end method

.method public abstract onMusicDurationChanged(I)V
.end method

.method public abstract onMusicInformationChanged(Lcom/yftech/libmusic/utils/CarLifeMusicManager$OnCarLifeDataChangedCallback$MusicInfo;)V
.end method

.method public abstract onMusicPlayStatusChanged(I)V
.end method

.method public abstract onMusicProgressChanged(I)V
.end method
