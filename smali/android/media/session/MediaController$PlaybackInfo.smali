.class public final Landroid/media/session/MediaController$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfo"
.end annotation


# static fields
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2


# instance fields
.field private final mAudioAttrs:Landroid/media/AudioAttributes;

.field private final mCurrentVolume:I

.field private final mMaxVolume:I

.field private final mVolumeControl:I

.field private final mVolumeType:I


# direct methods
.method public constructor <init>(ILandroid/media/AudioAttributes;III)V
    .locals 0

    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 994
    iput p1, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeType:I

    .line 995
    iput-object p2, p0, Landroid/media/session/MediaController$PlaybackInfo;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 996
    iput p3, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControl:I

    .line 997
    iput p4, p0, Landroid/media/session/MediaController$PlaybackInfo;->mMaxVolume:I

    .line 998
    iput p5, p0, Landroid/media/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    return-void
.end method


# virtual methods
.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 0

    .line 1023
    iget-object p0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public getCurrentVolume()I
    .locals 0

    .line 1056
    iget p0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mCurrentVolume:I

    return p0
.end method

.method public getMaxVolume()I
    .locals 0

    .line 1047
    iget p0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mMaxVolume:I

    return p0
.end method

.method public getPlaybackType()I
    .locals 0

    .line 1011
    iget p0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeType:I

    return p0
.end method

.method public getVolumeControl()I
    .locals 0

    .line 1038
    iget p0, p0, Landroid/media/session/MediaController$PlaybackInfo;->mVolumeControl:I

    return p0
.end method
