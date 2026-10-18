.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final mFirLength:I = 0x1d


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mOneByte:[B

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    .line 50
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    const/4 v1, 0x2

    mul-int/2addr p3, v1

    if-ne p2, p3, :cond_0

    .line 65
    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    .line 66
    iput v1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    .line 67
    iput v0, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    return-void

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "only support 2:1 at the moment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    .line 140
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "someone forgot to close ResampleInputStream"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 73
    iget-object p0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 86
    div-int/lit8 v0, p3, 0x2

    iget v1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1d

    mul-int/lit8 v1, v1, 0x2

    .line 87
    iget-object v2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 88
    new-array v1, v1, [B

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 90
    new-array v1, v1, [B

    .line 91
    iget-object v2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 92
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    .line 97
    :cond_1
    :goto_0
    iget v1, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1d

    iget v2, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_4

    if-ge v1, p3, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    .line 109
    :goto_1
    iget-object p3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    div-int/lit8 v0, v1, 0x2

    invoke-static {p3, v3, p1, p2, v0}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    .line 112
    iget p1, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr p1, v1

    iget p2, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr p1, p2

    .line 113
    iget p2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    .line 114
    iget p2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    if-lez p2, :cond_3

    iget-object p2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget-object p3, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget p0, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {p2, p1, p3, v3, p0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_3
    return v1

    .line 103
    :cond_4
    iget-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v4, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v5, v5

    iget v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    return v2

    .line 105
    :cond_5
    iget v2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    goto :goto_0

    .line 83
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "not open"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
