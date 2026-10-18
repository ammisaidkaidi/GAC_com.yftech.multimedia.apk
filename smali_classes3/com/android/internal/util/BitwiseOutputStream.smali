.class public Lcom/android/internal/util/BitwiseOutputStream;
.super Ljava/lang/Object;
.source "BitwiseOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    }
.end annotation


# instance fields
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    shl-int/lit8 p1, p1, 0x3

    .line 54
    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    return-void
.end method

.method private possExpand(I)V
    .locals 3

    .line 76
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    if-ge v0, v1, :cond_0

    return-void

    .line 77
    :cond_0
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0x2

    new-array p1, p1, [B

    .line 78
    iget-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    ushr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    iput-object p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    .line 80
    array-length p1, p1

    shl-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    return-void
.end method


# virtual methods
.method public skip(I)V
    .locals 1

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    .line 128
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .line 64
    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    .line 65
    new-array v1, v0, [B

    .line 66
    iget-object p0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method

.method public write(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    if-ltz p1, :cond_1

    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    const/4 v1, -0x1

    rsub-int/lit8 v2, p1, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr p2, v1

    .line 98
    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v1, v1, 0x3

    .line 99
    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x10

    sub-int/2addr v2, p1

    shl-int/2addr p2, v2

    .line 101
    iget v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    .line 102
    iget-object p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    aget-byte v3, p1, v1

    ushr-int/lit8 v4, p2, 0x8

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    if-ge v2, v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte p1, p0, v1

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p0, v1

    :cond_0
    return-void

    .line 94
    :cond_1
    new-instance p0, Lcom/android/internal/util/BitwiseOutputStream$AccessException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal write ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeByteArray(I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    const/16 v2, 0x8

    .line 114
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 116
    aget-byte v3, p2, v0

    sub-int/2addr v2, v1

    ushr-int v2, v3, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
