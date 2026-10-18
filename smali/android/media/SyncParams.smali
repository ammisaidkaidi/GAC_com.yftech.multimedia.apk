.class public final Landroid/media/SyncParams;
.super Ljava/lang/Object;
.source "SyncParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SyncParams$AudioAdjustMode;,
        Landroid/media/SyncParams$SyncSource;
    }
.end annotation


# static fields
.field public static final AUDIO_ADJUST_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_ADJUST_MODE_RESAMPLE:I = 0x2

.field public static final AUDIO_ADJUST_MODE_STRETCH:I = 0x1

.field private static final SET_AUDIO_ADJUST_MODE:I = 0x2

.field private static final SET_FRAME_RATE:I = 0x8

.field private static final SET_SYNC_SOURCE:I = 0x1

.field private static final SET_TOLERANCE:I = 0x4

.field public static final SYNC_SOURCE_AUDIO:I = 0x2

.field public static final SYNC_SOURCE_DEFAULT:I = 0x0

.field public static final SYNC_SOURCE_SYSTEM_CLOCK:I = 0x1

.field public static final SYNC_SOURCE_VSYNC:I = 0x3


# instance fields
.field private mAudioAdjustMode:I

.field private mFrameRate:F

.field private mSet:I

.field private mSyncSource:I

.field private mTolerance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 166
    iput v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    .line 167
    iput v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Landroid/media/SyncParams;->mTolerance:F

    .line 169
    iput v0, p0, Landroid/media/SyncParams;->mFrameRate:F

    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/SyncParams;
    .locals 1

    .line 179
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x7

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public getAudioAdjustMode()I
    .locals 1

    .line 200
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 203
    iget p0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    return p0

    .line 201
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "audio adjust mode not set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFrameRate()F
    .locals 1

    .line 282
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 285
    iget p0, p0, Landroid/media/SyncParams;->mFrameRate:F

    return p0

    .line 283
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "frame rate not set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSyncSource()I
    .locals 1

    .line 223
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 226
    iget p0, p0, Landroid/media/SyncParams;->mSyncSource:I

    return p0

    .line 224
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "sync source not set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTolerance()F
    .locals 1

    .line 254
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 257
    iget p0, p0, Landroid/media/SyncParams;->mTolerance:F

    return p0

    .line 255
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "tolerance not set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAudioAdjustMode(I)Landroid/media/SyncParams;
    .locals 0

    .line 189
    iput p1, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    .line 190
    iget p1, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public setFrameRate(F)Landroid/media/SyncParams;
    .locals 0

    .line 268
    iput p1, p0, Landroid/media/SyncParams;->mFrameRate:F

    .line 269
    iget p1, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public setSyncSource(I)Landroid/media/SyncParams;
    .locals 0

    .line 212
    iput p1, p0, Landroid/media/SyncParams;->mSyncSource:I

    .line 213
    iget p1, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public setTolerance(F)Landroid/media/SyncParams;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    .line 241
    iput p1, p0, Landroid/media/SyncParams;->mTolerance:F

    .line 242
    iget p1, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0

    .line 239
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tolerance must be less than one and non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
