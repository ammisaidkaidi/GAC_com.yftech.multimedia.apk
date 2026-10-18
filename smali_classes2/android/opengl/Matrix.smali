.class public Landroid/opengl/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# static fields
.field private static final sTemp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 41
    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/Matrix;->sTemp:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static frustumM([FIFFFFFF)V
    .locals 7

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_4

    cmpl-float v0, p5, p4

    if-eqz v0, :cond_3

    cmpl-float v0, p6, p7

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v1, p6, v0

    if-lez v1, :cond_1

    cmpg-float v1, p7, v0

    if-lez v1, :cond_0

    sub-float v1, p3, p2

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    sub-float v3, p5, p4

    div-float v3, v2, v3

    sub-float v4, p6, p7

    div-float/2addr v2, v4

    mul-float v4, p6, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    mul-float v6, p6, v3

    mul-float/2addr v6, v5

    add-float/2addr p3, p2

    mul-float/2addr p3, v1

    add-float/2addr p5, p4

    mul-float/2addr p5, v3

    add-float p2, p7, p6

    mul-float/2addr p2, v2

    mul-float/2addr p7, p6

    mul-float/2addr p7, v2

    mul-float/2addr p7, v5

    add-int/lit8 p4, p1, 0x0

    .line 350
    aput v4, p0, p4

    add-int/lit8 p4, p1, 0x5

    .line 351
    aput v6, p0, p4

    add-int/lit8 p4, p1, 0x8

    .line 352
    aput p3, p0, p4

    add-int/lit8 p3, p1, 0x9

    .line 353
    aput p5, p0, p3

    add-int/lit8 p3, p1, 0xa

    .line 354
    aput p2, p0, p3

    add-int/lit8 p2, p1, 0xe

    .line 355
    aput p7, p0, p2

    add-int/lit8 p2, p1, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    .line 356
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x1

    .line 357
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x2

    .line 358
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x3

    .line 359
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x4

    .line 360
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x6

    .line 361
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0x7

    .line 362
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0xc

    .line 363
    aput v0, p0, p2

    add-int/lit8 p2, p1, 0xd

    .line 364
    aput v0, p0, p2

    add-int/lit8 p1, p1, 0xf

    .line 365
    aput v0, p0, p1

    return-void

    .line 339
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "far <= 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 336
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "near <= 0.0f"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "near == far"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 330
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "top == bottom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 327
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left == right"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static invertM([FI[FI)Z
    .locals 39

    add-int/lit8 v4, p3, 0x0

    .line 140
    aget v4, p2, v4

    add-int/lit8 v5, p3, 0x1

    .line 141
    aget v5, p2, v5

    add-int/lit8 v6, p3, 0x2

    .line 142
    aget v6, p2, v6

    add-int/lit8 v7, p3, 0x3

    .line 143
    aget v7, p2, v7

    add-int/lit8 v8, p3, 0x4

    .line 145
    aget v8, p2, v8

    add-int/lit8 v9, p3, 0x5

    .line 146
    aget v9, p2, v9

    add-int/lit8 v10, p3, 0x6

    .line 147
    aget v10, p2, v10

    add-int/lit8 v11, p3, 0x7

    .line 148
    aget v11, p2, v11

    add-int/lit8 v12, p3, 0x8

    .line 150
    aget v12, p2, v12

    add-int/lit8 v13, p3, 0x9

    .line 151
    aget v13, p2, v13

    add-int/lit8 v14, p3, 0xa

    .line 152
    aget v14, p2, v14

    add-int/lit8 v15, p3, 0xb

    .line 153
    aget v15, p2, v15

    add-int/lit8 v16, p3, 0xc

    .line 155
    aget v16, p2, v16

    add-int/lit8 v17, p3, 0xd

    .line 156
    aget v17, p2, v17

    add-int/lit8 v18, p3, 0xe

    .line 157
    aget v18, p2, v18

    add-int/lit8 v3, p3, 0xf

    .line 158
    aget v2, p2, v3

    mul-float v3, v14, v2

    mul-float v19, v18, v15

    mul-float v20, v10, v2

    mul-float v21, v18, v11

    mul-float v22, v10, v15

    mul-float v23, v14, v11

    mul-float v24, v6, v2

    mul-float v25, v18, v7

    mul-float v26, v6, v15

    mul-float v27, v14, v7

    mul-float v28, v6, v11

    mul-float v29, v10, v7

    mul-float v30, v3, v9

    mul-float v31, v21, v13

    add-float v30, v30, v31

    mul-float v31, v22, v17

    add-float v30, v30, v31

    mul-float v31, v19, v9

    mul-float v32, v20, v13

    add-float v31, v31, v32

    mul-float v32, v23, v17

    add-float v31, v31, v32

    sub-float v30, v30, v31

    mul-float v31, v19, v5

    mul-float v32, v24, v13

    add-float v31, v31, v32

    mul-float v32, v27, v17

    add-float v31, v31, v32

    mul-float v32, v3, v5

    mul-float v33, v25, v13

    add-float v32, v32, v33

    mul-float v33, v26, v17

    add-float v32, v32, v33

    sub-float v31, v31, v32

    mul-float v32, v20, v5

    mul-float v33, v25, v9

    add-float v32, v32, v33

    mul-float v33, v28, v17

    add-float v32, v32, v33

    mul-float v33, v21, v5

    mul-float v34, v24, v9

    add-float v33, v33, v34

    mul-float v34, v29, v17

    add-float v33, v33, v34

    sub-float v32, v32, v33

    mul-float v33, v23, v5

    mul-float v34, v26, v9

    add-float v33, v33, v34

    mul-float v34, v29, v13

    add-float v33, v33, v34

    mul-float v34, v22, v5

    mul-float v35, v27, v9

    add-float v34, v34, v35

    mul-float v35, v28, v13

    add-float v34, v34, v35

    sub-float v33, v33, v34

    mul-float v34, v19, v8

    mul-float v35, v20, v12

    add-float v34, v34, v35

    mul-float v35, v23, v16

    add-float v34, v34, v35

    mul-float v35, v3, v8

    mul-float v36, v21, v12

    add-float v35, v35, v36

    mul-float v36, v22, v16

    add-float v35, v35, v36

    sub-float v34, v34, v35

    mul-float/2addr v3, v4

    mul-float v35, v25, v12

    add-float v3, v3, v35

    mul-float v35, v26, v16

    add-float v3, v3, v35

    mul-float v19, v19, v4

    mul-float v35, v24, v12

    add-float v19, v19, v35

    mul-float v35, v27, v16

    add-float v19, v19, v35

    sub-float v3, v3, v19

    mul-float v21, v21, v4

    mul-float v24, v24, v8

    add-float v21, v21, v24

    mul-float v19, v29, v16

    add-float v21, v21, v19

    mul-float v20, v20, v4

    mul-float v25, v25, v8

    add-float v20, v20, v25

    mul-float v19, v28, v16

    add-float v20, v20, v19

    sub-float v21, v21, v20

    mul-float v22, v22, v4

    mul-float v27, v27, v8

    add-float v22, v22, v27

    mul-float v28, v28, v12

    add-float v22, v22, v28

    mul-float v23, v23, v4

    mul-float v26, v26, v8

    add-float v23, v23, v26

    mul-float v29, v29, v12

    add-float v23, v23, v29

    sub-float v22, v22, v23

    mul-float v19, v12, v17

    mul-float v20, v16, v13

    mul-float v23, v8, v17

    mul-float v24, v16, v9

    mul-float v25, v8, v13

    mul-float v26, v12, v9

    mul-float v17, v17, v4

    mul-float v27, v16, v5

    mul-float/2addr v13, v4

    mul-float v28, v12, v5

    mul-float/2addr v9, v4

    mul-float/2addr v5, v8

    mul-float v29, v19, v11

    mul-float v35, v24, v15

    add-float v29, v29, v35

    mul-float v35, v25, v2

    add-float v29, v29, v35

    mul-float v35, v20, v11

    mul-float v36, v23, v15

    add-float v35, v35, v36

    mul-float v36, v26, v2

    add-float v35, v35, v36

    sub-float v29, v29, v35

    mul-float v35, v20, v7

    mul-float v36, v17, v15

    add-float v35, v35, v36

    mul-float v36, v28, v2

    add-float v35, v35, v36

    mul-float v36, v19, v7

    mul-float v37, v27, v15

    add-float v36, v36, v37

    mul-float v37, v13, v2

    add-float v36, v36, v37

    sub-float v35, v35, v36

    mul-float v36, v23, v7

    mul-float v37, v27, v11

    add-float v36, v36, v37

    mul-float v37, v9, v2

    add-float v36, v36, v37

    mul-float v37, v24, v7

    mul-float v38, v17, v11

    add-float v37, v37, v38

    mul-float/2addr v2, v5

    add-float v37, v37, v2

    sub-float v36, v36, v37

    mul-float v2, v26, v7

    mul-float v37, v13, v11

    add-float v2, v2, v37

    mul-float v37, v5, v15

    add-float v2, v2, v37

    mul-float v7, v7, v25

    mul-float v11, v11, v28

    add-float/2addr v7, v11

    mul-float/2addr v15, v9

    add-float/2addr v7, v15

    sub-float/2addr v2, v7

    mul-float v7, v23, v14

    mul-float v11, v26, v18

    add-float/2addr v7, v11

    mul-float v11, v20, v10

    add-float/2addr v7, v11

    mul-float v11, v25, v18

    mul-float v15, v19, v10

    add-float/2addr v11, v15

    mul-float v15, v24, v14

    add-float/2addr v11, v15

    sub-float/2addr v7, v11

    mul-float v11, v13, v18

    mul-float v19, v19, v6

    add-float v11, v11, v19

    mul-float v15, v27, v14

    add-float/2addr v11, v15

    mul-float v15, v17, v14

    mul-float v19, v28, v18

    add-float v15, v15, v19

    mul-float v20, v20, v6

    add-float v15, v15, v20

    sub-float/2addr v11, v15

    mul-float v17, v17, v10

    mul-float v15, v5, v18

    add-float v17, v17, v15

    mul-float v24, v24, v6

    add-float v17, v17, v24

    mul-float v18, v18, v9

    mul-float v23, v23, v6

    add-float v18, v18, v23

    mul-float v27, v27, v10

    add-float v18, v18, v27

    sub-float v17, v17, v18

    mul-float/2addr v9, v14

    mul-float v25, v25, v6

    add-float v9, v9, v25

    mul-float v28, v28, v10

    add-float v9, v9, v28

    mul-float/2addr v13, v10

    mul-float/2addr v5, v14

    add-float/2addr v13, v5

    mul-float v26, v26, v6

    add-float v13, v13, v26

    sub-float/2addr v9, v13

    mul-float v4, v4, v30

    mul-float v8, v8, v31

    add-float/2addr v4, v8

    mul-float v12, v12, v32

    add-float/2addr v4, v12

    mul-float v16, v16, v33

    add-float v4, v4, v16

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v5, v4

    mul-float v30, v30, v5

    .line 234
    aput v30, p0, p1

    add-int/lit8 v4, p1, 0x1

    mul-float v31, v31, v5

    .line 235
    aput v31, p0, v4

    add-int/lit8 v4, p1, 0x2

    mul-float v32, v32, v5

    .line 236
    aput v32, p0, v4

    add-int/lit8 v4, p1, 0x3

    mul-float v33, v33, v5

    .line 237
    aput v33, p0, v4

    add-int/lit8 v4, p1, 0x4

    mul-float v34, v34, v5

    .line 239
    aput v34, p0, v4

    add-int/lit8 v4, p1, 0x5

    mul-float/2addr v3, v5

    .line 240
    aput v3, p0, v4

    add-int/lit8 v3, p1, 0x6

    mul-float v21, v21, v5

    .line 241
    aput v21, p0, v3

    add-int/lit8 v3, p1, 0x7

    mul-float v22, v22, v5

    .line 242
    aput v22, p0, v3

    add-int/lit8 v3, p1, 0x8

    mul-float v29, v29, v5

    .line 244
    aput v29, p0, v3

    add-int/lit8 v3, p1, 0x9

    mul-float v35, v35, v5

    .line 245
    aput v35, p0, v3

    add-int/lit8 v3, p1, 0xa

    mul-float v36, v36, v5

    .line 246
    aput v36, p0, v3

    add-int/lit8 v3, p1, 0xb

    mul-float/2addr v2, v5

    .line 247
    aput v2, p0, v3

    add-int/lit8 v2, p1, 0xc

    mul-float/2addr v7, v5

    .line 249
    aput v7, p0, v2

    add-int/lit8 v2, p1, 0xd

    mul-float/2addr v11, v5

    .line 250
    aput v11, p0, v2

    add-int/lit8 v2, p1, 0xe

    mul-float v17, v17, v5

    .line 251
    aput v17, p0, v2

    add-int/lit8 v1, p1, 0xf

    mul-float/2addr v9, v5

    .line 252
    aput v9, p0, v1

    const/4 v0, 0x1

    return v0
.end method

.method public static length(FFF)F
    .locals 0

    mul-float/2addr p0, p0

    mul-float/2addr p1, p1

    add-float/2addr p0, p1

    mul-float/2addr p2, p2

    add-float/2addr p0, p2

    float-to-double p0, p0

    .line 415
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static native multiplyMM([FI[FI[FI)V
.end method

.method public static native multiplyMV([FI[FI[FI)V
.end method

.method public static orthoM([FIFFFFFF)V
    .locals 7

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_2

    cmpl-float v0, p4, p5

    if-eqz v0, :cond_1

    cmpl-float v0, p6, p7

    if-eqz v0, :cond_0

    sub-float v0, p3, p2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sub-float v2, p5, p4

    div-float v2, v1, v2

    sub-float v3, p7, p6

    div-float v3, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v0, v4

    mul-float/2addr v4, v2

    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v3

    add-float/2addr p3, p2

    neg-float p2, p3

    mul-float/2addr p2, v0

    add-float/2addr p5, p4

    neg-float p3, p5

    mul-float/2addr p3, v2

    add-float/2addr p7, p6

    neg-float p4, p7

    mul-float/2addr p4, v3

    add-int/lit8 p5, p1, 0x0

    .line 291
    aput v5, p0, p5

    add-int/lit8 p5, p1, 0x5

    .line 292
    aput v4, p0, p5

    add-int/lit8 p5, p1, 0xa

    .line 293
    aput v6, p0, p5

    add-int/lit8 p5, p1, 0xc

    .line 294
    aput p2, p0, p5

    add-int/lit8 p2, p1, 0xd

    .line 295
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xe

    .line 296
    aput p4, p0, p2

    add-int/lit8 p2, p1, 0xf

    .line 297
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x1

    const/4 p3, 0x0

    .line 298
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    .line 299
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x3

    .line 300
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x4

    .line 301
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x6

    .line 302
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x7

    .line 303
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x8

    .line 304
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x9

    .line 305
    aput p3, p0, p2

    add-int/lit8 p1, p1, 0xb

    .line 306
    aput p3, p0, p1

    return-void

    .line 279
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "near == far"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 276
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bottom == top"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 273
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left == right"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static perspectiveM([FIFFFF)V
    .locals 4

    float-to-double v0, p2

    const-wide v2, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v0, v2

    .line 382
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p2, v0, p2

    sub-float v1, p4, p5

    div-float/2addr v0, v1

    add-int/lit8 v1, p1, 0x0

    div-float p3, p2, p3

    .line 385
    aput p3, p0, v1

    add-int/lit8 p3, p1, 0x1

    const/4 v1, 0x0

    .line 386
    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x2

    .line 387
    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x3

    .line 388
    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x4

    .line 390
    aput v1, p0, p3

    add-int/lit8 p3, p1, 0x5

    .line 391
    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x6

    .line 392
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x7

    .line 393
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    .line 395
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    .line 396
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0xa

    add-float p3, p5, p4

    mul-float/2addr p3, v0

    .line 397
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    .line 398
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0xc

    .line 400
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0xd

    .line 401
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0xe

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p5, p3

    mul-float/2addr p5, p4

    mul-float/2addr p5, v0

    .line 402
    aput p5, p0, p2

    add-int/lit8 p1, p1, 0xf

    .line 403
    aput v1, p0, p1

    return-void
.end method

.method public static rotateM([FIFFFF)V
    .locals 9

    .line 559
    sget-object v0, Landroid/opengl/Matrix;->sTemp:[F

    monitor-enter v0

    .line 560
    :try_start_0
    sget-object v1, Landroid/opengl/Matrix;->sTemp:[F

    const/4 v2, 0x0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 561
    sget-object v3, Landroid/opengl/Matrix;->sTemp:[F

    const/16 v4, 0x10

    sget-object v7, Landroid/opengl/Matrix;->sTemp:[F

    const/4 v8, 0x0

    move-object v5, p0

    move v6, p1

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 562
    sget-object p2, Landroid/opengl/Matrix;->sTemp:[F

    const/16 p3, 0x10

    invoke-static {p2, p3, p0, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static rotateM([FI[FIFFFF)V
    .locals 10

    .line 540
    sget-object v1, Landroid/opengl/Matrix;->sTemp:[F

    monitor-enter v1

    .line 541
    :try_start_0
    sget-object v2, Landroid/opengl/Matrix;->sTemp:[F

    const/4 v3, 0x0

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 542
    sget-object v8, Landroid/opengl/Matrix;->sTemp:[F

    const/4 v9, 0x0

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move v7, p3

    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 543
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static scaleM([FIFFF)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    .line 472
    aget v2, p0, v1

    mul-float/2addr v2, p2

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x4

    .line 473
    aget v3, p0, v2

    mul-float/2addr v3, p3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x8

    .line 474
    aget v2, p0, v1

    mul-float/2addr v2, p4

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static scaleM([FI[FIFFF)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int v2, p3, v0

    .line 452
    aget v3, p2, v2

    mul-float/2addr v3, p4

    aput v3, p0, v1

    add-int/lit8 v3, v1, 0x4

    add-int/lit8 v4, v2, 0x4

    .line 453
    aget v4, p2, v4

    mul-float/2addr v4, p5

    aput v4, p0, v3

    add-int/lit8 v3, v1, 0x8

    add-int/lit8 v4, v2, 0x8

    .line 454
    aget v4, p2, v4

    mul-float/2addr v4, p6

    aput v4, p0, v3

    add-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, v2, 0xc

    .line 455
    aget v2, p2, v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setIdentityM([FI)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    const/4 v3, 0x0

    .line 426
    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v2, :cond_1

    add-int v1, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 429
    aput v3, p0, v1

    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static setLookAtM([FIFFFFFFFFF)V
    .locals 5

    sub-float/2addr p5, p2

    sub-float/2addr p6, p3

    sub-float/2addr p7, p4

    .line 710
    invoke-static {p5, p6, p7}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    mul-float/2addr p5, v0

    mul-float/2addr p6, v0

    mul-float/2addr p7, v0

    mul-float v0, p6, p10

    mul-float v2, p7, p9

    sub-float/2addr v0, v2

    mul-float v2, p7, p8

    mul-float/2addr p10, p5

    sub-float/2addr v2, p10

    mul-float/2addr p9, p5

    mul-float/2addr p8, p6

    sub-float/2addr p9, p8

    .line 721
    invoke-static {v0, v2, p9}, Landroid/opengl/Matrix;->length(FFF)F

    move-result p8

    div-float p8, v1, p8

    mul-float/2addr v0, p8

    mul-float/2addr v2, p8

    mul-float/2addr p9, p8

    mul-float p8, v2, p7

    mul-float p10, p9, p6

    sub-float/2addr p8, p10

    mul-float p10, p9, p5

    mul-float v3, v0, p7

    sub-float/2addr p10, v3

    mul-float v3, v0, p6

    mul-float v4, v2, p5

    sub-float/2addr v3, v4

    add-int/lit8 v4, p1, 0x0

    .line 731
    aput v0, p0, v4

    add-int/lit8 v0, p1, 0x1

    .line 732
    aput p8, p0, v0

    add-int/lit8 p8, p1, 0x2

    neg-float p5, p5

    .line 733
    aput p5, p0, p8

    add-int/lit8 p5, p1, 0x3

    const/4 p8, 0x0

    .line 734
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0x4

    .line 736
    aput v2, p0, p5

    add-int/lit8 p5, p1, 0x5

    .line 737
    aput p10, p0, p5

    add-int/lit8 p5, p1, 0x6

    neg-float p6, p6

    .line 738
    aput p6, p0, p5

    add-int/lit8 p5, p1, 0x7

    .line 739
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0x8

    .line 741
    aput p9, p0, p5

    add-int/lit8 p5, p1, 0x9

    .line 742
    aput v3, p0, p5

    add-int/lit8 p5, p1, 0xa

    neg-float p6, p7

    .line 743
    aput p6, p0, p5

    add-int/lit8 p5, p1, 0xb

    .line 744
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xc

    .line 746
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xd

    .line 747
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xe

    .line 748
    aput p8, p0, p5

    add-int/lit8 p5, p1, 0xf

    .line 749
    aput v1, p0, p5

    neg-float p2, p2

    neg-float p3, p3

    neg-float p4, p4

    .line 751
    invoke-static {p0, p1, p2, p3, p4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public static setRotateEulerM([FIFFF)V
    .locals 8

    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    mul-float/2addr p3, v0

    mul-float/2addr p4, v0

    float-to-double v0, p2

    .line 651
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 652
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p3

    .line 653
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p3, v3

    .line 654
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, p4

    .line 655
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float p4, v4

    .line 656
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, p2, v1

    mul-float v4, v0, v1

    add-int/lit8 v5, p1, 0x0

    mul-float v6, p3, p4

    .line 660
    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x1

    neg-float v6, p3

    mul-float/2addr v6, v2

    .line 661
    aput v6, p0, v5

    add-int/lit8 v5, p1, 0x2

    .line 662
    aput v1, p0, v5

    add-int/lit8 v1, p1, 0x3

    const/4 v5, 0x0

    .line 663
    aput v5, p0, v1

    add-int/lit8 v1, p1, 0x4

    mul-float v6, v3, p4

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    .line 665
    aput v6, p0, v1

    add-int/lit8 v1, p1, 0x5

    neg-float v3, v3

    mul-float/2addr v3, v2

    mul-float v6, p2, p4

    add-float/2addr v3, v6

    .line 666
    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x6

    neg-float v3, v0

    mul-float/2addr v3, p3

    .line 667
    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x7

    .line 668
    aput v5, p0, v1

    add-int/lit8 v1, p1, 0x8

    neg-float v3, v4

    mul-float/2addr v3, p4

    mul-float v6, v0, v2

    add-float/2addr v3, v6

    .line 670
    aput v3, p0, v1

    add-int/lit8 v1, p1, 0x9

    mul-float/2addr v4, v2

    mul-float/2addr v0, p4

    add-float/2addr v4, v0

    .line 671
    aput v4, p0, v1

    add-int/lit8 p4, p1, 0xa

    mul-float/2addr p2, p3

    .line 672
    aput p2, p0, p4

    add-int/lit8 p2, p1, 0xb

    .line 673
    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xc

    .line 675
    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xd

    .line 676
    aput v5, p0, p2

    add-int/lit8 p2, p1, 0xe

    .line 677
    aput v5, p0, p2

    add-int/lit8 p1, p1, 0xf

    const/high16 p2, 0x3f800000    # 1.0f

    .line 678
    aput p2, p0, p1

    return-void
.end method

.method public static setRotateM([FIFFFF)V
    .locals 8

    add-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    .line 582
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x7

    .line 583
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xb

    .line 584
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xc

    .line 585
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xd

    .line 586
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xe

    .line 587
    aput v1, p0, v0

    add-int/lit8 v0, p1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    .line 588
    aput v2, p0, v0

    const v0, 0x3c8efa35

    mul-float/2addr p2, v0

    float-to-double v3, p2

    .line 590
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float p2, v5

    .line 591
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    cmpl-float v3, v2, p3

    if-nez v3, :cond_0

    cmpl-float v3, v1, p4

    if-nez v3, :cond_0

    cmpl-float v3, v1, p5

    if-nez v3, :cond_0

    add-int/lit8 p3, p1, 0x5

    .line 593
    aput v0, p0, p3

    add-int/lit8 p3, p1, 0xa

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x6

    .line 594
    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x9

    neg-float p2, p2

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x1

    .line 595
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x2

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x4

    .line 596
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    aput v1, p0, p2

    add-int/lit8 p1, p1, 0x0

    .line 597
    aput v2, p0, p1

    goto/16 :goto_0

    :cond_0
    cmpl-float v3, v1, p3

    if-nez v3, :cond_1

    cmpl-float v4, v2, p4

    if-nez v4, :cond_1

    cmpl-float v4, v1, p5

    if-nez v4, :cond_1

    add-int/lit8 p3, p1, 0x0

    .line 599
    aput v0, p0, p3

    add-int/lit8 p3, p1, 0xa

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x8

    .line 600
    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x2

    neg-float p2, p2

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x1

    .line 601
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x4

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x6

    .line 602
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    add-int/lit8 p1, p1, 0x5

    .line 603
    aput v2, p0, p1

    goto/16 :goto_0

    :cond_1
    if-nez v3, :cond_2

    cmpl-float v3, v1, p4

    if-nez v3, :cond_2

    cmpl-float v3, v2, p5

    if-nez v3, :cond_2

    add-int/lit8 p3, p1, 0x0

    .line 605
    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x5

    aput v0, p0, p3

    add-int/lit8 p3, p1, 0x1

    .line 606
    aput p2, p0, p3

    add-int/lit8 p3, p1, 0x4

    neg-float p2, p2

    aput p2, p0, p3

    add-int/lit8 p2, p1, 0x2

    .line 607
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x6

    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x8

    .line 608
    aput v1, p0, p2

    add-int/lit8 p2, p1, 0x9

    aput v1, p0, p2

    add-int/lit8 p1, p1, 0xa

    .line 609
    aput v2, p0, p1

    goto :goto_0

    .line 611
    :cond_2
    invoke-static {p3, p4, p5}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_3

    div-float v1, v2, v1

    mul-float/2addr p3, v1

    mul-float/2addr p4, v1

    mul-float/2addr p5, v1

    :cond_3
    sub-float/2addr v2, v0

    mul-float v1, p3, p4

    mul-float v3, p4, p5

    mul-float v4, p5, p3

    mul-float v5, p3, p2

    mul-float v6, p4, p2

    mul-float/2addr p2, p5

    add-int/lit8 v7, p1, 0x0

    mul-float/2addr p3, p3

    mul-float/2addr p3, v2

    add-float/2addr p3, v0

    .line 625
    aput p3, p0, v7

    add-int/lit8 p3, p1, 0x4

    mul-float/2addr v1, v2

    sub-float v7, v1, p2

    .line 626
    aput v7, p0, p3

    add-int/lit8 p3, p1, 0x8

    mul-float/2addr v4, v2

    add-float v7, v4, v6

    .line 627
    aput v7, p0, p3

    add-int/lit8 p3, p1, 0x1

    add-float/2addr v1, p2

    .line 628
    aput v1, p0, p3

    add-int/lit8 p2, p1, 0x5

    mul-float/2addr p4, p4

    mul-float/2addr p4, v2

    add-float/2addr p4, v0

    .line 629
    aput p4, p0, p2

    add-int/lit8 p2, p1, 0x9

    mul-float/2addr v3, v2

    sub-float p3, v3, v5

    .line 630
    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    sub-float/2addr v4, v6

    .line 631
    aput v4, p0, p2

    add-int/lit8 p2, p1, 0x6

    add-float/2addr v3, v5

    .line 632
    aput v3, p0, p2

    add-int/lit8 p1, p1, 0xa

    mul-float/2addr p5, p5

    mul-float/2addr p5, v2

    add-float/2addr p5, v0

    .line 633
    aput p5, p0, p1

    :goto_0
    return-void
.end method

.method public static translateM([FIFFF)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    add-int/lit8 v2, v1, 0xc

    .line 519
    aget v3, p0, v2

    aget v4, p0, v1

    mul-float/2addr v4, p2

    add-int/lit8 v5, v1, 0x4

    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x8

    aget v1, p0, v1

    mul-float/2addr v1, p4

    add-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static translateM([FI[FIFFF)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    add-int v2, p1, v1

    add-int v3, p3, v1

    .line 495
    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    add-int v1, p1, v0

    add-int v3, p3, v0

    add-int/2addr v1, v2

    .line 500
    aget v4, p2, v3

    mul-float/2addr v4, p4

    add-int/lit8 v5, v3, 0x4

    aget v5, p2, v5

    mul-float/2addr v5, p5

    add-float/2addr v4, v5

    add-int/lit8 v5, v3, 0x8

    aget v5, p2, v5

    mul-float/2addr v5, p6

    add-float/2addr v4, v5

    add-int/2addr v3, v2

    aget v3, p2, v3

    add-float/2addr v4, v3

    aput v4, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static transposeM([FI[FI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    add-int v2, v0, p1

    .line 116
    aget v3, p2, v1

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x1

    .line 117
    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    add-int/lit8 v3, v1, 0x2

    .line 118
    aget v3, p2, v3

    aput v3, p0, v2

    add-int/lit8 v2, v0, 0xc

    add-int/2addr v2, p1

    add-int/lit8 v1, v1, 0x3

    .line 119
    aget v1, p2, v1

    aput v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
