.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field final mInfos:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    .line 23
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    return-void
.end method


# virtual methods
.method public getCachedSize()J
    .locals 4

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getCachedSizeKb()J
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x2

    aget-wide v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v3, 0x6

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v0, 0xb

    aget-wide v3, p0, v0

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public getFreeSize()J
    .locals 4

    .line 48
    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFreeSizeKb()J
    .locals 2

    .line 77
    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v0, 0x1

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getKernelUsedSize()J
    .locals 4

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getKernelUsedSizeKb()J
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v3, 0x7

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xc

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0xd

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v0, 0xe

    aget-wide v3, p0, v0

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public getRawInfo()[J
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    return-object p0
.end method

.method public getSwapFreeSizeKb()J
    .locals 2

    .line 103
    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v0, 0x9

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getSwapTotalSizeKb()J
    .locals 2

    .line 99
    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v0, 0x8

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 4

    .line 41
    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalSizeKb()J
    .locals 2

    .line 70
    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getZramTotalSizeKb()J
    .locals 2

    .line 107
    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v0, 0xa

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 1

    .line 29
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 31
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {p0}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method
