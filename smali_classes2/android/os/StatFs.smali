.class public Landroid/os/StatFs;
.super Ljava/lang/Object;
.source "StatFs.java"


# instance fields
.field private mStat:Landroid/system/StructStatVfs;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object p1

    iput-object p1, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    return-void
.end method

.method private static doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .locals 4

    .line 49
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAvailableBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bavail:J

    long-to-int p0, v0

    return p0
.end method

.method public getAvailableBlocksLong()J
    .locals 2

    .line 138
    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bavail:J

    return-wide v0
.end method

.method public getAvailableBytes()J
    .locals 4

    .line 146
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, p0, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getBlockCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_blocks:J

    long-to-int p0, v0

    return p0
.end method

.method public getBlockCountLong()J
    .locals 2

    .line 95
    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_blocks:J

    return-wide v0
.end method

.method public getBlockSize()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_frsize:J

    long-to-int p0, v0

    return p0
.end method

.method public getBlockSizeLong()J
    .locals 2

    .line 79
    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_frsize:J

    return-wide v0
.end method

.method public getFreeBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bfree:J

    long-to-int p0, v0

    return p0
.end method

.method public getFreeBlocksLong()J
    .locals 2

    .line 113
    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bfree:J

    return-wide v0
.end method

.method public getFreeBytes()J
    .locals 4

    .line 122
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, p0, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 4

    .line 153
    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, p0, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public restat(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object p1

    iput-object p1, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    return-void
.end method
