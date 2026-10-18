.class public Landroid/text/PackedIntVector;
.super Ljava/lang/Object;
.source "PackedIntVector.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# instance fields
.field private final mColumns:I

.field private mRowGapLength:I

.field private mRowGapStart:I

.field private mRows:I

.field private mValueGap:[I

.field private mValues:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/text/PackedIntVector;->mColumns:I

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 52
    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 53
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int/lit8 p1, p1, 0x2

    .line 56
    new-array p1, p1, [I

    iput-object p1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    return-void
.end method

.method private final growBuffer()V
    .locals 10

    .line 259
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 261
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    .line 260
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 262
    array-length v2, v1

    div-int/2addr v2, v0

    .line 264
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 265
    iget v4, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 267
    iget v5, p0, Landroid/text/PackedIntVector;->mRows:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v6, v4

    sub-int/2addr v5, v6

    .line 269
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 270
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v8, v0, v4

    invoke-static {v6, v7, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    iget-object v6, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget v8, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int/2addr v8, v5

    mul-int/2addr v8, v0

    sub-int v9, v2, v5

    mul-int/2addr v9, v0

    mul-int/2addr v5, v0

    invoke-static {v6, v8, v1, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    if-ge v7, v0, :cond_2

    .line 277
    aget v5, v3, v7

    if-lt v5, v4, :cond_1

    .line 278
    aget v5, v3, v7

    iget v6, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v6, v2, v6

    add-int/2addr v5, v6

    aput v5, v3, v7

    .line 280
    aget v5, v3, v7

    if-ge v5, v4, :cond_1

    .line 281
    aput v4, v3, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 286
    :cond_2
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    iget v3, p0, Landroid/text/PackedIntVector;->mRows:I

    sub-int v3, v2, v3

    add-int/2addr v0, v3

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    .line 287
    iput v2, p0, Landroid/text/PackedIntVector;->mRows:I

    .line 288
    iput-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    return-void
.end method

.method private final moveRowGapTo(I)V
    .locals 11

    .line 319
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-ne p1, v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_4

    .line 322
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v0, p1

    iget v2, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v3, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 323
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 324
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 325
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 326
    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v5, v6

    move v6, v5

    :goto_0
    add-int v7, v5, v0

    if-ge v6, v7, :cond_8

    sub-int v7, v6, v5

    .line 329
    iget v8, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/2addr v7, v8

    move v8, v1

    :goto_1
    if-ge v8, v2, :cond_3

    mul-int v9, v6, v2

    add-int/2addr v9, v8

    .line 332
    aget v9, v4, v9

    .line 334
    aget v10, v3, v8

    if-lt v6, v10, :cond_1

    add-int v10, v8, v2

    .line 335
    aget v10, v3, v10

    add-int/2addr v9, v10

    .line 338
    :cond_1
    aget v10, v3, v8

    if-lt v7, v10, :cond_2

    add-int v10, v8, v2

    .line 339
    aget v10, v3, v10

    sub-int/2addr v9, v10

    :cond_2
    mul-int v10, v7, v2

    add-int/2addr v10, v8

    .line 342
    aput v9, v4, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 346
    :cond_4
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr v0, p1

    .line 347
    iget v2, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 348
    iget-object v3, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 349
    iget-object v4, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 350
    iget v5, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    iget v6, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr v5, v6

    add-int v6, p1, v0

    add-int/lit8 v6, v6, -0x1

    :goto_2
    if-lt v6, p1, :cond_8

    sub-int v7, v6, p1

    add-int/2addr v7, v5

    sub-int/2addr v7, v0

    move v8, v1

    :goto_3
    if-ge v8, v2, :cond_7

    mul-int v9, v6, v2

    add-int/2addr v9, v8

    .line 356
    aget v9, v4, v9

    .line 358
    aget v10, v3, v8

    if-lt v6, v10, :cond_5

    add-int v10, v8, v2

    .line 359
    aget v10, v3, v10

    add-int/2addr v9, v10

    .line 362
    :cond_5
    aget v10, v3, v8

    if-lt v7, v10, :cond_6

    add-int v10, v8, v2

    .line 363
    aget v10, v3, v10

    sub-int/2addr v9, v10

    :cond_6
    mul-int v10, v7, v2

    add-int/2addr v10, v8

    .line 366
    aput v9, v4, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 371
    :cond_8
    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    return-void
.end method

.method private final moveValueGapTo(II)V
    .locals 6

    .line 296
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 297
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    .line 298
    iget p0, p0, Landroid/text/PackedIntVector;->mColumns:I

    .line 300
    aget v2, v0, p1

    if-ne p2, v2, :cond_0

    return-void

    .line 302
    :cond_0
    aget v2, v0, p1

    if-le p2, v2, :cond_1

    .line 303
    aget v2, v0, p1

    :goto_0
    if-ge v2, p2, :cond_2

    mul-int v3, v2, p0

    add-int/2addr v3, p1

    .line 304
    aget v4, v1, v3

    add-int v5, p1, p0

    aget v5, v0, v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p2

    .line 307
    :goto_1
    aget v3, v0, p1

    if-ge v2, v3, :cond_2

    mul-int v3, v2, p0

    add-int/2addr v3, p1

    .line 308
    aget v4, v1, v3

    add-int v5, p1, p0

    aget v5, v0, v5

    sub-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 312
    :cond_2
    aput p2, v0, p1

    return-void
.end method

.method private setValueInternal(III)V
    .locals 2

    .line 128
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_0

    .line 129
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 133
    aget v1, v0, p2

    if-lt p1, v1, :cond_1

    .line 134
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v0, v0, v1

    sub-int/2addr p3, v0

    .line 137
    :cond_1
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget p0, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method


# virtual methods
.method public adjustValuesBelow(III)V
    .locals 1

    or-int v0, p1, p2

    if-ltz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_1

    .line 155
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 159
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_0

    .line 160
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 163
    :cond_0
    invoke-direct {p0, p2, p1}, Landroid/text/PackedIntVector;->moveValueGapTo(II)V

    .line 164
    iget-object p1, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    iget p0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr p2, p0

    aget p0, p1, p2

    add-int/2addr p0, p3

    aput p0, p1, p2

    return-void

    .line 156
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteAt(II)V
    .locals 2

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    .line 221
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 225
    invoke-direct {p0, v0}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 227
    iget p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 228
    iget p1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    return-void

    .line 222
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getValue(II)I
    .locals 3

    .line 72
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    or-int v1, p1, p2

    if-ltz v1, :cond_2

    .line 74
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-ge p2, v0, :cond_2

    .line 78
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v1, :cond_0

    .line 79
    iget v1, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v1

    .line 82
    :cond_0
    iget-object v1, p0, Landroid/text/PackedIntVector;->mValues:[I

    mul-int v2, p1, v0

    add-int/2addr v2, p2

    aget v1, v1, v2

    .line 84
    iget-object p0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 85
    aget v2, p0, p2

    if-lt p1, v2, :cond_1

    add-int/2addr p2, v0

    .line 86
    aget p0, p0, p2

    add-int/2addr v1, p0

    :cond_1
    return v1

    .line 75
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public insertAt(I[I)V
    .locals 2

    if-ltz p1, :cond_5

    .line 181
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    if-eqz p2, :cond_1

    .line 185
    array-length v0, p2

    invoke-virtual {p0}, Landroid/text/PackedIntVector;->width()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "value count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/text/PackedIntVector;->moveRowGapTo(I)V

    .line 191
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez v0, :cond_2

    .line 192
    invoke-direct {p0}, Landroid/text/PackedIntVector;->growBuffer()V

    .line 195
    :cond_2
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    .line 196
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    if-nez p2, :cond_3

    .line 199
    iget p2, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_4

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, p2, v0}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 203
    :cond_3
    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 204
    aget v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Landroid/text/PackedIntVector;->setValueInternal(III)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void

    .line 182
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "row "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setValue(III)V
    .locals 2

    or-int v0, p1, p2

    if-ltz v0, :cond_2

    .line 103
    invoke-virtual {p0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Landroid/text/PackedIntVector;->mColumns:I

    if-ge p2, v0, :cond_2

    .line 107
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapStart:I

    if-lt p1, v0, :cond_0

    .line 108
    iget v0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    add-int/2addr p1, v0

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValueGap:[I

    .line 112
    aget v1, v0, p2

    if-lt p1, v1, :cond_1

    .line 113
    iget v1, p0, Landroid/text/PackedIntVector;->mColumns:I

    add-int/2addr v1, p2

    aget v0, v0, v1

    sub-int/2addr p3, v0

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/text/PackedIntVector;->mValues:[I

    iget p0, p0, Landroid/text/PackedIntVector;->mColumns:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void

    .line 104
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 1

    .line 241
    iget v0, p0, Landroid/text/PackedIntVector;->mRows:I

    iget p0, p0, Landroid/text/PackedIntVector;->mRowGapLength:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public width()I
    .locals 0

    .line 251
    iget p0, p0, Landroid/text/PackedIntVector;->mColumns:I

    return p0
.end method
