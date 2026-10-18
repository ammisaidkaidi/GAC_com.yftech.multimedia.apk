.class public Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;
.super Ljava/lang/Object;
.source "Keyframes.java"


# static fields
.field private static final PRECISION:F = 0.5f


# instance fields
.field private mAngle:[F

.field private mMaxX:F

.field private mMaxY:F

.field private mNumPoints:I

.field private mTemp:Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-direct {p0, p1}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->initPath(Landroid/graphics/Path;)V

    .line 24
    new-instance p1, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    invoke-direct {p1}, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;-><init>()V

    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mTemp:Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    return-void
.end method

.method private fixAngle(F)F
    .locals 1

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const/high16 v0, 0x43b40000    # 360.0f

    if-gez p0, :cond_0

    add-float/2addr p1, v0

    :cond_0
    cmpl-float p0, p1, v0

    if-lez p0, :cond_1

    rem-float/2addr p1, v0

    :cond_1
    return p1
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 14

    if-eqz p1, :cond_4

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 31
    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 32
    new-array p1, v1, [F

    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mX:[F

    .line 33
    new-array p1, v1, [F

    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mY:[F

    .line 34
    new-array p1, v1, [F

    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mAngle:[F

    .line 36
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    const/high16 v2, 0x3f000000    # 0.5f

    div-float v2, p1, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 38
    new-array v4, v2, [F

    .line 39
    new-array v5, v2, [F

    .line 40
    new-array v6, v2, [F

    const/4 v7, 0x2

    .line 41
    new-array v8, v7, [F

    .line 42
    new-array v7, v7, [F

    move v9, v1

    :goto_0
    if-ge v9, v2, :cond_3

    int-to-float v10, v9

    mul-float/2addr v10, p1

    add-int/lit8 v11, v2, -0x1

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 45
    invoke-virtual {v0, v10, v8, v7}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 46
    aget v10, v8, v1

    iget v11, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mMaxX:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1

    .line 47
    aget v10, v8, v1

    iput v10, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mMaxX:F

    .line 49
    :cond_1
    aget v10, v8, v3

    iget v11, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mMaxY:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 50
    aget v10, v8, v3

    iput v10, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mMaxY:F

    .line 52
    :cond_2
    aget v10, v8, v1

    aput v10, v4, v9

    .line 53
    aget v10, v8, v3

    aput v10, v5, v9

    .line 54
    aget v10, v7, v3

    float-to-double v10, v10

    aget v12, v7, v1

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v10, v12

    double-to-float v10, v10

    invoke-direct {p0, v10}, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->fixAngle(F)F

    move-result v10

    aput v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 56
    :cond_3
    iget p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mNumPoints:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mNumPoints:I

    .line 58
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mX:[F

    array-length p1, p1

    array-length v2, v4

    add-int/2addr p1, v2

    new-array p1, p1, [F

    .line 59
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mX:[F

    iget-object v3, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mX:[F

    array-length v3, v3

    invoke-static {v2, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mX:[F

    array-length v2, v2

    array-length v3, v4

    invoke-static {v4, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mX:[F

    .line 63
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mY:[F

    array-length p1, p1

    array-length v2, v5

    add-int/2addr p1, v2

    new-array p1, p1, [F

    .line 64
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mY:[F

    iget-object v3, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mY:[F

    array-length v3, v3

    invoke-static {v2, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mY:[F

    array-length v2, v2

    array-length v3, v5

    invoke-static {v5, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mY:[F

    .line 68
    iget-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mAngle:[F

    array-length p1, p1

    array-length v2, v6

    add-int/2addr p1, v2

    new-array p1, p1, [F

    .line 69
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mAngle:[F

    iget-object v3, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mAngle:[F

    array-length v3, v3

    invoke-static {v2, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mAngle:[F

    array-length v2, v2

    array-length v3, v6

    invoke-static {v6, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iput-object p1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mAngle:[F

    .line 72
    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "path is empty!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getMaxX()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mMaxX:F

    float-to-int p0, p0

    return p0
.end method

.method public getMaxY()I
    .locals 0

    .line 97
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mMaxY:F

    float-to-int p0, p0

    return p0
.end method

.method public getPathLength()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mNumPoints:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getValue(F)Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;
    .locals 4
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget v0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mNumPoints:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 105
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mTemp:Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mX:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mY:[F

    aget v2, v2, p1

    iget-object v3, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mAngle:[F

    aget p1, v3, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->set(FFF)V

    .line 106
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mTemp:Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(I)Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mTemp:Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    iget-object v1, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mX:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mY:[F

    aget v2, v2, p1

    iget-object v3, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mAngle:[F

    aget p1, v3, p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;->set(FFF)V

    .line 112
    iget-object p0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mTemp:Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    return-object p0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mX:[F

    .line 123
    iput-object v0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mY:[F

    .line 124
    iput-object v0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mAngle:[F

    .line 125
    iput-object v0, p0, Lcom/wuyr/pathlayoutmanager/keyframes/Keyframes;->mTemp:Lcom/wuyr/pathlayoutmanager/keyframes/PosTan;

    return-void
.end method
