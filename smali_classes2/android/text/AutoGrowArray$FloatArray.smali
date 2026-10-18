.class public Landroid/text/AutoGrowArray$FloatArray;
.super Ljava/lang/Object;
.source "AutoGrowArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/AutoGrowArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatArray"
.end annotation


# instance fields
.field private mSize:I

.field private mValues:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 278
    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 286
    sget-object p1, Llibcore/util/EmptyArray;->FLOAT:[F

    iput-object p1, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object p1

    iput-object p1, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    :goto_0
    const/4 p1, 0x0

    .line 290
    iput p1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 316
    iget v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    add-int/2addr v0, p1

    .line 317
    iget-object p1, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    array-length p1, p1

    if-lt v0, p1, :cond_0

    .line 318
    iget p1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    invoke-static {p1, v0}, Landroid/text/AutoGrowArray;->access$000(II)I

    move-result p1

    .line 319
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object p1

    .line 320
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    iget v1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    iput-object p1, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    :cond_0
    return-void
.end method


# virtual methods
.method public append(F)V
    .locals 3

    const/4 v0, 0x1

    .line 308
    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$FloatArray;->ensureCapacity(I)V

    .line 309
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    iget v1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 329
    iput v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    return-void
.end method

.method public clearWithReleasingLargeArray()V
    .locals 2

    .line 337
    invoke-virtual {p0}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    .line 338
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    array-length v0, v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_0

    .line 339
    sget-object v0, Llibcore/util/EmptyArray;->FLOAT:[F

    iput-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    :cond_0
    return-void
.end method

.method public get(I)F
    .locals 0

    .line 347
    iget-object p0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    aget p0, p0, p1

    return p0
.end method

.method public getRawArray()[F
    .locals 0

    .line 371
    iget-object p0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    return-object p0
.end method

.method public resize(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 299
    iget v0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/text/AutoGrowArray$FloatArray;->ensureCapacity(I)V

    .line 301
    :cond_0
    iput p1, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    return-void
.end method

.method public set(IF)V
    .locals 0

    .line 354
    iget-object p0, p0, Landroid/text/AutoGrowArray$FloatArray;->mValues:[F

    aput p2, p0, p1

    return-void
.end method

.method public size()I
    .locals 0

    .line 361
    iget p0, p0, Landroid/text/AutoGrowArray$FloatArray;->mSize:I

    return p0
.end method
