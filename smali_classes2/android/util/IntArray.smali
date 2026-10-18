.class public Landroid/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 44
    invoke-direct {p0, v0}, Landroid/util/IntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 52
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    :goto_0
    const/4 p1, 0x0

    .line 56
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method private constructor <init>([II)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    .line 37
    array-length p1, p1

    const-string/jumbo v0, "size"

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method private checkBounds(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 228
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    if-le v0, p1, :cond_0

    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p0, p0, Landroid/util/IntArray;->mSize:I

    invoke-direct {v0, p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 148
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr p1, v0

    .line 150
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/2addr v1, v0

    if-le v1, p1, :cond_1

    move p1, v1

    .line 154
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object p1

    .line 155
    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput-object p1, p0, Landroid/util/IntArray;->mValues:[I

    :cond_2
    return-void
.end method

.method public static fromArray([II)Landroid/util/IntArray;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-static {p0}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([I)Landroid/util/IntArray;
    .locals 2

    .line 63
    new-instance v0, Landroid/util/IntArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/IntArray;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 1

    .line 92
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    invoke-virtual {p0, v0, p1}, Landroid/util/IntArray;->add(II)V

    return-void
.end method

.method public add(II)V
    .locals 4

    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 103
    iget v1, p0, Landroid/util/IntArray;->mSize:I

    sub-int/2addr v1, p1

    .line 104
    iget v2, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/IntArray;->mSize:I

    .line 105
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    if-eqz v1, :cond_0

    .line 109
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    :cond_0
    iget-object p0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, p0, p1

    return-void
.end method

.method public addAll(Landroid/util/IntArray;)V
    .locals 4

    .line 137
    iget v0, p1, Landroid/util/IntArray;->mSize:I

    .line 138
    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 140
    iget-object p1, p1, Landroid/util/IntArray;->mValues:[I

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    iget v2, p0, Landroid/util/IntArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget p1, p0, Landroid/util/IntArray;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method public binarySearch(I)I
    .locals 1

    .line 130
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget p0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p0, p1}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 164
    iput v0, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/IntArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 169
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    .line 170
    iget-object p0, p0, Landroid/util/IntArray;->mValues:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    iput-object p0, v0, Landroid/util/IntArray;->mValues:[I

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Landroid/util/IntArray;->clone()Landroid/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method public get(I)I
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 179
    iget-object p0, p0, Landroid/util/IntArray;->mValues:[I

    aget p0, p0, p1

    return p0
.end method

.method public indexOf(I)I
    .locals 3

    .line 195
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 197
    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public remove(I)V
    .locals 4

    .line 208
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 209
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/IntArray;->mValues:[I

    iget v3, p0, Landroid/util/IntArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget p1, p0, Landroid/util/IntArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method public resize(I)V
    .locals 3

    .line 79
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 80
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget-object v1, p0, Landroid/util/IntArray;->mValues:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    .line 83
    :cond_0
    iget v0, p0, Landroid/util/IntArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/IntArray;->ensureCapacity(I)V

    .line 85
    :goto_0
    iput p1, p0, Landroid/util/IntArray;->mSize:I

    return-void
.end method

.method public set(II)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Landroid/util/IntArray;->checkBounds(I)V

    .line 187
    iget-object p0, p0, Landroid/util/IntArray;->mValues:[I

    aput p2, p0, p1

    return-void
.end method

.method public size()I
    .locals 0

    .line 217
    iget p0, p0, Landroid/util/IntArray;->mSize:I

    return p0
.end method

.method public toArray()[I
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/util/IntArray;->mValues:[I

    iget p0, p0, Landroid/util/IntArray;->mSize:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method
