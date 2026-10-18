.class Landroid/media/MediaPlayer2Impl$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer2Impl.java"

# interfaces
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final NOTIFY:I = 0x1

.field private static final NOTIFY_SEEK:I = 0x3

.field private static final NOTIFY_STOP:I = 0x2

.field private static final NOTIFY_TIME:I = 0x0

.field private static final NOTIFY_TRACK_DATA:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MTP"

.field private static final TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public DEBUG:Z

.field private mBuffering:Z

.field private mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastReportedTime:J

.field private mLastTimeUs:J

.field private mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private mPaused:Z

.field private mPausing:Z

.field private mPlayer:Landroid/media/MediaPlayer2Impl;

.field private mRefresh:Z

.field private mSeeking:Z

.field private mStopped:Z

.field private mTimes:[J


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer2Impl;)V
    .locals 5

    .line 4376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 4352
    iput-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    const/4 v2, 0x1

    .line 4354
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    .line 4355
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    const/4 v3, 0x0

    .line 4363
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mRefresh:Z

    .line 4364
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    .line 4365
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4374
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    .line 4377
    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPlayer:Landroid/media/MediaPlayer2Impl;

    .line 4379
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4382
    :catch_0
    iput-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mRefresh:Z

    .line 4386
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4387
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4389
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "MediaPlayer2MTPEventThread"

    const/4 v4, -0x2

    invoke-direct {p1, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4391
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 4392
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 4394
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    invoke-direct {v2, p0, p1}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer2Impl$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    .line 4396
    new-array p1, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4397
    new-array p1, v3, [J

    iput-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    .line 4398
    iput-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    return-void
.end method

.method static synthetic access$3600(Landroid/media/MediaPlayer2Impl$TimeProvider;)Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;
    .locals 0

    .line 4347
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    return-object p0
.end method

.method static synthetic access$7000(Landroid/media/MediaPlayer2Impl$TimeProvider;Z)V
    .locals 0

    .line 4347
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method static synthetic access$7100(Landroid/media/MediaPlayer2Impl$TimeProvider;)V
    .locals 0

    .line 4347
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifyStop()V

    return-void
.end method

.method static synthetic access$7200(Landroid/media/MediaPlayer2Impl$TimeProvider;)V
    .locals 0

    .line 4347
    invoke-direct {p0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifySeek()V

    return-void
.end method

.method static synthetic access$7300(Landroid/media/MediaPlayer2Impl$TimeProvider;Landroid/util/Pair;)V
    .locals 0

    .line 4347
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifyTrackData(Landroid/util/Pair;)V

    return-void
.end method

.method private declared-synchronized notifySeek()V
    .locals 8

    monitor-enter p0

    const/4 v0, 0x0

    .line 4496
    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 4498
    :try_start_1
    invoke-virtual {p0, v1, v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v2

    .line 4499
    iget-boolean v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSeekComplete at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    :cond_0
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    if-nez v7, :cond_1

    goto :goto_1

    .line 4505
    :cond_1
    invoke-interface {v7, v2, v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 4509
    :catch_0
    :try_start_2
    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "MTP"

    const-string/jumbo v3, "onSeekComplete but no player"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4510
    :cond_2
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    .line 4511
    invoke-direct {p0, v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4513
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 4495
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyStop()V
    .locals 4

    monitor-enter p0

    .line 4522
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 4526
    :cond_0
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4528
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 4521
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyTimedEvent(Z)V
    .locals 13

    monitor-enter p0

    const/4 v0, 0x1

    .line 4603
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 4606
    :catch_0
    :try_start_1
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mRefresh:Z

    .line 4607
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    .line 4608
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaPlayer2Impl$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v1

    .line 4612
    :goto_0
    iget-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 4614
    monitor-exit p0

    return-void

    .line 4617
    :cond_0
    :try_start_2
    iget-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    .line 4618
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyTimedEvent("

    .line 4619
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4620
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") from {"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4622
    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v7, v6

    move v9, v0

    move v8, v5

    :goto_1
    if-ge v8, v7, :cond_3

    aget-wide v10, v6, v8

    cmp-long v12, v10, v3

    if-nez v12, :cond_1

    goto :goto_2

    :cond_1
    if-nez v9, :cond_2

    const-string v9, ", "

    .line 4626
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4627
    :cond_2
    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v9, v5

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "}"

    .line 4630
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "MTP"

    .line 4631
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4634
    :cond_4
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    move-wide v6, v1

    .line 4636
    :goto_3
    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v8, v8

    if-ge v5, v8, :cond_b

    .line 4637
    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v8, v8, v5

    if-nez v8, :cond_5

    goto :goto_5

    .line 4640
    :cond_5
    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aget-wide v9, v8, v5

    cmp-long v8, v9, v3

    if-gtz v8, :cond_6

    goto :goto_4

    .line 4642
    :cond_6
    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aget-wide v9, v8, v5

    const-wide/16 v11, 0x3e8

    add-long/2addr v11, v1

    cmp-long v8, v9, v11

    if-gtz v8, :cond_8

    .line 4643
    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v8, v8, v5

    invoke-virtual {p1, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 4644
    iget-boolean v8, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "MTP"

    const-string/jumbo v9, "removed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4645
    :cond_7
    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aput-wide v3, v8, v5

    goto :goto_4

    :cond_8
    cmp-long v8, v6, v1

    if-eqz v8, :cond_9

    .line 4646
    iget-object v8, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aget-wide v9, v8, v5

    cmp-long v8, v9, v6

    if-gez v8, :cond_a

    .line 4647
    :cond_9
    iget-object v6, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    aget-wide v7, v6, v5

    move-wide v6, v7

    :cond_a
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    :goto_5
    cmp-long v3, v6, v1

    if-lez v3, :cond_d

    .line 4651
    iget-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    if-nez v3, :cond_d

    .line 4653
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "MTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduling for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    :cond_c
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaPlayer2Impl;->notifyAt(J)V

    goto :goto_6

    .line 4656
    :cond_d
    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    invoke-virtual {v3, v0}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->removeMessages(I)V

    .line 4660
    :goto_6
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4661
    invoke-interface {v0, v1, v2}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 4663
    :cond_e
    monitor-exit p0

    return-void

    .line 4602
    :goto_8
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized notifyTrackData(Landroid/util/Pair;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/media/SubtitleTrack;",
            "[B>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 4516
    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack;

    .line 4517
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [B

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    .line 4518
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/media/SubtitleTrack;->onData([BZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4519
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 4515
    monitor-exit p0

    throw p1
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 4532
    :goto_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4533
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-eq v2, p1, :cond_1

    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4539
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 4540
    new-array v3, v2, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4542
    new-array v2, v2, [J

    .line 4543
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v5, v5

    invoke-static {v4, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4544
    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    iget-object v5, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v5, v5

    invoke-static {v4, v0, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4545
    iput-object v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 4546
    iput-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    .line 4549
    :cond_2
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    .line 4550
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v0, v1

    .line 4551
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    const-wide/16 v2, -0x1

    aput-wide v2, p0, v1

    :cond_3
    return v1
.end method

.method private scheduleNotification(IJ)V
    .locals 3

    .line 4403
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 4407
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleNotification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    :cond_1
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->removeMessages(I)V

    .line 4409
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 4410
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    long-to-int p2, p2

    int-to-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 5

    .line 4579
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 4581
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 4582
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 4583
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4585
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    iget-object v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v4, v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4587
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 4588
    iget-object p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, -0x1

    aput-wide v2, p1, v1

    goto :goto_1

    .line 4590
    :cond_0
    iget-object v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const-wide/16 v1, 0x0

    .line 4595
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4596
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 2

    .line 4415
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mEventHandler:Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider$EventHandler;->removeMessages(I)V

    .line 4416
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 4417
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 4418
    iput-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 4424
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 4425
    iget-object p0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public getCurrentTimeUs(ZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 4667
    monitor-enter p0

    .line 4670
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4671
    iget-wide p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p1

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 4675
    :try_start_1
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v1}, Landroid/media/MediaPlayer2Impl;->getCurrentPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iput-wide v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    .line 4676
    iget-object v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPlayer:Landroid/media/MediaPlayer2Impl;

    invoke-virtual {v1}, Landroid/media/MediaPlayer2Impl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mBuffering:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p1

    :goto_1
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    .line 4677
    iget-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "paused"

    goto :goto_2

    :cond_3
    const-string/jumbo v3, "playing"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz p2, :cond_5

    .line 4692
    :try_start_2
    iget-wide v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    cmp-long p2, v1, v3

    if-gez p2, :cond_5

    .line 4694
    iget-wide v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    iget-wide v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    cmp-long p2, v1, v3

    if-lez p2, :cond_6

    .line 4697
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    .line 4698
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    const/4 p1, 0x3

    const-wide/16 v0, 0x0

    .line 4699
    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_3

    .line 4702
    :cond_5
    iget-wide p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    iput-wide p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    .line 4705
    :cond_6
    :goto_3
    iget-wide p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide p1

    :catch_0
    move-exception v1

    .line 4679
    iget-boolean v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    if-eqz v2, :cond_a

    .line 4681
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    if-eqz p2, :cond_7

    .line 4682
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    iget-wide v2, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    cmp-long p2, v0, v2

    if-gez p2, :cond_8

    .line 4683
    :cond_7
    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastTimeUs:J

    iput-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    .line 4685
    :cond_8
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    .line 4686
    iget-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz p1, :cond_9

    const-string p1, "MTP"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal state, but pausing: estimating at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    :cond_9
    iget-wide p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    return-wide p1

    .line 4690
    :cond_a
    throw v1

    :catchall_0
    move-exception p1

    .line 4706
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3

    .line 4558
    monitor-enter p0

    .line 4559
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result p3

    aput-wide p1, v0, p3

    const/4 p1, 0x0

    const-wide/16 p2, 0x0

    .line 4561
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4562
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBuffering(Z)V
    .locals 3

    .line 4455
    monitor-enter p0

    .line 4456
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBuffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4457
    :cond_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mBuffering:Z

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    .line 4458
    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4459
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onNewPlayer()V
    .locals 3

    .line 4485
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_0

    .line 4486
    monitor-enter p0

    const/4 v0, 0x0

    .line 4487
    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    const/4 v1, 0x1

    .line 4488
    iput-boolean v1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4489
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mBuffering:Z

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    .line 4490
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4491
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public onNotifyTime()V
    .locals 3

    .line 4431
    monitor-enter p0

    .line 4432
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "onNotifyTime: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 4433
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4434
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPaused(Z)V
    .locals 4

    .line 4439
    monitor-enter p0

    .line 4440
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4442
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    const/4 p1, 0x1

    .line 4443
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    const/4 p1, 0x3

    .line 4444
    invoke-direct {p0, p1, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_0

    .line 4446
    :cond_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPausing:Z

    .line 4447
    iput-boolean v3, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4448
    invoke-direct {p0, v3, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4450
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer2Impl;)V
    .locals 2

    .line 4476
    monitor-enter p0

    const/4 p1, 0x0

    .line 4477
    :try_start_0
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    const/4 p1, 0x1

    .line 4478
    iput-boolean p1, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    const/4 p1, 0x3

    const-wide/16 v0, 0x0

    .line 4479
    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4480
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onStopped()V
    .locals 3

    .line 4464
    monitor-enter p0

    .line 4465
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 4466
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mPaused:Z

    .line 4467
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    const/4 v0, 0x0

    .line 4468
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mSeeking:Z

    .line 4469
    iput-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mBuffering:Z

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    .line 4470
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4471
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3

    .line 4566
    monitor-enter p0

    .line 4567
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "scheduleUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer2Impl$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result p1

    .line 4570
    iget-boolean v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mStopped:Z

    if-nez v0, :cond_1

    .line 4571
    iget-object v0, p0, Landroid/media/MediaPlayer2Impl$TimeProvider;->mTimes:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    const/4 p1, 0x0

    .line 4572
    invoke-direct {p0, p1, v1, v2}, Landroid/media/MediaPlayer2Impl$TimeProvider;->scheduleNotification(IJ)V

    .line 4574
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
