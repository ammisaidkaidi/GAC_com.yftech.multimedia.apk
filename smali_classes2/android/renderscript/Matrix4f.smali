.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 32
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 33
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 44
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 45
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length p0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private computeCofactor(II)F
    .locals 15

    move-object v0, p0

    add-int/lit8 v1, p1, 0x1

    .line 404
    rem-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p1, 0x2

    .line 405
    rem-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, p1, 0x3

    .line 406
    rem-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, p2, 0x1

    .line 407
    rem-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, p2, 0x2

    .line 408
    rem-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, p2, 0x3

    .line 409
    rem-int/lit8 v6, v6, 0x4

    .line 411
    iget-object v7, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v4, 0x4

    add-int v8, v1, v4

    aget v7, v7, v8

    iget-object v8, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v5, v5, 0x4

    add-int v9, v2, v5

    aget v8, v8, v9

    iget-object v10, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v6, 0x4

    add-int v11, v3, v6

    aget v10, v10, v11

    mul-float/2addr v8, v10

    iget-object v10, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int v12, v2, v6

    aget v10, v10, v12

    iget-object v13, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int v14, v3, v5

    aget v13, v13, v14

    mul-float/2addr v10, v13

    sub-float/2addr v8, v10

    mul-float/2addr v7, v8

    iget-object v8, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int/2addr v5, v1

    aget v5, v8, v5

    iget-object v8, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int/2addr v2, v4

    aget v8, v8, v2

    iget-object v10, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v10, v10, v11

    mul-float/2addr v8, v10

    iget-object v10, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v10, v10, v12

    iget-object v11, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int/2addr v3, v4

    aget v4, v11, v3

    mul-float/2addr v10, v4

    sub-float/2addr v8, v10

    mul-float/2addr v5, v8

    sub-float/2addr v7, v5

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-int/2addr v1, v6

    aget v1, v4, v1

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v4, v2

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v14

    mul-float/2addr v2, v4

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v9

    iget-object v0, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v0, v0, v3

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    add-float/2addr v7, v1

    add-int v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    neg-float v7, v7

    :cond_0
    return v7
.end method


# virtual methods
.method public get(II)F
    .locals 0

    .line 67
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    aget p0, p0, p1

    return p0
.end method

.method public getArray()[F
    .locals 0

    .line 55
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    return-object p0
.end method

.method public inverse()Z
    .locals 8

    .line 427
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 431
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v6, v4

    invoke-direct {p0, v2, v4}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    :cond_1
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v2, v1

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v2, v4

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v3, v4, v3

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v6, 0x3

    aget v4, v4, v6

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 439
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v3, v6

    if-gez v3, :cond_2

    return v1

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 445
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v4, v3

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v5
.end method

.method public inverseTranspose()Z
    .locals 8

    .line 456
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    .line 460
    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v2

    invoke-direct {p0, v2, v4}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_1
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v2, v1

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v2, v4

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v3

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v3, v5, v3

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0xc

    aget v3, v3, v4

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v5, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 467
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    return v1

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    :goto_2
    const/16 v2, 0x10

    if-ge v1, v2, :cond_3

    .line 473
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v4, v3

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 5

    .line 121
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 122
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 123
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 124
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 126
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 127
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 128
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    .line 129
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 131
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v3, v4, v3

    const/16 v4, 0x8

    aput v3, v0, v4

    .line 132
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/16 v3, 0x9

    aput v1, v0, v3

    .line 133
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object p1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget p1, p1, v4

    const/16 v1, 0xa

    aput p1, v0, v1

    .line 134
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xb

    aput v2, p1, v0

    .line 136
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xc

    aput v2, p1, v0

    .line 137
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xd

    aput v2, p1, v0

    .line 138
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xe

    aput v2, p1, v0

    .line 139
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p1, 0xf

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p0, p1

    return-void
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .locals 2

    .line 111
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length p0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 5

    .line 291
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 292
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p5

    sub-float v2, p2, p1

    div-float v3, v1, v2

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 293
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v3, p4, p3

    div-float/2addr v1, v3

    const/4 v4, 0x5

    aput v1, v0, v4

    .line 294
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p2, p1

    div-float/2addr p2, v2

    const/16 p1, 0x8

    aput p2, v0, p1

    .line 295
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p4, p3

    div-float/2addr p4, v3

    const/16 p2, 0x9

    aput p4, p1, p2

    .line 296
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float p2, p6, p5

    neg-float p2, p2

    sub-float p3, p6, p5

    div-float/2addr p2, p3

    const/16 p4, 0xa

    aput p2, p1, p4

    .line 297
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p2, 0xb

    const/high16 p4, -0x40800000    # -1.0f

    aput p4, p1, p2

    .line 298
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 p2, -0x40000000    # -2.0f

    mul-float/2addr p6, p2

    mul-float/2addr p6, p5

    div-float/2addr p6, p3

    const/16 p2, 0xe

    aput p6, p1, p2

    .line 299
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p1, 0xf

    const/4 p2, 0x0

    aput p2, p0, p1

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 84
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 85
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 89
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x4

    aput v2, v0, v3

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 92
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 94
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0x8

    aput v2, v0, v3

    .line 95
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0x9

    aput v2, v0, v3

    .line 96
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xa

    aput v1, v0, v3

    .line 97
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xb

    aput v2, v0, v3

    .line 99
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xc

    aput v2, v0, v3

    .line 100
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xd

    aput v2, v0, v3

    .line 101
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v3, 0xe

    aput v2, v0, v3

    .line 102
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xf

    aput v1, p0, v0

    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v3, v0

    :goto_1
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v3, v2, :cond_0

    .line 232
    invoke-virtual {p2, v1, v3}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v11

    .line 233
    invoke-virtual {p1, v3, v0}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v12

    mul-float/2addr v12, v11

    add-float/2addr v4, v12

    .line 234
    invoke-virtual {p1, v3, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v10

    mul-float/2addr v10, v11

    add-float/2addr v5, v10

    .line 235
    invoke-virtual {p1, v3, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v9

    mul-float/2addr v9, v11

    add-float/2addr v6, v9

    .line 236
    invoke-virtual {p1, v3, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v8

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 238
    :cond_0
    invoke-virtual {p0, v1, v0, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 239
    invoke-virtual {p0, v1, v10, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 240
    invoke-virtual {p0, v1, v9, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 241
    invoke-virtual {p0, v1, v8, v7}, Landroid/renderscript/Matrix4f;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 6

    .line 256
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 257
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v2, v1

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 258
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v3, p4, p3

    div-float/2addr v2, v3

    const/4 v4, 0x5

    aput v2, v0, v4

    .line 259
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v2, p6, p5

    const/high16 v4, -0x40000000    # -2.0f

    div-float/2addr v4, v2

    const/16 v5, 0xa

    aput v4, v0, v5

    .line 260
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v1

    const/16 p2, 0xc

    aput p1, v0, p2

    .line 261
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p4, p3

    neg-float p2, p4

    div-float/2addr p2, v3

    const/16 p3, 0xd

    aput p2, p1, p3

    .line 262
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float/2addr p6, p5

    neg-float p1, p6

    div-float/2addr p1, v2

    const/16 p2, 0xe

    aput p1, p0, p2

    return-void
.end method

.method public loadOrthoWindow(II)V
    .locals 7

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 276
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    return-void
.end method

.method public loadPerspective(FFFF)V
    .locals 7

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 311
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float v4, p3, p1

    neg-float v3, v4

    mul-float v1, v3, p2

    mul-float v2, v4, p2

    move-object v0, p0

    move v5, p3

    move v6, p4

    .line 315
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    return-void
.end method

.method public loadProjectionNormalized(II)V
    .locals 9

    .line 328
    new-instance v7, Landroid/renderscript/Matrix4f;

    invoke-direct {v7}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 329
    new-instance v8, Landroid/renderscript/Matrix4f;

    invoke-direct {v8}, Landroid/renderscript/Matrix4f;-><init>()V

    if-le p1, p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v2, p1, p2

    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    move-object v0, v7

    .line 333
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    int-to-float p1, p1

    div-float v4, p2, p1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    neg-float v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    move-object v0, v7

    .line 336
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    :goto_0
    const/high16 p1, 0x43340000    # 180.0f

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 339
    invoke-virtual {v8, p1, v0, p2, v0}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 340
    invoke-virtual {v7, v7, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    const/high16 p1, -0x40000000    # -2.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 342
    invoke-virtual {v8, p1, v1, p2}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 343
    invoke-virtual {v7, v7, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 345
    invoke-virtual {v8, v0, v0, v1}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 346
    invoke-virtual {v7, v7, v8}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 348
    invoke-virtual {p0, v7}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 9

    .line 153
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 154
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 155
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 156
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 157
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 158
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 159
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0xf

    aput v1, v0, v2

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v2, p1

    .line 161
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p1, v4

    .line 162
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float v2, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v2, v3

    mul-float v3, p4, p4

    add-float/2addr v2, v3

    float-to-double v2, v2

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    cmpl-float v3, v2, v1

    if-nez v3, :cond_0

    div-float v2, v1, v2

    mul-float/2addr p2, v2

    mul-float/2addr p3, v2

    mul-float/2addr p4, v2

    :cond_0
    sub-float/2addr v1, p1

    mul-float v2, p2, p3

    mul-float v3, p3, p4

    mul-float v4, p4, p2

    mul-float v5, p2, v0

    mul-float v6, p3, v0

    mul-float/2addr v0, p4

    .line 178
    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v8, 0x0

    mul-float/2addr p2, p2

    mul-float/2addr p2, v1

    add-float/2addr p2, p1

    aput p2, v7, v8

    .line 179
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v7, 0x4

    mul-float/2addr v2, v1

    sub-float v8, v2, v0

    aput v8, p2, v7

    .line 180
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v7, 0x8

    mul-float/2addr v4, v1

    add-float v8, v4, v6

    aput v8, p2, v7

    .line 181
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v7, 0x1

    add-float/2addr v2, v0

    aput v2, p2, v7

    .line 182
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v0, 0x5

    mul-float/2addr p3, p3

    mul-float/2addr p3, v1

    add-float/2addr p3, p1

    aput p3, p2, v0

    .line 183
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p3, 0x9

    mul-float/2addr v3, v1

    sub-float v0, v3, v5

    aput v0, p2, p3

    .line 184
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 p3, 0x2

    sub-float/2addr v4, v6

    aput v4, p2, p3

    .line 185
    iget-object p2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 p3, 0x6

    add-float/2addr v3, v5

    aput v3, p2, p3

    .line 186
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p2, 0xa

    mul-float/2addr p4, p4

    mul-float/2addr p4, v1

    add-float/2addr p4, p1

    aput p4, p0, p2

    return-void
.end method

.method public loadScale(FFF)V
    .locals 2

    .line 197
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 198
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 199
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v0, 0x5

    aput p2, p1, v0

    .line 200
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p1, 0xa

    aput p3, p0, p1

    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 213
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 214
    iget-object p1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v0, 0xd

    aput p2, p1, v0

    .line 215
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 p1, 0xe

    aput p3, p0, p1

    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .locals 1

    .line 357
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 358
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 359
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    .line 371
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 372
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 373
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    .line 385
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 386
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 387
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 77
    iget-object p0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p2

    aput p3, p0, p1

    return-void
.end method

.method public translate(FFF)V
    .locals 1

    .line 399
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 400
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 401
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public transpose()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 485
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    aget v3, v3, v4

    .line 486
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v6, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v7, v2, 0x4

    add-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v5, v4

    .line 487
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aput v3, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
