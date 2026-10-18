.class public Landroid/text/AutoGrowArray$ByteArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AutoGrowArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteArray"
.end annotation


# instance fields
.field private mSize:I

.field private mValues:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 60
    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 68
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object p1

    iput-object p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    :goto_0
    const/4 p1, 0x0

    .line 72
    iput p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 98
    iget v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    add-int/2addr v0, p1

    .line 99
    iget-object p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    array-length p1, p1

    if-lt v0, p1, :cond_0

    .line 100
    iget p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    invoke-static {p1, v0}, Landroid/text/AutoGrowArray;->access$000(II)I

    move-result p1

    .line 101
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object p1

    .line 102
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    iget v1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 103
    iput-object p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    :cond_0
    return-void
.end method


# virtual methods
.method public append(B)V
    .locals 3

    const/4 v0, 0x1

    .line 90
    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$ByteArray;->ensureCapacity(I)V

    .line 91
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    iget v1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    return-void
.end method

.method public clearWithReleasingLargeArray()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 120
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    array-length v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 121
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    :cond_0
    return-void
.end method

.method public get(I)B
    .locals 0

    .line 129
    iget-object p0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method public getRawArray()[B
    .locals 0

    .line 153
    iget-object p0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    return-object p0
.end method

.method public resize(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 81
    iget v0, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$ByteArray;->ensureCapacity(I)V

    .line 83
    :cond_0
    iput p1, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    return-void
.end method

.method public set(IB)V
    .locals 0

    .line 136
    iget-object p0, p0, Landroid/text/AutoGrowArray$ByteArray;->mValues:[B

    aput-byte p2, p0, p1

    return-void
.end method

.method public size()I
    .locals 0

    .line 143
    iget p0, p0, Landroid/text/AutoGrowArray$ByteArray;->mSize:I

    return p0
.end method
