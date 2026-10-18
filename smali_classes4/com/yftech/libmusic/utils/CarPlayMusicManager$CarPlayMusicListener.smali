.class public interface abstract Lcom/yftech/libmusic/utils/CarPlayMusicManager$CarPlayMusicListener;
.super Ljava/lang/Object;
.source "CarPlayMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/libmusic/utils/CarPlayMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarPlayMusicListener"
.end annotation


# virtual methods
.method public abstract onCarplayConnectChanged(I)V
.end method

.method public abstract onCarplayMusicID3Changed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onCarplayPlayingChanged(Z)V
.end method

.method public abstract onCarplayProgressChanged(I)V
.end method

.method public abstract onCarplayTotalDurationChanged(I)V
.end method

.method public abstract onResourceStateChanged(Z)V
.end method
