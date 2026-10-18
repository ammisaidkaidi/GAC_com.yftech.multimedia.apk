.class public Landroid/util/LongArray;
.super Ljava/lang/Object;
.source "LongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final MIN_CAPACITY_INCREMENT:I = 0xc


# instance fields
.field private mSize:I

.field private mValues:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 48
    invoke-direct {p0, v0}, Landroid/util/LongArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 56
    sget-object p1, Llibcore/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    :goto_0
    const/4 p1, 0x0

    .line 60
    iput p1, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method private constructor <init>([JI)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    .line 41
    array-length p1, p1

    const-string/jumbo v0, "size"

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method private checkBounds(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 219
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    if-le v0, p1, :cond_0

    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    iget p0, p0, Landroid/util/LongArray;->mSize:I

    invoke-direct {v0, p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method public static elementsEqual(Landroid/util/LongArray;Landroid/util/LongArray;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 229
    :cond_0
    iget v2, p0, Landroid/util/LongArray;->mSize:I

    iget v3, p1, Landroid/util/LongArray;->mSize:I

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    move v2, v1

    .line 230
    :goto_0
    iget v3, p0, Landroid/util/LongArray;->mSize:I

    if-ge v2, v3, :cond_3

    .line 231
    invoke-virtual {p0, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    invoke-virtual {p1, v2}, Landroid/util/LongArray;->get(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 134
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr p1, v0

    .line 136
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

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

    .line 140
    :cond_1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object p1

    .line 141
    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iput-object p1, p0, Landroid/util/LongArray;->mValues:[J

    :cond_2
    return-void
.end method

.method public static fromArray([JI)Landroid/util/LongArray;
    .locals 0

    .line 74
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    invoke-static {p0}, Landroid/util/LongArray;->wrap([J)Landroid/util/LongArray;

    move-result-object p0

    return-object p0
.end method

.method public static wrap([J)Landroid/util/LongArray;
    .locals 2

    .line 67
    new-instance v0, Landroid/util/LongArray;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Landroid/util/LongArray;-><init>([JI)V

    return-object v0
.end method


# virtual methods
.method public add(IJ)V
    .locals 4

    const/4 v0, 0x1

    .line 106
    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 107
    iget v1, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v1, p1

    .line 108
    iget v2, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/util/LongArray;->mSize:I

    .line 109
    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    if-eqz v1, :cond_0

    .line 113
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v3, p1, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    :cond_0
    iget-object p0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, p0, p1

    return-void
.end method

.method public add(J)V
    .locals 1

    .line 96
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    invoke-virtual {p0, v0, p1, p2}, Landroid/util/LongArray;->add(IJ)V

    return-void
.end method

.method public addAll(Landroid/util/LongArray;)V
    .locals 4

    .line 123
    iget v0, p1, Landroid/util/LongArray;->mSize:I

    .line 124
    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 126
    iget-object p1, p1, Landroid/util/LongArray;->mValues:[J

    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    iget v2, p0, Landroid/util/LongArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget p1, p0, Landroid/util/LongArray;->mSize:I

    add-int/2addr p1, v0

    iput p1, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput v0, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public clone()Landroid/util/LongArray;
    .locals 2

    const/4 v0, 0x0

    .line 157
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :try_start_1
    iget-object p0, p0, Landroid/util/LongArray;->mValues:[J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    iput-object p0, v1, Landroid/util/LongArray;->mValues:[J
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object p0

    return-object p0
.end method

.method public get(I)J
    .locals 2

    .line 169
    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    .line 170
    iget-object p0, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v0, p0, p1

    return-wide v0
.end method

.method public indexOf(J)I
    .locals 5

    .line 186
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 188
    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    aget-wide v3, v2, v1

    cmp-long v2, v3, p1

    if-nez v2, :cond_0

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

    .line 199
    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    .line 200
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/LongArray;->mValues:[J

    iget v3, p0, Landroid/util/LongArray;->mSize:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget p1, p0, Landroid/util/LongArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public resize(I)V
    .locals 4

    .line 83
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 84
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget-object v1, p0, Landroid/util/LongArray;->mValues:[J

    array-length v1, v1

    const-wide/16 v2, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    goto :goto_0

    .line 87
    :cond_0
    iget v0, p0, Landroid/util/LongArray;->mSize:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Landroid/util/LongArray;->ensureCapacity(I)V

    .line 89
    :goto_0
    iput p1, p0, Landroid/util/LongArray;->mSize:I

    return-void
.end method

.method public set(IJ)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Landroid/util/LongArray;->checkBounds(I)V

    .line 178
    iget-object p0, p0, Landroid/util/LongArray;->mValues:[J

    aput-wide p2, p0, p1

    return-void
.end method

.method public size()I
    .locals 0

    .line 208
    iget p0, p0, Landroid/util/LongArray;->mSize:I

    return p0
.end method

.method public toArray()[J
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/util/LongArray;->mValues:[J

    iget p0, p0, Landroid/util/LongArray;->mSize:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    return-object p0
.end method
