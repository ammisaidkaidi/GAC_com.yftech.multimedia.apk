.class public Lcom/android/internal/os/KernelUidCpuClusterTimeReader;
.super Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.source "KernelUidCpuClusterTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase<",
        "Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuClusterTimeReader"


# instance fields
.field private mCurTime:[D

.field private mCurTimeRounded:[J

.field private mDeltaTime:[J

.field private mLastUidPolicyTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[D>;"
        }
    .end annotation
.end field

.field private mNumClusters:I

.field private mNumCores:I

.field private mNumCoresOnCluster:[I

.field private final mProcReader:Lcom/android/internal/os/KernelCpuProcReader;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    .line 83
    invoke-static {}, Lcom/android/internal/os/KernelCpuProcReader;->getClusterTimeReaderInstance()Lcom/android/internal/os/KernelCpuProcReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelCpuProcReader;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;-><init>()V

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 63
    iput v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    .line 88
    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    return-void
.end method

.method public static synthetic lambda$readAbsolute$1(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 5

    .line 124
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    invoke-direct {p0, p2, v1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->sumClusterTime(Ljava/nio/IntBuffer;[D)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 126
    :goto_0
    iget v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    if-ge p2, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTimeRounded:[J

    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    aget-wide v3, v2, p2

    double-to-long v2, v3

    aput-wide v2, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTimeRounded:[J

    invoke-interface {p1, v0, p0}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;->onUidCpuPolicyTime(I[J)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$readDeltaImpl$0(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;Ljava/nio/IntBuffer;)V
    .locals 13

    .line 94
    invoke-virtual {p2}, Ljava/nio/IntBuffer;->get()I

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    if-nez v1, :cond_0

    .line 97
    iget v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    new-array v1, v1, [D

    .line 98
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    invoke-direct {p0, p2, v2}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->sumClusterTime(Ljava/nio/IntBuffer;[D)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    const/4 v2, 0x0

    move v5, p2

    move v3, v2

    move v4, v3

    .line 105
    :goto_0
    iget v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    if-ge v3, v6, :cond_4

    .line 106
    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    iget-object v7, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    aget-wide v8, v7, v3

    aget-wide v10, v1, v3

    sub-double/2addr v8, v10

    double-to-long v7, v8

    aput-wide v7, v6, v3

    .line 107
    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    aget-wide v7, v6, v3

    const-wide/16 v9, 0x0

    cmp-long v6, v7, v9

    if-gez v6, :cond_2

    .line 108
    sget-object v5, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negative delta from cluster time proc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    aget-wide v11, v7, v3

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    .line 111
    :cond_2
    iget-object v6, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

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

    .line 114
    iget-object p2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    iget v3, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p1, :cond_5

    .line 116
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    invoke-interface {p1, v0, p0}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;->onUidCpuPolicyTime(I[J)V

    :cond_5
    return-void
.end method

.method private readCoreInfo(Ljava/nio/IntBuffer;I)Z
    .locals 5

    .line 211
    new-array v0, p2, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    aput v4, v0, v2

    .line 214
    aget v4, v0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-gtz v3, :cond_1

    .line 217
    sget-object p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid # cores from cluster time proc file: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 220
    :cond_1
    iput v3, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    .line 221
    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCoresOnCluster:[I

    .line 222
    new-array p1, p2, [D

    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTime:[D

    .line 223
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mDeltaTime:[J

    .line 224
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mCurTimeRounded:[J

    const/4 p0, 0x1

    return p0
.end method

.method private readImpl(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/nio/IntBuffer;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mProcReader:Lcom/android/internal/os/KernelCpuProcReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuProcReader;->readBytes()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 161
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    goto/16 :goto_1

    .line 165
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_1

    .line 166
    sget-object p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot parse cluster time proc bytes to int: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    monitor-exit v0

    return-void

    .line 170
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->get()I

    move-result v2

    if-gtz v2, :cond_2

    .line 173
    sget-object p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cluster time format error: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    monitor-exit v0

    return-void

    .line 176
    :cond_2
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 177
    iput v2, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    .line 179
    :cond_3
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_4

    .line 180
    sget-object p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too few data left in the buffer: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    monitor-exit v0

    return-void

    .line 183
    :cond_4
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    if-gtz v3, :cond_5

    .line 184
    invoke-direct {p0, v1, v2}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readCoreInfo(Ljava/nio/IntBuffer;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 185
    monitor-exit v0

    return-void

    .line 188
    :cond_5
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    :cond_6
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    iget v3, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    add-int/lit8 v3, v3, 0x1

    rem-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 192
    sget-object p1, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cluster time format error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    monitor-exit v0

    return-void

    .line 197
    :cond_7
    invoke-virtual {v1}, Ljava/nio/IntBuffer;->remaining()I

    move-result v2

    iget p0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCores:I

    add-int/lit8 p0, p0, 0x1

    div-int/2addr v2, p0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v2, :cond_8

    .line 200
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 205
    :cond_8
    monitor-exit v0

    return-void

    .line 163
    :cond_9
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sumClusterTime(Ljava/nio/IntBuffer;[D)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 136
    :goto_0
    iget v4, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumClusters:I

    if-ge v2, v4, :cond_2

    const-wide/16 v4, 0x0

    .line 137
    aput-wide v4, p2, v2

    move v4, v3

    move v3, v1

    .line 138
    :goto_1
    iget-object v5, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mNumCoresOnCluster:[I

    aget v5, v5, v2

    if-gt v3, v5, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    move-result v5

    if-gez v5, :cond_0

    .line 141
    sget-object v4, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Negative time from cluster time proc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    .line 144
    :cond_0
    aget-wide v6, p2, v2

    int-to-double v8, v5

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v10

    int-to-double v10, v3

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, p2, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    return v3
.end method


# virtual methods
.method public readAbsolute(Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V
    .locals 1

    .line 123
    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$SvNbuRWT162Eb4ur1GVE0r4GiDo;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$SvNbuRWT162Eb4ur1GVE0r4GiDo;-><init>(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected readDeltaImpl(Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V
    .locals 1

    .line 93
    new-instance v0, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$j4vHMa0qvl5KRBiWr-LkFJbasC8;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/-$$Lambda$KernelUidCpuClusterTimeReader$j4vHMa0qvl5KRBiWr-LkFJbasC8;-><init>(Lcom/android/internal/os/KernelUidCpuClusterTimeReader;Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V

    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readImpl(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected bridge synthetic readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuClusterTimeReader$Callback;)V

    return-void
.end method

.method public removeUid(I)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 236
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    .line 237
    iget-object p0, p0, Lcom/android/internal/os/KernelUidCpuClusterTimeReader;->mLastUidPolicyTimeMs:Landroid/util/SparseArray;

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->removeAtRange(II)V

    return-void
.end method
