.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 30
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 31
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 42
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 43
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length p0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 0

    .line 65
    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aget p0, p0, p1

    return p0
.end method

.method public getArray()[F
    .locals 0

    .line 53
    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    return-object p0
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Landroid/renderscript/Matrix3f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length p0, p0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    .line 82
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 83
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 84
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 88
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x6

    aput v2, v0, v3

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 92
    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v0, 0x8

    aput v1, p0, v0

    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v3, v0

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v3, v2, :cond_0

    .line 213
    invoke-virtual {p2, v1, v3}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v9

    .line 214
    invoke-virtual {p1, v3, v0}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v4, v10

    .line 215
    invoke-virtual {p1, v3, v8}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v8

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    .line 216
    invoke-virtual {p1, v3, v7}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    :cond_0
    invoke-virtual {p0, v1, v0, v4}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 219
    invoke-virtual {p0, v1, v8, v5}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 220
    invoke-virtual {p0, v1, v7, v6}, Landroid/renderscript/Matrix3f;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 4

    .line 150
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 154
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 155
    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 156
    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    neg-float v2, v0

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 157
    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x3

    aput v0, v1, v2

    .line 158
    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v0, 0x4

    aput p1, p0, v0

    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 9

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v0, p1

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 117
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float/2addr v1, v2

    mul-float v2, p4, p4

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 119
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    div-float v1, v2, v1

    mul-float/2addr p2, v1

    mul-float/2addr p3, v1

    mul-float/2addr p4, v1

    :cond_0
    sub-float/2addr v2, p1

    mul-float v1, p2, p3

    mul-float v3, p3, p4

    mul-float v4, p4, p2

    mul-float v5, p2, v0

    mul-float v6, p3, v0

    mul-float/2addr v0, p4

    .line 133
    iget-object v7, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v8, 0x0

    mul-float/2addr p2, p2

    mul-float/2addr p2, v2

    add-float/2addr p2, p1

    aput p2, v7, v8

    .line 134
    iget-object p2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v7, 0x3

    mul-float/2addr v1, v2

    sub-float v8, v1, v0

    aput v8, p2, v7

    .line 135
    iget-object p2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v7, 0x6

    mul-float/2addr v4, v2

    add-float v8, v4, v6

    aput v8, p2, v7

    .line 136
    iget-object p2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v7, 0x1

    add-float/2addr v1, v0

    aput v1, p2, v7

    .line 137
    iget-object p2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v0, 0x4

    mul-float/2addr p3, p3

    mul-float/2addr p3, v2

    add-float/2addr p3, p1

    aput p3, p2, v0

    .line 138
    iget-object p2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 p3, 0x7

    mul-float/2addr v3, v2

    sub-float v0, v3, v5

    aput v0, p2, p3

    .line 139
    iget-object p2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 p3, 0x2

    sub-float/2addr v4, v6

    aput v4, p2, p3

    .line 140
    iget-object p2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 p3, 0x5

    add-float/2addr v3, v5

    aput v3, p2, p3

    .line 141
    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 p2, 0x8

    mul-float/2addr p4, p4

    mul-float/2addr p4, v2

    add-float/2addr p4, p1

    aput p4, p0, p2

    return-void
.end method

.method public loadScale(FF)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 169
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 170
    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 p1, 0x4

    aput p2, p0, p1

    return-void
.end method

.method public loadScale(FFF)V
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 182
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 183
    iget-object p1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v0, 0x4

    aput p2, p1, v0

    .line 184
    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 p1, 0x8

    aput p3, p0, p1

    return-void
.end method

.method public loadTranslate(FF)V
    .locals 2

    .line 195
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 196
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 197
    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 p1, 0x7

    aput p2, p0, p1

    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix3f;)V
    .locals 1

    .line 230
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 231
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix3f;->loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    .line 232
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->load(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(F)V
    .locals 1

    .line 257
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 258
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix3f;->loadRotate(F)V

    .line 259
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    .line 245
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 246
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix3f;->loadRotate(FFFF)V

    .line 247
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FF)V
    .locals 1

    .line 270
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 271
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadScale(FF)V

    .line 272
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    .line 284
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 285
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix3f;->loadScale(FFF)V

    .line 286
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 0

    .line 75
    iget-object p0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p2

    aput p3, p0, p1

    return-void
.end method

.method public translate(FF)V
    .locals 1

    .line 297
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 298
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadTranslate(FF)V

    .line 299
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public transpose()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 308
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v2

    aget v3, v3, v4

    .line 309
    iget-object v5, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v6, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v7, v0

    aget v6, v6, v7

    aput v6, v5, v4

    .line 310
    iget-object v4, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    aput v3, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
