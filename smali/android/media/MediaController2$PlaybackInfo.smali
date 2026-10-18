.class public final Landroid/media/MediaController2$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaController2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final mProvider:Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;


# direct methods
.method public constructor <init>(Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, Landroid/media/MediaController2$PlaybackInfo;->mProvider:Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;

    return-void
.end method


# virtual methods
.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 0

    .line 301
    iget-object p0, p0, Landroid/media/MediaController2$PlaybackInfo;->mProvider:Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;->getAudioAttributes_impl()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getControlType()I
    .locals 0

    .line 315
    iget-object p0, p0, Landroid/media/MediaController2$PlaybackInfo;->mProvider:Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;->getControlType_impl()I

    move-result p0

    return p0
.end method

.method public getCurrentVolume()I
    .locals 0

    .line 333
    iget-object p0, p0, Landroid/media/MediaController2$PlaybackInfo;->mProvider:Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;->getCurrentVolume_impl()I

    move-result p0

    return p0
.end method

.method public getMaxVolume()I
    .locals 0

    .line 324
    iget-object p0, p0, Landroid/media/MediaController2$PlaybackInfo;->mProvider:Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;->getMaxVolume_impl()I

    move-result p0

    return p0
.end method

.method public getPlaybackType()I
    .locals 0

    .line 289
    iget-object p0, p0, Landroid/media/MediaController2$PlaybackInfo;->mProvider:Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;

    invoke-interface {p0}, Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;->getPlaybackType_impl()I

    move-result p0

    return p0
.end method

.method public getProvider()Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;
    .locals 0

    .line 276
    iget-object p0, p0, Landroid/media/MediaController2$PlaybackInfo;->mProvider:Landroid/media/update/MediaController2Provider$PlaybackInfoProvider;

    return-object p0
.end method
