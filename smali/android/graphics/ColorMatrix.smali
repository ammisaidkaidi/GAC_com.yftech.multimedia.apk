.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.java"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 62
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 69
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 62
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 83
    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 62
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 76
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 275
    instance-of v0, p1, Landroid/graphics/ColorMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 280
    :cond_0
    check-cast p1, Landroid/graphics/ColorMatrix;

    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    move v0, v1

    :goto_0
    const/16 v2, 0x14

    if-ge v0, v2, :cond_2

    .line 282
    aget v2, p1, v0

    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aget v3, v3, v0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final getArray()[F
    .locals 0

    .line 89
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object p0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0

    .line 224
    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0

    .line 214
    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 101
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v0, 0x0

    .line 102
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([FF)V

    const/16 v0, 0x12

    const/high16 v1, 0x3f800000    # 1.0f

    .line 103
    aput v1, p0, v0

    const/16 v0, 0xc

    aput v1, p0, v0

    const/4 v0, 0x6

    aput v1, p0, v0

    const/4 v0, 0x0

    aput v1, p0, v0

    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .locals 2

    .line 110
    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public set([F)V
    .locals 2

    .line 117
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-static {p1, v0, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 10

    const/16 v0, 0x14

    if-eq p1, p0, :cond_1

    if-ne p2, p0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    goto :goto_1

    .line 184
    :cond_1
    :goto_0
    new-array v1, v0, [F

    .line 189
    :goto_1
    iget-object p1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    .line 190
    iget-object p2, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_2
    if-ge v3, v0, :cond_3

    move v5, v4

    move v4, v2

    :goto_3
    const/4 v6, 0x4

    if-ge v4, v6, :cond_2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v3, 0x0

    .line 194
    aget v7, p1, v7

    add-int/lit8 v8, v4, 0x0

    aget v8, p2, v8

    mul-float/2addr v7, v8

    add-int/lit8 v8, v3, 0x1

    aget v8, p1, v8

    add-int/lit8 v9, v4, 0x5

    aget v9, p2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v3, 0x2

    aget v8, p1, v8

    add-int/lit8 v9, v4, 0xa

    aget v9, p2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-int/lit8 v8, v3, 0x3

    aget v8, p1, v8

    add-int/lit8 v9, v4, 0xf

    aget v9, p2, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v5, 0x1

    add-int/lit8 v7, v3, 0x0

    .line 197
    aget v7, p1, v7

    aget v6, p2, v6

    mul-float/2addr v7, v6

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    const/16 v8, 0x9

    aget v8, p2, v8

    mul-float/2addr v6, v8

    add-float/2addr v7, v6

    add-int/lit8 v6, v3, 0x2

    aget v6, p1, v6

    const/16 v8, 0xe

    aget v8, p2, v8

    mul-float/2addr v6, v8

    add-float/2addr v7, v6

    add-int/lit8 v6, v3, 0x3

    aget v6, p1, v6

    const/16 v8, 0x13

    aget v8, p2, v8

    mul-float/2addr v6, v8

    add-float/2addr v7, v6

    add-int/lit8 v6, v3, 0x4

    aget v6, p1, v6

    add-float/2addr v7, v6

    aput v7, v1, v5

    add-int/lit8 v3, v3, 0x5

    goto :goto_2

    .line 202
    :cond_3
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    if-eq v1, p1, :cond_4

    .line 203
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method public setRGB2YUV()V
    .locals 2

    .line 252
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 253
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v0, 0x0

    const v1, 0x3e991687    # 0.299f

    .line 255
    aput v1, p0, v0

    const/4 v0, 0x1

    const v1, 0x3f1645a2    # 0.587f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3de978d5    # 0.114f

    aput v1, p0, v0

    const/4 v0, 0x5

    const v1, -0x41d335d2    # -0.16874f

    .line 256
    aput v1, p0, v0

    const/4 v0, 0x6

    const v1, -0x41566517    # -0.33126f

    aput v1, p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x7

    aput v0, p0, v1

    const/16 v1, 0xa

    .line 257
    aput v0, p0, v1

    const/16 v0, 0xb

    const v1, -0x4129a177    # -0.41869f

    aput v1, p0, v0

    const/16 v0, 0xc

    const v1, -0x42597a25    # -0.08131f

    aput v1, p0, v0

    return-void
.end method

.method public setRotate(IF)V
    .locals 4

    .line 145
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    float-to-double v0, p2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 147
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x6

    packed-switch p1, :pswitch_data_0

    .line 169
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 164
    :pswitch_0
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v2, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput p2, v2, v3

    aput p2, p1, v1

    .line 165
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 p2, 0x1

    aput v0, p1, p2

    .line 166
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 p1, 0x5

    neg-float p2, v0

    aput p2, p0, p1

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v3, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput p2, v3, v2

    aput p2, p1, v1

    .line 159
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 p2, 0x2

    neg-float v1, v0

    aput v1, p1, p2

    .line 160
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 p1, 0xa

    aput v0, p0, p1

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput p2, v1, v2

    aput p2, p1, v3

    .line 153
    iget-object p1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 p2, 0x7

    aput v0, p1, p2

    .line 154
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 p1, 0xb

    neg-float p2, v0

    aput p2, p0, p1

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSaturation(F)V
    .locals 5

    .line 235
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 236
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    const v1, 0x3e5a1cac    # 0.213f

    mul-float/2addr v1, v0

    const v2, 0x3f370a3d    # 0.715f

    mul-float/2addr v2, v0

    const v3, 0x3d9374bc    # 0.072f

    mul-float/2addr v0, v3

    add-float v3, v1, p1

    const/4 v4, 0x0

    .line 243
    aput v3, p0, v4

    const/4 v3, 0x1

    aput v2, p0, v3

    const/4 v3, 0x2

    aput v0, p0, v3

    const/4 v3, 0x5

    .line 244
    aput v1, p0, v3

    add-float v3, v2, p1

    const/4 v4, 0x6

    aput v3, p0, v4

    const/4 v3, 0x7

    aput v0, p0, v3

    const/16 v3, 0xa

    .line 245
    aput v1, p0, v3

    const/16 v1, 0xb

    aput v2, p0, v1

    add-float/2addr v0, p1

    const/16 p1, 0xc

    aput v0, p0, p1

    return-void
.end method

.method public setScale(FFFF)V
    .locals 2

    .line 125
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v0, 0x13

    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 128
    aput v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    aput p1, p0, v0

    const/4 p1, 0x6

    .line 131
    aput p2, p0, p1

    const/16 p1, 0xc

    .line 132
    aput p3, p0, p1

    const/16 p1, 0x12

    .line 133
    aput p4, p0, p1

    return-void
.end method

.method public setYUV2RGB()V
    .locals 3

    .line 264
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 265
    iget-object p0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v0, 0x2

    const v1, 0x3fb374bc    # 1.402f

    .line 267
    aput v1, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x5

    .line 268
    aput v0, p0, v1

    const/4 v1, 0x6

    const v2, -0x414fcce2    # -0.34414f

    aput v2, p0, v1

    const/4 v1, 0x7

    const v2, -0x40c92e1f    # -0.71414f

    aput v2, p0, v1

    const/16 v1, 0xa

    .line 269
    aput v0, p0, v1

    const/16 v0, 0xb

    const v1, 0x3fe2d0e5    # 1.772f

    aput v1, p0, v0

    const/16 v0, 0xc

    const/4 v1, 0x0

    aput v1, p0, v0

    return-void
.end method
