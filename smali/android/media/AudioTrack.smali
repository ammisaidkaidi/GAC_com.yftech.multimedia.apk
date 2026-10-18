.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$MetricsConstants;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$StreamEventCallback;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;,
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$PerformanceMode;,
        Landroid/media/AudioTrack$WriteMode;,
        Landroid/media/AudioTrack$TransferMode;
    }
.end annotation


# static fields
.field private static ATC_AOSP_ENHANCEMENT_AUDIO:Z = false

.field private static final AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field public static final CHANNEL_COUNT_MAX:I

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field private static final HEADER_V2_SIZE_BYTES:F = 20.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_MORE_DATA:I = 0x0

.field private static final NATIVE_EVENT_NEW_IAUDIOTRACK:I = 0x6

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field private static final NATIVE_EVENT_STREAM_END:I = 0x7

.field public static final PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final PERFORMANCE_MODE_NONE:I = 0x0

.field public static final PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mOffset:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

.field private final mStreamEventCbLock:Ljava/lang/Object;

.field private mStreamEventExec:Ljava/util/concurrent/Executor;

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.atc.aosp_enhancement_audio"

    const/4 v1, 0x0

    .line 89
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioTrack;->ATC_AOSP_ENHANCEMENT_AUDIO:Z

    .line 105
    invoke-static {}, Landroid/media/AudioTrack;->native_get_FCC_8()I

    move-result v0

    sput v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 460
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 519
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 520
    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 523
    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 524
    invoke-virtual {p3, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 525
    invoke-virtual {p3, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p2

    .line 526
    invoke-virtual {p2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    move-object v1, p0

    move v4, p5

    move v5, p6

    move v6, p7

    .line 519
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    const-string p0, "AudioTrack"

    const-string p2, "AudioTrack()"

    .line 529
    invoke-static {p1, p0, p2}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 4

    .line 689
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 316
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 320
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 326
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 327
    iput v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 344
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v2, 0x4

    .line 348
    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    const/4 v3, 0x3

    .line 357
    iput v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 362
    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 368
    iput v2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 372
    iput v0, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 383
    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 391
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 395
    iput v0, p0, Landroid/media/AudioTrack;->mOffset:I

    .line 2787
    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2873
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3036
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 692
    iput-wide v1, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 693
    iput-wide v1, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 697
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-nez v3, :cond_0

    .line 698
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 700
    :cond_0
    iput-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    cmp-long v1, p1, v1

    if-eqz v1, :cond_1

    .line 704
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    .line 705
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    goto :goto_0

    .line 707
    :cond_1
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 565
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZ)V

    return-void
.end method

.method private constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v0, p2

    move/from16 v6, p3

    move/from16 v5, p4

    move/from16 v7, p5

    const/4 v14, 0x1

    move-object/from16 v1, p1

    .line 571
    invoke-direct {v13, v1, v14}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v15, 0x0

    .line 311
    iput v15, v13, Landroid/media/AudioTrack;->mState:I

    .line 316
    iput v14, v13, Landroid/media/AudioTrack;->mPlayState:I

    .line 320
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v13, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 326
    iput v15, v13, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 327
    iput v15, v13, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 344
    iput v14, v13, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v1, 0x4

    .line 348
    iput v1, v13, Landroid/media/AudioTrack;->mChannelMask:I

    const/4 v2, 0x3

    .line 357
    iput v2, v13, Landroid/media/AudioTrack;->mStreamType:I

    .line 362
    iput v14, v13, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 368
    iput v1, v13, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 372
    iput v15, v13, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 383
    iput v15, v13, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v2, 0x0

    .line 387
    iput-object v2, v13, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 391
    iput v15, v13, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 395
    iput v15, v13, Landroid/media/AudioTrack;->mOffset:I

    .line 2787
    iput-object v2, v13, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2873
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v13, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 3036
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v13, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    if-eqz v0, :cond_e

    .line 576
    sget-boolean v2, Landroid/media/AudioTrack;->ATC_AOSP_ENHANCEMENT_AUDIO:Z

    if-eqz v2, :cond_1

    .line 578
    invoke-static {}, Landroid/media/AudioSystem;->isNaviProcType()I

    move-result v2

    if-ne v2, v14, :cond_0

    .line 579
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x5

    .line 580
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v3, 0x11

    .line 581
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    goto :goto_0

    .line 585
    :cond_0
    iget-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v2, v0, v6, v5}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 586
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    iget-object v3, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v2, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v3, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 587
    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x200

    and-int/lit16 v3, v3, -0x101

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 590
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    goto :goto_0

    .line 595
    :cond_1
    iget-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v2, v0, v6, v5}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    iget-object v3, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v2, v3}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v3, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 597
    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    or-int/lit16 v3, v3, 0x200

    and-int/lit16 v3, v3, -0x101

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 600
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    iput-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 605
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_3

    .line 606
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    :cond_3
    move-object v8, v2

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v15

    .line 615
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v3

    goto :goto_1

    :cond_5
    move v3, v15

    .line 620
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    :goto_2
    move v4, v1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    const/16 v1, 0xc

    goto :goto_2

    :cond_7
    move v4, v15

    .line 628
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v1

    and-int/2addr v1, v14

    if-eqz v1, :cond_8

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v0

    move v9, v0

    goto :goto_4

    :cond_8
    move v9, v14

    :goto_4
    move-object/from16 v0, p0

    move v1, v2

    move v2, v4

    move v4, v9

    move/from16 v5, p4

    .line 631
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    const/4 v0, -0x1

    .line 632
    iput v0, v13, Landroid/media/AudioTrack;->mStreamType:I

    .line 634
    invoke-direct {v13, v6}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 636
    iput-object v8, v13, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    if-ltz v7, :cond_d

    .line 642
    new-array v12, v14, [I

    iget v0, v13, Landroid/media/AudioTrack;->mSampleRate:I

    aput v0, v12, v15

    .line 643
    new-array v10, v14, [I

    aput v7, v10, v15

    .line 646
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    iget v4, v13, Landroid/media/AudioTrack;->mChannelMask:I

    iget v5, v13, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v6, v13, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v7, v13, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v8, v13, Landroid/media/AudioTrack;->mDataLoadMode:I

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v3, v12

    move-object v9, v10

    move-object/from16 v18, v10

    move-wide/from16 v10, v16

    move-object/from16 v16, v12

    move/from16 v12, p6

    invoke-direct/range {v0 .. v12}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZ)I

    move-result v0

    if-eqz v0, :cond_9

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when initializing AudioTrack."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void

    .line 655
    :cond_9
    aget v0, v16, v15

    iput v0, v13, Landroid/media/AudioTrack;->mSampleRate:I

    .line 656
    aget v0, v18, v15

    iput v0, v13, Landroid/media/AudioTrack;->mSessionId:I

    .line 658
    iget-object v0, v13, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    .line 660
    iget v0, v13, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 661
    iget v0, v13, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, v13, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_5

    :cond_a
    move v0, v14

    :goto_5
    const/high16 v1, 0x41a00000    # 20.0f

    int-to-float v2, v0

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 665
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr v1, v0

    iput v1, v13, Landroid/media/AudioTrack;->mOffset:I

    .line 668
    :cond_b
    iget v0, v13, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_c

    const/4 v0, 0x2

    .line 669
    iput v0, v13, Landroid/media/AudioTrack;->mState:I

    goto :goto_6

    .line 671
    :cond_c
    iput v14, v13, Landroid/media/AudioTrack;->mState:I

    .line 674
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    return-void

    .line 639
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid audio session ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFormat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZLandroid/media/AudioTrack$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 85
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;IIIZ)V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 0

    .line 85
    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/media/AudioTrack;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method static synthetic access$300(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 0

    .line 85
    iget-object p0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3

    .line 1222
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v0}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1223
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1227
    :goto_0
    rem-int v2, p1, v0

    if-nez v2, :cond_1

    if-lt p1, v1, :cond_1

    .line 1231
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 1232
    div-int/2addr p1, v0

    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    return-void

    .line 1228
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid audio buffer size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private audioParamCheck(IIIII)V
    .locals 2

    const/16 v0, 0xfa0

    if-lt p1, v0, :cond_0

    const v0, 0x2ee00

    if-le p1, v0, :cond_1

    :cond_0
    if-nez p1, :cond_10

    .line 1091
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const/16 p1, 0xd

    const/16 v0, 0xc

    if-ne p4, p1, :cond_3

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 1098
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1104
    :cond_3
    :goto_0
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    const/4 p1, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_6

    packed-switch p2, :pswitch_data_0

    if-nez p2, :cond_4

    if-eqz p3, :cond_4

    const/4 p2, 0x0

    .line 1120
    iput p2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_1

    .line 1123
    :cond_4
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1127
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1128
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result p2

    iput p2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_1

    .line 1125
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported channel configuration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1110
    :pswitch_0
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 p2, 0x4

    .line 1111
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_1

    .line 1115
    :cond_6
    :pswitch_1
    iput p1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1116
    iput v0, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1131
    :goto_1
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 1132
    iget p2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz p2, :cond_a

    .line 1134
    sget p2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    shl-int p2, v1, p2

    sub-int/2addr p2, v1

    not-int p2, p2

    and-int/2addr p2, p3

    if-nez p2, :cond_9

    .line 1139
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    .line 1140
    iget p3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez p3, :cond_7

    .line 1141
    iput p2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_2

    .line 1142
    :cond_7
    iget p3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-ne p3, p2, :cond_8

    goto :goto_2

    .line 1143
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Channel count must match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1136
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported channel index configuration "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_2
    if-ne p4, v1, :cond_b

    goto :goto_3

    :cond_b
    move p1, p4

    .line 1153
    :goto_3
    invoke-static {p1}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 1156
    iput p1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-eq p5, v1, :cond_c

    if-nez p5, :cond_d

    :cond_c
    if-eq p5, v1, :cond_e

    .line 1160
    iget p1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1161
    invoke-static {p1}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    .line 1162
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid mode."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1164
    :cond_e
    :goto_4
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    return-void

    .line 1154
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported audio encoding."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1088
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "Hz is not a supported sample rate."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private broadcastRoutingChange()V
    .locals 2

    .line 2975
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 2976
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2977
    :try_start_0
    iget-object p0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/NativeRoutingEventHandlerDelegate;

    .line 2978
    invoke-virtual {v1}, Landroid/media/NativeRoutingEventHandlerDelegate;->notifyClient()V

    goto :goto_0

    .line 2980
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static clampGainOrLevel(F)F
    .locals 3

    .line 1792
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, v2

    if-lez v0, :cond_1

    move p0, v2

    :cond_1
    :goto_0
    return p0

    .line 1793
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static getMaxVolume()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 2

    const/16 v0, 0xc

    const/4 v1, -0x2

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 1607
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "getMinBufferSize(): Invalid channel configuration."

    .line 1608
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    .line 1611
    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result p1

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    :pswitch_1
    const/4 p1, 0x2

    .line 1615
    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "getMinBufferSize(): Invalid audio format."

    .line 1616
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_2
    const/16 v0, 0xfa0

    if-lt p0, v0, :cond_5

    const v0, 0x2ee00

    if-le p0, v0, :cond_3

    goto :goto_1

    .line 1628
    :cond_3
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result p0

    if-gtz p0, :cond_4

    const-string p0, "getMinBufferSize(): error querying hardware"

    .line 1630
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_4
    return p0

    .line 1624
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMinBufferSize(): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Hz is not a supported sample rate."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMinVolume()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 0

    .line 1569
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result p0

    return p0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 3

    and-int/lit16 v0, p0, 0x1cfc

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    const-string p0, "Channel configuration features unsupported channels"

    .line 1175
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    .line 1178
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    .line 1179
    sget v2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    if-le v0, v2, :cond_1

    .line 1180
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Channel configuration contains too many channels "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_1
    and-int/lit8 v0, p0, 0xc

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    const-string p0, "Front channels must be present in multichannel configurations"

    .line 1190
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_2
    and-int/lit16 v0, p0, 0xc0

    if-eqz v0, :cond_3

    const/16 v2, 0xc0

    if-eq v0, v2, :cond_3

    const-string p0, "Rear channels can\'t be used independently"

    .line 1197
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_3
    const/16 v0, 0x1800

    and-int/2addr p0, v0

    if-eqz p0, :cond_4

    if-eq p0, v0, :cond_4

    const-string p0, "Side channels can\'t be used independently"

    .line 1205
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$postEventFromNative$0(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0

    .line 3176
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$StreamEventCallback;->onStreamDataRequest(Landroid/media/AudioTrack;)V

    return-void
.end method

.method static synthetic lambda$postEventFromNative$1(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0

    .line 3180
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$StreamEventCallback;->onTearDown(Landroid/media/AudioTrack;)V

    return-void
.end method

.method static synthetic lambda$postEventFromNative$2(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V
    .locals 0

    .line 3183
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$StreamEventCallback;->onStreamPresentationEnd(Landroid/media/AudioTrack;)V

    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.media.AudioTrack"

    .line 3303
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "android.media.AudioTrack"

    .line 3307
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private native native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private native native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static native native_get_FCC_8()I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private final native native_get_flags()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setPresentation(II)I
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZ)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3

    .line 3153
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioTrack;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 3159
    invoke-direct {p0}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 3167
    :cond_2
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3168
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mStreamEventExec:Ljava/util/concurrent/Executor;

    .line 3169
    iget-object v2, p0, Landroid/media/AudioTrack;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    .line 3170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_6

    packed-switch p1, :pswitch_data_0

    .line 3188
    :cond_4
    iget-object p0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    if-eqz p0, :cond_5

    .line 3190
    invoke-virtual {p0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 3192
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3193
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void

    .line 3183
    :pswitch_0
    new-instance p1, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;

    invoke-direct {p1, v2, p0}, Landroid/media/-$$Lambda$AudioTrack$om39tqtuoUKWEwKYDHE7uiykjxw;-><init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3180
    :pswitch_1
    new-instance p1, Landroid/media/-$$Lambda$AudioTrack$m_q5GeJNFuHKP4bKA5zNcUJmptg;

    invoke-direct {p1, v2, p0}, Landroid/media/-$$Lambda$AudioTrack$m_q5GeJNFuHKP4bKA5zNcUJmptg;-><init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3176
    :cond_6
    new-instance p1, Landroid/media/-$$Lambda$AudioTrack$RYzHLsveZX4qW27TDViuZeb3nTQ;

    invoke-direct {p1, v2, p0}, Landroid/media/-$$Lambda$AudioTrack$RYzHLsveZX4qW27TDViuZeb3nTQ;-><init>(Landroid/media/AudioTrack$StreamEventCallback;Landroid/media/AudioTrack;)V

    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 3170
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 1032
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    if-nez v2, :cond_0

    .line 1033
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1034
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1035
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1036
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_5

    .line 1042
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result p0

    if-eqz p0, :cond_5

    .line 1043
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1044
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1045
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result p0

    if-ge p0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-eq p3, v1, :cond_3

    return v0

    :cond_3
    if-eqz p2, :cond_4

    const-wide/16 v2, 0x64

    .line 1061
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result p0

    int-to-long v4, p0

    mul-long/2addr v4, v2

    .line 1062
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result p0

    invoke-static {p0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v4, v2

    .line 1063
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr v4, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v4, p0

    int-to-long p0, p2

    cmp-long p0, p0, v4

    if-gez p0, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v0
.end method

.method private startImpl()V
    .locals 2

    .line 2124
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2125
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStart()V

    .line 2126
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    const/4 v1, 0x3

    .line 2127
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .line 2860
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2861
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .line 2850
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2851
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4

    .line 2889
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 2890
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2891
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()V

    .line 2892
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2894
    :cond_0
    new-instance p2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    invoke-direct {v2, p0, p1, p2}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2892
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2896
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2956
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public attachAuxEffect(I)I
    .locals 1

    .line 2746
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p0, -0x3

    return p0

    .line 2749
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result p0

    return p0
.end method

.method public createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .locals 1

    .line 1871
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method deferred_connect(J)V
    .locals 17

    move-object/from16 v13, p0

    .line 715
    iget v0, v13, Landroid/media/AudioTrack;->mState:I

    const/4 v14, 0x1

    if-eq v0, v14, :cond_1

    .line 718
    new-array v15, v14, [I

    const/16 v16, 0x0

    aput v16, v15, v16

    .line 719
    new-array v3, v14, [I

    aput v16, v3, v16

    .line 720
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object v9, v15

    move-wide/from16 v10, p1

    invoke-direct/range {v0 .. v12}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJZ)I

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " when initializing AudioTrack."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void

    .line 736
    :cond_0
    aget v0, v15, v16

    iput v0, v13, Landroid/media/AudioTrack;->mSessionId:I

    .line 738
    iput v14, v13, Landroid/media/AudioTrack;->mState:I

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 1254
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1255
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    return-void
.end method

.method public flush()V
    .locals 2

    .line 2193
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2195
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    const/4 v0, 0x0

    .line 2196
    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 2197
    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 0

    .line 1318
    iget p0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return p0
.end method

.method public getAudioSessionId()I
    .locals 0

    .line 1644
    iget p0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return p0
.end method

.method public getBufferCapacityInFrames()I
    .locals 0

    .line 1469
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result p0

    return p0
.end method

.method public getBufferSizeInFrames()I
    .locals 0

    .line 1413
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result p0

    return p0
.end method

.method public getChannelConfiguration()I
    .locals 0

    .line 1343
    iget p0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return p0
.end method

.method public getChannelCount()I
    .locals 0

    .line 1368
    iget p0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return p0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 2

    .line 1352
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1353
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1354
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1355
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_0

    .line 1356
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 1358
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 1359
    iget p0, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 1361
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method public getLatency()I
    .locals 0

    .line 1524
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result p0

    return p0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 0

    .line 1753
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method protected getNativeFrameCount()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1480
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result p0

    return p0
.end method

.method public getNotificationMarkerPosition()I
    .locals 0

    .line 1489
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result p0

    return p0
.end method

.method public getPerformanceMode()I
    .locals 1

    .line 1555
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result p0

    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getPlayState()I
    .locals 1

    .line 1390
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1391
    :try_start_0
    iget p0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPlaybackHeadPosition()I
    .locals 0

    .line 1512
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result p0

    return p0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 0

    .line 1310
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackRate()I
    .locals 0

    .line 1300
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result p0

    return p0
.end method

.method public getPositionNotificationPeriod()I
    .locals 0

    .line 1497
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result p0

    return p0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 2819
    monitor-enter p0

    .line 2820
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2821
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 4

    .line 2831
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 2836
    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 2837
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2838
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 2839
    aget-object p0, v1, v2

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSampleRate()I
    .locals 0

    .line 1293
    iget p0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return p0
.end method

.method public getState()I
    .locals 0

    .line 1380
    iget p0, p0, Landroid/media/AudioTrack;->mState:I

    return p0
.end method

.method public getStreamType()I
    .locals 0

    .line 1330
    iget p0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return p0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 1693
    new-array v0, v0, [J

    .line 1694
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    return v1

    .line 1698
    :cond_0
    aget-wide v1, v0, v1

    iput-wide v1, p1, Landroid/media/AudioTimestamp;->framePosition:J

    const/4 p0, 0x1

    .line 1699
    aget-wide v1, v0, p0

    iput-wide v1, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    return p0

    .line 1690
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1735
    new-array v0, v0, [J

    .line 1736
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result p0

    const/4 v1, 0x0

    .line 1737
    aget-wide v1, v0, v1

    iput-wide v1, p1, Landroid/media/AudioTimestamp;->framePosition:J

    const/4 v1, 0x1

    .line 1738
    aget-wide v1, v0, v1

    iput-wide v1, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    return p0

    .line 1732
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getUnderrunCount()I
    .locals 0

    .line 1541
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result p0

    return p0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2164
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2169
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2170
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 2171
    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    const/4 v1, 0x2

    .line 2172
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2173
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2165
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "pause() called on uninitialized AudioTrack."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2092
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2096
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    if-nez v0, :cond_0

    .line 2098
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    goto :goto_0

    .line 2100
    :cond_0
    new-instance v1, Landroid/media/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    .line 2119
    invoke-virtual {v1}, Landroid/media/AudioTrack$1;->start()V

    :goto_0
    return-void

    .line 2093
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "play() called on uninitialized AudioTrack."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 0

    .line 1860
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result p0

    return p0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 0

    .line 1865
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object p0

    return-object p0
.end method

.method playerPause()V
    .locals 0

    .line 3138
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 2779
    :cond_0
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 2780
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method playerSetVolume(ZFF)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move p2, v0

    .line 1831
    :cond_0
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    if-eqz p1, :cond_1

    move p3, v0

    .line 1832
    :cond_1
    invoke-static {p3}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 1834
    invoke-direct {p0, p2, p1}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    return-void
.end method

.method playerStart()V
    .locals 0

    .line 3133
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method playerStop()V
    .locals 0

    .line 3143
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1243
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1247
    :catch_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1248
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    const/4 v0, 0x0

    .line 1249
    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    return-void
.end method

.method public reloadStaticData()I
    .locals 2

    .line 2718
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2721
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x3

    return p0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2

    .line 2907
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2908
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2909
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2911
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V

    .line 2912
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2968
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    return-void
.end method

.method public removeStreamEventCallback()V
    .locals 2

    .line 3064
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3065
    :try_start_0
    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventExec:Ljava/util/concurrent/Executor;

    .line 3066
    iput-object v1, p0, Landroid/media/AudioTrack;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    .line 3067
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1

    .line 2771
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p0, -0x3

    return p0

    .line 2774
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result p0

    return p0
.end method

.method public setBufferSizeInFrames(I)I
    .locals 1

    .line 1440
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p0, -0x2

    return p0

    .line 1446
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x3

    return p0
.end method

.method public setLoopPoints(III)I
    .locals 2

    .line 2017
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_4

    .line 2018
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_3

    .line 2023
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_3

    if-ge p1, p2, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    goto :goto_1

    .line 2027
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x2

    return p0

    :cond_4
    :goto_2
    const/4 p0, -0x3

    return p0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1

    .line 1935
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p0, -0x3

    return p0

    .line 1938
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result p0

    return p0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2

    .line 1975
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_3

    .line 1976
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_2

    .line 1979
    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 1982
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x2

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x3

    return p0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1921
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    return-void

    .line 1919
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "params is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1770
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1784
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1786
    iput-object p1, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    :goto_0
    return-void
.end method

.method public setPlaybackRate(I)I
    .locals 2

    .line 1893
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, -0x3

    return p0

    :cond_0
    if-gtz p1, :cond_1

    const/4 p0, -0x2

    return p0

    .line 1899
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result p0

    return p0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1

    .line 1949
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p0, -0x3

    return p0

    .line 1952
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result p0

    return p0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2800
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 2803
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 2804
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2806
    monitor-enter p0

    .line 2807
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2808
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return v0
.end method

.method public setPresentation(Landroid/media/AudioPresentation;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 2046
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getPresentationId()I

    move-result v0

    .line 2047
    invoke-virtual {p1}, Landroid/media/AudioPresentation;->getProgramId()I

    move-result p1

    .line 2046
    invoke-direct {p0, v0, p1}, Landroid/media/AudioTrack;->native_setPresentation(II)I

    move-result p0

    return p0

    .line 2044
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "audio presentation is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setState(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2059
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1821
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const/4 p0, -0x3

    return p0

    .line 1825
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    const/4 p0, 0x0

    return p0
.end method

.method public setStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 3052
    iget-object v0, p0, Landroid/media/AudioTrack;->mStreamEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3053
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mStreamEventExec:Ljava/util/concurrent/Executor;

    .line 3054
    iput-object p2, p0, Landroid/media/AudioTrack;->mStreamEventCb:Landroid/media/AudioTrack$StreamEventCallback;

    .line 3055
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3050
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null Executor for the StreamEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3047
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null StreamEventCallback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVolume(F)I
    .locals 0

    .line 1853
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result p0

    return p0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2141
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2146
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2147
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 2148
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    .line 2149
    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v1, 0x0

    .line 2150
    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 2151
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2142
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "stop() called on uninitialized AudioTrack."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 9

    .line 2557
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    .line 2558
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x3

    return p0

    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_1

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    .line 2563
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_8

    if-ltz p2, :cond_8

    .line 2567
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le p2, v2, :cond_2

    goto :goto_3

    .line 2573
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2575
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget v7, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_3

    move v8, v1

    goto :goto_0

    :cond_3
    move v8, v2

    :goto_0
    move-object v3, p0

    move-object v4, p1

    move v6, p2

    .line 2574
    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result p2

    goto :goto_2

    .line 2578
    :cond_4
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    .line 2579
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    iget v6, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_5

    move v7, v1

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    move-object v2, p0

    move v5, p2

    .line 2578
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result p2

    .line 2584
    :goto_2
    iget p3, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p3, :cond_6

    iget p3, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    if-lez p2, :cond_6

    .line 2588
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    :cond_6
    if-lez p2, :cond_7

    .line 2592
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_7
    return p2

    :cond_8
    :goto_3
    const-string p0, "android.media.AudioTrack"

    .line 2568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") value"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 4

    .line 2630
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    if-nez v0, :cond_0

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    .line 2631
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, -0x2

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    if-eq p3, v2, :cond_1

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    .line 2636
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 2640
    :cond_1
    iget v3, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v3, v2, :cond_2

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() with timestamp called for non-streaming mode track"

    .line 2641
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2645
    :cond_2
    iget-object v1, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    const-string p4, "android.media.AudioTrack"

    const-string p5, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    .line 2646
    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0

    :cond_3
    if-eqz p1, :cond_a

    if-ltz p2, :cond_a

    .line 2650
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le p2, v1, :cond_4

    goto/16 :goto_0

    .line 2656
    :cond_4
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 2657
    iget v0, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2658
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2659
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v1, 0x55550002

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2662
    :cond_5
    iget v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2663
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2664
    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2665
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget p5, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-virtual {p4, v2, p5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2666
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2667
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2672
    :cond_6
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_8

    .line 2673
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p4, v0, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p4

    if-gez p4, :cond_7

    const-string p1, "android.media.AudioTrack"

    const-string p2, "AudioTrack.write() could not write timestamp header!"

    .line 2675
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    iput-object p5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2677
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return p4

    .line 2680
    :cond_7
    iget-object p4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p4

    if-lez p4, :cond_8

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() partial timestamp header written."

    .line 2681
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2687
    :cond_8
    iget p4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2688
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_9

    const-string p2, "android.media.AudioTrack"

    const-string p3, "AudioTrack.write() could not write audio data!"

    .line 2690
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    iput-object p5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2692
    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return p1

    .line 2696
    :cond_9
    iget p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return p1

    :cond_a
    :goto_0
    const-string p0, "android.media.AudioTrack"

    .line 2651
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AudioTrack.write() called with invalid size ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") value"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public write([BII)I
    .locals 1

    const/4 v0, 0x0

    .line 2238
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result p0

    return p0
.end method

.method public write([BIII)I
    .locals 10

    .line 2286
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    .line 2291
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v2, p2, p3

    if-ltz v2, :cond_5

    .line 2295
    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 2301
    :cond_2
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_3

    move v9, v1

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    move v9, p4

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result p1

    .line 2304
    iget p2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_4

    iget p2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    if-lez p1, :cond_4

    .line 2308
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    :cond_4
    return p1

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    const/4 p0, -0x3

    return p0
.end method

.method public write([FIII)I
    .locals 10

    .line 2476
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, -0x3

    if-nez v0, :cond_0

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    .line 2477
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2481
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    .line 2482
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    if-eq p4, v1, :cond_2

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    .line 2487
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    if-eqz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz p3, :cond_6

    add-int v2, p2, p3

    if-ltz v2, :cond_6

    .line 2491
    array-length v3, p1

    if-le v2, v3, :cond_3

    goto :goto_1

    .line 2498
    :cond_3
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4

    move v9, v1

    goto :goto_0

    :cond_4
    const/4 p4, 0x0

    move v9, p4

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result p1

    .line 2501
    iget p2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_5

    iget p2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_5

    if-lez p1, :cond_5

    .line 2505
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    :cond_5
    return p1

    :cond_6
    :goto_1
    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() called with invalid array, offset, or size"

    .line 2494
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public write([SII)I
    .locals 1

    const/4 v0, 0x0

    .line 2349
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result p0

    return p0
.end method

.method public write([SIII)I
    .locals 10

    .line 2395
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x2

    const/4 v1, 0x1

    if-eqz p4, :cond_1

    if-eq p4, v1, :cond_1

    const-string p0, "android.media.AudioTrack"

    const-string p1, "AudioTrack.write() called with invalid blocking mode"

    .line 2400
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    if-eqz p1, :cond_5

    if-ltz p2, :cond_5

    if-ltz p3, :cond_5

    add-int v2, p2, p3

    if-ltz v2, :cond_5

    .line 2404
    array-length v3, p1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 2410
    :cond_2
    iget v8, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_3

    move v9, v1

    goto :goto_0

    :cond_3
    const/4 p4, 0x0

    move v9, p4

    :goto_0
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result p1

    .line 2413
    iget p2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez p2, :cond_4

    iget p2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_4

    if-lez p1, :cond_4

    .line 2417
    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    :cond_4
    return p1

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    const/4 p0, -0x3

    return p0
.end method
