.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 37
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    const/4 v0, 0x7

    .line 47
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 59
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 60
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    return-void
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v9, p2

    move-object/from16 v10, p4

    const/4 v11, 0x0

    move v2, v11

    :goto_0
    const/16 v12, 0xa

    if-ge v2, v9, :cond_0

    .line 133
    aget-byte v3, v0, v2

    if-eq v3, v12, :cond_0

    aget-byte v3, v0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x1

    add-int/2addr v2, v13

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    sget v3, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/2addr v3, v13

    sput v3, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    move v14, v2

    :goto_1
    if-ge v2, v9, :cond_b

    move v8, v14

    :goto_2
    if-ge v8, v9, :cond_1

    .line 140
    aget-byte v2, v0, v8

    if-eq v2, v12, :cond_1

    aget-byte v2, v0, v8

    if-eqz v2, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v9, -0x1

    if-le v8, v2, :cond_2

    goto/16 :goto_7

    .line 148
    :cond_2
    iget-object v7, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 149
    iget-object v6, v1, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    move v2, v14

    :goto_3
    if-ge v2, v8, :cond_4

    .line 154
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_3

    const/16 v3, 0x3f

    aput-byte v3, v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    .line 157
    sget-object v2, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    goto :goto_4

    .line 158
    :cond_5
    sget-object v2, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    :goto_4
    move-object v5, v2

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move v3, v14

    move v4, v8

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    move/from16 v18, v8

    move-object v8, v15

    .line 156
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v2

    .line 161
    aget-object v3, v17, v11

    .line 162
    aget-wide v4, v16, v13

    long-to-int v4, v4

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x2

    if-eqz p3, :cond_6

    .line 166
    aget-wide v7, v16, v7

    mul-long/2addr v7, v5

    goto :goto_5

    .line 169
    :cond_6
    aget-wide v7, v16, v7

    const-wide/16 v15, 0x1f4

    add-long/2addr v7, v15

    div-long/2addr v7, v5

    :goto_5
    if-eqz v2, :cond_9

    .line 172
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 173
    invoke-virtual {v10, v3}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 174
    new-instance v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    invoke-direct {v2, v4, v7, v8, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    invoke-virtual {v10, v3, v2}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 177
    :cond_7
    invoke-virtual {v10, v3}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 178
    iget v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v3, v5, :cond_8

    .line 179
    iget v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 180
    iget-wide v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    add-long/2addr v3, v7

    iput-wide v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_6

    .line 182
    :cond_8
    iput v4, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 183
    iput-wide v7, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 184
    sget v3, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v3, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_9
    if-nez v2, :cond_a

    :try_start_1
    const-string v2, "KernelWakelockReader"

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse proc line: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    sub-int v8, v18, v14

    invoke-direct {v4, v0, v14, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    :try_start_2
    const-string v2, "KernelWakelockReader"

    const-string v3, "Failed to parse proc line!"

    .line 192
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    add-int/lit8 v14, v18, 0x1

    move/from16 v2, v18

    goto/16 :goto_1

    .line 199
    :cond_b
    :goto_7
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 200
    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v2, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v3, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v2, v3, :cond_c

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .line 206
    :cond_d
    sget v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v0, v10, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I

    .line 207
    monitor-exit p0

    return-object v10

    :catchall_0
    move-exception v0

    .line 208
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 9

    const v0, 0x8000

    .line 68
    new-array v0, v0, [B

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 73
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 77
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/proc/wakelocks"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    .line 81
    :catch_1
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/d/wakeup_sources"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x1

    .line 90
    :goto_0
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 91
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x64

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    const-string v1, "KernelWakelockReader"

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading wakelock stats took "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v8, :cond_3

    .line 105
    array-length v1, v0

    if-lt v8, v1, :cond_1

    const-string v1, "KernelWakelockReader"

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kernel wake locks exceeded buffer size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    if-ge v5, v8, :cond_3

    .line 110
    aget-byte v1, v0, v5

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v8

    .line 116
    :goto_2
    invoke-virtual {p0, v0, v5, v7, p1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object p0

    return-object p0

    :catch_2
    :try_start_3
    const-string p0, "KernelWakelockReader"

    const-string p1, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v4

    :goto_3
    :try_start_4
    const-string p1, "KernelWakelockReader"

    const-string v0, "failed to read kernel wakelocks"

    .line 93
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v4

    :goto_4
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw p0
.end method
