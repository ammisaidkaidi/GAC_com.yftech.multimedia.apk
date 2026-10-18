.class public Landroid/text/AutoGrowArray$IntArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AutoGrowArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArray"
.end annotation


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 169
    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 177
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    :goto_0
    const/4 p1, 0x0

    .line 181
    iput p1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 207
    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    add-int/2addr v0, p1

    .line 208
    iget-object p1, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length p1, p1

    if-lt v0, p1, :cond_0

    .line 209
    iget p1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    invoke-static {p1, v0}, Landroid/text/AutoGrowArray;->access$000(II)I

    move-result p1

    .line 210
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    .line 211
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    iget v1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iput-object p1, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public append(I)V
    .locals 3

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;->ensureCapacity(I)V

    .line 200
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    iget v1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return-void
.end method

.method public clearWithReleasingLargeArray()V
    .locals 2

    .line 228
    invoke-virtual {p0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 229
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 230
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 0

    .line 238
    iget-object p0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    aget p0, p0, p1

    return p0
.end method

.method public getRawArray()[I
    .locals 0

    .line 262
    iget-object p0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    return-object p0
.end method

.method public resize(I)V
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 190
    iget v0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$IntArray;->ensureCapacity(I)V

    .line 192
    :cond_0
    iput p1, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return-void
.end method

.method public set(II)V
    .locals 0

    .line 245
    iget-object p0, p0, Landroid/text/AutoGrowArray$IntArray;->mValues:[I

    aput p2, p0, p1

    return-void
.end method

.method public size()I
    .locals 0

    .line 252
    iget p0, p0, Landroid/text/AutoGrowArray$IntArray;->mSize:I

    return p0
.end method
