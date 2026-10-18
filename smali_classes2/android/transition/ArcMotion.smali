.class public Landroid/transition/ArcMotion;
.super Landroid/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final DEFAULT_MAX_TANGENT:F

.field private static final DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4041800000000000L    # 35.0

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 55
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    .line 56
    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 57
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 58
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 59
    sget v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 55
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    .line 56
    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 57
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    .line 58
    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    .line 59
    sget v2, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    .line 65
    sget-object v2, Lcom/android/internal/R$styleable;->ArcMotion:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 66
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 68
    invoke-virtual {p0, p2}, Landroid/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    const/4 p2, 0x0

    .line 69
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 71
    invoke-virtual {p0, p2}, Landroid/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    const/4 p2, 0x2

    .line 72
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 74
    invoke-virtual {p0, p2}, Landroid/transition/ArcMotion;->setMaximumAngle(F)V

    .line 75
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static toTangent(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Arc must be between 0 and 90 degrees"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getMaximumAngle()F
    .locals 0

    .line 169
    iget p0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    return p0
.end method

.method public getMinimumHorizontalAngle()F
    .locals 0

    .line 107
    iget p0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    return p0
.end method

.method public getMinimumVerticalAngle()F
    .locals 0

    .line 140
    iget p0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    return p0
.end method

.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 197
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 198
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v3, p3, v1

    sub-float v4, p4, v2

    mul-float v8, v3, v3

    mul-float v9, v4, v4

    add-float/2addr v8, v9

    add-float v9, v1, p3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float v11, v2, p4

    div-float/2addr v11, v10

    const/high16 v12, 0x3e800000    # 0.25f

    mul-float/2addr v12, v8

    cmpl-float v13, v2, p4

    if-lez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x0

    cmpl-float v15, v4, v14

    const/high16 v16, 0x3f000000    # 0.5f

    if-nez v15, :cond_1

    .line 221
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v16

    iget v4, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v11

    move v4, v9

    :goto_1
    move v8, v14

    goto :goto_4

    :cond_1
    cmpl-float v15, v3, v14

    if-nez v15, :cond_2

    .line 223
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float v3, v3, v16

    iget v4, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v9

    move v4, v3

    move v3, v11

    goto :goto_1

    .line 225
    :cond_2
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpg-float v15, v15, v16

    if-gez v15, :cond_4

    mul-float/2addr v4, v10

    div-float/2addr v8, v4

    .line 231
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v3

    if-eqz v13, :cond_3

    add-float v3, p4, v3

    move/from16 v4, p3

    goto :goto_2

    :cond_3
    add-float/2addr v3, v2

    move v4, v1

    .line 240
    :goto_2
    iget v8, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v8, v12

    iget v13, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v8, v13

    goto :goto_4

    :cond_4
    mul-float/2addr v3, v10

    div-float/2addr v8, v3

    if-eqz v13, :cond_5

    add-float v3, v1, v8

    move v4, v3

    move v3, v2

    goto :goto_3

    :cond_5
    sub-float v3, p3, v8

    move v4, v3

    move/from16 v3, p4

    .line 253
    :goto_3
    iget v8, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v8, v12

    iget v13, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v8, v13

    :goto_4
    sub-float v13, v9, v4

    sub-float v15, v11, v3

    mul-float/2addr v13, v13

    mul-float/2addr v15, v15

    add-float/2addr v13, v15

    .line 260
    iget v15, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float/2addr v12, v15

    iget v0, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float/2addr v0, v12

    cmpl-float v12, v13, v14

    if-eqz v12, :cond_6

    cmpg-float v12, v13, v8

    if-gez v12, :cond_6

    move v0, v8

    goto :goto_5

    :cond_6
    cmpl-float v8, v13, v0

    if-lez v8, :cond_7

    goto :goto_5

    :cond_7
    move v0, v14

    :goto_5
    cmpl-float v8, v0, v14

    if-eqz v8, :cond_8

    div-float/2addr v0, v13

    float-to-double v12, v0

    .line 270
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v0, v12

    sub-float/2addr v4, v9

    mul-float/2addr v4, v0

    add-float/2addr v4, v9

    sub-float/2addr v3, v11

    mul-float/2addr v0, v3

    add-float v3, v11, v0

    :cond_8
    add-float v0, v1, v4

    div-float v1, v0, v10

    add-float v0, v2, v3

    div-float v2, v0, v10

    add-float v4, v4, p3

    div-float/2addr v4, v10

    add-float v3, v3, p4

    div-float v8, v3, v10

    move-object v0, v7

    move v3, v4

    move v4, v8

    move/from16 v5, p3

    move/from16 v6, p4

    .line 278
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v7
.end method

.method public setMaximumAngle(F)V
    .locals 0

    .line 154
    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    .line 155
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .locals 0

    .line 91
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    .line 92
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .locals 0

    .line 123
    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    .line 124
    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result p1

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    return-void
.end method
