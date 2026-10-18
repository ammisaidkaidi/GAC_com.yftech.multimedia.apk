.class public Lcom/android/internal/util/StatLogger;
.super Ljava/lang/Object;
.source "StatLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatLogger"


# instance fields
.field private final SIZE:I

.field private final mCallsPerSecond:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mCountStats:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDurationPerSecond:[J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDurationStats:[J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLabels:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxCallsPerSecond:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mMaxDurationPerSecond:[J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mMaxDurationStats:[J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mNextTickTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    .line 69
    array-length v0, p1

    iput v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    .line 70
    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    .line 71
    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    .line 72
    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    .line 73
    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    .line 74
    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    .line 75
    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    .line 76
    iget v0, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    .line 77
    iput-object p1, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 13

    .line 136
    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "Stats:"

    .line 137
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    .line 139
    :goto_0
    iget v3, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    if-ge v2, v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v3, v3, v2

    .line 141
    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v5, v4, v2

    long-to-double v4, v5

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    const-string v8, "%s: count=%d, total=%.1fms, avg=%.3fms, max calls/s=%d max dur/s=%.1fms max time=%.1fms"

    const/4 v9, 0x7

    .line 143
    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v10, v10, v2

    aput-object v10, v9, v1

    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_0
    int-to-double v11, v3

    div-double v3, v4, v11

    .line 147
    :goto_1
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v4, v4, v2

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v10, v4, v2

    long-to-double v4, v10

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide v10, v4, v2

    long-to-double v4, v10

    div-double/2addr v4, v6

    .line 149
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v9, v3

    .line 143
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 132
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 9

    .line 156
    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const/4 v1, 0x0

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-wide v2, 0x20b00000001L

    .line 160
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10500000001L

    .line 162
    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10900000002L

    .line 163
    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v4, 0x10500000003L

    .line 164
    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget v6, v6, v1

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10300000004L

    .line 165
    iget-object v6, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v7, v6, v1

    invoke-virtual {p1, v4, v5, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 167
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 171
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTime()J
    .locals 4

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public logDurationStat(IJ)J
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/android/internal/util/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    sub-long/2addr v1, p2

    if-ltz p1, :cond_4

    .line 97
    iget p2, p0, Lcom/android/internal/util/StatLogger;->SIZE:I

    if-ge p1, p2, :cond_4

    .line 98
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mCountStats:[I

    aget p3, p2, p1

    add-int/lit8 p3, p3, 0x1

    aput p3, p2, p1

    .line 99
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mDurationStats:[J

    aget-wide v3, p2, p1

    add-long/2addr v3, v1

    aput-wide v3, p2, p1

    .line 104
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aget-wide v3, p2, p1

    cmp-long p2, v3, v1

    if-gez p2, :cond_0

    .line 105
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationStats:[J

    aput-wide v1, p2, p1

    .line 109
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 110
    iget-wide v3, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    cmp-long v3, p2, v3

    if-lez v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    aget v3, v3, p1

    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v4, v4, p1

    if-ge v3, v4, :cond_1

    .line 112
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxCallsPerSecond:[I

    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget v4, v4, p1

    aput v4, v3, p1

    .line 114
    :cond_1
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v4, v3, p1

    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v6, v3, p1

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mMaxDurationPerSecond:[J

    iget-object v4, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide v5, v4, p1

    aput-wide v5, v3, p1

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    const/4 v4, 0x0

    aput v4, v3, p1

    .line 119
    iget-object v3, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, p1

    const-wide/16 v3, 0x3e8

    add-long/2addr p2, v3

    .line 121
    iput-wide p2, p0, Lcom/android/internal/util/StatLogger;->mNextTickTime:J

    .line 124
    :cond_3
    iget-object p2, p0, Lcom/android/internal/util/StatLogger;->mCallsPerSecond:[I

    aget p3, p2, p1

    add-int/lit8 p3, p3, 0x1

    aput p3, p2, p1

    .line 125
    iget-object p0, p0, Lcom/android/internal/util/StatLogger;->mDurationPerSecond:[J

    aget-wide p2, p0, p1

    add-long/2addr p2, v1

    aput-wide p2, p0, p1

    .line 127
    monitor-exit v0

    return-wide v1

    :cond_4
    const-string p0, "StatLogger"

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid event ID: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
