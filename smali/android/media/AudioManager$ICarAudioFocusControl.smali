.class public interface abstract Landroid/media/AudioManager$ICarAudioFocusControl;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICarAudioFocusControl"
.end annotation


# virtual methods
.method public abstract abandonAudioFocus(Ljava/lang/String;)Z
.end method

.method public abstract adjustStreamVolume(III)V
.end method

.method public abstract getStreamMaxVolume(I)I
.end method

.method public abstract getStreamMinVolume(I)I
.end method

.method public abstract getStreamVolume(I)I
.end method

.method public abstract isMasterMute()Z
.end method

.method public abstract isStreamMute(I)Z
.end method

.method public abstract onPlayGisAudio(Z)V
.end method

.method public abstract removeFocusStackEntryForClient(Landroid/os/IBinder;)V
.end method

.method public abstract requestAudioFocus(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I)I
.end method

.method public abstract setMasterMute(ZILjava/lang/String;I)V
.end method

.method public abstract setStreamVolume(III)V
.end method
