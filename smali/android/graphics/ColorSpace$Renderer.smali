.class public Landroid/graphics/ColorSpace$Renderer;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Renderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Renderer$Point;
    }
.end annotation


# static fields
.field private static final CHROMATICITY_RESOLUTION:I = 0x20

.field private static final NATIVE_SIZE:I = 0x5a0

.field private static final ONE_THIRD:D = 0.3333333333333333

.field private static final SPECTRUM_LOCUS_X:[F

.field private static final SPECTRUM_LOCUS_Y:[F

.field private static final UCS_SCALE:F = 1.5f


# instance fields
.field private mClip:Z

.field private final mColorSpaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/ColorSpace;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/ColorSpace$Renderer$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mShowWhitePoint:Z

.field private mSize:I

.field private mUcs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x5f

    .line 4296
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    .line 4318
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e33cf70
        0x3e30ef13
        0x3e2ee7c5
        0x3e2e2ac3
        0x3e2430f5
        0x3e167c28
        0x3e0e7d13
        0x3e08bda9
        0x3e01ba80
        0x3ded3847    # 0.11583f
        0x3de07e5a
        0x3dcb0d0f
        0x3dbb00bd    # 0.09131f
        0x3da0029f    # 0.07813f
        0x3d8cbb80
        0x3d5ff2e5
        0x3d26f71a
        0x3ce14163    # 0.027497f
        0x3c8548aa    # 0.01627f
        0x3c05d745    # 0.008169f
        0x3b9fc6da    # 0.004876f
        0x3b8283d3    # 0.003983f
        0x3b7ce747    # 0.003859f
        0x3b983d79    # 0.004646f
        0x3c02e01a    # 0.007988f
        0x3c633eff    # 0.01387f
        0x3cb6390d    # 0.022244f
        0x3cdf6ba0    # 0.027273f
        0x3d066e44    # 0.03282f
        0x3d1f223a    # 0.038851f
        0x3d39a8ce    # 0.045327f
        0x3d55b574    # 0.052175f
        0x3d72fcad
        0x3d88a0d3
        0x3d982a13    # 0.074299f
        0x3db830e4
        0x3de9ca19
        0x3e0e0610
        0x3e1e6d59
        0x3e457e67    # 0.192865f
        0x3e6b1e19    # 0.229607f
        0x3e8811b2    # 0.26576f
        0x3e9a69be
        0x3eacb89d
        0x3ebf04bc
        0x3ed1435b
        0x3ee3599b
        0x3ef51f60
        0x3f03310a
        0x3f0b75da
        0x3f133bda
        0x3f1a5892
        0x3f208440
        0x3f25f16b
        0x3f2a6e54
        0x3f2e187a
        0x3f31054b
        0x3f3359cd
        0x3f353900    # 0.707901f
        0x3f36c9b0
        0x3f381180
        0x3f391794
        0x3f3c1398
        0x3f379a9e
        0x3f3321a3
        0x3f2ea897
        0x3f2a2f9d
        0x3f25b6a2
        0x3f213da7
        0x3f1cc4ac
        0x3f184bb2
        0x3f13d2a6
        0x3f0f59ab
        0x3f0ae0b1
        0x3f0667b6    # 0.52502f
        0x3f01eebb
        0x3efaeb5f
        0x3ef1f96a
        0x3ee90774
        0x3ee0157f
        0x3ed72389
        0x3ece3172
        0x3ec53f7d    # 0.38525f
        0x3ebc4d87
        0x3eb35b92
        0x3eaa699c
        0x3ea177a7    # 0.315366f
        0x3e988590
        0x3e8f939a
        0x3e86a1a5    # 0.262952f
        0x3e7b5f5f    # 0.245481f
        0x3e697b74    # 0.22801f
        0x3e579746    # 0.210538f
        0x3e45b35b    # 0.193067f
        0x3e33cf70
    .end array-data

    :array_1
    .array-data 4
        0x3bad81ae    # 0.005295f
        0x3b9d4952    # 0.0048f
        0x3bb34e77    # 0.005472f
        0x3bc3d252    # 0.005976f
        0x3c6d80a1    # 0.014496f
        0x3cda426c    # 0.026643f
        0x3d103969    # 0.035211f
        0x3d2eea64
        0x3d5ae4f3    # 0.053441f
        0x3d96bc1f    # 0.073601f
        0x3db1e6cd
        0x3de573a8
        0x3e07ec35
        0x3e2e8e1d
        0x3e4d9770    # 0.200773f
        0x3e82209b
        0x3ea2543f
        0x3ec6a78b
        0x3eed12ec
        0x3f09db66
        0x3f16527a
        0x3f1c4b6f
        0x3f27a754
        0x3f2d0c5f
        0x3f3724ea
        0x3f40101f
        0x3f47993d
        0x3f4aca8a    # 0.792153f
        0x3f4d8f82
        0x3f4fe319
        0x3f51c62a    # 0.81943f
        0x3f53404f    # 0.8252f
        0x3f54577e
        0x3f551202
        0x3f557614
        0x3f555433
        0x3f5383e0
        0x3f509678
        0x3f4e4e6a
        0x3f481a15
        0x3f411ce3
        0x3f396e7a
        0x3f313c47
        0x3f28ab82
        0x3f1fdd44    # 0.62447f
        0x3f16f1bb
        0x3f0e030c
        0x3f052d45
        0x3ef92514
        0x3ee8ae32
        0x3ed9378f
        0x3ecb0425
        0x3ebeb9a1
        0x3eb3ec68
        0x3eab05b8
        0x3ea3b83d
        0x3e9de13b
        0x3e994014
        0x3e9586cb
        0x3e926762
        0x3e8fd8cf
        0x3e8dce3a
        0x3e87d8cf
        0x3e83afb8    # 0.2572f
        0x3e7f0d41
        0x3e76bb13
        0x3e6e68e4    # 0.232822f
        0x3e6616b5
        0x3e5dc487    # 0.21657f
        0x3e557258    # 0.208444f
        0x3e4d2029
        0x3e44cdfb
        0x3e3c7bcc
        0x3e34299e    # 0.17594f
        0x3e2bd76f
        0x3e238540
        0x3e1b3312
        0x3e12e0e3    # 0.143436f
        0x3e0a8ef7
        0x3e023cc9
        0x3df3d534
        0x3de330d7
        0x3dd28c7a    # 0.102807f
        0x3dc1e81d
        0x3db143bf
        0x3da09f62
        0x3d8ffb05    # 0.070303f
        0x3d7ead4f
        0x3d5d6495    # 0.054051f
        0x3d3c1bda
        0x3d1ad320    # 0.037799f
        0x3cf314cb    # 0.029673f
        0x3cb08356    # 0.021547f
        0x3c5be3c1    # 0.013421f
        0x3bad81ae    # 0.005295f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 3

    .line 3741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    .line 3731
    iput v0, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    const/4 v0, 0x1

    .line 3734
    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mShowWhitePoint:Z

    const/4 v0, 0x0

    .line 3735
    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mClip:Z

    .line 3736
    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    .line 3738
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    .line 3739
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/graphics/ColorSpace$Renderer;->mPoints:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ColorSpace$1;)V
    .locals 0

    .line 3723
    invoke-direct {p0}, Landroid/graphics/ColorSpace$Renderer;-><init>()V

    return-void
.end method

.method private static computeChromaticityMesh([F[I)V
    .locals 34

    .line 4350
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    const/4 v3, 0x3

    .line 4352
    new-array v3, v3, [F

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 4357
    :goto_0
    sget-object v7, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 4358
    sget-object v7, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    rem-int v7, v4, v7

    add-int/2addr v7, v8

    .line 4360
    sget-object v9, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    aget v9, v9, v4

    float-to-double v9, v9

    const-wide v11, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double/2addr v9, v11

    sget-object v13, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    aget v13, v13, v4

    float-to-double v13, v13

    sub-double/2addr v13, v11

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v9, v9

    .line 4363
    sget-object v10, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    aget v10, v10, v7

    float-to-double v13, v10

    sub-double/2addr v13, v11

    sget-object v10, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    aget v10, v10, v7

    move/from16 v16, v9

    float-to-double v8, v10

    sub-double/2addr v8, v11

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v8, v8

    .line 4367
    sget-object v9, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    aget v9, v9, v4

    float-to-double v9, v9

    sub-double/2addr v9, v11

    .line 4368
    invoke-static {v9, v10}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    move-result-wide v9

    sget-object v13, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    aget v13, v13, v4

    float-to-double v13, v13

    sub-double/2addr v13, v11

    .line 4369
    invoke-static {v13, v14}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    move-result-wide v13

    add-double/2addr v9, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    .line 4367
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    double-to-float v9, v9

    .line 4371
    sget-object v10, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    aget v10, v10, v7

    float-to-double v13, v10

    sub-double/2addr v13, v11

    .line 4372
    invoke-static {v13, v14}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    move-result-wide v13

    sget-object v10, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_Y:[F

    aget v7, v10, v7

    move/from16 v18, v5

    move/from16 v19, v6

    float-to-double v5, v7

    sub-double/2addr v5, v11

    .line 4373
    invoke-static {v5, v6}, Landroid/graphics/ColorSpace$Renderer;->sqr(D)D

    move-result-wide v5

    add-double/2addr v13, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    .line 4371
    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    move/from16 v6, v19

    const/4 v15, 0x1

    :goto_1
    const/16 v7, 0x20

    if-gt v15, v7, :cond_0

    int-to-float v7, v15

    const/high16 v10, 0x42000000    # 32.0f

    div-float/2addr v7, v10

    add-int/lit8 v13, v15, -0x1

    int-to-float v13, v13

    div-float/2addr v13, v10

    float-to-double v11, v9

    move/from16 v21, v15

    move/from16 v10, v16

    float-to-double v14, v10

    .line 4382
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v11

    .line 4383
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    mul-double/2addr v11, v14

    float-to-double v14, v5

    move/from16 v22, v9

    move/from16 v23, v10

    float-to-double v9, v8

    .line 4384
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v24, v24, v14

    .line 4385
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v14, v9

    float-to-double v9, v7

    mul-double v26, v16, v9

    move/from16 v28, v8

    const-wide v19, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v7, v26, v19

    double-to-float v7, v7

    mul-double v26, v11, v9

    move/from16 v29, v4

    move/from16 v30, v5

    add-double v4, v26, v19

    double-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v8, v5, v7

    sub-float/2addr v8, v4

    move/from16 v31, v6

    float-to-double v5, v13

    mul-double v16, v16, v5

    add-double v0, v16, v19

    double-to-float v0, v0

    mul-double/2addr v11, v5

    add-double v11, v11, v19

    double-to-float v1, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v11, v0

    sub-float/2addr v12, v1

    mul-double v16, v24, v5

    move/from16 v32, v12

    add-double v11, v16, v19

    double-to-float v11, v11

    mul-double/2addr v5, v14

    add-double v5, v5, v19

    double-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v12, v6, v11

    sub-float/2addr v12, v5

    mul-double v24, v24, v9

    move/from16 v33, v7

    add-double v6, v24, v19

    double-to-float v6, v6

    mul-double/2addr v14, v9

    add-double v14, v14, v19

    double-to-float v7, v14

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v6

    sub-float/2addr v9, v7

    move/from16 v10, v33

    .line 4405
    invoke-static {v3, v10, v4, v8, v2}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    move-result v8

    aput v8, p1, v31

    add-int/lit8 v8, v31, 0x1

    move/from16 v14, v32

    .line 4406
    invoke-static {v3, v0, v1, v14, v2}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    move-result v14

    aput v14, p1, v8

    add-int/lit8 v8, v31, 0x2

    .line 4407
    invoke-static {v3, v11, v5, v12, v2}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    move-result v12

    aput v12, p1, v8

    add-int/lit8 v12, v31, 0x3

    .line 4408
    aget v14, p1, v31

    aput v14, p1, v12

    add-int/lit8 v12, v31, 0x4

    .line 4409
    aget v8, p1, v8

    aput v8, p1, v12

    add-int/lit8 v8, v31, 0x5

    .line 4410
    invoke-static {v3, v6, v7, v9, v2}, Landroid/graphics/ColorSpace$Renderer;->computeColor([FFFFLandroid/graphics/ColorSpace;)I

    move-result v9

    aput v9, p1, v8

    add-int/lit8 v8, v31, 0x6

    add-int/lit8 v9, v18, 0x1

    .line 4414
    aput v10, p0, v18

    add-int/lit8 v14, v9, 0x1

    .line 4415
    aput v4, p0, v9

    add-int/lit8 v9, v14, 0x1

    .line 4416
    aput v0, p0, v14

    add-int/lit8 v0, v9, 0x1

    .line 4417
    aput v1, p0, v9

    add-int/lit8 v1, v0, 0x1

    .line 4418
    aput v11, p0, v0

    add-int/lit8 v0, v1, 0x1

    .line 4419
    aput v5, p0, v1

    add-int/lit8 v1, v0, 0x1

    .line 4420
    aput v10, p0, v0

    add-int/lit8 v0, v1, 0x1

    .line 4421
    aput v4, p0, v1

    add-int/lit8 v1, v0, 0x1

    .line 4422
    aput v11, p0, v0

    add-int/lit8 v0, v1, 0x1

    .line 4423
    aput v5, p0, v1

    add-int/lit8 v1, v0, 0x1

    .line 4424
    aput v6, p0, v0

    add-int/lit8 v18, v1, 0x1

    .line 4425
    aput v7, p0, v1

    add-int/lit8 v15, v21, 0x1

    move v6, v8

    move-wide/from16 v11, v19

    move/from16 v9, v22

    move/from16 v16, v23

    move/from16 v8, v28

    move/from16 v4, v29

    move/from16 v5, v30

    goto/16 :goto_1

    :cond_0
    move/from16 v29, v4

    move/from16 v31, v6

    add-int/lit8 v4, v29, 0x1

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private static computeColor([FFFFLandroid/graphics/ColorSpace;)I
    .locals 1

    const/4 v0, 0x0

    .line 4433
    aput p1, p0, v0

    const/4 p1, 0x1

    .line 4434
    aput p2, p0, p1

    const/4 p2, 0x2

    .line 4435
    aput p3, p0, p2

    .line 4436
    invoke-virtual {p4, p0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    .line 4437
    aget p3, p0, v0

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    and-int/lit16 p3, p3, 0xff

    shl-int/lit8 p3, p3, 0x10

    const/high16 v0, -0x1000000

    or-int/2addr p3, v0

    aget p1, p0, p1

    mul-float/2addr p1, p4

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, p3

    aget p0, p0, p2

    mul-float/2addr p0, p4

    float-to-int p0, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private drawBox(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;)V
    .locals 22

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    .line 4173
    iget-boolean v0, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    const/high16 v1, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    move v11, v0

    move v12, v1

    .line 4179
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v13, 0x40000000    # 2.0f

    .line 4180
    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, -0x3f3f40

    .line 4181
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v14, 0x1

    move v15, v14

    :goto_1
    add-int/lit8 v5, v11, -0x1

    const v16, 0x3dcccccd    # 0.1f

    const v17, 0x3f666666    # 0.9f

    const/high16 v18, 0x41200000    # 10.0f

    if-ge v15, v5, :cond_1

    int-to-float v0, v15

    div-float v0, v0, v18

    int-to-float v1, v7

    mul-float v2, v1, v0

    mul-float v18, v2, v12

    int-to-float v5, v8

    mul-float/2addr v0, v5

    mul-float/2addr v0, v12

    sub-float v4, v5, v0

    const/4 v2, 0x0

    mul-float v3, v1, v17

    move-object/from16 v0, p1

    move v1, v2

    move v2, v4

    move/from16 v17, v5

    move-object/from16 v5, p4

    .line 4188
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float v4, v17, v16

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v18

    .line 4189
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    .line 4193
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, -0x1000000

    .line 4194
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v11, v14

    :goto_2
    if-ge v11, v5, :cond_2

    int-to-float v0, v11

    div-float v0, v0, v18

    int-to-float v1, v7

    mul-float v2, v1, v0

    mul-float v15, v2, v12

    int-to-float v4, v8

    mul-float/2addr v0, v4

    mul-float/2addr v0, v12

    sub-float v19, v4, v0

    const/4 v2, 0x0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v3, v1, v20

    move-object/from16 v0, p1

    move v1, v2

    move/from16 v2, v19

    move/from16 v21, v4

    move/from16 v4, v19

    move v14, v5

    move-object/from16 v5, p4

    .line 4200
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-float v4, v21, v20

    sub-float v4, v21, v4

    move v1, v15

    move/from16 v2, v21

    move v3, v15

    .line 4201
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    move v5, v14

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    move v14, v5

    .line 4205
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x42100000    # 36.0f

    .line 4206
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string/jumbo v0, "sans-serif-light"

    const/4 v1, 0x0

    .line 4207
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    :goto_3
    if-ge v2, v14, :cond_3

    .line 4211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4212
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v9, v3, v1, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v4, v2

    div-float v4, v4, v18

    int-to-float v5, v7

    mul-float v11, v5, v4

    mul-float/2addr v11, v12

    int-to-float v15, v8

    mul-float/2addr v4, v15

    mul-float/2addr v4, v12

    sub-float/2addr v15, v4

    const v4, -0x42b33333    # -0.05f

    mul-float/2addr v5, v4

    add-float v5, v5, v18

    .line 4218
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v13

    add-float/2addr v15, v4

    invoke-virtual {v6, v3, v5, v15, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4219
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v13

    sub-float/2addr v11, v4

    .line 4220
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v8

    add-int/lit8 v4, v4, 0x10

    int-to-float v4, v4

    .line 4219
    invoke-virtual {v6, v3, v11, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 4222
    :cond_3
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v0, v8

    const/4 v1, 0x0

    .line 4225
    invoke-virtual {v10, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v2, v7

    mul-float v2, v2, v17

    .line 4226
    invoke-virtual {v10, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    mul-float v0, v0, v16

    .line 4227
    invoke-virtual {v10, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4228
    invoke-virtual {v10, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4229
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 4230
    invoke-virtual {v6, v10, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawGamuts(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F[F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 4020
    iget-boolean v6, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v6, :cond_0

    const/high16 v6, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v7, v6

    .line 4022
    iget-object v6, v0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 4023
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/ColorSpace;

    .line 4024
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4026
    invoke-virtual {v9}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v10

    sget-object v11, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-eq v10, v11, :cond_2

    goto :goto_1

    .line 4028
    :cond_2
    check-cast v9, Landroid/graphics/ColorSpace$Rgb;

    .line 4029
    iget-boolean v10, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    invoke-static {v9, v4, v10}, Landroid/graphics/ColorSpace$Renderer;->getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V

    .line 4031
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    move/from16 v10, p2

    int-to-float v11, v10

    const/4 v12, 0x0

    .line 4032
    aget v13, v4, v12

    mul-float/2addr v13, v11

    move/from16 v14, p3

    int-to-float v15, v14

    const/16 v16, 0x1

    aget v17, v4, v16

    mul-float v17, v17, v15

    sub-float v12, v15, v17

    invoke-virtual {v3, v13, v12}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v12, 0x2

    .line 4033
    aget v12, v4, v12

    mul-float/2addr v12, v11

    const/4 v13, 0x3

    aget v13, v4, v13

    mul-float/2addr v13, v15

    sub-float v13, v15, v13

    invoke-virtual {v3, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v12, 0x4

    .line 4034
    aget v12, v4, v12

    mul-float/2addr v12, v11

    const/4 v13, 0x5

    aget v13, v4, v13

    mul-float/2addr v13, v15

    sub-float v13, v15, v13

    invoke-virtual {v3, v12, v13}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4035
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 4037
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4038
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 4039
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 4042
    iget-boolean v12, v0, Landroid/graphics/ColorSpace$Renderer;->mShowWhitePoint:Z

    if-eqz v12, :cond_1

    .line 4043
    invoke-virtual {v9, v5}, Landroid/graphics/ColorSpace$Rgb;->getWhitePoint([F)[F

    .line 4044
    iget-boolean v9, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v9, :cond_3

    invoke-static/range {p7 .. p7}, Landroid/graphics/ColorSpace;->access$2900([F)V

    .line 4046
    :cond_3
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4047
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x0

    .line 4048
    aget v8, v5, v8

    mul-float/2addr v11, v8

    aget v8, v5, v16

    mul-float/2addr v8, v15

    sub-float/2addr v15, v8

    invoke-virtual {v1, v11, v15, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method private drawLocus(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v15, p4

    move-object/from16 v13, p5

    move-object/from16 v3, p6

    .line 4096
    sget-object v4, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    mul-int/lit8 v4, v4, 0x6

    const/16 v16, 0x2

    mul-int/lit8 v4, v4, 0x2

    .line 4097
    new-array v12, v4, [F

    .line 4098
    array-length v4, v12

    new-array v11, v4, [I

    .line 4099
    invoke-static {v12, v11}, Landroid/graphics/ColorSpace$Renderer;->computeChromaticityMesh([F[I)V

    .line 4101
    iget-boolean v4, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v4, :cond_0

    invoke-static {v12}, Landroid/graphics/ColorSpace;->access$2900([F)V

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    .line 4102
    :goto_0
    array-length v6, v12

    if-ge v5, v6, :cond_1

    .line 4103
    aget v6, v12, v5

    int-to-float v7, v1

    mul-float/2addr v6, v7

    aput v6, v12, v5

    add-int/lit8 v6, v5, 0x1

    int-to-float v7, v2

    .line 4104
    aget v8, v12, v6

    mul-float/2addr v8, v7

    sub-float/2addr v7, v8

    aput v7, v12, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 4108
    :cond_1
    iget-boolean v5, v0, Landroid/graphics/ColorSpace$Renderer;->mClip:Z

    if-eqz v5, :cond_4

    iget-object v5, v0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 4109
    iget-object v5, v0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 4110
    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/ColorSpace;

    .line 4111
    invoke-virtual {v6}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v7

    sget-object v8, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-eq v7, v8, :cond_2

    goto :goto_1

    .line 4113
    :cond_2
    check-cast v6, Landroid/graphics/ColorSpace$Rgb;

    .line 4114
    iget-boolean v5, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    invoke-static {v6, v3, v5}, Landroid/graphics/ColorSpace$Renderer;->getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V

    .line 4119
    :cond_3
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->rewind()V

    int-to-float v1, v1

    .line 4120
    aget v4, v3, v4

    mul-float/2addr v4, v1

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v3, v5

    mul-float/2addr v5, v2

    sub-float v5, v2, v5

    invoke-virtual {v13, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4121
    aget v4, v3, v16

    mul-float/2addr v4, v1

    const/4 v5, 0x3

    aget v5, v3, v5

    mul-float/2addr v5, v2

    sub-float v5, v2, v5

    invoke-virtual {v13, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v4, 0x4

    .line 4122
    aget v4, v3, v4

    mul-float/2addr v1, v4

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v3, v2

    sub-float/2addr v2, v3

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4123
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    .line 4125
    array-length v1, v11

    new-array v8, v1, [I

    const v1, -0x939394

    .line 4126
    invoke-static {v8, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4127
    sget-object v2, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    array-length v3, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p1

    move-object v4, v12

    move-object/from16 v19, v11

    move/from16 v11, v17

    move-object/from16 v20, v12

    move/from16 v12, v18

    move-object v15, v13

    move-object/from16 v13, p4

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 4130
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4131
    invoke-virtual {v14, v15}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4133
    sget-object v2, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    move-object/from16 v13, v20

    array-length v3, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, v13

    move-object/from16 v8, v19

    move-object v14, v13

    move-object/from16 v13, p4

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 4136
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    :cond_4
    move-object/from16 v19, v11

    move-object v14, v12

    move-object v15, v13

    .line 4138
    sget-object v2, Landroid/graphics/Canvas$VertexMode;->TRIANGLES:Landroid/graphics/Canvas$VertexMode;

    array-length v3, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object v4, v14

    move-object/from16 v8, v19

    move-object/from16 v13, p4

    invoke-virtual/range {v1 .. v13}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    :goto_2
    const/16 v1, 0x174

    .line 4144
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->reset()V

    .line 4145
    aget v2, v14, v1

    const/16 v3, 0x175

    aget v3, v14, v3

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    move v2, v1

    move/from16 v1, v16

    .line 4146
    :goto_3
    sget-object v3, Landroid/graphics/ColorSpace$Renderer;->SPECTRUM_LOCUS_X:[F

    array-length v3, v3

    if-ge v1, v3, :cond_5

    add-int/lit16 v2, v2, 0x180

    .line 4148
    aget v3, v14, v2

    add-int/lit8 v4, v2, 0x1

    aget v4, v14, v4

    invoke-virtual {v15, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4150
    :cond_5
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Path;->close()V

    const/high16 v1, 0x40800000    # 4.0f

    .line 4152
    iget-boolean v0, v0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v0, :cond_6

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_4

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    div-float/2addr v1, v0

    move-object v2, v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4153
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, -0x1000000

    .line 4154
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v1, p1

    .line 4155
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawPoints(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 9

    .line 3977
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3979
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v1, v0

    const/4 v0, 0x3

    .line 3981
    new-array v0, v0, [F

    const/4 v2, 0x2

    .line 3982
    new-array v3, v2, [F

    .line 3984
    iget-object v4, p0, Landroid/graphics/ColorSpace$Renderer;->mPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/ColorSpace$Renderer$Point;

    .line 3985
    iget-object v6, v5, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v0, v7

    .line 3986
    iget-object v6, v5, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    aput v6, v0, v8

    .line 3987
    iget-object v6, v5, Landroid/graphics/ColorSpace$Renderer$Point;->mRgb:[F

    aget v6, v6, v2

    aput v6, v0, v2

    .line 3988
    iget-object v6, v5, Landroid/graphics/ColorSpace$Renderer$Point;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v6, v0}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    .line 3990
    iget v5, v5, Landroid/graphics/ColorSpace$Renderer$Point;->mColor:I

    invoke-virtual {p4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3993
    aget v5, v0, v7

    aget v6, v0, v8

    add-float/2addr v5, v6

    aget v6, v0, v2

    add-float/2addr v5, v6

    .line 3994
    aget v6, v0, v7

    div-float/2addr v6, v5

    aput v6, v3, v7

    .line 3995
    aget v6, v0, v8

    div-float/2addr v6, v5

    aput v6, v3, v8

    .line 3996
    iget-boolean v5, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz v5, :cond_1

    invoke-static {v3}, Landroid/graphics/ColorSpace;->access$2900([F)V

    :cond_1
    int-to-float v5, p2

    .line 3998
    aget v6, v3, v7

    mul-float/2addr v5, v6

    int-to-float v6, p3

    aget v7, v3, v8

    mul-float/2addr v7, v6

    sub-float/2addr v6, v7

    invoke-virtual {p1, v5, v6, v1, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V
    .locals 1

    .line 4067
    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    .line 4068
    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4076
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace$Rgb;->getPrimaries([F)[F

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const v0, 0x3fb47ae1    # 1.41f

    .line 4069
    aput v0, p1, p0

    const/4 p0, 0x1

    const v0, 0x3ea8f5c3    # 0.33f

    .line 4070
    aput v0, p1, p0

    const/4 p0, 0x2

    const v0, 0x3e8a3d71    # 0.27f

    .line 4071
    aput v0, p1, p0

    const/4 p0, 0x3

    const v0, 0x3f9eb852    # 1.24f

    .line 4072
    aput v0, p1, p0

    const/4 p0, 0x4

    const v0, -0x41947ae1    # -0.23f

    .line 4073
    aput v0, p1, p0

    const/4 p0, 0x5

    const v0, -0x40ee147b    # -0.57f

    .line 4074
    aput v0, p1, p0

    :goto_1
    if-eqz p2, :cond_2

    .line 4078
    invoke-static {p1}, Landroid/graphics/ColorSpace;->access$2900([F)V

    :cond_2
    return-void
.end method

.method private setTransform(Landroid/graphics/Canvas;II[F)V
    .locals 5

    .line 4245
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 4246
    iget-object v1, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 4247
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/ColorSpace;

    .line 4248
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v3

    sget-object v4, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 4250
    :cond_0
    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    .line 4251
    iget-boolean v3, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    invoke-static {v2, p4, v3}, Landroid/graphics/ColorSpace$Renderer;->getPrimaries(Landroid/graphics/ColorSpace$Rgb;[FZ)V

    .line 4253
    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/4 v3, 0x4

    aget v3, p4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 4254
    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/4 v3, 0x5

    aget v3, p4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 4255
    iget v2, v0, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x0

    aget v3, p4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 4256
    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x3

    aget v3, p4, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    .line 4259
    :cond_1
    iget-boolean p4, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz p4, :cond_2

    const p4, 0x3f19999a    # 0.6f

    goto :goto_1

    :cond_2
    const p4, 0x3f666666    # 0.9f

    .line 4261
    :goto_1
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 4262
    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4263
    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-static {p4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 4264
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 4266
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, p4, v1

    .line 4267
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, p4, v2

    .line 4268
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 4270
    iget v2, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    int-to-float v2, v2

    const/high16 v3, 0x44b40000    # 1440.0f

    div-float/2addr v2, v3

    iget p0, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    int-to-float p0, p0

    div-float/2addr p0, v3

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4271
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4273
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p0

    sub-float/2addr p0, p4

    int-to-float p2, p2

    mul-float/2addr p0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    .line 4274
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    sub-float/2addr v0, p4

    int-to-float p3, p3

    mul-float/2addr v0, p3

    div-float/2addr v0, v1

    .line 4272
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const p0, 0x3d4ccccd    # 0.05f

    mul-float/2addr p2, p0

    const p0, -0x42b33333    # -0.05f

    mul-float/2addr p3, p0

    .line 4278
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private setUcsTransform(Landroid/graphics/Canvas;I)V
    .locals 2

    .line 4289
    iget-boolean p0, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    int-to-float p2, p2

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float v1, p2, v0

    sub-float/2addr p2, v1

    .line 4290
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4291
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_0
    return-void
.end method

.method private static sqr(D)D
    .locals 0

    mul-double/2addr p0, p0

    return-wide p0
.end method


# virtual methods
.method public add(Landroid/graphics/ColorSpace;FFFI)Landroid/graphics/ColorSpace$Renderer;
    .locals 4

    .line 3927
    iget-object v0, p0, Landroid/graphics/ColorSpace$Renderer;->mPoints:Ljava/util/List;

    new-instance v1, Landroid/graphics/ColorSpace$Renderer$Point;

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput p3, v2, p2

    const/4 p2, 0x2

    aput p4, v2, p2

    invoke-direct {v1, p1, v2, p5}, Landroid/graphics/ColorSpace$Renderer$Point;-><init>(Landroid/graphics/ColorSpace;[FI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Landroid/graphics/ColorSpace;I)Landroid/graphics/ColorSpace$Renderer;
    .locals 2

    .line 3886
    iget-object v0, p0, Landroid/graphics/ColorSpace$Renderer;->mColorSpaces:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clip(Z)Landroid/graphics/ColorSpace$Renderer;
    .locals 0

    .line 3779
    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Renderer;->mClip:Z

    return-object p0
.end method

.method public render()Landroid/graphics/Bitmap;
    .locals 14

    .line 3943
    new-instance v8, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 3944
    iget v0, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    iget v1, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 3945
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x6

    .line 3947
    new-array v7, v0, [F

    const/4 v0, 0x2

    .line 3948
    new-array v11, v0, [F

    .line 3953
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    const/16 v13, 0x5a0

    .line 3955
    invoke-direct {p0, v10, v13, v13, v7}, Landroid/graphics/ColorSpace$Renderer;->setTransform(Landroid/graphics/Canvas;II[F)V

    const/16 v2, 0x5a0

    const/16 v3, 0x5a0

    move-object v0, p0

    move-object v1, v10

    move-object v4, v8

    move-object v5, v12

    .line 3956
    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Renderer;->drawBox(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;)V

    .line 3957
    invoke-direct {p0, v10, v13}, Landroid/graphics/ColorSpace$Renderer;->setUcsTransform(Landroid/graphics/Canvas;I)V

    move-object v6, v7

    .line 3958
    invoke-direct/range {v0 .. v6}, Landroid/graphics/ColorSpace$Renderer;->drawLocus(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F)V

    move-object v7, v11

    .line 3959
    invoke-direct/range {v0 .. v7}, Landroid/graphics/ColorSpace$Renderer;->drawGamuts(Landroid/graphics/Canvas;IILandroid/graphics/Paint;Landroid/graphics/Path;[F[F)V

    .line 3960
    invoke-direct {p0, v10, v13, v13, v8}, Landroid/graphics/ColorSpace$Renderer;->drawPoints(Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V

    return-object v9
.end method

.method public showWhitePoint(Z)Landroid/graphics/ColorSpace$Renderer;
    .locals 0

    .line 3835
    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Renderer;->mShowWhitePoint:Z

    return-object p0
.end method

.method public size(I)Landroid/graphics/ColorSpace$Renderer;
    .locals 1

    const/16 v0, 0x80

    .line 3821
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/graphics/ColorSpace$Renderer;->mSize:I

    return-object p0
.end method

.method public uniformChromaticityScale(Z)Landroid/graphics/ColorSpace$Renderer;
    .locals 0

    .line 3808
    iput-boolean p1, p0, Landroid/graphics/ColorSpace$Renderer;->mUcs:Z

    return-object p0
.end method
