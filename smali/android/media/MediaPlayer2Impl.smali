.class public final Landroid/media/MediaPlayer2Impl;
.super Landroid/media/MediaPlayer2;
.source "MediaPlayer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer2Impl$Task;,
        Landroid/media/MediaPlayer2Impl$TimeProvider;,
        Landroid/media/MediaPlayer2Impl$ProvisioningThread;,
        Landroid/media/MediaPlayer2Impl$StreamEventCallback;,
        Landroid/media/MediaPlayer2Impl$ProvisioningServerErrorExceptionImpl;,
        Landroid/media/MediaPlayer2Impl$ProvisioningNetworkErrorExceptionImpl;,
        Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;,
        Landroid/media/MediaPlayer2Impl$DrmInfoImpl;,
        Landroid/media/MediaPlayer2Impl$EventHandler;,
        Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
    }
.end annotation


# static fields
.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE:I = 0x2

.field private static final INVOKE_ID_ADD_EXTERNAL_SOURCE_FD:I = 0x3

.field private static final INVOKE_ID_DESELECT_TRACK:I = 0x5

.field private static final INVOKE_ID_GET_SELECTED_TRACK:I = 0x7

.field private static final INVOKE_ID_GET_TRACK_INFO:I = 0x1

.field private static final INVOKE_ID_SELECT_TRACK:I = 0x4

.field private static final INVOKE_ID_SET_VIDEO_SCALE_MODE:I = 0x6

.field private static final KEY_PARAMETER_AUDIO_ATTRIBUTES:I = 0x578

.field private static final MEDIA_AUDIO_ROUTING_CHANGED:I = 0x2710

.field private static final MEDIA_BUFFERING_UPDATE:I = 0x3

.field private static final MEDIA_DRM_INFO:I = 0xd2

.field private static final MEDIA_ERROR:I = 0x64

.field private static final MEDIA_INFO:I = 0xc8

.field private static final MEDIA_META_DATA:I = 0xca

.field private static final MEDIA_NOP:I = 0x0

.field private static final MEDIA_NOTIFY_TIME:I = 0x62

.field private static final MEDIA_PAUSED:I = 0x7

.field private static final MEDIA_PLAYBACK_COMPLETE:I = 0x2

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SEEK_COMPLETE:I = 0x4

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x5

.field private static final MEDIA_SKIPPED:I = 0x9

.field private static final MEDIA_STARTED:I = 0x6

.field private static final MEDIA_STOPPED:I = 0x8

.field private static final MEDIA_SUBTITLE_DATA:I = 0xc9

.field private static final MEDIA_TIMED_TEXT:I = 0x63

.field private static final NEXT_SOURCE_STATE_ERROR:I = -0x1

.field private static final NEXT_SOURCE_STATE_INIT:I = 0x0

.field private static final NEXT_SOURCE_STATE_PREPARED:I = 0x2

.field private static final NEXT_SOURCE_STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaPlayer2Impl"


# instance fields
.field private mActiveDrmScheme:Z

.field private mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentDSD:Landroid/media/DataSourceDesc;

.field private mCurrentSrcId:J

.field private mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTaskLock"
    .end annotation
.end field

.field private mDrmConfigAllowed:Z

.field private mDrmEventCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/MediaPlayer2$DrmEventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDrmEventCbLock:Ljava/lang/Object;

.field private mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

.field private mDrmInfoResolved:Z

.field private final mDrmLock:Ljava/lang/Object;

.field private mDrmObj:Landroid/media/MediaDrm;

.field private mDrmProvisioningInProgress:Z

.field private mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

.field private mDrmSessionId:[B

.field private mDrmUUID:Ljava/util/UUID;

.field private mEventCallbackRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/util/concurrent/Executor;",
            "Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mEventCbLock:Ljava/lang/Object;

.field private mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

.field private final mGuard:Ldalvik/system/CloseGuard;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mInbandTrackIndices:Ljava/util/BitSet;

.field private mIndexTrackPairs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/media/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListenerContext:I

.field private mNativeContext:J

.field private mNativeSurfaceTexture:J

.field private mNextDSDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/DataSourceDesc;",
            ">;"
        }
    .end annotation
.end field

.field private mNextSourcePlayPending:Z

.field private mNextSourceState:I

.field private mNextSrcId:J

.field private mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

.field private mOnSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

.field private mOpenSubtitleSources:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTasks:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTaskLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/MediaPlayer2Impl$Task;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mPrepareDrmInProgress:Z

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

.field private mScreenOnWhilePlaying:Z

.field private mSelectedSubtitleTrackIndex:I

.field private mSrcIdGenerator:J

.field private final mSrcLock:Ljava/lang/Object;

.field private mStayAwake:Z

.field private mStreamType:I

.field private mSubtitleController:Landroid/media/SubtitleController;

.field private mSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mTaskHandler:Landroid/os/Handler;

.field private final mTaskLock:Ljava/lang/Object;

.field private mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

.field private volatile mVolume:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media2_jni"

    .line 90
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Landroid/media/MediaPlayer2Impl;->native_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 151
    invoke-direct {p0}, Landroid/media/MediaPlayer2;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/high16 v1, -0x80000000

    .line 104
    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mStreamType:I

    .line 105
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    .line 107
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mSrcLock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 109
    iput-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    .line 111
    iget-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    iput-wide v5, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    iput-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    .line 113
    iget-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    iput-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    const/4 v1, 0x0

    .line 114
    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    .line 115
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    .line 118
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 120
    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mVolume:F

    .line 123
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    .line 139
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    .line 140
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mPendingTasks:Ljava/util/List;

    .line 1101
    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1174
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2044
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    .line 2045
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mInbandTrackIndices:Ljava/util/BitSet;

    const/4 v1, -0x1

    .line 2148
    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    .line 2151
    new-instance v1, Landroid/media/MediaPlayer2Impl$25;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer2Impl$25;-><init>(Landroid/media/MediaPlayer2Impl;)V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    .line 3198
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    .line 3199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    .line 3269
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    .line 3270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v0, Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/MediaPlayer2Impl$EventHandler;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    new-instance v0, Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-direct {v0, p0, p0, v1}, Landroid/media/MediaPlayer2Impl$EventHandler;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    goto :goto_0

    .line 158
    :cond_1
    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    .line 161
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaPlayer2TaskThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 162
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 163
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;-><init>(Landroid/media/MediaPlayer2Impl;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    .line 167
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    .line 168
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->native_setup(Ljava/lang/Object;)V

    return-void
.end method

.method private HandleProvisioninig(Ljava/util/UUID;)I
    .locals 4

    .line 4215
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string p0, "MediaPlayer2Impl"

    const-string p1, "HandleProvisioninig: Unexpected mDrmProvisioningInProgress"

    .line 4216
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4220
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "MediaPlayer2Impl"

    const-string p1, "HandleProvisioninig: getProvisionRequest returned null."

    .line 4222
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const-string v1, "MediaPlayer2Impl"

    .line 4226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleProvisioninig provReq  data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4227
    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4226
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 4230
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    .line 4232
    new-instance v2, Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$1;)V

    invoke-virtual {v2, v0, p1, p0}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->initialize(Landroid/media/MediaDrm$ProvisionRequest;Ljava/util/UUID;Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    .line 4233
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {p1}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->start()V

    .line 4239
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4240
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 4241
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 4247
    :cond_2
    :try_start_1
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {p1}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaPlayer2Impl"

    .line 4249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HandleProvisioninig: Thread.join Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4251
    :goto_0
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {p1}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->status()I

    move-result p1

    .line 4253
    iput-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    move p0, p1

    :goto_1
    return p0

    :catchall_0
    move-exception p0

    .line 4241
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private native _attachAuxEffect(I)V
.end method

.method private native _getAudioStreamType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _notifyAt(J)V
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _prepareDrm([B[B)V
.end method

.method private native _release()V
.end method

.method private native _releaseDrm()V
.end method

.method private native _reset()V
.end method

.method private final native _seekTo(JI)V
.end method

.method private native _setAudioSessionId(I)V
.end method

.method private native _setAuxEffectSendLevel(F)V
.end method

.method private native _setBufferingParams(Landroid/media/BufferingParams;)V
.end method

.method private native _setPlaybackParams(Landroid/media/PlaybackParams;)V
.end method

.method private native _setSyncParams(Landroid/media/SyncParams;)V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _setVolume(FF)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaPlayer2Impl;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer2Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_start()V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/MediaPlayer2Impl;)J
    .locals 2

    .line 88
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    return-wide v0
.end method

.method static synthetic access$1002(Landroid/media/MediaPlayer2Impl;J)J
    .locals 0

    .line 88
    iput-wide p1, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    return-wide p1
.end method

.method static synthetic access$1102(Landroid/media/MediaPlayer2Impl;I)I
    .locals 0

    .line 88
    iput p1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    return p1
.end method

.method static synthetic access$1200(Landroid/media/MediaPlayer2Impl;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    return p0
.end method

.method static synthetic access$1202(Landroid/media/MediaPlayer2Impl;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->prepareNextDataSource_l()V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/MediaPlayer2Impl;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->setLooping(Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/MediaPlayer2Impl;Landroid/media/PlaybackParams;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setPlaybackParams(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method static synthetic access$1602(Landroid/media/MediaPlayer2Impl;F)F
    .locals 0

    .line 88
    iput p1, p0, Landroid/media/MediaPlayer2Impl;->mVolume:F

    return p1
.end method

.method static synthetic access$1700(Landroid/media/MediaPlayer2Impl;FF)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->_setVolume(FF)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1900(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Landroid/media/MediaPlayer2Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_pause()V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/MediaPlayer2Impl;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Landroid/media/MediaPlayer2Impl;->mScreenOnWhilePlaying:Z

    return p0
.end method

.method static synthetic access$2102(Landroid/media/MediaPlayer2Impl;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/MediaPlayer2Impl;Landroid/view/Surface;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/MediaPlayer2Impl;I)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->isVideoScalingModeSupported(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$EventHandler;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    return-object p0
.end method

.method static synthetic access$2600(Landroid/media/MediaPlayer2Impl;Landroid/media/BufferingParams;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setBufferingParams(Landroid/media/BufferingParams;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/media/MediaPlayer2Impl;Landroid/media/SyncParams;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setSyncParams(Landroid/media/SyncParams;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/media/MediaPlayer2Impl;JI)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl;->_seekTo(JI)V

    return-void
.end method

.method static synthetic access$2900(Landroid/media/MediaPlayer2Impl;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setAudioSessionId(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/MediaPlayer2Impl;ILandroid/os/Parcel;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->setParameter(ILandroid/os/Parcel;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Landroid/media/MediaPlayer2Impl;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_attachAuxEffect(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/media/MediaPlayer2Impl;F)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setAuxEffectSendLevel(F)V

    return-void
.end method

.method static synthetic access$3200(Landroid/media/MediaPlayer2Impl;)Landroid/media/SubtitleController;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p0
.end method

.method static synthetic access$3202(Landroid/media/MediaPlayer2Impl;Landroid/media/SubtitleController;)Landroid/media/SubtitleController;
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$TimeProvider;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    return-object p0
.end method

.method static synthetic access$3400(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$3500(Landroid/media/MediaPlayer2Impl;)Ljava/util/Vector;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$3700(Landroid/media/MediaPlayer2Impl;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectTrack(IZ)V

    return-void
.end method

.method static synthetic access$3800(Landroid/media/MediaPlayer2Impl;)J
    .locals 2

    .line 88
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mNativeContext:J

    return-wide v0
.end method

.method static synthetic access$3900(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->scanInternalSubtitleTracks()V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mSrcLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4000(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->playNextDataSource_l()V

    return-void
.end method

.method static synthetic access$4100(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4200(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$Task;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;

    return-object p0
.end method

.method static synthetic access$4202(Landroid/media/MediaPlayer2Impl;Landroid/media/MediaPlayer2Impl$Task;)Landroid/media/MediaPlayer2Impl$Task;
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;

    return-object p1
.end method

.method static synthetic access$4700(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->processPendingTask_l()V

    return-void
.end method

.method static synthetic access$4800(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4900(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    return-object p0
.end method

.method static synthetic access$500(Landroid/media/MediaPlayer2Impl;)Landroid/media/DataSourceDesc;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    return-object p0
.end method

.method static synthetic access$502(Landroid/media/MediaPlayer2Impl;Landroid/media/DataSourceDesc;)Landroid/media/DataSourceDesc;
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    return-object p1
.end method

.method static synthetic access$5100(Landroid/media/MediaPlayer2Impl;)Ljava/util/ArrayList;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$5200(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$5300(Landroid/media/MediaPlayer2Impl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$5400(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaPlayer2$OnSubtitleDataListener;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mOnSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    return-object p0
.end method

.method static synthetic access$5500(Landroid/media/MediaPlayer2Impl;)Landroid/util/ArrayMap;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$5700(Landroid/media/MediaPlayer2Impl;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    return p0
.end method

.method static synthetic access$5702(Landroid/media/MediaPlayer2Impl;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    return p1
.end method

.method static synthetic access$5800(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_releaseDrm()V

    return-void
.end method

.method static synthetic access$5900(Landroid/media/MediaPlayer2Impl;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->cleanDrmObj()V

    return-void
.end method

.method static synthetic access$600(Landroid/media/MediaPlayer2Impl;)J
    .locals 2

    .line 88
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    return-wide v0
.end method

.method static synthetic access$6000(Landroid/media/MediaPlayer2Impl;)[B
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    return-object p0
.end method

.method static synthetic access$602(Landroid/media/MediaPlayer2Impl;J)J
    .locals 0

    .line 88
    iput-wide p1, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    return-wide p1
.end method

.method static synthetic access$6100(Landroid/media/MediaPlayer2Impl;)Landroid/media/MediaDrm;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    return-object p0
.end method

.method static synthetic access$6200(JJ)V
    .locals 0

    .line 88
    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl;->native_stream_event_onTearDown(JJ)V

    return-void
.end method

.method static synthetic access$6300(JJ)V
    .locals 0

    .line 88
    invoke-static {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl;->native_stream_event_onStreamPresentationEnd(JJ)V

    return-void
.end method

.method static synthetic access$6400(JJJ)V
    .locals 0

    .line 88
    invoke-static/range {p0 .. p5}, Landroid/media/MediaPlayer2Impl;->native_stream_event_onStreamDataRequest(JJJ)V

    return-void
.end method

.method static synthetic access$6500(Landroid/media/MediaPlayer2Impl;)Ljava/lang/Object;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6600(Landroid/media/MediaPlayer2Impl;Ljava/util/UUID;)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->resumePrepareDrm(Ljava/util/UUID;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6702(Landroid/media/MediaPlayer2Impl;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    return p1
.end method

.method static synthetic access$6802(Landroid/media/MediaPlayer2Impl;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    return p1
.end method

.method static synthetic access$708(Landroid/media/MediaPlayer2Impl;)J
    .locals 4

    .line 88
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/media/MediaPlayer2Impl;ZLandroid/media/DataSourceDesc;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZLandroid/media/DataSourceDesc;J)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/MediaPlayer2Impl;)Ljava/util/List;
    .locals 0

    .line 88
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Landroid/media/MediaPlayer2Impl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    return-object p1
.end method

.method private addTask(Landroid/media/MediaPlayer2Impl$Task;)V
    .locals 2

    .line 791
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTaskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 792
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mPendingTasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->processPendingTask_l()V

    .line 794
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private attemptDataSource(ZJLandroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 22

    move-object/from16 v1, p5

    :try_start_0
    const-string/jumbo v0, "r"

    move-object/from16 v2, p4

    .line 901
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    .line 902
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 905
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-wide v11, 0x7ffffffffffffffL

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-wide/from16 v6, p2

    .line 903
    invoke-direct/range {v4 .. v12}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 911
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v17

    .line 912
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v18

    .line 913
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v20

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-wide/from16 v15, p2

    .line 909
    invoke-direct/range {v13 .. v21}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x1

    if-eqz v2, :cond_1

    .line 916
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    move-object v4, v3

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 901
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v4, :cond_2

    .line 916
    :try_start_4
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    :goto_2
    throw v3
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    const-string v2, "MediaPlayer2Impl"

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static availableMimeTypeForExternalSource(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "application/x-subrip"

    .line 2093
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private cleanDrmObj()V
    .locals 3

    const-string v0, "MediaPlayer2Impl"

    .line 4311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanDrmObj: mDrmObj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDrmSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4313
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4314
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    invoke-virtual {v0, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    .line 4315
    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    .line 4317
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    if-eqz v0, :cond_1

    .line 4318
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    .line 4319
    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    :cond_1
    return-void
.end method

.method private enableNativeRoutingCallbacksLocked(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .line 1164
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->native_enableDeviceCallback(Z)V

    :cond_0
    return-void
.end method

.method private getAudioStreamType()I
    .locals 2

    .line 1075
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mStreamType:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1076
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_getAudioStreamType()I

    move-result v0

    iput v0, p0, Landroid/media/MediaPlayer2Impl;->mStreamType:I

    .line 1078
    :cond_0
    iget p0, p0, Landroid/media/MediaPlayer2Impl;->mStreamType:I

    return p0
.end method

.method private static final getByteArrayFromUUID(Ljava/util/UUID;)[B
    .locals 9

    .line 4324
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 4325
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    const/16 p0, 0x10

    .line 4327
    new-array p0, p0, [B

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    rsub-int/lit8 v6, v4, 0x7

    mul-int/2addr v6, v5

    ushr-long v7, v0, v6

    long-to-int v5, v7

    int-to-byte v5, v5

    .line 4329
    aput-byte v5, p0, v4

    add-int/lit8 v5, v4, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    .line 4330
    aput-byte v6, p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private getInbandTrackInfoImpl()[Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x1

    .line 2079
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2080
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2081
    sget-object p0, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/MediaPlayer2Impl$TrackInfoImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2085
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method private native getParameter(I)Landroid/os/Parcel;
.end method

.method private handleDataSource(ZJLandroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 868
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 869
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    .line 871
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    move v8, p1

    move-wide/from16 v9, p2

    invoke-direct/range {v7 .. v13}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void

    :cond_0
    const-string v2, "content"

    .line 876
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "settings"

    .line 877
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 880
    invoke-static/range {p5 .. p5}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 881
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v1, p4

    .line 882
    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move-wide/from16 v2, p2

    move-object v4, v6

    .line 883
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaPlayer2Impl;->attemptDataSource(ZJLandroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    move v1, p1

    move-wide/from16 v2, p2

    move-object v4, v6

    move-object v5, v7

    .line 886
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaPlayer2Impl;->attemptDataSource(ZJLandroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 889
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move v1, p1

    move-wide/from16 v2, p2

    move-object v4, v6

    move-object/from16 v5, p5

    .line 892
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaPlayer2Impl;->attemptDataSource(ZJLandroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 895
    :cond_4
    invoke-virtual/range {p5 .. p5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private handleDataSource(ZJLandroid/media/Media2DataSource;)V
    .locals 0

    .line 1001
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/MediaPlayer2Impl;->nativeHandleDataSourceCallback(ZJLandroid/media/Media2DataSource;)V

    return-void
.end method

.method private handleDataSource(ZJLjava/io/FileDescriptor;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 990
    invoke-direct/range {p0 .. p8}, Landroid/media/MediaPlayer2Impl;->nativeHandleDataSourceFD(ZJLjava/io/FileDescriptor;JJ)V

    return-void
.end method

.method private handleDataSource(ZJLjava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    .line 930
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 931
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 934
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 935
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v3

    .line 936
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v9, v0

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v9, v0

    move-object v10, v9

    :goto_1
    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object/from16 v11, p6

    .line 940
    invoke-direct/range {v4 .. v11}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private handleDataSource(ZJLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    .line 948
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    move-object v0, p4

    move-object/from16 v1, p7

    .line 955
    invoke-static {p4, v1}, Landroid/media/Media2HTTPService;->createHTTPService(Ljava/lang/String;Ljava/util/List;)Landroid/media/Media2HTTPService;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 952
    invoke-direct/range {v1 .. v8}, Landroid/media/MediaPlayer2Impl;->nativeHandleDataSourceUrl(ZJLandroid/media/Media2HTTPService;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v0, p4

    .line 962
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 964
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 965
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-wide v9, 0x7ffffffffffffffL

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    .line 966
    invoke-direct/range {v2 .. v10}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/io/FileDescriptor;JJ)V

    .line 967
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void

    .line 969
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "handleDataSource failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleDataSource(ZLandroid/media/DataSourceDesc;J)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "the DataSourceDesc cannot be null"

    move-object/from16 v1, p2

    .line 811
    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 831
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getUriContext()Landroid/content/Context;

    move-result-object v5

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 833
    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getUriHeaders()Ljava/util/Map;

    move-result-object v7

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getUriCookies()Ljava/util/List;

    move-result-object v8

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p3

    .line 829
    invoke-direct/range {v1 .. v8}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLandroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 823
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getFileDescriptorOffset()J

    move-result-wide v14

    .line 825
    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getFileDescriptorLength()J

    move-result-wide v16

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-wide/from16 v11, p3

    .line 821
    invoke-direct/range {v9 .. v17}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLjava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 817
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/media/DataSourceDesc;->getMedia2DataSource()Landroid/media/Media2DataSource;

    move-result-object v0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v3, p3

    .line 815
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZJLandroid/media/Media2DataSource;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isVideoScalingModeSupported(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public static synthetic lambda$prepareDrm$0(Landroid/media/MediaPlayer2Impl;Landroid/util/Pair;)V
    .locals 2

    .line 3501
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaPlayer2$DrmEventCallback;

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/media/MediaPlayer2$DrmEventCallback;->onDrmPrepared(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;I)V

    return-void
.end method

.method private native nativeHandleDataSourceCallback(ZJLandroid/media/Media2DataSource;)V
.end method

.method private native nativeHandleDataSourceFD(ZJLjava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativeHandleDataSourceUrl(ZJLandroid/media/Media2HTTPService;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativePlayNextDataSource(J)V
.end method

.method private final native native_enableDeviceCallback(Z)V
.end method

.method private final native native_finalize()V
.end method

.method private native native_getMediaPlayer2State()I
.end method

.method private final native native_getMetadata(ZZLandroid/os/Parcel;)Z
.end method

.method private native native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private static final native native_init()V
.end method

.method private final native native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I
.end method

.method private final native native_setMetadataFilter(Landroid/os/Parcel;)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private static final native native_stream_event_onStreamDataRequest(JJJ)V
.end method

.method private static final native native_stream_event_onStreamPresentationEnd(JJ)V
.end method

.method private static final native native_stream_event_onTearDown(JJ)V
.end method

.method private playNextDataSource_l()V
    .locals 7

    .line 1033
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1037
    :cond_0
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1039
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/DataSourceDesc;

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    .line 1040
    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    iput-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    .line 1041
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1042
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1043
    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Landroid/media/MediaPlayer2Impl;->mSrcIdGenerator:J

    iput-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    .line 1044
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageNext:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1045
    iput v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    .line 1046
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    .line 1048
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentSrcId:J

    .line 1050
    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->nativePlayNextDataSource(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1052
    :catch_0
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    const/16 v4, 0x64

    const/16 v5, -0x3f2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1054
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    new-instance v4, Landroid/media/MediaPlayer2Impl$16;

    invoke-direct {v4, p0, v2, v0, v1}, Landroid/media/MediaPlayer2Impl$16;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/os/Message;J)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1064
    :cond_1
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    if-nez v0, :cond_2

    .line 1065
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->prepareNextDataSource_l()V

    .line 1067
    :cond_2
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mNextSourcePlayPending:Z

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private populateInbandTracks()V
    .locals 6

    .line 2279
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->getInbandTrackInfoImpl()[Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    move-result-object v0

    .line 2280
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    const/4 v2, 0x0

    .line 2281
    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2282
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 2285
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 2289
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->getTrackType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 2290
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    aget-object v4, v0, v2

    .line 2291
    invoke-virtual {v4}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 2290
    invoke-virtual {v3, v4}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    .line 2292
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2294
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2297
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static postEventFromNative(Ljava/lang/Object;JIIILjava/lang/Object;)V
    .locals 3

    .line 3138
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaPlayer2Impl;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_3

    const/16 v0, 0xd2

    if-eq p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "MediaPlayer2Impl"

    const-string/jumbo v1, "postEventFromNative MEDIA_DRM_INFO"

    .line 3162
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    instance-of v0, p6, Landroid/os/Parcel;

    if-eqz v0, :cond_2

    .line 3164
    move-object v0, p6

    check-cast v0, Landroid/os/Parcel;

    .line 3165
    new-instance v1, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;-><init>(Landroid/os/Parcel;Landroid/media/MediaPlayer2Impl$1;)V

    .line 3166
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3167
    :try_start_0
    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    .line 3168
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    const-string v0, "MediaPlayer2Impl"

    .line 3170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIA_DRM_INFO msg.obj of unexpected type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p4, v0, :cond_5

    .line 3146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/media/MediaPlayer2Impl$30;

    invoke-direct {v1, p0}, Landroid/media/MediaPlayer2Impl$30;-><init>(Landroid/media/MediaPlayer2Impl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3153
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 3179
    :cond_4
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3180
    :try_start_1
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoResolved:Z

    .line 3181
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3186
    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    if-eqz v0, :cond_6

    .line 3187
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 3189
    iget-object p4, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    new-instance p5, Landroid/media/MediaPlayer2Impl$31;

    invoke-direct {p5, p0, p3, p1, p2}, Landroid/media/MediaPlayer2Impl$31;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/os/Message;J)V

    invoke-virtual {p4, p5}, Landroid/media/MediaPlayer2Impl$EventHandler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    :catchall_1
    move-exception p0

    .line 3181
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private prepareDrm_createDrmStep(Ljava/util/UUID;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    .line 3995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_createDrmStep: UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    :try_start_0
    new-instance v0, Landroid/media/MediaDrm;

    invoke-direct {v0, p1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    const-string p1, "MediaPlayer2Impl"

    .line 3999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepareDrm_createDrmStep: Created mDrmObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prepareDrm_createDrmStep: MediaDrm failed with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer2Impl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    throw p0
.end method

.method private prepareDrm_openSessionStep(Ljava/util/UUID;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/ResourceBusyException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    .line 4008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_openSessionStep: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    const-string v0, "MediaPlayer2Impl"

    .line 4015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm_openSessionStep: mDrmSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    invoke-static {p1}, Landroid/media/MediaPlayer2Impl;->getByteArrayFromUUID(Ljava/util/UUID;)[B

    move-result-object p1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer2Impl;->_prepareDrm([B[B)V

    const-string p0, "MediaPlayer2Impl"

    const-string/jumbo p1, "prepareDrm_openSessionStep: _prepareDrm/Crypto succeeded"

    .line 4020
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4023
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prepareDrm_openSessionStep: open/crypto failed with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaPlayer2Impl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4024
    throw p0
.end method

.method private prepareNextDataSource_l()V
    .locals 5

    .line 1009
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 1016
    :try_start_0
    iput v0, p0, Landroid/media/MediaPlayer2Impl;->mNextSourceState:I

    .line 1017
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mNextDSDs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/DataSourceDesc;

    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/media/MediaPlayer2Impl;->handleDataSource(ZLandroid/media/DataSourceDesc;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1019
    :catch_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    const/16 v2, 0x64

    const/16 v3, -0x3f2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1021
    iget-wide v1, p0, Landroid/media/MediaPlayer2Impl;->mNextSrcId:J

    .line 1022
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    new-instance v4, Landroid/media/MediaPlayer2Impl$15;

    invoke-direct {v4, p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$15;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/os/Message;J)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer2Impl$EventHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method private processPendingTask_l()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTaskLock"
    .end annotation

    .line 799
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;

    if-eqz v0, :cond_0

    return-void

    .line 802
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 803
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mPendingTasks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer2Impl$Task;

    .line 804
    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentTask:Landroid/media/MediaPlayer2Impl$Task;

    .line 805
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private release()V
    .locals 2

    const/4 v0, 0x0

    .line 2707
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->stayAwake(Z)V

    .line 2708
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    .line 2709
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2710
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2711
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2712
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2713
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2714
    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2716
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    if-eqz v0, :cond_1

    .line 2717
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->close()V

    .line 2718
    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    .line 2720
    :cond_1
    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOnSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    .line 2723
    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    .line 2724
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2725
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2726
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2727
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->resetDrmState()V

    .line 2729
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_release()V

    return-void

    :catchall_0
    move-exception p0

    .line 2726
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 2711
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private resetDrmState()V
    .locals 7

    .line 4281
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaPlayer2Impl"

    .line 4282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetDrmState:  mDrmInfoImpl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mDrmProvisioningThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mPrepareDrmInProgress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mActiveDrmScheme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 4288
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoResolved:Z

    const/4 v2, 0x0

    .line 4289
    iput-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    .line 4291
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4294
    :try_start_1
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    invoke-virtual {v3}, Landroid/media/MediaPlayer2Impl$ProvisioningThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "MediaPlayer2Impl"

    .line 4297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetDrmState: ProvThread.join Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4299
    :goto_0
    iput-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningThread:Landroid/media/MediaPlayer2Impl$ProvisioningThread;

    .line 4302
    :cond_0
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    .line 4303
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    .line 4305
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->cleanDrmObj()V

    .line 4306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private resumePrepareDrm(Ljava/util/UUID;)Z
    .locals 3

    const-string v0, "MediaPlayer2Impl"

    .line 4260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumePrepareDrm: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 4266
    :try_start_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    .line 4268
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmUUID:Ljava/util/UUID;

    .line 4269
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MediaPlayer2Impl"

    .line 4273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HandleProvisioninig: Thread run _prepareDrm resume failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private scanInternalSubtitleTracks()V
    .locals 1

    .line 2269
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->setSubtitleAnchor()V

    .line 2271
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->populateInbandTracks()V

    .line 2273
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_0

    .line 2274
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {p0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    :cond_0
    return-void
.end method

.method private selectOrDeselectInbandTrack(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    .line 2685
    :goto_0
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2686
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2687
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method private selectOrDeselectTrack(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2633
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->populateInbandTracks()V

    .line 2637
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2643
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    if-nez v0, :cond_0

    .line 2646
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectInbandTrack(IZ)V

    return-void

    .line 2650
    :cond_0
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_3

    .line 2656
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {p1}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object p1

    if-ne p1, v0, :cond_2

    .line 2657
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    goto :goto_0

    :cond_2
    const-string p0, "MediaPlayer2Impl"

    const-string/jumbo p1, "trying to deselect track that was not selected"

    .line 2659
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 2665
    :cond_3
    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 2666
    invoke-virtual {p0, p2}, Landroid/media/MediaPlayer2Impl;->getSelectedTrack(I)I

    move-result p1

    .line 2667
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter p2

    if-ltz p1, :cond_4

    .line 2668
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_4

    .line 2669
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 2670
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 2672
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectInbandTrack(IZ)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2675
    :cond_4
    :goto_1
    monitor-exit p2

    goto :goto_3

    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2677
    :cond_5
    :goto_3
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    return-void

    :catch_0
    return-void
.end method

.method private static setAudioOutputDeviceById(Landroid/media/AudioTrack;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4038
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return v1

    :cond_1
    const/4 v2, 0x2

    .line 4044
    invoke-static {v2}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v2

    .line 4047
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 4048
    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 4049
    invoke-virtual {p0, v5}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private native setLooping(Z)V
.end method

.method private native setParameter(ILandroid/os/Parcel;)Z
.end method

.method private declared-synchronized setSubtitleAnchor()V
    .locals 3

    monitor-enter p0

    .line 2117
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2118
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SetSubtitleAnchorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2119
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2120
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2121
    new-instance v2, Landroid/media/MediaPlayer2Impl$24;

    invoke-direct {v2, p0, v0}, Landroid/media/MediaPlayer2Impl$24;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2140
    :try_start_1
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2142
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const-string v0, "MediaPlayer2Impl"

    const-string v1, "failed to join SetSubtitleAnchorThread"

    .line 2143
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2146
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 2116
    monitor-exit p0

    throw v0
.end method

.method private stayAwake(Z)V
    .locals 1

    .line 1286
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1287
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 1289
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1293
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mStayAwake:Z

    .line 1294
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    return-void
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .line 1298
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 1299
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mScreenOnWhilePlaying:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Landroid/media/MediaPlayer2Impl;->mStayAwake:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public native _prepare()V
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 3

    .line 1189
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    if-eqz p1, :cond_1

    .line 1190
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1191
    invoke-direct {p0, v1}, Landroid/media/MediaPlayer2Impl;->enableNativeRoutingCallbacksLocked(Z)V

    .line 1192
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    iget-object p2, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    :goto_0
    invoke-direct {v2, p0, p1, p2}, Landroid/media/NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRouting;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 1192
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1196
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

.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2213
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    .line 2214
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2215
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string v0, "MediaPlayer2Impl"

    const-string v1, "addSubtitleSource called with null InputStream"

    .line 2217
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    .line 2223
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SubtitleReadThread"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2225
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2226
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2227
    new-instance v2, Landroid/media/MediaPlayer2Impl$26;

    invoke-direct {v2, p0, p1, p2, v0}, Landroid/media/MediaPlayer2Impl$26;-><init>(Landroid/media/MediaPlayer2Impl;Ljava/io/InputStream;Landroid/media/MediaFormat;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public addTimedTextSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2357
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "file"

    .line 2358
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 2365
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "r"

    .line 2366
    invoke-virtual {p1, p2, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 2376
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_1
    return-void

    .line 2370
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Landroid/media/MediaPlayer2Impl;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 2376
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-object v0, p1

    goto :goto_1

    :catch_1
    move-object v0, p1

    goto :goto_2

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    throw p0

    :catch_2
    :goto_1
    if-eqz v0, :cond_5

    goto :goto_3

    :catch_3
    :goto_2
    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_5
    return-void

    .line 2359
    :cond_6
    :goto_4
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/media/MediaPlayer2Impl;->addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p6

    .line 2425
    invoke-static/range {p6 .. p6}, Landroid/media/MediaPlayer2Impl;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2431
    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2437
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v4, "mime"

    .line 2438
    invoke-virtual {v2, v4, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is-timed-text"

    const/4 v4, 0x1

    .line 2439
    invoke-virtual {v2, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2442
    iget-object v1, v0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-nez v1, :cond_0

    .line 2443
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->setSubtitleAnchor()V

    .line 2446
    :cond_0
    iget-object v1, v0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v1, v2}, Landroid/media/SubtitleController;->hasRendererFor(Landroid/media/MediaFormat;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2448
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 2449
    iget-object v4, v0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    new-instance v5, Landroid/media/SRTRenderer;

    iget-object v6, v0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-direct {v5, v1, v6}, Landroid/media/SRTRenderer;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v4, v5}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 2451
    :cond_1
    iget-object v1, v0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v1, v2}, Landroid/media/SubtitleController;->addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v8

    .line 2452
    iget-object v1, v0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 2453
    :try_start_1
    iget-object v2, v0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2454
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2456
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    .line 2460
    new-instance v9, Landroid/os/HandlerThread;

    const-string v1, "TimedTextReadThread"

    const/16 v2, 0x9

    invoke-direct {v9, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2463
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 2464
    new-instance v10, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2465
    new-instance v11, Landroid/media/MediaPlayer2Impl$27;

    move-object v1, v11

    move-object v2, p0

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v1 .. v9}, Landroid/media/MediaPlayer2Impl$27;-><init>(Landroid/media/MediaPlayer2Impl;Ljava/io/FileDescriptor;JJLandroid/media/SubtitleTrack;Landroid/os/HandlerThread;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 2454
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2433
    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaPlayer2Impl"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2434
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2426
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal mimeType for timed text source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 7

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 2401
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaPlayer2Impl;->addTimedTextSource(Ljava/io/FileDescriptor;JJLjava/lang/String;)V

    return-void
.end method

.method public addTimedTextSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2320
    invoke-static {p2}, Landroid/media/MediaPlayer2Impl;->availableMimeTypeForExternalSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2325
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2326
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2327
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2328
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 2329
    invoke-virtual {p0, v0, p2}, Landroid/media/MediaPlayer2Impl;->addTimedTextSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2330
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-void

    .line 2333
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2321
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Illegal mimeType for timed text source: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2322
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public attachAuxEffect(I)V
    .locals 3

    .line 1830
    new-instance v0, Landroid/media/MediaPlayer2Impl$22;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$22;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public clearDrmEventCallback()V
    .locals 1

    .line 3300
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3301
    :try_start_0
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 3302
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearMediaPlayer2EventCallback()V
    .locals 1

    .line 3229
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3230
    :try_start_0
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 3231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearPendingCommands()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->release()V

    .line 203
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deselectTrack(I)V
    .locals 3

    .line 2622
    new-instance v0, Landroid/media/MediaPlayer2Impl$29;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$29;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public easyPlaybackParams(FI)Landroid/media/PlaybackParams;
    .locals 1

    .line 1422
    new-instance p0, Landroid/media/PlaybackParams;

    invoke-direct {p0}, Landroid/media/PlaybackParams;-><init>()V

    .line 1423
    invoke-virtual {p0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_0

    .line 1436
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Audio playback mode "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1437
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1433
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 1429
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    const/4 p2, 0x2

    .line 1430
    invoke-virtual {p1, p2}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    goto :goto_0

    .line 1426
    :pswitch_2
    invoke-virtual {p0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2698
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2699
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2702
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->close()V

    .line 2703
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->native_finalize()V

    return-void
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    const/16 v0, 0x578

    .line 377
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->getParameter(I)Landroid/os/Parcel;

    move-result-object p0

    .line 378
    sget-object v0, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 379
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public native getAudioSessionId()I
.end method

.method public getBufferedPosition()J
    .locals 4

    .line 312
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getDuration()J

    move-result-wide v0

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mBufferedPercentageCurrent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public native getBufferingParams()Landroid/media/BufferingParams;
.end method

.method public getBufferingState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentDataSource()Landroid/media/DataSourceDesc;
    .locals 1

    .line 480
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSrcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 482
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public native getCurrentPosition()J
.end method

.method public getDrmInfo()Landroid/media/MediaPlayer2$DrmInfo;
    .locals 2

    .line 3317
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3318
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoResolved:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "MediaPlayer2Impl"

    const-string v1, "The Player has not been prepared yet"

    .line 3320
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "The Player has not been prepared yet"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3324
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    if-eqz v1, :cond_2

    .line 3325
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    invoke-static {p0}, Landroid/media/MediaPlayer2Impl$DrmInfoImpl;->access$5000(Landroid/media/MediaPlayer2Impl$DrmInfoImpl;)Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 3327
    :goto_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDrmKeyRequest([B[BLjava/lang/String;ILjava/util/Map;)Landroid/media/MediaDrm$KeyRequest;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaDrm$KeyRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    .line 3605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmKeyRequest:  keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " initData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mimeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " keyType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " optionalParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3610
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-eq p4, v1, :cond_0

    .line 3618
    :try_start_1
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    move-object v2, p1

    if-eqz p5, :cond_1

    .line 3623
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move-object v6, p1

    .line 3626
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p0

    const-string p1, "MediaPlayer2Impl"

    .line 3628
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getDrmKeyRequest:   --> request: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3630
    :try_start_2
    monitor-exit v0

    return-object p0

    :goto_2
    const-string p1, "MediaPlayer2Impl"

    .line 3637
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getDrmKeyRequest Exception "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    throw p0

    :catch_1
    const-string p0, "MediaPlayer2Impl"

    const-string p1, "getDrmKeyRequest NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    .line 3633
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getDrmKeyRequest: Unexpected provisioning error."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const-string p0, "MediaPlayer2Impl"

    const-string p1, "getDrmKeyRequest NoDrmSchemeException"

    .line 3611
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    new-instance p0, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string p1, "getDrmKeyRequest: Has to set a DRM scheme first."

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 3641
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getDrmPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    .line 3754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3759
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "MediaPlayer2Impl"

    const-string p1, "getDrmPropertyString NoDrmSchemeException"

    .line 3760
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    new-instance p0, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string p1, "getDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3766
    :cond_1
    :goto_0
    :try_start_1
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3771
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "MediaPlayer2Impl"

    .line 3773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "MediaPlayer2Impl"

    .line 3768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmPropertyString Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    throw p0

    :catchall_0
    move-exception p0

    .line 3771
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public native getDuration()J
.end method

.method public getMaxPlayerVolume()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getMediaPlayer2State()I
    .locals 0

    .line 1360
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->native_getMediaPlayer2State()I

    move-result p0

    return p0
.end method

.method public getMediaTimeProvider()Landroid/media/MediaTimeProvider;
    .locals 1

    .line 2761
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    if-nez v0, :cond_0

    .line 2762
    new-instance v0, Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-direct {v0, p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;-><init>(Landroid/media/MediaPlayer2Impl;)V

    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    .line 2764
    :cond_0
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    return-object p0
.end method

.method public getMetadata(ZZ)Landroid/media/Metadata;
    .locals 2

    .line 1624
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1625
    new-instance v1, Landroid/media/Metadata;

    invoke-direct {v1}, Landroid/media/Metadata;-><init>()V

    .line 1627
    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaPlayer2Impl;->native_getMetadata(ZZLandroid/os/Parcel;)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    .line 1628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    .line 1634
    :cond_0
    invoke-virtual {v1, v0}, Landroid/media/Metadata;->parse(Landroid/os/Parcel;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1635
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p1

    :cond_1
    return-object v1
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 0

    .line 1341
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public native getPlaybackParams()Landroid/media/PlaybackParams;
.end method

.method public getPlaybackSpeed()F
    .locals 0

    .line 528
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result p0

    return p0
.end method

.method public getPlayerState()I
    .locals 0

    .line 317
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getMediaPlayer2State()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x3

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlayerVolume()F
    .locals 0

    .line 571
    iget p0, p0, Landroid/media/MediaPlayer2Impl;->mVolume:F

    return p0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .line 1132
    monitor-enter p0

    .line 1133
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 4

    .line 1145
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->native_getRoutedDeviceId()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x2

    .line 1150
    invoke-static {v1}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 1151
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 1152
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, p0, :cond_1

    .line 1153
    aget-object p0, v1, v2

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSelectedTrack(I)I
    .locals 6

    .line 2530
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2533
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->getSelectedTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2535
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v2

    move v3, v1

    .line 2536
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2537
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2538
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v4, v0, :cond_1

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 2539
    monitor-exit v2

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2542
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2546
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x7

    .line 2549
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2551
    invoke-virtual {p0, v0, v2}, Landroid/media/MediaPlayer2Impl;->invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V

    .line 2552
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 2553
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2554
    :goto_2
    :try_start_2
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 2555
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2556
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_4

    .line 2557
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2564
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2560
    :cond_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, -0x1

    .line 2563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2564
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_1
    move-exception p0

    .line 2560
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    .line 2563
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2564
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public native getSyncParams()Landroid/media/SyncParams;
.end method

.method public getTimestamp()Landroid/media/MediaTimestamp;
    .locals 7

    .line 1596
    :try_start_0
    new-instance v6, Landroid/media/MediaTimestamp;

    .line 1597
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getCurrentPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v1, v0, v2

    .line 1598
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 1599
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaTimestamp;-><init>(JJF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTrackInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaPlayer2$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 2057
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->getInbandTrackInfoImpl()[Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    move-result-object v0

    .line 2059
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 2060
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    const/4 v3, 0x0

    .line 2061
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 2062
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2063
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 2065
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v4, v0, v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 2067
    :cond_0
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/media/SubtitleTrack;

    .line 2068
    new-instance v5, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;

    invoke-virtual {v4}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v6

    invoke-virtual {v4}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/media/MediaPlayer2Impl$TrackInfoImpl;-><init>(ILandroid/media/MediaFormat;)V

    aput-object v5, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2071
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    .line 2072
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public invoke(Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 1

    .line 656
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->native_invoke(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result p0

    const/4 p1, 0x0

    .line 657
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    if-nez p0, :cond_0

    return-void

    .line 659
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failure code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public native isLooping()Z
.end method

.method public native isPlaying()Z
.end method

.method public isReversePlaybackSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public loopCurrent(Z)V
    .locals 3

    .line 491
    new-instance v0, Landroid/media/MediaPlayer2Impl$9;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$9;-><init>(Landroid/media/MediaPlayer2Impl;IZZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 0

    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    return-object p0
.end method

.method public notifyAt(J)V
    .locals 0

    .line 1749
    invoke-direct {p0, p1, p2}, Landroid/media/MediaPlayer2Impl;->_notifyAt(J)V

    return-void
.end method

.method public notifyWhenCommandLabelReached(Ljava/lang/Object;)V
    .locals 3

    .line 665
    new-instance v0, Landroid/media/MediaPlayer2Impl$12;

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$12;-><init>(Landroid/media/MediaPlayer2Impl;IZLjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V
    .locals 4

    .line 2170
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    if-ltz v0, :cond_0

    .line 2172
    :try_start_0
    iget v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectInbandTrack(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, -0x1

    .line 2175
    iput v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    :cond_0
    const/4 v0, 0x0

    .line 2177
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer2Impl;->setOnSubtitleDataListener(Landroid/media/MediaPlayer2$OnSubtitleDataListener;)V

    if-nez p1, :cond_1

    return-void

    .line 2182
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v0

    .line 2183
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2184
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v3, p1, :cond_2

    .line 2186
    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    .line 2190
    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2192
    iget p1, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    if-ltz p1, :cond_4

    .line 2194
    :try_start_2
    iget p1, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/MediaPlayer2Impl;->selectOrDeselectInbandTrack(IZ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2197
    :catch_1
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer2Impl;->setOnSubtitleDataListener(Landroid/media/MediaPlayer2$OnSubtitleDataListener;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 2190
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public pause()V
    .locals 3

    .line 257
    new-instance v0, Landroid/media/MediaPlayer2Impl$3;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$3;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public play()V
    .locals 3

    .line 216
    new-instance v0, Landroid/media/MediaPlayer2Impl$1;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$1;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public prepare()V
    .locals 3

    .line 239
    new-instance v0, Landroid/media/MediaPlayer2Impl$2;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$2;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public prepareDrm(Ljava/util/UUID;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;,
            Landroid/media/ResourceBusyException;,
            Landroid/media/MediaPlayer2$ProvisioningNetworkErrorException;,
            Landroid/media/MediaPlayer2$ProvisioningServerErrorException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    .line 3374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareDrm: uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mOnDrmConfigHelper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3381
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmInfoImpl:Landroid/media/MediaPlayer2Impl$DrmInfoImpl;

    if-eqz v1, :cond_b

    .line 3388
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    if-nez v1, :cond_a

    .line 3395
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    if-nez v1, :cond_9

    .line 3402
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    if-nez v1, :cond_8

    .line 3409
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->cleanDrmObj()V

    const/4 v1, 0x1

    .line 3411
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v2, 0x0

    .line 3415
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->prepareDrm_createDrmStep(Ljava/util/UUID;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 3422
    :try_start_2
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmConfigAllowed:Z

    .line 3423
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 3427
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    if-eqz v0, :cond_0

    .line 3428
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mCurrentDSD:Landroid/media/DataSourceDesc;

    invoke-interface {v0, p0, v3}, Landroid/media/MediaPlayer2$OnDrmConfigHelper;->onDrmConfig(Landroid/media/MediaPlayer2;Landroid/media/DataSourceDesc;)V

    .line 3431
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3432
    :try_start_3
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmConfigAllowed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3436
    :try_start_4
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->prepareDrm_openSessionStep(Ljava/util/UUID;)V

    .line 3438
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmUUID:Ljava/util/UUID;

    .line 3439
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/media/NotProvisionedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3487
    :try_start_5
    iget-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    if-nez p1, :cond_3

    .line 3488
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception p1

    move v1, v2

    goto/16 :goto_4

    :catch_0
    move-exception p1

    :try_start_6
    const-string v0, "MediaPlayer2Impl"

    .line 3483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepareDrm: Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3485
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    :try_start_8
    const-string v0, "MediaPlayer2Impl"

    const-string/jumbo v4, "prepareDrm: NotProvisionedException"

    .line 3449
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->HandleProvisioninig(Ljava/util/UUID;)I

    move-result p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_1

    packed-switch p1, :pswitch_data_0

    :try_start_9
    const-string/jumbo p1, "prepareDrm: Post-provisioning preparation failed."

    goto :goto_0

    :pswitch_0
    const-string/jumbo p1, "prepareDrm: Provisioning was required but the request was denied by the server."

    const-string v0, "MediaPlayer2Impl"

    .line 3470
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    new-instance v0, Landroid/media/MediaPlayer2Impl$ProvisioningServerErrorExceptionImpl;

    invoke-direct {v0, p1}, Landroid/media/MediaPlayer2Impl$ProvisioningServerErrorExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string/jumbo p1, "prepareDrm: Provisioning was required but failed due to a network error."

    const-string v0, "MediaPlayer2Impl"

    .line 3464
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3465
    new-instance v0, Landroid/media/MediaPlayer2Impl$ProvisioningNetworkErrorExceptionImpl;

    invoke-direct {v0, p1}, Landroid/media/MediaPlayer2Impl$ProvisioningNetworkErrorExceptionImpl;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    const-string v0, "MediaPlayer2Impl"

    .line 3476
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 3487
    :cond_1
    :try_start_a
    iget-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    if-nez p1, :cond_2

    .line 3488
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    :cond_2
    move v1, v2

    .line 3494
    :cond_3
    :goto_1
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v1, :cond_5

    .line 3499
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3500
    :try_start_b
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 3501
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/media/-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0;

    invoke-direct {v3, p0, v1}, Landroid/media/-$$Lambda$MediaPlayer2Impl$1jR0wmXW_cOZenZs6Xt6lhAUeQ0;-><init>(Landroid/media/MediaPlayer2Impl;Landroid/util/Pair;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 3504
    :cond_4
    monitor-exit p1

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p0

    :cond_5
    :goto_3
    return-void

    :catch_2
    :try_start_c
    const-string p1, "MediaPlayer2Impl"

    const-string/jumbo v0, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    .line 3445
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 3447
    :try_start_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "prepareDrm(): Wrong usage: The player must be in the prepared state to call prepareDrm()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception p1

    .line 3487
    :goto_4
    :try_start_e
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmProvisioningInProgress:Z

    if-nez v0, :cond_6

    .line 3488
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    :cond_6
    if-eqz v1, :cond_7

    .line 3491
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->cleanDrmObj()V

    :cond_7
    throw p1

    :catchall_3
    move-exception p0

    .line 3494
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw p0

    :catch_3
    move-exception p1

    :try_start_f
    const-string v1, "MediaPlayer2Impl"

    const-string/jumbo v3, "prepareDrm(): Exception "

    .line 3417
    invoke-static {v1, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3418
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl;->mPrepareDrmInProgress:Z

    .line 3419
    throw p1

    :cond_8
    const-string p0, "MediaPlayer2Impl"

    const-string/jumbo p1, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    .line 3404
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "prepareDrm(): Unexpectd: Provisioning is already in progress."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    const-string p0, "MediaPlayer2Impl"

    const-string/jumbo p1, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    .line 3398
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "prepareDrm(): Wrong usage: There is already a pending prepareDrm call."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3389
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "prepareDrm(): Wrong usage: There is already an active DRM scheme with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmUUID:Ljava/util/UUID;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaPlayer2Impl"

    .line 3391
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    const-string p0, "MediaPlayer2Impl"

    const-string/jumbo p1, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    .line 3384
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "prepareDrm(): Wrong usage: The player must be prepared and DRM info be retrieved before this call."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4
    move-exception p0

    .line 3423
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public provideDrmKeyResponse([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    .line 3668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provideDrmKeyResponse: keySetId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3670
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3672
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    .line 3680
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmSessionId:[B

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    move-object v1, p1

    .line 3683
    :goto_0
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {p0, v1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p0

    const-string v1, "MediaPlayer2Impl"

    .line 3685
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provideDrmKeyResponse: keySetId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " response: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3689
    :try_start_2
    monitor-exit v0

    return-object p0

    :goto_1
    const-string p1, "MediaPlayer2Impl"

    .line 3697
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provideDrmKeyResponse Exception "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    throw p0

    :catch_1
    const-string p0, "MediaPlayer2Impl"

    const-string/jumbo p1, "provideDrmKeyResponse NotProvisionedException: Unexpected. Shouldn\'t have reached here."

    .line 3692
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "provideDrmKeyResponse: Unexpected provisioning error."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "MediaPlayer2Impl"

    const-string p1, "getDrmKeyRequest NoDrmSchemeException"

    .line 3673
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    new-instance p0, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string p1, "getDrmKeyRequest: Has to set a DRM scheme first."

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 3700
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlayerBase$PlayerEventCallback;)V
    .locals 0

    return-void
.end method

.method public releaseDrm()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    .line 3525
    new-instance v0, Landroid/media/MediaPlayer2Impl$32;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$32;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2

    .line 1207
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1208
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1210
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->enableNativeRoutingCallbacksLocked(Z)V

    .line 1212
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

.method public reset()V
    .locals 3

    const/4 v0, -0x1

    .line 1697
    iput v0, p0, Landroid/media/MediaPlayer2Impl;->mSelectedSubtitleTrackIndex:I

    .line 1698
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    monitor-enter v0

    .line 1699
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1701
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    .line 1705
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mOpenSubtitleSources:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1706
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1707
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    if-eqz v0, :cond_1

    .line 1708
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {v0}, Landroid/media/SubtitleController;->reset()V

    .line 1710
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1711
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    invoke-virtual {v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->close()V

    .line 1712
    iput-object v1, p0, Landroid/media/MediaPlayer2Impl;->mTimeProvider:Landroid/media/MediaPlayer2Impl$TimeProvider;

    .line 1715
    :cond_2
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1716
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1717
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1718
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1719
    :try_start_4
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1720
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    .line 1722
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->stayAwake(Z)V

    .line 1723
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_reset()V

    .line 1725
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    if-eqz v0, :cond_3

    .line 1726
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventHandler:Landroid/media/MediaPlayer2Impl$EventHandler;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer2Impl$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1729
    :cond_3
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    monitor-enter v1

    .line 1730
    :try_start_5
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mIndexTrackPairs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1731
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mInbandTrackIndices:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 1732
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1734
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->resetDrmState()V

    return-void

    :catchall_0
    move-exception p0

    .line 1732
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 1720
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 1717
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 1706
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0
.end method

.method public restoreDrmKeys([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    .line 3714
    new-instance v0, Landroid/media/MediaPlayer2Impl$33;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$33;-><init>(Landroid/media/MediaPlayer2Impl;IZ[B)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public seekTo(JI)V
    .locals 8

    .line 1547
    new-instance v7, Landroid/media/MediaPlayer2Impl$20;

    const/16 v2, 0xe

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaPlayer2Impl$20;-><init>(Landroid/media/MediaPlayer2Impl;IZIJ)V

    invoke-direct {p0, v7}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 3

    .line 2598
    new-instance v0, Landroid/media/MediaPlayer2Impl$28;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$28;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 3

    .line 360
    new-instance v0, Landroid/media/MediaPlayer2Impl$5;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$5;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/AudioAttributes;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 3

    .line 1795
    new-instance v0, Landroid/media/MediaPlayer2Impl$21;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$21;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 3

    .line 1854
    new-instance v0, Landroid/media/MediaPlayer2Impl$23;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$23;-><init>(Landroid/media/MediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setBufferingParams(Landroid/media/BufferingParams;)V
    .locals 3

    .line 1395
    new-instance v0, Landroid/media/MediaPlayer2Impl$17;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$17;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/BufferingParams;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setDataSource(Landroid/media/DataSourceDesc;)V
    .locals 3

    .line 392
    new-instance v0, Landroid/media/MediaPlayer2Impl$6;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$6;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/DataSourceDesc;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 695
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz p1, :cond_0

    .line 698
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 702
    :goto_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl;->_setVideoSurface(Landroid/view/Surface;)V

    .line 703
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    return-void
.end method

.method public setDrmEventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$DrmEventCallback;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 3290
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3291
    :try_start_0
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmEventCallbackRecords:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3292
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3287
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null Executor for the MediaPlayer2EventCallback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3284
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null MediaPlayer2EventCallback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDrmPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaPlayer2$NoDrmSchemeException;
        }
    .end annotation

    const-string v0, "MediaPlayer2Impl"

    .line 3794
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDrmPropertyString: propertyName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3798
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mActiveDrmScheme:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl;->mDrmConfigAllowed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "MediaPlayer2Impl"

    const-string/jumbo p1, "setDrmPropertyString NoDrmSchemeException"

    .line 3799
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    new-instance p0, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;

    const-string/jumbo p1, "setDrmPropertyString: Has to prepareDrm() first."

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$NoDrmSchemeExceptionImpl;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3805
    :cond_1
    :goto_0
    :try_start_1
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mDrmObj:Landroid/media/MediaDrm;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3810
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "MediaPlayer2Impl"

    .line 3807
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDrmPropertyString Exception "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    throw p0

    :catchall_0
    move-exception p0

    .line 3810
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public setMediaPlayer2EventCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaPlayer2$MediaPlayer2EventCallback;)V
    .locals 2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 3219
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mEventCbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3220
    :try_start_0
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mEventCallbackRecords:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3221
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 3216
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null Executor for the MediaPlayer2EventCallback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3213
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal null MediaPlayer2EventCallback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMetadataFilter(Ljava/util/Set;Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1667
    invoke-virtual {p0}, Landroid/media/MediaPlayer2Impl;->newRequest()Landroid/os/Parcel;

    move-result-object v0

    .line 1673
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 1675
    invoke-virtual {v0}, Landroid/os/Parcel;->dataCapacity()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 1676
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 1679
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1681
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1683
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1684
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1685
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1687
    :cond_2
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->native_setMetadataFilter(Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method

.method public setNextDataSource(Landroid/media/DataSourceDesc;)V
    .locals 3

    .line 419
    new-instance v0, Landroid/media/MediaPlayer2Impl$7;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$7;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/DataSourceDesc;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setNextDataSources(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/DataSourceDesc;",
            ">;)V"
        }
    .end annotation

    .line 449
    new-instance v0, Landroid/media/MediaPlayer2Impl$8;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$8;-><init>(Landroid/media/MediaPlayer2Impl;IZLjava/util/List;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setOnDrmConfigHelper(Landroid/media/MediaPlayer2$OnDrmConfigHelper;)V
    .locals 1

    .line 3262
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mDrmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3263
    :try_start_0
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mOnDrmConfigHelper:Landroid/media/MediaPlayer2$OnDrmConfigHelper;

    .line 3264
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setOnSubtitleDataListener(Landroid/media/MediaPlayer2$OnSubtitleDataListener;)V
    .locals 0

    .line 3243
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mOnSubtitleDataListener:Landroid/media/MediaPlayer2$OnSubtitleDataListener;

    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3

    .line 1459
    new-instance v0, Landroid/media/MediaPlayer2Impl$18;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$18;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/PlaybackParams;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 3

    .line 513
    new-instance v0, Landroid/media/MediaPlayer2Impl$10;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$10;-><init>(Landroid/media/MediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setPlayerVolume(F)V
    .locals 3

    .line 553
    new-instance v0, Landroid/media/MediaPlayer2Impl$11;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$11;-><init>(Landroid/media/MediaPlayer2Impl;IZF)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1113
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1116
    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 1117
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->native_setOutputDevice(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1119
    monitor-enter p0

    .line 1120
    :try_start_0
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1121
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

.method public setScreenOnWhilePlaying(Z)V
    .locals 2

    .line 1276
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 1277
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const-string v0, "MediaPlayer2Impl"

    const-string/jumbo v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    .line 1278
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl;->mScreenOnWhilePlaying:Z

    .line 1281
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->updateSurfaceScreenOn()V

    :cond_1
    return-void
.end method

.method public setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V
    .locals 0

    .line 2107
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    .line 2108
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mSubtitleController:Landroid/media/SubtitleController;

    invoke-virtual {p0, p2}, Landroid/media/SubtitleController;->setAnchor(Landroid/media/SubtitleController$Anchor;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    .line 728
    new-instance v0, Landroid/media/MediaPlayer2Impl$13;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$13;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/view/Surface;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setSyncParams(Landroid/media/SyncParams;)V
    .locals 3

    .line 1492
    new-instance v0, Landroid/media/MediaPlayer2Impl$19;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$19;-><init>(Landroid/media/MediaPlayer2Impl;IZLandroid/media/SyncParams;)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 3

    .line 762
    new-instance v0, Landroid/media/MediaPlayer2Impl$14;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Landroid/media/MediaPlayer2Impl$14;-><init>(Landroid/media/MediaPlayer2Impl;IZI)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "audio.offload.ignore_setawake"

    const/4 v1, 0x0

    .line 1242
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string p0, "MediaPlayer2Impl"

    .line 1243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IGNORING setWakeMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1247
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 1248
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1250
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v0, 0x0

    .line 1252
    iput-object v0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    const-string/jumbo v0, "power"

    .line 1255
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/high16 v0, 0x20000000

    or-int/2addr p2, v0

    .line 1256
    const-class v0, Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1257
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v2, :cond_3

    .line 1259
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    return-void
.end method

.method public skipToNext()V
    .locals 3

    .line 275
    new-instance v0, Landroid/media/MediaPlayer2Impl$4;

    const/16 v1, 0x1d

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaPlayer2Impl$4;-><init>(Landroid/media/MediaPlayer2Impl;IZ)V

    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->addTask(Landroid/media/MediaPlayer2Impl$Task;)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1092
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl;->stayAwake(Z)V

    .line 1093
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl;->_stop()V

    return-void
.end method

.method public unregisterPlayerEventCallback(Landroid/media/MediaPlayerBase$PlayerEventCallback;)V
    .locals 0

    return-void
.end method
