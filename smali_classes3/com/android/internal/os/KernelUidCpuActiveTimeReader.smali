.class public Lcom/android/internal/os/KernelUidCpuActiveTimeReader;
.super Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.source "KernelUidCpuActiveTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<",
        "Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuActiveTimeReader"


# instance fields
.field private mCores:I

.field private mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcReader:Lcom/android/internal/os/KernelCpuProcReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    .line 71
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcReader;->getActiveTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelCpuProcReader;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    .line 76
    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public static synthetic lambda$readAbsolute$1(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 5

    .line 100
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    .line 101
    invoke-direct {p0, p2}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->sumActiveTime(Ljava/nio/IntBuffer;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p0, v1, v3

    if-lez p0, :cond_0

    double-to-long v1, v1

    .line 103
    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;->onUidCpuActiveTime(IJ)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$readDeltaImpl$0(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 7

    .line 82
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    .line 83
    invoke-direct {p0, p2}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->sumActiveTime(Ljava/nio/IntBuffer;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p2, v1, v3

    if-lez p2, :cond_1

    .line 85
    iget-object p2, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v5, v1, v5

    cmpl-double p2, v5, v3

    if-lez p2, :cond_0

    .line 87
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_1

    double-to-long v1, v5

    .line 89
    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;->onUidCpuActiveTime(IJ)V

    goto :goto_0

    :cond_0
    cmpg-double p0, v5, v3

    if-gez p0, :cond_1

    .line 92
    sget-object p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Negative delta from active time proc: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private readImpl(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/IntBuffer;",
            ">;)V"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuProcReader;->readBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 136
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    goto/16 :goto_2

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    .line 141
    sget-object p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse active time proc bytes to int: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    monitor-exit v0

    return-void

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    .line 147
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mCores:I

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mCores:I

    if-eq v2, v3, :cond_2

    .line 148
    sget-object p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cpu active time wrong # cores: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v0

    return-void

    .line 151
    :cond_2
    iput v2, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mCores:I

    if-lez v2, :cond_5

    .line 152
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result p0

    add-int/lit8 v3, v2, 0x1

    rem-int/2addr p0, v3

    if-eqz p0, :cond_3

    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result p0

    div-int/2addr p0, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_4

    .line 160
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_4
    monitor-exit v0

    return-void

    .line 153
    :cond_5
    :goto_1
    sget-object p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cpu active time format error: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    monitor-exit v0

    return-void

    .line 138
    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sumActiveTime(Ljava/nio/IntBuffer;)D
    .locals 10

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    move v1, v0

    .line 111
    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mCores:I

    if-gt v1, v2, :cond_1

    .line 112
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    if-gez v2, :cond_0

    .line 116
    sget-object v3, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negative time from active time proc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    goto :goto_1

    :cond_0
    int-to-double v6, v2

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    int-to-double v8, v1

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    :cond_2
    return-wide v4
.end method


# virtual methods
.method public readAbsolute(Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V
    .locals 1

    .line 99
    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$uXm3GBhF7PBpo0hLrva14EQYjPA;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$uXm3GBhF7PBpo0hLrva14EQYjPA;-><init>(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected readDeltaImpl(Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuActiveTimeReader$bd1LhtH6p3uJgMUQoWfE2Qs8bRc;-><init>(Lcom/android/internal/os/KernelUidCpuActiveTimeReader;Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected bridge synthetic readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuActiveTimeReader$Callback;)V

    return-void
.end method

.method public removeUid(I)V
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 176
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    .line 177
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuActiveTimeReader;->mLastUidCpuActiveTimeMs:Landroid/util/SparseArray;

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->removeAtRange(II)V

    return-void
.end method
