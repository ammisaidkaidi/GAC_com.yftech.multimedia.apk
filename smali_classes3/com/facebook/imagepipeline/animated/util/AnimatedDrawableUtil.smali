.class public Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
.super Ljava/lang/Object;
.source "AnimatedDrawableUtil.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final FRAME_DURATION_MS_FOR_MIN:I = 0x64

.field private static final MIN_FRAME_DURATION_MS:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOutsideRange(III)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_4

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-gt p0, p1, :cond_2

    if-lt p2, p0, :cond_1

    if-le p2, p1, :cond_3

    :cond_1
    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    if-ge p2, p0, :cond_3

    if-le p2, p1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public fixFrameDurations([I)V
    .locals 2

    const/4 p0, 0x0

    .line 35
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    .line 36
    aget v0, p1, p0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/16 v0, 0x64

    .line 37
    aput v0, p1, p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getFrameForTimestampMs([II)I
    .locals 0

    .line 82
    invoke-static {p1, p2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_0

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_0
    return p0
.end method

.method public getFrameTimeStampsFromDurations([I)[I
    .locals 3

    .line 64
    array-length p0, p1

    new-array p0, p0, [I

    const/4 v0, 0x0

    move v1, v0

    .line 66
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 67
    aput v1, p0, v0

    .line 68
    aget v2, p1, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getSizeOfBitmap(Landroid/graphics/Bitmap;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 92
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    .line 93
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0

    .line 94
    :cond_0
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xc

    if-lt p0, v0, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public getTotalDurationFromFrameDurations([I)I
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 50
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_0

    .line 51
    aget v1, p1, p0

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
