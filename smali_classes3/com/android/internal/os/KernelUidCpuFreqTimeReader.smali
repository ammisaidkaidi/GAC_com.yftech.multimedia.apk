.class public Lcom/android/internal/os/KernelUidCpuFreqTimeReader;
.super Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.source "KernelUidCpuFreqTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<",
        "Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuFreqTimeReader"

.field private static final TOTAL_READ_ERROR_COUNT:I = 0x5

.field static final UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private mAllUidTimesAvailable:Z

.field private mCpuFreqs:[J

.field private mCpuFreqsCount:I

.field private mCurTimes:[J

.field private mDeltaTimes:[J

.field private mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field

.field private mPerClusterTimesAvailable:Z

.field private final mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

.field private mReadErrorCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    .line 89
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcReader;->getFreqTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelCpuProcReader;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 93
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    .line 94
    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method private extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;
    .locals 10

    .line 285
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 287
    :goto_0
    iget v4, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v2, v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, 0x1

    .line 289
    iget v5, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    aget-wide v6, v5, v4

    iget-object v5, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    aget-wide v8, v5, v2

    cmp-long v2, v6, v8

    if-gtz v2, :cond_1

    .line 290
    :cond_0
    invoke-virtual {v0, v3}, Landroid/util/IntArray;->add(I)V

    move v3, v1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getFreqTimeForUid(Ljava/nio/IntBuffer;[J)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    .line 213
    :goto_0
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v1, v3, :cond_1

    .line 214
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    aput-wide v3, p2, v1

    .line 215
    aget-wide v3, p2, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 216
    sget-object v2, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative time from freq time proc: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p2, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static synthetic lambda$readAbsolute$1(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 2

    .line 204
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->getFreqTimeForUid(Ljava/nio/IntBuffer;[J)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 206
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    invoke-interface {p1, v0, p0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$readDeltaImpl$0(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 13

    .line 174
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    if-nez v1, :cond_0

    .line 177
    iget v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v1, v1, [J

    .line 178
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    invoke-direct {p0, p2, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->getFreqTimeForUid(Ljava/nio/IntBuffer;[J)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    const/4 v2, 0x0

    move v5, p2

    move v3, v2

    move v4, v3

    .line 185
    :goto_0
    iget v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v3, v6, :cond_4

    .line 186
    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    iget-object v7, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    aget-wide v8, v7, v3

    aget-wide v10, v1, v3

    sub-long/2addr v8, v10

    aput-wide v8, v6, v3

    .line 187
    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    aget-wide v7, v6, v3

    const-wide/16 v9, 0x0

    cmp-long v6, v7, v9

    if-gez v6, :cond_2

    .line 188
    sget-object v5, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negative delta from freq time proc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    aget-wide v11, v7, v3

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 191
    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    aget-wide v7, v6, v3

    cmp-long v6, v7, v9

    if-lez v6, :cond_3

    move v6, p2

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    or-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 194
    iget-object p2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_5

    .line 196
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    invoke-interface {p1, v0, p0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    :cond_5
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

    .line 232
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    monitor-enter v0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuProcReader;->readBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 234
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    goto/16 :goto_1

    .line 238
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    .line 239
    sget-object p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse freq time proc bytes to int: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit v0

    return-void

    .line 242
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 243
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    .line 244
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-eq v2, v3, :cond_2

    .line 245
    sget-object p1, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cpu freqs expect "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    monitor-exit v0

    return-void

    .line 248
    :cond_2
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result p0

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr p0, v2

    if-eqz p0, :cond_3

    .line 249
    sget-object p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freq time format error: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    monitor-exit v0

    return-void

    .line 252
    :cond_3
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result p0

    div-int/2addr p0, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_4

    .line 254
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_4
    monitor-exit v0

    return-void

    .line 236
    :cond_5
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 259
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public allUidTimesAvailable()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    return p0
.end method

.method public getAllUidCpuFreqTimeMs()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    return-object p0
.end method

.method public perClusterTimesAvailable()Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    return p0
.end method

.method public readAbsolute(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 1

    .line 203
    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$s7iJKg0yjXXtqM4hsU8GS_gavIY;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$s7iJKg0yjXXtqM4hsU8GS_gavIY;-><init>(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public readDeltaImpl(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$_LfRKir9FA4B4VL15YGHagRZaR8;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuFreqTimeReader$_LfRKir9FA4B4VL15YGHagRZaR8;-><init>(Lcom/android/internal/os/KernelUidCpuFreqTimeReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    check-cast p1, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    return-void
.end method

.method public readFreqs(Lcom/android/internal/os/PowerProfile;)[J
    .locals 6

    .line 110
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    return-object p0

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 118
    :cond_1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    .line 119
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/uid_time_in_state"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 120
    :try_start_1
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readFreqs(Ljava/io/BufferedReader;Lcom/android/internal/os/PowerProfile;)[J

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 128
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 119
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    move-object v5, v3

    move-object v3, p1

    move-object p1, v5

    :goto_0
    if-eqz v3, :cond_2

    .line 121
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p1

    .line 122
    :try_start_6
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_3

    const/4 v2, 0x0

    .line 123
    iput-boolean v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mAllUidTimesAvailable:Z

    .line 125
    :cond_3
    sget-object p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read /proc/uid_time_in_state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 128
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-object v1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw p0
.end method

.method public readFreqs(Ljava/io/BufferedReader;Lcom/android/internal/os/PowerProfile;)[J
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " "

    .line 139
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 141
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    .line 142
    iget v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    .line 143
    iget v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCurTimes:[J

    .line 144
    iget v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mDeltaTimes:[J

    const/4 v0, 0x0

    move v2, v0

    .line 145
    :goto_0
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v2, v3, :cond_1

    .line 146
    iget-object v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p1, v4

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    aput-wide v5, v3, v2

    move v2, v4

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->extractClusterInfoFromProcFileFreqs()Landroid/util/IntArray;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v2

    .line 152
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 153
    iput-boolean v1, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 155
    invoke-virtual {p1, v1}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {p2, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 156
    iput-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_3
    iput-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    .line 163
    :cond_4
    :goto_2
    sget-object p1, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPerClusterTimesAvailable="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mPerClusterTimesAvailable:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    return-object p0
.end method

.method public removeUid(I)V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 270
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    .line 271
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->removeAtRange(II)V

    return-void
.end method
