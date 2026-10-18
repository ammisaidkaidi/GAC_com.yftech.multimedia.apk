.class public Lcom/android/internal/os/BinderCallsStats;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallsStats$UidEntry;,
        Lcom/android/internal/os/BinderCallsStats$CallSession;,
        Lcom/android/internal/os/BinderCallsStats$CallStat;
    }
.end annotation


# static fields
.field private static final CALL_SESSIONS_POOL_SIZE:I = 0x64

.field private static final sInstance:Lcom/android/internal/os/BinderCallsStats;


# instance fields
.field private final mCallSessionsPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BinderCallsStats$CallSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDetailedTracking:Z

.field private final mLock:Ljava/lang/Object;

.field private mStartTime:J

.field private final mUidEntries:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/android/internal/os/BinderCallsStats;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderCallsStats;->sInstance:Lcom/android/internal/os/BinderCallsStats;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mStartTime:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mStartTime:J

    .line 57
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    return-void
.end method

.method private callStarted(Ljava/lang/String;I)Lcom/android/internal/os/BinderCallsStats$CallSession;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$CallSession;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/internal/os/BinderCallsStats$CallSession;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats$CallSession;-><init>()V

    .line 69
    :cond_0
    iget-object v1, v0, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    iput-object p1, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->className:Ljava/lang/String;

    .line 70
    iget-object p1, v0, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    iput p2, p1, Lcom/android/internal/os/BinderCallsStats$CallStat;->msg:I

    .line 72
    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide p0

    iput-wide p0, v0, Lcom/android/internal/os/BinderCallsStats$CallSession;->mStarted:J

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/os/BinderCallsStats;
    .locals 1

    .line 194
    sget-object v0, Lcom/android/internal/os/BinderCallsStats;->sInstance:Lcom/android/internal/os/BinderCallsStats;

    return-object v0
.end method

.method private getThreadTimeMicro()J
    .locals 2

    .line 190
    iget-boolean p0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method static synthetic lambda$dump$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;Lcom/android/internal/os/BinderCallsStats$UidEntry;)I
    .locals 4

    .line 135
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 137
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    iget-wide p0, p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$dump$1(Lcom/android/internal/os/BinderCallsStats$CallStat;Lcom/android/internal/os/BinderCallsStats$CallStat;)I
    .locals 4

    .line 146
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 148
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    iget-wide p0, p1, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$dump$2(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 163
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$dump$3(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    .line 178
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public callEnded(Lcom/android/internal/os/BinderCallsStats$CallSession;)V
    .locals 9

    .line 77
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mStarted:J

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 79
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallingUId:I

    .line 81
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallingUId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    if-nez v5, :cond_1

    .line 84
    new-instance v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget v6, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallingUId:I

    invoke-direct {v5, v6}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    .line 85
    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    iget v7, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallingUId:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v6, :cond_3

    .line 90
    iget-object v6, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Ljava/util/Map;

    iget-object v7, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$CallStat;

    if-nez v6, :cond_2

    .line 93
    new-instance v6, Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget-object v7, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget-object v7, v7, Lcom/android/internal/os/BinderCallsStats$CallStat;->className:Ljava/lang/String;

    iget-object v8, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget v8, v8, Lcom/android/internal/os/BinderCallsStats$CallStat;->msg:I

    invoke-direct {v6, v7, v8}, Lcom/android/internal/os/BinderCallsStats$CallStat;-><init>(Ljava/lang/String;I)V

    .line 94
    iget-object v7, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Ljava/util/Map;

    invoke-interface {v7, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_2
    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v7, v1

    iput-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    .line 97
    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    add-long/2addr v7, v3

    iput-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    .line 100
    :cond_3
    iget-wide v6, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    add-long/2addr v6, v3

    iput-wide v6, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    .line 101
    iget-wide v3, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v3, v1

    iput-wide v3, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_4

    .line 104
    iget-object p0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public callStarted(Landroid/os/Binder;I)Lcom/android/internal/os/BinderCallsStats$CallSession;
    .locals 0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/BinderCallsStats;->callStarted(Ljava/lang/String;I)Lcom/android/internal/os/BinderCallsStats$CallSession;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 110
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "Start time: "

    .line 113
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    .line 114
    iget-wide v5, v0, Lcom/android/internal/os/BinderCallsStats;->mStartTime:J

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 115
    iget-object v4, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 116
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 117
    iget-object v6, v0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v6

    const-wide/16 v7, 0x0

    move-wide v10, v7

    move-wide v12, v10

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    .line 119
    :try_start_0
    iget-object v8, v0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 120
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-wide v14, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    add-long/2addr v10, v14

    .line 123
    iget v14, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 124
    iget v15, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    if-nez v14, :cond_0

    move-wide/from16 v16, v10

    .line 125
    iget-wide v9, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    move/from16 v18, v4

    move-object/from16 v19, v5

    goto :goto_1

    :cond_0
    move-wide/from16 v16, v10

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move/from16 v18, v4

    move-object/from16 v19, v5

    iget-wide v4, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    add-long/2addr v9, v4

    :goto_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 124
    invoke-interface {v2, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v4, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 127
    iget v5, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-nez v4, :cond_1

    iget-wide v9, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    goto :goto_2

    .line 128
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v14, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v9, v14

    .line 127
    :goto_2
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-wide v4, v8, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v12, v4

    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v10, v16

    move/from16 v4, v18

    move-object/from16 v5, v19

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_2
    move-object/from16 v19, v5

    .line 131
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-boolean v0, v0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_6

    const-string v0, "Raw data (uid,call_desc,time):"

    .line 133
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;

    move-object/from16 v9, v19

    invoke-interface {v9, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    .line 144
    new-instance v15, Ljava/util/ArrayList;

    iget-object v7, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    sget-object v7, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;

    invoke-interface {v15, v7}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 153
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BinderCallsStats$CallStat;

    const/4 v6, 0x0

    .line 154
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "    "

    .line 155
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    .line 156
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v4, v15, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 160
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Per UID Summary(UID: time, % of total_time, calls_count):"

    .line 161
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 163
    sget-object v2, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$BeSOWJ8AoyB7S9CtX-6IPAXHyNQ;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$BeSOWJ8AoyB7S9CtX-6IPAXHyNQ;

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 164
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const-string v5, "  %7d: %11d %3.0f%% %8d"

    const/4 v6, 0x4

    .line 166
    new-array v6, v6, [Ljava/lang/Object;

    .line 167
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v6, v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v8

    .line 168
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    long-to-double v8, v10

    div-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v6, v7

    const/4 v2, 0x3

    aput-object v4, v6, v2

    .line 166
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x3

    .line 170
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  Summary: total_time=%d, calls_count=%d, avg_call_time=%.0f"

    .line 171
    new-array v2, v2, [Ljava/lang/Object;

    .line 173
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    long-to-double v3, v10

    long-to-double v5, v12

    div-double/2addr v3, v5

    .line 174
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 171
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string v0, "Per UID Summary(UID: calls_count, % of total calls_count):"

    .line 176
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    sget-object v2, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$jhdszMKzG9FSuIQ4Vz9B0exXKPk;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$jhdszMKzG9FSuIQ4Vz9B0exXKPk;

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 179
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    const-string v5, "    %7d: %8d %3.0f%%"

    const/4 v6, 0x3

    .line 181
    new-array v7, v6, [Ljava/lang/Object;

    .line 182
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    long-to-double v12, v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    long-to-double v8, v10

    div-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v7, v4

    .line 181
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    :goto_6
    return-void

    .line 131
    :goto_7
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartTime:J

    .line 208
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDetailedTracking(Z)V
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eq p1, v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 200
    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    :cond_0
    return-void
.end method
