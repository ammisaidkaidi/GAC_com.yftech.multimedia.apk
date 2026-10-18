.class Landroid/os/RecoverySystem$1;
.super Ljava/io/InputStream;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastPercent:I

.field lastPublishTime:J

.field soFar:J

.field toRead:J

.field final synthetic val$commentSize:I

.field final synthetic val$fileLen:J

.field final synthetic val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$raf:Ljava/io/RandomAccessFile;

.field final synthetic val$startTimeMillis:J


# direct methods
.method constructor <init>(JIJLjava/io/RandomAccessFile;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 0

    .line 289
    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    iput p3, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    iput-wide p4, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    iput-object p6, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    iput-object p7, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 292
    iget-wide p1, p0, Landroid/os/RecoverySystem$1;->val$fileLen:J

    iget p3, p0, Landroid/os/RecoverySystem$1;->val$commentSize:I

    int-to-long p3, p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x2

    sub-long/2addr p1, p3

    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->toRead:J

    const-wide/16 p1, 0x0

    .line 293
    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->soFar:J

    const/4 p1, 0x0

    .line 295
    iput p1, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    .line 296
    iget-wide p1, p0, Landroid/os/RecoverySystem$1;->val$startTimeMillis:J

    iput-wide p1, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    return-void
.end method


# virtual methods
.method public read()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-ltz v0, :cond_0

    return v1

    .line 308
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 313
    :cond_1
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->toRead:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 314
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->toRead:J

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    sub-long/2addr v0, v2

    long-to-int p3, v0

    .line 316
    :cond_2
    iget-object v0, p0, Landroid/os/RecoverySystem$1;->val$raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    .line 317
    iget-wide p2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroid/os/RecoverySystem$1;->soFar:J

    .line 319
    iget-object p2, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    if-eqz p2, :cond_3

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 321
    iget-wide v0, p0, Landroid/os/RecoverySystem$1;->soFar:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/os/RecoverySystem$1;->toRead:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 322
    iget v1, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    if-le v0, v1, :cond_3

    iget-wide v1, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    sub-long v1, p2, v1

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 324
    iput v0, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    .line 325
    iput-wide p2, p0, Landroid/os/RecoverySystem$1;->lastPublishTime:J

    .line 326
    iget-object p2, p0, Landroid/os/RecoverySystem$1;->val$listenerForInner:Landroid/os/RecoverySystem$ProgressListener;

    iget p0, p0, Landroid/os/RecoverySystem$1;->lastPercent:I

    invoke-interface {p2, p0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    :cond_3
    return p1
.end method
